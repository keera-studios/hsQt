{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QCheckBox.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:14
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QCheckBox (
  QqCheckBox(..)
  ,qCheckBox_delete
  ,qCheckBox_deleteLater
  )
  where

import Foreign.C.Types
import Qth.ClassTypes.Core
import Qtc.Enums.Base
import Qtc.Enums.Gui.QPaintDevice
import Qtc.Enums.Core.Qt

import Qtc.Classes.Base
import Qtc.Classes.Qccs
import Qtc.Classes.Core
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core
import Qtc.Classes.Gui
import Qtc.ClassTypes.Gui

instance QuserMethod (QCheckBox ()) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QCheckBox_userMethod cobj_qobj (toCInt evid)

foreign import ccall "qtc_QCheckBox_userMethod" qtc_QCheckBox_userMethod :: Ptr (TQCheckBox a) -> CInt -> IO ()

instance QuserMethod (QCheckBoxSc a) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QCheckBox_userMethod cobj_qobj (toCInt evid)

instance QuserMethod (QCheckBox ()) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QCheckBox_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

foreign import ccall "qtc_QCheckBox_userMethodVariant" qtc_QCheckBox_userMethodVariant :: Ptr (TQCheckBox a) -> CInt -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))

instance QuserMethod (QCheckBoxSc a) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QCheckBox_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

class QqCheckBox x1 where
  qCheckBox :: x1 -> IO (QCheckBox ())

instance QqCheckBox (()) where
 qCheckBox ()
  = withQCheckBoxResult $
    qtc_QCheckBox

foreign import ccall "qtc_QCheckBox" qtc_QCheckBox :: IO (Ptr (TQCheckBox ()))

instance QqCheckBox ((QWidget t1)) where
 qCheckBox (x1)
  = withQCheckBoxResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCheckBox1 cobj_x1

foreign import ccall "qtc_QCheckBox1" qtc_QCheckBox1 :: Ptr (TQWidget t1) -> IO (Ptr (TQCheckBox ()))

instance QqCheckBox ((String)) where
 qCheckBox (x1)
  = withQCheckBoxResult $
    withCWString x1 $ \cstr_x1 ->
    qtc_QCheckBox2 cstr_x1

foreign import ccall "qtc_QCheckBox2" qtc_QCheckBox2 :: CWString -> IO (Ptr (TQCheckBox ()))

instance QqCheckBox ((String, QWidget t2)) where
 qCheckBox (x1, x2)
  = withQCheckBoxResult $
    withCWString x1 $ \cstr_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QCheckBox3 cstr_x1 cobj_x2

foreign import ccall "qtc_QCheckBox3" qtc_QCheckBox3 :: CWString -> Ptr (TQWidget t2) -> IO (Ptr (TQCheckBox ()))

instance QcheckState (QCheckBox a) (()) where
 checkState x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCheckBox_checkState cobj_x0

foreign import ccall "qtc_QCheckBox_checkState" qtc_QCheckBox_checkState :: Ptr (TQCheckBox a) -> IO CLong

instance QcheckStateSet (QCheckBox ()) (()) where
 checkStateSet x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCheckBox_checkStateSet cobj_x0

foreign import ccall "qtc_QCheckBox_checkStateSet" qtc_QCheckBox_checkStateSet :: Ptr (TQCheckBox a) -> IO ()

instance QcheckStateSet (QCheckBoxSc a) (()) where
 checkStateSet x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCheckBox_checkStateSet cobj_x0

instance Qevent (QCheckBox ()) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCheckBox_event_h cobj_x0 cobj_x1

foreign import ccall "qtc_QCheckBox_event_h" qtc_QCheckBox_event_h :: Ptr (TQCheckBox a) -> Ptr (TQEvent t1) -> IO CBool

instance Qevent (QCheckBoxSc a) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCheckBox_event_h cobj_x0 cobj_x1

instance QhitButton (QCheckBox ()) ((Point)) where
 hitButton x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QCheckBox_hitButton_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

foreign import ccall "qtc_QCheckBox_hitButton_qth" qtc_QCheckBox_hitButton_qth :: Ptr (TQCheckBox a) -> CInt -> CInt -> IO CBool

instance QhitButton (QCheckBoxSc a) ((Point)) where
 hitButton x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QCheckBox_hitButton_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

instance QqhitButton (QCheckBox ()) ((QPoint t1)) where
 qhitButton x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCheckBox_hitButton cobj_x0 cobj_x1

foreign import ccall "qtc_QCheckBox_hitButton" qtc_QCheckBox_hitButton :: Ptr (TQCheckBox a) -> Ptr (TQPoint t1) -> IO CBool

instance QqhitButton (QCheckBoxSc a) ((QPoint t1)) where
 qhitButton x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCheckBox_hitButton cobj_x0 cobj_x1

instance QinitStyleOption (QCheckBox ()) ((QStyleOptionButton t1)) where
 initStyleOption x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCheckBox_initStyleOption cobj_x0 cobj_x1

foreign import ccall "qtc_QCheckBox_initStyleOption" qtc_QCheckBox_initStyleOption :: Ptr (TQCheckBox a) -> Ptr (TQStyleOptionButton t1) -> IO ()

instance QinitStyleOption (QCheckBoxSc a) ((QStyleOptionButton t1)) where
 initStyleOption x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCheckBox_initStyleOption cobj_x0 cobj_x1

instance QisTristate (QCheckBox a) (()) where
 isTristate x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCheckBox_isTristate cobj_x0

foreign import ccall "qtc_QCheckBox_isTristate" qtc_QCheckBox_isTristate :: Ptr (TQCheckBox a) -> IO CBool

instance QmouseMoveEvent (QCheckBox ()) ((QMouseEvent t1)) where
 mouseMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCheckBox_mouseMoveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QCheckBox_mouseMoveEvent_h" qtc_QCheckBox_mouseMoveEvent_h :: Ptr (TQCheckBox a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseMoveEvent (QCheckBoxSc a) ((QMouseEvent t1)) where
 mouseMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCheckBox_mouseMoveEvent_h cobj_x0 cobj_x1

instance QnextCheckState (QCheckBox ()) (()) where
 nextCheckState x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCheckBox_nextCheckState cobj_x0

foreign import ccall "qtc_QCheckBox_nextCheckState" qtc_QCheckBox_nextCheckState :: Ptr (TQCheckBox a) -> IO ()

instance QnextCheckState (QCheckBoxSc a) (()) where
 nextCheckState x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCheckBox_nextCheckState cobj_x0

instance QpaintEvent (QCheckBox ()) ((QPaintEvent t1)) where
 paintEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCheckBox_paintEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QCheckBox_paintEvent_h" qtc_QCheckBox_paintEvent_h :: Ptr (TQCheckBox a) -> Ptr (TQPaintEvent t1) -> IO ()

instance QpaintEvent (QCheckBoxSc a) ((QPaintEvent t1)) where
 paintEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCheckBox_paintEvent_h cobj_x0 cobj_x1

instance QsetCheckState (QCheckBox a) ((CheckState)) where
 setCheckState x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCheckBox_setCheckState cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QCheckBox_setCheckState" qtc_QCheckBox_setCheckState :: Ptr (TQCheckBox a) -> CLong -> IO ()

instance QsetTristate (QCheckBox a) (()) where
 setTristate x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCheckBox_setTristate cobj_x0

foreign import ccall "qtc_QCheckBox_setTristate" qtc_QCheckBox_setTristate :: Ptr (TQCheckBox a) -> IO ()

instance QsetTristate (QCheckBox a) ((Bool)) where
 setTristate x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCheckBox_setTristate1 cobj_x0 (toCBool x1)

foreign import ccall "qtc_QCheckBox_setTristate1" qtc_QCheckBox_setTristate1 :: Ptr (TQCheckBox a) -> CBool -> IO ()

instance QqsizeHint (QCheckBox ()) (()) where
 qsizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCheckBox_sizeHint_h cobj_x0

foreign import ccall "qtc_QCheckBox_sizeHint_h" qtc_QCheckBox_sizeHint_h :: Ptr (TQCheckBox a) -> IO (Ptr (TQSize ()))

instance QqsizeHint (QCheckBoxSc a) (()) where
 qsizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCheckBox_sizeHint_h cobj_x0

instance QsizeHint (QCheckBox ()) (()) where
 sizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCheckBox_sizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QCheckBox_sizeHint_qth_h" qtc_QCheckBox_sizeHint_qth_h :: Ptr (TQCheckBox a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QsizeHint (QCheckBoxSc a) (()) where
 sizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCheckBox_sizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

qCheckBox_delete :: QCheckBox a -> IO ()
qCheckBox_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCheckBox_delete cobj_x0

foreign import ccall "qtc_QCheckBox_delete" qtc_QCheckBox_delete :: Ptr (TQCheckBox a) -> IO ()

qCheckBox_deleteLater :: QCheckBox a -> IO ()
qCheckBox_deleteLater x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCheckBox_deleteLater cobj_x0

foreign import ccall "qtc_QCheckBox_deleteLater" qtc_QCheckBox_deleteLater :: Ptr (TQCheckBox a) -> IO ()

instance QchangeEvent (QCheckBox ()) ((QEvent t1)) where
 changeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCheckBox_changeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QCheckBox_changeEvent_h" qtc_QCheckBox_changeEvent_h :: Ptr (TQCheckBox a) -> Ptr (TQEvent t1) -> IO ()

instance QchangeEvent (QCheckBoxSc a) ((QEvent t1)) where
 changeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCheckBox_changeEvent_h cobj_x0 cobj_x1

instance QfocusInEvent (QCheckBox ()) ((QFocusEvent t1)) where
 focusInEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCheckBox_focusInEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QCheckBox_focusInEvent_h" qtc_QCheckBox_focusInEvent_h :: Ptr (TQCheckBox a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusInEvent (QCheckBoxSc a) ((QFocusEvent t1)) where
 focusInEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCheckBox_focusInEvent_h cobj_x0 cobj_x1

instance QfocusOutEvent (QCheckBox ()) ((QFocusEvent t1)) where
 focusOutEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCheckBox_focusOutEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QCheckBox_focusOutEvent_h" qtc_QCheckBox_focusOutEvent_h :: Ptr (TQCheckBox a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusOutEvent (QCheckBoxSc a) ((QFocusEvent t1)) where
 focusOutEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCheckBox_focusOutEvent_h cobj_x0 cobj_x1

instance QkeyPressEvent (QCheckBox ()) ((QKeyEvent t1)) where
 keyPressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCheckBox_keyPressEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QCheckBox_keyPressEvent_h" qtc_QCheckBox_keyPressEvent_h :: Ptr (TQCheckBox a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyPressEvent (QCheckBoxSc a) ((QKeyEvent t1)) where
 keyPressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCheckBox_keyPressEvent_h cobj_x0 cobj_x1

instance QkeyReleaseEvent (QCheckBox ()) ((QKeyEvent t1)) where
 keyReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCheckBox_keyReleaseEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QCheckBox_keyReleaseEvent_h" qtc_QCheckBox_keyReleaseEvent_h :: Ptr (TQCheckBox a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyReleaseEvent (QCheckBoxSc a) ((QKeyEvent t1)) where
 keyReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCheckBox_keyReleaseEvent_h cobj_x0 cobj_x1

instance QmousePressEvent (QCheckBox ()) ((QMouseEvent t1)) where
 mousePressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCheckBox_mousePressEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QCheckBox_mousePressEvent_h" qtc_QCheckBox_mousePressEvent_h :: Ptr (TQCheckBox a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmousePressEvent (QCheckBoxSc a) ((QMouseEvent t1)) where
 mousePressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCheckBox_mousePressEvent_h cobj_x0 cobj_x1

instance QmouseReleaseEvent (QCheckBox ()) ((QMouseEvent t1)) where
 mouseReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCheckBox_mouseReleaseEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QCheckBox_mouseReleaseEvent_h" qtc_QCheckBox_mouseReleaseEvent_h :: Ptr (TQCheckBox a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseReleaseEvent (QCheckBoxSc a) ((QMouseEvent t1)) where
 mouseReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCheckBox_mouseReleaseEvent_h cobj_x0 cobj_x1

instance QtimerEvent (QCheckBox ()) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCheckBox_timerEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QCheckBox_timerEvent" qtc_QCheckBox_timerEvent :: Ptr (TQCheckBox a) -> Ptr (TQTimerEvent t1) -> IO ()

instance QtimerEvent (QCheckBoxSc a) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCheckBox_timerEvent cobj_x0 cobj_x1

instance QactionEvent (QCheckBox ()) ((QActionEvent t1)) where
 actionEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCheckBox_actionEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QCheckBox_actionEvent_h" qtc_QCheckBox_actionEvent_h :: Ptr (TQCheckBox a) -> Ptr (TQActionEvent t1) -> IO ()

instance QactionEvent (QCheckBoxSc a) ((QActionEvent t1)) where
 actionEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCheckBox_actionEvent_h cobj_x0 cobj_x1

instance QaddAction (QCheckBox ()) ((QAction t1)) (IO ()) where
 addAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCheckBox_addAction cobj_x0 cobj_x1

foreign import ccall "qtc_QCheckBox_addAction" qtc_QCheckBox_addAction :: Ptr (TQCheckBox a) -> Ptr (TQAction t1) -> IO ()

instance QaddAction (QCheckBoxSc a) ((QAction t1)) (IO ()) where
 addAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCheckBox_addAction cobj_x0 cobj_x1

instance QcloseEvent (QCheckBox ()) ((QCloseEvent t1)) where
 closeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCheckBox_closeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QCheckBox_closeEvent_h" qtc_QCheckBox_closeEvent_h :: Ptr (TQCheckBox a) -> Ptr (TQCloseEvent t1) -> IO ()

instance QcloseEvent (QCheckBoxSc a) ((QCloseEvent t1)) where
 closeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCheckBox_closeEvent_h cobj_x0 cobj_x1

instance QcontextMenuEvent (QCheckBox ()) ((QContextMenuEvent t1)) where
 contextMenuEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCheckBox_contextMenuEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QCheckBox_contextMenuEvent_h" qtc_QCheckBox_contextMenuEvent_h :: Ptr (TQCheckBox a) -> Ptr (TQContextMenuEvent t1) -> IO ()

instance QcontextMenuEvent (QCheckBoxSc a) ((QContextMenuEvent t1)) where
 contextMenuEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCheckBox_contextMenuEvent_h cobj_x0 cobj_x1

instance Qcreate (QCheckBox ()) (()) (IO ()) where
 create x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCheckBox_create cobj_x0

foreign import ccall "qtc_QCheckBox_create" qtc_QCheckBox_create :: Ptr (TQCheckBox a) -> IO ()

instance Qcreate (QCheckBoxSc a) (()) (IO ()) where
 create x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCheckBox_create cobj_x0

instance Qcreate (QCheckBox ()) ((QVoid t1)) (IO ()) where
 create x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCheckBox_create1 cobj_x0 cobj_x1

foreign import ccall "qtc_QCheckBox_create1" qtc_QCheckBox_create1 :: Ptr (TQCheckBox a) -> Ptr (TQVoid t1) -> IO ()

instance Qcreate (QCheckBoxSc a) ((QVoid t1)) (IO ()) where
 create x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCheckBox_create1 cobj_x0 cobj_x1

instance Qcreate (QCheckBox ()) ((QVoid t1, Bool)) (IO ()) where
 create x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCheckBox_create2 cobj_x0 cobj_x1 (toCBool x2)

foreign import ccall "qtc_QCheckBox_create2" qtc_QCheckBox_create2 :: Ptr (TQCheckBox a) -> Ptr (TQVoid t1) -> CBool -> IO ()

instance Qcreate (QCheckBoxSc a) ((QVoid t1, Bool)) (IO ()) where
 create x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCheckBox_create2 cobj_x0 cobj_x1 (toCBool x2)

instance Qcreate (QCheckBox ()) ((QVoid t1, Bool, Bool)) (IO ()) where
 create x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCheckBox_create3 cobj_x0 cobj_x1 (toCBool x2) (toCBool x3)

foreign import ccall "qtc_QCheckBox_create3" qtc_QCheckBox_create3 :: Ptr (TQCheckBox a) -> Ptr (TQVoid t1) -> CBool -> CBool -> IO ()

instance Qcreate (QCheckBoxSc a) ((QVoid t1, Bool, Bool)) (IO ()) where
 create x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCheckBox_create3 cobj_x0 cobj_x1 (toCBool x2) (toCBool x3)

instance Qdestroy (QCheckBox ()) (()) where
 destroy x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCheckBox_destroy cobj_x0

foreign import ccall "qtc_QCheckBox_destroy" qtc_QCheckBox_destroy :: Ptr (TQCheckBox a) -> IO ()

instance Qdestroy (QCheckBoxSc a) (()) where
 destroy x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCheckBox_destroy cobj_x0

instance Qdestroy (QCheckBox ()) ((Bool)) where
 destroy x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCheckBox_destroy1 cobj_x0 (toCBool x1)

foreign import ccall "qtc_QCheckBox_destroy1" qtc_QCheckBox_destroy1 :: Ptr (TQCheckBox a) -> CBool -> IO ()

instance Qdestroy (QCheckBoxSc a) ((Bool)) where
 destroy x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCheckBox_destroy1 cobj_x0 (toCBool x1)

instance Qdestroy (QCheckBox ()) ((Bool, Bool)) where
 destroy x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCheckBox_destroy2 cobj_x0 (toCBool x1) (toCBool x2)

foreign import ccall "qtc_QCheckBox_destroy2" qtc_QCheckBox_destroy2 :: Ptr (TQCheckBox a) -> CBool -> CBool -> IO ()

instance Qdestroy (QCheckBoxSc a) ((Bool, Bool)) where
 destroy x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCheckBox_destroy2 cobj_x0 (toCBool x1) (toCBool x2)

instance QdevType (QCheckBox ()) (()) where
 devType x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCheckBox_devType_h cobj_x0

foreign import ccall "qtc_QCheckBox_devType_h" qtc_QCheckBox_devType_h :: Ptr (TQCheckBox a) -> IO CInt

instance QdevType (QCheckBoxSc a) (()) where
 devType x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCheckBox_devType_h cobj_x0

instance QdragEnterEvent (QCheckBox ()) ((QDragEnterEvent t1)) where
 dragEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCheckBox_dragEnterEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QCheckBox_dragEnterEvent_h" qtc_QCheckBox_dragEnterEvent_h :: Ptr (TQCheckBox a) -> Ptr (TQDragEnterEvent t1) -> IO ()

instance QdragEnterEvent (QCheckBoxSc a) ((QDragEnterEvent t1)) where
 dragEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCheckBox_dragEnterEvent_h cobj_x0 cobj_x1

instance QdragLeaveEvent (QCheckBox ()) ((QDragLeaveEvent t1)) where
 dragLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCheckBox_dragLeaveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QCheckBox_dragLeaveEvent_h" qtc_QCheckBox_dragLeaveEvent_h :: Ptr (TQCheckBox a) -> Ptr (TQDragLeaveEvent t1) -> IO ()

instance QdragLeaveEvent (QCheckBoxSc a) ((QDragLeaveEvent t1)) where
 dragLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCheckBox_dragLeaveEvent_h cobj_x0 cobj_x1

instance QdragMoveEvent (QCheckBox ()) ((QDragMoveEvent t1)) where
 dragMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCheckBox_dragMoveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QCheckBox_dragMoveEvent_h" qtc_QCheckBox_dragMoveEvent_h :: Ptr (TQCheckBox a) -> Ptr (TQDragMoveEvent t1) -> IO ()

instance QdragMoveEvent (QCheckBoxSc a) ((QDragMoveEvent t1)) where
 dragMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCheckBox_dragMoveEvent_h cobj_x0 cobj_x1

instance QdropEvent (QCheckBox ()) ((QDropEvent t1)) where
 dropEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCheckBox_dropEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QCheckBox_dropEvent_h" qtc_QCheckBox_dropEvent_h :: Ptr (TQCheckBox a) -> Ptr (TQDropEvent t1) -> IO ()

instance QdropEvent (QCheckBoxSc a) ((QDropEvent t1)) where
 dropEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCheckBox_dropEvent_h cobj_x0 cobj_x1

instance QenabledChange (QCheckBox ()) ((Bool)) where
 enabledChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCheckBox_enabledChange cobj_x0 (toCBool x1)

foreign import ccall "qtc_QCheckBox_enabledChange" qtc_QCheckBox_enabledChange :: Ptr (TQCheckBox a) -> CBool -> IO ()

instance QenabledChange (QCheckBoxSc a) ((Bool)) where
 enabledChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCheckBox_enabledChange cobj_x0 (toCBool x1)

instance QenterEvent (QCheckBox ()) ((QEvent t1)) where
 enterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCheckBox_enterEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QCheckBox_enterEvent_h" qtc_QCheckBox_enterEvent_h :: Ptr (TQCheckBox a) -> Ptr (TQEvent t1) -> IO ()

instance QenterEvent (QCheckBoxSc a) ((QEvent t1)) where
 enterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCheckBox_enterEvent_h cobj_x0 cobj_x1

instance QfocusNextChild (QCheckBox ()) (()) where
 focusNextChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCheckBox_focusNextChild cobj_x0

foreign import ccall "qtc_QCheckBox_focusNextChild" qtc_QCheckBox_focusNextChild :: Ptr (TQCheckBox a) -> IO CBool

instance QfocusNextChild (QCheckBoxSc a) (()) where
 focusNextChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCheckBox_focusNextChild cobj_x0

instance QfocusNextPrevChild (QCheckBox ()) ((Bool)) where
 focusNextPrevChild x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCheckBox_focusNextPrevChild cobj_x0 (toCBool x1)

foreign import ccall "qtc_QCheckBox_focusNextPrevChild" qtc_QCheckBox_focusNextPrevChild :: Ptr (TQCheckBox a) -> CBool -> IO CBool

instance QfocusNextPrevChild (QCheckBoxSc a) ((Bool)) where
 focusNextPrevChild x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCheckBox_focusNextPrevChild cobj_x0 (toCBool x1)

instance QfocusPreviousChild (QCheckBox ()) (()) where
 focusPreviousChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCheckBox_focusPreviousChild cobj_x0

foreign import ccall "qtc_QCheckBox_focusPreviousChild" qtc_QCheckBox_focusPreviousChild :: Ptr (TQCheckBox a) -> IO CBool

instance QfocusPreviousChild (QCheckBoxSc a) (()) where
 focusPreviousChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCheckBox_focusPreviousChild cobj_x0

instance QfontChange (QCheckBox ()) ((QFont t1)) where
 fontChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCheckBox_fontChange cobj_x0 cobj_x1

foreign import ccall "qtc_QCheckBox_fontChange" qtc_QCheckBox_fontChange :: Ptr (TQCheckBox a) -> Ptr (TQFont t1) -> IO ()

instance QfontChange (QCheckBoxSc a) ((QFont t1)) where
 fontChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCheckBox_fontChange cobj_x0 cobj_x1

instance QheightForWidth (QCheckBox ()) ((Int)) where
 heightForWidth x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCheckBox_heightForWidth_h cobj_x0 (toCInt x1)

foreign import ccall "qtc_QCheckBox_heightForWidth_h" qtc_QCheckBox_heightForWidth_h :: Ptr (TQCheckBox a) -> CInt -> IO CInt

instance QheightForWidth (QCheckBoxSc a) ((Int)) where
 heightForWidth x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCheckBox_heightForWidth_h cobj_x0 (toCInt x1)

instance QhideEvent (QCheckBox ()) ((QHideEvent t1)) where
 hideEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCheckBox_hideEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QCheckBox_hideEvent_h" qtc_QCheckBox_hideEvent_h :: Ptr (TQCheckBox a) -> Ptr (TQHideEvent t1) -> IO ()

instance QhideEvent (QCheckBoxSc a) ((QHideEvent t1)) where
 hideEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCheckBox_hideEvent_h cobj_x0 cobj_x1

instance QinputMethodEvent (QCheckBox ()) ((QInputMethodEvent t1)) where
 inputMethodEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCheckBox_inputMethodEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QCheckBox_inputMethodEvent" qtc_QCheckBox_inputMethodEvent :: Ptr (TQCheckBox a) -> Ptr (TQInputMethodEvent t1) -> IO ()

instance QinputMethodEvent (QCheckBoxSc a) ((QInputMethodEvent t1)) where
 inputMethodEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCheckBox_inputMethodEvent cobj_x0 cobj_x1

instance QinputMethodQuery (QCheckBox ()) ((InputMethodQuery)) where
 inputMethodQuery x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCheckBox_inputMethodQuery_h cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QCheckBox_inputMethodQuery_h" qtc_QCheckBox_inputMethodQuery_h :: Ptr (TQCheckBox a) -> CLong -> IO (Ptr (TQVariant ()))

instance QinputMethodQuery (QCheckBoxSc a) ((InputMethodQuery)) where
 inputMethodQuery x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCheckBox_inputMethodQuery_h cobj_x0 (toCLong $ qEnum_toInt x1)

instance QlanguageChange (QCheckBox ()) (()) where
 languageChange x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCheckBox_languageChange cobj_x0

foreign import ccall "qtc_QCheckBox_languageChange" qtc_QCheckBox_languageChange :: Ptr (TQCheckBox a) -> IO ()

instance QlanguageChange (QCheckBoxSc a) (()) where
 languageChange x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCheckBox_languageChange cobj_x0

instance QleaveEvent (QCheckBox ()) ((QEvent t1)) where
 leaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCheckBox_leaveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QCheckBox_leaveEvent_h" qtc_QCheckBox_leaveEvent_h :: Ptr (TQCheckBox a) -> Ptr (TQEvent t1) -> IO ()

instance QleaveEvent (QCheckBoxSc a) ((QEvent t1)) where
 leaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCheckBox_leaveEvent_h cobj_x0 cobj_x1

instance Qmetric (QCheckBox ()) ((PaintDeviceMetric)) where
 metric x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCheckBox_metric cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QCheckBox_metric" qtc_QCheckBox_metric :: Ptr (TQCheckBox a) -> CLong -> IO CInt

instance Qmetric (QCheckBoxSc a) ((PaintDeviceMetric)) where
 metric x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCheckBox_metric cobj_x0 (toCLong $ qEnum_toInt x1)

instance QqminimumSizeHint (QCheckBox ()) (()) where
 qminimumSizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCheckBox_minimumSizeHint_h cobj_x0

foreign import ccall "qtc_QCheckBox_minimumSizeHint_h" qtc_QCheckBox_minimumSizeHint_h :: Ptr (TQCheckBox a) -> IO (Ptr (TQSize ()))

instance QqminimumSizeHint (QCheckBoxSc a) (()) where
 qminimumSizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCheckBox_minimumSizeHint_h cobj_x0

instance QminimumSizeHint (QCheckBox ()) (()) where
 minimumSizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCheckBox_minimumSizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QCheckBox_minimumSizeHint_qth_h" qtc_QCheckBox_minimumSizeHint_qth_h :: Ptr (TQCheckBox a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QminimumSizeHint (QCheckBoxSc a) (()) where
 minimumSizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCheckBox_minimumSizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

instance QmouseDoubleClickEvent (QCheckBox ()) ((QMouseEvent t1)) where
 mouseDoubleClickEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCheckBox_mouseDoubleClickEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QCheckBox_mouseDoubleClickEvent_h" qtc_QCheckBox_mouseDoubleClickEvent_h :: Ptr (TQCheckBox a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseDoubleClickEvent (QCheckBoxSc a) ((QMouseEvent t1)) where
 mouseDoubleClickEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCheckBox_mouseDoubleClickEvent_h cobj_x0 cobj_x1

instance Qmove (QCheckBox ()) ((Int, Int)) where
 move x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCheckBox_move1 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QCheckBox_move1" qtc_QCheckBox_move1 :: Ptr (TQCheckBox a) -> CInt -> CInt -> IO ()

instance Qmove (QCheckBoxSc a) ((Int, Int)) where
 move x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCheckBox_move1 cobj_x0 (toCInt x1) (toCInt x2)

instance Qmove (QCheckBox ()) ((Point)) where
 move x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QCheckBox_move_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

foreign import ccall "qtc_QCheckBox_move_qth" qtc_QCheckBox_move_qth :: Ptr (TQCheckBox a) -> CInt -> CInt -> IO ()

instance Qmove (QCheckBoxSc a) ((Point)) where
 move x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QCheckBox_move_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

instance Qqmove (QCheckBox ()) ((QPoint t1)) where
 qmove x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCheckBox_move cobj_x0 cobj_x1

foreign import ccall "qtc_QCheckBox_move" qtc_QCheckBox_move :: Ptr (TQCheckBox a) -> Ptr (TQPoint t1) -> IO ()

instance Qqmove (QCheckBoxSc a) ((QPoint t1)) where
 qmove x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCheckBox_move cobj_x0 cobj_x1

instance QmoveEvent (QCheckBox ()) ((QMoveEvent t1)) where
 moveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCheckBox_moveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QCheckBox_moveEvent_h" qtc_QCheckBox_moveEvent_h :: Ptr (TQCheckBox a) -> Ptr (TQMoveEvent t1) -> IO ()

instance QmoveEvent (QCheckBoxSc a) ((QMoveEvent t1)) where
 moveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCheckBox_moveEvent_h cobj_x0 cobj_x1

instance QpaintEngine (QCheckBox ()) (()) where
 paintEngine x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCheckBox_paintEngine_h cobj_x0

foreign import ccall "qtc_QCheckBox_paintEngine_h" qtc_QCheckBox_paintEngine_h :: Ptr (TQCheckBox a) -> IO (Ptr (TQPaintEngine ()))

instance QpaintEngine (QCheckBoxSc a) (()) where
 paintEngine x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCheckBox_paintEngine_h cobj_x0

instance QpaletteChange (QCheckBox ()) ((QPalette t1)) where
 paletteChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCheckBox_paletteChange cobj_x0 cobj_x1

foreign import ccall "qtc_QCheckBox_paletteChange" qtc_QCheckBox_paletteChange :: Ptr (TQCheckBox a) -> Ptr (TQPalette t1) -> IO ()

instance QpaletteChange (QCheckBoxSc a) ((QPalette t1)) where
 paletteChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCheckBox_paletteChange cobj_x0 cobj_x1

instance Qrepaint (QCheckBox ()) (()) where
 repaint x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCheckBox_repaint cobj_x0

foreign import ccall "qtc_QCheckBox_repaint" qtc_QCheckBox_repaint :: Ptr (TQCheckBox a) -> IO ()

instance Qrepaint (QCheckBoxSc a) (()) where
 repaint x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCheckBox_repaint cobj_x0

instance Qrepaint (QCheckBox ()) ((Int, Int, Int, Int)) where
 repaint x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCheckBox_repaint2 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QCheckBox_repaint2" qtc_QCheckBox_repaint2 :: Ptr (TQCheckBox a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance Qrepaint (QCheckBoxSc a) ((Int, Int, Int, Int)) where
 repaint x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCheckBox_repaint2 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

instance Qrepaint (QCheckBox ()) ((QRegion t1)) where
 repaint x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCheckBox_repaint1 cobj_x0 cobj_x1

foreign import ccall "qtc_QCheckBox_repaint1" qtc_QCheckBox_repaint1 :: Ptr (TQCheckBox a) -> Ptr (TQRegion t1) -> IO ()

instance Qrepaint (QCheckBoxSc a) ((QRegion t1)) where
 repaint x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCheckBox_repaint1 cobj_x0 cobj_x1

instance QresetInputContext (QCheckBox ()) (()) where
 resetInputContext x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCheckBox_resetInputContext cobj_x0

foreign import ccall "qtc_QCheckBox_resetInputContext" qtc_QCheckBox_resetInputContext :: Ptr (TQCheckBox a) -> IO ()

instance QresetInputContext (QCheckBoxSc a) (()) where
 resetInputContext x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCheckBox_resetInputContext cobj_x0

instance Qresize (QCheckBox ()) ((Int, Int)) (IO ()) where
 resize x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCheckBox_resize1 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QCheckBox_resize1" qtc_QCheckBox_resize1 :: Ptr (TQCheckBox a) -> CInt -> CInt -> IO ()

instance Qresize (QCheckBoxSc a) ((Int, Int)) (IO ()) where
 resize x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCheckBox_resize1 cobj_x0 (toCInt x1) (toCInt x2)

instance Qqresize (QCheckBox ()) ((QSize t1)) where
 qresize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCheckBox_resize cobj_x0 cobj_x1

foreign import ccall "qtc_QCheckBox_resize" qtc_QCheckBox_resize :: Ptr (TQCheckBox a) -> Ptr (TQSize t1) -> IO ()

instance Qqresize (QCheckBoxSc a) ((QSize t1)) where
 qresize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCheckBox_resize cobj_x0 cobj_x1

instance Qresize (QCheckBox ()) ((Size)) (IO ()) where
 resize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QCheckBox_resize_qth cobj_x0 csize_x1_w csize_x1_h 

foreign import ccall "qtc_QCheckBox_resize_qth" qtc_QCheckBox_resize_qth :: Ptr (TQCheckBox a) -> CInt -> CInt -> IO ()

instance Qresize (QCheckBoxSc a) ((Size)) (IO ()) where
 resize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QCheckBox_resize_qth cobj_x0 csize_x1_w csize_x1_h 

instance QresizeEvent (QCheckBox ()) ((QResizeEvent t1)) where
 resizeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCheckBox_resizeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QCheckBox_resizeEvent_h" qtc_QCheckBox_resizeEvent_h :: Ptr (TQCheckBox a) -> Ptr (TQResizeEvent t1) -> IO ()

instance QresizeEvent (QCheckBoxSc a) ((QResizeEvent t1)) where
 resizeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCheckBox_resizeEvent_h cobj_x0 cobj_x1

instance QsetGeometry (QCheckBox ()) ((Int, Int, Int, Int)) where
 setGeometry x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCheckBox_setGeometry1 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QCheckBox_setGeometry1" qtc_QCheckBox_setGeometry1 :: Ptr (TQCheckBox a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QsetGeometry (QCheckBoxSc a) ((Int, Int, Int, Int)) where
 setGeometry x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCheckBox_setGeometry1 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

instance QqsetGeometry (QCheckBox ()) ((QRect t1)) where
 qsetGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCheckBox_setGeometry cobj_x0 cobj_x1

foreign import ccall "qtc_QCheckBox_setGeometry" qtc_QCheckBox_setGeometry :: Ptr (TQCheckBox a) -> Ptr (TQRect t1) -> IO ()

instance QqsetGeometry (QCheckBoxSc a) ((QRect t1)) where
 qsetGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCheckBox_setGeometry cobj_x0 cobj_x1

instance QsetGeometry (QCheckBox ()) ((Rect)) where
 setGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QCheckBox_setGeometry_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

foreign import ccall "qtc_QCheckBox_setGeometry_qth" qtc_QCheckBox_setGeometry_qth :: Ptr (TQCheckBox a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QsetGeometry (QCheckBoxSc a) ((Rect)) where
 setGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QCheckBox_setGeometry_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

instance QsetMouseTracking (QCheckBox ()) ((Bool)) where
 setMouseTracking x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCheckBox_setMouseTracking cobj_x0 (toCBool x1)

foreign import ccall "qtc_QCheckBox_setMouseTracking" qtc_QCheckBox_setMouseTracking :: Ptr (TQCheckBox a) -> CBool -> IO ()

instance QsetMouseTracking (QCheckBoxSc a) ((Bool)) where
 setMouseTracking x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCheckBox_setMouseTracking cobj_x0 (toCBool x1)

instance QsetVisible (QCheckBox ()) ((Bool)) where
 setVisible x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCheckBox_setVisible_h cobj_x0 (toCBool x1)

foreign import ccall "qtc_QCheckBox_setVisible_h" qtc_QCheckBox_setVisible_h :: Ptr (TQCheckBox a) -> CBool -> IO ()

instance QsetVisible (QCheckBoxSc a) ((Bool)) where
 setVisible x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCheckBox_setVisible_h cobj_x0 (toCBool x1)

instance QshowEvent (QCheckBox ()) ((QShowEvent t1)) where
 showEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCheckBox_showEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QCheckBox_showEvent_h" qtc_QCheckBox_showEvent_h :: Ptr (TQCheckBox a) -> Ptr (TQShowEvent t1) -> IO ()

instance QshowEvent (QCheckBoxSc a) ((QShowEvent t1)) where
 showEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCheckBox_showEvent_h cobj_x0 cobj_x1

instance QtabletEvent (QCheckBox ()) ((QTabletEvent t1)) where
 tabletEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCheckBox_tabletEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QCheckBox_tabletEvent_h" qtc_QCheckBox_tabletEvent_h :: Ptr (TQCheckBox a) -> Ptr (TQTabletEvent t1) -> IO ()

instance QtabletEvent (QCheckBoxSc a) ((QTabletEvent t1)) where
 tabletEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCheckBox_tabletEvent_h cobj_x0 cobj_x1

instance QupdateMicroFocus (QCheckBox ()) (()) where
 updateMicroFocus x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCheckBox_updateMicroFocus cobj_x0

foreign import ccall "qtc_QCheckBox_updateMicroFocus" qtc_QCheckBox_updateMicroFocus :: Ptr (TQCheckBox a) -> IO ()

instance QupdateMicroFocus (QCheckBoxSc a) (()) where
 updateMicroFocus x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCheckBox_updateMicroFocus cobj_x0

instance QwheelEvent (QCheckBox ()) ((QWheelEvent t1)) where
 wheelEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCheckBox_wheelEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QCheckBox_wheelEvent_h" qtc_QCheckBox_wheelEvent_h :: Ptr (TQCheckBox a) -> Ptr (TQWheelEvent t1) -> IO ()

instance QwheelEvent (QCheckBoxSc a) ((QWheelEvent t1)) where
 wheelEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCheckBox_wheelEvent_h cobj_x0 cobj_x1

instance QwindowActivationChange (QCheckBox ()) ((Bool)) where
 windowActivationChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCheckBox_windowActivationChange cobj_x0 (toCBool x1)

foreign import ccall "qtc_QCheckBox_windowActivationChange" qtc_QCheckBox_windowActivationChange :: Ptr (TQCheckBox a) -> CBool -> IO ()

instance QwindowActivationChange (QCheckBoxSc a) ((Bool)) where
 windowActivationChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCheckBox_windowActivationChange cobj_x0 (toCBool x1)

instance QchildEvent (QCheckBox ()) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCheckBox_childEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QCheckBox_childEvent" qtc_QCheckBox_childEvent :: Ptr (TQCheckBox a) -> Ptr (TQChildEvent t1) -> IO ()

instance QchildEvent (QCheckBoxSc a) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCheckBox_childEvent cobj_x0 cobj_x1

instance QconnectNotify (QCheckBox ()) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QCheckBox_connectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QCheckBox_connectNotify" qtc_QCheckBox_connectNotify :: Ptr (TQCheckBox a) -> CWString -> IO ()

instance QconnectNotify (QCheckBoxSc a) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QCheckBox_connectNotify cobj_x0 cstr_x1

instance QcustomEvent (QCheckBox ()) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCheckBox_customEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QCheckBox_customEvent" qtc_QCheckBox_customEvent :: Ptr (TQCheckBox a) -> Ptr (TQEvent t1) -> IO ()

instance QcustomEvent (QCheckBoxSc a) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCheckBox_customEvent cobj_x0 cobj_x1

instance QdisconnectNotify (QCheckBox ()) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QCheckBox_disconnectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QCheckBox_disconnectNotify" qtc_QCheckBox_disconnectNotify :: Ptr (TQCheckBox a) -> CWString -> IO ()

instance QdisconnectNotify (QCheckBoxSc a) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QCheckBox_disconnectNotify cobj_x0 cstr_x1

instance QeventFilter (QCheckBox ()) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QCheckBox_eventFilter_h cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QCheckBox_eventFilter_h" qtc_QCheckBox_eventFilter_h :: Ptr (TQCheckBox a) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO CBool

instance QeventFilter (QCheckBoxSc a) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QCheckBox_eventFilter_h cobj_x0 cobj_x1 cobj_x2

instance Qreceivers (QCheckBox ()) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QCheckBox_receivers cobj_x0 cstr_x1

foreign import ccall "qtc_QCheckBox_receivers" qtc_QCheckBox_receivers :: Ptr (TQCheckBox a) -> CWString -> IO CInt

instance Qreceivers (QCheckBoxSc a) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QCheckBox_receivers cobj_x0 cstr_x1

instance Qsender (QCheckBox ()) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCheckBox_sender cobj_x0

foreign import ccall "qtc_QCheckBox_sender" qtc_QCheckBox_sender :: Ptr (TQCheckBox a) -> IO (Ptr (TQObject ()))

instance Qsender (QCheckBoxSc a) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCheckBox_sender cobj_x0

