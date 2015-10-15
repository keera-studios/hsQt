{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : Glome.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:42
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qt.Glome.Glome (gen_blocks_list) where
import Qt.Glome.Scene as Scene
import Qt.Glome.Trace as Trace
import Qt.Glome.Spd
import Qtc.Classes.Qccs
import Qtc.Classes.Core
import Qtc.Classes.Gui
import Qtc.Core.QCoreApplication
import Qtc.ClassTypes.Gui
import Qtc.Gui.QImage
import Qtc.Gui.QColor
import Qtc.Gui.QProgressDialog
import Data.Maybe( fromMaybe )
import Control.Parallel.Strategies
import System.Exit
import System.IO

maxdepth = 2 -- recursion depth for reflection/refraction

get_color :: Flt -> Flt -> Scene -> Int -> (Scene.Color,Flt)
get_color x y scn maxdepth = 
 let (Scene sld lights (Camera pos fwd up right) dtex bgcolor) = scn
     dir = vnorm $ vadd3 fwd (vscale right (-x)) (vscale up y)
     ray = (Ray pos dir) 
 in
  ((Trace.trace scn ray infinity maxdepth),0)

get_packet :: Flt -> Flt -> Flt -> Flt -> Scene -> Int -> PacketColor
get_packet x1 y1 x2 y2 scn maxdepth  =
 let (Scene sld lights (Camera pos fwd up right) dtex bgcolor) = scn
     dir1 = vnorm $ vadd3 fwd (vscale right (-x1)) (vscale up y1)
     dir2 = vnorm $ vadd3 fwd (vscale right (-x2)) (vscale up y1)
     dir3 = vnorm $ vadd3 fwd (vscale right (-x1)) (vscale up y2)
     dir4 = vnorm $ vadd3 fwd (vscale right (-x2)) (vscale up y2)
     ray1 = Ray pos dir1
     ray2 = Ray pos dir2
     ray3 = Ray pos dir3
     ray4 = Ray pos dir4
 in trace_packet scn ray1 ray2 ray3 ray4 infinity maxdepth

fc :: Flt -> Float
fc x = realToFrac x

gen_pixel_list :: Flt -> Flt -> Flt -> Flt -> Flt -> Flt -> Scene -> Int -> [(Flt,Flt,Flt,Flt,Flt,Flt)]
gen_pixel_list curx cury stopx stopy maxx maxy scene maxdepth =
  let midx = maxx/2
      midy = maxy/2
      gp x y
        = if y >= stopy
           then
            []
           else
            if x >= stopx 
             then
              gp curx (y+1)
             else 
              let scx = (x-midx) / midx
                  scy = (y-midy) / midy
                  --(Clr.Color r g b) = get_color scx (scy*(midy/midx)) scene
                  --(Clr.Color r g b) = get_color (scx*(midx/midy)) scy scene
                  ((Scene.Color r g b),d)
                    = get_color (scx*(midx/midy)) scy scene maxdepth
              in
                (scx,scy,r,g,b,0) : (gp (x+1) y)
  in gp curx cury

gen_pixel_list_packet :: Flt -> Flt -> Flt -> Flt -> Flt -> Flt -> Scene -> Int -> [(Flt,Flt,Flt,Flt,Flt,Flt)]
gen_pixel_list_packet curx cury stopx stopy maxx maxy scene maxdepth
  = let midx = maxx/2
        midy = maxy/2
        gp x y
          = if y >= stopy
             then
              []
             else
              if x >= stopx 
               then
                gp curx (y+2)
               else 
                let scx1 = (x-midx) / midx
                    scy1 = (y-midy) / midy
                    scx2 = ((x+1)-midx) / midx
                    scy2 = ((y+1)-midy) / midy

                    PacketColor (Scene.Color r1 g1 b1)
                                (Scene.Color r2 g2 b2)
                                (Scene.Color r3 g3 b3)
                                (Scene.Color r4 g4 b4)
                      = get_packet (scx1*(midx/midy)) scy1
                                   (scx2*(midx/midy)) scy2
                                   scene maxdepth
                in
                  [(scx1,scy1,r1,g1,b1,0),
                   (scx2,scy1,r2,g2,b2,0),
                   (scx1,scy2,r3,g3,b3,0),
                   (scx2,scy2,r4,g4,b4,0)] ++ (gp (x+2) y)
    in gp curx cury

gen_blocks_list maxx maxy block_size scene ti progress maxdepth
  = let xblocks = maxx/block_size
        yblocks = maxy/block_size
        blocks  = Prelude.concat $
                    Prelude.map (\x ->
                      Prelude.map (\y ->
                        (x*block_size,y*block_size)) 
                        [0..yblocks-1] ) 
                      [0..xblocks-1]
        pixels  = map (\(x,y) ->
                    gen_pixel_list_packet
                      x y
                      (x+block_size) (y+block_size)
                      maxx maxy scene maxdepth)
                    (blocks)
    in
      do
      mapM_ (\pix -> 
        mapM_ (\(x,y,r,g,b,d) -> 
          do
          pc <- wasCanceled progress ()
          if (pc)
           then
            return ()
           else
            do
            let cx = msc (maxx, x) + 1
                cy = msc (maxy, y) + 1
            pf <- qmaximum progress ()
            cpx <- value progress ()
            if (((cx == 1) && (cy == 1)) ||
                ((cx < (pf - (round ((fc block_size) / 4.0)))) && (cx > cpx)))
             then
              do
              setValue progress cx
              qCoreApplicationProcessEvents ()
             else
              return ()
            tc <- qColorFromRgb ((mcc r), (mcc g), (mcc b))
            trgb <- rgb tc ()
            setPixel ti ((msc (maxx, x)), (mscy (maxy, y)), trgb)
         ) pix) pixels
      pf <- qmaximum progress ()
      setValue progress pf
      qCoreApplicationProcessEvents ()
 
ms (m, v) = show $ round((((fc m) * (fc v)) + (fc m)) / 2.0)
msc (m, v) = round((((fc m) * (fc v)) + (fc m)) / 2.0) :: Int
mscy (m, v) = ((round (fc m)) - 1 - round((((fc m) * (fc v)) + (fc m)) / 2.0)) :: Int
msl [] = ""
msl (x:[]) = ms x
msl (x:xs) = (ms x) ++ " " ++ (msl xs)

mc v = show $ round((fromIntegral 256) * (fc v))
mcc v = (round((fromIntegral 256) * (fc v)) `min` 255) :: Int
mcl r g b = (mc r) ++ " " ++ (mc g) ++ " " ++ (mc b)


