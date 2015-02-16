{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QRadioButton.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:15
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QRadioButton (
  QqRadioButton(..)
  ,qRadioButton_delete
  ,qRadioButton_deleteLater
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

instance QuserMethod (QRadioButton ()) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QRadioButton_userMethod cobj_qobj (toCInt evid)

foreign import ccall "qtc_QRadioButton_userMethod" qtc_QRadioButton_userMethod :: Ptr (TQRadioButton a) -> CInt -> IO ()

instance QuserMethod (QRadioButtonSc a) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QRadioButton_userMethod cobj_qobj (toCInt evid)

instance QuserMethod (QRadioButton ()) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QRadioButton_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

foreign import ccall "qtc_QRadioButton_userMethodVariant" qtc_QRadioButton_userMethodVariant :: Ptr (TQRadioButton a) -> CInt -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))

instance QuserMethod (QRadioButtonSc a) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QRadioButton_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

class QqRadioButton x1 where
  qRadioButton :: x1 -> IO (QRadioButton ())

instance QqRadioButton (()) where
 qRadioButton ()
  = withQRadioButtonResult $
    qtc_QRadioButton

foreign import ccall "qtc_QRadioButton" qtc_QRadioButton :: IO (Ptr (TQRadioButton ()))

instance QqRadioButton ((QWidget t1)) where
 qRadioButton (x1)
  = withQRadioButtonResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRadioButton1 cobj_x1

foreign import ccall "qtc_QRadioButton1" qtc_QRadioButton1 :: Ptr (TQWidget t1) -> IO (Ptr (TQRadioButton ()))

instance QqRadioButton ((String)) where
 qRadioButton (x1)
  = withQRadioButtonResult $
    withCWString x1 $ \cstr_x1 ->
    qtc_QRadioButton2 cstr_x1

foreign import ccall "qtc_QRadioButton2" qtc_QRadioButton2 :: CWString -> IO (Ptr (TQRadioButton ()))

instance QqRadioButton ((String, QWidget t2)) where
 qRadioButton (x1, x2)
  = withQRadioButtonResult $
    withCWString x1 $ \cstr_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QRadioButton3 cstr_x1 cobj_x2

foreign import ccall "qtc_QRadioButton3" qtc_QRadioButton3 :: CWString -> Ptr (TQWidget t2) -> IO (Ptr (TQRadioButton ()))

instance Qevent (QRadioButton ()) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRadioButton_event_h cobj_x0 cobj_x1

foreign import ccall "qtc_QRadioButton_event_h" qtc_QRadioButton_event_h :: Ptr (TQRadioButton a) -> Ptr (TQEvent t1) -> IO CBool

instance Qevent (QRadioButtonSc a) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRadioButton_event_h cobj_x0 cobj_x1

instance QhitButton (QRadioButton ()) ((Point)) where
 hitButton x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QRadioButton_hitButton_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

foreign import ccall "qtc_QRadioButton_hitButton_qth" qtc_QRadioButton_hitButton_qth :: Ptr (TQRadioButton a) -> CInt -> CInt -> IO CBool

instance QhitButton (QRadioButtonSc a) ((Point)) where
 hitButton x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QRadioButton_hitButton_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

instance QqhitButton (QRadioButton ()) ((QPoint t1)) where
 qhitButton x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRadioButton_hitButton cobj_x0 cobj_x1

foreign import ccall "qtc_QRadioButton_hitButton" qtc_QRadioButton_hitButton :: Ptr (TQRadioButton a) -> Ptr (TQPoint t1) -> IO CBool

instance QqhitButton (QRadioButtonSc a) ((QPoint t1)) where
 qhitButton x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRadioButton_hitButton cobj_x0 cobj_x1

instance QinitStyleOption (QRadioButton ()) ((QStyleOptionButton t1)) where
 initStyleOption x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRadioButton_initStyleOption cobj_x0 cobj_x1

foreign import ccall "qtc_QRadioButton_initStyleOption" qtc_QRadioButton_initStyleOption :: Ptr (TQRadioButton a) -> Ptr (TQStyleOptionButton t1) -> IO ()

instance QinitStyleOption (QRadioButtonSc a) ((QStyleOptionButton t1)) where
 initStyleOption x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRadioButton_initStyleOption cobj_x0 cobj_x1

instance QmouseMoveEvent (QRadioButton ()) ((QMouseEvent t1)) where
 mouseMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRadioButton_mouseMoveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QRadioButton_mouseMoveEvent_h" qtc_QRadioButton_mouseMoveEvent_h :: Ptr (TQRadioButton a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseMoveEvent (QRadioButtonSc a) ((QMouseEvent t1)) where
 mouseMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRadioButton_mouseMoveEvent_h cobj_x0 cobj_x1

instance QpaintEvent (QRadioButton ()) ((QPaintEvent t1)) where
 paintEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRadioButton_paintEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QRadioButton_paintEvent_h" qtc_QRadioButton_paintEvent_h :: Ptr (TQRadioButton a) -> Ptr (TQPaintEvent t1) -> IO ()

instance QpaintEvent (QRadioButtonSc a) ((QPaintEvent t1)) where
 paintEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRadioButton_paintEvent_h cobj_x0 cobj_x1

instance QqsizeHint (QRadioButton ()) (()) where
 qsizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRadioButton_sizeHint_h cobj_x0

foreign import ccall "qtc_QRadioButton_sizeHint_h" qtc_QRadioButton_sizeHint_h :: Ptr (TQRadioButton a) -> IO (Ptr (TQSize ()))

instance QqsizeHint (QRadioButtonSc a) (()) where
 qsizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRadioButton_sizeHint_h cobj_x0

instance QsizeHint (QRadioButton ()) (()) where
 sizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRadioButton_sizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QRadioButton_sizeHint_qth_h" qtc_QRadioButton_sizeHint_qth_h :: Ptr (TQRadioButton a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QsizeHint (QRadioButtonSc a) (()) where
 sizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRadioButton_sizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

qRadioButton_delete :: QRadioButton a -> IO ()
qRadioButton_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRadioButton_delete cobj_x0

foreign import ccall "qtc_QRadioButton_delete" qtc_QRadioButton_delete :: Ptr (TQRadioButton a) -> IO ()

qRadioButton_deleteLater :: QRadioButton a -> IO ()
qRadioButton_deleteLater x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRadioButton_deleteLater cobj_x0

foreign import ccall "qtc_QRadioButton_deleteLater" qtc_QRadioButton_deleteLater :: Ptr (TQRadioButton a) -> IO ()

instance QchangeEvent (QRadioButton ()) ((QEvent t1)) where
 changeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRadioButton_changeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QRadioButton_changeEvent_h" qtc_QRadioButton_changeEvent_h :: Ptr (TQRadioButton a) -> Ptr (TQEvent t1) -> IO ()

instance QchangeEvent (QRadioButtonSc a) ((QEvent t1)) where
 changeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRadioButton_changeEvent_h cobj_x0 cobj_x1

instance QcheckStateSet (QRadioButton ()) (()) where
 checkStateSet x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRadioButton_checkStateSet cobj_x0

foreign import ccall "qtc_QRadioButton_checkStateSet" qtc_QRadioButton_checkStateSet :: Ptr (TQRadioButton a) -> IO ()

instance QcheckStateSet (QRadioButtonSc a) (()) where
 checkStateSet x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRadioButton_checkStateSet cobj_x0

instance QfocusInEvent (QRadioButton ()) ((QFocusEvent t1)) where
 focusInEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRadioButton_focusInEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QRadioButton_focusInEvent_h" qtc_QRadioButton_focusInEvent_h :: Ptr (TQRadioButton a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusInEvent (QRadioButtonSc a) ((QFocusEvent t1)) where
 focusInEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRadioButton_focusInEvent_h cobj_x0 cobj_x1

instance QfocusOutEvent (QRadioButton ()) ((QFocusEvent t1)) where
 focusOutEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRadioButton_focusOutEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QRadioButton_focusOutEvent_h" qtc_QRadioButton_focusOutEvent_h :: Ptr (TQRadioButton a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusOutEvent (QRadioButtonSc a) ((QFocusEvent t1)) where
 focusOutEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRadioButton_focusOutEvent_h cobj_x0 cobj_x1

instance QkeyPressEvent (QRadioButton ()) ((QKeyEvent t1)) where
 keyPressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRadioButton_keyPressEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QRadioButton_keyPressEvent_h" qtc_QRadioButton_keyPressEvent_h :: Ptr (TQRadioButton a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyPressEvent (QRadioButtonSc a) ((QKeyEvent t1)) where
 keyPressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRadioButton_keyPressEvent_h cobj_x0 cobj_x1

instance QkeyReleaseEvent (QRadioButton ()) ((QKeyEvent t1)) where
 keyReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRadioButton_keyReleaseEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QRadioButton_keyReleaseEvent_h" qtc_QRadioButton_keyReleaseEvent_h :: Ptr (TQRadioButton a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyReleaseEvent (QRadioButtonSc a) ((QKeyEvent t1)) where
 keyReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRadioButton_keyReleaseEvent_h cobj_x0 cobj_x1

instance QmousePressEvent (QRadioButton ()) ((QMouseEvent t1)) where
 mousePressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRadioButton_mousePressEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QRadioButton_mousePressEvent_h" qtc_QRadioButton_mousePressEvent_h :: Ptr (TQRadioButton a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmousePressEvent (QRadioButtonSc a) ((QMouseEvent t1)) where
 mousePressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRadioButton_mousePressEvent_h cobj_x0 cobj_x1

instance QmouseReleaseEvent (QRadioButton ()) ((QMouseEvent t1)) where
 mouseReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRadioButton_mouseReleaseEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QRadioButton_mouseReleaseEvent_h" qtc_QRadioButton_mouseReleaseEvent_h :: Ptr (TQRadioButton a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseReleaseEvent (QRadioButtonSc a) ((QMouseEvent t1)) where
 mouseReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRadioButton_mouseReleaseEvent_h cobj_x0 cobj_x1

instance QnextCheckState (QRadioButton ()) (()) where
 nextCheckState x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRadioButton_nextCheckState cobj_x0

foreign import ccall "qtc_QRadioButton_nextCheckState" qtc_QRadioButton_nextCheckState :: Ptr (TQRadioButton a) -> IO ()

instance QnextCheckState (QRadioButtonSc a) (()) where
 nextCheckState x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRadioButton_nextCheckState cobj_x0

instance QtimerEvent (QRadioButton ()) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRadioButton_timerEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QRadioButton_timerEvent" qtc_QRadioButton_timerEvent :: Ptr (TQRadioButton a) -> Ptr (TQTimerEvent t1) -> IO ()

instance QtimerEvent (QRadioButtonSc a) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRadioButton_timerEvent cobj_x0 cobj_x1

instance QactionEvent (QRadioButton ()) ((QActionEvent t1)) where
 actionEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRadioButton_actionEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QRadioButton_actionEvent_h" qtc_QRadioButton_actionEvent_h :: Ptr (TQRadioButton a) -> Ptr (TQActionEvent t1) -> IO ()

instance QactionEvent (QRadioButtonSc a) ((QActionEvent t1)) where
 actionEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRadioButton_actionEvent_h cobj_x0 cobj_x1

instance QaddAction (QRadioButton ()) ((QAction t1)) (IO ()) where
 addAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRadioButton_addAction cobj_x0 cobj_x1

foreign import ccall "qtc_QRadioButton_addAction" qtc_QRadioButton_addAction :: Ptr (TQRadioButton a) -> Ptr (TQAction t1) -> IO ()

instance QaddAction (QRadioButtonSc a) ((QAction t1)) (IO ()) where
 addAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRadioButton_addAction cobj_x0 cobj_x1

instance QcloseEvent (QRadioButton ()) ((QCloseEvent t1)) where
 closeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRadioButton_closeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QRadioButton_closeEvent_h" qtc_QRadioButton_closeEvent_h :: Ptr (TQRadioButton a) -> Ptr (TQCloseEvent t1) -> IO ()

instance QcloseEvent (QRadioButtonSc a) ((QCloseEvent t1)) where
 closeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRadioButton_closeEvent_h cobj_x0 cobj_x1

instance QcontextMenuEvent (QRadioButton ()) ((QContextMenuEvent t1)) where
 contextMenuEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRadioButton_contextMenuEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QRadioButton_contextMenuEvent_h" qtc_QRadioButton_contextMenuEvent_h :: Ptr (TQRadioButton a) -> Ptr (TQContextMenuEvent t1) -> IO ()

instance QcontextMenuEvent (QRadioButtonSc a) ((QContextMenuEvent t1)) where
 contextMenuEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRadioButton_contextMenuEvent_h cobj_x0 cobj_x1

instance Qcreate (QRadioButton ()) (()) (IO ()) where
 create x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRadioButton_create cobj_x0

foreign import ccall "qtc_QRadioButton_create" qtc_QRadioButton_create :: Ptr (TQRadioButton a) -> IO ()

instance Qcreate (QRadioButtonSc a) (()) (IO ()) where
 create x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRadioButton_create cobj_x0

instance Qcreate (QRadioButton ()) ((QVoid t1)) (IO ()) where
 create x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRadioButton_create1 cobj_x0 cobj_x1

foreign import ccall "qtc_QRadioButton_create1" qtc_QRadioButton_create1 :: Ptr (TQRadioButton a) -> Ptr (TQVoid t1) -> IO ()

instance Qcreate (QRadioButtonSc a) ((QVoid t1)) (IO ()) where
 create x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRadioButton_create1 cobj_x0 cobj_x1

instance Qcreate (QRadioButton ()) ((QVoid t1, Bool)) (IO ()) where
 create x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRadioButton_create2 cobj_x0 cobj_x1 (toCBool x2)

foreign import ccall "qtc_QRadioButton_create2" qtc_QRadioButton_create2 :: Ptr (TQRadioButton a) -> Ptr (TQVoid t1) -> CBool -> IO ()

instance Qcreate (QRadioButtonSc a) ((QVoid t1, Bool)) (IO ()) where
 create x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRadioButton_create2 cobj_x0 cobj_x1 (toCBool x2)

instance Qcreate (QRadioButton ()) ((QVoid t1, Bool, Bool)) (IO ()) where
 create x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRadioButton_create3 cobj_x0 cobj_x1 (toCBool x2) (toCBool x3)

foreign import ccall "qtc_QRadioButton_create3" qtc_QRadioButton_create3 :: Ptr (TQRadioButton a) -> Ptr (TQVoid t1) -> CBool -> CBool -> IO ()

instance Qcreate (QRadioButtonSc a) ((QVoid t1, Bool, Bool)) (IO ()) where
 create x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRadioButton_create3 cobj_x0 cobj_x1 (toCBool x2) (toCBool x3)

instance Qdestroy (QRadioButton ()) (()) where
 destroy x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRadioButton_destroy cobj_x0

foreign import ccall "qtc_QRadioButton_destroy" qtc_QRadioButton_destroy :: Ptr (TQRadioButton a) -> IO ()

instance Qdestroy (QRadioButtonSc a) (()) where
 destroy x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRadioButton_destroy cobj_x0

instance Qdestroy (QRadioButton ()) ((Bool)) where
 destroy x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRadioButton_destroy1 cobj_x0 (toCBool x1)

foreign import ccall "qtc_QRadioButton_destroy1" qtc_QRadioButton_destroy1 :: Ptr (TQRadioButton a) -> CBool -> IO ()

instance Qdestroy (QRadioButtonSc a) ((Bool)) where
 destroy x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRadioButton_destroy1 cobj_x0 (toCBool x1)

instance Qdestroy (QRadioButton ()) ((Bool, Bool)) where
 destroy x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRadioButton_destroy2 cobj_x0 (toCBool x1) (toCBool x2)

foreign import ccall "qtc_QRadioButton_destroy2" qtc_QRadioButton_destroy2 :: Ptr (TQRadioButton a) -> CBool -> CBool -> IO ()

instance Qdestroy (QRadioButtonSc a) ((Bool, Bool)) where
 destroy x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRadioButton_destroy2 cobj_x0 (toCBool x1) (toCBool x2)

instance QdevType (QRadioButton ()) (()) where
 devType x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRadioButton_devType_h cobj_x0

foreign import ccall "qtc_QRadioButton_devType_h" qtc_QRadioButton_devType_h :: Ptr (TQRadioButton a) -> IO CInt

instance QdevType (QRadioButtonSc a) (()) where
 devType x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRadioButton_devType_h cobj_x0

instance QdragEnterEvent (QRadioButton ()) ((QDragEnterEvent t1)) where
 dragEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRadioButton_dragEnterEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QRadioButton_dragEnterEvent_h" qtc_QRadioButton_dragEnterEvent_h :: Ptr (TQRadioButton a) -> Ptr (TQDragEnterEvent t1) -> IO ()

instance QdragEnterEvent (QRadioButtonSc a) ((QDragEnterEvent t1)) where
 dragEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRadioButton_dragEnterEvent_h cobj_x0 cobj_x1

instance QdragLeaveEvent (QRadioButton ()) ((QDragLeaveEvent t1)) where
 dragLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRadioButton_dragLeaveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QRadioButton_dragLeaveEvent_h" qtc_QRadioButton_dragLeaveEvent_h :: Ptr (TQRadioButton a) -> Ptr (TQDragLeaveEvent t1) -> IO ()

instance QdragLeaveEvent (QRadioButtonSc a) ((QDragLeaveEvent t1)) where
 dragLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRadioButton_dragLeaveEvent_h cobj_x0 cobj_x1

instance QdragMoveEvent (QRadioButton ()) ((QDragMoveEvent t1)) where
 dragMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRadioButton_dragMoveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QRadioButton_dragMoveEvent_h" qtc_QRadioButton_dragMoveEvent_h :: Ptr (TQRadioButton a) -> Ptr (TQDragMoveEvent t1) -> IO ()

instance QdragMoveEvent (QRadioButtonSc a) ((QDragMoveEvent t1)) where
 dragMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRadioButton_dragMoveEvent_h cobj_x0 cobj_x1

instance QdropEvent (QRadioButton ()) ((QDropEvent t1)) where
 dropEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRadioButton_dropEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QRadioButton_dropEvent_h" qtc_QRadioButton_dropEvent_h :: Ptr (TQRadioButton a) -> Ptr (TQDropEvent t1) -> IO ()

instance QdropEvent (QRadioButtonSc a) ((QDropEvent t1)) where
 dropEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRadioButton_dropEvent_h cobj_x0 cobj_x1

instance QenabledChange (QRadioButton ()) ((Bool)) where
 enabledChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRadioButton_enabledChange cobj_x0 (toCBool x1)

foreign import ccall "qtc_QRadioButton_enabledChange" qtc_QRadioButton_enabledChange :: Ptr (TQRadioButton a) -> CBool -> IO ()

instance QenabledChange (QRadioButtonSc a) ((Bool)) where
 enabledChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRadioButton_enabledChange cobj_x0 (toCBool x1)

instance QenterEvent (QRadioButton ()) ((QEvent t1)) where
 enterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRadioButton_enterEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QRadioButton_enterEvent_h" qtc_QRadioButton_enterEvent_h :: Ptr (TQRadioButton a) -> Ptr (TQEvent t1) -> IO ()

instance QenterEvent (QRadioButtonSc a) ((QEvent t1)) where
 enterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRadioButton_enterEvent_h cobj_x0 cobj_x1

instance QfocusNextChild (QRadioButton ()) (()) where
 focusNextChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRadioButton_focusNextChild cobj_x0

foreign import ccall "qtc_QRadioButton_focusNextChild" qtc_QRadioButton_focusNextChild :: Ptr (TQRadioButton a) -> IO CBool

instance QfocusNextChild (QRadioButtonSc a) (()) where
 focusNextChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRadioButton_focusNextChild cobj_x0

instance QfocusNextPrevChild (QRadioButton ()) ((Bool)) where
 focusNextPrevChild x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRadioButton_focusNextPrevChild cobj_x0 (toCBool x1)

foreign import ccall "qtc_QRadioButton_focusNextPrevChild" qtc_QRadioButton_focusNextPrevChild :: Ptr (TQRadioButton a) -> CBool -> IO CBool

instance QfocusNextPrevChild (QRadioButtonSc a) ((Bool)) where
 focusNextPrevChild x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRadioButton_focusNextPrevChild cobj_x0 (toCBool x1)

instance QfocusPreviousChild (QRadioButton ()) (()) where
 focusPreviousChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRadioButton_focusPreviousChild cobj_x0

foreign import ccall "qtc_QRadioButton_focusPreviousChild" qtc_QRadioButton_focusPreviousChild :: Ptr (TQRadioButton a) -> IO CBool

instance QfocusPreviousChild (QRadioButtonSc a) (()) where
 focusPreviousChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRadioButton_focusPreviousChild cobj_x0

instance QfontChange (QRadioButton ()) ((QFont t1)) where
 fontChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRadioButton_fontChange cobj_x0 cobj_x1

foreign import ccall "qtc_QRadioButton_fontChange" qtc_QRadioButton_fontChange :: Ptr (TQRadioButton a) -> Ptr (TQFont t1) -> IO ()

instance QfontChange (QRadioButtonSc a) ((QFont t1)) where
 fontChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRadioButton_fontChange cobj_x0 cobj_x1

instance QheightForWidth (QRadioButton ()) ((Int)) where
 heightForWidth x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRadioButton_heightForWidth_h cobj_x0 (toCInt x1)

foreign import ccall "qtc_QRadioButton_heightForWidth_h" qtc_QRadioButton_heightForWidth_h :: Ptr (TQRadioButton a) -> CInt -> IO CInt

instance QheightForWidth (QRadioButtonSc a) ((Int)) where
 heightForWidth x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRadioButton_heightForWidth_h cobj_x0 (toCInt x1)

instance QhideEvent (QRadioButton ()) ((QHideEvent t1)) where
 hideEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRadioButton_hideEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QRadioButton_hideEvent_h" qtc_QRadioButton_hideEvent_h :: Ptr (TQRadioButton a) -> Ptr (TQHideEvent t1) -> IO ()

instance QhideEvent (QRadioButtonSc a) ((QHideEvent t1)) where
 hideEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRadioButton_hideEvent_h cobj_x0 cobj_x1

instance QinputMethodEvent (QRadioButton ()) ((QInputMethodEvent t1)) where
 inputMethodEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRadioButton_inputMethodEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QRadioButton_inputMethodEvent" qtc_QRadioButton_inputMethodEvent :: Ptr (TQRadioButton a) -> Ptr (TQInputMethodEvent t1) -> IO ()

instance QinputMethodEvent (QRadioButtonSc a) ((QInputMethodEvent t1)) where
 inputMethodEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRadioButton_inputMethodEvent cobj_x0 cobj_x1

instance QinputMethodQuery (QRadioButton ()) ((InputMethodQuery)) where
 inputMethodQuery x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRadioButton_inputMethodQuery_h cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QRadioButton_inputMethodQuery_h" qtc_QRadioButton_inputMethodQuery_h :: Ptr (TQRadioButton a) -> CLong -> IO (Ptr (TQVariant ()))

instance QinputMethodQuery (QRadioButtonSc a) ((InputMethodQuery)) where
 inputMethodQuery x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRadioButton_inputMethodQuery_h cobj_x0 (toCLong $ qEnum_toInt x1)

instance QlanguageChange (QRadioButton ()) (()) where
 languageChange x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRadioButton_languageChange cobj_x0

foreign import ccall "qtc_QRadioButton_languageChange" qtc_QRadioButton_languageChange :: Ptr (TQRadioButton a) -> IO ()

instance QlanguageChange (QRadioButtonSc a) (()) where
 languageChange x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRadioButton_languageChange cobj_x0

instance QleaveEvent (QRadioButton ()) ((QEvent t1)) where
 leaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRadioButton_leaveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QRadioButton_leaveEvent_h" qtc_QRadioButton_leaveEvent_h :: Ptr (TQRadioButton a) -> Ptr (TQEvent t1) -> IO ()

instance QleaveEvent (QRadioButtonSc a) ((QEvent t1)) where
 leaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRadioButton_leaveEvent_h cobj_x0 cobj_x1

instance Qmetric (QRadioButton ()) ((PaintDeviceMetric)) where
 metric x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRadioButton_metric cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QRadioButton_metric" qtc_QRadioButton_metric :: Ptr (TQRadioButton a) -> CLong -> IO CInt

instance Qmetric (QRadioButtonSc a) ((PaintDeviceMetric)) where
 metric x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRadioButton_metric cobj_x0 (toCLong $ qEnum_toInt x1)

instance QqminimumSizeHint (QRadioButton ()) (()) where
 qminimumSizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRadioButton_minimumSizeHint_h cobj_x0

foreign import ccall "qtc_QRadioButton_minimumSizeHint_h" qtc_QRadioButton_minimumSizeHint_h :: Ptr (TQRadioButton a) -> IO (Ptr (TQSize ()))

instance QqminimumSizeHint (QRadioButtonSc a) (()) where
 qminimumSizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRadioButton_minimumSizeHint_h cobj_x0

instance QminimumSizeHint (QRadioButton ()) (()) where
 minimumSizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRadioButton_minimumSizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QRadioButton_minimumSizeHint_qth_h" qtc_QRadioButton_minimumSizeHint_qth_h :: Ptr (TQRadioButton a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QminimumSizeHint (QRadioButtonSc a) (()) where
 minimumSizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRadioButton_minimumSizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

instance QmouseDoubleClickEvent (QRadioButton ()) ((QMouseEvent t1)) where
 mouseDoubleClickEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRadioButton_mouseDoubleClickEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QRadioButton_mouseDoubleClickEvent_h" qtc_QRadioButton_mouseDoubleClickEvent_h :: Ptr (TQRadioButton a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseDoubleClickEvent (QRadioButtonSc a) ((QMouseEvent t1)) where
 mouseDoubleClickEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRadioButton_mouseDoubleClickEvent_h cobj_x0 cobj_x1

instance Qmove (QRadioButton ()) ((Int, Int)) where
 move x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRadioButton_move1 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QRadioButton_move1" qtc_QRadioButton_move1 :: Ptr (TQRadioButton a) -> CInt -> CInt -> IO ()

instance Qmove (QRadioButtonSc a) ((Int, Int)) where
 move x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRadioButton_move1 cobj_x0 (toCInt x1) (toCInt x2)

instance Qmove (QRadioButton ()) ((Point)) where
 move x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QRadioButton_move_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

foreign import ccall "qtc_QRadioButton_move_qth" qtc_QRadioButton_move_qth :: Ptr (TQRadioButton a) -> CInt -> CInt -> IO ()

instance Qmove (QRadioButtonSc a) ((Point)) where
 move x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QRadioButton_move_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

instance Qqmove (QRadioButton ()) ((QPoint t1)) where
 qmove x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRadioButton_move cobj_x0 cobj_x1

foreign import ccall "qtc_QRadioButton_move" qtc_QRadioButton_move :: Ptr (TQRadioButton a) -> Ptr (TQPoint t1) -> IO ()

instance Qqmove (QRadioButtonSc a) ((QPoint t1)) where
 qmove x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRadioButton_move cobj_x0 cobj_x1

instance QmoveEvent (QRadioButton ()) ((QMoveEvent t1)) where
 moveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRadioButton_moveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QRadioButton_moveEvent_h" qtc_QRadioButton_moveEvent_h :: Ptr (TQRadioButton a) -> Ptr (TQMoveEvent t1) -> IO ()

instance QmoveEvent (QRadioButtonSc a) ((QMoveEvent t1)) where
 moveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRadioButton_moveEvent_h cobj_x0 cobj_x1

instance QpaintEngine (QRadioButton ()) (()) where
 paintEngine x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRadioButton_paintEngine_h cobj_x0

foreign import ccall "qtc_QRadioButton_paintEngine_h" qtc_QRadioButton_paintEngine_h :: Ptr (TQRadioButton a) -> IO (Ptr (TQPaintEngine ()))

instance QpaintEngine (QRadioButtonSc a) (()) where
 paintEngine x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRadioButton_paintEngine_h cobj_x0

instance QpaletteChange (QRadioButton ()) ((QPalette t1)) where
 paletteChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRadioButton_paletteChange cobj_x0 cobj_x1

foreign import ccall "qtc_QRadioButton_paletteChange" qtc_QRadioButton_paletteChange :: Ptr (TQRadioButton a) -> Ptr (TQPalette t1) -> IO ()

instance QpaletteChange (QRadioButtonSc a) ((QPalette t1)) where
 paletteChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRadioButton_paletteChange cobj_x0 cobj_x1

instance Qrepaint (QRadioButton ()) (()) where
 repaint x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRadioButton_repaint cobj_x0

foreign import ccall "qtc_QRadioButton_repaint" qtc_QRadioButton_repaint :: Ptr (TQRadioButton a) -> IO ()

instance Qrepaint (QRadioButtonSc a) (()) where
 repaint x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRadioButton_repaint cobj_x0

instance Qrepaint (QRadioButton ()) ((Int, Int, Int, Int)) where
 repaint x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRadioButton_repaint2 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QRadioButton_repaint2" qtc_QRadioButton_repaint2 :: Ptr (TQRadioButton a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance Qrepaint (QRadioButtonSc a) ((Int, Int, Int, Int)) where
 repaint x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRadioButton_repaint2 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

instance Qrepaint (QRadioButton ()) ((QRegion t1)) where
 repaint x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRadioButton_repaint1 cobj_x0 cobj_x1

foreign import ccall "qtc_QRadioButton_repaint1" qtc_QRadioButton_repaint1 :: Ptr (TQRadioButton a) -> Ptr (TQRegion t1) -> IO ()

instance Qrepaint (QRadioButtonSc a) ((QRegion t1)) where
 repaint x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRadioButton_repaint1 cobj_x0 cobj_x1

instance QresetInputContext (QRadioButton ()) (()) where
 resetInputContext x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRadioButton_resetInputContext cobj_x0

foreign import ccall "qtc_QRadioButton_resetInputContext" qtc_QRadioButton_resetInputContext :: Ptr (TQRadioButton a) -> IO ()

instance QresetInputContext (QRadioButtonSc a) (()) where
 resetInputContext x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRadioButton_resetInputContext cobj_x0

instance Qresize (QRadioButton ()) ((Int, Int)) (IO ()) where
 resize x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRadioButton_resize1 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QRadioButton_resize1" qtc_QRadioButton_resize1 :: Ptr (TQRadioButton a) -> CInt -> CInt -> IO ()

instance Qresize (QRadioButtonSc a) ((Int, Int)) (IO ()) where
 resize x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRadioButton_resize1 cobj_x0 (toCInt x1) (toCInt x2)

instance Qqresize (QRadioButton ()) ((QSize t1)) where
 qresize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRadioButton_resize cobj_x0 cobj_x1

foreign import ccall "qtc_QRadioButton_resize" qtc_QRadioButton_resize :: Ptr (TQRadioButton a) -> Ptr (TQSize t1) -> IO ()

instance Qqresize (QRadioButtonSc a) ((QSize t1)) where
 qresize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRadioButton_resize cobj_x0 cobj_x1

instance Qresize (QRadioButton ()) ((Size)) (IO ()) where
 resize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QRadioButton_resize_qth cobj_x0 csize_x1_w csize_x1_h 

foreign import ccall "qtc_QRadioButton_resize_qth" qtc_QRadioButton_resize_qth :: Ptr (TQRadioButton a) -> CInt -> CInt -> IO ()

instance Qresize (QRadioButtonSc a) ((Size)) (IO ()) where
 resize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QRadioButton_resize_qth cobj_x0 csize_x1_w csize_x1_h 

instance QresizeEvent (QRadioButton ()) ((QResizeEvent t1)) where
 resizeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRadioButton_resizeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QRadioButton_resizeEvent_h" qtc_QRadioButton_resizeEvent_h :: Ptr (TQRadioButton a) -> Ptr (TQResizeEvent t1) -> IO ()

instance QresizeEvent (QRadioButtonSc a) ((QResizeEvent t1)) where
 resizeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRadioButton_resizeEvent_h cobj_x0 cobj_x1

instance QsetGeometry (QRadioButton ()) ((Int, Int, Int, Int)) where
 setGeometry x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRadioButton_setGeometry1 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QRadioButton_setGeometry1" qtc_QRadioButton_setGeometry1 :: Ptr (TQRadioButton a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QsetGeometry (QRadioButtonSc a) ((Int, Int, Int, Int)) where
 setGeometry x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRadioButton_setGeometry1 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

instance QqsetGeometry (QRadioButton ()) ((QRect t1)) where
 qsetGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRadioButton_setGeometry cobj_x0 cobj_x1

foreign import ccall "qtc_QRadioButton_setGeometry" qtc_QRadioButton_setGeometry :: Ptr (TQRadioButton a) -> Ptr (TQRect t1) -> IO ()

instance QqsetGeometry (QRadioButtonSc a) ((QRect t1)) where
 qsetGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRadioButton_setGeometry cobj_x0 cobj_x1

instance QsetGeometry (QRadioButton ()) ((Rect)) where
 setGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QRadioButton_setGeometry_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

foreign import ccall "qtc_QRadioButton_setGeometry_qth" qtc_QRadioButton_setGeometry_qth :: Ptr (TQRadioButton a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QsetGeometry (QRadioButtonSc a) ((Rect)) where
 setGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QRadioButton_setGeometry_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

instance QsetMouseTracking (QRadioButton ()) ((Bool)) where
 setMouseTracking x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRadioButton_setMouseTracking cobj_x0 (toCBool x1)

foreign import ccall "qtc_QRadioButton_setMouseTracking" qtc_QRadioButton_setMouseTracking :: Ptr (TQRadioButton a) -> CBool -> IO ()

instance QsetMouseTracking (QRadioButtonSc a) ((Bool)) where
 setMouseTracking x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRadioButton_setMouseTracking cobj_x0 (toCBool x1)

instance QsetVisible (QRadioButton ()) ((Bool)) where
 setVisible x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRadioButton_setVisible_h cobj_x0 (toCBool x1)

foreign import ccall "qtc_QRadioButton_setVisible_h" qtc_QRadioButton_setVisible_h :: Ptr (TQRadioButton a) -> CBool -> IO ()

instance QsetVisible (QRadioButtonSc a) ((Bool)) where
 setVisible x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRadioButton_setVisible_h cobj_x0 (toCBool x1)

instance QshowEvent (QRadioButton ()) ((QShowEvent t1)) where
 showEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRadioButton_showEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QRadioButton_showEvent_h" qtc_QRadioButton_showEvent_h :: Ptr (TQRadioButton a) -> Ptr (TQShowEvent t1) -> IO ()

instance QshowEvent (QRadioButtonSc a) ((QShowEvent t1)) where
 showEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRadioButton_showEvent_h cobj_x0 cobj_x1

instance QtabletEvent (QRadioButton ()) ((QTabletEvent t1)) where
 tabletEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRadioButton_tabletEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QRadioButton_tabletEvent_h" qtc_QRadioButton_tabletEvent_h :: Ptr (TQRadioButton a) -> Ptr (TQTabletEvent t1) -> IO ()

instance QtabletEvent (QRadioButtonSc a) ((QTabletEvent t1)) where
 tabletEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRadioButton_tabletEvent_h cobj_x0 cobj_x1

instance QupdateMicroFocus (QRadioButton ()) (()) where
 updateMicroFocus x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRadioButton_updateMicroFocus cobj_x0

foreign import ccall "qtc_QRadioButton_updateMicroFocus" qtc_QRadioButton_updateMicroFocus :: Ptr (TQRadioButton a) -> IO ()

instance QupdateMicroFocus (QRadioButtonSc a) (()) where
 updateMicroFocus x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRadioButton_updateMicroFocus cobj_x0

instance QwheelEvent (QRadioButton ()) ((QWheelEvent t1)) where
 wheelEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRadioButton_wheelEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QRadioButton_wheelEvent_h" qtc_QRadioButton_wheelEvent_h :: Ptr (TQRadioButton a) -> Ptr (TQWheelEvent t1) -> IO ()

instance QwheelEvent (QRadioButtonSc a) ((QWheelEvent t1)) where
 wheelEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRadioButton_wheelEvent_h cobj_x0 cobj_x1

instance QwindowActivationChange (QRadioButton ()) ((Bool)) where
 windowActivationChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRadioButton_windowActivationChange cobj_x0 (toCBool x1)

foreign import ccall "qtc_QRadioButton_windowActivationChange" qtc_QRadioButton_windowActivationChange :: Ptr (TQRadioButton a) -> CBool -> IO ()

instance QwindowActivationChange (QRadioButtonSc a) ((Bool)) where
 windowActivationChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRadioButton_windowActivationChange cobj_x0 (toCBool x1)

instance QchildEvent (QRadioButton ()) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRadioButton_childEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QRadioButton_childEvent" qtc_QRadioButton_childEvent :: Ptr (TQRadioButton a) -> Ptr (TQChildEvent t1) -> IO ()

instance QchildEvent (QRadioButtonSc a) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRadioButton_childEvent cobj_x0 cobj_x1

instance QconnectNotify (QRadioButton ()) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QRadioButton_connectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QRadioButton_connectNotify" qtc_QRadioButton_connectNotify :: Ptr (TQRadioButton a) -> CWString -> IO ()

instance QconnectNotify (QRadioButtonSc a) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QRadioButton_connectNotify cobj_x0 cstr_x1

instance QcustomEvent (QRadioButton ()) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRadioButton_customEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QRadioButton_customEvent" qtc_QRadioButton_customEvent :: Ptr (TQRadioButton a) -> Ptr (TQEvent t1) -> IO ()

instance QcustomEvent (QRadioButtonSc a) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRadioButton_customEvent cobj_x0 cobj_x1

instance QdisconnectNotify (QRadioButton ()) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QRadioButton_disconnectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QRadioButton_disconnectNotify" qtc_QRadioButton_disconnectNotify :: Ptr (TQRadioButton a) -> CWString -> IO ()

instance QdisconnectNotify (QRadioButtonSc a) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QRadioButton_disconnectNotify cobj_x0 cstr_x1

instance QeventFilter (QRadioButton ()) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QRadioButton_eventFilter_h cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QRadioButton_eventFilter_h" qtc_QRadioButton_eventFilter_h :: Ptr (TQRadioButton a) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO CBool

instance QeventFilter (QRadioButtonSc a) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QRadioButton_eventFilter_h cobj_x0 cobj_x1 cobj_x2

instance Qreceivers (QRadioButton ()) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QRadioButton_receivers cobj_x0 cstr_x1

foreign import ccall "qtc_QRadioButton_receivers" qtc_QRadioButton_receivers :: Ptr (TQRadioButton a) -> CWString -> IO CInt

instance Qreceivers (QRadioButtonSc a) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QRadioButton_receivers cobj_x0 cstr_x1

instance Qsender (QRadioButton ()) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRadioButton_sender cobj_x0

foreign import ccall "qtc_QRadioButton_sender" qtc_QRadioButton_sender :: Ptr (TQRadioButton a) -> IO (Ptr (TQObject ()))

instance Qsender (QRadioButtonSc a) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRadioButton_sender cobj_x0

