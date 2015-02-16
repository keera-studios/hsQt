{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QSizeGrip.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:15
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QSizeGrip (
  qSizeGrip
  ,qSizeGrip_delete
  ,qSizeGrip_deleteLater
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

instance QuserMethod (QSizeGrip ()) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QSizeGrip_userMethod cobj_qobj (toCInt evid)

foreign import ccall "qtc_QSizeGrip_userMethod" qtc_QSizeGrip_userMethod :: Ptr (TQSizeGrip a) -> CInt -> IO ()

instance QuserMethod (QSizeGripSc a) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QSizeGrip_userMethod cobj_qobj (toCInt evid)

instance QuserMethod (QSizeGrip ()) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QSizeGrip_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

foreign import ccall "qtc_QSizeGrip_userMethodVariant" qtc_QSizeGrip_userMethodVariant :: Ptr (TQSizeGrip a) -> CInt -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))

instance QuserMethod (QSizeGripSc a) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QSizeGrip_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

qSizeGrip :: (QWidget t1) -> IO (QSizeGrip ())
qSizeGrip (x1)
  = withQSizeGripResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSizeGrip cobj_x1

foreign import ccall "qtc_QSizeGrip" qtc_QSizeGrip :: Ptr (TQWidget t1) -> IO (Ptr (TQSizeGrip ()))

instance Qevent (QSizeGrip ()) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSizeGrip_event_h cobj_x0 cobj_x1

foreign import ccall "qtc_QSizeGrip_event_h" qtc_QSizeGrip_event_h :: Ptr (TQSizeGrip a) -> Ptr (TQEvent t1) -> IO CBool

instance Qevent (QSizeGripSc a) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSizeGrip_event_h cobj_x0 cobj_x1

instance QeventFilter (QSizeGrip ()) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QSizeGrip_eventFilter cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QSizeGrip_eventFilter" qtc_QSizeGrip_eventFilter :: Ptr (TQSizeGrip a) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO CBool

instance QeventFilter (QSizeGripSc a) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QSizeGrip_eventFilter cobj_x0 cobj_x1 cobj_x2

instance QhideEvent (QSizeGrip ()) ((QHideEvent t1)) where
 hideEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSizeGrip_hideEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QSizeGrip_hideEvent_h" qtc_QSizeGrip_hideEvent_h :: Ptr (TQSizeGrip a) -> Ptr (TQHideEvent t1) -> IO ()

instance QhideEvent (QSizeGripSc a) ((QHideEvent t1)) where
 hideEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSizeGrip_hideEvent_h cobj_x0 cobj_x1

instance QmouseMoveEvent (QSizeGrip ()) ((QMouseEvent t1)) where
 mouseMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSizeGrip_mouseMoveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QSizeGrip_mouseMoveEvent_h" qtc_QSizeGrip_mouseMoveEvent_h :: Ptr (TQSizeGrip a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseMoveEvent (QSizeGripSc a) ((QMouseEvent t1)) where
 mouseMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSizeGrip_mouseMoveEvent_h cobj_x0 cobj_x1

instance QmousePressEvent (QSizeGrip ()) ((QMouseEvent t1)) where
 mousePressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSizeGrip_mousePressEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QSizeGrip_mousePressEvent_h" qtc_QSizeGrip_mousePressEvent_h :: Ptr (TQSizeGrip a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmousePressEvent (QSizeGripSc a) ((QMouseEvent t1)) where
 mousePressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSizeGrip_mousePressEvent_h cobj_x0 cobj_x1

instance QmouseReleaseEvent (QSizeGrip ()) ((QMouseEvent t1)) where
 mouseReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSizeGrip_mouseReleaseEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QSizeGrip_mouseReleaseEvent_h" qtc_QSizeGrip_mouseReleaseEvent_h :: Ptr (TQSizeGrip a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseReleaseEvent (QSizeGripSc a) ((QMouseEvent t1)) where
 mouseReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSizeGrip_mouseReleaseEvent_h cobj_x0 cobj_x1

instance QmoveEvent (QSizeGrip ()) ((QMoveEvent t1)) where
 moveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSizeGrip_moveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QSizeGrip_moveEvent_h" qtc_QSizeGrip_moveEvent_h :: Ptr (TQSizeGrip a) -> Ptr (TQMoveEvent t1) -> IO ()

instance QmoveEvent (QSizeGripSc a) ((QMoveEvent t1)) where
 moveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSizeGrip_moveEvent_h cobj_x0 cobj_x1

instance QpaintEvent (QSizeGrip ()) ((QPaintEvent t1)) where
 paintEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSizeGrip_paintEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QSizeGrip_paintEvent_h" qtc_QSizeGrip_paintEvent_h :: Ptr (TQSizeGrip a) -> Ptr (TQPaintEvent t1) -> IO ()

instance QpaintEvent (QSizeGripSc a) ((QPaintEvent t1)) where
 paintEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSizeGrip_paintEvent_h cobj_x0 cobj_x1

instance QsetVisible (QSizeGrip ()) ((Bool)) where
 setVisible x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSizeGrip_setVisible_h cobj_x0 (toCBool x1)

foreign import ccall "qtc_QSizeGrip_setVisible_h" qtc_QSizeGrip_setVisible_h :: Ptr (TQSizeGrip a) -> CBool -> IO ()

instance QsetVisible (QSizeGripSc a) ((Bool)) where
 setVisible x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSizeGrip_setVisible_h cobj_x0 (toCBool x1)

instance QshowEvent (QSizeGrip ()) ((QShowEvent t1)) where
 showEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSizeGrip_showEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QSizeGrip_showEvent_h" qtc_QSizeGrip_showEvent_h :: Ptr (TQSizeGrip a) -> Ptr (TQShowEvent t1) -> IO ()

instance QshowEvent (QSizeGripSc a) ((QShowEvent t1)) where
 showEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSizeGrip_showEvent_h cobj_x0 cobj_x1

instance QqsizeHint (QSizeGrip ()) (()) where
 qsizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSizeGrip_sizeHint_h cobj_x0

foreign import ccall "qtc_QSizeGrip_sizeHint_h" qtc_QSizeGrip_sizeHint_h :: Ptr (TQSizeGrip a) -> IO (Ptr (TQSize ()))

instance QqsizeHint (QSizeGripSc a) (()) where
 qsizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSizeGrip_sizeHint_h cobj_x0

instance QsizeHint (QSizeGrip ()) (()) where
 sizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSizeGrip_sizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QSizeGrip_sizeHint_qth_h" qtc_QSizeGrip_sizeHint_qth_h :: Ptr (TQSizeGrip a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QsizeHint (QSizeGripSc a) (()) where
 sizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSizeGrip_sizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

qSizeGrip_delete :: QSizeGrip a -> IO ()
qSizeGrip_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSizeGrip_delete cobj_x0

foreign import ccall "qtc_QSizeGrip_delete" qtc_QSizeGrip_delete :: Ptr (TQSizeGrip a) -> IO ()

qSizeGrip_deleteLater :: QSizeGrip a -> IO ()
qSizeGrip_deleteLater x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSizeGrip_deleteLater cobj_x0

foreign import ccall "qtc_QSizeGrip_deleteLater" qtc_QSizeGrip_deleteLater :: Ptr (TQSizeGrip a) -> IO ()

instance QactionEvent (QSizeGrip ()) ((QActionEvent t1)) where
 actionEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSizeGrip_actionEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QSizeGrip_actionEvent_h" qtc_QSizeGrip_actionEvent_h :: Ptr (TQSizeGrip a) -> Ptr (TQActionEvent t1) -> IO ()

instance QactionEvent (QSizeGripSc a) ((QActionEvent t1)) where
 actionEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSizeGrip_actionEvent_h cobj_x0 cobj_x1

instance QaddAction (QSizeGrip ()) ((QAction t1)) (IO ()) where
 addAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSizeGrip_addAction cobj_x0 cobj_x1

foreign import ccall "qtc_QSizeGrip_addAction" qtc_QSizeGrip_addAction :: Ptr (TQSizeGrip a) -> Ptr (TQAction t1) -> IO ()

instance QaddAction (QSizeGripSc a) ((QAction t1)) (IO ()) where
 addAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSizeGrip_addAction cobj_x0 cobj_x1

instance QchangeEvent (QSizeGrip ()) ((QEvent t1)) where
 changeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSizeGrip_changeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QSizeGrip_changeEvent_h" qtc_QSizeGrip_changeEvent_h :: Ptr (TQSizeGrip a) -> Ptr (TQEvent t1) -> IO ()

instance QchangeEvent (QSizeGripSc a) ((QEvent t1)) where
 changeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSizeGrip_changeEvent_h cobj_x0 cobj_x1

instance QcloseEvent (QSizeGrip ()) ((QCloseEvent t1)) where
 closeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSizeGrip_closeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QSizeGrip_closeEvent_h" qtc_QSizeGrip_closeEvent_h :: Ptr (TQSizeGrip a) -> Ptr (TQCloseEvent t1) -> IO ()

instance QcloseEvent (QSizeGripSc a) ((QCloseEvent t1)) where
 closeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSizeGrip_closeEvent_h cobj_x0 cobj_x1

instance QcontextMenuEvent (QSizeGrip ()) ((QContextMenuEvent t1)) where
 contextMenuEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSizeGrip_contextMenuEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QSizeGrip_contextMenuEvent_h" qtc_QSizeGrip_contextMenuEvent_h :: Ptr (TQSizeGrip a) -> Ptr (TQContextMenuEvent t1) -> IO ()

instance QcontextMenuEvent (QSizeGripSc a) ((QContextMenuEvent t1)) where
 contextMenuEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSizeGrip_contextMenuEvent_h cobj_x0 cobj_x1

instance Qcreate (QSizeGrip ()) (()) (IO ()) where
 create x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSizeGrip_create cobj_x0

foreign import ccall "qtc_QSizeGrip_create" qtc_QSizeGrip_create :: Ptr (TQSizeGrip a) -> IO ()

instance Qcreate (QSizeGripSc a) (()) (IO ()) where
 create x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSizeGrip_create cobj_x0

instance Qcreate (QSizeGrip ()) ((QVoid t1)) (IO ()) where
 create x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSizeGrip_create1 cobj_x0 cobj_x1

foreign import ccall "qtc_QSizeGrip_create1" qtc_QSizeGrip_create1 :: Ptr (TQSizeGrip a) -> Ptr (TQVoid t1) -> IO ()

instance Qcreate (QSizeGripSc a) ((QVoid t1)) (IO ()) where
 create x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSizeGrip_create1 cobj_x0 cobj_x1

instance Qcreate (QSizeGrip ()) ((QVoid t1, Bool)) (IO ()) where
 create x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSizeGrip_create2 cobj_x0 cobj_x1 (toCBool x2)

foreign import ccall "qtc_QSizeGrip_create2" qtc_QSizeGrip_create2 :: Ptr (TQSizeGrip a) -> Ptr (TQVoid t1) -> CBool -> IO ()

instance Qcreate (QSizeGripSc a) ((QVoid t1, Bool)) (IO ()) where
 create x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSizeGrip_create2 cobj_x0 cobj_x1 (toCBool x2)

instance Qcreate (QSizeGrip ()) ((QVoid t1, Bool, Bool)) (IO ()) where
 create x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSizeGrip_create3 cobj_x0 cobj_x1 (toCBool x2) (toCBool x3)

foreign import ccall "qtc_QSizeGrip_create3" qtc_QSizeGrip_create3 :: Ptr (TQSizeGrip a) -> Ptr (TQVoid t1) -> CBool -> CBool -> IO ()

instance Qcreate (QSizeGripSc a) ((QVoid t1, Bool, Bool)) (IO ()) where
 create x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSizeGrip_create3 cobj_x0 cobj_x1 (toCBool x2) (toCBool x3)

instance Qdestroy (QSizeGrip ()) (()) where
 destroy x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSizeGrip_destroy cobj_x0

foreign import ccall "qtc_QSizeGrip_destroy" qtc_QSizeGrip_destroy :: Ptr (TQSizeGrip a) -> IO ()

instance Qdestroy (QSizeGripSc a) (()) where
 destroy x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSizeGrip_destroy cobj_x0

instance Qdestroy (QSizeGrip ()) ((Bool)) where
 destroy x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSizeGrip_destroy1 cobj_x0 (toCBool x1)

foreign import ccall "qtc_QSizeGrip_destroy1" qtc_QSizeGrip_destroy1 :: Ptr (TQSizeGrip a) -> CBool -> IO ()

instance Qdestroy (QSizeGripSc a) ((Bool)) where
 destroy x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSizeGrip_destroy1 cobj_x0 (toCBool x1)

instance Qdestroy (QSizeGrip ()) ((Bool, Bool)) where
 destroy x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSizeGrip_destroy2 cobj_x0 (toCBool x1) (toCBool x2)

foreign import ccall "qtc_QSizeGrip_destroy2" qtc_QSizeGrip_destroy2 :: Ptr (TQSizeGrip a) -> CBool -> CBool -> IO ()

instance Qdestroy (QSizeGripSc a) ((Bool, Bool)) where
 destroy x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSizeGrip_destroy2 cobj_x0 (toCBool x1) (toCBool x2)

instance QdevType (QSizeGrip ()) (()) where
 devType x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSizeGrip_devType_h cobj_x0

foreign import ccall "qtc_QSizeGrip_devType_h" qtc_QSizeGrip_devType_h :: Ptr (TQSizeGrip a) -> IO CInt

instance QdevType (QSizeGripSc a) (()) where
 devType x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSizeGrip_devType_h cobj_x0

instance QdragEnterEvent (QSizeGrip ()) ((QDragEnterEvent t1)) where
 dragEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSizeGrip_dragEnterEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QSizeGrip_dragEnterEvent_h" qtc_QSizeGrip_dragEnterEvent_h :: Ptr (TQSizeGrip a) -> Ptr (TQDragEnterEvent t1) -> IO ()

instance QdragEnterEvent (QSizeGripSc a) ((QDragEnterEvent t1)) where
 dragEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSizeGrip_dragEnterEvent_h cobj_x0 cobj_x1

instance QdragLeaveEvent (QSizeGrip ()) ((QDragLeaveEvent t1)) where
 dragLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSizeGrip_dragLeaveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QSizeGrip_dragLeaveEvent_h" qtc_QSizeGrip_dragLeaveEvent_h :: Ptr (TQSizeGrip a) -> Ptr (TQDragLeaveEvent t1) -> IO ()

instance QdragLeaveEvent (QSizeGripSc a) ((QDragLeaveEvent t1)) where
 dragLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSizeGrip_dragLeaveEvent_h cobj_x0 cobj_x1

instance QdragMoveEvent (QSizeGrip ()) ((QDragMoveEvent t1)) where
 dragMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSizeGrip_dragMoveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QSizeGrip_dragMoveEvent_h" qtc_QSizeGrip_dragMoveEvent_h :: Ptr (TQSizeGrip a) -> Ptr (TQDragMoveEvent t1) -> IO ()

instance QdragMoveEvent (QSizeGripSc a) ((QDragMoveEvent t1)) where
 dragMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSizeGrip_dragMoveEvent_h cobj_x0 cobj_x1

instance QdropEvent (QSizeGrip ()) ((QDropEvent t1)) where
 dropEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSizeGrip_dropEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QSizeGrip_dropEvent_h" qtc_QSizeGrip_dropEvent_h :: Ptr (TQSizeGrip a) -> Ptr (TQDropEvent t1) -> IO ()

instance QdropEvent (QSizeGripSc a) ((QDropEvent t1)) where
 dropEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSizeGrip_dropEvent_h cobj_x0 cobj_x1

instance QenabledChange (QSizeGrip ()) ((Bool)) where
 enabledChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSizeGrip_enabledChange cobj_x0 (toCBool x1)

foreign import ccall "qtc_QSizeGrip_enabledChange" qtc_QSizeGrip_enabledChange :: Ptr (TQSizeGrip a) -> CBool -> IO ()

instance QenabledChange (QSizeGripSc a) ((Bool)) where
 enabledChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSizeGrip_enabledChange cobj_x0 (toCBool x1)

instance QenterEvent (QSizeGrip ()) ((QEvent t1)) where
 enterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSizeGrip_enterEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QSizeGrip_enterEvent_h" qtc_QSizeGrip_enterEvent_h :: Ptr (TQSizeGrip a) -> Ptr (TQEvent t1) -> IO ()

instance QenterEvent (QSizeGripSc a) ((QEvent t1)) where
 enterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSizeGrip_enterEvent_h cobj_x0 cobj_x1

instance QfocusInEvent (QSizeGrip ()) ((QFocusEvent t1)) where
 focusInEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSizeGrip_focusInEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QSizeGrip_focusInEvent_h" qtc_QSizeGrip_focusInEvent_h :: Ptr (TQSizeGrip a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusInEvent (QSizeGripSc a) ((QFocusEvent t1)) where
 focusInEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSizeGrip_focusInEvent_h cobj_x0 cobj_x1

instance QfocusNextChild (QSizeGrip ()) (()) where
 focusNextChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSizeGrip_focusNextChild cobj_x0

foreign import ccall "qtc_QSizeGrip_focusNextChild" qtc_QSizeGrip_focusNextChild :: Ptr (TQSizeGrip a) -> IO CBool

instance QfocusNextChild (QSizeGripSc a) (()) where
 focusNextChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSizeGrip_focusNextChild cobj_x0

instance QfocusNextPrevChild (QSizeGrip ()) ((Bool)) where
 focusNextPrevChild x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSizeGrip_focusNextPrevChild cobj_x0 (toCBool x1)

foreign import ccall "qtc_QSizeGrip_focusNextPrevChild" qtc_QSizeGrip_focusNextPrevChild :: Ptr (TQSizeGrip a) -> CBool -> IO CBool

instance QfocusNextPrevChild (QSizeGripSc a) ((Bool)) where
 focusNextPrevChild x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSizeGrip_focusNextPrevChild cobj_x0 (toCBool x1)

instance QfocusOutEvent (QSizeGrip ()) ((QFocusEvent t1)) where
 focusOutEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSizeGrip_focusOutEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QSizeGrip_focusOutEvent_h" qtc_QSizeGrip_focusOutEvent_h :: Ptr (TQSizeGrip a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusOutEvent (QSizeGripSc a) ((QFocusEvent t1)) where
 focusOutEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSizeGrip_focusOutEvent_h cobj_x0 cobj_x1

instance QfocusPreviousChild (QSizeGrip ()) (()) where
 focusPreviousChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSizeGrip_focusPreviousChild cobj_x0

foreign import ccall "qtc_QSizeGrip_focusPreviousChild" qtc_QSizeGrip_focusPreviousChild :: Ptr (TQSizeGrip a) -> IO CBool

instance QfocusPreviousChild (QSizeGripSc a) (()) where
 focusPreviousChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSizeGrip_focusPreviousChild cobj_x0

instance QfontChange (QSizeGrip ()) ((QFont t1)) where
 fontChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSizeGrip_fontChange cobj_x0 cobj_x1

foreign import ccall "qtc_QSizeGrip_fontChange" qtc_QSizeGrip_fontChange :: Ptr (TQSizeGrip a) -> Ptr (TQFont t1) -> IO ()

instance QfontChange (QSizeGripSc a) ((QFont t1)) where
 fontChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSizeGrip_fontChange cobj_x0 cobj_x1

instance QheightForWidth (QSizeGrip ()) ((Int)) where
 heightForWidth x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSizeGrip_heightForWidth_h cobj_x0 (toCInt x1)

foreign import ccall "qtc_QSizeGrip_heightForWidth_h" qtc_QSizeGrip_heightForWidth_h :: Ptr (TQSizeGrip a) -> CInt -> IO CInt

instance QheightForWidth (QSizeGripSc a) ((Int)) where
 heightForWidth x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSizeGrip_heightForWidth_h cobj_x0 (toCInt x1)

instance QinputMethodEvent (QSizeGrip ()) ((QInputMethodEvent t1)) where
 inputMethodEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSizeGrip_inputMethodEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QSizeGrip_inputMethodEvent" qtc_QSizeGrip_inputMethodEvent :: Ptr (TQSizeGrip a) -> Ptr (TQInputMethodEvent t1) -> IO ()

instance QinputMethodEvent (QSizeGripSc a) ((QInputMethodEvent t1)) where
 inputMethodEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSizeGrip_inputMethodEvent cobj_x0 cobj_x1

instance QinputMethodQuery (QSizeGrip ()) ((InputMethodQuery)) where
 inputMethodQuery x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSizeGrip_inputMethodQuery_h cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QSizeGrip_inputMethodQuery_h" qtc_QSizeGrip_inputMethodQuery_h :: Ptr (TQSizeGrip a) -> CLong -> IO (Ptr (TQVariant ()))

instance QinputMethodQuery (QSizeGripSc a) ((InputMethodQuery)) where
 inputMethodQuery x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSizeGrip_inputMethodQuery_h cobj_x0 (toCLong $ qEnum_toInt x1)

instance QkeyPressEvent (QSizeGrip ()) ((QKeyEvent t1)) where
 keyPressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSizeGrip_keyPressEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QSizeGrip_keyPressEvent_h" qtc_QSizeGrip_keyPressEvent_h :: Ptr (TQSizeGrip a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyPressEvent (QSizeGripSc a) ((QKeyEvent t1)) where
 keyPressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSizeGrip_keyPressEvent_h cobj_x0 cobj_x1

instance QkeyReleaseEvent (QSizeGrip ()) ((QKeyEvent t1)) where
 keyReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSizeGrip_keyReleaseEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QSizeGrip_keyReleaseEvent_h" qtc_QSizeGrip_keyReleaseEvent_h :: Ptr (TQSizeGrip a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyReleaseEvent (QSizeGripSc a) ((QKeyEvent t1)) where
 keyReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSizeGrip_keyReleaseEvent_h cobj_x0 cobj_x1

instance QlanguageChange (QSizeGrip ()) (()) where
 languageChange x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSizeGrip_languageChange cobj_x0

foreign import ccall "qtc_QSizeGrip_languageChange" qtc_QSizeGrip_languageChange :: Ptr (TQSizeGrip a) -> IO ()

instance QlanguageChange (QSizeGripSc a) (()) where
 languageChange x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSizeGrip_languageChange cobj_x0

instance QleaveEvent (QSizeGrip ()) ((QEvent t1)) where
 leaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSizeGrip_leaveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QSizeGrip_leaveEvent_h" qtc_QSizeGrip_leaveEvent_h :: Ptr (TQSizeGrip a) -> Ptr (TQEvent t1) -> IO ()

instance QleaveEvent (QSizeGripSc a) ((QEvent t1)) where
 leaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSizeGrip_leaveEvent_h cobj_x0 cobj_x1

instance Qmetric (QSizeGrip ()) ((PaintDeviceMetric)) where
 metric x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSizeGrip_metric cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QSizeGrip_metric" qtc_QSizeGrip_metric :: Ptr (TQSizeGrip a) -> CLong -> IO CInt

instance Qmetric (QSizeGripSc a) ((PaintDeviceMetric)) where
 metric x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSizeGrip_metric cobj_x0 (toCLong $ qEnum_toInt x1)

instance QqminimumSizeHint (QSizeGrip ()) (()) where
 qminimumSizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSizeGrip_minimumSizeHint_h cobj_x0

foreign import ccall "qtc_QSizeGrip_minimumSizeHint_h" qtc_QSizeGrip_minimumSizeHint_h :: Ptr (TQSizeGrip a) -> IO (Ptr (TQSize ()))

instance QqminimumSizeHint (QSizeGripSc a) (()) where
 qminimumSizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSizeGrip_minimumSizeHint_h cobj_x0

instance QminimumSizeHint (QSizeGrip ()) (()) where
 minimumSizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSizeGrip_minimumSizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QSizeGrip_minimumSizeHint_qth_h" qtc_QSizeGrip_minimumSizeHint_qth_h :: Ptr (TQSizeGrip a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QminimumSizeHint (QSizeGripSc a) (()) where
 minimumSizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSizeGrip_minimumSizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

instance QmouseDoubleClickEvent (QSizeGrip ()) ((QMouseEvent t1)) where
 mouseDoubleClickEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSizeGrip_mouseDoubleClickEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QSizeGrip_mouseDoubleClickEvent_h" qtc_QSizeGrip_mouseDoubleClickEvent_h :: Ptr (TQSizeGrip a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseDoubleClickEvent (QSizeGripSc a) ((QMouseEvent t1)) where
 mouseDoubleClickEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSizeGrip_mouseDoubleClickEvent_h cobj_x0 cobj_x1

instance Qmove (QSizeGrip ()) ((Int, Int)) where
 move x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSizeGrip_move1 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QSizeGrip_move1" qtc_QSizeGrip_move1 :: Ptr (TQSizeGrip a) -> CInt -> CInt -> IO ()

instance Qmove (QSizeGripSc a) ((Int, Int)) where
 move x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSizeGrip_move1 cobj_x0 (toCInt x1) (toCInt x2)

instance Qmove (QSizeGrip ()) ((Point)) where
 move x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QSizeGrip_move_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

foreign import ccall "qtc_QSizeGrip_move_qth" qtc_QSizeGrip_move_qth :: Ptr (TQSizeGrip a) -> CInt -> CInt -> IO ()

instance Qmove (QSizeGripSc a) ((Point)) where
 move x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QSizeGrip_move_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

instance Qqmove (QSizeGrip ()) ((QPoint t1)) where
 qmove x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSizeGrip_move cobj_x0 cobj_x1

foreign import ccall "qtc_QSizeGrip_move" qtc_QSizeGrip_move :: Ptr (TQSizeGrip a) -> Ptr (TQPoint t1) -> IO ()

instance Qqmove (QSizeGripSc a) ((QPoint t1)) where
 qmove x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSizeGrip_move cobj_x0 cobj_x1

instance QpaintEngine (QSizeGrip ()) (()) where
 paintEngine x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSizeGrip_paintEngine_h cobj_x0

foreign import ccall "qtc_QSizeGrip_paintEngine_h" qtc_QSizeGrip_paintEngine_h :: Ptr (TQSizeGrip a) -> IO (Ptr (TQPaintEngine ()))

instance QpaintEngine (QSizeGripSc a) (()) where
 paintEngine x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSizeGrip_paintEngine_h cobj_x0

instance QpaletteChange (QSizeGrip ()) ((QPalette t1)) where
 paletteChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSizeGrip_paletteChange cobj_x0 cobj_x1

foreign import ccall "qtc_QSizeGrip_paletteChange" qtc_QSizeGrip_paletteChange :: Ptr (TQSizeGrip a) -> Ptr (TQPalette t1) -> IO ()

instance QpaletteChange (QSizeGripSc a) ((QPalette t1)) where
 paletteChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSizeGrip_paletteChange cobj_x0 cobj_x1

instance Qrepaint (QSizeGrip ()) (()) where
 repaint x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSizeGrip_repaint cobj_x0

foreign import ccall "qtc_QSizeGrip_repaint" qtc_QSizeGrip_repaint :: Ptr (TQSizeGrip a) -> IO ()

instance Qrepaint (QSizeGripSc a) (()) where
 repaint x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSizeGrip_repaint cobj_x0

instance Qrepaint (QSizeGrip ()) ((Int, Int, Int, Int)) where
 repaint x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSizeGrip_repaint2 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QSizeGrip_repaint2" qtc_QSizeGrip_repaint2 :: Ptr (TQSizeGrip a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance Qrepaint (QSizeGripSc a) ((Int, Int, Int, Int)) where
 repaint x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSizeGrip_repaint2 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

instance Qrepaint (QSizeGrip ()) ((QRegion t1)) where
 repaint x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSizeGrip_repaint1 cobj_x0 cobj_x1

foreign import ccall "qtc_QSizeGrip_repaint1" qtc_QSizeGrip_repaint1 :: Ptr (TQSizeGrip a) -> Ptr (TQRegion t1) -> IO ()

instance Qrepaint (QSizeGripSc a) ((QRegion t1)) where
 repaint x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSizeGrip_repaint1 cobj_x0 cobj_x1

instance QresetInputContext (QSizeGrip ()) (()) where
 resetInputContext x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSizeGrip_resetInputContext cobj_x0

foreign import ccall "qtc_QSizeGrip_resetInputContext" qtc_QSizeGrip_resetInputContext :: Ptr (TQSizeGrip a) -> IO ()

instance QresetInputContext (QSizeGripSc a) (()) where
 resetInputContext x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSizeGrip_resetInputContext cobj_x0

instance Qresize (QSizeGrip ()) ((Int, Int)) (IO ()) where
 resize x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSizeGrip_resize1 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QSizeGrip_resize1" qtc_QSizeGrip_resize1 :: Ptr (TQSizeGrip a) -> CInt -> CInt -> IO ()

instance Qresize (QSizeGripSc a) ((Int, Int)) (IO ()) where
 resize x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSizeGrip_resize1 cobj_x0 (toCInt x1) (toCInt x2)

instance Qqresize (QSizeGrip ()) ((QSize t1)) where
 qresize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSizeGrip_resize cobj_x0 cobj_x1

foreign import ccall "qtc_QSizeGrip_resize" qtc_QSizeGrip_resize :: Ptr (TQSizeGrip a) -> Ptr (TQSize t1) -> IO ()

instance Qqresize (QSizeGripSc a) ((QSize t1)) where
 qresize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSizeGrip_resize cobj_x0 cobj_x1

instance Qresize (QSizeGrip ()) ((Size)) (IO ()) where
 resize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QSizeGrip_resize_qth cobj_x0 csize_x1_w csize_x1_h 

foreign import ccall "qtc_QSizeGrip_resize_qth" qtc_QSizeGrip_resize_qth :: Ptr (TQSizeGrip a) -> CInt -> CInt -> IO ()

instance Qresize (QSizeGripSc a) ((Size)) (IO ()) where
 resize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QSizeGrip_resize_qth cobj_x0 csize_x1_w csize_x1_h 

instance QresizeEvent (QSizeGrip ()) ((QResizeEvent t1)) where
 resizeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSizeGrip_resizeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QSizeGrip_resizeEvent_h" qtc_QSizeGrip_resizeEvent_h :: Ptr (TQSizeGrip a) -> Ptr (TQResizeEvent t1) -> IO ()

instance QresizeEvent (QSizeGripSc a) ((QResizeEvent t1)) where
 resizeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSizeGrip_resizeEvent_h cobj_x0 cobj_x1

instance QsetGeometry (QSizeGrip ()) ((Int, Int, Int, Int)) where
 setGeometry x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSizeGrip_setGeometry1 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QSizeGrip_setGeometry1" qtc_QSizeGrip_setGeometry1 :: Ptr (TQSizeGrip a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QsetGeometry (QSizeGripSc a) ((Int, Int, Int, Int)) where
 setGeometry x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSizeGrip_setGeometry1 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

instance QqsetGeometry (QSizeGrip ()) ((QRect t1)) where
 qsetGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSizeGrip_setGeometry cobj_x0 cobj_x1

foreign import ccall "qtc_QSizeGrip_setGeometry" qtc_QSizeGrip_setGeometry :: Ptr (TQSizeGrip a) -> Ptr (TQRect t1) -> IO ()

instance QqsetGeometry (QSizeGripSc a) ((QRect t1)) where
 qsetGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSizeGrip_setGeometry cobj_x0 cobj_x1

instance QsetGeometry (QSizeGrip ()) ((Rect)) where
 setGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QSizeGrip_setGeometry_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

foreign import ccall "qtc_QSizeGrip_setGeometry_qth" qtc_QSizeGrip_setGeometry_qth :: Ptr (TQSizeGrip a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QsetGeometry (QSizeGripSc a) ((Rect)) where
 setGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QSizeGrip_setGeometry_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

instance QsetMouseTracking (QSizeGrip ()) ((Bool)) where
 setMouseTracking x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSizeGrip_setMouseTracking cobj_x0 (toCBool x1)

foreign import ccall "qtc_QSizeGrip_setMouseTracking" qtc_QSizeGrip_setMouseTracking :: Ptr (TQSizeGrip a) -> CBool -> IO ()

instance QsetMouseTracking (QSizeGripSc a) ((Bool)) where
 setMouseTracking x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSizeGrip_setMouseTracking cobj_x0 (toCBool x1)

instance QtabletEvent (QSizeGrip ()) ((QTabletEvent t1)) where
 tabletEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSizeGrip_tabletEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QSizeGrip_tabletEvent_h" qtc_QSizeGrip_tabletEvent_h :: Ptr (TQSizeGrip a) -> Ptr (TQTabletEvent t1) -> IO ()

instance QtabletEvent (QSizeGripSc a) ((QTabletEvent t1)) where
 tabletEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSizeGrip_tabletEvent_h cobj_x0 cobj_x1

instance QupdateMicroFocus (QSizeGrip ()) (()) where
 updateMicroFocus x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSizeGrip_updateMicroFocus cobj_x0

foreign import ccall "qtc_QSizeGrip_updateMicroFocus" qtc_QSizeGrip_updateMicroFocus :: Ptr (TQSizeGrip a) -> IO ()

instance QupdateMicroFocus (QSizeGripSc a) (()) where
 updateMicroFocus x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSizeGrip_updateMicroFocus cobj_x0

instance QwheelEvent (QSizeGrip ()) ((QWheelEvent t1)) where
 wheelEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSizeGrip_wheelEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QSizeGrip_wheelEvent_h" qtc_QSizeGrip_wheelEvent_h :: Ptr (TQSizeGrip a) -> Ptr (TQWheelEvent t1) -> IO ()

instance QwheelEvent (QSizeGripSc a) ((QWheelEvent t1)) where
 wheelEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSizeGrip_wheelEvent_h cobj_x0 cobj_x1

instance QwindowActivationChange (QSizeGrip ()) ((Bool)) where
 windowActivationChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSizeGrip_windowActivationChange cobj_x0 (toCBool x1)

foreign import ccall "qtc_QSizeGrip_windowActivationChange" qtc_QSizeGrip_windowActivationChange :: Ptr (TQSizeGrip a) -> CBool -> IO ()

instance QwindowActivationChange (QSizeGripSc a) ((Bool)) where
 windowActivationChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSizeGrip_windowActivationChange cobj_x0 (toCBool x1)

instance QchildEvent (QSizeGrip ()) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSizeGrip_childEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QSizeGrip_childEvent" qtc_QSizeGrip_childEvent :: Ptr (TQSizeGrip a) -> Ptr (TQChildEvent t1) -> IO ()

instance QchildEvent (QSizeGripSc a) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSizeGrip_childEvent cobj_x0 cobj_x1

instance QconnectNotify (QSizeGrip ()) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QSizeGrip_connectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QSizeGrip_connectNotify" qtc_QSizeGrip_connectNotify :: Ptr (TQSizeGrip a) -> CWString -> IO ()

instance QconnectNotify (QSizeGripSc a) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QSizeGrip_connectNotify cobj_x0 cstr_x1

instance QcustomEvent (QSizeGrip ()) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSizeGrip_customEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QSizeGrip_customEvent" qtc_QSizeGrip_customEvent :: Ptr (TQSizeGrip a) -> Ptr (TQEvent t1) -> IO ()

instance QcustomEvent (QSizeGripSc a) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSizeGrip_customEvent cobj_x0 cobj_x1

instance QdisconnectNotify (QSizeGrip ()) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QSizeGrip_disconnectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QSizeGrip_disconnectNotify" qtc_QSizeGrip_disconnectNotify :: Ptr (TQSizeGrip a) -> CWString -> IO ()

instance QdisconnectNotify (QSizeGripSc a) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QSizeGrip_disconnectNotify cobj_x0 cstr_x1

instance Qreceivers (QSizeGrip ()) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QSizeGrip_receivers cobj_x0 cstr_x1

foreign import ccall "qtc_QSizeGrip_receivers" qtc_QSizeGrip_receivers :: Ptr (TQSizeGrip a) -> CWString -> IO CInt

instance Qreceivers (QSizeGripSc a) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QSizeGrip_receivers cobj_x0 cstr_x1

instance Qsender (QSizeGrip ()) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSizeGrip_sender cobj_x0

foreign import ccall "qtc_QSizeGrip_sender" qtc_QSizeGrip_sender :: Ptr (TQSizeGrip a) -> IO (Ptr (TQObject ()))

instance Qsender (QSizeGripSc a) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSizeGrip_sender cobj_x0

instance QtimerEvent (QSizeGrip ()) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSizeGrip_timerEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QSizeGrip_timerEvent" qtc_QSizeGrip_timerEvent :: Ptr (TQSizeGrip a) -> Ptr (TQTimerEvent t1) -> IO ()

instance QtimerEvent (QSizeGripSc a) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSizeGrip_timerEvent cobj_x0 cobj_x1

