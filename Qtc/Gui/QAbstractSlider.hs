{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QAbstractSlider.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:27
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QAbstractSlider (
  QqAbstractSlider(..)
  ,hasTracking
  ,invertedControls
  ,isSliderDown
  ,setInvertedControls
  ,setSliderDown
  ,setTracking
  ,triggerAction
  ,qAbstractSlider_delete
  ,qAbstractSlider_deleteLater
  )
  where

import Foreign.C.Types
import Qth.ClassTypes.Core
import Qtc.Enums.Base
import Qtc.Enums.Gui.QPaintDevice
import Qtc.Enums.Core.Qt
import Qtc.Enums.Gui.QAbstractSlider

import Qtc.Classes.Base
import Qtc.Classes.Qccs
import Qtc.Classes.Core
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core
import Qtc.Classes.Gui
import Qtc.ClassTypes.Gui

instance QuserMethod (QAbstractSlider ()) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QAbstractSlider_userMethod cobj_qobj (toCInt evid)

foreign import ccall "qtc_QAbstractSlider_userMethod" qtc_QAbstractSlider_userMethod :: Ptr (TQAbstractSlider a) -> CInt -> IO ()

instance QuserMethod (QAbstractSliderSc a) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QAbstractSlider_userMethod cobj_qobj (toCInt evid)

instance QuserMethod (QAbstractSlider ()) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QAbstractSlider_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

foreign import ccall "qtc_QAbstractSlider_userMethodVariant" qtc_QAbstractSlider_userMethodVariant :: Ptr (TQAbstractSlider a) -> CInt -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))

instance QuserMethod (QAbstractSliderSc a) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QAbstractSlider_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

class QqAbstractSlider x1 where
  qAbstractSlider :: x1 -> IO (QAbstractSlider ())

instance QqAbstractSlider (()) where
 qAbstractSlider ()
  = withQAbstractSliderResult $
    qtc_QAbstractSlider

foreign import ccall "qtc_QAbstractSlider" qtc_QAbstractSlider :: IO (Ptr (TQAbstractSlider ()))

instance QqAbstractSlider ((QWidget t1)) where
 qAbstractSlider (x1)
  = withQAbstractSliderResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSlider1 cobj_x1

foreign import ccall "qtc_QAbstractSlider1" qtc_QAbstractSlider1 :: Ptr (TQWidget t1) -> IO (Ptr (TQAbstractSlider ()))

instance QchangeEvent (QAbstractSlider ()) ((QEvent t1)) where
 changeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSlider_changeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractSlider_changeEvent_h" qtc_QAbstractSlider_changeEvent_h :: Ptr (TQAbstractSlider a) -> Ptr (TQEvent t1) -> IO ()

instance QchangeEvent (QAbstractSliderSc a) ((QEvent t1)) where
 changeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSlider_changeEvent_h cobj_x0 cobj_x1

instance Qevent (QAbstractSlider ()) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSlider_event_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractSlider_event_h" qtc_QAbstractSlider_event_h :: Ptr (TQAbstractSlider a) -> Ptr (TQEvent t1) -> IO CBool

instance Qevent (QAbstractSliderSc a) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSlider_event_h cobj_x0 cobj_x1

hasTracking :: QAbstractSlider a -> (()) -> IO (Bool)
hasTracking x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSlider_hasTracking cobj_x0

foreign import ccall "qtc_QAbstractSlider_hasTracking" qtc_QAbstractSlider_hasTracking :: Ptr (TQAbstractSlider a) -> IO CBool

instance QinvertedAppearance (QAbstractSlider a) (()) where
 invertedAppearance x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSlider_invertedAppearance cobj_x0

foreign import ccall "qtc_QAbstractSlider_invertedAppearance" qtc_QAbstractSlider_invertedAppearance :: Ptr (TQAbstractSlider a) -> IO CBool

invertedControls :: QAbstractSlider a -> (()) -> IO (Bool)
invertedControls x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSlider_invertedControls cobj_x0

foreign import ccall "qtc_QAbstractSlider_invertedControls" qtc_QAbstractSlider_invertedControls :: Ptr (TQAbstractSlider a) -> IO CBool

isSliderDown :: QAbstractSlider a -> (()) -> IO (Bool)
isSliderDown x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSlider_isSliderDown cobj_x0

foreign import ccall "qtc_QAbstractSlider_isSliderDown" qtc_QAbstractSlider_isSliderDown :: Ptr (TQAbstractSlider a) -> IO CBool

instance QkeyPressEvent (QAbstractSlider ()) ((QKeyEvent t1)) where
 keyPressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSlider_keyPressEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractSlider_keyPressEvent_h" qtc_QAbstractSlider_keyPressEvent_h :: Ptr (TQAbstractSlider a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyPressEvent (QAbstractSliderSc a) ((QKeyEvent t1)) where
 keyPressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSlider_keyPressEvent_h cobj_x0 cobj_x1

instance Qqmaximum (QAbstractSlider a) (()) (IO (Int)) where
 qmaximum x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSlider_maximum cobj_x0

foreign import ccall "qtc_QAbstractSlider_maximum" qtc_QAbstractSlider_maximum :: Ptr (TQAbstractSlider a) -> IO CInt

instance Qqminimum (QAbstractSlider a) (()) (IO (Int)) where
 qminimum x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSlider_minimum cobj_x0

foreign import ccall "qtc_QAbstractSlider_minimum" qtc_QAbstractSlider_minimum :: Ptr (TQAbstractSlider a) -> IO CInt

instance Qorientation (QAbstractSlider a) (()) (IO (QtOrientation)) where
 orientation x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSlider_orientation cobj_x0

foreign import ccall "qtc_QAbstractSlider_orientation" qtc_QAbstractSlider_orientation :: Ptr (TQAbstractSlider a) -> IO CLong

instance QpageStep (QAbstractSlider a) (()) where
 pageStep x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSlider_pageStep cobj_x0

foreign import ccall "qtc_QAbstractSlider_pageStep" qtc_QAbstractSlider_pageStep :: Ptr (TQAbstractSlider a) -> IO CInt

instance QrepeatAction (QAbstractSlider ()) (()) where
 repeatAction x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSlider_repeatAction cobj_x0

foreign import ccall "qtc_QAbstractSlider_repeatAction" qtc_QAbstractSlider_repeatAction :: Ptr (TQAbstractSlider a) -> IO CLong

instance QrepeatAction (QAbstractSliderSc a) (()) where
 repeatAction x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSlider_repeatAction cobj_x0

instance QsetInvertedAppearance (QAbstractSlider a) ((Bool)) where
 setInvertedAppearance x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSlider_setInvertedAppearance cobj_x0 (toCBool x1)

foreign import ccall "qtc_QAbstractSlider_setInvertedAppearance" qtc_QAbstractSlider_setInvertedAppearance :: Ptr (TQAbstractSlider a) -> CBool -> IO ()

setInvertedControls :: QAbstractSlider a -> ((Bool)) -> IO ()
setInvertedControls x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSlider_setInvertedControls cobj_x0 (toCBool x1)

foreign import ccall "qtc_QAbstractSlider_setInvertedControls" qtc_QAbstractSlider_setInvertedControls :: Ptr (TQAbstractSlider a) -> CBool -> IO ()

instance QsetMaximum (QAbstractSlider a) ((Int)) where
 setMaximum x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSlider_setMaximum cobj_x0 (toCInt x1)

foreign import ccall "qtc_QAbstractSlider_setMaximum" qtc_QAbstractSlider_setMaximum :: Ptr (TQAbstractSlider a) -> CInt -> IO ()

instance QsetMinimum (QAbstractSlider a) ((Int)) where
 setMinimum x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSlider_setMinimum cobj_x0 (toCInt x1)

foreign import ccall "qtc_QAbstractSlider_setMinimum" qtc_QAbstractSlider_setMinimum :: Ptr (TQAbstractSlider a) -> CInt -> IO ()

instance QsetOrientation (QAbstractSlider a) ((QtOrientation)) where
 setOrientation x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSlider_setOrientation cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QAbstractSlider_setOrientation" qtc_QAbstractSlider_setOrientation :: Ptr (TQAbstractSlider a) -> CLong -> IO ()

instance QsetPageStep (QAbstractSlider a) ((Int)) where
 setPageStep x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSlider_setPageStep cobj_x0 (toCInt x1)

foreign import ccall "qtc_QAbstractSlider_setPageStep" qtc_QAbstractSlider_setPageStep :: Ptr (TQAbstractSlider a) -> CInt -> IO ()

instance QsetRange (QAbstractSlider a) ((Int, Int)) where
 setRange x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSlider_setRange cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QAbstractSlider_setRange" qtc_QAbstractSlider_setRange :: Ptr (TQAbstractSlider a) -> CInt -> CInt -> IO ()

instance QsetRepeatAction (QAbstractSlider ()) ((SliderAction)) where
 setRepeatAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSlider_setRepeatAction cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QAbstractSlider_setRepeatAction" qtc_QAbstractSlider_setRepeatAction :: Ptr (TQAbstractSlider a) -> CLong -> IO ()

instance QsetRepeatAction (QAbstractSliderSc a) ((SliderAction)) where
 setRepeatAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSlider_setRepeatAction cobj_x0 (toCLong $ qEnum_toInt x1)

instance QsetRepeatAction (QAbstractSlider ()) ((SliderAction, Int)) where
 setRepeatAction x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSlider_setRepeatAction1 cobj_x0 (toCLong $ qEnum_toInt x1) (toCInt x2)

foreign import ccall "qtc_QAbstractSlider_setRepeatAction1" qtc_QAbstractSlider_setRepeatAction1 :: Ptr (TQAbstractSlider a) -> CLong -> CInt -> IO ()

instance QsetRepeatAction (QAbstractSliderSc a) ((SliderAction, Int)) where
 setRepeatAction x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSlider_setRepeatAction1 cobj_x0 (toCLong $ qEnum_toInt x1) (toCInt x2)

instance QsetRepeatAction (QAbstractSlider ()) ((SliderAction, Int, Int)) where
 setRepeatAction x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSlider_setRepeatAction2 cobj_x0 (toCLong $ qEnum_toInt x1) (toCInt x2) (toCInt x3)

foreign import ccall "qtc_QAbstractSlider_setRepeatAction2" qtc_QAbstractSlider_setRepeatAction2 :: Ptr (TQAbstractSlider a) -> CLong -> CInt -> CInt -> IO ()

instance QsetRepeatAction (QAbstractSliderSc a) ((SliderAction, Int, Int)) where
 setRepeatAction x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSlider_setRepeatAction2 cobj_x0 (toCLong $ qEnum_toInt x1) (toCInt x2) (toCInt x3)

instance QsetSingleStep (QAbstractSlider a) ((Int)) where
 setSingleStep x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSlider_setSingleStep cobj_x0 (toCInt x1)

foreign import ccall "qtc_QAbstractSlider_setSingleStep" qtc_QAbstractSlider_setSingleStep :: Ptr (TQAbstractSlider a) -> CInt -> IO ()

setSliderDown :: QAbstractSlider a -> ((Bool)) -> IO ()
setSliderDown x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSlider_setSliderDown cobj_x0 (toCBool x1)

foreign import ccall "qtc_QAbstractSlider_setSliderDown" qtc_QAbstractSlider_setSliderDown :: Ptr (TQAbstractSlider a) -> CBool -> IO ()

instance QsetSliderPosition (QAbstractSlider a) ((Int)) where
 setSliderPosition x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSlider_setSliderPosition cobj_x0 (toCInt x1)

foreign import ccall "qtc_QAbstractSlider_setSliderPosition" qtc_QAbstractSlider_setSliderPosition :: Ptr (TQAbstractSlider a) -> CInt -> IO ()

setTracking :: QAbstractSlider a -> ((Bool)) -> IO ()
setTracking x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSlider_setTracking cobj_x0 (toCBool x1)

foreign import ccall "qtc_QAbstractSlider_setTracking" qtc_QAbstractSlider_setTracking :: Ptr (TQAbstractSlider a) -> CBool -> IO ()

instance QsetValue (QAbstractSlider a) ((Int)) where
 setValue x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSlider_setValue cobj_x0 (toCInt x1)

foreign import ccall "qtc_QAbstractSlider_setValue" qtc_QAbstractSlider_setValue :: Ptr (TQAbstractSlider a) -> CInt -> IO ()

instance QsingleStep (QAbstractSlider a) (()) (IO (Int)) where
 singleStep x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSlider_singleStep cobj_x0

foreign import ccall "qtc_QAbstractSlider_singleStep" qtc_QAbstractSlider_singleStep :: Ptr (TQAbstractSlider a) -> IO CInt

instance QsliderChange (QAbstractSlider ()) ((SliderChange)) where
 sliderChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSlider_sliderChange_h cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QAbstractSlider_sliderChange_h" qtc_QAbstractSlider_sliderChange_h :: Ptr (TQAbstractSlider a) -> CLong -> IO ()

instance QsliderChange (QAbstractSliderSc a) ((SliderChange)) where
 sliderChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSlider_sliderChange_h cobj_x0 (toCLong $ qEnum_toInt x1)

instance QsliderPosition (QAbstractSlider a) (()) where
 sliderPosition x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSlider_sliderPosition cobj_x0

foreign import ccall "qtc_QAbstractSlider_sliderPosition" qtc_QAbstractSlider_sliderPosition :: Ptr (TQAbstractSlider a) -> IO CInt

instance QtimerEvent (QAbstractSlider ()) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSlider_timerEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractSlider_timerEvent" qtc_QAbstractSlider_timerEvent :: Ptr (TQAbstractSlider a) -> Ptr (TQTimerEvent t1) -> IO ()

instance QtimerEvent (QAbstractSliderSc a) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSlider_timerEvent cobj_x0 cobj_x1

triggerAction :: QAbstractSlider a -> ((SliderAction)) -> IO ()
triggerAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSlider_triggerAction cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QAbstractSlider_triggerAction" qtc_QAbstractSlider_triggerAction :: Ptr (TQAbstractSlider a) -> CLong -> IO ()

instance Qvalue (QAbstractSlider a) (()) (IO (Int)) where
 value x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSlider_value cobj_x0

foreign import ccall "qtc_QAbstractSlider_value" qtc_QAbstractSlider_value :: Ptr (TQAbstractSlider a) -> IO CInt

instance QwheelEvent (QAbstractSlider ()) ((QWheelEvent t1)) where
 wheelEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSlider_wheelEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractSlider_wheelEvent_h" qtc_QAbstractSlider_wheelEvent_h :: Ptr (TQAbstractSlider a) -> Ptr (TQWheelEvent t1) -> IO ()

instance QwheelEvent (QAbstractSliderSc a) ((QWheelEvent t1)) where
 wheelEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSlider_wheelEvent_h cobj_x0 cobj_x1

qAbstractSlider_delete :: QAbstractSlider a -> IO ()
qAbstractSlider_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSlider_delete cobj_x0

foreign import ccall "qtc_QAbstractSlider_delete" qtc_QAbstractSlider_delete :: Ptr (TQAbstractSlider a) -> IO ()

qAbstractSlider_deleteLater :: QAbstractSlider a -> IO ()
qAbstractSlider_deleteLater x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSlider_deleteLater cobj_x0

foreign import ccall "qtc_QAbstractSlider_deleteLater" qtc_QAbstractSlider_deleteLater :: Ptr (TQAbstractSlider a) -> IO ()

instance QactionEvent (QAbstractSlider ()) ((QActionEvent t1)) where
 actionEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSlider_actionEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractSlider_actionEvent_h" qtc_QAbstractSlider_actionEvent_h :: Ptr (TQAbstractSlider a) -> Ptr (TQActionEvent t1) -> IO ()

instance QactionEvent (QAbstractSliderSc a) ((QActionEvent t1)) where
 actionEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSlider_actionEvent_h cobj_x0 cobj_x1

instance QaddAction (QAbstractSlider ()) ((QAction t1)) (IO ()) where
 addAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSlider_addAction cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractSlider_addAction" qtc_QAbstractSlider_addAction :: Ptr (TQAbstractSlider a) -> Ptr (TQAction t1) -> IO ()

instance QaddAction (QAbstractSliderSc a) ((QAction t1)) (IO ()) where
 addAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSlider_addAction cobj_x0 cobj_x1

instance QcloseEvent (QAbstractSlider ()) ((QCloseEvent t1)) where
 closeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSlider_closeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractSlider_closeEvent_h" qtc_QAbstractSlider_closeEvent_h :: Ptr (TQAbstractSlider a) -> Ptr (TQCloseEvent t1) -> IO ()

instance QcloseEvent (QAbstractSliderSc a) ((QCloseEvent t1)) where
 closeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSlider_closeEvent_h cobj_x0 cobj_x1

instance QcontextMenuEvent (QAbstractSlider ()) ((QContextMenuEvent t1)) where
 contextMenuEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSlider_contextMenuEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractSlider_contextMenuEvent_h" qtc_QAbstractSlider_contextMenuEvent_h :: Ptr (TQAbstractSlider a) -> Ptr (TQContextMenuEvent t1) -> IO ()

instance QcontextMenuEvent (QAbstractSliderSc a) ((QContextMenuEvent t1)) where
 contextMenuEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSlider_contextMenuEvent_h cobj_x0 cobj_x1

instance Qcreate (QAbstractSlider ()) (()) (IO ()) where
 create x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSlider_create cobj_x0

foreign import ccall "qtc_QAbstractSlider_create" qtc_QAbstractSlider_create :: Ptr (TQAbstractSlider a) -> IO ()

instance Qcreate (QAbstractSliderSc a) (()) (IO ()) where
 create x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSlider_create cobj_x0

instance Qcreate (QAbstractSlider ()) ((QVoid t1)) (IO ()) where
 create x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSlider_create1 cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractSlider_create1" qtc_QAbstractSlider_create1 :: Ptr (TQAbstractSlider a) -> Ptr (TQVoid t1) -> IO ()

instance Qcreate (QAbstractSliderSc a) ((QVoid t1)) (IO ()) where
 create x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSlider_create1 cobj_x0 cobj_x1

instance Qcreate (QAbstractSlider ()) ((QVoid t1, Bool)) (IO ()) where
 create x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSlider_create2 cobj_x0 cobj_x1 (toCBool x2)

foreign import ccall "qtc_QAbstractSlider_create2" qtc_QAbstractSlider_create2 :: Ptr (TQAbstractSlider a) -> Ptr (TQVoid t1) -> CBool -> IO ()

instance Qcreate (QAbstractSliderSc a) ((QVoid t1, Bool)) (IO ()) where
 create x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSlider_create2 cobj_x0 cobj_x1 (toCBool x2)

instance Qcreate (QAbstractSlider ()) ((QVoid t1, Bool, Bool)) (IO ()) where
 create x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSlider_create3 cobj_x0 cobj_x1 (toCBool x2) (toCBool x3)

foreign import ccall "qtc_QAbstractSlider_create3" qtc_QAbstractSlider_create3 :: Ptr (TQAbstractSlider a) -> Ptr (TQVoid t1) -> CBool -> CBool -> IO ()

instance Qcreate (QAbstractSliderSc a) ((QVoid t1, Bool, Bool)) (IO ()) where
 create x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSlider_create3 cobj_x0 cobj_x1 (toCBool x2) (toCBool x3)

instance Qdestroy (QAbstractSlider ()) (()) where
 destroy x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSlider_destroy cobj_x0

foreign import ccall "qtc_QAbstractSlider_destroy" qtc_QAbstractSlider_destroy :: Ptr (TQAbstractSlider a) -> IO ()

instance Qdestroy (QAbstractSliderSc a) (()) where
 destroy x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSlider_destroy cobj_x0

instance Qdestroy (QAbstractSlider ()) ((Bool)) where
 destroy x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSlider_destroy1 cobj_x0 (toCBool x1)

foreign import ccall "qtc_QAbstractSlider_destroy1" qtc_QAbstractSlider_destroy1 :: Ptr (TQAbstractSlider a) -> CBool -> IO ()

instance Qdestroy (QAbstractSliderSc a) ((Bool)) where
 destroy x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSlider_destroy1 cobj_x0 (toCBool x1)

instance Qdestroy (QAbstractSlider ()) ((Bool, Bool)) where
 destroy x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSlider_destroy2 cobj_x0 (toCBool x1) (toCBool x2)

foreign import ccall "qtc_QAbstractSlider_destroy2" qtc_QAbstractSlider_destroy2 :: Ptr (TQAbstractSlider a) -> CBool -> CBool -> IO ()

instance Qdestroy (QAbstractSliderSc a) ((Bool, Bool)) where
 destroy x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSlider_destroy2 cobj_x0 (toCBool x1) (toCBool x2)

instance QdevType (QAbstractSlider ()) (()) where
 devType x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSlider_devType_h cobj_x0

foreign import ccall "qtc_QAbstractSlider_devType_h" qtc_QAbstractSlider_devType_h :: Ptr (TQAbstractSlider a) -> IO CInt

instance QdevType (QAbstractSliderSc a) (()) where
 devType x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSlider_devType_h cobj_x0

instance QdragEnterEvent (QAbstractSlider ()) ((QDragEnterEvent t1)) where
 dragEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSlider_dragEnterEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractSlider_dragEnterEvent_h" qtc_QAbstractSlider_dragEnterEvent_h :: Ptr (TQAbstractSlider a) -> Ptr (TQDragEnterEvent t1) -> IO ()

instance QdragEnterEvent (QAbstractSliderSc a) ((QDragEnterEvent t1)) where
 dragEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSlider_dragEnterEvent_h cobj_x0 cobj_x1

instance QdragLeaveEvent (QAbstractSlider ()) ((QDragLeaveEvent t1)) where
 dragLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSlider_dragLeaveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractSlider_dragLeaveEvent_h" qtc_QAbstractSlider_dragLeaveEvent_h :: Ptr (TQAbstractSlider a) -> Ptr (TQDragLeaveEvent t1) -> IO ()

instance QdragLeaveEvent (QAbstractSliderSc a) ((QDragLeaveEvent t1)) where
 dragLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSlider_dragLeaveEvent_h cobj_x0 cobj_x1

instance QdragMoveEvent (QAbstractSlider ()) ((QDragMoveEvent t1)) where
 dragMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSlider_dragMoveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractSlider_dragMoveEvent_h" qtc_QAbstractSlider_dragMoveEvent_h :: Ptr (TQAbstractSlider a) -> Ptr (TQDragMoveEvent t1) -> IO ()

instance QdragMoveEvent (QAbstractSliderSc a) ((QDragMoveEvent t1)) where
 dragMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSlider_dragMoveEvent_h cobj_x0 cobj_x1

instance QdropEvent (QAbstractSlider ()) ((QDropEvent t1)) where
 dropEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSlider_dropEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractSlider_dropEvent_h" qtc_QAbstractSlider_dropEvent_h :: Ptr (TQAbstractSlider a) -> Ptr (TQDropEvent t1) -> IO ()

instance QdropEvent (QAbstractSliderSc a) ((QDropEvent t1)) where
 dropEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSlider_dropEvent_h cobj_x0 cobj_x1

instance QenabledChange (QAbstractSlider ()) ((Bool)) where
 enabledChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSlider_enabledChange cobj_x0 (toCBool x1)

foreign import ccall "qtc_QAbstractSlider_enabledChange" qtc_QAbstractSlider_enabledChange :: Ptr (TQAbstractSlider a) -> CBool -> IO ()

instance QenabledChange (QAbstractSliderSc a) ((Bool)) where
 enabledChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSlider_enabledChange cobj_x0 (toCBool x1)

instance QenterEvent (QAbstractSlider ()) ((QEvent t1)) where
 enterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSlider_enterEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractSlider_enterEvent_h" qtc_QAbstractSlider_enterEvent_h :: Ptr (TQAbstractSlider a) -> Ptr (TQEvent t1) -> IO ()

instance QenterEvent (QAbstractSliderSc a) ((QEvent t1)) where
 enterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSlider_enterEvent_h cobj_x0 cobj_x1

instance QfocusInEvent (QAbstractSlider ()) ((QFocusEvent t1)) where
 focusInEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSlider_focusInEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractSlider_focusInEvent_h" qtc_QAbstractSlider_focusInEvent_h :: Ptr (TQAbstractSlider a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusInEvent (QAbstractSliderSc a) ((QFocusEvent t1)) where
 focusInEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSlider_focusInEvent_h cobj_x0 cobj_x1

instance QfocusNextChild (QAbstractSlider ()) (()) where
 focusNextChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSlider_focusNextChild cobj_x0

foreign import ccall "qtc_QAbstractSlider_focusNextChild" qtc_QAbstractSlider_focusNextChild :: Ptr (TQAbstractSlider a) -> IO CBool

instance QfocusNextChild (QAbstractSliderSc a) (()) where
 focusNextChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSlider_focusNextChild cobj_x0

instance QfocusNextPrevChild (QAbstractSlider ()) ((Bool)) where
 focusNextPrevChild x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSlider_focusNextPrevChild cobj_x0 (toCBool x1)

foreign import ccall "qtc_QAbstractSlider_focusNextPrevChild" qtc_QAbstractSlider_focusNextPrevChild :: Ptr (TQAbstractSlider a) -> CBool -> IO CBool

instance QfocusNextPrevChild (QAbstractSliderSc a) ((Bool)) where
 focusNextPrevChild x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSlider_focusNextPrevChild cobj_x0 (toCBool x1)

instance QfocusOutEvent (QAbstractSlider ()) ((QFocusEvent t1)) where
 focusOutEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSlider_focusOutEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractSlider_focusOutEvent_h" qtc_QAbstractSlider_focusOutEvent_h :: Ptr (TQAbstractSlider a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusOutEvent (QAbstractSliderSc a) ((QFocusEvent t1)) where
 focusOutEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSlider_focusOutEvent_h cobj_x0 cobj_x1

instance QfocusPreviousChild (QAbstractSlider ()) (()) where
 focusPreviousChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSlider_focusPreviousChild cobj_x0

foreign import ccall "qtc_QAbstractSlider_focusPreviousChild" qtc_QAbstractSlider_focusPreviousChild :: Ptr (TQAbstractSlider a) -> IO CBool

instance QfocusPreviousChild (QAbstractSliderSc a) (()) where
 focusPreviousChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSlider_focusPreviousChild cobj_x0

instance QfontChange (QAbstractSlider ()) ((QFont t1)) where
 fontChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSlider_fontChange cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractSlider_fontChange" qtc_QAbstractSlider_fontChange :: Ptr (TQAbstractSlider a) -> Ptr (TQFont t1) -> IO ()

instance QfontChange (QAbstractSliderSc a) ((QFont t1)) where
 fontChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSlider_fontChange cobj_x0 cobj_x1

instance QheightForWidth (QAbstractSlider ()) ((Int)) where
 heightForWidth x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSlider_heightForWidth_h cobj_x0 (toCInt x1)

foreign import ccall "qtc_QAbstractSlider_heightForWidth_h" qtc_QAbstractSlider_heightForWidth_h :: Ptr (TQAbstractSlider a) -> CInt -> IO CInt

instance QheightForWidth (QAbstractSliderSc a) ((Int)) where
 heightForWidth x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSlider_heightForWidth_h cobj_x0 (toCInt x1)

instance QhideEvent (QAbstractSlider ()) ((QHideEvent t1)) where
 hideEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSlider_hideEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractSlider_hideEvent_h" qtc_QAbstractSlider_hideEvent_h :: Ptr (TQAbstractSlider a) -> Ptr (TQHideEvent t1) -> IO ()

instance QhideEvent (QAbstractSliderSc a) ((QHideEvent t1)) where
 hideEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSlider_hideEvent_h cobj_x0 cobj_x1

instance QinputMethodEvent (QAbstractSlider ()) ((QInputMethodEvent t1)) where
 inputMethodEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSlider_inputMethodEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractSlider_inputMethodEvent" qtc_QAbstractSlider_inputMethodEvent :: Ptr (TQAbstractSlider a) -> Ptr (TQInputMethodEvent t1) -> IO ()

instance QinputMethodEvent (QAbstractSliderSc a) ((QInputMethodEvent t1)) where
 inputMethodEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSlider_inputMethodEvent cobj_x0 cobj_x1

instance QinputMethodQuery (QAbstractSlider ()) ((InputMethodQuery)) where
 inputMethodQuery x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSlider_inputMethodQuery_h cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QAbstractSlider_inputMethodQuery_h" qtc_QAbstractSlider_inputMethodQuery_h :: Ptr (TQAbstractSlider a) -> CLong -> IO (Ptr (TQVariant ()))

instance QinputMethodQuery (QAbstractSliderSc a) ((InputMethodQuery)) where
 inputMethodQuery x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSlider_inputMethodQuery_h cobj_x0 (toCLong $ qEnum_toInt x1)

instance QkeyReleaseEvent (QAbstractSlider ()) ((QKeyEvent t1)) where
 keyReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSlider_keyReleaseEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractSlider_keyReleaseEvent_h" qtc_QAbstractSlider_keyReleaseEvent_h :: Ptr (TQAbstractSlider a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyReleaseEvent (QAbstractSliderSc a) ((QKeyEvent t1)) where
 keyReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSlider_keyReleaseEvent_h cobj_x0 cobj_x1

instance QlanguageChange (QAbstractSlider ()) (()) where
 languageChange x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSlider_languageChange cobj_x0

foreign import ccall "qtc_QAbstractSlider_languageChange" qtc_QAbstractSlider_languageChange :: Ptr (TQAbstractSlider a) -> IO ()

instance QlanguageChange (QAbstractSliderSc a) (()) where
 languageChange x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSlider_languageChange cobj_x0

instance QleaveEvent (QAbstractSlider ()) ((QEvent t1)) where
 leaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSlider_leaveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractSlider_leaveEvent_h" qtc_QAbstractSlider_leaveEvent_h :: Ptr (TQAbstractSlider a) -> Ptr (TQEvent t1) -> IO ()

instance QleaveEvent (QAbstractSliderSc a) ((QEvent t1)) where
 leaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSlider_leaveEvent_h cobj_x0 cobj_x1

instance Qmetric (QAbstractSlider ()) ((PaintDeviceMetric)) where
 metric x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSlider_metric cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QAbstractSlider_metric" qtc_QAbstractSlider_metric :: Ptr (TQAbstractSlider a) -> CLong -> IO CInt

instance Qmetric (QAbstractSliderSc a) ((PaintDeviceMetric)) where
 metric x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSlider_metric cobj_x0 (toCLong $ qEnum_toInt x1)

instance QqminimumSizeHint (QAbstractSlider ()) (()) where
 qminimumSizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSlider_minimumSizeHint_h cobj_x0

foreign import ccall "qtc_QAbstractSlider_minimumSizeHint_h" qtc_QAbstractSlider_minimumSizeHint_h :: Ptr (TQAbstractSlider a) -> IO (Ptr (TQSize ()))

instance QqminimumSizeHint (QAbstractSliderSc a) (()) where
 qminimumSizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSlider_minimumSizeHint_h cobj_x0

instance QminimumSizeHint (QAbstractSlider ()) (()) where
 minimumSizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSlider_minimumSizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QAbstractSlider_minimumSizeHint_qth_h" qtc_QAbstractSlider_minimumSizeHint_qth_h :: Ptr (TQAbstractSlider a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QminimumSizeHint (QAbstractSliderSc a) (()) where
 minimumSizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSlider_minimumSizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

instance QmouseDoubleClickEvent (QAbstractSlider ()) ((QMouseEvent t1)) where
 mouseDoubleClickEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSlider_mouseDoubleClickEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractSlider_mouseDoubleClickEvent_h" qtc_QAbstractSlider_mouseDoubleClickEvent_h :: Ptr (TQAbstractSlider a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseDoubleClickEvent (QAbstractSliderSc a) ((QMouseEvent t1)) where
 mouseDoubleClickEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSlider_mouseDoubleClickEvent_h cobj_x0 cobj_x1

instance QmouseMoveEvent (QAbstractSlider ()) ((QMouseEvent t1)) where
 mouseMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSlider_mouseMoveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractSlider_mouseMoveEvent_h" qtc_QAbstractSlider_mouseMoveEvent_h :: Ptr (TQAbstractSlider a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseMoveEvent (QAbstractSliderSc a) ((QMouseEvent t1)) where
 mouseMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSlider_mouseMoveEvent_h cobj_x0 cobj_x1

instance QmousePressEvent (QAbstractSlider ()) ((QMouseEvent t1)) where
 mousePressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSlider_mousePressEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractSlider_mousePressEvent_h" qtc_QAbstractSlider_mousePressEvent_h :: Ptr (TQAbstractSlider a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmousePressEvent (QAbstractSliderSc a) ((QMouseEvent t1)) where
 mousePressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSlider_mousePressEvent_h cobj_x0 cobj_x1

instance QmouseReleaseEvent (QAbstractSlider ()) ((QMouseEvent t1)) where
 mouseReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSlider_mouseReleaseEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractSlider_mouseReleaseEvent_h" qtc_QAbstractSlider_mouseReleaseEvent_h :: Ptr (TQAbstractSlider a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseReleaseEvent (QAbstractSliderSc a) ((QMouseEvent t1)) where
 mouseReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSlider_mouseReleaseEvent_h cobj_x0 cobj_x1

instance Qmove (QAbstractSlider ()) ((Int, Int)) where
 move x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSlider_move1 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QAbstractSlider_move1" qtc_QAbstractSlider_move1 :: Ptr (TQAbstractSlider a) -> CInt -> CInt -> IO ()

instance Qmove (QAbstractSliderSc a) ((Int, Int)) where
 move x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSlider_move1 cobj_x0 (toCInt x1) (toCInt x2)

instance Qmove (QAbstractSlider ()) ((Point)) where
 move x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QAbstractSlider_move_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

foreign import ccall "qtc_QAbstractSlider_move_qth" qtc_QAbstractSlider_move_qth :: Ptr (TQAbstractSlider a) -> CInt -> CInt -> IO ()

instance Qmove (QAbstractSliderSc a) ((Point)) where
 move x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QAbstractSlider_move_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

instance Qqmove (QAbstractSlider ()) ((QPoint t1)) where
 qmove x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSlider_move cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractSlider_move" qtc_QAbstractSlider_move :: Ptr (TQAbstractSlider a) -> Ptr (TQPoint t1) -> IO ()

instance Qqmove (QAbstractSliderSc a) ((QPoint t1)) where
 qmove x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSlider_move cobj_x0 cobj_x1

instance QmoveEvent (QAbstractSlider ()) ((QMoveEvent t1)) where
 moveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSlider_moveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractSlider_moveEvent_h" qtc_QAbstractSlider_moveEvent_h :: Ptr (TQAbstractSlider a) -> Ptr (TQMoveEvent t1) -> IO ()

instance QmoveEvent (QAbstractSliderSc a) ((QMoveEvent t1)) where
 moveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSlider_moveEvent_h cobj_x0 cobj_x1

instance QpaintEngine (QAbstractSlider ()) (()) where
 paintEngine x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSlider_paintEngine_h cobj_x0

foreign import ccall "qtc_QAbstractSlider_paintEngine_h" qtc_QAbstractSlider_paintEngine_h :: Ptr (TQAbstractSlider a) -> IO (Ptr (TQPaintEngine ()))

instance QpaintEngine (QAbstractSliderSc a) (()) where
 paintEngine x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSlider_paintEngine_h cobj_x0

instance QpaintEvent (QAbstractSlider ()) ((QPaintEvent t1)) where
 paintEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSlider_paintEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractSlider_paintEvent_h" qtc_QAbstractSlider_paintEvent_h :: Ptr (TQAbstractSlider a) -> Ptr (TQPaintEvent t1) -> IO ()

instance QpaintEvent (QAbstractSliderSc a) ((QPaintEvent t1)) where
 paintEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSlider_paintEvent_h cobj_x0 cobj_x1

instance QpaletteChange (QAbstractSlider ()) ((QPalette t1)) where
 paletteChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSlider_paletteChange cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractSlider_paletteChange" qtc_QAbstractSlider_paletteChange :: Ptr (TQAbstractSlider a) -> Ptr (TQPalette t1) -> IO ()

instance QpaletteChange (QAbstractSliderSc a) ((QPalette t1)) where
 paletteChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSlider_paletteChange cobj_x0 cobj_x1

instance Qrepaint (QAbstractSlider ()) (()) where
 repaint x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSlider_repaint cobj_x0

foreign import ccall "qtc_QAbstractSlider_repaint" qtc_QAbstractSlider_repaint :: Ptr (TQAbstractSlider a) -> IO ()

instance Qrepaint (QAbstractSliderSc a) (()) where
 repaint x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSlider_repaint cobj_x0

instance Qrepaint (QAbstractSlider ()) ((Int, Int, Int, Int)) where
 repaint x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSlider_repaint2 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QAbstractSlider_repaint2" qtc_QAbstractSlider_repaint2 :: Ptr (TQAbstractSlider a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance Qrepaint (QAbstractSliderSc a) ((Int, Int, Int, Int)) where
 repaint x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSlider_repaint2 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

instance Qrepaint (QAbstractSlider ()) ((QRegion t1)) where
 repaint x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSlider_repaint1 cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractSlider_repaint1" qtc_QAbstractSlider_repaint1 :: Ptr (TQAbstractSlider a) -> Ptr (TQRegion t1) -> IO ()

instance Qrepaint (QAbstractSliderSc a) ((QRegion t1)) where
 repaint x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSlider_repaint1 cobj_x0 cobj_x1

instance QresetInputContext (QAbstractSlider ()) (()) where
 resetInputContext x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSlider_resetInputContext cobj_x0

foreign import ccall "qtc_QAbstractSlider_resetInputContext" qtc_QAbstractSlider_resetInputContext :: Ptr (TQAbstractSlider a) -> IO ()

instance QresetInputContext (QAbstractSliderSc a) (()) where
 resetInputContext x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSlider_resetInputContext cobj_x0

instance Qresize (QAbstractSlider ()) ((Int, Int)) (IO ()) where
 resize x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSlider_resize1 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QAbstractSlider_resize1" qtc_QAbstractSlider_resize1 :: Ptr (TQAbstractSlider a) -> CInt -> CInt -> IO ()

instance Qresize (QAbstractSliderSc a) ((Int, Int)) (IO ()) where
 resize x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSlider_resize1 cobj_x0 (toCInt x1) (toCInt x2)

instance Qqresize (QAbstractSlider ()) ((QSize t1)) where
 qresize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSlider_resize cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractSlider_resize" qtc_QAbstractSlider_resize :: Ptr (TQAbstractSlider a) -> Ptr (TQSize t1) -> IO ()

instance Qqresize (QAbstractSliderSc a) ((QSize t1)) where
 qresize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSlider_resize cobj_x0 cobj_x1

instance Qresize (QAbstractSlider ()) ((Size)) (IO ()) where
 resize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QAbstractSlider_resize_qth cobj_x0 csize_x1_w csize_x1_h 

foreign import ccall "qtc_QAbstractSlider_resize_qth" qtc_QAbstractSlider_resize_qth :: Ptr (TQAbstractSlider a) -> CInt -> CInt -> IO ()

instance Qresize (QAbstractSliderSc a) ((Size)) (IO ()) where
 resize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QAbstractSlider_resize_qth cobj_x0 csize_x1_w csize_x1_h 

instance QresizeEvent (QAbstractSlider ()) ((QResizeEvent t1)) where
 resizeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSlider_resizeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractSlider_resizeEvent_h" qtc_QAbstractSlider_resizeEvent_h :: Ptr (TQAbstractSlider a) -> Ptr (TQResizeEvent t1) -> IO ()

instance QresizeEvent (QAbstractSliderSc a) ((QResizeEvent t1)) where
 resizeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSlider_resizeEvent_h cobj_x0 cobj_x1

instance QsetGeometry (QAbstractSlider ()) ((Int, Int, Int, Int)) where
 setGeometry x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSlider_setGeometry1 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QAbstractSlider_setGeometry1" qtc_QAbstractSlider_setGeometry1 :: Ptr (TQAbstractSlider a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QsetGeometry (QAbstractSliderSc a) ((Int, Int, Int, Int)) where
 setGeometry x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSlider_setGeometry1 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

instance QqsetGeometry (QAbstractSlider ()) ((QRect t1)) where
 qsetGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSlider_setGeometry cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractSlider_setGeometry" qtc_QAbstractSlider_setGeometry :: Ptr (TQAbstractSlider a) -> Ptr (TQRect t1) -> IO ()

instance QqsetGeometry (QAbstractSliderSc a) ((QRect t1)) where
 qsetGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSlider_setGeometry cobj_x0 cobj_x1

instance QsetGeometry (QAbstractSlider ()) ((Rect)) where
 setGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QAbstractSlider_setGeometry_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

foreign import ccall "qtc_QAbstractSlider_setGeometry_qth" qtc_QAbstractSlider_setGeometry_qth :: Ptr (TQAbstractSlider a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QsetGeometry (QAbstractSliderSc a) ((Rect)) where
 setGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QAbstractSlider_setGeometry_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

instance QsetMouseTracking (QAbstractSlider ()) ((Bool)) where
 setMouseTracking x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSlider_setMouseTracking cobj_x0 (toCBool x1)

foreign import ccall "qtc_QAbstractSlider_setMouseTracking" qtc_QAbstractSlider_setMouseTracking :: Ptr (TQAbstractSlider a) -> CBool -> IO ()

instance QsetMouseTracking (QAbstractSliderSc a) ((Bool)) where
 setMouseTracking x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSlider_setMouseTracking cobj_x0 (toCBool x1)

instance QsetVisible (QAbstractSlider ()) ((Bool)) where
 setVisible x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSlider_setVisible_h cobj_x0 (toCBool x1)

foreign import ccall "qtc_QAbstractSlider_setVisible_h" qtc_QAbstractSlider_setVisible_h :: Ptr (TQAbstractSlider a) -> CBool -> IO ()

instance QsetVisible (QAbstractSliderSc a) ((Bool)) where
 setVisible x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSlider_setVisible_h cobj_x0 (toCBool x1)

instance QshowEvent (QAbstractSlider ()) ((QShowEvent t1)) where
 showEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSlider_showEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractSlider_showEvent_h" qtc_QAbstractSlider_showEvent_h :: Ptr (TQAbstractSlider a) -> Ptr (TQShowEvent t1) -> IO ()

instance QshowEvent (QAbstractSliderSc a) ((QShowEvent t1)) where
 showEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSlider_showEvent_h cobj_x0 cobj_x1

instance QqsizeHint (QAbstractSlider ()) (()) where
 qsizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSlider_sizeHint_h cobj_x0

foreign import ccall "qtc_QAbstractSlider_sizeHint_h" qtc_QAbstractSlider_sizeHint_h :: Ptr (TQAbstractSlider a) -> IO (Ptr (TQSize ()))

instance QqsizeHint (QAbstractSliderSc a) (()) where
 qsizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSlider_sizeHint_h cobj_x0

instance QsizeHint (QAbstractSlider ()) (()) where
 sizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSlider_sizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QAbstractSlider_sizeHint_qth_h" qtc_QAbstractSlider_sizeHint_qth_h :: Ptr (TQAbstractSlider a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QsizeHint (QAbstractSliderSc a) (()) where
 sizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSlider_sizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

instance QtabletEvent (QAbstractSlider ()) ((QTabletEvent t1)) where
 tabletEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSlider_tabletEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractSlider_tabletEvent_h" qtc_QAbstractSlider_tabletEvent_h :: Ptr (TQAbstractSlider a) -> Ptr (TQTabletEvent t1) -> IO ()

instance QtabletEvent (QAbstractSliderSc a) ((QTabletEvent t1)) where
 tabletEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSlider_tabletEvent_h cobj_x0 cobj_x1

instance QupdateMicroFocus (QAbstractSlider ()) (()) where
 updateMicroFocus x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSlider_updateMicroFocus cobj_x0

foreign import ccall "qtc_QAbstractSlider_updateMicroFocus" qtc_QAbstractSlider_updateMicroFocus :: Ptr (TQAbstractSlider a) -> IO ()

instance QupdateMicroFocus (QAbstractSliderSc a) (()) where
 updateMicroFocus x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSlider_updateMicroFocus cobj_x0

instance QwindowActivationChange (QAbstractSlider ()) ((Bool)) where
 windowActivationChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSlider_windowActivationChange cobj_x0 (toCBool x1)

foreign import ccall "qtc_QAbstractSlider_windowActivationChange" qtc_QAbstractSlider_windowActivationChange :: Ptr (TQAbstractSlider a) -> CBool -> IO ()

instance QwindowActivationChange (QAbstractSliderSc a) ((Bool)) where
 windowActivationChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSlider_windowActivationChange cobj_x0 (toCBool x1)

instance QchildEvent (QAbstractSlider ()) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSlider_childEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractSlider_childEvent" qtc_QAbstractSlider_childEvent :: Ptr (TQAbstractSlider a) -> Ptr (TQChildEvent t1) -> IO ()

instance QchildEvent (QAbstractSliderSc a) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSlider_childEvent cobj_x0 cobj_x1

instance QconnectNotify (QAbstractSlider ()) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QAbstractSlider_connectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QAbstractSlider_connectNotify" qtc_QAbstractSlider_connectNotify :: Ptr (TQAbstractSlider a) -> CWString -> IO ()

instance QconnectNotify (QAbstractSliderSc a) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QAbstractSlider_connectNotify cobj_x0 cstr_x1

instance QcustomEvent (QAbstractSlider ()) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSlider_customEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractSlider_customEvent" qtc_QAbstractSlider_customEvent :: Ptr (TQAbstractSlider a) -> Ptr (TQEvent t1) -> IO ()

instance QcustomEvent (QAbstractSliderSc a) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSlider_customEvent cobj_x0 cobj_x1

instance QdisconnectNotify (QAbstractSlider ()) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QAbstractSlider_disconnectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QAbstractSlider_disconnectNotify" qtc_QAbstractSlider_disconnectNotify :: Ptr (TQAbstractSlider a) -> CWString -> IO ()

instance QdisconnectNotify (QAbstractSliderSc a) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QAbstractSlider_disconnectNotify cobj_x0 cstr_x1

instance QeventFilter (QAbstractSlider ()) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QAbstractSlider_eventFilter_h cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QAbstractSlider_eventFilter_h" qtc_QAbstractSlider_eventFilter_h :: Ptr (TQAbstractSlider a) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO CBool

instance QeventFilter (QAbstractSliderSc a) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QAbstractSlider_eventFilter_h cobj_x0 cobj_x1 cobj_x2

instance Qreceivers (QAbstractSlider ()) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QAbstractSlider_receivers cobj_x0 cstr_x1

foreign import ccall "qtc_QAbstractSlider_receivers" qtc_QAbstractSlider_receivers :: Ptr (TQAbstractSlider a) -> CWString -> IO CInt

instance Qreceivers (QAbstractSliderSc a) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QAbstractSlider_receivers cobj_x0 cstr_x1

instance Qsender (QAbstractSlider ()) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSlider_sender cobj_x0

foreign import ccall "qtc_QAbstractSlider_sender" qtc_QAbstractSlider_sender :: Ptr (TQAbstractSlider a) -> IO (Ptr (TQObject ()))

instance Qsender (QAbstractSliderSc a) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSlider_sender cobj_x0

