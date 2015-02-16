{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QColor.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:27
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QColor (
  QqColor(..)
  ,QqColor_nf(..)
  ,alphaF
  ,black
  ,blackF
  ,blue
  ,blueF
  ,qColorColorNames
  ,convertTo
  ,cyan
  ,cyanF
  ,Qdarker(..)
  ,QqColorFromCmyk(..)
  ,QqColorFromCmykF(..)
  ,QqColorFromHsv(..)
  ,QqColorFromHsvF(..)
  ,QqColorFromRgb(..)
  ,QqColorFromRgbF(..)
  ,qColorFromRgba
  ,green
  ,greenF
  ,hue
  ,hueF
  ,Qlighter(..)
  ,magenta
  ,magentaF
  ,red
  ,redF
  ,rgb
  ,saturation
  ,saturationF
  ,setAlphaF
  ,setBlue
  ,setBlueF
  ,QsetCmyk(..)
  ,QsetCmykF(..)
  ,setGreen
  ,setGreenF
  ,QsetHsv(..)
  ,QsetHsvF(..)
  ,setNamedColor
  ,setRed
  ,setRedF
  ,QsetRgb(..)
  ,QsetRgbF(..)
  ,spec
  ,toCmyk
  ,toHsv
  ,toRgb
  ,valueF
  ,yellow
  ,yellowF
  ,qColor_delete
  )
  where

import Foreign.C.Types
import Qth.ClassTypes.Core
import Qtc.Enums.Base
import Qtc.Enums.Core.Qt
import Qtc.Enums.Gui.QColor

import Qtc.Classes.Base
import Qtc.Classes.Qccs
import Qtc.Classes.Core
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core
import Qtc.Classes.Gui
import Qtc.ClassTypes.Gui

class QqColor x1 where
  qColor :: x1 -> IO (QColor ())

instance QqColor (()) where
 qColor ()
  = withQColorResult $
    qtc_QColor

foreign import ccall "qtc_QColor" qtc_QColor :: IO (Ptr (TQColor ()))

instance QqColor ((Int)) where
 qColor (x1)
  = withQColorResult $
    qtc_QColor1 (toCUInt x1)

foreign import ccall "qtc_QColor1" qtc_QColor1 :: CUInt -> IO (Ptr (TQColor ()))

instance QqColor ((Spec)) where
 qColor (x1)
  = withQColorResult $
    qtc_QColor3 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QColor3" qtc_QColor3 :: CLong -> IO (Ptr (TQColor ()))

instance QqColor ((String)) where
 qColor (x1)
  = withQColorResult $
    withCWString x1 $ \cstr_x1 ->
    qtc_QColor4 cstr_x1

foreign import ccall "qtc_QColor4" qtc_QColor4 :: CWString -> IO (Ptr (TQColor ()))

instance QqColor ((QColor t1)) where
 qColor (x1)
  = withQColorResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QColor5 cobj_x1

foreign import ccall "qtc_QColor5" qtc_QColor5 :: Ptr (TQColor t1) -> IO (Ptr (TQColor ()))

instance QqColor ((GlobalColor)) where
 qColor (x1)
  = withQColorResult $
    qtc_QColor6 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QColor6" qtc_QColor6 :: CLong -> IO (Ptr (TQColor ()))

instance QqColor ((Int, Int, Int)) where
 qColor (x1, x2, x3)
  = withQColorResult $
    qtc_QColor7 (toCInt x1) (toCInt x2) (toCInt x3)

foreign import ccall "qtc_QColor7" qtc_QColor7 :: CInt -> CInt -> CInt -> IO (Ptr (TQColor ()))

instance QqColor ((Int, Int, Int, Int)) where
 qColor (x1, x2, x3, x4)
  = withQColorResult $
    qtc_QColor8 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QColor8" qtc_QColor8 :: CInt -> CInt -> CInt -> CInt -> IO (Ptr (TQColor ()))

class QqColor_nf x1 where
  qColor_nf :: x1 -> IO (QColor ())

instance QqColor_nf (()) where
 qColor_nf ()
  = withObjectRefResult $
    qtc_QColor

instance QqColor_nf ((Int)) where
 qColor_nf (x1)
  = withObjectRefResult $
    qtc_QColor1 (toCUInt x1)

instance QqColor_nf ((Spec)) where
 qColor_nf (x1)
  = withObjectRefResult $
    qtc_QColor3 (toCLong $ qEnum_toInt x1)

instance QqColor_nf ((String)) where
 qColor_nf (x1)
  = withObjectRefResult $
    withCWString x1 $ \cstr_x1 ->
    qtc_QColor4 cstr_x1

instance QqColor_nf ((QColor t1)) where
 qColor_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QColor5 cobj_x1

instance QqColor_nf ((GlobalColor)) where
 qColor_nf (x1)
  = withObjectRefResult $
    qtc_QColor6 (toCLong $ qEnum_toInt x1)

instance QqColor_nf ((Int, Int, Int)) where
 qColor_nf (x1, x2, x3)
  = withObjectRefResult $
    qtc_QColor7 (toCInt x1) (toCInt x2) (toCInt x3)

instance QqColor_nf ((Int, Int, Int, Int)) where
 qColor_nf (x1, x2, x3, x4)
  = withObjectRefResult $
    qtc_QColor8 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

instance Qalpha (QColor a) (()) (IO (Int)) where
 alpha x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QColor_alpha cobj_x0

foreign import ccall "qtc_QColor_alpha" qtc_QColor_alpha :: Ptr (TQColor a) -> IO CInt

alphaF :: QColor a -> (()) -> IO (Double)
alphaF x0 ()
  = withDoubleResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QColor_alphaF cobj_x0

foreign import ccall "qtc_QColor_alphaF" qtc_QColor_alphaF :: Ptr (TQColor a) -> IO CDouble

black :: QColor a -> (()) -> IO (Int)
black x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QColor_black cobj_x0

foreign import ccall "qtc_QColor_black" qtc_QColor_black :: Ptr (TQColor a) -> IO CInt

blackF :: QColor a -> (()) -> IO (Double)
blackF x0 ()
  = withDoubleResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QColor_blackF cobj_x0

foreign import ccall "qtc_QColor_blackF" qtc_QColor_blackF :: Ptr (TQColor a) -> IO CDouble

blue :: QColor a -> (()) -> IO (Int)
blue x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QColor_blue cobj_x0

foreign import ccall "qtc_QColor_blue" qtc_QColor_blue :: Ptr (TQColor a) -> IO CInt

blueF :: QColor a -> (()) -> IO (Double)
blueF x0 ()
  = withDoubleResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QColor_blueF cobj_x0

foreign import ccall "qtc_QColor_blueF" qtc_QColor_blueF :: Ptr (TQColor a) -> IO CDouble

qColorColorNames :: (()) -> IO ([String])
qColorColorNames ()
  = withQListStringResult $ \arr ->
    qtc_QColor_colorNames arr

foreign import ccall "qtc_QColor_colorNames" qtc_QColor_colorNames :: Ptr (Ptr (TQString ())) -> IO CInt

convertTo :: QColor a -> ((Spec)) -> IO (QColor ())
convertTo x0 (x1)
  = withQColorResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QColor_convertTo cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QColor_convertTo" qtc_QColor_convertTo :: Ptr (TQColor a) -> CLong -> IO (Ptr (TQColor ()))

cyan :: QColor a -> (()) -> IO (Int)
cyan x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QColor_cyan cobj_x0

foreign import ccall "qtc_QColor_cyan" qtc_QColor_cyan :: Ptr (TQColor a) -> IO CInt

cyanF :: QColor a -> (()) -> IO (Double)
cyanF x0 ()
  = withDoubleResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QColor_cyanF cobj_x0

foreign import ccall "qtc_QColor_cyanF" qtc_QColor_cyanF :: Ptr (TQColor a) -> IO CDouble

instance Qdark (QColor a) (()) (IO (QColor ())) where
 dark x0 ()
  = withQColorResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QColor_dark cobj_x0

foreign import ccall "qtc_QColor_dark" qtc_QColor_dark :: Ptr (TQColor a) -> IO (Ptr (TQColor ()))

instance Qdark (QColor a) ((Int)) (IO (QColor ())) where
 dark x0 (x1)
  = withQColorResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QColor_dark1 cobj_x0 (toCInt x1)

foreign import ccall "qtc_QColor_dark1" qtc_QColor_dark1 :: Ptr (TQColor a) -> CInt -> IO (Ptr (TQColor ()))

class Qdarker x1 where
 darker :: QColor a -> x1 -> IO (QColor ())

instance Qdarker (()) where
 darker x0 ()
  = withQColorResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QColor_darker cobj_x0

foreign import ccall "qtc_QColor_darker" qtc_QColor_darker :: Ptr (TQColor a) -> IO (Ptr (TQColor ()))

instance Qdarker ((Int)) where
 darker x0 (x1)
  = withQColorResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QColor_darker1 cobj_x0 (toCInt x1)

foreign import ccall "qtc_QColor_darker1" qtc_QColor_darker1 :: Ptr (TQColor a) -> CInt -> IO (Ptr (TQColor ()))

class QqColorFromCmyk x1 where
 qColorFromCmyk :: x1 -> IO (QColor ())

instance QqColorFromCmyk ((Int, Int, Int, Int)) where
 qColorFromCmyk (x1, x2, x3, x4)
  = withQColorResult $
    qtc_QColor_fromCmyk (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QColor_fromCmyk" qtc_QColor_fromCmyk :: CInt -> CInt -> CInt -> CInt -> IO (Ptr (TQColor ()))

instance QqColorFromCmyk ((Int, Int, Int, Int, Int)) where
 qColorFromCmyk (x1, x2, x3, x4, x5)
  = withQColorResult $
    qtc_QColor_fromCmyk1 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4) (toCInt x5)

foreign import ccall "qtc_QColor_fromCmyk1" qtc_QColor_fromCmyk1 :: CInt -> CInt -> CInt -> CInt -> CInt -> IO (Ptr (TQColor ()))

class QqColorFromCmykF x1 where
 qColorFromCmykF :: x1 -> IO (QColor ())

instance QqColorFromCmykF ((Double, Double, Double, Double)) where
 qColorFromCmykF (x1, x2, x3, x4)
  = withQColorResult $
    qtc_QColor_fromCmykF (toCDouble x1) (toCDouble x2) (toCDouble x3) (toCDouble x4)

foreign import ccall "qtc_QColor_fromCmykF" qtc_QColor_fromCmykF :: CDouble -> CDouble -> CDouble -> CDouble -> IO (Ptr (TQColor ()))

instance QqColorFromCmykF ((Double, Double, Double, Double, Double)) where
 qColorFromCmykF (x1, x2, x3, x4, x5)
  = withQColorResult $
    qtc_QColor_fromCmykF1 (toCDouble x1) (toCDouble x2) (toCDouble x3) (toCDouble x4) (toCDouble x5)

foreign import ccall "qtc_QColor_fromCmykF1" qtc_QColor_fromCmykF1 :: CDouble -> CDouble -> CDouble -> CDouble -> CDouble -> IO (Ptr (TQColor ()))

class QqColorFromHsv x1 where
 qColorFromHsv :: x1 -> IO (QColor ())

instance QqColorFromHsv ((Int, Int, Int)) where
 qColorFromHsv (x1, x2, x3)
  = withQColorResult $
    qtc_QColor_fromHsv (toCInt x1) (toCInt x2) (toCInt x3)

foreign import ccall "qtc_QColor_fromHsv" qtc_QColor_fromHsv :: CInt -> CInt -> CInt -> IO (Ptr (TQColor ()))

instance QqColorFromHsv ((Int, Int, Int, Int)) where
 qColorFromHsv (x1, x2, x3, x4)
  = withQColorResult $
    qtc_QColor_fromHsv1 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QColor_fromHsv1" qtc_QColor_fromHsv1 :: CInt -> CInt -> CInt -> CInt -> IO (Ptr (TQColor ()))

class QqColorFromHsvF x1 where
 qColorFromHsvF :: x1 -> IO (QColor ())

instance QqColorFromHsvF ((Double, Double, Double)) where
 qColorFromHsvF (x1, x2, x3)
  = withQColorResult $
    qtc_QColor_fromHsvF (toCDouble x1) (toCDouble x2) (toCDouble x3)

foreign import ccall "qtc_QColor_fromHsvF" qtc_QColor_fromHsvF :: CDouble -> CDouble -> CDouble -> IO (Ptr (TQColor ()))

instance QqColorFromHsvF ((Double, Double, Double, Double)) where
 qColorFromHsvF (x1, x2, x3, x4)
  = withQColorResult $
    qtc_QColor_fromHsvF1 (toCDouble x1) (toCDouble x2) (toCDouble x3) (toCDouble x4)

foreign import ccall "qtc_QColor_fromHsvF1" qtc_QColor_fromHsvF1 :: CDouble -> CDouble -> CDouble -> CDouble -> IO (Ptr (TQColor ()))

class QqColorFromRgb x1 where
 qColorFromRgb :: x1 -> IO (QColor ())

instance QqColorFromRgb ((Int)) where
 qColorFromRgb (x1)
  = withQColorResult $
    qtc_QColor_fromRgb (toCUInt x1)

foreign import ccall "qtc_QColor_fromRgb" qtc_QColor_fromRgb :: CUInt -> IO (Ptr (TQColor ()))

instance QqColorFromRgb ((Int, Int, Int)) where
 qColorFromRgb (x1, x2, x3)
  = withQColorResult $
    qtc_QColor_fromRgb1 (toCInt x1) (toCInt x2) (toCInt x3)

foreign import ccall "qtc_QColor_fromRgb1" qtc_QColor_fromRgb1 :: CInt -> CInt -> CInt -> IO (Ptr (TQColor ()))

instance QqColorFromRgb ((Int, Int, Int, Int)) where
 qColorFromRgb (x1, x2, x3, x4)
  = withQColorResult $
    qtc_QColor_fromRgb2 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QColor_fromRgb2" qtc_QColor_fromRgb2 :: CInt -> CInt -> CInt -> CInt -> IO (Ptr (TQColor ()))

class QqColorFromRgbF x1 where
 qColorFromRgbF :: x1 -> IO (QColor ())

instance QqColorFromRgbF ((Double, Double, Double)) where
 qColorFromRgbF (x1, x2, x3)
  = withQColorResult $
    qtc_QColor_fromRgbF (toCDouble x1) (toCDouble x2) (toCDouble x3)

foreign import ccall "qtc_QColor_fromRgbF" qtc_QColor_fromRgbF :: CDouble -> CDouble -> CDouble -> IO (Ptr (TQColor ()))

instance QqColorFromRgbF ((Double, Double, Double, Double)) where
 qColorFromRgbF (x1, x2, x3, x4)
  = withQColorResult $
    qtc_QColor_fromRgbF1 (toCDouble x1) (toCDouble x2) (toCDouble x3) (toCDouble x4)

foreign import ccall "qtc_QColor_fromRgbF1" qtc_QColor_fromRgbF1 :: CDouble -> CDouble -> CDouble -> CDouble -> IO (Ptr (TQColor ()))

qColorFromRgba :: ((Int)) -> IO (QColor ())
qColorFromRgba (x1)
  = withQColorResult $
    qtc_QColor_fromRgba (toCUInt x1)

foreign import ccall "qtc_QColor_fromRgba" qtc_QColor_fromRgba :: CUInt -> IO (Ptr (TQColor ()))

green :: QColor a -> (()) -> IO (Int)
green x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QColor_green cobj_x0

foreign import ccall "qtc_QColor_green" qtc_QColor_green :: Ptr (TQColor a) -> IO CInt

greenF :: QColor a -> (()) -> IO (Double)
greenF x0 ()
  = withDoubleResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QColor_greenF cobj_x0

foreign import ccall "qtc_QColor_greenF" qtc_QColor_greenF :: Ptr (TQColor a) -> IO CDouble

hue :: QColor a -> (()) -> IO (Int)
hue x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QColor_hue cobj_x0

foreign import ccall "qtc_QColor_hue" qtc_QColor_hue :: Ptr (TQColor a) -> IO CInt

hueF :: QColor a -> (()) -> IO (Double)
hueF x0 ()
  = withDoubleResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QColor_hueF cobj_x0

foreign import ccall "qtc_QColor_hueF" qtc_QColor_hueF :: Ptr (TQColor a) -> IO CDouble

instance QqisValid (QColor ()) (()) where
 qisValid x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QColor_isValid cobj_x0

foreign import ccall "qtc_QColor_isValid" qtc_QColor_isValid :: Ptr (TQColor a) -> IO CBool

instance QqisValid (QColorSc a) (()) where
 qisValid x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QColor_isValid cobj_x0

instance Qlight (QColor a) (()) (IO (QColor ())) where
 light x0 ()
  = withQColorResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QColor_light cobj_x0

foreign import ccall "qtc_QColor_light" qtc_QColor_light :: Ptr (TQColor a) -> IO (Ptr (TQColor ()))

instance Qlight (QColor a) ((Int)) (IO (QColor ())) where
 light x0 (x1)
  = withQColorResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QColor_light1 cobj_x0 (toCInt x1)

foreign import ccall "qtc_QColor_light1" qtc_QColor_light1 :: Ptr (TQColor a) -> CInt -> IO (Ptr (TQColor ()))

class Qlighter x1 where
 lighter :: QColor a -> x1 -> IO (QColor ())

instance Qlighter (()) where
 lighter x0 ()
  = withQColorResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QColor_lighter cobj_x0

foreign import ccall "qtc_QColor_lighter" qtc_QColor_lighter :: Ptr (TQColor a) -> IO (Ptr (TQColor ()))

instance Qlighter ((Int)) where
 lighter x0 (x1)
  = withQColorResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QColor_lighter1 cobj_x0 (toCInt x1)

foreign import ccall "qtc_QColor_lighter1" qtc_QColor_lighter1 :: Ptr (TQColor a) -> CInt -> IO (Ptr (TQColor ()))

magenta :: QColor a -> (()) -> IO (Int)
magenta x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QColor_magenta cobj_x0

foreign import ccall "qtc_QColor_magenta" qtc_QColor_magenta :: Ptr (TQColor a) -> IO CInt

magentaF :: QColor a -> (()) -> IO (Double)
magentaF x0 ()
  = withDoubleResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QColor_magentaF cobj_x0

foreign import ccall "qtc_QColor_magentaF" qtc_QColor_magentaF :: Ptr (TQColor a) -> IO CDouble

instance Qname (QColor a) (()) where
 name x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QColor_name cobj_x0

foreign import ccall "qtc_QColor_name" qtc_QColor_name :: Ptr (TQColor a) -> IO (Ptr (TQString ()))

red :: QColor a -> (()) -> IO (Int)
red x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QColor_red cobj_x0

foreign import ccall "qtc_QColor_red" qtc_QColor_red :: Ptr (TQColor a) -> IO CInt

redF :: QColor a -> (()) -> IO (Double)
redF x0 ()
  = withDoubleResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QColor_redF cobj_x0

foreign import ccall "qtc_QColor_redF" qtc_QColor_redF :: Ptr (TQColor a) -> IO CDouble

rgb :: QColor a -> (()) -> IO (Int)
rgb x0 ()
  = withUnsignedIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QColor_rgb cobj_x0

foreign import ccall "qtc_QColor_rgb" qtc_QColor_rgb :: Ptr (TQColor a) -> IO CUInt

instance Qrgba (QColor a) (()) (IO (Int)) where
 rgba x0 ()
  = withUnsignedIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QColor_rgba cobj_x0

foreign import ccall "qtc_QColor_rgba" qtc_QColor_rgba :: Ptr (TQColor a) -> IO CUInt

saturation :: QColor a -> (()) -> IO (Int)
saturation x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QColor_saturation cobj_x0

foreign import ccall "qtc_QColor_saturation" qtc_QColor_saturation :: Ptr (TQColor a) -> IO CInt

saturationF :: QColor a -> (()) -> IO (Double)
saturationF x0 ()
  = withDoubleResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QColor_saturationF cobj_x0

foreign import ccall "qtc_QColor_saturationF" qtc_QColor_saturationF :: Ptr (TQColor a) -> IO CDouble

instance QsetAlpha (QColor a) ((Int)) where
 setAlpha x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QColor_setAlpha cobj_x0 (toCInt x1)

foreign import ccall "qtc_QColor_setAlpha" qtc_QColor_setAlpha :: Ptr (TQColor a) -> CInt -> IO ()

setAlphaF :: QColor a -> ((Double)) -> IO ()
setAlphaF x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QColor_setAlphaF cobj_x0 (toCDouble x1)

foreign import ccall "qtc_QColor_setAlphaF" qtc_QColor_setAlphaF :: Ptr (TQColor a) -> CDouble -> IO ()

setBlue :: QColor a -> ((Int)) -> IO ()
setBlue x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QColor_setBlue cobj_x0 (toCInt x1)

foreign import ccall "qtc_QColor_setBlue" qtc_QColor_setBlue :: Ptr (TQColor a) -> CInt -> IO ()

setBlueF :: QColor a -> ((Double)) -> IO ()
setBlueF x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QColor_setBlueF cobj_x0 (toCDouble x1)

foreign import ccall "qtc_QColor_setBlueF" qtc_QColor_setBlueF :: Ptr (TQColor a) -> CDouble -> IO ()

class QsetCmyk x1 where
 setCmyk :: QColor a -> x1 -> IO ()

instance QsetCmyk ((Int, Int, Int, Int)) where
 setCmyk x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QColor_setCmyk cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QColor_setCmyk" qtc_QColor_setCmyk :: Ptr (TQColor a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QsetCmyk ((Int, Int, Int, Int, Int)) where
 setCmyk x0 (x1, x2, x3, x4, x5)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QColor_setCmyk1 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4) (toCInt x5)

foreign import ccall "qtc_QColor_setCmyk1" qtc_QColor_setCmyk1 :: Ptr (TQColor a) -> CInt -> CInt -> CInt -> CInt -> CInt -> IO ()

class QsetCmykF x1 where
 setCmykF :: QColor a -> x1 -> IO ()

instance QsetCmykF ((Double, Double, Double, Double)) where
 setCmykF x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QColor_setCmykF cobj_x0 (toCDouble x1) (toCDouble x2) (toCDouble x3) (toCDouble x4)

foreign import ccall "qtc_QColor_setCmykF" qtc_QColor_setCmykF :: Ptr (TQColor a) -> CDouble -> CDouble -> CDouble -> CDouble -> IO ()

instance QsetCmykF ((Double, Double, Double, Double, Double)) where
 setCmykF x0 (x1, x2, x3, x4, x5)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QColor_setCmykF1 cobj_x0 (toCDouble x1) (toCDouble x2) (toCDouble x3) (toCDouble x4) (toCDouble x5)

foreign import ccall "qtc_QColor_setCmykF1" qtc_QColor_setCmykF1 :: Ptr (TQColor a) -> CDouble -> CDouble -> CDouble -> CDouble -> CDouble -> IO ()

setGreen :: QColor a -> ((Int)) -> IO ()
setGreen x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QColor_setGreen cobj_x0 (toCInt x1)

foreign import ccall "qtc_QColor_setGreen" qtc_QColor_setGreen :: Ptr (TQColor a) -> CInt -> IO ()

setGreenF :: QColor a -> ((Double)) -> IO ()
setGreenF x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QColor_setGreenF cobj_x0 (toCDouble x1)

foreign import ccall "qtc_QColor_setGreenF" qtc_QColor_setGreenF :: Ptr (TQColor a) -> CDouble -> IO ()

class QsetHsv x1 where
 setHsv :: QColor a -> x1 -> IO ()

instance QsetHsv ((Int, Int, Int)) where
 setHsv x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QColor_setHsv cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3)

foreign import ccall "qtc_QColor_setHsv" qtc_QColor_setHsv :: Ptr (TQColor a) -> CInt -> CInt -> CInt -> IO ()

instance QsetHsv ((Int, Int, Int, Int)) where
 setHsv x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QColor_setHsv1 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QColor_setHsv1" qtc_QColor_setHsv1 :: Ptr (TQColor a) -> CInt -> CInt -> CInt -> CInt -> IO ()

class QsetHsvF x1 where
 setHsvF :: QColor a -> x1 -> IO ()

instance QsetHsvF ((Double, Double, Double)) where
 setHsvF x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QColor_setHsvF cobj_x0 (toCDouble x1) (toCDouble x2) (toCDouble x3)

foreign import ccall "qtc_QColor_setHsvF" qtc_QColor_setHsvF :: Ptr (TQColor a) -> CDouble -> CDouble -> CDouble -> IO ()

instance QsetHsvF ((Double, Double, Double, Double)) where
 setHsvF x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QColor_setHsvF1 cobj_x0 (toCDouble x1) (toCDouble x2) (toCDouble x3) (toCDouble x4)

foreign import ccall "qtc_QColor_setHsvF1" qtc_QColor_setHsvF1 :: Ptr (TQColor a) -> CDouble -> CDouble -> CDouble -> CDouble -> IO ()

setNamedColor :: QColor a -> ((String)) -> IO ()
setNamedColor x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QColor_setNamedColor cobj_x0 cstr_x1

foreign import ccall "qtc_QColor_setNamedColor" qtc_QColor_setNamedColor :: Ptr (TQColor a) -> CWString -> IO ()

setRed :: QColor a -> ((Int)) -> IO ()
setRed x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QColor_setRed cobj_x0 (toCInt x1)

foreign import ccall "qtc_QColor_setRed" qtc_QColor_setRed :: Ptr (TQColor a) -> CInt -> IO ()

setRedF :: QColor a -> ((Double)) -> IO ()
setRedF x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QColor_setRedF cobj_x0 (toCDouble x1)

foreign import ccall "qtc_QColor_setRedF" qtc_QColor_setRedF :: Ptr (TQColor a) -> CDouble -> IO ()

class QsetRgb x1 where
 setRgb :: QColor a -> x1 -> IO ()

instance QsetRgb ((Int)) where
 setRgb x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QColor_setRgb cobj_x0 (toCUInt x1)

foreign import ccall "qtc_QColor_setRgb" qtc_QColor_setRgb :: Ptr (TQColor a) -> CUInt -> IO ()

instance QsetRgb ((Int, Int, Int)) where
 setRgb x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QColor_setRgb1 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3)

foreign import ccall "qtc_QColor_setRgb1" qtc_QColor_setRgb1 :: Ptr (TQColor a) -> CInt -> CInt -> CInt -> IO ()

instance QsetRgb ((Int, Int, Int, Int)) where
 setRgb x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QColor_setRgb2 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QColor_setRgb2" qtc_QColor_setRgb2 :: Ptr (TQColor a) -> CInt -> CInt -> CInt -> CInt -> IO ()

class QsetRgbF x1 where
 setRgbF :: QColor a -> x1 -> IO ()

instance QsetRgbF ((Double, Double, Double)) where
 setRgbF x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QColor_setRgbF cobj_x0 (toCDouble x1) (toCDouble x2) (toCDouble x3)

foreign import ccall "qtc_QColor_setRgbF" qtc_QColor_setRgbF :: Ptr (TQColor a) -> CDouble -> CDouble -> CDouble -> IO ()

instance QsetRgbF ((Double, Double, Double, Double)) where
 setRgbF x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QColor_setRgbF1 cobj_x0 (toCDouble x1) (toCDouble x2) (toCDouble x3) (toCDouble x4)

foreign import ccall "qtc_QColor_setRgbF1" qtc_QColor_setRgbF1 :: Ptr (TQColor a) -> CDouble -> CDouble -> CDouble -> CDouble -> IO ()

instance QsetRgba (QColor a) ((Int)) where
 setRgba x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QColor_setRgba cobj_x0 (toCUInt x1)

foreign import ccall "qtc_QColor_setRgba" qtc_QColor_setRgba :: Ptr (TQColor a) -> CUInt -> IO ()

spec :: QColor a -> (()) -> IO (Spec)
spec x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QColor_spec cobj_x0

foreign import ccall "qtc_QColor_spec" qtc_QColor_spec :: Ptr (TQColor a) -> IO CLong

toCmyk :: QColor a -> (()) -> IO (QColor ())
toCmyk x0 ()
  = withQColorResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QColor_toCmyk cobj_x0

foreign import ccall "qtc_QColor_toCmyk" qtc_QColor_toCmyk :: Ptr (TQColor a) -> IO (Ptr (TQColor ()))

toHsv :: QColor a -> (()) -> IO (QColor ())
toHsv x0 ()
  = withQColorResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QColor_toHsv cobj_x0

foreign import ccall "qtc_QColor_toHsv" qtc_QColor_toHsv :: Ptr (TQColor a) -> IO (Ptr (TQColor ()))

toRgb :: QColor a -> (()) -> IO (QColor ())
toRgb x0 ()
  = withQColorResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QColor_toRgb cobj_x0

foreign import ccall "qtc_QColor_toRgb" qtc_QColor_toRgb :: Ptr (TQColor a) -> IO (Ptr (TQColor ()))

instance Qvalue (QColor a) (()) (IO (Int)) where
 value x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QColor_value cobj_x0

foreign import ccall "qtc_QColor_value" qtc_QColor_value :: Ptr (TQColor a) -> IO CInt

valueF :: QColor a -> (()) -> IO (Double)
valueF x0 ()
  = withDoubleResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QColor_valueF cobj_x0

foreign import ccall "qtc_QColor_valueF" qtc_QColor_valueF :: Ptr (TQColor a) -> IO CDouble

yellow :: QColor a -> (()) -> IO (Int)
yellow x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QColor_yellow cobj_x0

foreign import ccall "qtc_QColor_yellow" qtc_QColor_yellow :: Ptr (TQColor a) -> IO CInt

yellowF :: QColor a -> (()) -> IO (Double)
yellowF x0 ()
  = withDoubleResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QColor_yellowF cobj_x0

foreign import ccall "qtc_QColor_yellowF" qtc_QColor_yellowF :: Ptr (TQColor a) -> IO CDouble

qColor_delete :: QColor a -> IO ()
qColor_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QColor_delete cobj_x0

foreign import ccall "qtc_QColor_delete" qtc_QColor_delete :: Ptr (TQColor a) -> IO ()

