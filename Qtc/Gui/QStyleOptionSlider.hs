{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QStyleOptionSlider.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:21
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QStyleOptionSlider (
  QqStyleOptionSlider(..)
  ,QqStyleOptionSlider_nf(..)
  ,dialWrapping
  ,setDialWrapping
  ,setSliderValue
  ,setUpsideDown
  ,sliderValue
  ,upsideDown
  ,qStyleOptionSlider_delete
  )
  where

import Foreign.C.Types
import Qth.ClassTypes.Core
import Qtc.Enums.Base
import Qtc.Enums.Core.Qt
import Qtc.Enums.Gui.QSlider

import Qtc.Classes.Base
import Qtc.Classes.Qccs
import Qtc.Classes.Core
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core
import Qtc.Classes.Gui
import Qtc.ClassTypes.Gui

class QqStyleOptionSlider x1 where
  qStyleOptionSlider :: x1 -> IO (QStyleOptionSlider ())

instance QqStyleOptionSlider (()) where
 qStyleOptionSlider ()
  = withQStyleOptionSliderResult $
    qtc_QStyleOptionSlider

foreign import ccall "qtc_QStyleOptionSlider" qtc_QStyleOptionSlider :: IO (Ptr (TQStyleOptionSlider ()))

instance QqStyleOptionSlider ((QStyleOptionSlider t1)) where
 qStyleOptionSlider (x1)
  = withQStyleOptionSliderResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStyleOptionSlider1 cobj_x1

foreign import ccall "qtc_QStyleOptionSlider1" qtc_QStyleOptionSlider1 :: Ptr (TQStyleOptionSlider t1) -> IO (Ptr (TQStyleOptionSlider ()))

class QqStyleOptionSlider_nf x1 where
  qStyleOptionSlider_nf :: x1 -> IO (QStyleOptionSlider ())

instance QqStyleOptionSlider_nf (()) where
 qStyleOptionSlider_nf ()
  = withObjectRefResult $
    qtc_QStyleOptionSlider

instance QqStyleOptionSlider_nf ((QStyleOptionSlider t1)) where
 qStyleOptionSlider_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStyleOptionSlider1 cobj_x1

dialWrapping :: QStyleOptionSlider a -> (()) -> IO (Bool)
dialWrapping x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionSlider_dialWrapping cobj_x0

foreign import ccall "qtc_QStyleOptionSlider_dialWrapping" qtc_QStyleOptionSlider_dialWrapping :: Ptr (TQStyleOptionSlider a) -> IO CBool

instance Qqmaximum (QStyleOptionSlider a) (()) (IO (Int)) where
 qmaximum x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionSlider_maximum cobj_x0

foreign import ccall "qtc_QStyleOptionSlider_maximum" qtc_QStyleOptionSlider_maximum :: Ptr (TQStyleOptionSlider a) -> IO CInt

instance Qqminimum (QStyleOptionSlider a) (()) (IO (Int)) where
 qminimum x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionSlider_minimum cobj_x0

foreign import ccall "qtc_QStyleOptionSlider_minimum" qtc_QStyleOptionSlider_minimum :: Ptr (TQStyleOptionSlider a) -> IO CInt

instance QnotchTarget (QStyleOptionSlider a) (()) where
 notchTarget x0 ()
  = withDoubleResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionSlider_notchTarget cobj_x0

foreign import ccall "qtc_QStyleOptionSlider_notchTarget" qtc_QStyleOptionSlider_notchTarget :: Ptr (TQStyleOptionSlider a) -> IO CDouble

instance Qorientation (QStyleOptionSlider a) (()) (IO (QtOrientation)) where
 orientation x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionSlider_orientation cobj_x0

foreign import ccall "qtc_QStyleOptionSlider_orientation" qtc_QStyleOptionSlider_orientation :: Ptr (TQStyleOptionSlider a) -> IO CLong

instance QpageStep (QStyleOptionSlider a) (()) where
 pageStep x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionSlider_pageStep cobj_x0

foreign import ccall "qtc_QStyleOptionSlider_pageStep" qtc_QStyleOptionSlider_pageStep :: Ptr (TQStyleOptionSlider a) -> IO CInt

setDialWrapping :: QStyleOptionSlider a -> ((Bool)) -> IO ()
setDialWrapping x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionSlider_setDialWrapping cobj_x0 (toCBool x1)

foreign import ccall "qtc_QStyleOptionSlider_setDialWrapping" qtc_QStyleOptionSlider_setDialWrapping :: Ptr (TQStyleOptionSlider a) -> CBool -> IO ()

instance QsetMaximum (QStyleOptionSlider a) ((Int)) where
 setMaximum x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionSlider_setMaximum cobj_x0 (toCInt x1)

foreign import ccall "qtc_QStyleOptionSlider_setMaximum" qtc_QStyleOptionSlider_setMaximum :: Ptr (TQStyleOptionSlider a) -> CInt -> IO ()

instance QsetMinimum (QStyleOptionSlider a) ((Int)) where
 setMinimum x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionSlider_setMinimum cobj_x0 (toCInt x1)

foreign import ccall "qtc_QStyleOptionSlider_setMinimum" qtc_QStyleOptionSlider_setMinimum :: Ptr (TQStyleOptionSlider a) -> CInt -> IO ()

instance QsetNotchTarget (QStyleOptionSlider a) ((Double)) where
 setNotchTarget x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionSlider_setNotchTarget cobj_x0 (toCDouble x1)

foreign import ccall "qtc_QStyleOptionSlider_setNotchTarget" qtc_QStyleOptionSlider_setNotchTarget :: Ptr (TQStyleOptionSlider a) -> CDouble -> IO ()

instance QsetOrientation (QStyleOptionSlider a) ((QtOrientation)) where
 setOrientation x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionSlider_setOrientation cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QStyleOptionSlider_setOrientation" qtc_QStyleOptionSlider_setOrientation :: Ptr (TQStyleOptionSlider a) -> CLong -> IO ()

instance QsetPageStep (QStyleOptionSlider a) ((Int)) where
 setPageStep x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionSlider_setPageStep cobj_x0 (toCInt x1)

foreign import ccall "qtc_QStyleOptionSlider_setPageStep" qtc_QStyleOptionSlider_setPageStep :: Ptr (TQStyleOptionSlider a) -> CInt -> IO ()

instance QsetSingleStep (QStyleOptionSlider a) ((Int)) where
 setSingleStep x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionSlider_setSingleStep cobj_x0 (toCInt x1)

foreign import ccall "qtc_QStyleOptionSlider_setSingleStep" qtc_QStyleOptionSlider_setSingleStep :: Ptr (TQStyleOptionSlider a) -> CInt -> IO ()

instance QsetSliderPosition (QStyleOptionSlider a) ((Int)) where
 setSliderPosition x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionSlider_setSliderPosition cobj_x0 (toCInt x1)

foreign import ccall "qtc_QStyleOptionSlider_setSliderPosition" qtc_QStyleOptionSlider_setSliderPosition :: Ptr (TQStyleOptionSlider a) -> CInt -> IO ()

setSliderValue :: QStyleOptionSlider a -> ((Int)) -> IO ()
setSliderValue x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionSlider_setSliderValue cobj_x0 (toCInt x1)

foreign import ccall "qtc_QStyleOptionSlider_setSliderValue" qtc_QStyleOptionSlider_setSliderValue :: Ptr (TQStyleOptionSlider a) -> CInt -> IO ()

instance QsetTickInterval (QStyleOptionSlider a) ((Int)) where
 setTickInterval x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionSlider_setTickInterval cobj_x0 (toCInt x1)

foreign import ccall "qtc_QStyleOptionSlider_setTickInterval" qtc_QStyleOptionSlider_setTickInterval :: Ptr (TQStyleOptionSlider a) -> CInt -> IO ()

instance QsetTickPosition (QStyleOptionSlider a) ((TickPosition)) where
 setTickPosition x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionSlider_setTickPosition cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QStyleOptionSlider_setTickPosition" qtc_QStyleOptionSlider_setTickPosition :: Ptr (TQStyleOptionSlider a) -> CLong -> IO ()

setUpsideDown :: QStyleOptionSlider a -> ((Bool)) -> IO ()
setUpsideDown x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionSlider_setUpsideDown cobj_x0 (toCBool x1)

foreign import ccall "qtc_QStyleOptionSlider_setUpsideDown" qtc_QStyleOptionSlider_setUpsideDown :: Ptr (TQStyleOptionSlider a) -> CBool -> IO ()

instance QsingleStep (QStyleOptionSlider a) (()) (IO (Int)) where
 singleStep x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionSlider_singleStep cobj_x0

foreign import ccall "qtc_QStyleOptionSlider_singleStep" qtc_QStyleOptionSlider_singleStep :: Ptr (TQStyleOptionSlider a) -> IO CInt

instance QsliderPosition (QStyleOptionSlider a) (()) where
 sliderPosition x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionSlider_sliderPosition cobj_x0

foreign import ccall "qtc_QStyleOptionSlider_sliderPosition" qtc_QStyleOptionSlider_sliderPosition :: Ptr (TQStyleOptionSlider a) -> IO CInt

sliderValue :: QStyleOptionSlider a -> (()) -> IO (Int)
sliderValue x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionSlider_sliderValue cobj_x0

foreign import ccall "qtc_QStyleOptionSlider_sliderValue" qtc_QStyleOptionSlider_sliderValue :: Ptr (TQStyleOptionSlider a) -> IO CInt

instance QtickInterval (QStyleOptionSlider a) (()) where
 tickInterval x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionSlider_tickInterval cobj_x0

foreign import ccall "qtc_QStyleOptionSlider_tickInterval" qtc_QStyleOptionSlider_tickInterval :: Ptr (TQStyleOptionSlider a) -> IO CInt

instance QtickPosition (QStyleOptionSlider a) (()) where
 tickPosition x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionSlider_tickPosition cobj_x0

foreign import ccall "qtc_QStyleOptionSlider_tickPosition" qtc_QStyleOptionSlider_tickPosition :: Ptr (TQStyleOptionSlider a) -> IO CLong

upsideDown :: QStyleOptionSlider a -> (()) -> IO (Bool)
upsideDown x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionSlider_upsideDown cobj_x0

foreign import ccall "qtc_QStyleOptionSlider_upsideDown" qtc_QStyleOptionSlider_upsideDown :: Ptr (TQStyleOptionSlider a) -> IO CBool

qStyleOptionSlider_delete :: QStyleOptionSlider a -> IO ()
qStyleOptionSlider_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionSlider_delete cobj_x0

foreign import ccall "qtc_QStyleOptionSlider_delete" qtc_QStyleOptionSlider_delete :: Ptr (TQStyleOptionSlider a) -> IO ()

