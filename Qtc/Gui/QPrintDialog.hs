{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QPrintDialog.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:21
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QPrintDialog (
  QqPrintDialog(..)
  ,qPrintDialog_delete
  ,qPrintDialog_deleteLater
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

instance QuserMethod (QPrintDialog ()) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QPrintDialog_userMethod cobj_qobj (toCInt evid)

foreign import ccall "qtc_QPrintDialog_userMethod" qtc_QPrintDialog_userMethod :: Ptr (TQPrintDialog a) -> CInt -> IO ()

instance QuserMethod (QPrintDialogSc a) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QPrintDialog_userMethod cobj_qobj (toCInt evid)

instance QuserMethod (QPrintDialog ()) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QPrintDialog_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

foreign import ccall "qtc_QPrintDialog_userMethodVariant" qtc_QPrintDialog_userMethodVariant :: Ptr (TQPrintDialog a) -> CInt -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))

instance QuserMethod (QPrintDialogSc a) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QPrintDialog_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

class QqPrintDialog x1 where
  qPrintDialog :: x1 -> IO (QPrintDialog ())

instance QqPrintDialog ((QPrinter t1)) where
 qPrintDialog (x1)
  = withQPrintDialogResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPrintDialog cobj_x1

foreign import ccall "qtc_QPrintDialog" qtc_QPrintDialog :: Ptr (TQPrinter t1) -> IO (Ptr (TQPrintDialog ()))

instance QqPrintDialog ((QPrinter t1, QWidget t2)) where
 qPrintDialog (x1, x2)
  = withQPrintDialogResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QPrintDialog1 cobj_x1 cobj_x2

foreign import ccall "qtc_QPrintDialog1" qtc_QPrintDialog1 :: Ptr (TQPrinter t1) -> Ptr (TQWidget t2) -> IO (Ptr (TQPrintDialog ()))

instance QeventFilter (QPrintDialog ()) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QPrintDialog_eventFilter_h cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QPrintDialog_eventFilter_h" qtc_QPrintDialog_eventFilter_h :: Ptr (TQPrintDialog a) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO CBool

instance QeventFilter (QPrintDialogSc a) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QPrintDialog_eventFilter_h cobj_x0 cobj_x1 cobj_x2

instance Qexec (QPrintDialog ()) (()) (IO (Int)) where
 exec x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPrintDialog_exec_h cobj_x0

foreign import ccall "qtc_QPrintDialog_exec_h" qtc_QPrintDialog_exec_h :: Ptr (TQPrintDialog a) -> IO CInt

instance Qexec (QPrintDialogSc a) (()) (IO (Int)) where
 exec x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPrintDialog_exec_h cobj_x0

qPrintDialog_delete :: QPrintDialog a -> IO ()
qPrintDialog_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPrintDialog_delete cobj_x0

foreign import ccall "qtc_QPrintDialog_delete" qtc_QPrintDialog_delete :: Ptr (TQPrintDialog a) -> IO ()

qPrintDialog_deleteLater :: QPrintDialog a -> IO ()
qPrintDialog_deleteLater x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPrintDialog_deleteLater cobj_x0

foreign import ccall "qtc_QPrintDialog_deleteLater" qtc_QPrintDialog_deleteLater :: Ptr (TQPrintDialog a) -> IO ()

instance Qaccept (QPrintDialog ()) (()) where
 accept x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPrintDialog_accept_h cobj_x0

foreign import ccall "qtc_QPrintDialog_accept_h" qtc_QPrintDialog_accept_h :: Ptr (TQPrintDialog a) -> IO ()

instance Qaccept (QPrintDialogSc a) (()) where
 accept x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPrintDialog_accept_h cobj_x0

instance QadjustPosition (QPrintDialog ()) ((QWidget t1)) where
 adjustPosition x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPrintDialog_adjustPosition cobj_x0 cobj_x1

foreign import ccall "qtc_QPrintDialog_adjustPosition" qtc_QPrintDialog_adjustPosition :: Ptr (TQPrintDialog a) -> Ptr (TQWidget t1) -> IO ()

instance QadjustPosition (QPrintDialogSc a) ((QWidget t1)) where
 adjustPosition x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPrintDialog_adjustPosition cobj_x0 cobj_x1

instance QcloseEvent (QPrintDialog ()) ((QCloseEvent t1)) where
 closeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPrintDialog_closeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QPrintDialog_closeEvent_h" qtc_QPrintDialog_closeEvent_h :: Ptr (TQPrintDialog a) -> Ptr (TQCloseEvent t1) -> IO ()

instance QcloseEvent (QPrintDialogSc a) ((QCloseEvent t1)) where
 closeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPrintDialog_closeEvent_h cobj_x0 cobj_x1

instance QcontextMenuEvent (QPrintDialog ()) ((QContextMenuEvent t1)) where
 contextMenuEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPrintDialog_contextMenuEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QPrintDialog_contextMenuEvent_h" qtc_QPrintDialog_contextMenuEvent_h :: Ptr (TQPrintDialog a) -> Ptr (TQContextMenuEvent t1) -> IO ()

instance QcontextMenuEvent (QPrintDialogSc a) ((QContextMenuEvent t1)) where
 contextMenuEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPrintDialog_contextMenuEvent_h cobj_x0 cobj_x1

instance Qdone (QPrintDialog ()) ((Int)) where
 done x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPrintDialog_done_h cobj_x0 (toCInt x1)

foreign import ccall "qtc_QPrintDialog_done_h" qtc_QPrintDialog_done_h :: Ptr (TQPrintDialog a) -> CInt -> IO ()

instance Qdone (QPrintDialogSc a) ((Int)) where
 done x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPrintDialog_done_h cobj_x0 (toCInt x1)

instance Qevent (QPrintDialog ()) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPrintDialog_event_h cobj_x0 cobj_x1

foreign import ccall "qtc_QPrintDialog_event_h" qtc_QPrintDialog_event_h :: Ptr (TQPrintDialog a) -> Ptr (TQEvent t1) -> IO CBool

instance Qevent (QPrintDialogSc a) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPrintDialog_event_h cobj_x0 cobj_x1

instance QkeyPressEvent (QPrintDialog ()) ((QKeyEvent t1)) where
 keyPressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPrintDialog_keyPressEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QPrintDialog_keyPressEvent_h" qtc_QPrintDialog_keyPressEvent_h :: Ptr (TQPrintDialog a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyPressEvent (QPrintDialogSc a) ((QKeyEvent t1)) where
 keyPressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPrintDialog_keyPressEvent_h cobj_x0 cobj_x1

instance QqminimumSizeHint (QPrintDialog ()) (()) where
 qminimumSizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPrintDialog_minimumSizeHint_h cobj_x0

foreign import ccall "qtc_QPrintDialog_minimumSizeHint_h" qtc_QPrintDialog_minimumSizeHint_h :: Ptr (TQPrintDialog a) -> IO (Ptr (TQSize ()))

instance QqminimumSizeHint (QPrintDialogSc a) (()) where
 qminimumSizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPrintDialog_minimumSizeHint_h cobj_x0

instance QminimumSizeHint (QPrintDialog ()) (()) where
 minimumSizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPrintDialog_minimumSizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QPrintDialog_minimumSizeHint_qth_h" qtc_QPrintDialog_minimumSizeHint_qth_h :: Ptr (TQPrintDialog a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QminimumSizeHint (QPrintDialogSc a) (()) where
 minimumSizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPrintDialog_minimumSizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

instance Qreject (QPrintDialog ()) (()) where
 reject x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPrintDialog_reject_h cobj_x0

foreign import ccall "qtc_QPrintDialog_reject_h" qtc_QPrintDialog_reject_h :: Ptr (TQPrintDialog a) -> IO ()

instance Qreject (QPrintDialogSc a) (()) where
 reject x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPrintDialog_reject_h cobj_x0

instance QresizeEvent (QPrintDialog ()) ((QResizeEvent t1)) where
 resizeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPrintDialog_resizeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QPrintDialog_resizeEvent_h" qtc_QPrintDialog_resizeEvent_h :: Ptr (TQPrintDialog a) -> Ptr (TQResizeEvent t1) -> IO ()

instance QresizeEvent (QPrintDialogSc a) ((QResizeEvent t1)) where
 resizeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPrintDialog_resizeEvent_h cobj_x0 cobj_x1

instance QsetVisible (QPrintDialog ()) ((Bool)) where
 setVisible x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPrintDialog_setVisible_h cobj_x0 (toCBool x1)

foreign import ccall "qtc_QPrintDialog_setVisible_h" qtc_QPrintDialog_setVisible_h :: Ptr (TQPrintDialog a) -> CBool -> IO ()

instance QsetVisible (QPrintDialogSc a) ((Bool)) where
 setVisible x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPrintDialog_setVisible_h cobj_x0 (toCBool x1)

instance QshowEvent (QPrintDialog ()) ((QShowEvent t1)) where
 showEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPrintDialog_showEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QPrintDialog_showEvent_h" qtc_QPrintDialog_showEvent_h :: Ptr (TQPrintDialog a) -> Ptr (TQShowEvent t1) -> IO ()

instance QshowEvent (QPrintDialogSc a) ((QShowEvent t1)) where
 showEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPrintDialog_showEvent_h cobj_x0 cobj_x1

instance QqsizeHint (QPrintDialog ()) (()) where
 qsizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPrintDialog_sizeHint_h cobj_x0

foreign import ccall "qtc_QPrintDialog_sizeHint_h" qtc_QPrintDialog_sizeHint_h :: Ptr (TQPrintDialog a) -> IO (Ptr (TQSize ()))

instance QqsizeHint (QPrintDialogSc a) (()) where
 qsizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPrintDialog_sizeHint_h cobj_x0

instance QsizeHint (QPrintDialog ()) (()) where
 sizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPrintDialog_sizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QPrintDialog_sizeHint_qth_h" qtc_QPrintDialog_sizeHint_qth_h :: Ptr (TQPrintDialog a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QsizeHint (QPrintDialogSc a) (()) where
 sizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPrintDialog_sizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

instance QactionEvent (QPrintDialog ()) ((QActionEvent t1)) where
 actionEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPrintDialog_actionEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QPrintDialog_actionEvent_h" qtc_QPrintDialog_actionEvent_h :: Ptr (TQPrintDialog a) -> Ptr (TQActionEvent t1) -> IO ()

instance QactionEvent (QPrintDialogSc a) ((QActionEvent t1)) where
 actionEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPrintDialog_actionEvent_h cobj_x0 cobj_x1

instance QaddAction (QPrintDialog ()) ((QAction t1)) (IO ()) where
 addAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPrintDialog_addAction cobj_x0 cobj_x1

foreign import ccall "qtc_QPrintDialog_addAction" qtc_QPrintDialog_addAction :: Ptr (TQPrintDialog a) -> Ptr (TQAction t1) -> IO ()

instance QaddAction (QPrintDialogSc a) ((QAction t1)) (IO ()) where
 addAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPrintDialog_addAction cobj_x0 cobj_x1

instance QchangeEvent (QPrintDialog ()) ((QEvent t1)) where
 changeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPrintDialog_changeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QPrintDialog_changeEvent_h" qtc_QPrintDialog_changeEvent_h :: Ptr (TQPrintDialog a) -> Ptr (TQEvent t1) -> IO ()

instance QchangeEvent (QPrintDialogSc a) ((QEvent t1)) where
 changeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPrintDialog_changeEvent_h cobj_x0 cobj_x1

instance Qcreate (QPrintDialog ()) (()) (IO ()) where
 create x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPrintDialog_create cobj_x0

foreign import ccall "qtc_QPrintDialog_create" qtc_QPrintDialog_create :: Ptr (TQPrintDialog a) -> IO ()

instance Qcreate (QPrintDialogSc a) (()) (IO ()) where
 create x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPrintDialog_create cobj_x0

instance Qcreate (QPrintDialog ()) ((QVoid t1)) (IO ()) where
 create x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPrintDialog_create1 cobj_x0 cobj_x1

foreign import ccall "qtc_QPrintDialog_create1" qtc_QPrintDialog_create1 :: Ptr (TQPrintDialog a) -> Ptr (TQVoid t1) -> IO ()

instance Qcreate (QPrintDialogSc a) ((QVoid t1)) (IO ()) where
 create x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPrintDialog_create1 cobj_x0 cobj_x1

instance Qcreate (QPrintDialog ()) ((QVoid t1, Bool)) (IO ()) where
 create x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPrintDialog_create2 cobj_x0 cobj_x1 (toCBool x2)

foreign import ccall "qtc_QPrintDialog_create2" qtc_QPrintDialog_create2 :: Ptr (TQPrintDialog a) -> Ptr (TQVoid t1) -> CBool -> IO ()

instance Qcreate (QPrintDialogSc a) ((QVoid t1, Bool)) (IO ()) where
 create x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPrintDialog_create2 cobj_x0 cobj_x1 (toCBool x2)

instance Qcreate (QPrintDialog ()) ((QVoid t1, Bool, Bool)) (IO ()) where
 create x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPrintDialog_create3 cobj_x0 cobj_x1 (toCBool x2) (toCBool x3)

foreign import ccall "qtc_QPrintDialog_create3" qtc_QPrintDialog_create3 :: Ptr (TQPrintDialog a) -> Ptr (TQVoid t1) -> CBool -> CBool -> IO ()

instance Qcreate (QPrintDialogSc a) ((QVoid t1, Bool, Bool)) (IO ()) where
 create x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPrintDialog_create3 cobj_x0 cobj_x1 (toCBool x2) (toCBool x3)

instance Qdestroy (QPrintDialog ()) (()) where
 destroy x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPrintDialog_destroy cobj_x0

foreign import ccall "qtc_QPrintDialog_destroy" qtc_QPrintDialog_destroy :: Ptr (TQPrintDialog a) -> IO ()

instance Qdestroy (QPrintDialogSc a) (()) where
 destroy x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPrintDialog_destroy cobj_x0

instance Qdestroy (QPrintDialog ()) ((Bool)) where
 destroy x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPrintDialog_destroy1 cobj_x0 (toCBool x1)

foreign import ccall "qtc_QPrintDialog_destroy1" qtc_QPrintDialog_destroy1 :: Ptr (TQPrintDialog a) -> CBool -> IO ()

instance Qdestroy (QPrintDialogSc a) ((Bool)) where
 destroy x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPrintDialog_destroy1 cobj_x0 (toCBool x1)

instance Qdestroy (QPrintDialog ()) ((Bool, Bool)) where
 destroy x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPrintDialog_destroy2 cobj_x0 (toCBool x1) (toCBool x2)

foreign import ccall "qtc_QPrintDialog_destroy2" qtc_QPrintDialog_destroy2 :: Ptr (TQPrintDialog a) -> CBool -> CBool -> IO ()

instance Qdestroy (QPrintDialogSc a) ((Bool, Bool)) where
 destroy x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPrintDialog_destroy2 cobj_x0 (toCBool x1) (toCBool x2)

instance QdevType (QPrintDialog ()) (()) where
 devType x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPrintDialog_devType_h cobj_x0

foreign import ccall "qtc_QPrintDialog_devType_h" qtc_QPrintDialog_devType_h :: Ptr (TQPrintDialog a) -> IO CInt

instance QdevType (QPrintDialogSc a) (()) where
 devType x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPrintDialog_devType_h cobj_x0

instance QdragEnterEvent (QPrintDialog ()) ((QDragEnterEvent t1)) where
 dragEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPrintDialog_dragEnterEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QPrintDialog_dragEnterEvent_h" qtc_QPrintDialog_dragEnterEvent_h :: Ptr (TQPrintDialog a) -> Ptr (TQDragEnterEvent t1) -> IO ()

instance QdragEnterEvent (QPrintDialogSc a) ((QDragEnterEvent t1)) where
 dragEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPrintDialog_dragEnterEvent_h cobj_x0 cobj_x1

instance QdragLeaveEvent (QPrintDialog ()) ((QDragLeaveEvent t1)) where
 dragLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPrintDialog_dragLeaveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QPrintDialog_dragLeaveEvent_h" qtc_QPrintDialog_dragLeaveEvent_h :: Ptr (TQPrintDialog a) -> Ptr (TQDragLeaveEvent t1) -> IO ()

instance QdragLeaveEvent (QPrintDialogSc a) ((QDragLeaveEvent t1)) where
 dragLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPrintDialog_dragLeaveEvent_h cobj_x0 cobj_x1

instance QdragMoveEvent (QPrintDialog ()) ((QDragMoveEvent t1)) where
 dragMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPrintDialog_dragMoveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QPrintDialog_dragMoveEvent_h" qtc_QPrintDialog_dragMoveEvent_h :: Ptr (TQPrintDialog a) -> Ptr (TQDragMoveEvent t1) -> IO ()

instance QdragMoveEvent (QPrintDialogSc a) ((QDragMoveEvent t1)) where
 dragMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPrintDialog_dragMoveEvent_h cobj_x0 cobj_x1

instance QdropEvent (QPrintDialog ()) ((QDropEvent t1)) where
 dropEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPrintDialog_dropEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QPrintDialog_dropEvent_h" qtc_QPrintDialog_dropEvent_h :: Ptr (TQPrintDialog a) -> Ptr (TQDropEvent t1) -> IO ()

instance QdropEvent (QPrintDialogSc a) ((QDropEvent t1)) where
 dropEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPrintDialog_dropEvent_h cobj_x0 cobj_x1

instance QenabledChange (QPrintDialog ()) ((Bool)) where
 enabledChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPrintDialog_enabledChange cobj_x0 (toCBool x1)

foreign import ccall "qtc_QPrintDialog_enabledChange" qtc_QPrintDialog_enabledChange :: Ptr (TQPrintDialog a) -> CBool -> IO ()

instance QenabledChange (QPrintDialogSc a) ((Bool)) where
 enabledChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPrintDialog_enabledChange cobj_x0 (toCBool x1)

instance QenterEvent (QPrintDialog ()) ((QEvent t1)) where
 enterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPrintDialog_enterEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QPrintDialog_enterEvent_h" qtc_QPrintDialog_enterEvent_h :: Ptr (TQPrintDialog a) -> Ptr (TQEvent t1) -> IO ()

instance QenterEvent (QPrintDialogSc a) ((QEvent t1)) where
 enterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPrintDialog_enterEvent_h cobj_x0 cobj_x1

instance QfocusInEvent (QPrintDialog ()) ((QFocusEvent t1)) where
 focusInEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPrintDialog_focusInEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QPrintDialog_focusInEvent_h" qtc_QPrintDialog_focusInEvent_h :: Ptr (TQPrintDialog a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusInEvent (QPrintDialogSc a) ((QFocusEvent t1)) where
 focusInEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPrintDialog_focusInEvent_h cobj_x0 cobj_x1

instance QfocusNextChild (QPrintDialog ()) (()) where
 focusNextChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPrintDialog_focusNextChild cobj_x0

foreign import ccall "qtc_QPrintDialog_focusNextChild" qtc_QPrintDialog_focusNextChild :: Ptr (TQPrintDialog a) -> IO CBool

instance QfocusNextChild (QPrintDialogSc a) (()) where
 focusNextChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPrintDialog_focusNextChild cobj_x0

instance QfocusNextPrevChild (QPrintDialog ()) ((Bool)) where
 focusNextPrevChild x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPrintDialog_focusNextPrevChild cobj_x0 (toCBool x1)

foreign import ccall "qtc_QPrintDialog_focusNextPrevChild" qtc_QPrintDialog_focusNextPrevChild :: Ptr (TQPrintDialog a) -> CBool -> IO CBool

instance QfocusNextPrevChild (QPrintDialogSc a) ((Bool)) where
 focusNextPrevChild x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPrintDialog_focusNextPrevChild cobj_x0 (toCBool x1)

instance QfocusOutEvent (QPrintDialog ()) ((QFocusEvent t1)) where
 focusOutEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPrintDialog_focusOutEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QPrintDialog_focusOutEvent_h" qtc_QPrintDialog_focusOutEvent_h :: Ptr (TQPrintDialog a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusOutEvent (QPrintDialogSc a) ((QFocusEvent t1)) where
 focusOutEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPrintDialog_focusOutEvent_h cobj_x0 cobj_x1

instance QfocusPreviousChild (QPrintDialog ()) (()) where
 focusPreviousChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPrintDialog_focusPreviousChild cobj_x0

foreign import ccall "qtc_QPrintDialog_focusPreviousChild" qtc_QPrintDialog_focusPreviousChild :: Ptr (TQPrintDialog a) -> IO CBool

instance QfocusPreviousChild (QPrintDialogSc a) (()) where
 focusPreviousChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPrintDialog_focusPreviousChild cobj_x0

instance QfontChange (QPrintDialog ()) ((QFont t1)) where
 fontChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPrintDialog_fontChange cobj_x0 cobj_x1

foreign import ccall "qtc_QPrintDialog_fontChange" qtc_QPrintDialog_fontChange :: Ptr (TQPrintDialog a) -> Ptr (TQFont t1) -> IO ()

instance QfontChange (QPrintDialogSc a) ((QFont t1)) where
 fontChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPrintDialog_fontChange cobj_x0 cobj_x1

instance QheightForWidth (QPrintDialog ()) ((Int)) where
 heightForWidth x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPrintDialog_heightForWidth_h cobj_x0 (toCInt x1)

foreign import ccall "qtc_QPrintDialog_heightForWidth_h" qtc_QPrintDialog_heightForWidth_h :: Ptr (TQPrintDialog a) -> CInt -> IO CInt

instance QheightForWidth (QPrintDialogSc a) ((Int)) where
 heightForWidth x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPrintDialog_heightForWidth_h cobj_x0 (toCInt x1)

instance QhideEvent (QPrintDialog ()) ((QHideEvent t1)) where
 hideEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPrintDialog_hideEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QPrintDialog_hideEvent_h" qtc_QPrintDialog_hideEvent_h :: Ptr (TQPrintDialog a) -> Ptr (TQHideEvent t1) -> IO ()

instance QhideEvent (QPrintDialogSc a) ((QHideEvent t1)) where
 hideEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPrintDialog_hideEvent_h cobj_x0 cobj_x1

instance QinputMethodEvent (QPrintDialog ()) ((QInputMethodEvent t1)) where
 inputMethodEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPrintDialog_inputMethodEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QPrintDialog_inputMethodEvent" qtc_QPrintDialog_inputMethodEvent :: Ptr (TQPrintDialog a) -> Ptr (TQInputMethodEvent t1) -> IO ()

instance QinputMethodEvent (QPrintDialogSc a) ((QInputMethodEvent t1)) where
 inputMethodEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPrintDialog_inputMethodEvent cobj_x0 cobj_x1

instance QinputMethodQuery (QPrintDialog ()) ((InputMethodQuery)) where
 inputMethodQuery x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPrintDialog_inputMethodQuery_h cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QPrintDialog_inputMethodQuery_h" qtc_QPrintDialog_inputMethodQuery_h :: Ptr (TQPrintDialog a) -> CLong -> IO (Ptr (TQVariant ()))

instance QinputMethodQuery (QPrintDialogSc a) ((InputMethodQuery)) where
 inputMethodQuery x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPrintDialog_inputMethodQuery_h cobj_x0 (toCLong $ qEnum_toInt x1)

instance QkeyReleaseEvent (QPrintDialog ()) ((QKeyEvent t1)) where
 keyReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPrintDialog_keyReleaseEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QPrintDialog_keyReleaseEvent_h" qtc_QPrintDialog_keyReleaseEvent_h :: Ptr (TQPrintDialog a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyReleaseEvent (QPrintDialogSc a) ((QKeyEvent t1)) where
 keyReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPrintDialog_keyReleaseEvent_h cobj_x0 cobj_x1

instance QlanguageChange (QPrintDialog ()) (()) where
 languageChange x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPrintDialog_languageChange cobj_x0

foreign import ccall "qtc_QPrintDialog_languageChange" qtc_QPrintDialog_languageChange :: Ptr (TQPrintDialog a) -> IO ()

instance QlanguageChange (QPrintDialogSc a) (()) where
 languageChange x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPrintDialog_languageChange cobj_x0

instance QleaveEvent (QPrintDialog ()) ((QEvent t1)) where
 leaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPrintDialog_leaveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QPrintDialog_leaveEvent_h" qtc_QPrintDialog_leaveEvent_h :: Ptr (TQPrintDialog a) -> Ptr (TQEvent t1) -> IO ()

instance QleaveEvent (QPrintDialogSc a) ((QEvent t1)) where
 leaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPrintDialog_leaveEvent_h cobj_x0 cobj_x1

instance Qmetric (QPrintDialog ()) ((PaintDeviceMetric)) where
 metric x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPrintDialog_metric cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QPrintDialog_metric" qtc_QPrintDialog_metric :: Ptr (TQPrintDialog a) -> CLong -> IO CInt

instance Qmetric (QPrintDialogSc a) ((PaintDeviceMetric)) where
 metric x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPrintDialog_metric cobj_x0 (toCLong $ qEnum_toInt x1)

instance QmouseDoubleClickEvent (QPrintDialog ()) ((QMouseEvent t1)) where
 mouseDoubleClickEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPrintDialog_mouseDoubleClickEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QPrintDialog_mouseDoubleClickEvent_h" qtc_QPrintDialog_mouseDoubleClickEvent_h :: Ptr (TQPrintDialog a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseDoubleClickEvent (QPrintDialogSc a) ((QMouseEvent t1)) where
 mouseDoubleClickEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPrintDialog_mouseDoubleClickEvent_h cobj_x0 cobj_x1

instance QmouseMoveEvent (QPrintDialog ()) ((QMouseEvent t1)) where
 mouseMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPrintDialog_mouseMoveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QPrintDialog_mouseMoveEvent_h" qtc_QPrintDialog_mouseMoveEvent_h :: Ptr (TQPrintDialog a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseMoveEvent (QPrintDialogSc a) ((QMouseEvent t1)) where
 mouseMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPrintDialog_mouseMoveEvent_h cobj_x0 cobj_x1

instance QmousePressEvent (QPrintDialog ()) ((QMouseEvent t1)) where
 mousePressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPrintDialog_mousePressEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QPrintDialog_mousePressEvent_h" qtc_QPrintDialog_mousePressEvent_h :: Ptr (TQPrintDialog a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmousePressEvent (QPrintDialogSc a) ((QMouseEvent t1)) where
 mousePressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPrintDialog_mousePressEvent_h cobj_x0 cobj_x1

instance QmouseReleaseEvent (QPrintDialog ()) ((QMouseEvent t1)) where
 mouseReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPrintDialog_mouseReleaseEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QPrintDialog_mouseReleaseEvent_h" qtc_QPrintDialog_mouseReleaseEvent_h :: Ptr (TQPrintDialog a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseReleaseEvent (QPrintDialogSc a) ((QMouseEvent t1)) where
 mouseReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPrintDialog_mouseReleaseEvent_h cobj_x0 cobj_x1

instance Qmove (QPrintDialog ()) ((Int, Int)) where
 move x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPrintDialog_move1 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QPrintDialog_move1" qtc_QPrintDialog_move1 :: Ptr (TQPrintDialog a) -> CInt -> CInt -> IO ()

instance Qmove (QPrintDialogSc a) ((Int, Int)) where
 move x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPrintDialog_move1 cobj_x0 (toCInt x1) (toCInt x2)

instance Qmove (QPrintDialog ()) ((Point)) where
 move x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QPrintDialog_move_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

foreign import ccall "qtc_QPrintDialog_move_qth" qtc_QPrintDialog_move_qth :: Ptr (TQPrintDialog a) -> CInt -> CInt -> IO ()

instance Qmove (QPrintDialogSc a) ((Point)) where
 move x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QPrintDialog_move_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

instance Qqmove (QPrintDialog ()) ((QPoint t1)) where
 qmove x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPrintDialog_move cobj_x0 cobj_x1

foreign import ccall "qtc_QPrintDialog_move" qtc_QPrintDialog_move :: Ptr (TQPrintDialog a) -> Ptr (TQPoint t1) -> IO ()

instance Qqmove (QPrintDialogSc a) ((QPoint t1)) where
 qmove x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPrintDialog_move cobj_x0 cobj_x1

instance QmoveEvent (QPrintDialog ()) ((QMoveEvent t1)) where
 moveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPrintDialog_moveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QPrintDialog_moveEvent_h" qtc_QPrintDialog_moveEvent_h :: Ptr (TQPrintDialog a) -> Ptr (TQMoveEvent t1) -> IO ()

instance QmoveEvent (QPrintDialogSc a) ((QMoveEvent t1)) where
 moveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPrintDialog_moveEvent_h cobj_x0 cobj_x1

instance QpaintEngine (QPrintDialog ()) (()) where
 paintEngine x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPrintDialog_paintEngine_h cobj_x0

foreign import ccall "qtc_QPrintDialog_paintEngine_h" qtc_QPrintDialog_paintEngine_h :: Ptr (TQPrintDialog a) -> IO (Ptr (TQPaintEngine ()))

instance QpaintEngine (QPrintDialogSc a) (()) where
 paintEngine x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPrintDialog_paintEngine_h cobj_x0

instance QpaintEvent (QPrintDialog ()) ((QPaintEvent t1)) where
 paintEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPrintDialog_paintEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QPrintDialog_paintEvent_h" qtc_QPrintDialog_paintEvent_h :: Ptr (TQPrintDialog a) -> Ptr (TQPaintEvent t1) -> IO ()

instance QpaintEvent (QPrintDialogSc a) ((QPaintEvent t1)) where
 paintEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPrintDialog_paintEvent_h cobj_x0 cobj_x1

instance QpaletteChange (QPrintDialog ()) ((QPalette t1)) where
 paletteChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPrintDialog_paletteChange cobj_x0 cobj_x1

foreign import ccall "qtc_QPrintDialog_paletteChange" qtc_QPrintDialog_paletteChange :: Ptr (TQPrintDialog a) -> Ptr (TQPalette t1) -> IO ()

instance QpaletteChange (QPrintDialogSc a) ((QPalette t1)) where
 paletteChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPrintDialog_paletteChange cobj_x0 cobj_x1

instance Qrepaint (QPrintDialog ()) (()) where
 repaint x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPrintDialog_repaint cobj_x0

foreign import ccall "qtc_QPrintDialog_repaint" qtc_QPrintDialog_repaint :: Ptr (TQPrintDialog a) -> IO ()

instance Qrepaint (QPrintDialogSc a) (()) where
 repaint x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPrintDialog_repaint cobj_x0

instance Qrepaint (QPrintDialog ()) ((Int, Int, Int, Int)) where
 repaint x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPrintDialog_repaint2 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QPrintDialog_repaint2" qtc_QPrintDialog_repaint2 :: Ptr (TQPrintDialog a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance Qrepaint (QPrintDialogSc a) ((Int, Int, Int, Int)) where
 repaint x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPrintDialog_repaint2 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

instance Qrepaint (QPrintDialog ()) ((QRegion t1)) where
 repaint x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPrintDialog_repaint1 cobj_x0 cobj_x1

foreign import ccall "qtc_QPrintDialog_repaint1" qtc_QPrintDialog_repaint1 :: Ptr (TQPrintDialog a) -> Ptr (TQRegion t1) -> IO ()

instance Qrepaint (QPrintDialogSc a) ((QRegion t1)) where
 repaint x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPrintDialog_repaint1 cobj_x0 cobj_x1

instance QresetInputContext (QPrintDialog ()) (()) where
 resetInputContext x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPrintDialog_resetInputContext cobj_x0

foreign import ccall "qtc_QPrintDialog_resetInputContext" qtc_QPrintDialog_resetInputContext :: Ptr (TQPrintDialog a) -> IO ()

instance QresetInputContext (QPrintDialogSc a) (()) where
 resetInputContext x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPrintDialog_resetInputContext cobj_x0

instance Qresize (QPrintDialog ()) ((Int, Int)) (IO ()) where
 resize x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPrintDialog_resize1 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QPrintDialog_resize1" qtc_QPrintDialog_resize1 :: Ptr (TQPrintDialog a) -> CInt -> CInt -> IO ()

instance Qresize (QPrintDialogSc a) ((Int, Int)) (IO ()) where
 resize x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPrintDialog_resize1 cobj_x0 (toCInt x1) (toCInt x2)

instance Qqresize (QPrintDialog ()) ((QSize t1)) where
 qresize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPrintDialog_resize cobj_x0 cobj_x1

foreign import ccall "qtc_QPrintDialog_resize" qtc_QPrintDialog_resize :: Ptr (TQPrintDialog a) -> Ptr (TQSize t1) -> IO ()

instance Qqresize (QPrintDialogSc a) ((QSize t1)) where
 qresize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPrintDialog_resize cobj_x0 cobj_x1

instance Qresize (QPrintDialog ()) ((Size)) (IO ()) where
 resize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QPrintDialog_resize_qth cobj_x0 csize_x1_w csize_x1_h 

foreign import ccall "qtc_QPrintDialog_resize_qth" qtc_QPrintDialog_resize_qth :: Ptr (TQPrintDialog a) -> CInt -> CInt -> IO ()

instance Qresize (QPrintDialogSc a) ((Size)) (IO ()) where
 resize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QPrintDialog_resize_qth cobj_x0 csize_x1_w csize_x1_h 

instance QsetGeometry (QPrintDialog ()) ((Int, Int, Int, Int)) where
 setGeometry x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPrintDialog_setGeometry1 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QPrintDialog_setGeometry1" qtc_QPrintDialog_setGeometry1 :: Ptr (TQPrintDialog a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QsetGeometry (QPrintDialogSc a) ((Int, Int, Int, Int)) where
 setGeometry x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPrintDialog_setGeometry1 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

instance QqsetGeometry (QPrintDialog ()) ((QRect t1)) where
 qsetGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPrintDialog_setGeometry cobj_x0 cobj_x1

foreign import ccall "qtc_QPrintDialog_setGeometry" qtc_QPrintDialog_setGeometry :: Ptr (TQPrintDialog a) -> Ptr (TQRect t1) -> IO ()

instance QqsetGeometry (QPrintDialogSc a) ((QRect t1)) where
 qsetGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPrintDialog_setGeometry cobj_x0 cobj_x1

instance QsetGeometry (QPrintDialog ()) ((Rect)) where
 setGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QPrintDialog_setGeometry_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

foreign import ccall "qtc_QPrintDialog_setGeometry_qth" qtc_QPrintDialog_setGeometry_qth :: Ptr (TQPrintDialog a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QsetGeometry (QPrintDialogSc a) ((Rect)) where
 setGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QPrintDialog_setGeometry_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

instance QsetMouseTracking (QPrintDialog ()) ((Bool)) where
 setMouseTracking x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPrintDialog_setMouseTracking cobj_x0 (toCBool x1)

foreign import ccall "qtc_QPrintDialog_setMouseTracking" qtc_QPrintDialog_setMouseTracking :: Ptr (TQPrintDialog a) -> CBool -> IO ()

instance QsetMouseTracking (QPrintDialogSc a) ((Bool)) where
 setMouseTracking x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPrintDialog_setMouseTracking cobj_x0 (toCBool x1)

instance QtabletEvent (QPrintDialog ()) ((QTabletEvent t1)) where
 tabletEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPrintDialog_tabletEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QPrintDialog_tabletEvent_h" qtc_QPrintDialog_tabletEvent_h :: Ptr (TQPrintDialog a) -> Ptr (TQTabletEvent t1) -> IO ()

instance QtabletEvent (QPrintDialogSc a) ((QTabletEvent t1)) where
 tabletEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPrintDialog_tabletEvent_h cobj_x0 cobj_x1

instance QupdateMicroFocus (QPrintDialog ()) (()) where
 updateMicroFocus x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPrintDialog_updateMicroFocus cobj_x0

foreign import ccall "qtc_QPrintDialog_updateMicroFocus" qtc_QPrintDialog_updateMicroFocus :: Ptr (TQPrintDialog a) -> IO ()

instance QupdateMicroFocus (QPrintDialogSc a) (()) where
 updateMicroFocus x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPrintDialog_updateMicroFocus cobj_x0

instance QwheelEvent (QPrintDialog ()) ((QWheelEvent t1)) where
 wheelEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPrintDialog_wheelEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QPrintDialog_wheelEvent_h" qtc_QPrintDialog_wheelEvent_h :: Ptr (TQPrintDialog a) -> Ptr (TQWheelEvent t1) -> IO ()

instance QwheelEvent (QPrintDialogSc a) ((QWheelEvent t1)) where
 wheelEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPrintDialog_wheelEvent_h cobj_x0 cobj_x1

instance QwindowActivationChange (QPrintDialog ()) ((Bool)) where
 windowActivationChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPrintDialog_windowActivationChange cobj_x0 (toCBool x1)

foreign import ccall "qtc_QPrintDialog_windowActivationChange" qtc_QPrintDialog_windowActivationChange :: Ptr (TQPrintDialog a) -> CBool -> IO ()

instance QwindowActivationChange (QPrintDialogSc a) ((Bool)) where
 windowActivationChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPrintDialog_windowActivationChange cobj_x0 (toCBool x1)

instance QchildEvent (QPrintDialog ()) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPrintDialog_childEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QPrintDialog_childEvent" qtc_QPrintDialog_childEvent :: Ptr (TQPrintDialog a) -> Ptr (TQChildEvent t1) -> IO ()

instance QchildEvent (QPrintDialogSc a) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPrintDialog_childEvent cobj_x0 cobj_x1

instance QconnectNotify (QPrintDialog ()) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QPrintDialog_connectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QPrintDialog_connectNotify" qtc_QPrintDialog_connectNotify :: Ptr (TQPrintDialog a) -> CWString -> IO ()

instance QconnectNotify (QPrintDialogSc a) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QPrintDialog_connectNotify cobj_x0 cstr_x1

instance QcustomEvent (QPrintDialog ()) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPrintDialog_customEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QPrintDialog_customEvent" qtc_QPrintDialog_customEvent :: Ptr (TQPrintDialog a) -> Ptr (TQEvent t1) -> IO ()

instance QcustomEvent (QPrintDialogSc a) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPrintDialog_customEvent cobj_x0 cobj_x1

instance QdisconnectNotify (QPrintDialog ()) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QPrintDialog_disconnectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QPrintDialog_disconnectNotify" qtc_QPrintDialog_disconnectNotify :: Ptr (TQPrintDialog a) -> CWString -> IO ()

instance QdisconnectNotify (QPrintDialogSc a) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QPrintDialog_disconnectNotify cobj_x0 cstr_x1

instance Qreceivers (QPrintDialog ()) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QPrintDialog_receivers cobj_x0 cstr_x1

foreign import ccall "qtc_QPrintDialog_receivers" qtc_QPrintDialog_receivers :: Ptr (TQPrintDialog a) -> CWString -> IO CInt

instance Qreceivers (QPrintDialogSc a) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QPrintDialog_receivers cobj_x0 cstr_x1

instance Qsender (QPrintDialog ()) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPrintDialog_sender cobj_x0

foreign import ccall "qtc_QPrintDialog_sender" qtc_QPrintDialog_sender :: Ptr (TQPrintDialog a) -> IO (Ptr (TQObject ()))

instance Qsender (QPrintDialogSc a) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPrintDialog_sender cobj_x0

instance QtimerEvent (QPrintDialog ()) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPrintDialog_timerEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QPrintDialog_timerEvent" qtc_QPrintDialog_timerEvent :: Ptr (TQPrintDialog a) -> Ptr (TQTimerEvent t1) -> IO ()

instance QtimerEvent (QPrintDialogSc a) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPrintDialog_timerEvent cobj_x0 cobj_x1

