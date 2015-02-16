{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QPolygon.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:31
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Core.QPolygon (
  QqqPolygon(..), QqPolygon(..)
  ,QqqPolygon_nf(..), QqPolygon_nf(..)
  ,qpoint, qqpoint
  ,QqputPoints(..)
  ,QqsetPoint(..), qqsetPoint
  ,qPolygon_delete
  )
  where

import Foreign.C.Types
import Qth.ClassTypes.Core
import Qtc.Enums.Base
import Qtc.Enums.Core.Qt

import Qtc.Classes.Base
import Qtc.Classes.Qccs
import Qtc.Classes.Core
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core

class QqqPolygon x1 where
  qqPolygon :: x1 -> IO (QPolygon ())

class QqPolygon x1 where
  qPolygon :: x1 -> IO (QPolygon ())

instance QqPolygon (()) where
 qPolygon ()
  = withQPolygonResult $
    qtc_QPolygon

foreign import ccall "qtc_QPolygon" qtc_QPolygon :: IO (Ptr (TQPolygon ()))

instance QqPolygon ((QPolygon t1)) where
 qPolygon (x1)
  = withQPolygonResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPolygon1 cobj_x1

foreign import ccall "qtc_QPolygon1" qtc_QPolygon1 :: Ptr (TQPolygon t1) -> IO (Ptr (TQPolygon ()))

instance QqqPolygon ((QRect t1)) where
 qqPolygon (x1)
  = withQPolygonResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPolygon2 cobj_x1

foreign import ccall "qtc_QPolygon2" qtc_QPolygon2 :: Ptr (TQRect t1) -> IO (Ptr (TQPolygon ()))

instance QqPolygon ((Rect)) where
 qPolygon (x1)
  = withQPolygonResult $
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QPolygon3 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

foreign import ccall "qtc_QPolygon3" qtc_QPolygon3 :: CInt -> CInt -> CInt -> CInt -> IO (Ptr (TQPolygon ()))

instance QqPolygon ((Int)) where
 qPolygon (x1)
  = withQPolygonResult $
    qtc_QPolygon4 (toCInt x1)

foreign import ccall "qtc_QPolygon4" qtc_QPolygon4 :: CInt -> IO (Ptr (TQPolygon ()))

instance QqqPolygon ((QRect t1, Bool)) where
 qqPolygon (x1, x2)
  = withQPolygonResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPolygon5 cobj_x1 (toCBool x2)

foreign import ccall "qtc_QPolygon5" qtc_QPolygon5 :: Ptr (TQRect t1) -> CBool -> IO (Ptr (TQPolygon ()))

instance QqPolygon ((Rect, Bool)) where
 qPolygon (x1, x2)
  = withQPolygonResult $
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QPolygon6 crect_x1_x crect_x1_y crect_x1_w crect_x1_h  (toCBool x2)

foreign import ccall "qtc_QPolygon6" qtc_QPolygon6 :: CInt -> CInt -> CInt -> CInt -> CBool -> IO (Ptr (TQPolygon ()))

class QqqPolygon_nf x1 where
  qqPolygon_nf :: x1 -> IO (QPolygon ())

class QqPolygon_nf x1 where
  qPolygon_nf :: x1 -> IO (QPolygon ())

instance QqPolygon_nf (()) where
 qPolygon_nf ()
  = withObjectRefResult $
    qtc_QPolygon

instance QqPolygon_nf ((QPolygon t1)) where
 qPolygon_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPolygon1 cobj_x1

instance QqqPolygon_nf ((QRect t1)) where
 qqPolygon_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPolygon2 cobj_x1

instance QqPolygon_nf ((Rect)) where
 qPolygon_nf (x1)
  = withObjectRefResult $
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QPolygon3 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

instance QqPolygon_nf ((Int)) where
 qPolygon_nf (x1)
  = withObjectRefResult $
    qtc_QPolygon4 (toCInt x1)

instance QqqPolygon_nf ((QRect t1, Bool)) where
 qqPolygon_nf (x1, x2)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPolygon5 cobj_x1 (toCBool x2)

instance QqPolygon_nf ((Rect, Bool)) where
 qPolygon_nf (x1, x2)
  = withObjectRefResult $
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QPolygon6 crect_x1_x crect_x1_y crect_x1_w crect_x1_h  (toCBool x2)

instance QqqboundingRect (QPolygon a) (()) (IO (QRect ())) where
 qqboundingRect x0 ()
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPolygon_boundingRect cobj_x0

foreign import ccall "qtc_QPolygon_boundingRect" qtc_QPolygon_boundingRect :: Ptr (TQPolygon a) -> IO (Ptr (TQRect ()))

instance QqboundingRect (QPolygon a) (()) (IO (Rect)) where
 qboundingRect x0 ()
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPolygon_boundingRect_qth cobj_x0 crect_ret_x crect_ret_y crect_ret_w crect_ret_h

foreign import ccall "qtc_QPolygon_boundingRect_qth" qtc_QPolygon_boundingRect_qth :: Ptr (TQPolygon a) -> Ptr CInt -> Ptr CInt -> Ptr CInt -> Ptr CInt -> IO ()

instance QqcontainsPoint (QPolygon a) ((Point, FillRule)) where
 qcontainsPoint x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QPolygon_containsPoint_qth cobj_x0 cpoint_x1_x cpoint_x1_y  (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QPolygon_containsPoint_qth" qtc_QPolygon_containsPoint_qth :: Ptr (TQPolygon a) -> CInt -> CInt -> CLong -> IO CBool

instance QqqcontainsPoint (QPolygon a) ((QPoint t1, FillRule)) where
 qqcontainsPoint x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPolygon_containsPoint cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QPolygon_containsPoint" qtc_QPolygon_containsPoint :: Ptr (TQPolygon a) -> Ptr (TQPoint t1) -> CLong -> IO CBool

instance Qqintersected (QPolygon a) ((QPolygon t1)) (IO (QPolygon ())) where
 qintersected x0 (x1)
  = withQPolygonResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPolygon_intersected cobj_x0 cobj_x1

foreign import ccall "qtc_QPolygon_intersected" qtc_QPolygon_intersected :: Ptr (TQPolygon a) -> Ptr (TQPolygon t1) -> IO (Ptr (TQPolygon ()))

qpoint :: QPolygon a -> ((Int)) -> IO (Point)
qpoint x0 (x1)
  = withPointResult $ \cpoint_ret_x cpoint_ret_y ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPolygon_point_qth cobj_x0 (toCInt x1) cpoint_ret_x cpoint_ret_y

foreign import ccall "qtc_QPolygon_point_qth" qtc_QPolygon_point_qth :: Ptr (TQPolygon a) -> CInt -> Ptr CInt -> Ptr CInt -> IO ()

qqpoint :: QPolygon a -> ((Int)) -> IO (QPoint ())
qqpoint x0 (x1)
  = withQPointResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPolygon_point cobj_x0 (toCInt x1)

foreign import ccall "qtc_QPolygon_point" qtc_QPolygon_point :: Ptr (TQPolygon a) -> CInt -> IO (Ptr (TQPoint ()))

class QqputPoints x1 where
 qputPoints :: QPolygon a -> x1 -> IO ()

instance QqputPoints ((Int, Int, QPolygon t3)) where
 qputPoints x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QPolygon_putPoints cobj_x0 (toCInt x1) (toCInt x2) cobj_x3

foreign import ccall "qtc_QPolygon_putPoints" qtc_QPolygon_putPoints :: Ptr (TQPolygon a) -> CInt -> CInt -> Ptr (TQPolygon t3) -> IO ()

instance QqputPoints ((Int, Int, QPolygon t3, Int)) where
 qputPoints x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QPolygon_putPoints1 cobj_x0 (toCInt x1) (toCInt x2) cobj_x3 (toCInt x4)

foreign import ccall "qtc_QPolygon_putPoints1" qtc_QPolygon_putPoints1 :: Ptr (TQPolygon a) -> CInt -> CInt -> Ptr (TQPolygon t3) -> CInt -> IO ()

class QqsetPoint x1 where
 qsetPoint :: QPolygon a -> x1 -> IO ()

instance QqsetPoint ((Int, Int, Int)) where
 qsetPoint x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPolygon_setPoint1 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3)

foreign import ccall "qtc_QPolygon_setPoint1" qtc_QPolygon_setPoint1 :: Ptr (TQPolygon a) -> CInt -> CInt -> CInt -> IO ()

instance QqsetPoint ((Int, Point)) where
 qsetPoint x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x2 $ \cpoint_x2_x cpoint_x2_y -> 
    qtc_QPolygon_setPoint_qth cobj_x0 (toCInt x1) cpoint_x2_x cpoint_x2_y 

foreign import ccall "qtc_QPolygon_setPoint_qth" qtc_QPolygon_setPoint_qth :: Ptr (TQPolygon a) -> CInt -> CInt -> CInt -> IO ()

qqsetPoint :: QPolygon a -> ((Int, QPoint t2)) -> IO ()
qqsetPoint x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QPolygon_setPoint cobj_x0 (toCInt x1) cobj_x2

foreign import ccall "qtc_QPolygon_setPoint" qtc_QPolygon_setPoint :: Ptr (TQPolygon a) -> CInt -> Ptr (TQPoint t2) -> IO ()

instance Qqsubtracted (QPolygon a) ((QPolygon t1)) (IO (QPolygon ())) where
 qsubtracted x0 (x1)
  = withQPolygonResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPolygon_subtracted cobj_x0 cobj_x1

foreign import ccall "qtc_QPolygon_subtracted" qtc_QPolygon_subtracted :: Ptr (TQPolygon a) -> Ptr (TQPolygon t1) -> IO (Ptr (TQPolygon ()))

instance Qqtranslate (QPolygon a) ((Int, Int)) (IO ()) where
 qtranslate x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPolygon_translate1 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QPolygon_translate1" qtc_QPolygon_translate1 :: Ptr (TQPolygon a) -> CInt -> CInt -> IO ()

instance Qqtranslate (QPolygon a) ((Point)) (IO ()) where
 qtranslate x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QPolygon_translate_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

foreign import ccall "qtc_QPolygon_translate_qth" qtc_QPolygon_translate_qth :: Ptr (TQPolygon a) -> CInt -> CInt -> IO ()

instance Qqqtranslate (QPolygon a) ((QPoint t1)) where
 qqtranslate x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPolygon_translate cobj_x0 cobj_x1

foreign import ccall "qtc_QPolygon_translate" qtc_QPolygon_translate :: Ptr (TQPolygon a) -> Ptr (TQPoint t1) -> IO ()

instance Qqunited (QPolygon a) ((QPolygon t1)) (IO (QPolygon ())) where
 qunited x0 (x1)
  = withQPolygonResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPolygon_united cobj_x0 cobj_x1

foreign import ccall "qtc_QPolygon_united" qtc_QPolygon_united :: Ptr (TQPolygon a) -> Ptr (TQPolygon t1) -> IO (Ptr (TQPolygon ()))

qPolygon_delete :: QPolygon a -> IO ()
qPolygon_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPolygon_delete cobj_x0

foreign import ccall "qtc_QPolygon_delete" qtc_QPolygon_delete :: Ptr (TQPolygon a) -> IO ()

