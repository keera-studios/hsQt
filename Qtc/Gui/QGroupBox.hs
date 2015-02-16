{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QGroupBox.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:14
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QGroupBox (
  QqGroupBox(..)
  ,qGroupBox_delete
  ,qGroupBox_deleteLater
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

instance QuserMethod (QGroupBox ()) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QGroupBox_userMethod cobj_qobj (toCInt evid)

foreign import ccall "qtc_QGroupBox_userMethod" qtc_QGroupBox_userMethod :: Ptr (TQGroupBox a) -> CInt -> IO ()

instance QuserMethod (QGroupBoxSc a) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QGroupBox_userMethod cobj_qobj (toCInt evid)

instance QuserMethod (QGroupBox ()) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QGroupBox_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

foreign import ccall "qtc_QGroupBox_userMethodVariant" qtc_QGroupBox_userMethodVariant :: Ptr (TQGroupBox a) -> CInt -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))

instance QuserMethod (QGroupBoxSc a) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QGroupBox_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

class QqGroupBox x1 where
  qGroupBox :: x1 -> IO (QGroupBox ())

instance QqGroupBox (()) where
 qGroupBox ()
  = withQGroupBoxResult $
    qtc_QGroupBox

foreign import ccall "qtc_QGroupBox" qtc_QGroupBox :: IO (Ptr (TQGroupBox ()))

instance QqGroupBox ((QWidget t1)) where
 qGroupBox (x1)
  = withQGroupBoxResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGroupBox1 cobj_x1

foreign import ccall "qtc_QGroupBox1" qtc_QGroupBox1 :: Ptr (TQWidget t1) -> IO (Ptr (TQGroupBox ()))

instance QqGroupBox ((String)) where
 qGroupBox (x1)
  = withQGroupBoxResult $
    withCWString x1 $ \cstr_x1 ->
    qtc_QGroupBox2 cstr_x1

foreign import ccall "qtc_QGroupBox2" qtc_QGroupBox2 :: CWString -> IO (Ptr (TQGroupBox ()))

instance QqGroupBox ((String, QWidget t2)) where
 qGroupBox (x1, x2)
  = withQGroupBoxResult $
    withCWString x1 $ \cstr_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGroupBox3 cstr_x1 cobj_x2

foreign import ccall "qtc_QGroupBox3" qtc_QGroupBox3 :: CWString -> Ptr (TQWidget t2) -> IO (Ptr (TQGroupBox ()))

instance Qalignment (QGroupBox a) (()) where
 alignment x0 ()
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGroupBox_alignment cobj_x0

foreign import ccall "qtc_QGroupBox_alignment" qtc_QGroupBox_alignment :: Ptr (TQGroupBox a) -> IO CLong

instance QchangeEvent (QGroupBox ()) ((QEvent t1)) where
 changeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGroupBox_changeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGroupBox_changeEvent_h" qtc_QGroupBox_changeEvent_h :: Ptr (TQGroupBox a) -> Ptr (TQEvent t1) -> IO ()

instance QchangeEvent (QGroupBoxSc a) ((QEvent t1)) where
 changeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGroupBox_changeEvent_h cobj_x0 cobj_x1

instance QchildEvent (QGroupBox ()) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGroupBox_childEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QGroupBox_childEvent" qtc_QGroupBox_childEvent :: Ptr (TQGroupBox a) -> Ptr (TQChildEvent t1) -> IO ()

instance QchildEvent (QGroupBoxSc a) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGroupBox_childEvent cobj_x0 cobj_x1

instance Qevent (QGroupBox ()) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGroupBox_event_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGroupBox_event_h" qtc_QGroupBox_event_h :: Ptr (TQGroupBox a) -> Ptr (TQEvent t1) -> IO CBool

instance Qevent (QGroupBoxSc a) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGroupBox_event_h cobj_x0 cobj_x1

instance QfocusInEvent (QGroupBox ()) ((QFocusEvent t1)) where
 focusInEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGroupBox_focusInEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGroupBox_focusInEvent_h" qtc_QGroupBox_focusInEvent_h :: Ptr (TQGroupBox a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusInEvent (QGroupBoxSc a) ((QFocusEvent t1)) where
 focusInEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGroupBox_focusInEvent_h cobj_x0 cobj_x1

instance QinitStyleOption (QGroupBox ()) ((QStyleOptionGroupBox t1)) where
 initStyleOption x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGroupBox_initStyleOption cobj_x0 cobj_x1

foreign import ccall "qtc_QGroupBox_initStyleOption" qtc_QGroupBox_initStyleOption :: Ptr (TQGroupBox a) -> Ptr (TQStyleOptionGroupBox t1) -> IO ()

instance QinitStyleOption (QGroupBoxSc a) ((QStyleOptionGroupBox t1)) where
 initStyleOption x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGroupBox_initStyleOption cobj_x0 cobj_x1

instance QisCheckable (QGroupBox a) (()) where
 isCheckable x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGroupBox_isCheckable cobj_x0

foreign import ccall "qtc_QGroupBox_isCheckable" qtc_QGroupBox_isCheckable :: Ptr (TQGroupBox a) -> IO CBool

instance QisChecked (QGroupBox a) (()) where
 isChecked x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGroupBox_isChecked cobj_x0

foreign import ccall "qtc_QGroupBox_isChecked" qtc_QGroupBox_isChecked :: Ptr (TQGroupBox a) -> IO CBool

instance QisFlat (QGroupBox a) (()) where
 isFlat x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGroupBox_isFlat cobj_x0

foreign import ccall "qtc_QGroupBox_isFlat" qtc_QGroupBox_isFlat :: Ptr (TQGroupBox a) -> IO CBool

instance QqminimumSizeHint (QGroupBox ()) (()) where
 qminimumSizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGroupBox_minimumSizeHint_h cobj_x0

foreign import ccall "qtc_QGroupBox_minimumSizeHint_h" qtc_QGroupBox_minimumSizeHint_h :: Ptr (TQGroupBox a) -> IO (Ptr (TQSize ()))

instance QqminimumSizeHint (QGroupBoxSc a) (()) where
 qminimumSizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGroupBox_minimumSizeHint_h cobj_x0

instance QminimumSizeHint (QGroupBox ()) (()) where
 minimumSizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGroupBox_minimumSizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QGroupBox_minimumSizeHint_qth_h" qtc_QGroupBox_minimumSizeHint_qth_h :: Ptr (TQGroupBox a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QminimumSizeHint (QGroupBoxSc a) (()) where
 minimumSizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGroupBox_minimumSizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

instance QmouseMoveEvent (QGroupBox ()) ((QMouseEvent t1)) where
 mouseMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGroupBox_mouseMoveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGroupBox_mouseMoveEvent_h" qtc_QGroupBox_mouseMoveEvent_h :: Ptr (TQGroupBox a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseMoveEvent (QGroupBoxSc a) ((QMouseEvent t1)) where
 mouseMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGroupBox_mouseMoveEvent_h cobj_x0 cobj_x1

instance QmousePressEvent (QGroupBox ()) ((QMouseEvent t1)) where
 mousePressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGroupBox_mousePressEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGroupBox_mousePressEvent_h" qtc_QGroupBox_mousePressEvent_h :: Ptr (TQGroupBox a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmousePressEvent (QGroupBoxSc a) ((QMouseEvent t1)) where
 mousePressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGroupBox_mousePressEvent_h cobj_x0 cobj_x1

instance QmouseReleaseEvent (QGroupBox ()) ((QMouseEvent t1)) where
 mouseReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGroupBox_mouseReleaseEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGroupBox_mouseReleaseEvent_h" qtc_QGroupBox_mouseReleaseEvent_h :: Ptr (TQGroupBox a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseReleaseEvent (QGroupBoxSc a) ((QMouseEvent t1)) where
 mouseReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGroupBox_mouseReleaseEvent_h cobj_x0 cobj_x1

instance QpaintEvent (QGroupBox ()) ((QPaintEvent t1)) where
 paintEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGroupBox_paintEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGroupBox_paintEvent_h" qtc_QGroupBox_paintEvent_h :: Ptr (TQGroupBox a) -> Ptr (TQPaintEvent t1) -> IO ()

instance QpaintEvent (QGroupBoxSc a) ((QPaintEvent t1)) where
 paintEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGroupBox_paintEvent_h cobj_x0 cobj_x1

instance QresizeEvent (QGroupBox ()) ((QResizeEvent t1)) where
 resizeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGroupBox_resizeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGroupBox_resizeEvent_h" qtc_QGroupBox_resizeEvent_h :: Ptr (TQGroupBox a) -> Ptr (TQResizeEvent t1) -> IO ()

instance QresizeEvent (QGroupBoxSc a) ((QResizeEvent t1)) where
 resizeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGroupBox_resizeEvent_h cobj_x0 cobj_x1

instance QsetAlignment (QGroupBox a) ((Int)) (IO ()) where
 setAlignment x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGroupBox_setAlignment cobj_x0 (toCInt x1)

foreign import ccall "qtc_QGroupBox_setAlignment" qtc_QGroupBox_setAlignment :: Ptr (TQGroupBox a) -> CInt -> IO ()

instance QsetCheckable (QGroupBox a) ((Bool)) where
 setCheckable x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGroupBox_setCheckable cobj_x0 (toCBool x1)

foreign import ccall "qtc_QGroupBox_setCheckable" qtc_QGroupBox_setCheckable :: Ptr (TQGroupBox a) -> CBool -> IO ()

instance QsetChecked (QGroupBox a) ((Bool)) where
 setChecked x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGroupBox_setChecked cobj_x0 (toCBool x1)

foreign import ccall "qtc_QGroupBox_setChecked" qtc_QGroupBox_setChecked :: Ptr (TQGroupBox a) -> CBool -> IO ()

instance QsetFlat (QGroupBox a) ((Bool)) where
 setFlat x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGroupBox_setFlat cobj_x0 (toCBool x1)

foreign import ccall "qtc_QGroupBox_setFlat" qtc_QGroupBox_setFlat :: Ptr (TQGroupBox a) -> CBool -> IO ()

instance QsetTitle (QGroupBox a) ((String)) where
 setTitle x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QGroupBox_setTitle cobj_x0 cstr_x1

foreign import ccall "qtc_QGroupBox_setTitle" qtc_QGroupBox_setTitle :: Ptr (TQGroupBox a) -> CWString -> IO ()

instance Qtitle (QGroupBox a) (()) where
 title x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGroupBox_title cobj_x0

foreign import ccall "qtc_QGroupBox_title" qtc_QGroupBox_title :: Ptr (TQGroupBox a) -> IO (Ptr (TQString ()))

qGroupBox_delete :: QGroupBox a -> IO ()
qGroupBox_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGroupBox_delete cobj_x0

foreign import ccall "qtc_QGroupBox_delete" qtc_QGroupBox_delete :: Ptr (TQGroupBox a) -> IO ()

qGroupBox_deleteLater :: QGroupBox a -> IO ()
qGroupBox_deleteLater x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGroupBox_deleteLater cobj_x0

foreign import ccall "qtc_QGroupBox_deleteLater" qtc_QGroupBox_deleteLater :: Ptr (TQGroupBox a) -> IO ()

instance QactionEvent (QGroupBox ()) ((QActionEvent t1)) where
 actionEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGroupBox_actionEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGroupBox_actionEvent_h" qtc_QGroupBox_actionEvent_h :: Ptr (TQGroupBox a) -> Ptr (TQActionEvent t1) -> IO ()

instance QactionEvent (QGroupBoxSc a) ((QActionEvent t1)) where
 actionEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGroupBox_actionEvent_h cobj_x0 cobj_x1

instance QaddAction (QGroupBox ()) ((QAction t1)) (IO ()) where
 addAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGroupBox_addAction cobj_x0 cobj_x1

foreign import ccall "qtc_QGroupBox_addAction" qtc_QGroupBox_addAction :: Ptr (TQGroupBox a) -> Ptr (TQAction t1) -> IO ()

instance QaddAction (QGroupBoxSc a) ((QAction t1)) (IO ()) where
 addAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGroupBox_addAction cobj_x0 cobj_x1

instance QcloseEvent (QGroupBox ()) ((QCloseEvent t1)) where
 closeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGroupBox_closeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGroupBox_closeEvent_h" qtc_QGroupBox_closeEvent_h :: Ptr (TQGroupBox a) -> Ptr (TQCloseEvent t1) -> IO ()

instance QcloseEvent (QGroupBoxSc a) ((QCloseEvent t1)) where
 closeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGroupBox_closeEvent_h cobj_x0 cobj_x1

instance QcontextMenuEvent (QGroupBox ()) ((QContextMenuEvent t1)) where
 contextMenuEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGroupBox_contextMenuEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGroupBox_contextMenuEvent_h" qtc_QGroupBox_contextMenuEvent_h :: Ptr (TQGroupBox a) -> Ptr (TQContextMenuEvent t1) -> IO ()

instance QcontextMenuEvent (QGroupBoxSc a) ((QContextMenuEvent t1)) where
 contextMenuEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGroupBox_contextMenuEvent_h cobj_x0 cobj_x1

instance Qcreate (QGroupBox ()) (()) (IO ()) where
 create x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGroupBox_create cobj_x0

foreign import ccall "qtc_QGroupBox_create" qtc_QGroupBox_create :: Ptr (TQGroupBox a) -> IO ()

instance Qcreate (QGroupBoxSc a) (()) (IO ()) where
 create x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGroupBox_create cobj_x0

instance Qcreate (QGroupBox ()) ((QVoid t1)) (IO ()) where
 create x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGroupBox_create1 cobj_x0 cobj_x1

foreign import ccall "qtc_QGroupBox_create1" qtc_QGroupBox_create1 :: Ptr (TQGroupBox a) -> Ptr (TQVoid t1) -> IO ()

instance Qcreate (QGroupBoxSc a) ((QVoid t1)) (IO ()) where
 create x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGroupBox_create1 cobj_x0 cobj_x1

instance Qcreate (QGroupBox ()) ((QVoid t1, Bool)) (IO ()) where
 create x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGroupBox_create2 cobj_x0 cobj_x1 (toCBool x2)

foreign import ccall "qtc_QGroupBox_create2" qtc_QGroupBox_create2 :: Ptr (TQGroupBox a) -> Ptr (TQVoid t1) -> CBool -> IO ()

instance Qcreate (QGroupBoxSc a) ((QVoid t1, Bool)) (IO ()) where
 create x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGroupBox_create2 cobj_x0 cobj_x1 (toCBool x2)

instance Qcreate (QGroupBox ()) ((QVoid t1, Bool, Bool)) (IO ()) where
 create x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGroupBox_create3 cobj_x0 cobj_x1 (toCBool x2) (toCBool x3)

foreign import ccall "qtc_QGroupBox_create3" qtc_QGroupBox_create3 :: Ptr (TQGroupBox a) -> Ptr (TQVoid t1) -> CBool -> CBool -> IO ()

instance Qcreate (QGroupBoxSc a) ((QVoid t1, Bool, Bool)) (IO ()) where
 create x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGroupBox_create3 cobj_x0 cobj_x1 (toCBool x2) (toCBool x3)

instance Qdestroy (QGroupBox ()) (()) where
 destroy x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGroupBox_destroy cobj_x0

foreign import ccall "qtc_QGroupBox_destroy" qtc_QGroupBox_destroy :: Ptr (TQGroupBox a) -> IO ()

instance Qdestroy (QGroupBoxSc a) (()) where
 destroy x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGroupBox_destroy cobj_x0

instance Qdestroy (QGroupBox ()) ((Bool)) where
 destroy x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGroupBox_destroy1 cobj_x0 (toCBool x1)

foreign import ccall "qtc_QGroupBox_destroy1" qtc_QGroupBox_destroy1 :: Ptr (TQGroupBox a) -> CBool -> IO ()

instance Qdestroy (QGroupBoxSc a) ((Bool)) where
 destroy x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGroupBox_destroy1 cobj_x0 (toCBool x1)

instance Qdestroy (QGroupBox ()) ((Bool, Bool)) where
 destroy x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGroupBox_destroy2 cobj_x0 (toCBool x1) (toCBool x2)

foreign import ccall "qtc_QGroupBox_destroy2" qtc_QGroupBox_destroy2 :: Ptr (TQGroupBox a) -> CBool -> CBool -> IO ()

instance Qdestroy (QGroupBoxSc a) ((Bool, Bool)) where
 destroy x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGroupBox_destroy2 cobj_x0 (toCBool x1) (toCBool x2)

instance QdevType (QGroupBox ()) (()) where
 devType x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGroupBox_devType_h cobj_x0

foreign import ccall "qtc_QGroupBox_devType_h" qtc_QGroupBox_devType_h :: Ptr (TQGroupBox a) -> IO CInt

instance QdevType (QGroupBoxSc a) (()) where
 devType x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGroupBox_devType_h cobj_x0

instance QdragEnterEvent (QGroupBox ()) ((QDragEnterEvent t1)) where
 dragEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGroupBox_dragEnterEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGroupBox_dragEnterEvent_h" qtc_QGroupBox_dragEnterEvent_h :: Ptr (TQGroupBox a) -> Ptr (TQDragEnterEvent t1) -> IO ()

instance QdragEnterEvent (QGroupBoxSc a) ((QDragEnterEvent t1)) where
 dragEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGroupBox_dragEnterEvent_h cobj_x0 cobj_x1

instance QdragLeaveEvent (QGroupBox ()) ((QDragLeaveEvent t1)) where
 dragLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGroupBox_dragLeaveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGroupBox_dragLeaveEvent_h" qtc_QGroupBox_dragLeaveEvent_h :: Ptr (TQGroupBox a) -> Ptr (TQDragLeaveEvent t1) -> IO ()

instance QdragLeaveEvent (QGroupBoxSc a) ((QDragLeaveEvent t1)) where
 dragLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGroupBox_dragLeaveEvent_h cobj_x0 cobj_x1

instance QdragMoveEvent (QGroupBox ()) ((QDragMoveEvent t1)) where
 dragMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGroupBox_dragMoveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGroupBox_dragMoveEvent_h" qtc_QGroupBox_dragMoveEvent_h :: Ptr (TQGroupBox a) -> Ptr (TQDragMoveEvent t1) -> IO ()

instance QdragMoveEvent (QGroupBoxSc a) ((QDragMoveEvent t1)) where
 dragMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGroupBox_dragMoveEvent_h cobj_x0 cobj_x1

instance QdropEvent (QGroupBox ()) ((QDropEvent t1)) where
 dropEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGroupBox_dropEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGroupBox_dropEvent_h" qtc_QGroupBox_dropEvent_h :: Ptr (TQGroupBox a) -> Ptr (TQDropEvent t1) -> IO ()

instance QdropEvent (QGroupBoxSc a) ((QDropEvent t1)) where
 dropEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGroupBox_dropEvent_h cobj_x0 cobj_x1

instance QenabledChange (QGroupBox ()) ((Bool)) where
 enabledChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGroupBox_enabledChange cobj_x0 (toCBool x1)

foreign import ccall "qtc_QGroupBox_enabledChange" qtc_QGroupBox_enabledChange :: Ptr (TQGroupBox a) -> CBool -> IO ()

instance QenabledChange (QGroupBoxSc a) ((Bool)) where
 enabledChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGroupBox_enabledChange cobj_x0 (toCBool x1)

instance QenterEvent (QGroupBox ()) ((QEvent t1)) where
 enterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGroupBox_enterEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGroupBox_enterEvent_h" qtc_QGroupBox_enterEvent_h :: Ptr (TQGroupBox a) -> Ptr (TQEvent t1) -> IO ()

instance QenterEvent (QGroupBoxSc a) ((QEvent t1)) where
 enterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGroupBox_enterEvent_h cobj_x0 cobj_x1

instance QfocusNextChild (QGroupBox ()) (()) where
 focusNextChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGroupBox_focusNextChild cobj_x0

foreign import ccall "qtc_QGroupBox_focusNextChild" qtc_QGroupBox_focusNextChild :: Ptr (TQGroupBox a) -> IO CBool

instance QfocusNextChild (QGroupBoxSc a) (()) where
 focusNextChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGroupBox_focusNextChild cobj_x0

instance QfocusNextPrevChild (QGroupBox ()) ((Bool)) where
 focusNextPrevChild x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGroupBox_focusNextPrevChild cobj_x0 (toCBool x1)

foreign import ccall "qtc_QGroupBox_focusNextPrevChild" qtc_QGroupBox_focusNextPrevChild :: Ptr (TQGroupBox a) -> CBool -> IO CBool

instance QfocusNextPrevChild (QGroupBoxSc a) ((Bool)) where
 focusNextPrevChild x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGroupBox_focusNextPrevChild cobj_x0 (toCBool x1)

instance QfocusOutEvent (QGroupBox ()) ((QFocusEvent t1)) where
 focusOutEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGroupBox_focusOutEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGroupBox_focusOutEvent_h" qtc_QGroupBox_focusOutEvent_h :: Ptr (TQGroupBox a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusOutEvent (QGroupBoxSc a) ((QFocusEvent t1)) where
 focusOutEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGroupBox_focusOutEvent_h cobj_x0 cobj_x1

instance QfocusPreviousChild (QGroupBox ()) (()) where
 focusPreviousChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGroupBox_focusPreviousChild cobj_x0

foreign import ccall "qtc_QGroupBox_focusPreviousChild" qtc_QGroupBox_focusPreviousChild :: Ptr (TQGroupBox a) -> IO CBool

instance QfocusPreviousChild (QGroupBoxSc a) (()) where
 focusPreviousChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGroupBox_focusPreviousChild cobj_x0

instance QfontChange (QGroupBox ()) ((QFont t1)) where
 fontChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGroupBox_fontChange cobj_x0 cobj_x1

foreign import ccall "qtc_QGroupBox_fontChange" qtc_QGroupBox_fontChange :: Ptr (TQGroupBox a) -> Ptr (TQFont t1) -> IO ()

instance QfontChange (QGroupBoxSc a) ((QFont t1)) where
 fontChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGroupBox_fontChange cobj_x0 cobj_x1

instance QheightForWidth (QGroupBox ()) ((Int)) where
 heightForWidth x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGroupBox_heightForWidth_h cobj_x0 (toCInt x1)

foreign import ccall "qtc_QGroupBox_heightForWidth_h" qtc_QGroupBox_heightForWidth_h :: Ptr (TQGroupBox a) -> CInt -> IO CInt

instance QheightForWidth (QGroupBoxSc a) ((Int)) where
 heightForWidth x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGroupBox_heightForWidth_h cobj_x0 (toCInt x1)

instance QhideEvent (QGroupBox ()) ((QHideEvent t1)) where
 hideEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGroupBox_hideEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGroupBox_hideEvent_h" qtc_QGroupBox_hideEvent_h :: Ptr (TQGroupBox a) -> Ptr (TQHideEvent t1) -> IO ()

instance QhideEvent (QGroupBoxSc a) ((QHideEvent t1)) where
 hideEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGroupBox_hideEvent_h cobj_x0 cobj_x1

instance QinputMethodEvent (QGroupBox ()) ((QInputMethodEvent t1)) where
 inputMethodEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGroupBox_inputMethodEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QGroupBox_inputMethodEvent" qtc_QGroupBox_inputMethodEvent :: Ptr (TQGroupBox a) -> Ptr (TQInputMethodEvent t1) -> IO ()

instance QinputMethodEvent (QGroupBoxSc a) ((QInputMethodEvent t1)) where
 inputMethodEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGroupBox_inputMethodEvent cobj_x0 cobj_x1

instance QinputMethodQuery (QGroupBox ()) ((InputMethodQuery)) where
 inputMethodQuery x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGroupBox_inputMethodQuery_h cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QGroupBox_inputMethodQuery_h" qtc_QGroupBox_inputMethodQuery_h :: Ptr (TQGroupBox a) -> CLong -> IO (Ptr (TQVariant ()))

instance QinputMethodQuery (QGroupBoxSc a) ((InputMethodQuery)) where
 inputMethodQuery x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGroupBox_inputMethodQuery_h cobj_x0 (toCLong $ qEnum_toInt x1)

instance QkeyPressEvent (QGroupBox ()) ((QKeyEvent t1)) where
 keyPressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGroupBox_keyPressEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGroupBox_keyPressEvent_h" qtc_QGroupBox_keyPressEvent_h :: Ptr (TQGroupBox a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyPressEvent (QGroupBoxSc a) ((QKeyEvent t1)) where
 keyPressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGroupBox_keyPressEvent_h cobj_x0 cobj_x1

instance QkeyReleaseEvent (QGroupBox ()) ((QKeyEvent t1)) where
 keyReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGroupBox_keyReleaseEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGroupBox_keyReleaseEvent_h" qtc_QGroupBox_keyReleaseEvent_h :: Ptr (TQGroupBox a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyReleaseEvent (QGroupBoxSc a) ((QKeyEvent t1)) where
 keyReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGroupBox_keyReleaseEvent_h cobj_x0 cobj_x1

instance QlanguageChange (QGroupBox ()) (()) where
 languageChange x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGroupBox_languageChange cobj_x0

foreign import ccall "qtc_QGroupBox_languageChange" qtc_QGroupBox_languageChange :: Ptr (TQGroupBox a) -> IO ()

instance QlanguageChange (QGroupBoxSc a) (()) where
 languageChange x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGroupBox_languageChange cobj_x0

instance QleaveEvent (QGroupBox ()) ((QEvent t1)) where
 leaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGroupBox_leaveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGroupBox_leaveEvent_h" qtc_QGroupBox_leaveEvent_h :: Ptr (TQGroupBox a) -> Ptr (TQEvent t1) -> IO ()

instance QleaveEvent (QGroupBoxSc a) ((QEvent t1)) where
 leaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGroupBox_leaveEvent_h cobj_x0 cobj_x1

instance Qmetric (QGroupBox ()) ((PaintDeviceMetric)) where
 metric x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGroupBox_metric cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QGroupBox_metric" qtc_QGroupBox_metric :: Ptr (TQGroupBox a) -> CLong -> IO CInt

instance Qmetric (QGroupBoxSc a) ((PaintDeviceMetric)) where
 metric x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGroupBox_metric cobj_x0 (toCLong $ qEnum_toInt x1)

instance QmouseDoubleClickEvent (QGroupBox ()) ((QMouseEvent t1)) where
 mouseDoubleClickEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGroupBox_mouseDoubleClickEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGroupBox_mouseDoubleClickEvent_h" qtc_QGroupBox_mouseDoubleClickEvent_h :: Ptr (TQGroupBox a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseDoubleClickEvent (QGroupBoxSc a) ((QMouseEvent t1)) where
 mouseDoubleClickEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGroupBox_mouseDoubleClickEvent_h cobj_x0 cobj_x1

instance Qmove (QGroupBox ()) ((Int, Int)) where
 move x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGroupBox_move1 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QGroupBox_move1" qtc_QGroupBox_move1 :: Ptr (TQGroupBox a) -> CInt -> CInt -> IO ()

instance Qmove (QGroupBoxSc a) ((Int, Int)) where
 move x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGroupBox_move1 cobj_x0 (toCInt x1) (toCInt x2)

instance Qmove (QGroupBox ()) ((Point)) where
 move x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QGroupBox_move_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

foreign import ccall "qtc_QGroupBox_move_qth" qtc_QGroupBox_move_qth :: Ptr (TQGroupBox a) -> CInt -> CInt -> IO ()

instance Qmove (QGroupBoxSc a) ((Point)) where
 move x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QGroupBox_move_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

instance Qqmove (QGroupBox ()) ((QPoint t1)) where
 qmove x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGroupBox_move cobj_x0 cobj_x1

foreign import ccall "qtc_QGroupBox_move" qtc_QGroupBox_move :: Ptr (TQGroupBox a) -> Ptr (TQPoint t1) -> IO ()

instance Qqmove (QGroupBoxSc a) ((QPoint t1)) where
 qmove x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGroupBox_move cobj_x0 cobj_x1

instance QmoveEvent (QGroupBox ()) ((QMoveEvent t1)) where
 moveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGroupBox_moveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGroupBox_moveEvent_h" qtc_QGroupBox_moveEvent_h :: Ptr (TQGroupBox a) -> Ptr (TQMoveEvent t1) -> IO ()

instance QmoveEvent (QGroupBoxSc a) ((QMoveEvent t1)) where
 moveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGroupBox_moveEvent_h cobj_x0 cobj_x1

instance QpaintEngine (QGroupBox ()) (()) where
 paintEngine x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGroupBox_paintEngine_h cobj_x0

foreign import ccall "qtc_QGroupBox_paintEngine_h" qtc_QGroupBox_paintEngine_h :: Ptr (TQGroupBox a) -> IO (Ptr (TQPaintEngine ()))

instance QpaintEngine (QGroupBoxSc a) (()) where
 paintEngine x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGroupBox_paintEngine_h cobj_x0

instance QpaletteChange (QGroupBox ()) ((QPalette t1)) where
 paletteChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGroupBox_paletteChange cobj_x0 cobj_x1

foreign import ccall "qtc_QGroupBox_paletteChange" qtc_QGroupBox_paletteChange :: Ptr (TQGroupBox a) -> Ptr (TQPalette t1) -> IO ()

instance QpaletteChange (QGroupBoxSc a) ((QPalette t1)) where
 paletteChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGroupBox_paletteChange cobj_x0 cobj_x1

instance Qrepaint (QGroupBox ()) (()) where
 repaint x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGroupBox_repaint cobj_x0

foreign import ccall "qtc_QGroupBox_repaint" qtc_QGroupBox_repaint :: Ptr (TQGroupBox a) -> IO ()

instance Qrepaint (QGroupBoxSc a) (()) where
 repaint x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGroupBox_repaint cobj_x0

instance Qrepaint (QGroupBox ()) ((Int, Int, Int, Int)) where
 repaint x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGroupBox_repaint2 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QGroupBox_repaint2" qtc_QGroupBox_repaint2 :: Ptr (TQGroupBox a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance Qrepaint (QGroupBoxSc a) ((Int, Int, Int, Int)) where
 repaint x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGroupBox_repaint2 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

instance Qrepaint (QGroupBox ()) ((QRegion t1)) where
 repaint x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGroupBox_repaint1 cobj_x0 cobj_x1

foreign import ccall "qtc_QGroupBox_repaint1" qtc_QGroupBox_repaint1 :: Ptr (TQGroupBox a) -> Ptr (TQRegion t1) -> IO ()

instance Qrepaint (QGroupBoxSc a) ((QRegion t1)) where
 repaint x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGroupBox_repaint1 cobj_x0 cobj_x1

instance QresetInputContext (QGroupBox ()) (()) where
 resetInputContext x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGroupBox_resetInputContext cobj_x0

foreign import ccall "qtc_QGroupBox_resetInputContext" qtc_QGroupBox_resetInputContext :: Ptr (TQGroupBox a) -> IO ()

instance QresetInputContext (QGroupBoxSc a) (()) where
 resetInputContext x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGroupBox_resetInputContext cobj_x0

instance Qresize (QGroupBox ()) ((Int, Int)) (IO ()) where
 resize x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGroupBox_resize1 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QGroupBox_resize1" qtc_QGroupBox_resize1 :: Ptr (TQGroupBox a) -> CInt -> CInt -> IO ()

instance Qresize (QGroupBoxSc a) ((Int, Int)) (IO ()) where
 resize x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGroupBox_resize1 cobj_x0 (toCInt x1) (toCInt x2)

instance Qqresize (QGroupBox ()) ((QSize t1)) where
 qresize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGroupBox_resize cobj_x0 cobj_x1

foreign import ccall "qtc_QGroupBox_resize" qtc_QGroupBox_resize :: Ptr (TQGroupBox a) -> Ptr (TQSize t1) -> IO ()

instance Qqresize (QGroupBoxSc a) ((QSize t1)) where
 qresize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGroupBox_resize cobj_x0 cobj_x1

instance Qresize (QGroupBox ()) ((Size)) (IO ()) where
 resize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QGroupBox_resize_qth cobj_x0 csize_x1_w csize_x1_h 

foreign import ccall "qtc_QGroupBox_resize_qth" qtc_QGroupBox_resize_qth :: Ptr (TQGroupBox a) -> CInt -> CInt -> IO ()

instance Qresize (QGroupBoxSc a) ((Size)) (IO ()) where
 resize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QGroupBox_resize_qth cobj_x0 csize_x1_w csize_x1_h 

instance QsetGeometry (QGroupBox ()) ((Int, Int, Int, Int)) where
 setGeometry x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGroupBox_setGeometry1 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QGroupBox_setGeometry1" qtc_QGroupBox_setGeometry1 :: Ptr (TQGroupBox a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QsetGeometry (QGroupBoxSc a) ((Int, Int, Int, Int)) where
 setGeometry x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGroupBox_setGeometry1 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

instance QqsetGeometry (QGroupBox ()) ((QRect t1)) where
 qsetGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGroupBox_setGeometry cobj_x0 cobj_x1

foreign import ccall "qtc_QGroupBox_setGeometry" qtc_QGroupBox_setGeometry :: Ptr (TQGroupBox a) -> Ptr (TQRect t1) -> IO ()

instance QqsetGeometry (QGroupBoxSc a) ((QRect t1)) where
 qsetGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGroupBox_setGeometry cobj_x0 cobj_x1

instance QsetGeometry (QGroupBox ()) ((Rect)) where
 setGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QGroupBox_setGeometry_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

foreign import ccall "qtc_QGroupBox_setGeometry_qth" qtc_QGroupBox_setGeometry_qth :: Ptr (TQGroupBox a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QsetGeometry (QGroupBoxSc a) ((Rect)) where
 setGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QGroupBox_setGeometry_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

instance QsetMouseTracking (QGroupBox ()) ((Bool)) where
 setMouseTracking x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGroupBox_setMouseTracking cobj_x0 (toCBool x1)

foreign import ccall "qtc_QGroupBox_setMouseTracking" qtc_QGroupBox_setMouseTracking :: Ptr (TQGroupBox a) -> CBool -> IO ()

instance QsetMouseTracking (QGroupBoxSc a) ((Bool)) where
 setMouseTracking x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGroupBox_setMouseTracking cobj_x0 (toCBool x1)

instance QsetVisible (QGroupBox ()) ((Bool)) where
 setVisible x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGroupBox_setVisible_h cobj_x0 (toCBool x1)

foreign import ccall "qtc_QGroupBox_setVisible_h" qtc_QGroupBox_setVisible_h :: Ptr (TQGroupBox a) -> CBool -> IO ()

instance QsetVisible (QGroupBoxSc a) ((Bool)) where
 setVisible x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGroupBox_setVisible_h cobj_x0 (toCBool x1)

instance QshowEvent (QGroupBox ()) ((QShowEvent t1)) where
 showEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGroupBox_showEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGroupBox_showEvent_h" qtc_QGroupBox_showEvent_h :: Ptr (TQGroupBox a) -> Ptr (TQShowEvent t1) -> IO ()

instance QshowEvent (QGroupBoxSc a) ((QShowEvent t1)) where
 showEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGroupBox_showEvent_h cobj_x0 cobj_x1

instance QqsizeHint (QGroupBox ()) (()) where
 qsizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGroupBox_sizeHint_h cobj_x0

foreign import ccall "qtc_QGroupBox_sizeHint_h" qtc_QGroupBox_sizeHint_h :: Ptr (TQGroupBox a) -> IO (Ptr (TQSize ()))

instance QqsizeHint (QGroupBoxSc a) (()) where
 qsizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGroupBox_sizeHint_h cobj_x0

instance QsizeHint (QGroupBox ()) (()) where
 sizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGroupBox_sizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QGroupBox_sizeHint_qth_h" qtc_QGroupBox_sizeHint_qth_h :: Ptr (TQGroupBox a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QsizeHint (QGroupBoxSc a) (()) where
 sizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGroupBox_sizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

instance QtabletEvent (QGroupBox ()) ((QTabletEvent t1)) where
 tabletEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGroupBox_tabletEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGroupBox_tabletEvent_h" qtc_QGroupBox_tabletEvent_h :: Ptr (TQGroupBox a) -> Ptr (TQTabletEvent t1) -> IO ()

instance QtabletEvent (QGroupBoxSc a) ((QTabletEvent t1)) where
 tabletEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGroupBox_tabletEvent_h cobj_x0 cobj_x1

instance QupdateMicroFocus (QGroupBox ()) (()) where
 updateMicroFocus x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGroupBox_updateMicroFocus cobj_x0

foreign import ccall "qtc_QGroupBox_updateMicroFocus" qtc_QGroupBox_updateMicroFocus :: Ptr (TQGroupBox a) -> IO ()

instance QupdateMicroFocus (QGroupBoxSc a) (()) where
 updateMicroFocus x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGroupBox_updateMicroFocus cobj_x0

instance QwheelEvent (QGroupBox ()) ((QWheelEvent t1)) where
 wheelEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGroupBox_wheelEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGroupBox_wheelEvent_h" qtc_QGroupBox_wheelEvent_h :: Ptr (TQGroupBox a) -> Ptr (TQWheelEvent t1) -> IO ()

instance QwheelEvent (QGroupBoxSc a) ((QWheelEvent t1)) where
 wheelEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGroupBox_wheelEvent_h cobj_x0 cobj_x1

instance QwindowActivationChange (QGroupBox ()) ((Bool)) where
 windowActivationChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGroupBox_windowActivationChange cobj_x0 (toCBool x1)

foreign import ccall "qtc_QGroupBox_windowActivationChange" qtc_QGroupBox_windowActivationChange :: Ptr (TQGroupBox a) -> CBool -> IO ()

instance QwindowActivationChange (QGroupBoxSc a) ((Bool)) where
 windowActivationChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGroupBox_windowActivationChange cobj_x0 (toCBool x1)

instance QconnectNotify (QGroupBox ()) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QGroupBox_connectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QGroupBox_connectNotify" qtc_QGroupBox_connectNotify :: Ptr (TQGroupBox a) -> CWString -> IO ()

instance QconnectNotify (QGroupBoxSc a) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QGroupBox_connectNotify cobj_x0 cstr_x1

instance QcustomEvent (QGroupBox ()) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGroupBox_customEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QGroupBox_customEvent" qtc_QGroupBox_customEvent :: Ptr (TQGroupBox a) -> Ptr (TQEvent t1) -> IO ()

instance QcustomEvent (QGroupBoxSc a) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGroupBox_customEvent cobj_x0 cobj_x1

instance QdisconnectNotify (QGroupBox ()) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QGroupBox_disconnectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QGroupBox_disconnectNotify" qtc_QGroupBox_disconnectNotify :: Ptr (TQGroupBox a) -> CWString -> IO ()

instance QdisconnectNotify (QGroupBoxSc a) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QGroupBox_disconnectNotify cobj_x0 cstr_x1

instance QeventFilter (QGroupBox ()) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGroupBox_eventFilter_h cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QGroupBox_eventFilter_h" qtc_QGroupBox_eventFilter_h :: Ptr (TQGroupBox a) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO CBool

instance QeventFilter (QGroupBoxSc a) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGroupBox_eventFilter_h cobj_x0 cobj_x1 cobj_x2

instance Qreceivers (QGroupBox ()) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QGroupBox_receivers cobj_x0 cstr_x1

foreign import ccall "qtc_QGroupBox_receivers" qtc_QGroupBox_receivers :: Ptr (TQGroupBox a) -> CWString -> IO CInt

instance Qreceivers (QGroupBoxSc a) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QGroupBox_receivers cobj_x0 cstr_x1

instance Qsender (QGroupBox ()) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGroupBox_sender cobj_x0

foreign import ccall "qtc_QGroupBox_sender" qtc_QGroupBox_sender :: Ptr (TQGroupBox a) -> IO (Ptr (TQObject ()))

instance Qsender (QGroupBoxSc a) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGroupBox_sender cobj_x0

instance QtimerEvent (QGroupBox ()) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGroupBox_timerEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QGroupBox_timerEvent" qtc_QGroupBox_timerEvent :: Ptr (TQGroupBox a) -> Ptr (TQTimerEvent t1) -> IO ()

instance QtimerEvent (QGroupBoxSc a) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGroupBox_timerEvent cobj_x0 cobj_x1

