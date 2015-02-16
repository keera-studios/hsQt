{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QScrollBar.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:30
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QScrollBar (
  QqScrollBar(..)
  ,qScrollBar_delete
  ,qScrollBar_deleteLater
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

instance QuserMethod (QScrollBar ()) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QScrollBar_userMethod cobj_qobj (toCInt evid)

foreign import ccall "qtc_QScrollBar_userMethod" qtc_QScrollBar_userMethod :: Ptr (TQScrollBar a) -> CInt -> IO ()

instance QuserMethod (QScrollBarSc a) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QScrollBar_userMethod cobj_qobj (toCInt evid)

instance QuserMethod (QScrollBar ()) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QScrollBar_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

foreign import ccall "qtc_QScrollBar_userMethodVariant" qtc_QScrollBar_userMethodVariant :: Ptr (TQScrollBar a) -> CInt -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))

instance QuserMethod (QScrollBarSc a) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QScrollBar_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

class QqScrollBar x1 where
  qScrollBar :: x1 -> IO (QScrollBar ())

instance QqScrollBar (()) where
 qScrollBar ()
  = withQScrollBarResult $
    qtc_QScrollBar

foreign import ccall "qtc_QScrollBar" qtc_QScrollBar :: IO (Ptr (TQScrollBar ()))

instance QqScrollBar ((QWidget t1)) where
 qScrollBar (x1)
  = withQScrollBarResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollBar1 cobj_x1

foreign import ccall "qtc_QScrollBar1" qtc_QScrollBar1 :: Ptr (TQWidget t1) -> IO (Ptr (TQScrollBar ()))

instance QqScrollBar ((QtOrientation)) where
 qScrollBar (x1)
  = withQScrollBarResult $
    qtc_QScrollBar2 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QScrollBar2" qtc_QScrollBar2 :: CLong -> IO (Ptr (TQScrollBar ()))

instance QqScrollBar ((QtOrientation, QWidget t2)) where
 qScrollBar (x1, x2)
  = withQScrollBarResult $
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QScrollBar3 (toCLong $ qEnum_toInt x1) cobj_x2

foreign import ccall "qtc_QScrollBar3" qtc_QScrollBar3 :: CLong -> Ptr (TQWidget t2) -> IO (Ptr (TQScrollBar ()))

instance QcontextMenuEvent (QScrollBar ()) ((QContextMenuEvent t1)) where
 contextMenuEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollBar_contextMenuEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QScrollBar_contextMenuEvent_h" qtc_QScrollBar_contextMenuEvent_h :: Ptr (TQScrollBar a) -> Ptr (TQContextMenuEvent t1) -> IO ()

instance QcontextMenuEvent (QScrollBarSc a) ((QContextMenuEvent t1)) where
 contextMenuEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollBar_contextMenuEvent_h cobj_x0 cobj_x1

instance Qevent (QScrollBar ()) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollBar_event_h cobj_x0 cobj_x1

foreign import ccall "qtc_QScrollBar_event_h" qtc_QScrollBar_event_h :: Ptr (TQScrollBar a) -> Ptr (TQEvent t1) -> IO CBool

instance Qevent (QScrollBarSc a) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollBar_event_h cobj_x0 cobj_x1

instance QhideEvent (QScrollBar ()) ((QHideEvent t1)) where
 hideEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollBar_hideEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QScrollBar_hideEvent_h" qtc_QScrollBar_hideEvent_h :: Ptr (TQScrollBar a) -> Ptr (TQHideEvent t1) -> IO ()

instance QhideEvent (QScrollBarSc a) ((QHideEvent t1)) where
 hideEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollBar_hideEvent_h cobj_x0 cobj_x1

instance QinitStyleOption (QScrollBar ()) ((QStyleOptionSlider t1)) where
 initStyleOption x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollBar_initStyleOption cobj_x0 cobj_x1

foreign import ccall "qtc_QScrollBar_initStyleOption" qtc_QScrollBar_initStyleOption :: Ptr (TQScrollBar a) -> Ptr (TQStyleOptionSlider t1) -> IO ()

instance QinitStyleOption (QScrollBarSc a) ((QStyleOptionSlider t1)) where
 initStyleOption x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollBar_initStyleOption cobj_x0 cobj_x1

instance QmouseMoveEvent (QScrollBar ()) ((QMouseEvent t1)) where
 mouseMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollBar_mouseMoveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QScrollBar_mouseMoveEvent_h" qtc_QScrollBar_mouseMoveEvent_h :: Ptr (TQScrollBar a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseMoveEvent (QScrollBarSc a) ((QMouseEvent t1)) where
 mouseMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollBar_mouseMoveEvent_h cobj_x0 cobj_x1

instance QmousePressEvent (QScrollBar ()) ((QMouseEvent t1)) where
 mousePressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollBar_mousePressEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QScrollBar_mousePressEvent_h" qtc_QScrollBar_mousePressEvent_h :: Ptr (TQScrollBar a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmousePressEvent (QScrollBarSc a) ((QMouseEvent t1)) where
 mousePressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollBar_mousePressEvent_h cobj_x0 cobj_x1

instance QmouseReleaseEvent (QScrollBar ()) ((QMouseEvent t1)) where
 mouseReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollBar_mouseReleaseEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QScrollBar_mouseReleaseEvent_h" qtc_QScrollBar_mouseReleaseEvent_h :: Ptr (TQScrollBar a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseReleaseEvent (QScrollBarSc a) ((QMouseEvent t1)) where
 mouseReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollBar_mouseReleaseEvent_h cobj_x0 cobj_x1

instance QpaintEvent (QScrollBar ()) ((QPaintEvent t1)) where
 paintEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollBar_paintEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QScrollBar_paintEvent_h" qtc_QScrollBar_paintEvent_h :: Ptr (TQScrollBar a) -> Ptr (TQPaintEvent t1) -> IO ()

instance QpaintEvent (QScrollBarSc a) ((QPaintEvent t1)) where
 paintEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollBar_paintEvent_h cobj_x0 cobj_x1

instance QqsizeHint (QScrollBar ()) (()) where
 qsizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QScrollBar_sizeHint_h cobj_x0

foreign import ccall "qtc_QScrollBar_sizeHint_h" qtc_QScrollBar_sizeHint_h :: Ptr (TQScrollBar a) -> IO (Ptr (TQSize ()))

instance QqsizeHint (QScrollBarSc a) (()) where
 qsizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QScrollBar_sizeHint_h cobj_x0

instance QsizeHint (QScrollBar ()) (()) where
 sizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QScrollBar_sizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QScrollBar_sizeHint_qth_h" qtc_QScrollBar_sizeHint_qth_h :: Ptr (TQScrollBar a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QsizeHint (QScrollBarSc a) (()) where
 sizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QScrollBar_sizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

instance QsliderChange (QScrollBar ()) ((SliderChange)) where
 sliderChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QScrollBar_sliderChange_h cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QScrollBar_sliderChange_h" qtc_QScrollBar_sliderChange_h :: Ptr (TQScrollBar a) -> CLong -> IO ()

instance QsliderChange (QScrollBarSc a) ((SliderChange)) where
 sliderChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QScrollBar_sliderChange_h cobj_x0 (toCLong $ qEnum_toInt x1)

qScrollBar_delete :: QScrollBar a -> IO ()
qScrollBar_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QScrollBar_delete cobj_x0

foreign import ccall "qtc_QScrollBar_delete" qtc_QScrollBar_delete :: Ptr (TQScrollBar a) -> IO ()

qScrollBar_deleteLater :: QScrollBar a -> IO ()
qScrollBar_deleteLater x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QScrollBar_deleteLater cobj_x0

foreign import ccall "qtc_QScrollBar_deleteLater" qtc_QScrollBar_deleteLater :: Ptr (TQScrollBar a) -> IO ()

instance QchangeEvent (QScrollBar ()) ((QEvent t1)) where
 changeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollBar_changeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QScrollBar_changeEvent_h" qtc_QScrollBar_changeEvent_h :: Ptr (TQScrollBar a) -> Ptr (TQEvent t1) -> IO ()

instance QchangeEvent (QScrollBarSc a) ((QEvent t1)) where
 changeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollBar_changeEvent_h cobj_x0 cobj_x1

instance QkeyPressEvent (QScrollBar ()) ((QKeyEvent t1)) where
 keyPressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollBar_keyPressEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QScrollBar_keyPressEvent_h" qtc_QScrollBar_keyPressEvent_h :: Ptr (TQScrollBar a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyPressEvent (QScrollBarSc a) ((QKeyEvent t1)) where
 keyPressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollBar_keyPressEvent_h cobj_x0 cobj_x1

instance QrepeatAction (QScrollBar ()) (()) where
 repeatAction x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QScrollBar_repeatAction cobj_x0

foreign import ccall "qtc_QScrollBar_repeatAction" qtc_QScrollBar_repeatAction :: Ptr (TQScrollBar a) -> IO CLong

instance QrepeatAction (QScrollBarSc a) (()) where
 repeatAction x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QScrollBar_repeatAction cobj_x0

instance QsetRepeatAction (QScrollBar ()) ((SliderAction)) where
 setRepeatAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QScrollBar_setRepeatAction cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QScrollBar_setRepeatAction" qtc_QScrollBar_setRepeatAction :: Ptr (TQScrollBar a) -> CLong -> IO ()

instance QsetRepeatAction (QScrollBarSc a) ((SliderAction)) where
 setRepeatAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QScrollBar_setRepeatAction cobj_x0 (toCLong $ qEnum_toInt x1)

instance QsetRepeatAction (QScrollBar ()) ((SliderAction, Int)) where
 setRepeatAction x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QScrollBar_setRepeatAction1 cobj_x0 (toCLong $ qEnum_toInt x1) (toCInt x2)

foreign import ccall "qtc_QScrollBar_setRepeatAction1" qtc_QScrollBar_setRepeatAction1 :: Ptr (TQScrollBar a) -> CLong -> CInt -> IO ()

instance QsetRepeatAction (QScrollBarSc a) ((SliderAction, Int)) where
 setRepeatAction x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QScrollBar_setRepeatAction1 cobj_x0 (toCLong $ qEnum_toInt x1) (toCInt x2)

instance QsetRepeatAction (QScrollBar ()) ((SliderAction, Int, Int)) where
 setRepeatAction x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QScrollBar_setRepeatAction2 cobj_x0 (toCLong $ qEnum_toInt x1) (toCInt x2) (toCInt x3)

foreign import ccall "qtc_QScrollBar_setRepeatAction2" qtc_QScrollBar_setRepeatAction2 :: Ptr (TQScrollBar a) -> CLong -> CInt -> CInt -> IO ()

instance QsetRepeatAction (QScrollBarSc a) ((SliderAction, Int, Int)) where
 setRepeatAction x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QScrollBar_setRepeatAction2 cobj_x0 (toCLong $ qEnum_toInt x1) (toCInt x2) (toCInt x3)

instance QtimerEvent (QScrollBar ()) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollBar_timerEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QScrollBar_timerEvent" qtc_QScrollBar_timerEvent :: Ptr (TQScrollBar a) -> Ptr (TQTimerEvent t1) -> IO ()

instance QtimerEvent (QScrollBarSc a) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollBar_timerEvent cobj_x0 cobj_x1

instance QwheelEvent (QScrollBar ()) ((QWheelEvent t1)) where
 wheelEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollBar_wheelEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QScrollBar_wheelEvent_h" qtc_QScrollBar_wheelEvent_h :: Ptr (TQScrollBar a) -> Ptr (TQWheelEvent t1) -> IO ()

instance QwheelEvent (QScrollBarSc a) ((QWheelEvent t1)) where
 wheelEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollBar_wheelEvent_h cobj_x0 cobj_x1

instance QactionEvent (QScrollBar ()) ((QActionEvent t1)) where
 actionEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollBar_actionEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QScrollBar_actionEvent_h" qtc_QScrollBar_actionEvent_h :: Ptr (TQScrollBar a) -> Ptr (TQActionEvent t1) -> IO ()

instance QactionEvent (QScrollBarSc a) ((QActionEvent t1)) where
 actionEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollBar_actionEvent_h cobj_x0 cobj_x1

instance QaddAction (QScrollBar ()) ((QAction t1)) (IO ()) where
 addAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollBar_addAction cobj_x0 cobj_x1

foreign import ccall "qtc_QScrollBar_addAction" qtc_QScrollBar_addAction :: Ptr (TQScrollBar a) -> Ptr (TQAction t1) -> IO ()

instance QaddAction (QScrollBarSc a) ((QAction t1)) (IO ()) where
 addAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollBar_addAction cobj_x0 cobj_x1

instance QcloseEvent (QScrollBar ()) ((QCloseEvent t1)) where
 closeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollBar_closeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QScrollBar_closeEvent_h" qtc_QScrollBar_closeEvent_h :: Ptr (TQScrollBar a) -> Ptr (TQCloseEvent t1) -> IO ()

instance QcloseEvent (QScrollBarSc a) ((QCloseEvent t1)) where
 closeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollBar_closeEvent_h cobj_x0 cobj_x1

instance Qcreate (QScrollBar ()) (()) (IO ()) where
 create x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QScrollBar_create cobj_x0

foreign import ccall "qtc_QScrollBar_create" qtc_QScrollBar_create :: Ptr (TQScrollBar a) -> IO ()

instance Qcreate (QScrollBarSc a) (()) (IO ()) where
 create x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QScrollBar_create cobj_x0

instance Qcreate (QScrollBar ()) ((QVoid t1)) (IO ()) where
 create x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollBar_create1 cobj_x0 cobj_x1

foreign import ccall "qtc_QScrollBar_create1" qtc_QScrollBar_create1 :: Ptr (TQScrollBar a) -> Ptr (TQVoid t1) -> IO ()

instance Qcreate (QScrollBarSc a) ((QVoid t1)) (IO ()) where
 create x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollBar_create1 cobj_x0 cobj_x1

instance Qcreate (QScrollBar ()) ((QVoid t1, Bool)) (IO ()) where
 create x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollBar_create2 cobj_x0 cobj_x1 (toCBool x2)

foreign import ccall "qtc_QScrollBar_create2" qtc_QScrollBar_create2 :: Ptr (TQScrollBar a) -> Ptr (TQVoid t1) -> CBool -> IO ()

instance Qcreate (QScrollBarSc a) ((QVoid t1, Bool)) (IO ()) where
 create x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollBar_create2 cobj_x0 cobj_x1 (toCBool x2)

instance Qcreate (QScrollBar ()) ((QVoid t1, Bool, Bool)) (IO ()) where
 create x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollBar_create3 cobj_x0 cobj_x1 (toCBool x2) (toCBool x3)

foreign import ccall "qtc_QScrollBar_create3" qtc_QScrollBar_create3 :: Ptr (TQScrollBar a) -> Ptr (TQVoid t1) -> CBool -> CBool -> IO ()

instance Qcreate (QScrollBarSc a) ((QVoid t1, Bool, Bool)) (IO ()) where
 create x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollBar_create3 cobj_x0 cobj_x1 (toCBool x2) (toCBool x3)

instance Qdestroy (QScrollBar ()) (()) where
 destroy x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QScrollBar_destroy cobj_x0

foreign import ccall "qtc_QScrollBar_destroy" qtc_QScrollBar_destroy :: Ptr (TQScrollBar a) -> IO ()

instance Qdestroy (QScrollBarSc a) (()) where
 destroy x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QScrollBar_destroy cobj_x0

instance Qdestroy (QScrollBar ()) ((Bool)) where
 destroy x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QScrollBar_destroy1 cobj_x0 (toCBool x1)

foreign import ccall "qtc_QScrollBar_destroy1" qtc_QScrollBar_destroy1 :: Ptr (TQScrollBar a) -> CBool -> IO ()

instance Qdestroy (QScrollBarSc a) ((Bool)) where
 destroy x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QScrollBar_destroy1 cobj_x0 (toCBool x1)

instance Qdestroy (QScrollBar ()) ((Bool, Bool)) where
 destroy x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QScrollBar_destroy2 cobj_x0 (toCBool x1) (toCBool x2)

foreign import ccall "qtc_QScrollBar_destroy2" qtc_QScrollBar_destroy2 :: Ptr (TQScrollBar a) -> CBool -> CBool -> IO ()

instance Qdestroy (QScrollBarSc a) ((Bool, Bool)) where
 destroy x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QScrollBar_destroy2 cobj_x0 (toCBool x1) (toCBool x2)

instance QdevType (QScrollBar ()) (()) where
 devType x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QScrollBar_devType_h cobj_x0

foreign import ccall "qtc_QScrollBar_devType_h" qtc_QScrollBar_devType_h :: Ptr (TQScrollBar a) -> IO CInt

instance QdevType (QScrollBarSc a) (()) where
 devType x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QScrollBar_devType_h cobj_x0

instance QdragEnterEvent (QScrollBar ()) ((QDragEnterEvent t1)) where
 dragEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollBar_dragEnterEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QScrollBar_dragEnterEvent_h" qtc_QScrollBar_dragEnterEvent_h :: Ptr (TQScrollBar a) -> Ptr (TQDragEnterEvent t1) -> IO ()

instance QdragEnterEvent (QScrollBarSc a) ((QDragEnterEvent t1)) where
 dragEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollBar_dragEnterEvent_h cobj_x0 cobj_x1

instance QdragLeaveEvent (QScrollBar ()) ((QDragLeaveEvent t1)) where
 dragLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollBar_dragLeaveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QScrollBar_dragLeaveEvent_h" qtc_QScrollBar_dragLeaveEvent_h :: Ptr (TQScrollBar a) -> Ptr (TQDragLeaveEvent t1) -> IO ()

instance QdragLeaveEvent (QScrollBarSc a) ((QDragLeaveEvent t1)) where
 dragLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollBar_dragLeaveEvent_h cobj_x0 cobj_x1

instance QdragMoveEvent (QScrollBar ()) ((QDragMoveEvent t1)) where
 dragMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollBar_dragMoveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QScrollBar_dragMoveEvent_h" qtc_QScrollBar_dragMoveEvent_h :: Ptr (TQScrollBar a) -> Ptr (TQDragMoveEvent t1) -> IO ()

instance QdragMoveEvent (QScrollBarSc a) ((QDragMoveEvent t1)) where
 dragMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollBar_dragMoveEvent_h cobj_x0 cobj_x1

instance QdropEvent (QScrollBar ()) ((QDropEvent t1)) where
 dropEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollBar_dropEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QScrollBar_dropEvent_h" qtc_QScrollBar_dropEvent_h :: Ptr (TQScrollBar a) -> Ptr (TQDropEvent t1) -> IO ()

instance QdropEvent (QScrollBarSc a) ((QDropEvent t1)) where
 dropEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollBar_dropEvent_h cobj_x0 cobj_x1

instance QenabledChange (QScrollBar ()) ((Bool)) where
 enabledChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QScrollBar_enabledChange cobj_x0 (toCBool x1)

foreign import ccall "qtc_QScrollBar_enabledChange" qtc_QScrollBar_enabledChange :: Ptr (TQScrollBar a) -> CBool -> IO ()

instance QenabledChange (QScrollBarSc a) ((Bool)) where
 enabledChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QScrollBar_enabledChange cobj_x0 (toCBool x1)

instance QenterEvent (QScrollBar ()) ((QEvent t1)) where
 enterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollBar_enterEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QScrollBar_enterEvent_h" qtc_QScrollBar_enterEvent_h :: Ptr (TQScrollBar a) -> Ptr (TQEvent t1) -> IO ()

instance QenterEvent (QScrollBarSc a) ((QEvent t1)) where
 enterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollBar_enterEvent_h cobj_x0 cobj_x1

instance QfocusInEvent (QScrollBar ()) ((QFocusEvent t1)) where
 focusInEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollBar_focusInEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QScrollBar_focusInEvent_h" qtc_QScrollBar_focusInEvent_h :: Ptr (TQScrollBar a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusInEvent (QScrollBarSc a) ((QFocusEvent t1)) where
 focusInEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollBar_focusInEvent_h cobj_x0 cobj_x1

instance QfocusNextChild (QScrollBar ()) (()) where
 focusNextChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QScrollBar_focusNextChild cobj_x0

foreign import ccall "qtc_QScrollBar_focusNextChild" qtc_QScrollBar_focusNextChild :: Ptr (TQScrollBar a) -> IO CBool

instance QfocusNextChild (QScrollBarSc a) (()) where
 focusNextChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QScrollBar_focusNextChild cobj_x0

instance QfocusNextPrevChild (QScrollBar ()) ((Bool)) where
 focusNextPrevChild x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QScrollBar_focusNextPrevChild cobj_x0 (toCBool x1)

foreign import ccall "qtc_QScrollBar_focusNextPrevChild" qtc_QScrollBar_focusNextPrevChild :: Ptr (TQScrollBar a) -> CBool -> IO CBool

instance QfocusNextPrevChild (QScrollBarSc a) ((Bool)) where
 focusNextPrevChild x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QScrollBar_focusNextPrevChild cobj_x0 (toCBool x1)

instance QfocusOutEvent (QScrollBar ()) ((QFocusEvent t1)) where
 focusOutEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollBar_focusOutEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QScrollBar_focusOutEvent_h" qtc_QScrollBar_focusOutEvent_h :: Ptr (TQScrollBar a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusOutEvent (QScrollBarSc a) ((QFocusEvent t1)) where
 focusOutEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollBar_focusOutEvent_h cobj_x0 cobj_x1

instance QfocusPreviousChild (QScrollBar ()) (()) where
 focusPreviousChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QScrollBar_focusPreviousChild cobj_x0

foreign import ccall "qtc_QScrollBar_focusPreviousChild" qtc_QScrollBar_focusPreviousChild :: Ptr (TQScrollBar a) -> IO CBool

instance QfocusPreviousChild (QScrollBarSc a) (()) where
 focusPreviousChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QScrollBar_focusPreviousChild cobj_x0

instance QfontChange (QScrollBar ()) ((QFont t1)) where
 fontChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollBar_fontChange cobj_x0 cobj_x1

foreign import ccall "qtc_QScrollBar_fontChange" qtc_QScrollBar_fontChange :: Ptr (TQScrollBar a) -> Ptr (TQFont t1) -> IO ()

instance QfontChange (QScrollBarSc a) ((QFont t1)) where
 fontChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollBar_fontChange cobj_x0 cobj_x1

instance QheightForWidth (QScrollBar ()) ((Int)) where
 heightForWidth x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QScrollBar_heightForWidth_h cobj_x0 (toCInt x1)

foreign import ccall "qtc_QScrollBar_heightForWidth_h" qtc_QScrollBar_heightForWidth_h :: Ptr (TQScrollBar a) -> CInt -> IO CInt

instance QheightForWidth (QScrollBarSc a) ((Int)) where
 heightForWidth x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QScrollBar_heightForWidth_h cobj_x0 (toCInt x1)

instance QinputMethodEvent (QScrollBar ()) ((QInputMethodEvent t1)) where
 inputMethodEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollBar_inputMethodEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QScrollBar_inputMethodEvent" qtc_QScrollBar_inputMethodEvent :: Ptr (TQScrollBar a) -> Ptr (TQInputMethodEvent t1) -> IO ()

instance QinputMethodEvent (QScrollBarSc a) ((QInputMethodEvent t1)) where
 inputMethodEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollBar_inputMethodEvent cobj_x0 cobj_x1

instance QinputMethodQuery (QScrollBar ()) ((InputMethodQuery)) where
 inputMethodQuery x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QScrollBar_inputMethodQuery_h cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QScrollBar_inputMethodQuery_h" qtc_QScrollBar_inputMethodQuery_h :: Ptr (TQScrollBar a) -> CLong -> IO (Ptr (TQVariant ()))

instance QinputMethodQuery (QScrollBarSc a) ((InputMethodQuery)) where
 inputMethodQuery x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QScrollBar_inputMethodQuery_h cobj_x0 (toCLong $ qEnum_toInt x1)

instance QkeyReleaseEvent (QScrollBar ()) ((QKeyEvent t1)) where
 keyReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollBar_keyReleaseEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QScrollBar_keyReleaseEvent_h" qtc_QScrollBar_keyReleaseEvent_h :: Ptr (TQScrollBar a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyReleaseEvent (QScrollBarSc a) ((QKeyEvent t1)) where
 keyReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollBar_keyReleaseEvent_h cobj_x0 cobj_x1

instance QlanguageChange (QScrollBar ()) (()) where
 languageChange x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QScrollBar_languageChange cobj_x0

foreign import ccall "qtc_QScrollBar_languageChange" qtc_QScrollBar_languageChange :: Ptr (TQScrollBar a) -> IO ()

instance QlanguageChange (QScrollBarSc a) (()) where
 languageChange x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QScrollBar_languageChange cobj_x0

instance QleaveEvent (QScrollBar ()) ((QEvent t1)) where
 leaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollBar_leaveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QScrollBar_leaveEvent_h" qtc_QScrollBar_leaveEvent_h :: Ptr (TQScrollBar a) -> Ptr (TQEvent t1) -> IO ()

instance QleaveEvent (QScrollBarSc a) ((QEvent t1)) where
 leaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollBar_leaveEvent_h cobj_x0 cobj_x1

instance Qmetric (QScrollBar ()) ((PaintDeviceMetric)) where
 metric x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QScrollBar_metric cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QScrollBar_metric" qtc_QScrollBar_metric :: Ptr (TQScrollBar a) -> CLong -> IO CInt

instance Qmetric (QScrollBarSc a) ((PaintDeviceMetric)) where
 metric x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QScrollBar_metric cobj_x0 (toCLong $ qEnum_toInt x1)

instance QqminimumSizeHint (QScrollBar ()) (()) where
 qminimumSizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QScrollBar_minimumSizeHint_h cobj_x0

foreign import ccall "qtc_QScrollBar_minimumSizeHint_h" qtc_QScrollBar_minimumSizeHint_h :: Ptr (TQScrollBar a) -> IO (Ptr (TQSize ()))

instance QqminimumSizeHint (QScrollBarSc a) (()) where
 qminimumSizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QScrollBar_minimumSizeHint_h cobj_x0

instance QminimumSizeHint (QScrollBar ()) (()) where
 minimumSizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QScrollBar_minimumSizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QScrollBar_minimumSizeHint_qth_h" qtc_QScrollBar_minimumSizeHint_qth_h :: Ptr (TQScrollBar a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QminimumSizeHint (QScrollBarSc a) (()) where
 minimumSizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QScrollBar_minimumSizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

instance QmouseDoubleClickEvent (QScrollBar ()) ((QMouseEvent t1)) where
 mouseDoubleClickEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollBar_mouseDoubleClickEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QScrollBar_mouseDoubleClickEvent_h" qtc_QScrollBar_mouseDoubleClickEvent_h :: Ptr (TQScrollBar a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseDoubleClickEvent (QScrollBarSc a) ((QMouseEvent t1)) where
 mouseDoubleClickEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollBar_mouseDoubleClickEvent_h cobj_x0 cobj_x1

instance Qmove (QScrollBar ()) ((Int, Int)) where
 move x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QScrollBar_move1 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QScrollBar_move1" qtc_QScrollBar_move1 :: Ptr (TQScrollBar a) -> CInt -> CInt -> IO ()

instance Qmove (QScrollBarSc a) ((Int, Int)) where
 move x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QScrollBar_move1 cobj_x0 (toCInt x1) (toCInt x2)

instance Qmove (QScrollBar ()) ((Point)) where
 move x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QScrollBar_move_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

foreign import ccall "qtc_QScrollBar_move_qth" qtc_QScrollBar_move_qth :: Ptr (TQScrollBar a) -> CInt -> CInt -> IO ()

instance Qmove (QScrollBarSc a) ((Point)) where
 move x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QScrollBar_move_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

instance Qqmove (QScrollBar ()) ((QPoint t1)) where
 qmove x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollBar_move cobj_x0 cobj_x1

foreign import ccall "qtc_QScrollBar_move" qtc_QScrollBar_move :: Ptr (TQScrollBar a) -> Ptr (TQPoint t1) -> IO ()

instance Qqmove (QScrollBarSc a) ((QPoint t1)) where
 qmove x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollBar_move cobj_x0 cobj_x1

instance QmoveEvent (QScrollBar ()) ((QMoveEvent t1)) where
 moveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollBar_moveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QScrollBar_moveEvent_h" qtc_QScrollBar_moveEvent_h :: Ptr (TQScrollBar a) -> Ptr (TQMoveEvent t1) -> IO ()

instance QmoveEvent (QScrollBarSc a) ((QMoveEvent t1)) where
 moveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollBar_moveEvent_h cobj_x0 cobj_x1

instance QpaintEngine (QScrollBar ()) (()) where
 paintEngine x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QScrollBar_paintEngine_h cobj_x0

foreign import ccall "qtc_QScrollBar_paintEngine_h" qtc_QScrollBar_paintEngine_h :: Ptr (TQScrollBar a) -> IO (Ptr (TQPaintEngine ()))

instance QpaintEngine (QScrollBarSc a) (()) where
 paintEngine x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QScrollBar_paintEngine_h cobj_x0

instance QpaletteChange (QScrollBar ()) ((QPalette t1)) where
 paletteChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollBar_paletteChange cobj_x0 cobj_x1

foreign import ccall "qtc_QScrollBar_paletteChange" qtc_QScrollBar_paletteChange :: Ptr (TQScrollBar a) -> Ptr (TQPalette t1) -> IO ()

instance QpaletteChange (QScrollBarSc a) ((QPalette t1)) where
 paletteChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollBar_paletteChange cobj_x0 cobj_x1

instance Qrepaint (QScrollBar ()) (()) where
 repaint x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QScrollBar_repaint cobj_x0

foreign import ccall "qtc_QScrollBar_repaint" qtc_QScrollBar_repaint :: Ptr (TQScrollBar a) -> IO ()

instance Qrepaint (QScrollBarSc a) (()) where
 repaint x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QScrollBar_repaint cobj_x0

instance Qrepaint (QScrollBar ()) ((Int, Int, Int, Int)) where
 repaint x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QScrollBar_repaint2 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QScrollBar_repaint2" qtc_QScrollBar_repaint2 :: Ptr (TQScrollBar a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance Qrepaint (QScrollBarSc a) ((Int, Int, Int, Int)) where
 repaint x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QScrollBar_repaint2 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

instance Qrepaint (QScrollBar ()) ((QRegion t1)) where
 repaint x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollBar_repaint1 cobj_x0 cobj_x1

foreign import ccall "qtc_QScrollBar_repaint1" qtc_QScrollBar_repaint1 :: Ptr (TQScrollBar a) -> Ptr (TQRegion t1) -> IO ()

instance Qrepaint (QScrollBarSc a) ((QRegion t1)) where
 repaint x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollBar_repaint1 cobj_x0 cobj_x1

instance QresetInputContext (QScrollBar ()) (()) where
 resetInputContext x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QScrollBar_resetInputContext cobj_x0

foreign import ccall "qtc_QScrollBar_resetInputContext" qtc_QScrollBar_resetInputContext :: Ptr (TQScrollBar a) -> IO ()

instance QresetInputContext (QScrollBarSc a) (()) where
 resetInputContext x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QScrollBar_resetInputContext cobj_x0

instance Qresize (QScrollBar ()) ((Int, Int)) (IO ()) where
 resize x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QScrollBar_resize1 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QScrollBar_resize1" qtc_QScrollBar_resize1 :: Ptr (TQScrollBar a) -> CInt -> CInt -> IO ()

instance Qresize (QScrollBarSc a) ((Int, Int)) (IO ()) where
 resize x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QScrollBar_resize1 cobj_x0 (toCInt x1) (toCInt x2)

instance Qqresize (QScrollBar ()) ((QSize t1)) where
 qresize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollBar_resize cobj_x0 cobj_x1

foreign import ccall "qtc_QScrollBar_resize" qtc_QScrollBar_resize :: Ptr (TQScrollBar a) -> Ptr (TQSize t1) -> IO ()

instance Qqresize (QScrollBarSc a) ((QSize t1)) where
 qresize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollBar_resize cobj_x0 cobj_x1

instance Qresize (QScrollBar ()) ((Size)) (IO ()) where
 resize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QScrollBar_resize_qth cobj_x0 csize_x1_w csize_x1_h 

foreign import ccall "qtc_QScrollBar_resize_qth" qtc_QScrollBar_resize_qth :: Ptr (TQScrollBar a) -> CInt -> CInt -> IO ()

instance Qresize (QScrollBarSc a) ((Size)) (IO ()) where
 resize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QScrollBar_resize_qth cobj_x0 csize_x1_w csize_x1_h 

instance QresizeEvent (QScrollBar ()) ((QResizeEvent t1)) where
 resizeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollBar_resizeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QScrollBar_resizeEvent_h" qtc_QScrollBar_resizeEvent_h :: Ptr (TQScrollBar a) -> Ptr (TQResizeEvent t1) -> IO ()

instance QresizeEvent (QScrollBarSc a) ((QResizeEvent t1)) where
 resizeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollBar_resizeEvent_h cobj_x0 cobj_x1

instance QsetGeometry (QScrollBar ()) ((Int, Int, Int, Int)) where
 setGeometry x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QScrollBar_setGeometry1 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QScrollBar_setGeometry1" qtc_QScrollBar_setGeometry1 :: Ptr (TQScrollBar a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QsetGeometry (QScrollBarSc a) ((Int, Int, Int, Int)) where
 setGeometry x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QScrollBar_setGeometry1 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

instance QqsetGeometry (QScrollBar ()) ((QRect t1)) where
 qsetGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollBar_setGeometry cobj_x0 cobj_x1

foreign import ccall "qtc_QScrollBar_setGeometry" qtc_QScrollBar_setGeometry :: Ptr (TQScrollBar a) -> Ptr (TQRect t1) -> IO ()

instance QqsetGeometry (QScrollBarSc a) ((QRect t1)) where
 qsetGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollBar_setGeometry cobj_x0 cobj_x1

instance QsetGeometry (QScrollBar ()) ((Rect)) where
 setGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QScrollBar_setGeometry_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

foreign import ccall "qtc_QScrollBar_setGeometry_qth" qtc_QScrollBar_setGeometry_qth :: Ptr (TQScrollBar a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QsetGeometry (QScrollBarSc a) ((Rect)) where
 setGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QScrollBar_setGeometry_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

instance QsetMouseTracking (QScrollBar ()) ((Bool)) where
 setMouseTracking x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QScrollBar_setMouseTracking cobj_x0 (toCBool x1)

foreign import ccall "qtc_QScrollBar_setMouseTracking" qtc_QScrollBar_setMouseTracking :: Ptr (TQScrollBar a) -> CBool -> IO ()

instance QsetMouseTracking (QScrollBarSc a) ((Bool)) where
 setMouseTracking x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QScrollBar_setMouseTracking cobj_x0 (toCBool x1)

instance QsetVisible (QScrollBar ()) ((Bool)) where
 setVisible x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QScrollBar_setVisible_h cobj_x0 (toCBool x1)

foreign import ccall "qtc_QScrollBar_setVisible_h" qtc_QScrollBar_setVisible_h :: Ptr (TQScrollBar a) -> CBool -> IO ()

instance QsetVisible (QScrollBarSc a) ((Bool)) where
 setVisible x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QScrollBar_setVisible_h cobj_x0 (toCBool x1)

instance QshowEvent (QScrollBar ()) ((QShowEvent t1)) where
 showEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollBar_showEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QScrollBar_showEvent_h" qtc_QScrollBar_showEvent_h :: Ptr (TQScrollBar a) -> Ptr (TQShowEvent t1) -> IO ()

instance QshowEvent (QScrollBarSc a) ((QShowEvent t1)) where
 showEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollBar_showEvent_h cobj_x0 cobj_x1

instance QtabletEvent (QScrollBar ()) ((QTabletEvent t1)) where
 tabletEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollBar_tabletEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QScrollBar_tabletEvent_h" qtc_QScrollBar_tabletEvent_h :: Ptr (TQScrollBar a) -> Ptr (TQTabletEvent t1) -> IO ()

instance QtabletEvent (QScrollBarSc a) ((QTabletEvent t1)) where
 tabletEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollBar_tabletEvent_h cobj_x0 cobj_x1

instance QupdateMicroFocus (QScrollBar ()) (()) where
 updateMicroFocus x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QScrollBar_updateMicroFocus cobj_x0

foreign import ccall "qtc_QScrollBar_updateMicroFocus" qtc_QScrollBar_updateMicroFocus :: Ptr (TQScrollBar a) -> IO ()

instance QupdateMicroFocus (QScrollBarSc a) (()) where
 updateMicroFocus x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QScrollBar_updateMicroFocus cobj_x0

instance QwindowActivationChange (QScrollBar ()) ((Bool)) where
 windowActivationChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QScrollBar_windowActivationChange cobj_x0 (toCBool x1)

foreign import ccall "qtc_QScrollBar_windowActivationChange" qtc_QScrollBar_windowActivationChange :: Ptr (TQScrollBar a) -> CBool -> IO ()

instance QwindowActivationChange (QScrollBarSc a) ((Bool)) where
 windowActivationChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QScrollBar_windowActivationChange cobj_x0 (toCBool x1)

instance QchildEvent (QScrollBar ()) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollBar_childEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QScrollBar_childEvent" qtc_QScrollBar_childEvent :: Ptr (TQScrollBar a) -> Ptr (TQChildEvent t1) -> IO ()

instance QchildEvent (QScrollBarSc a) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollBar_childEvent cobj_x0 cobj_x1

instance QconnectNotify (QScrollBar ()) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QScrollBar_connectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QScrollBar_connectNotify" qtc_QScrollBar_connectNotify :: Ptr (TQScrollBar a) -> CWString -> IO ()

instance QconnectNotify (QScrollBarSc a) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QScrollBar_connectNotify cobj_x0 cstr_x1

instance QcustomEvent (QScrollBar ()) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollBar_customEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QScrollBar_customEvent" qtc_QScrollBar_customEvent :: Ptr (TQScrollBar a) -> Ptr (TQEvent t1) -> IO ()

instance QcustomEvent (QScrollBarSc a) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollBar_customEvent cobj_x0 cobj_x1

instance QdisconnectNotify (QScrollBar ()) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QScrollBar_disconnectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QScrollBar_disconnectNotify" qtc_QScrollBar_disconnectNotify :: Ptr (TQScrollBar a) -> CWString -> IO ()

instance QdisconnectNotify (QScrollBarSc a) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QScrollBar_disconnectNotify cobj_x0 cstr_x1

instance QeventFilter (QScrollBar ()) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QScrollBar_eventFilter_h cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QScrollBar_eventFilter_h" qtc_QScrollBar_eventFilter_h :: Ptr (TQScrollBar a) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO CBool

instance QeventFilter (QScrollBarSc a) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QScrollBar_eventFilter_h cobj_x0 cobj_x1 cobj_x2

instance Qreceivers (QScrollBar ()) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QScrollBar_receivers cobj_x0 cstr_x1

foreign import ccall "qtc_QScrollBar_receivers" qtc_QScrollBar_receivers :: Ptr (TQScrollBar a) -> CWString -> IO CInt

instance Qreceivers (QScrollBarSc a) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QScrollBar_receivers cobj_x0 cstr_x1

instance Qsender (QScrollBar ()) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QScrollBar_sender cobj_x0

foreign import ccall "qtc_QScrollBar_sender" qtc_QScrollBar_sender :: Ptr (TQScrollBar a) -> IO (Ptr (TQObject ()))

instance Qsender (QScrollBarSc a) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QScrollBar_sender cobj_x0

