{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QSlider.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:24
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QSlider (
  QqSlider(..)
  ,qSlider_delete
  ,qSlider_deleteLater
  )
  where

import Foreign.C.Types
import Qth.ClassTypes.Core
import Qtc.Enums.Base
import Qtc.Enums.Gui.QPaintDevice
import Qtc.Enums.Core.Qt
import Qtc.Enums.Gui.QSlider
import Qtc.Enums.Gui.QAbstractSlider

import Qtc.Classes.Base
import Qtc.Classes.Qccs
import Qtc.Classes.Core
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core
import Qtc.Classes.Gui
import Qtc.ClassTypes.Gui

instance QuserMethod (QSlider ()) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QSlider_userMethod cobj_qobj (toCInt evid)

foreign import ccall "qtc_QSlider_userMethod" qtc_QSlider_userMethod :: Ptr (TQSlider a) -> CInt -> IO ()

instance QuserMethod (QSliderSc a) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QSlider_userMethod cobj_qobj (toCInt evid)

instance QuserMethod (QSlider ()) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QSlider_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

foreign import ccall "qtc_QSlider_userMethodVariant" qtc_QSlider_userMethodVariant :: Ptr (TQSlider a) -> CInt -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))

instance QuserMethod (QSliderSc a) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QSlider_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

class QqSlider x1 where
  qSlider :: x1 -> IO (QSlider ())

instance QqSlider (()) where
 qSlider ()
  = withQSliderResult $
    qtc_QSlider

foreign import ccall "qtc_QSlider" qtc_QSlider :: IO (Ptr (TQSlider ()))

instance QqSlider ((QWidget t1)) where
 qSlider (x1)
  = withQSliderResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSlider1 cobj_x1

foreign import ccall "qtc_QSlider1" qtc_QSlider1 :: Ptr (TQWidget t1) -> IO (Ptr (TQSlider ()))

instance QqSlider ((QtOrientation)) where
 qSlider (x1)
  = withQSliderResult $
    qtc_QSlider2 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QSlider2" qtc_QSlider2 :: CLong -> IO (Ptr (TQSlider ()))

instance QqSlider ((QtOrientation, QWidget t2)) where
 qSlider (x1, x2)
  = withQSliderResult $
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QSlider3 (toCLong $ qEnum_toInt x1) cobj_x2

foreign import ccall "qtc_QSlider3" qtc_QSlider3 :: CLong -> Ptr (TQWidget t2) -> IO (Ptr (TQSlider ()))

instance Qevent (QSlider ()) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSlider_event_h cobj_x0 cobj_x1

foreign import ccall "qtc_QSlider_event_h" qtc_QSlider_event_h :: Ptr (TQSlider a) -> Ptr (TQEvent t1) -> IO CBool

instance Qevent (QSliderSc a) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSlider_event_h cobj_x0 cobj_x1

instance QinitStyleOption (QSlider ()) ((QStyleOptionSlider t1)) where
 initStyleOption x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSlider_initStyleOption cobj_x0 cobj_x1

foreign import ccall "qtc_QSlider_initStyleOption" qtc_QSlider_initStyleOption :: Ptr (TQSlider a) -> Ptr (TQStyleOptionSlider t1) -> IO ()

instance QinitStyleOption (QSliderSc a) ((QStyleOptionSlider t1)) where
 initStyleOption x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSlider_initStyleOption cobj_x0 cobj_x1

instance QqminimumSizeHint (QSlider ()) (()) where
 qminimumSizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSlider_minimumSizeHint_h cobj_x0

foreign import ccall "qtc_QSlider_minimumSizeHint_h" qtc_QSlider_minimumSizeHint_h :: Ptr (TQSlider a) -> IO (Ptr (TQSize ()))

instance QqminimumSizeHint (QSliderSc a) (()) where
 qminimumSizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSlider_minimumSizeHint_h cobj_x0

instance QminimumSizeHint (QSlider ()) (()) where
 minimumSizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSlider_minimumSizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QSlider_minimumSizeHint_qth_h" qtc_QSlider_minimumSizeHint_qth_h :: Ptr (TQSlider a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QminimumSizeHint (QSliderSc a) (()) where
 minimumSizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSlider_minimumSizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

instance QmouseMoveEvent (QSlider ()) ((QMouseEvent t1)) where
 mouseMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSlider_mouseMoveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QSlider_mouseMoveEvent_h" qtc_QSlider_mouseMoveEvent_h :: Ptr (TQSlider a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseMoveEvent (QSliderSc a) ((QMouseEvent t1)) where
 mouseMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSlider_mouseMoveEvent_h cobj_x0 cobj_x1

instance QmousePressEvent (QSlider ()) ((QMouseEvent t1)) where
 mousePressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSlider_mousePressEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QSlider_mousePressEvent_h" qtc_QSlider_mousePressEvent_h :: Ptr (TQSlider a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmousePressEvent (QSliderSc a) ((QMouseEvent t1)) where
 mousePressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSlider_mousePressEvent_h cobj_x0 cobj_x1

instance QmouseReleaseEvent (QSlider ()) ((QMouseEvent t1)) where
 mouseReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSlider_mouseReleaseEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QSlider_mouseReleaseEvent_h" qtc_QSlider_mouseReleaseEvent_h :: Ptr (TQSlider a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseReleaseEvent (QSliderSc a) ((QMouseEvent t1)) where
 mouseReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSlider_mouseReleaseEvent_h cobj_x0 cobj_x1

instance QpaintEvent (QSlider ()) ((QPaintEvent t1)) where
 paintEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSlider_paintEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QSlider_paintEvent_h" qtc_QSlider_paintEvent_h :: Ptr (TQSlider a) -> Ptr (TQPaintEvent t1) -> IO ()

instance QpaintEvent (QSliderSc a) ((QPaintEvent t1)) where
 paintEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSlider_paintEvent_h cobj_x0 cobj_x1

instance QsetTickInterval (QSlider a) ((Int)) where
 setTickInterval x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSlider_setTickInterval cobj_x0 (toCInt x1)

foreign import ccall "qtc_QSlider_setTickInterval" qtc_QSlider_setTickInterval :: Ptr (TQSlider a) -> CInt -> IO ()

instance QsetTickPosition (QSlider a) ((TickPosition)) where
 setTickPosition x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSlider_setTickPosition cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QSlider_setTickPosition" qtc_QSlider_setTickPosition :: Ptr (TQSlider a) -> CLong -> IO ()

instance QqsizeHint (QSlider ()) (()) where
 qsizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSlider_sizeHint_h cobj_x0

foreign import ccall "qtc_QSlider_sizeHint_h" qtc_QSlider_sizeHint_h :: Ptr (TQSlider a) -> IO (Ptr (TQSize ()))

instance QqsizeHint (QSliderSc a) (()) where
 qsizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSlider_sizeHint_h cobj_x0

instance QsizeHint (QSlider ()) (()) where
 sizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSlider_sizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QSlider_sizeHint_qth_h" qtc_QSlider_sizeHint_qth_h :: Ptr (TQSlider a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QsizeHint (QSliderSc a) (()) where
 sizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSlider_sizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

instance QtickInterval (QSlider a) (()) where
 tickInterval x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSlider_tickInterval cobj_x0

foreign import ccall "qtc_QSlider_tickInterval" qtc_QSlider_tickInterval :: Ptr (TQSlider a) -> IO CInt

instance QtickPosition (QSlider a) (()) where
 tickPosition x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSlider_tickPosition cobj_x0

foreign import ccall "qtc_QSlider_tickPosition" qtc_QSlider_tickPosition :: Ptr (TQSlider a) -> IO CLong

qSlider_delete :: QSlider a -> IO ()
qSlider_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSlider_delete cobj_x0

foreign import ccall "qtc_QSlider_delete" qtc_QSlider_delete :: Ptr (TQSlider a) -> IO ()

qSlider_deleteLater :: QSlider a -> IO ()
qSlider_deleteLater x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSlider_deleteLater cobj_x0

foreign import ccall "qtc_QSlider_deleteLater" qtc_QSlider_deleteLater :: Ptr (TQSlider a) -> IO ()

instance QchangeEvent (QSlider ()) ((QEvent t1)) where
 changeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSlider_changeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QSlider_changeEvent_h" qtc_QSlider_changeEvent_h :: Ptr (TQSlider a) -> Ptr (TQEvent t1) -> IO ()

instance QchangeEvent (QSliderSc a) ((QEvent t1)) where
 changeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSlider_changeEvent_h cobj_x0 cobj_x1

instance QkeyPressEvent (QSlider ()) ((QKeyEvent t1)) where
 keyPressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSlider_keyPressEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QSlider_keyPressEvent_h" qtc_QSlider_keyPressEvent_h :: Ptr (TQSlider a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyPressEvent (QSliderSc a) ((QKeyEvent t1)) where
 keyPressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSlider_keyPressEvent_h cobj_x0 cobj_x1

instance QrepeatAction (QSlider ()) (()) where
 repeatAction x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSlider_repeatAction cobj_x0

foreign import ccall "qtc_QSlider_repeatAction" qtc_QSlider_repeatAction :: Ptr (TQSlider a) -> IO CLong

instance QrepeatAction (QSliderSc a) (()) where
 repeatAction x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSlider_repeatAction cobj_x0

instance QsetRepeatAction (QSlider ()) ((SliderAction)) where
 setRepeatAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSlider_setRepeatAction cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QSlider_setRepeatAction" qtc_QSlider_setRepeatAction :: Ptr (TQSlider a) -> CLong -> IO ()

instance QsetRepeatAction (QSliderSc a) ((SliderAction)) where
 setRepeatAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSlider_setRepeatAction cobj_x0 (toCLong $ qEnum_toInt x1)

instance QsetRepeatAction (QSlider ()) ((SliderAction, Int)) where
 setRepeatAction x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSlider_setRepeatAction1 cobj_x0 (toCLong $ qEnum_toInt x1) (toCInt x2)

foreign import ccall "qtc_QSlider_setRepeatAction1" qtc_QSlider_setRepeatAction1 :: Ptr (TQSlider a) -> CLong -> CInt -> IO ()

instance QsetRepeatAction (QSliderSc a) ((SliderAction, Int)) where
 setRepeatAction x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSlider_setRepeatAction1 cobj_x0 (toCLong $ qEnum_toInt x1) (toCInt x2)

instance QsetRepeatAction (QSlider ()) ((SliderAction, Int, Int)) where
 setRepeatAction x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSlider_setRepeatAction2 cobj_x0 (toCLong $ qEnum_toInt x1) (toCInt x2) (toCInt x3)

foreign import ccall "qtc_QSlider_setRepeatAction2" qtc_QSlider_setRepeatAction2 :: Ptr (TQSlider a) -> CLong -> CInt -> CInt -> IO ()

instance QsetRepeatAction (QSliderSc a) ((SliderAction, Int, Int)) where
 setRepeatAction x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSlider_setRepeatAction2 cobj_x0 (toCLong $ qEnum_toInt x1) (toCInt x2) (toCInt x3)

instance QsliderChange (QSlider ()) ((SliderChange)) where
 sliderChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSlider_sliderChange_h cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QSlider_sliderChange_h" qtc_QSlider_sliderChange_h :: Ptr (TQSlider a) -> CLong -> IO ()

instance QsliderChange (QSliderSc a) ((SliderChange)) where
 sliderChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSlider_sliderChange_h cobj_x0 (toCLong $ qEnum_toInt x1)

instance QtimerEvent (QSlider ()) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSlider_timerEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QSlider_timerEvent" qtc_QSlider_timerEvent :: Ptr (TQSlider a) -> Ptr (TQTimerEvent t1) -> IO ()

instance QtimerEvent (QSliderSc a) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSlider_timerEvent cobj_x0 cobj_x1

instance QwheelEvent (QSlider ()) ((QWheelEvent t1)) where
 wheelEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSlider_wheelEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QSlider_wheelEvent_h" qtc_QSlider_wheelEvent_h :: Ptr (TQSlider a) -> Ptr (TQWheelEvent t1) -> IO ()

instance QwheelEvent (QSliderSc a) ((QWheelEvent t1)) where
 wheelEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSlider_wheelEvent_h cobj_x0 cobj_x1

instance QactionEvent (QSlider ()) ((QActionEvent t1)) where
 actionEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSlider_actionEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QSlider_actionEvent_h" qtc_QSlider_actionEvent_h :: Ptr (TQSlider a) -> Ptr (TQActionEvent t1) -> IO ()

instance QactionEvent (QSliderSc a) ((QActionEvent t1)) where
 actionEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSlider_actionEvent_h cobj_x0 cobj_x1

instance QaddAction (QSlider ()) ((QAction t1)) (IO ()) where
 addAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSlider_addAction cobj_x0 cobj_x1

foreign import ccall "qtc_QSlider_addAction" qtc_QSlider_addAction :: Ptr (TQSlider a) -> Ptr (TQAction t1) -> IO ()

instance QaddAction (QSliderSc a) ((QAction t1)) (IO ()) where
 addAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSlider_addAction cobj_x0 cobj_x1

instance QcloseEvent (QSlider ()) ((QCloseEvent t1)) where
 closeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSlider_closeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QSlider_closeEvent_h" qtc_QSlider_closeEvent_h :: Ptr (TQSlider a) -> Ptr (TQCloseEvent t1) -> IO ()

instance QcloseEvent (QSliderSc a) ((QCloseEvent t1)) where
 closeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSlider_closeEvent_h cobj_x0 cobj_x1

instance QcontextMenuEvent (QSlider ()) ((QContextMenuEvent t1)) where
 contextMenuEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSlider_contextMenuEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QSlider_contextMenuEvent_h" qtc_QSlider_contextMenuEvent_h :: Ptr (TQSlider a) -> Ptr (TQContextMenuEvent t1) -> IO ()

instance QcontextMenuEvent (QSliderSc a) ((QContextMenuEvent t1)) where
 contextMenuEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSlider_contextMenuEvent_h cobj_x0 cobj_x1

instance Qcreate (QSlider ()) (()) (IO ()) where
 create x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSlider_create cobj_x0

foreign import ccall "qtc_QSlider_create" qtc_QSlider_create :: Ptr (TQSlider a) -> IO ()

instance Qcreate (QSliderSc a) (()) (IO ()) where
 create x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSlider_create cobj_x0

instance Qcreate (QSlider ()) ((QVoid t1)) (IO ()) where
 create x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSlider_create1 cobj_x0 cobj_x1

foreign import ccall "qtc_QSlider_create1" qtc_QSlider_create1 :: Ptr (TQSlider a) -> Ptr (TQVoid t1) -> IO ()

instance Qcreate (QSliderSc a) ((QVoid t1)) (IO ()) where
 create x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSlider_create1 cobj_x0 cobj_x1

instance Qcreate (QSlider ()) ((QVoid t1, Bool)) (IO ()) where
 create x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSlider_create2 cobj_x0 cobj_x1 (toCBool x2)

foreign import ccall "qtc_QSlider_create2" qtc_QSlider_create2 :: Ptr (TQSlider a) -> Ptr (TQVoid t1) -> CBool -> IO ()

instance Qcreate (QSliderSc a) ((QVoid t1, Bool)) (IO ()) where
 create x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSlider_create2 cobj_x0 cobj_x1 (toCBool x2)

instance Qcreate (QSlider ()) ((QVoid t1, Bool, Bool)) (IO ()) where
 create x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSlider_create3 cobj_x0 cobj_x1 (toCBool x2) (toCBool x3)

foreign import ccall "qtc_QSlider_create3" qtc_QSlider_create3 :: Ptr (TQSlider a) -> Ptr (TQVoid t1) -> CBool -> CBool -> IO ()

instance Qcreate (QSliderSc a) ((QVoid t1, Bool, Bool)) (IO ()) where
 create x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSlider_create3 cobj_x0 cobj_x1 (toCBool x2) (toCBool x3)

instance Qdestroy (QSlider ()) (()) where
 destroy x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSlider_destroy cobj_x0

foreign import ccall "qtc_QSlider_destroy" qtc_QSlider_destroy :: Ptr (TQSlider a) -> IO ()

instance Qdestroy (QSliderSc a) (()) where
 destroy x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSlider_destroy cobj_x0

instance Qdestroy (QSlider ()) ((Bool)) where
 destroy x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSlider_destroy1 cobj_x0 (toCBool x1)

foreign import ccall "qtc_QSlider_destroy1" qtc_QSlider_destroy1 :: Ptr (TQSlider a) -> CBool -> IO ()

instance Qdestroy (QSliderSc a) ((Bool)) where
 destroy x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSlider_destroy1 cobj_x0 (toCBool x1)

instance Qdestroy (QSlider ()) ((Bool, Bool)) where
 destroy x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSlider_destroy2 cobj_x0 (toCBool x1) (toCBool x2)

foreign import ccall "qtc_QSlider_destroy2" qtc_QSlider_destroy2 :: Ptr (TQSlider a) -> CBool -> CBool -> IO ()

instance Qdestroy (QSliderSc a) ((Bool, Bool)) where
 destroy x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSlider_destroy2 cobj_x0 (toCBool x1) (toCBool x2)

instance QdevType (QSlider ()) (()) where
 devType x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSlider_devType_h cobj_x0

foreign import ccall "qtc_QSlider_devType_h" qtc_QSlider_devType_h :: Ptr (TQSlider a) -> IO CInt

instance QdevType (QSliderSc a) (()) where
 devType x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSlider_devType_h cobj_x0

instance QdragEnterEvent (QSlider ()) ((QDragEnterEvent t1)) where
 dragEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSlider_dragEnterEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QSlider_dragEnterEvent_h" qtc_QSlider_dragEnterEvent_h :: Ptr (TQSlider a) -> Ptr (TQDragEnterEvent t1) -> IO ()

instance QdragEnterEvent (QSliderSc a) ((QDragEnterEvent t1)) where
 dragEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSlider_dragEnterEvent_h cobj_x0 cobj_x1

instance QdragLeaveEvent (QSlider ()) ((QDragLeaveEvent t1)) where
 dragLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSlider_dragLeaveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QSlider_dragLeaveEvent_h" qtc_QSlider_dragLeaveEvent_h :: Ptr (TQSlider a) -> Ptr (TQDragLeaveEvent t1) -> IO ()

instance QdragLeaveEvent (QSliderSc a) ((QDragLeaveEvent t1)) where
 dragLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSlider_dragLeaveEvent_h cobj_x0 cobj_x1

instance QdragMoveEvent (QSlider ()) ((QDragMoveEvent t1)) where
 dragMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSlider_dragMoveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QSlider_dragMoveEvent_h" qtc_QSlider_dragMoveEvent_h :: Ptr (TQSlider a) -> Ptr (TQDragMoveEvent t1) -> IO ()

instance QdragMoveEvent (QSliderSc a) ((QDragMoveEvent t1)) where
 dragMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSlider_dragMoveEvent_h cobj_x0 cobj_x1

instance QdropEvent (QSlider ()) ((QDropEvent t1)) where
 dropEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSlider_dropEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QSlider_dropEvent_h" qtc_QSlider_dropEvent_h :: Ptr (TQSlider a) -> Ptr (TQDropEvent t1) -> IO ()

instance QdropEvent (QSliderSc a) ((QDropEvent t1)) where
 dropEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSlider_dropEvent_h cobj_x0 cobj_x1

instance QenabledChange (QSlider ()) ((Bool)) where
 enabledChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSlider_enabledChange cobj_x0 (toCBool x1)

foreign import ccall "qtc_QSlider_enabledChange" qtc_QSlider_enabledChange :: Ptr (TQSlider a) -> CBool -> IO ()

instance QenabledChange (QSliderSc a) ((Bool)) where
 enabledChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSlider_enabledChange cobj_x0 (toCBool x1)

instance QenterEvent (QSlider ()) ((QEvent t1)) where
 enterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSlider_enterEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QSlider_enterEvent_h" qtc_QSlider_enterEvent_h :: Ptr (TQSlider a) -> Ptr (TQEvent t1) -> IO ()

instance QenterEvent (QSliderSc a) ((QEvent t1)) where
 enterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSlider_enterEvent_h cobj_x0 cobj_x1

instance QfocusInEvent (QSlider ()) ((QFocusEvent t1)) where
 focusInEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSlider_focusInEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QSlider_focusInEvent_h" qtc_QSlider_focusInEvent_h :: Ptr (TQSlider a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusInEvent (QSliderSc a) ((QFocusEvent t1)) where
 focusInEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSlider_focusInEvent_h cobj_x0 cobj_x1

instance QfocusNextChild (QSlider ()) (()) where
 focusNextChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSlider_focusNextChild cobj_x0

foreign import ccall "qtc_QSlider_focusNextChild" qtc_QSlider_focusNextChild :: Ptr (TQSlider a) -> IO CBool

instance QfocusNextChild (QSliderSc a) (()) where
 focusNextChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSlider_focusNextChild cobj_x0

instance QfocusNextPrevChild (QSlider ()) ((Bool)) where
 focusNextPrevChild x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSlider_focusNextPrevChild cobj_x0 (toCBool x1)

foreign import ccall "qtc_QSlider_focusNextPrevChild" qtc_QSlider_focusNextPrevChild :: Ptr (TQSlider a) -> CBool -> IO CBool

instance QfocusNextPrevChild (QSliderSc a) ((Bool)) where
 focusNextPrevChild x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSlider_focusNextPrevChild cobj_x0 (toCBool x1)

instance QfocusOutEvent (QSlider ()) ((QFocusEvent t1)) where
 focusOutEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSlider_focusOutEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QSlider_focusOutEvent_h" qtc_QSlider_focusOutEvent_h :: Ptr (TQSlider a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusOutEvent (QSliderSc a) ((QFocusEvent t1)) where
 focusOutEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSlider_focusOutEvent_h cobj_x0 cobj_x1

instance QfocusPreviousChild (QSlider ()) (()) where
 focusPreviousChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSlider_focusPreviousChild cobj_x0

foreign import ccall "qtc_QSlider_focusPreviousChild" qtc_QSlider_focusPreviousChild :: Ptr (TQSlider a) -> IO CBool

instance QfocusPreviousChild (QSliderSc a) (()) where
 focusPreviousChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSlider_focusPreviousChild cobj_x0

instance QfontChange (QSlider ()) ((QFont t1)) where
 fontChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSlider_fontChange cobj_x0 cobj_x1

foreign import ccall "qtc_QSlider_fontChange" qtc_QSlider_fontChange :: Ptr (TQSlider a) -> Ptr (TQFont t1) -> IO ()

instance QfontChange (QSliderSc a) ((QFont t1)) where
 fontChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSlider_fontChange cobj_x0 cobj_x1

instance QheightForWidth (QSlider ()) ((Int)) where
 heightForWidth x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSlider_heightForWidth_h cobj_x0 (toCInt x1)

foreign import ccall "qtc_QSlider_heightForWidth_h" qtc_QSlider_heightForWidth_h :: Ptr (TQSlider a) -> CInt -> IO CInt

instance QheightForWidth (QSliderSc a) ((Int)) where
 heightForWidth x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSlider_heightForWidth_h cobj_x0 (toCInt x1)

instance QhideEvent (QSlider ()) ((QHideEvent t1)) where
 hideEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSlider_hideEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QSlider_hideEvent_h" qtc_QSlider_hideEvent_h :: Ptr (TQSlider a) -> Ptr (TQHideEvent t1) -> IO ()

instance QhideEvent (QSliderSc a) ((QHideEvent t1)) where
 hideEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSlider_hideEvent_h cobj_x0 cobj_x1

instance QinputMethodEvent (QSlider ()) ((QInputMethodEvent t1)) where
 inputMethodEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSlider_inputMethodEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QSlider_inputMethodEvent" qtc_QSlider_inputMethodEvent :: Ptr (TQSlider a) -> Ptr (TQInputMethodEvent t1) -> IO ()

instance QinputMethodEvent (QSliderSc a) ((QInputMethodEvent t1)) where
 inputMethodEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSlider_inputMethodEvent cobj_x0 cobj_x1

instance QinputMethodQuery (QSlider ()) ((InputMethodQuery)) where
 inputMethodQuery x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSlider_inputMethodQuery_h cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QSlider_inputMethodQuery_h" qtc_QSlider_inputMethodQuery_h :: Ptr (TQSlider a) -> CLong -> IO (Ptr (TQVariant ()))

instance QinputMethodQuery (QSliderSc a) ((InputMethodQuery)) where
 inputMethodQuery x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSlider_inputMethodQuery_h cobj_x0 (toCLong $ qEnum_toInt x1)

instance QkeyReleaseEvent (QSlider ()) ((QKeyEvent t1)) where
 keyReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSlider_keyReleaseEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QSlider_keyReleaseEvent_h" qtc_QSlider_keyReleaseEvent_h :: Ptr (TQSlider a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyReleaseEvent (QSliderSc a) ((QKeyEvent t1)) where
 keyReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSlider_keyReleaseEvent_h cobj_x0 cobj_x1

instance QlanguageChange (QSlider ()) (()) where
 languageChange x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSlider_languageChange cobj_x0

foreign import ccall "qtc_QSlider_languageChange" qtc_QSlider_languageChange :: Ptr (TQSlider a) -> IO ()

instance QlanguageChange (QSliderSc a) (()) where
 languageChange x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSlider_languageChange cobj_x0

instance QleaveEvent (QSlider ()) ((QEvent t1)) where
 leaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSlider_leaveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QSlider_leaveEvent_h" qtc_QSlider_leaveEvent_h :: Ptr (TQSlider a) -> Ptr (TQEvent t1) -> IO ()

instance QleaveEvent (QSliderSc a) ((QEvent t1)) where
 leaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSlider_leaveEvent_h cobj_x0 cobj_x1

instance Qmetric (QSlider ()) ((PaintDeviceMetric)) where
 metric x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSlider_metric cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QSlider_metric" qtc_QSlider_metric :: Ptr (TQSlider a) -> CLong -> IO CInt

instance Qmetric (QSliderSc a) ((PaintDeviceMetric)) where
 metric x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSlider_metric cobj_x0 (toCLong $ qEnum_toInt x1)

instance QmouseDoubleClickEvent (QSlider ()) ((QMouseEvent t1)) where
 mouseDoubleClickEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSlider_mouseDoubleClickEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QSlider_mouseDoubleClickEvent_h" qtc_QSlider_mouseDoubleClickEvent_h :: Ptr (TQSlider a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseDoubleClickEvent (QSliderSc a) ((QMouseEvent t1)) where
 mouseDoubleClickEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSlider_mouseDoubleClickEvent_h cobj_x0 cobj_x1

instance Qmove (QSlider ()) ((Int, Int)) where
 move x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSlider_move1 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QSlider_move1" qtc_QSlider_move1 :: Ptr (TQSlider a) -> CInt -> CInt -> IO ()

instance Qmove (QSliderSc a) ((Int, Int)) where
 move x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSlider_move1 cobj_x0 (toCInt x1) (toCInt x2)

instance Qmove (QSlider ()) ((Point)) where
 move x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QSlider_move_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

foreign import ccall "qtc_QSlider_move_qth" qtc_QSlider_move_qth :: Ptr (TQSlider a) -> CInt -> CInt -> IO ()

instance Qmove (QSliderSc a) ((Point)) where
 move x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QSlider_move_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

instance Qqmove (QSlider ()) ((QPoint t1)) where
 qmove x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSlider_move cobj_x0 cobj_x1

foreign import ccall "qtc_QSlider_move" qtc_QSlider_move :: Ptr (TQSlider a) -> Ptr (TQPoint t1) -> IO ()

instance Qqmove (QSliderSc a) ((QPoint t1)) where
 qmove x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSlider_move cobj_x0 cobj_x1

instance QmoveEvent (QSlider ()) ((QMoveEvent t1)) where
 moveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSlider_moveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QSlider_moveEvent_h" qtc_QSlider_moveEvent_h :: Ptr (TQSlider a) -> Ptr (TQMoveEvent t1) -> IO ()

instance QmoveEvent (QSliderSc a) ((QMoveEvent t1)) where
 moveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSlider_moveEvent_h cobj_x0 cobj_x1

instance QpaintEngine (QSlider ()) (()) where
 paintEngine x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSlider_paintEngine_h cobj_x0

foreign import ccall "qtc_QSlider_paintEngine_h" qtc_QSlider_paintEngine_h :: Ptr (TQSlider a) -> IO (Ptr (TQPaintEngine ()))

instance QpaintEngine (QSliderSc a) (()) where
 paintEngine x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSlider_paintEngine_h cobj_x0

instance QpaletteChange (QSlider ()) ((QPalette t1)) where
 paletteChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSlider_paletteChange cobj_x0 cobj_x1

foreign import ccall "qtc_QSlider_paletteChange" qtc_QSlider_paletteChange :: Ptr (TQSlider a) -> Ptr (TQPalette t1) -> IO ()

instance QpaletteChange (QSliderSc a) ((QPalette t1)) where
 paletteChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSlider_paletteChange cobj_x0 cobj_x1

instance Qrepaint (QSlider ()) (()) where
 repaint x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSlider_repaint cobj_x0

foreign import ccall "qtc_QSlider_repaint" qtc_QSlider_repaint :: Ptr (TQSlider a) -> IO ()

instance Qrepaint (QSliderSc a) (()) where
 repaint x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSlider_repaint cobj_x0

instance Qrepaint (QSlider ()) ((Int, Int, Int, Int)) where
 repaint x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSlider_repaint2 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QSlider_repaint2" qtc_QSlider_repaint2 :: Ptr (TQSlider a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance Qrepaint (QSliderSc a) ((Int, Int, Int, Int)) where
 repaint x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSlider_repaint2 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

instance Qrepaint (QSlider ()) ((QRegion t1)) where
 repaint x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSlider_repaint1 cobj_x0 cobj_x1

foreign import ccall "qtc_QSlider_repaint1" qtc_QSlider_repaint1 :: Ptr (TQSlider a) -> Ptr (TQRegion t1) -> IO ()

instance Qrepaint (QSliderSc a) ((QRegion t1)) where
 repaint x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSlider_repaint1 cobj_x0 cobj_x1

instance QresetInputContext (QSlider ()) (()) where
 resetInputContext x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSlider_resetInputContext cobj_x0

foreign import ccall "qtc_QSlider_resetInputContext" qtc_QSlider_resetInputContext :: Ptr (TQSlider a) -> IO ()

instance QresetInputContext (QSliderSc a) (()) where
 resetInputContext x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSlider_resetInputContext cobj_x0

instance Qresize (QSlider ()) ((Int, Int)) (IO ()) where
 resize x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSlider_resize1 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QSlider_resize1" qtc_QSlider_resize1 :: Ptr (TQSlider a) -> CInt -> CInt -> IO ()

instance Qresize (QSliderSc a) ((Int, Int)) (IO ()) where
 resize x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSlider_resize1 cobj_x0 (toCInt x1) (toCInt x2)

instance Qqresize (QSlider ()) ((QSize t1)) where
 qresize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSlider_resize cobj_x0 cobj_x1

foreign import ccall "qtc_QSlider_resize" qtc_QSlider_resize :: Ptr (TQSlider a) -> Ptr (TQSize t1) -> IO ()

instance Qqresize (QSliderSc a) ((QSize t1)) where
 qresize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSlider_resize cobj_x0 cobj_x1

instance Qresize (QSlider ()) ((Size)) (IO ()) where
 resize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QSlider_resize_qth cobj_x0 csize_x1_w csize_x1_h 

foreign import ccall "qtc_QSlider_resize_qth" qtc_QSlider_resize_qth :: Ptr (TQSlider a) -> CInt -> CInt -> IO ()

instance Qresize (QSliderSc a) ((Size)) (IO ()) where
 resize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QSlider_resize_qth cobj_x0 csize_x1_w csize_x1_h 

instance QresizeEvent (QSlider ()) ((QResizeEvent t1)) where
 resizeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSlider_resizeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QSlider_resizeEvent_h" qtc_QSlider_resizeEvent_h :: Ptr (TQSlider a) -> Ptr (TQResizeEvent t1) -> IO ()

instance QresizeEvent (QSliderSc a) ((QResizeEvent t1)) where
 resizeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSlider_resizeEvent_h cobj_x0 cobj_x1

instance QsetGeometry (QSlider ()) ((Int, Int, Int, Int)) where
 setGeometry x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSlider_setGeometry1 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QSlider_setGeometry1" qtc_QSlider_setGeometry1 :: Ptr (TQSlider a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QsetGeometry (QSliderSc a) ((Int, Int, Int, Int)) where
 setGeometry x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSlider_setGeometry1 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

instance QqsetGeometry (QSlider ()) ((QRect t1)) where
 qsetGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSlider_setGeometry cobj_x0 cobj_x1

foreign import ccall "qtc_QSlider_setGeometry" qtc_QSlider_setGeometry :: Ptr (TQSlider a) -> Ptr (TQRect t1) -> IO ()

instance QqsetGeometry (QSliderSc a) ((QRect t1)) where
 qsetGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSlider_setGeometry cobj_x0 cobj_x1

instance QsetGeometry (QSlider ()) ((Rect)) where
 setGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QSlider_setGeometry_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

foreign import ccall "qtc_QSlider_setGeometry_qth" qtc_QSlider_setGeometry_qth :: Ptr (TQSlider a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QsetGeometry (QSliderSc a) ((Rect)) where
 setGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QSlider_setGeometry_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

instance QsetMouseTracking (QSlider ()) ((Bool)) where
 setMouseTracking x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSlider_setMouseTracking cobj_x0 (toCBool x1)

foreign import ccall "qtc_QSlider_setMouseTracking" qtc_QSlider_setMouseTracking :: Ptr (TQSlider a) -> CBool -> IO ()

instance QsetMouseTracking (QSliderSc a) ((Bool)) where
 setMouseTracking x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSlider_setMouseTracking cobj_x0 (toCBool x1)

instance QsetVisible (QSlider ()) ((Bool)) where
 setVisible x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSlider_setVisible_h cobj_x0 (toCBool x1)

foreign import ccall "qtc_QSlider_setVisible_h" qtc_QSlider_setVisible_h :: Ptr (TQSlider a) -> CBool -> IO ()

instance QsetVisible (QSliderSc a) ((Bool)) where
 setVisible x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSlider_setVisible_h cobj_x0 (toCBool x1)

instance QshowEvent (QSlider ()) ((QShowEvent t1)) where
 showEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSlider_showEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QSlider_showEvent_h" qtc_QSlider_showEvent_h :: Ptr (TQSlider a) -> Ptr (TQShowEvent t1) -> IO ()

instance QshowEvent (QSliderSc a) ((QShowEvent t1)) where
 showEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSlider_showEvent_h cobj_x0 cobj_x1

instance QtabletEvent (QSlider ()) ((QTabletEvent t1)) where
 tabletEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSlider_tabletEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QSlider_tabletEvent_h" qtc_QSlider_tabletEvent_h :: Ptr (TQSlider a) -> Ptr (TQTabletEvent t1) -> IO ()

instance QtabletEvent (QSliderSc a) ((QTabletEvent t1)) where
 tabletEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSlider_tabletEvent_h cobj_x0 cobj_x1

instance QupdateMicroFocus (QSlider ()) (()) where
 updateMicroFocus x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSlider_updateMicroFocus cobj_x0

foreign import ccall "qtc_QSlider_updateMicroFocus" qtc_QSlider_updateMicroFocus :: Ptr (TQSlider a) -> IO ()

instance QupdateMicroFocus (QSliderSc a) (()) where
 updateMicroFocus x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSlider_updateMicroFocus cobj_x0

instance QwindowActivationChange (QSlider ()) ((Bool)) where
 windowActivationChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSlider_windowActivationChange cobj_x0 (toCBool x1)

foreign import ccall "qtc_QSlider_windowActivationChange" qtc_QSlider_windowActivationChange :: Ptr (TQSlider a) -> CBool -> IO ()

instance QwindowActivationChange (QSliderSc a) ((Bool)) where
 windowActivationChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSlider_windowActivationChange cobj_x0 (toCBool x1)

instance QchildEvent (QSlider ()) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSlider_childEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QSlider_childEvent" qtc_QSlider_childEvent :: Ptr (TQSlider a) -> Ptr (TQChildEvent t1) -> IO ()

instance QchildEvent (QSliderSc a) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSlider_childEvent cobj_x0 cobj_x1

instance QconnectNotify (QSlider ()) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QSlider_connectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QSlider_connectNotify" qtc_QSlider_connectNotify :: Ptr (TQSlider a) -> CWString -> IO ()

instance QconnectNotify (QSliderSc a) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QSlider_connectNotify cobj_x0 cstr_x1

instance QcustomEvent (QSlider ()) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSlider_customEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QSlider_customEvent" qtc_QSlider_customEvent :: Ptr (TQSlider a) -> Ptr (TQEvent t1) -> IO ()

instance QcustomEvent (QSliderSc a) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSlider_customEvent cobj_x0 cobj_x1

instance QdisconnectNotify (QSlider ()) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QSlider_disconnectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QSlider_disconnectNotify" qtc_QSlider_disconnectNotify :: Ptr (TQSlider a) -> CWString -> IO ()

instance QdisconnectNotify (QSliderSc a) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QSlider_disconnectNotify cobj_x0 cstr_x1

instance QeventFilter (QSlider ()) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QSlider_eventFilter_h cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QSlider_eventFilter_h" qtc_QSlider_eventFilter_h :: Ptr (TQSlider a) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO CBool

instance QeventFilter (QSliderSc a) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QSlider_eventFilter_h cobj_x0 cobj_x1 cobj_x2

instance Qreceivers (QSlider ()) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QSlider_receivers cobj_x0 cstr_x1

foreign import ccall "qtc_QSlider_receivers" qtc_QSlider_receivers :: Ptr (TQSlider a) -> CWString -> IO CInt

instance Qreceivers (QSliderSc a) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QSlider_receivers cobj_x0 cstr_x1

instance Qsender (QSlider ()) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSlider_sender cobj_x0

foreign import ccall "qtc_QSlider_sender" qtc_QSlider_sender :: Ptr (TQSlider a) -> IO (Ptr (TQObject ()))

instance Qsender (QSliderSc a) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSlider_sender cobj_x0

