{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QDial.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:15
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QDial (
  QqDial(..)
  ,notchSize
  ,notchesVisible
  ,QsetNotchesVisible(..)
  ,qDial_delete
  ,qDial_deleteLater
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

instance QuserMethod (QDial ()) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QDial_userMethod cobj_qobj (toCInt evid)

foreign import ccall "qtc_QDial_userMethod" qtc_QDial_userMethod :: Ptr (TQDial a) -> CInt -> IO ()

instance QuserMethod (QDialSc a) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QDial_userMethod cobj_qobj (toCInt evid)

instance QuserMethod (QDial ()) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QDial_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

foreign import ccall "qtc_QDial_userMethodVariant" qtc_QDial_userMethodVariant :: Ptr (TQDial a) -> CInt -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))

instance QuserMethod (QDialSc a) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QDial_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

class QqDial x1 where
  qDial :: x1 -> IO (QDial ())

instance QqDial (()) where
 qDial ()
  = withQDialResult $
    qtc_QDial

foreign import ccall "qtc_QDial" qtc_QDial :: IO (Ptr (TQDial ()))

instance QqDial ((QWidget t1)) where
 qDial (x1)
  = withQDialResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDial1 cobj_x1

foreign import ccall "qtc_QDial1" qtc_QDial1 :: Ptr (TQWidget t1) -> IO (Ptr (TQDial ()))

instance Qevent (QDial ()) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDial_event_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDial_event_h" qtc_QDial_event_h :: Ptr (TQDial a) -> Ptr (TQEvent t1) -> IO CBool

instance Qevent (QDialSc a) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDial_event_h cobj_x0 cobj_x1

instance QinitStyleOption (QDial ()) ((QStyleOptionSlider t1)) where
 initStyleOption x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDial_initStyleOption cobj_x0 cobj_x1

foreign import ccall "qtc_QDial_initStyleOption" qtc_QDial_initStyleOption :: Ptr (TQDial a) -> Ptr (TQStyleOptionSlider t1) -> IO ()

instance QinitStyleOption (QDialSc a) ((QStyleOptionSlider t1)) where
 initStyleOption x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDial_initStyleOption cobj_x0 cobj_x1

instance QqminimumSizeHint (QDial ()) (()) where
 qminimumSizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDial_minimumSizeHint_h cobj_x0

foreign import ccall "qtc_QDial_minimumSizeHint_h" qtc_QDial_minimumSizeHint_h :: Ptr (TQDial a) -> IO (Ptr (TQSize ()))

instance QqminimumSizeHint (QDialSc a) (()) where
 qminimumSizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDial_minimumSizeHint_h cobj_x0

instance QminimumSizeHint (QDial ()) (()) where
 minimumSizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDial_minimumSizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QDial_minimumSizeHint_qth_h" qtc_QDial_minimumSizeHint_qth_h :: Ptr (TQDial a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QminimumSizeHint (QDialSc a) (()) where
 minimumSizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDial_minimumSizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

instance QmouseMoveEvent (QDial ()) ((QMouseEvent t1)) where
 mouseMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDial_mouseMoveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDial_mouseMoveEvent_h" qtc_QDial_mouseMoveEvent_h :: Ptr (TQDial a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseMoveEvent (QDialSc a) ((QMouseEvent t1)) where
 mouseMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDial_mouseMoveEvent_h cobj_x0 cobj_x1

instance QmousePressEvent (QDial ()) ((QMouseEvent t1)) where
 mousePressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDial_mousePressEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDial_mousePressEvent_h" qtc_QDial_mousePressEvent_h :: Ptr (TQDial a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmousePressEvent (QDialSc a) ((QMouseEvent t1)) where
 mousePressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDial_mousePressEvent_h cobj_x0 cobj_x1

instance QmouseReleaseEvent (QDial ()) ((QMouseEvent t1)) where
 mouseReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDial_mouseReleaseEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDial_mouseReleaseEvent_h" qtc_QDial_mouseReleaseEvent_h :: Ptr (TQDial a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseReleaseEvent (QDialSc a) ((QMouseEvent t1)) where
 mouseReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDial_mouseReleaseEvent_h cobj_x0 cobj_x1

notchSize :: QDial a -> (()) -> IO (Int)
notchSize x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDial_notchSize cobj_x0

foreign import ccall "qtc_QDial_notchSize" qtc_QDial_notchSize :: Ptr (TQDial a) -> IO CInt

instance QnotchTarget (QDial a) (()) where
 notchTarget x0 ()
  = withDoubleResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDial_notchTarget cobj_x0

foreign import ccall "qtc_QDial_notchTarget" qtc_QDial_notchTarget :: Ptr (TQDial a) -> IO CDouble

notchesVisible :: QDial a -> (()) -> IO (Bool)
notchesVisible x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDial_notchesVisible cobj_x0

foreign import ccall "qtc_QDial_notchesVisible" qtc_QDial_notchesVisible :: Ptr (TQDial a) -> IO CBool

instance QpaintEvent (QDial ()) ((QPaintEvent t1)) where
 paintEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDial_paintEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDial_paintEvent_h" qtc_QDial_paintEvent_h :: Ptr (TQDial a) -> Ptr (TQPaintEvent t1) -> IO ()

instance QpaintEvent (QDialSc a) ((QPaintEvent t1)) where
 paintEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDial_paintEvent_h cobj_x0 cobj_x1

instance QresizeEvent (QDial ()) ((QResizeEvent t1)) where
 resizeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDial_resizeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDial_resizeEvent_h" qtc_QDial_resizeEvent_h :: Ptr (TQDial a) -> Ptr (TQResizeEvent t1) -> IO ()

instance QresizeEvent (QDialSc a) ((QResizeEvent t1)) where
 resizeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDial_resizeEvent_h cobj_x0 cobj_x1

instance QsetNotchTarget (QDial a) ((Double)) where
 setNotchTarget x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDial_setNotchTarget cobj_x0 (toCDouble x1)

foreign import ccall "qtc_QDial_setNotchTarget" qtc_QDial_setNotchTarget :: Ptr (TQDial a) -> CDouble -> IO ()

class QsetNotchesVisible x0 x1 where
 setNotchesVisible :: x0 -> x1 -> IO ()

instance QsetNotchesVisible (QDial ()) ((Bool)) where
 setNotchesVisible x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDial_setNotchesVisible_h cobj_x0 (toCBool x1)

foreign import ccall "qtc_QDial_setNotchesVisible_h" qtc_QDial_setNotchesVisible_h :: Ptr (TQDial a) -> CBool -> IO ()

instance QsetNotchesVisible (QDialSc a) ((Bool)) where
 setNotchesVisible x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDial_setNotchesVisible_h cobj_x0 (toCBool x1)

instance QsetWrapping (QDial ()) ((Bool)) where
 setWrapping x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDial_setWrapping_h cobj_x0 (toCBool x1)

foreign import ccall "qtc_QDial_setWrapping_h" qtc_QDial_setWrapping_h :: Ptr (TQDial a) -> CBool -> IO ()

instance QsetWrapping (QDialSc a) ((Bool)) where
 setWrapping x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDial_setWrapping_h cobj_x0 (toCBool x1)

instance QqsizeHint (QDial ()) (()) where
 qsizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDial_sizeHint_h cobj_x0

foreign import ccall "qtc_QDial_sizeHint_h" qtc_QDial_sizeHint_h :: Ptr (TQDial a) -> IO (Ptr (TQSize ()))

instance QqsizeHint (QDialSc a) (()) where
 qsizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDial_sizeHint_h cobj_x0

instance QsizeHint (QDial ()) (()) where
 sizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDial_sizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QDial_sizeHint_qth_h" qtc_QDial_sizeHint_qth_h :: Ptr (TQDial a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QsizeHint (QDialSc a) (()) where
 sizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDial_sizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

instance QsliderChange (QDial ()) ((SliderChange)) where
 sliderChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDial_sliderChange_h cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QDial_sliderChange_h" qtc_QDial_sliderChange_h :: Ptr (TQDial a) -> CLong -> IO ()

instance QsliderChange (QDialSc a) ((SliderChange)) where
 sliderChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDial_sliderChange_h cobj_x0 (toCLong $ qEnum_toInt x1)

instance Qwrapping (QDial a) (()) where
 wrapping x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDial_wrapping cobj_x0

foreign import ccall "qtc_QDial_wrapping" qtc_QDial_wrapping :: Ptr (TQDial a) -> IO CBool

qDial_delete :: QDial a -> IO ()
qDial_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDial_delete cobj_x0

foreign import ccall "qtc_QDial_delete" qtc_QDial_delete :: Ptr (TQDial a) -> IO ()

qDial_deleteLater :: QDial a -> IO ()
qDial_deleteLater x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDial_deleteLater cobj_x0

foreign import ccall "qtc_QDial_deleteLater" qtc_QDial_deleteLater :: Ptr (TQDial a) -> IO ()

instance QchangeEvent (QDial ()) ((QEvent t1)) where
 changeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDial_changeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDial_changeEvent_h" qtc_QDial_changeEvent_h :: Ptr (TQDial a) -> Ptr (TQEvent t1) -> IO ()

instance QchangeEvent (QDialSc a) ((QEvent t1)) where
 changeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDial_changeEvent_h cobj_x0 cobj_x1

instance QkeyPressEvent (QDial ()) ((QKeyEvent t1)) where
 keyPressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDial_keyPressEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDial_keyPressEvent_h" qtc_QDial_keyPressEvent_h :: Ptr (TQDial a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyPressEvent (QDialSc a) ((QKeyEvent t1)) where
 keyPressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDial_keyPressEvent_h cobj_x0 cobj_x1

instance QrepeatAction (QDial ()) (()) where
 repeatAction x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDial_repeatAction cobj_x0

foreign import ccall "qtc_QDial_repeatAction" qtc_QDial_repeatAction :: Ptr (TQDial a) -> IO CLong

instance QrepeatAction (QDialSc a) (()) where
 repeatAction x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDial_repeatAction cobj_x0

instance QsetRepeatAction (QDial ()) ((SliderAction)) where
 setRepeatAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDial_setRepeatAction cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QDial_setRepeatAction" qtc_QDial_setRepeatAction :: Ptr (TQDial a) -> CLong -> IO ()

instance QsetRepeatAction (QDialSc a) ((SliderAction)) where
 setRepeatAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDial_setRepeatAction cobj_x0 (toCLong $ qEnum_toInt x1)

instance QsetRepeatAction (QDial ()) ((SliderAction, Int)) where
 setRepeatAction x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDial_setRepeatAction1 cobj_x0 (toCLong $ qEnum_toInt x1) (toCInt x2)

foreign import ccall "qtc_QDial_setRepeatAction1" qtc_QDial_setRepeatAction1 :: Ptr (TQDial a) -> CLong -> CInt -> IO ()

instance QsetRepeatAction (QDialSc a) ((SliderAction, Int)) where
 setRepeatAction x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDial_setRepeatAction1 cobj_x0 (toCLong $ qEnum_toInt x1) (toCInt x2)

instance QsetRepeatAction (QDial ()) ((SliderAction, Int, Int)) where
 setRepeatAction x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDial_setRepeatAction2 cobj_x0 (toCLong $ qEnum_toInt x1) (toCInt x2) (toCInt x3)

foreign import ccall "qtc_QDial_setRepeatAction2" qtc_QDial_setRepeatAction2 :: Ptr (TQDial a) -> CLong -> CInt -> CInt -> IO ()

instance QsetRepeatAction (QDialSc a) ((SliderAction, Int, Int)) where
 setRepeatAction x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDial_setRepeatAction2 cobj_x0 (toCLong $ qEnum_toInt x1) (toCInt x2) (toCInt x3)

instance QtimerEvent (QDial ()) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDial_timerEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QDial_timerEvent" qtc_QDial_timerEvent :: Ptr (TQDial a) -> Ptr (TQTimerEvent t1) -> IO ()

instance QtimerEvent (QDialSc a) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDial_timerEvent cobj_x0 cobj_x1

instance QwheelEvent (QDial ()) ((QWheelEvent t1)) where
 wheelEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDial_wheelEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDial_wheelEvent_h" qtc_QDial_wheelEvent_h :: Ptr (TQDial a) -> Ptr (TQWheelEvent t1) -> IO ()

instance QwheelEvent (QDialSc a) ((QWheelEvent t1)) where
 wheelEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDial_wheelEvent_h cobj_x0 cobj_x1

instance QactionEvent (QDial ()) ((QActionEvent t1)) where
 actionEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDial_actionEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDial_actionEvent_h" qtc_QDial_actionEvent_h :: Ptr (TQDial a) -> Ptr (TQActionEvent t1) -> IO ()

instance QactionEvent (QDialSc a) ((QActionEvent t1)) where
 actionEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDial_actionEvent_h cobj_x0 cobj_x1

instance QaddAction (QDial ()) ((QAction t1)) (IO ()) where
 addAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDial_addAction cobj_x0 cobj_x1

foreign import ccall "qtc_QDial_addAction" qtc_QDial_addAction :: Ptr (TQDial a) -> Ptr (TQAction t1) -> IO ()

instance QaddAction (QDialSc a) ((QAction t1)) (IO ()) where
 addAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDial_addAction cobj_x0 cobj_x1

instance QcloseEvent (QDial ()) ((QCloseEvent t1)) where
 closeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDial_closeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDial_closeEvent_h" qtc_QDial_closeEvent_h :: Ptr (TQDial a) -> Ptr (TQCloseEvent t1) -> IO ()

instance QcloseEvent (QDialSc a) ((QCloseEvent t1)) where
 closeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDial_closeEvent_h cobj_x0 cobj_x1

instance QcontextMenuEvent (QDial ()) ((QContextMenuEvent t1)) where
 contextMenuEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDial_contextMenuEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDial_contextMenuEvent_h" qtc_QDial_contextMenuEvent_h :: Ptr (TQDial a) -> Ptr (TQContextMenuEvent t1) -> IO ()

instance QcontextMenuEvent (QDialSc a) ((QContextMenuEvent t1)) where
 contextMenuEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDial_contextMenuEvent_h cobj_x0 cobj_x1

instance Qcreate (QDial ()) (()) (IO ()) where
 create x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDial_create cobj_x0

foreign import ccall "qtc_QDial_create" qtc_QDial_create :: Ptr (TQDial a) -> IO ()

instance Qcreate (QDialSc a) (()) (IO ()) where
 create x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDial_create cobj_x0

instance Qcreate (QDial ()) ((QVoid t1)) (IO ()) where
 create x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDial_create1 cobj_x0 cobj_x1

foreign import ccall "qtc_QDial_create1" qtc_QDial_create1 :: Ptr (TQDial a) -> Ptr (TQVoid t1) -> IO ()

instance Qcreate (QDialSc a) ((QVoid t1)) (IO ()) where
 create x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDial_create1 cobj_x0 cobj_x1

instance Qcreate (QDial ()) ((QVoid t1, Bool)) (IO ()) where
 create x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDial_create2 cobj_x0 cobj_x1 (toCBool x2)

foreign import ccall "qtc_QDial_create2" qtc_QDial_create2 :: Ptr (TQDial a) -> Ptr (TQVoid t1) -> CBool -> IO ()

instance Qcreate (QDialSc a) ((QVoid t1, Bool)) (IO ()) where
 create x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDial_create2 cobj_x0 cobj_x1 (toCBool x2)

instance Qcreate (QDial ()) ((QVoid t1, Bool, Bool)) (IO ()) where
 create x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDial_create3 cobj_x0 cobj_x1 (toCBool x2) (toCBool x3)

foreign import ccall "qtc_QDial_create3" qtc_QDial_create3 :: Ptr (TQDial a) -> Ptr (TQVoid t1) -> CBool -> CBool -> IO ()

instance Qcreate (QDialSc a) ((QVoid t1, Bool, Bool)) (IO ()) where
 create x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDial_create3 cobj_x0 cobj_x1 (toCBool x2) (toCBool x3)

instance Qdestroy (QDial ()) (()) where
 destroy x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDial_destroy cobj_x0

foreign import ccall "qtc_QDial_destroy" qtc_QDial_destroy :: Ptr (TQDial a) -> IO ()

instance Qdestroy (QDialSc a) (()) where
 destroy x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDial_destroy cobj_x0

instance Qdestroy (QDial ()) ((Bool)) where
 destroy x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDial_destroy1 cobj_x0 (toCBool x1)

foreign import ccall "qtc_QDial_destroy1" qtc_QDial_destroy1 :: Ptr (TQDial a) -> CBool -> IO ()

instance Qdestroy (QDialSc a) ((Bool)) where
 destroy x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDial_destroy1 cobj_x0 (toCBool x1)

instance Qdestroy (QDial ()) ((Bool, Bool)) where
 destroy x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDial_destroy2 cobj_x0 (toCBool x1) (toCBool x2)

foreign import ccall "qtc_QDial_destroy2" qtc_QDial_destroy2 :: Ptr (TQDial a) -> CBool -> CBool -> IO ()

instance Qdestroy (QDialSc a) ((Bool, Bool)) where
 destroy x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDial_destroy2 cobj_x0 (toCBool x1) (toCBool x2)

instance QdevType (QDial ()) (()) where
 devType x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDial_devType_h cobj_x0

foreign import ccall "qtc_QDial_devType_h" qtc_QDial_devType_h :: Ptr (TQDial a) -> IO CInt

instance QdevType (QDialSc a) (()) where
 devType x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDial_devType_h cobj_x0

instance QdragEnterEvent (QDial ()) ((QDragEnterEvent t1)) where
 dragEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDial_dragEnterEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDial_dragEnterEvent_h" qtc_QDial_dragEnterEvent_h :: Ptr (TQDial a) -> Ptr (TQDragEnterEvent t1) -> IO ()

instance QdragEnterEvent (QDialSc a) ((QDragEnterEvent t1)) where
 dragEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDial_dragEnterEvent_h cobj_x0 cobj_x1

instance QdragLeaveEvent (QDial ()) ((QDragLeaveEvent t1)) where
 dragLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDial_dragLeaveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDial_dragLeaveEvent_h" qtc_QDial_dragLeaveEvent_h :: Ptr (TQDial a) -> Ptr (TQDragLeaveEvent t1) -> IO ()

instance QdragLeaveEvent (QDialSc a) ((QDragLeaveEvent t1)) where
 dragLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDial_dragLeaveEvent_h cobj_x0 cobj_x1

instance QdragMoveEvent (QDial ()) ((QDragMoveEvent t1)) where
 dragMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDial_dragMoveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDial_dragMoveEvent_h" qtc_QDial_dragMoveEvent_h :: Ptr (TQDial a) -> Ptr (TQDragMoveEvent t1) -> IO ()

instance QdragMoveEvent (QDialSc a) ((QDragMoveEvent t1)) where
 dragMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDial_dragMoveEvent_h cobj_x0 cobj_x1

instance QdropEvent (QDial ()) ((QDropEvent t1)) where
 dropEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDial_dropEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDial_dropEvent_h" qtc_QDial_dropEvent_h :: Ptr (TQDial a) -> Ptr (TQDropEvent t1) -> IO ()

instance QdropEvent (QDialSc a) ((QDropEvent t1)) where
 dropEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDial_dropEvent_h cobj_x0 cobj_x1

instance QenabledChange (QDial ()) ((Bool)) where
 enabledChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDial_enabledChange cobj_x0 (toCBool x1)

foreign import ccall "qtc_QDial_enabledChange" qtc_QDial_enabledChange :: Ptr (TQDial a) -> CBool -> IO ()

instance QenabledChange (QDialSc a) ((Bool)) where
 enabledChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDial_enabledChange cobj_x0 (toCBool x1)

instance QenterEvent (QDial ()) ((QEvent t1)) where
 enterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDial_enterEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDial_enterEvent_h" qtc_QDial_enterEvent_h :: Ptr (TQDial a) -> Ptr (TQEvent t1) -> IO ()

instance QenterEvent (QDialSc a) ((QEvent t1)) where
 enterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDial_enterEvent_h cobj_x0 cobj_x1

instance QfocusInEvent (QDial ()) ((QFocusEvent t1)) where
 focusInEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDial_focusInEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDial_focusInEvent_h" qtc_QDial_focusInEvent_h :: Ptr (TQDial a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusInEvent (QDialSc a) ((QFocusEvent t1)) where
 focusInEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDial_focusInEvent_h cobj_x0 cobj_x1

instance QfocusNextChild (QDial ()) (()) where
 focusNextChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDial_focusNextChild cobj_x0

foreign import ccall "qtc_QDial_focusNextChild" qtc_QDial_focusNextChild :: Ptr (TQDial a) -> IO CBool

instance QfocusNextChild (QDialSc a) (()) where
 focusNextChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDial_focusNextChild cobj_x0

instance QfocusNextPrevChild (QDial ()) ((Bool)) where
 focusNextPrevChild x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDial_focusNextPrevChild cobj_x0 (toCBool x1)

foreign import ccall "qtc_QDial_focusNextPrevChild" qtc_QDial_focusNextPrevChild :: Ptr (TQDial a) -> CBool -> IO CBool

instance QfocusNextPrevChild (QDialSc a) ((Bool)) where
 focusNextPrevChild x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDial_focusNextPrevChild cobj_x0 (toCBool x1)

instance QfocusOutEvent (QDial ()) ((QFocusEvent t1)) where
 focusOutEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDial_focusOutEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDial_focusOutEvent_h" qtc_QDial_focusOutEvent_h :: Ptr (TQDial a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusOutEvent (QDialSc a) ((QFocusEvent t1)) where
 focusOutEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDial_focusOutEvent_h cobj_x0 cobj_x1

instance QfocusPreviousChild (QDial ()) (()) where
 focusPreviousChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDial_focusPreviousChild cobj_x0

foreign import ccall "qtc_QDial_focusPreviousChild" qtc_QDial_focusPreviousChild :: Ptr (TQDial a) -> IO CBool

instance QfocusPreviousChild (QDialSc a) (()) where
 focusPreviousChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDial_focusPreviousChild cobj_x0

instance QfontChange (QDial ()) ((QFont t1)) where
 fontChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDial_fontChange cobj_x0 cobj_x1

foreign import ccall "qtc_QDial_fontChange" qtc_QDial_fontChange :: Ptr (TQDial a) -> Ptr (TQFont t1) -> IO ()

instance QfontChange (QDialSc a) ((QFont t1)) where
 fontChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDial_fontChange cobj_x0 cobj_x1

instance QheightForWidth (QDial ()) ((Int)) where
 heightForWidth x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDial_heightForWidth_h cobj_x0 (toCInt x1)

foreign import ccall "qtc_QDial_heightForWidth_h" qtc_QDial_heightForWidth_h :: Ptr (TQDial a) -> CInt -> IO CInt

instance QheightForWidth (QDialSc a) ((Int)) where
 heightForWidth x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDial_heightForWidth_h cobj_x0 (toCInt x1)

instance QhideEvent (QDial ()) ((QHideEvent t1)) where
 hideEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDial_hideEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDial_hideEvent_h" qtc_QDial_hideEvent_h :: Ptr (TQDial a) -> Ptr (TQHideEvent t1) -> IO ()

instance QhideEvent (QDialSc a) ((QHideEvent t1)) where
 hideEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDial_hideEvent_h cobj_x0 cobj_x1

instance QinputMethodEvent (QDial ()) ((QInputMethodEvent t1)) where
 inputMethodEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDial_inputMethodEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QDial_inputMethodEvent" qtc_QDial_inputMethodEvent :: Ptr (TQDial a) -> Ptr (TQInputMethodEvent t1) -> IO ()

instance QinputMethodEvent (QDialSc a) ((QInputMethodEvent t1)) where
 inputMethodEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDial_inputMethodEvent cobj_x0 cobj_x1

instance QinputMethodQuery (QDial ()) ((InputMethodQuery)) where
 inputMethodQuery x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDial_inputMethodQuery_h cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QDial_inputMethodQuery_h" qtc_QDial_inputMethodQuery_h :: Ptr (TQDial a) -> CLong -> IO (Ptr (TQVariant ()))

instance QinputMethodQuery (QDialSc a) ((InputMethodQuery)) where
 inputMethodQuery x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDial_inputMethodQuery_h cobj_x0 (toCLong $ qEnum_toInt x1)

instance QkeyReleaseEvent (QDial ()) ((QKeyEvent t1)) where
 keyReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDial_keyReleaseEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDial_keyReleaseEvent_h" qtc_QDial_keyReleaseEvent_h :: Ptr (TQDial a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyReleaseEvent (QDialSc a) ((QKeyEvent t1)) where
 keyReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDial_keyReleaseEvent_h cobj_x0 cobj_x1

instance QlanguageChange (QDial ()) (()) where
 languageChange x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDial_languageChange cobj_x0

foreign import ccall "qtc_QDial_languageChange" qtc_QDial_languageChange :: Ptr (TQDial a) -> IO ()

instance QlanguageChange (QDialSc a) (()) where
 languageChange x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDial_languageChange cobj_x0

instance QleaveEvent (QDial ()) ((QEvent t1)) where
 leaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDial_leaveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDial_leaveEvent_h" qtc_QDial_leaveEvent_h :: Ptr (TQDial a) -> Ptr (TQEvent t1) -> IO ()

instance QleaveEvent (QDialSc a) ((QEvent t1)) where
 leaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDial_leaveEvent_h cobj_x0 cobj_x1

instance Qmetric (QDial ()) ((PaintDeviceMetric)) where
 metric x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDial_metric cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QDial_metric" qtc_QDial_metric :: Ptr (TQDial a) -> CLong -> IO CInt

instance Qmetric (QDialSc a) ((PaintDeviceMetric)) where
 metric x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDial_metric cobj_x0 (toCLong $ qEnum_toInt x1)

instance QmouseDoubleClickEvent (QDial ()) ((QMouseEvent t1)) where
 mouseDoubleClickEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDial_mouseDoubleClickEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDial_mouseDoubleClickEvent_h" qtc_QDial_mouseDoubleClickEvent_h :: Ptr (TQDial a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseDoubleClickEvent (QDialSc a) ((QMouseEvent t1)) where
 mouseDoubleClickEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDial_mouseDoubleClickEvent_h cobj_x0 cobj_x1

instance Qmove (QDial ()) ((Int, Int)) where
 move x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDial_move1 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QDial_move1" qtc_QDial_move1 :: Ptr (TQDial a) -> CInt -> CInt -> IO ()

instance Qmove (QDialSc a) ((Int, Int)) where
 move x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDial_move1 cobj_x0 (toCInt x1) (toCInt x2)

instance Qmove (QDial ()) ((Point)) where
 move x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QDial_move_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

foreign import ccall "qtc_QDial_move_qth" qtc_QDial_move_qth :: Ptr (TQDial a) -> CInt -> CInt -> IO ()

instance Qmove (QDialSc a) ((Point)) where
 move x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QDial_move_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

instance Qqmove (QDial ()) ((QPoint t1)) where
 qmove x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDial_move cobj_x0 cobj_x1

foreign import ccall "qtc_QDial_move" qtc_QDial_move :: Ptr (TQDial a) -> Ptr (TQPoint t1) -> IO ()

instance Qqmove (QDialSc a) ((QPoint t1)) where
 qmove x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDial_move cobj_x0 cobj_x1

instance QmoveEvent (QDial ()) ((QMoveEvent t1)) where
 moveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDial_moveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDial_moveEvent_h" qtc_QDial_moveEvent_h :: Ptr (TQDial a) -> Ptr (TQMoveEvent t1) -> IO ()

instance QmoveEvent (QDialSc a) ((QMoveEvent t1)) where
 moveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDial_moveEvent_h cobj_x0 cobj_x1

instance QpaintEngine (QDial ()) (()) where
 paintEngine x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDial_paintEngine_h cobj_x0

foreign import ccall "qtc_QDial_paintEngine_h" qtc_QDial_paintEngine_h :: Ptr (TQDial a) -> IO (Ptr (TQPaintEngine ()))

instance QpaintEngine (QDialSc a) (()) where
 paintEngine x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDial_paintEngine_h cobj_x0

instance QpaletteChange (QDial ()) ((QPalette t1)) where
 paletteChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDial_paletteChange cobj_x0 cobj_x1

foreign import ccall "qtc_QDial_paletteChange" qtc_QDial_paletteChange :: Ptr (TQDial a) -> Ptr (TQPalette t1) -> IO ()

instance QpaletteChange (QDialSc a) ((QPalette t1)) where
 paletteChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDial_paletteChange cobj_x0 cobj_x1

instance Qrepaint (QDial ()) (()) where
 repaint x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDial_repaint cobj_x0

foreign import ccall "qtc_QDial_repaint" qtc_QDial_repaint :: Ptr (TQDial a) -> IO ()

instance Qrepaint (QDialSc a) (()) where
 repaint x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDial_repaint cobj_x0

instance Qrepaint (QDial ()) ((Int, Int, Int, Int)) where
 repaint x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDial_repaint2 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QDial_repaint2" qtc_QDial_repaint2 :: Ptr (TQDial a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance Qrepaint (QDialSc a) ((Int, Int, Int, Int)) where
 repaint x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDial_repaint2 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

instance Qrepaint (QDial ()) ((QRegion t1)) where
 repaint x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDial_repaint1 cobj_x0 cobj_x1

foreign import ccall "qtc_QDial_repaint1" qtc_QDial_repaint1 :: Ptr (TQDial a) -> Ptr (TQRegion t1) -> IO ()

instance Qrepaint (QDialSc a) ((QRegion t1)) where
 repaint x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDial_repaint1 cobj_x0 cobj_x1

instance QresetInputContext (QDial ()) (()) where
 resetInputContext x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDial_resetInputContext cobj_x0

foreign import ccall "qtc_QDial_resetInputContext" qtc_QDial_resetInputContext :: Ptr (TQDial a) -> IO ()

instance QresetInputContext (QDialSc a) (()) where
 resetInputContext x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDial_resetInputContext cobj_x0

instance Qresize (QDial ()) ((Int, Int)) (IO ()) where
 resize x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDial_resize1 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QDial_resize1" qtc_QDial_resize1 :: Ptr (TQDial a) -> CInt -> CInt -> IO ()

instance Qresize (QDialSc a) ((Int, Int)) (IO ()) where
 resize x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDial_resize1 cobj_x0 (toCInt x1) (toCInt x2)

instance Qqresize (QDial ()) ((QSize t1)) where
 qresize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDial_resize cobj_x0 cobj_x1

foreign import ccall "qtc_QDial_resize" qtc_QDial_resize :: Ptr (TQDial a) -> Ptr (TQSize t1) -> IO ()

instance Qqresize (QDialSc a) ((QSize t1)) where
 qresize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDial_resize cobj_x0 cobj_x1

instance Qresize (QDial ()) ((Size)) (IO ()) where
 resize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QDial_resize_qth cobj_x0 csize_x1_w csize_x1_h 

foreign import ccall "qtc_QDial_resize_qth" qtc_QDial_resize_qth :: Ptr (TQDial a) -> CInt -> CInt -> IO ()

instance Qresize (QDialSc a) ((Size)) (IO ()) where
 resize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QDial_resize_qth cobj_x0 csize_x1_w csize_x1_h 

instance QsetGeometry (QDial ()) ((Int, Int, Int, Int)) where
 setGeometry x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDial_setGeometry1 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QDial_setGeometry1" qtc_QDial_setGeometry1 :: Ptr (TQDial a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QsetGeometry (QDialSc a) ((Int, Int, Int, Int)) where
 setGeometry x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDial_setGeometry1 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

instance QqsetGeometry (QDial ()) ((QRect t1)) where
 qsetGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDial_setGeometry cobj_x0 cobj_x1

foreign import ccall "qtc_QDial_setGeometry" qtc_QDial_setGeometry :: Ptr (TQDial a) -> Ptr (TQRect t1) -> IO ()

instance QqsetGeometry (QDialSc a) ((QRect t1)) where
 qsetGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDial_setGeometry cobj_x0 cobj_x1

instance QsetGeometry (QDial ()) ((Rect)) where
 setGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QDial_setGeometry_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

foreign import ccall "qtc_QDial_setGeometry_qth" qtc_QDial_setGeometry_qth :: Ptr (TQDial a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QsetGeometry (QDialSc a) ((Rect)) where
 setGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QDial_setGeometry_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

instance QsetMouseTracking (QDial ()) ((Bool)) where
 setMouseTracking x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDial_setMouseTracking cobj_x0 (toCBool x1)

foreign import ccall "qtc_QDial_setMouseTracking" qtc_QDial_setMouseTracking :: Ptr (TQDial a) -> CBool -> IO ()

instance QsetMouseTracking (QDialSc a) ((Bool)) where
 setMouseTracking x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDial_setMouseTracking cobj_x0 (toCBool x1)

instance QsetVisible (QDial ()) ((Bool)) where
 setVisible x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDial_setVisible_h cobj_x0 (toCBool x1)

foreign import ccall "qtc_QDial_setVisible_h" qtc_QDial_setVisible_h :: Ptr (TQDial a) -> CBool -> IO ()

instance QsetVisible (QDialSc a) ((Bool)) where
 setVisible x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDial_setVisible_h cobj_x0 (toCBool x1)

instance QshowEvent (QDial ()) ((QShowEvent t1)) where
 showEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDial_showEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDial_showEvent_h" qtc_QDial_showEvent_h :: Ptr (TQDial a) -> Ptr (TQShowEvent t1) -> IO ()

instance QshowEvent (QDialSc a) ((QShowEvent t1)) where
 showEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDial_showEvent_h cobj_x0 cobj_x1

instance QtabletEvent (QDial ()) ((QTabletEvent t1)) where
 tabletEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDial_tabletEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDial_tabletEvent_h" qtc_QDial_tabletEvent_h :: Ptr (TQDial a) -> Ptr (TQTabletEvent t1) -> IO ()

instance QtabletEvent (QDialSc a) ((QTabletEvent t1)) where
 tabletEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDial_tabletEvent_h cobj_x0 cobj_x1

instance QupdateMicroFocus (QDial ()) (()) where
 updateMicroFocus x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDial_updateMicroFocus cobj_x0

foreign import ccall "qtc_QDial_updateMicroFocus" qtc_QDial_updateMicroFocus :: Ptr (TQDial a) -> IO ()

instance QupdateMicroFocus (QDialSc a) (()) where
 updateMicroFocus x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDial_updateMicroFocus cobj_x0

instance QwindowActivationChange (QDial ()) ((Bool)) where
 windowActivationChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDial_windowActivationChange cobj_x0 (toCBool x1)

foreign import ccall "qtc_QDial_windowActivationChange" qtc_QDial_windowActivationChange :: Ptr (TQDial a) -> CBool -> IO ()

instance QwindowActivationChange (QDialSc a) ((Bool)) where
 windowActivationChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDial_windowActivationChange cobj_x0 (toCBool x1)

instance QchildEvent (QDial ()) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDial_childEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QDial_childEvent" qtc_QDial_childEvent :: Ptr (TQDial a) -> Ptr (TQChildEvent t1) -> IO ()

instance QchildEvent (QDialSc a) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDial_childEvent cobj_x0 cobj_x1

instance QconnectNotify (QDial ()) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QDial_connectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QDial_connectNotify" qtc_QDial_connectNotify :: Ptr (TQDial a) -> CWString -> IO ()

instance QconnectNotify (QDialSc a) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QDial_connectNotify cobj_x0 cstr_x1

instance QcustomEvent (QDial ()) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDial_customEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QDial_customEvent" qtc_QDial_customEvent :: Ptr (TQDial a) -> Ptr (TQEvent t1) -> IO ()

instance QcustomEvent (QDialSc a) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDial_customEvent cobj_x0 cobj_x1

instance QdisconnectNotify (QDial ()) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QDial_disconnectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QDial_disconnectNotify" qtc_QDial_disconnectNotify :: Ptr (TQDial a) -> CWString -> IO ()

instance QdisconnectNotify (QDialSc a) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QDial_disconnectNotify cobj_x0 cstr_x1

instance QeventFilter (QDial ()) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QDial_eventFilter_h cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QDial_eventFilter_h" qtc_QDial_eventFilter_h :: Ptr (TQDial a) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO CBool

instance QeventFilter (QDialSc a) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QDial_eventFilter_h cobj_x0 cobj_x1 cobj_x2

instance Qreceivers (QDial ()) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QDial_receivers cobj_x0 cstr_x1

foreign import ccall "qtc_QDial_receivers" qtc_QDial_receivers :: Ptr (TQDial a) -> CWString -> IO CInt

instance Qreceivers (QDialSc a) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QDial_receivers cobj_x0 cstr_x1

instance Qsender (QDial ()) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDial_sender cobj_x0

foreign import ccall "qtc_QDial_sender" qtc_QDial_sender :: Ptr (TQDial a) -> IO (Ptr (TQObject ()))

instance Qsender (QDialSc a) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDial_sender cobj_x0

