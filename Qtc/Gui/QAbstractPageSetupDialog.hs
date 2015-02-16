{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QAbstractPageSetupDialog.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:26
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QAbstractPageSetupDialog (
  QqAbstractPageSetupDialog(..)
  ,qAbstractPageSetupDialog_delete
  ,qAbstractPageSetupDialog_deleteLater
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

instance QuserMethod (QAbstractPageSetupDialog ()) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QAbstractPageSetupDialog_userMethod cobj_qobj (toCInt evid)

foreign import ccall "qtc_QAbstractPageSetupDialog_userMethod" qtc_QAbstractPageSetupDialog_userMethod :: Ptr (TQAbstractPageSetupDialog a) -> CInt -> IO ()

instance QuserMethod (QAbstractPageSetupDialogSc a) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QAbstractPageSetupDialog_userMethod cobj_qobj (toCInt evid)

instance QuserMethod (QAbstractPageSetupDialog ()) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QAbstractPageSetupDialog_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

foreign import ccall "qtc_QAbstractPageSetupDialog_userMethodVariant" qtc_QAbstractPageSetupDialog_userMethodVariant :: Ptr (TQAbstractPageSetupDialog a) -> CInt -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))

instance QuserMethod (QAbstractPageSetupDialogSc a) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QAbstractPageSetupDialog_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

class QqAbstractPageSetupDialog x1 where
  qAbstractPageSetupDialog :: x1 -> IO (QAbstractPageSetupDialog ())

instance QqAbstractPageSetupDialog ((QPrinter t1)) where
 qAbstractPageSetupDialog (x1)
  = withQAbstractPageSetupDialogResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPageSetupDialog cobj_x1

foreign import ccall "qtc_QAbstractPageSetupDialog" qtc_QAbstractPageSetupDialog :: Ptr (TQPrinter t1) -> IO (Ptr (TQAbstractPageSetupDialog ()))

instance QqAbstractPageSetupDialog ((QPrinter t1, QWidget t2)) where
 qAbstractPageSetupDialog (x1, x2)
  = withQAbstractPageSetupDialogResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QAbstractPageSetupDialog1 cobj_x1 cobj_x2

foreign import ccall "qtc_QAbstractPageSetupDialog1" qtc_QAbstractPageSetupDialog1 :: Ptr (TQPrinter t1) -> Ptr (TQWidget t2) -> IO (Ptr (TQAbstractPageSetupDialog ()))

instance Qexec (QAbstractPageSetupDialog ()) (()) (IO (Int)) where
 exec x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPageSetupDialog_exec_h cobj_x0

foreign import ccall "qtc_QAbstractPageSetupDialog_exec_h" qtc_QAbstractPageSetupDialog_exec_h :: Ptr (TQAbstractPageSetupDialog a) -> IO CInt

instance Qexec (QAbstractPageSetupDialogSc a) (()) (IO (Int)) where
 exec x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPageSetupDialog_exec_h cobj_x0

instance Qprinter (QAbstractPageSetupDialog a) (()) where
 printer x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPageSetupDialog_printer cobj_x0

foreign import ccall "qtc_QAbstractPageSetupDialog_printer" qtc_QAbstractPageSetupDialog_printer :: Ptr (TQAbstractPageSetupDialog a) -> IO (Ptr (TQPrinter ()))

qAbstractPageSetupDialog_delete :: QAbstractPageSetupDialog a -> IO ()
qAbstractPageSetupDialog_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPageSetupDialog_delete cobj_x0

foreign import ccall "qtc_QAbstractPageSetupDialog_delete" qtc_QAbstractPageSetupDialog_delete :: Ptr (TQAbstractPageSetupDialog a) -> IO ()

qAbstractPageSetupDialog_deleteLater :: QAbstractPageSetupDialog a -> IO ()
qAbstractPageSetupDialog_deleteLater x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPageSetupDialog_deleteLater cobj_x0

foreign import ccall "qtc_QAbstractPageSetupDialog_deleteLater" qtc_QAbstractPageSetupDialog_deleteLater :: Ptr (TQAbstractPageSetupDialog a) -> IO ()

instance Qaccept (QAbstractPageSetupDialog ()) (()) where
 accept x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPageSetupDialog_accept_h cobj_x0

foreign import ccall "qtc_QAbstractPageSetupDialog_accept_h" qtc_QAbstractPageSetupDialog_accept_h :: Ptr (TQAbstractPageSetupDialog a) -> IO ()

instance Qaccept (QAbstractPageSetupDialogSc a) (()) where
 accept x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPageSetupDialog_accept_h cobj_x0

instance QadjustPosition (QAbstractPageSetupDialog ()) ((QWidget t1)) where
 adjustPosition x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPageSetupDialog_adjustPosition cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractPageSetupDialog_adjustPosition" qtc_QAbstractPageSetupDialog_adjustPosition :: Ptr (TQAbstractPageSetupDialog a) -> Ptr (TQWidget t1) -> IO ()

instance QadjustPosition (QAbstractPageSetupDialogSc a) ((QWidget t1)) where
 adjustPosition x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPageSetupDialog_adjustPosition cobj_x0 cobj_x1

instance QcloseEvent (QAbstractPageSetupDialog ()) ((QCloseEvent t1)) where
 closeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPageSetupDialog_closeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractPageSetupDialog_closeEvent_h" qtc_QAbstractPageSetupDialog_closeEvent_h :: Ptr (TQAbstractPageSetupDialog a) -> Ptr (TQCloseEvent t1) -> IO ()

instance QcloseEvent (QAbstractPageSetupDialogSc a) ((QCloseEvent t1)) where
 closeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPageSetupDialog_closeEvent_h cobj_x0 cobj_x1

instance QcontextMenuEvent (QAbstractPageSetupDialog ()) ((QContextMenuEvent t1)) where
 contextMenuEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPageSetupDialog_contextMenuEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractPageSetupDialog_contextMenuEvent_h" qtc_QAbstractPageSetupDialog_contextMenuEvent_h :: Ptr (TQAbstractPageSetupDialog a) -> Ptr (TQContextMenuEvent t1) -> IO ()

instance QcontextMenuEvent (QAbstractPageSetupDialogSc a) ((QContextMenuEvent t1)) where
 contextMenuEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPageSetupDialog_contextMenuEvent_h cobj_x0 cobj_x1

instance Qdone (QAbstractPageSetupDialog ()) ((Int)) where
 done x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPageSetupDialog_done_h cobj_x0 (toCInt x1)

foreign import ccall "qtc_QAbstractPageSetupDialog_done_h" qtc_QAbstractPageSetupDialog_done_h :: Ptr (TQAbstractPageSetupDialog a) -> CInt -> IO ()

instance Qdone (QAbstractPageSetupDialogSc a) ((Int)) where
 done x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPageSetupDialog_done_h cobj_x0 (toCInt x1)

instance Qevent (QAbstractPageSetupDialog ()) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPageSetupDialog_event_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractPageSetupDialog_event_h" qtc_QAbstractPageSetupDialog_event_h :: Ptr (TQAbstractPageSetupDialog a) -> Ptr (TQEvent t1) -> IO CBool

instance Qevent (QAbstractPageSetupDialogSc a) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPageSetupDialog_event_h cobj_x0 cobj_x1

instance QeventFilter (QAbstractPageSetupDialog ()) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QAbstractPageSetupDialog_eventFilter cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QAbstractPageSetupDialog_eventFilter" qtc_QAbstractPageSetupDialog_eventFilter :: Ptr (TQAbstractPageSetupDialog a) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO CBool

instance QeventFilter (QAbstractPageSetupDialogSc a) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QAbstractPageSetupDialog_eventFilter cobj_x0 cobj_x1 cobj_x2

instance QkeyPressEvent (QAbstractPageSetupDialog ()) ((QKeyEvent t1)) where
 keyPressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPageSetupDialog_keyPressEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractPageSetupDialog_keyPressEvent_h" qtc_QAbstractPageSetupDialog_keyPressEvent_h :: Ptr (TQAbstractPageSetupDialog a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyPressEvent (QAbstractPageSetupDialogSc a) ((QKeyEvent t1)) where
 keyPressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPageSetupDialog_keyPressEvent_h cobj_x0 cobj_x1

instance QqminimumSizeHint (QAbstractPageSetupDialog ()) (()) where
 qminimumSizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPageSetupDialog_minimumSizeHint_h cobj_x0

foreign import ccall "qtc_QAbstractPageSetupDialog_minimumSizeHint_h" qtc_QAbstractPageSetupDialog_minimumSizeHint_h :: Ptr (TQAbstractPageSetupDialog a) -> IO (Ptr (TQSize ()))

instance QqminimumSizeHint (QAbstractPageSetupDialogSc a) (()) where
 qminimumSizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPageSetupDialog_minimumSizeHint_h cobj_x0

instance QminimumSizeHint (QAbstractPageSetupDialog ()) (()) where
 minimumSizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPageSetupDialog_minimumSizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QAbstractPageSetupDialog_minimumSizeHint_qth_h" qtc_QAbstractPageSetupDialog_minimumSizeHint_qth_h :: Ptr (TQAbstractPageSetupDialog a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QminimumSizeHint (QAbstractPageSetupDialogSc a) (()) where
 minimumSizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPageSetupDialog_minimumSizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

instance Qreject (QAbstractPageSetupDialog ()) (()) where
 reject x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPageSetupDialog_reject_h cobj_x0

foreign import ccall "qtc_QAbstractPageSetupDialog_reject_h" qtc_QAbstractPageSetupDialog_reject_h :: Ptr (TQAbstractPageSetupDialog a) -> IO ()

instance Qreject (QAbstractPageSetupDialogSc a) (()) where
 reject x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPageSetupDialog_reject_h cobj_x0

instance QresizeEvent (QAbstractPageSetupDialog ()) ((QResizeEvent t1)) where
 resizeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPageSetupDialog_resizeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractPageSetupDialog_resizeEvent_h" qtc_QAbstractPageSetupDialog_resizeEvent_h :: Ptr (TQAbstractPageSetupDialog a) -> Ptr (TQResizeEvent t1) -> IO ()

instance QresizeEvent (QAbstractPageSetupDialogSc a) ((QResizeEvent t1)) where
 resizeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPageSetupDialog_resizeEvent_h cobj_x0 cobj_x1

instance QsetVisible (QAbstractPageSetupDialog ()) ((Bool)) where
 setVisible x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPageSetupDialog_setVisible_h cobj_x0 (toCBool x1)

foreign import ccall "qtc_QAbstractPageSetupDialog_setVisible_h" qtc_QAbstractPageSetupDialog_setVisible_h :: Ptr (TQAbstractPageSetupDialog a) -> CBool -> IO ()

instance QsetVisible (QAbstractPageSetupDialogSc a) ((Bool)) where
 setVisible x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPageSetupDialog_setVisible_h cobj_x0 (toCBool x1)

instance QshowEvent (QAbstractPageSetupDialog ()) ((QShowEvent t1)) where
 showEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPageSetupDialog_showEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractPageSetupDialog_showEvent_h" qtc_QAbstractPageSetupDialog_showEvent_h :: Ptr (TQAbstractPageSetupDialog a) -> Ptr (TQShowEvent t1) -> IO ()

instance QshowEvent (QAbstractPageSetupDialogSc a) ((QShowEvent t1)) where
 showEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPageSetupDialog_showEvent_h cobj_x0 cobj_x1

instance QqsizeHint (QAbstractPageSetupDialog ()) (()) where
 qsizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPageSetupDialog_sizeHint_h cobj_x0

foreign import ccall "qtc_QAbstractPageSetupDialog_sizeHint_h" qtc_QAbstractPageSetupDialog_sizeHint_h :: Ptr (TQAbstractPageSetupDialog a) -> IO (Ptr (TQSize ()))

instance QqsizeHint (QAbstractPageSetupDialogSc a) (()) where
 qsizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPageSetupDialog_sizeHint_h cobj_x0

instance QsizeHint (QAbstractPageSetupDialog ()) (()) where
 sizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPageSetupDialog_sizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QAbstractPageSetupDialog_sizeHint_qth_h" qtc_QAbstractPageSetupDialog_sizeHint_qth_h :: Ptr (TQAbstractPageSetupDialog a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QsizeHint (QAbstractPageSetupDialogSc a) (()) where
 sizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPageSetupDialog_sizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

instance QactionEvent (QAbstractPageSetupDialog ()) ((QActionEvent t1)) where
 actionEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPageSetupDialog_actionEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractPageSetupDialog_actionEvent_h" qtc_QAbstractPageSetupDialog_actionEvent_h :: Ptr (TQAbstractPageSetupDialog a) -> Ptr (TQActionEvent t1) -> IO ()

instance QactionEvent (QAbstractPageSetupDialogSc a) ((QActionEvent t1)) where
 actionEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPageSetupDialog_actionEvent_h cobj_x0 cobj_x1

instance QaddAction (QAbstractPageSetupDialog ()) ((QAction t1)) (IO ()) where
 addAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPageSetupDialog_addAction cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractPageSetupDialog_addAction" qtc_QAbstractPageSetupDialog_addAction :: Ptr (TQAbstractPageSetupDialog a) -> Ptr (TQAction t1) -> IO ()

instance QaddAction (QAbstractPageSetupDialogSc a) ((QAction t1)) (IO ()) where
 addAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPageSetupDialog_addAction cobj_x0 cobj_x1

instance QchangeEvent (QAbstractPageSetupDialog ()) ((QEvent t1)) where
 changeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPageSetupDialog_changeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractPageSetupDialog_changeEvent_h" qtc_QAbstractPageSetupDialog_changeEvent_h :: Ptr (TQAbstractPageSetupDialog a) -> Ptr (TQEvent t1) -> IO ()

instance QchangeEvent (QAbstractPageSetupDialogSc a) ((QEvent t1)) where
 changeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPageSetupDialog_changeEvent_h cobj_x0 cobj_x1

instance Qcreate (QAbstractPageSetupDialog ()) (()) (IO ()) where
 create x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPageSetupDialog_create cobj_x0

foreign import ccall "qtc_QAbstractPageSetupDialog_create" qtc_QAbstractPageSetupDialog_create :: Ptr (TQAbstractPageSetupDialog a) -> IO ()

instance Qcreate (QAbstractPageSetupDialogSc a) (()) (IO ()) where
 create x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPageSetupDialog_create cobj_x0

instance Qcreate (QAbstractPageSetupDialog ()) ((QVoid t1)) (IO ()) where
 create x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPageSetupDialog_create1 cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractPageSetupDialog_create1" qtc_QAbstractPageSetupDialog_create1 :: Ptr (TQAbstractPageSetupDialog a) -> Ptr (TQVoid t1) -> IO ()

instance Qcreate (QAbstractPageSetupDialogSc a) ((QVoid t1)) (IO ()) where
 create x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPageSetupDialog_create1 cobj_x0 cobj_x1

instance Qcreate (QAbstractPageSetupDialog ()) ((QVoid t1, Bool)) (IO ()) where
 create x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPageSetupDialog_create2 cobj_x0 cobj_x1 (toCBool x2)

foreign import ccall "qtc_QAbstractPageSetupDialog_create2" qtc_QAbstractPageSetupDialog_create2 :: Ptr (TQAbstractPageSetupDialog a) -> Ptr (TQVoid t1) -> CBool -> IO ()

instance Qcreate (QAbstractPageSetupDialogSc a) ((QVoid t1, Bool)) (IO ()) where
 create x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPageSetupDialog_create2 cobj_x0 cobj_x1 (toCBool x2)

instance Qcreate (QAbstractPageSetupDialog ()) ((QVoid t1, Bool, Bool)) (IO ()) where
 create x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPageSetupDialog_create3 cobj_x0 cobj_x1 (toCBool x2) (toCBool x3)

foreign import ccall "qtc_QAbstractPageSetupDialog_create3" qtc_QAbstractPageSetupDialog_create3 :: Ptr (TQAbstractPageSetupDialog a) -> Ptr (TQVoid t1) -> CBool -> CBool -> IO ()

instance Qcreate (QAbstractPageSetupDialogSc a) ((QVoid t1, Bool, Bool)) (IO ()) where
 create x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPageSetupDialog_create3 cobj_x0 cobj_x1 (toCBool x2) (toCBool x3)

instance Qdestroy (QAbstractPageSetupDialog ()) (()) where
 destroy x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPageSetupDialog_destroy cobj_x0

foreign import ccall "qtc_QAbstractPageSetupDialog_destroy" qtc_QAbstractPageSetupDialog_destroy :: Ptr (TQAbstractPageSetupDialog a) -> IO ()

instance Qdestroy (QAbstractPageSetupDialogSc a) (()) where
 destroy x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPageSetupDialog_destroy cobj_x0

instance Qdestroy (QAbstractPageSetupDialog ()) ((Bool)) where
 destroy x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPageSetupDialog_destroy1 cobj_x0 (toCBool x1)

foreign import ccall "qtc_QAbstractPageSetupDialog_destroy1" qtc_QAbstractPageSetupDialog_destroy1 :: Ptr (TQAbstractPageSetupDialog a) -> CBool -> IO ()

instance Qdestroy (QAbstractPageSetupDialogSc a) ((Bool)) where
 destroy x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPageSetupDialog_destroy1 cobj_x0 (toCBool x1)

instance Qdestroy (QAbstractPageSetupDialog ()) ((Bool, Bool)) where
 destroy x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPageSetupDialog_destroy2 cobj_x0 (toCBool x1) (toCBool x2)

foreign import ccall "qtc_QAbstractPageSetupDialog_destroy2" qtc_QAbstractPageSetupDialog_destroy2 :: Ptr (TQAbstractPageSetupDialog a) -> CBool -> CBool -> IO ()

instance Qdestroy (QAbstractPageSetupDialogSc a) ((Bool, Bool)) where
 destroy x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPageSetupDialog_destroy2 cobj_x0 (toCBool x1) (toCBool x2)

instance QdevType (QAbstractPageSetupDialog ()) (()) where
 devType x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPageSetupDialog_devType_h cobj_x0

foreign import ccall "qtc_QAbstractPageSetupDialog_devType_h" qtc_QAbstractPageSetupDialog_devType_h :: Ptr (TQAbstractPageSetupDialog a) -> IO CInt

instance QdevType (QAbstractPageSetupDialogSc a) (()) where
 devType x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPageSetupDialog_devType_h cobj_x0

instance QdragEnterEvent (QAbstractPageSetupDialog ()) ((QDragEnterEvent t1)) where
 dragEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPageSetupDialog_dragEnterEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractPageSetupDialog_dragEnterEvent_h" qtc_QAbstractPageSetupDialog_dragEnterEvent_h :: Ptr (TQAbstractPageSetupDialog a) -> Ptr (TQDragEnterEvent t1) -> IO ()

instance QdragEnterEvent (QAbstractPageSetupDialogSc a) ((QDragEnterEvent t1)) where
 dragEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPageSetupDialog_dragEnterEvent_h cobj_x0 cobj_x1

instance QdragLeaveEvent (QAbstractPageSetupDialog ()) ((QDragLeaveEvent t1)) where
 dragLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPageSetupDialog_dragLeaveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractPageSetupDialog_dragLeaveEvent_h" qtc_QAbstractPageSetupDialog_dragLeaveEvent_h :: Ptr (TQAbstractPageSetupDialog a) -> Ptr (TQDragLeaveEvent t1) -> IO ()

instance QdragLeaveEvent (QAbstractPageSetupDialogSc a) ((QDragLeaveEvent t1)) where
 dragLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPageSetupDialog_dragLeaveEvent_h cobj_x0 cobj_x1

instance QdragMoveEvent (QAbstractPageSetupDialog ()) ((QDragMoveEvent t1)) where
 dragMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPageSetupDialog_dragMoveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractPageSetupDialog_dragMoveEvent_h" qtc_QAbstractPageSetupDialog_dragMoveEvent_h :: Ptr (TQAbstractPageSetupDialog a) -> Ptr (TQDragMoveEvent t1) -> IO ()

instance QdragMoveEvent (QAbstractPageSetupDialogSc a) ((QDragMoveEvent t1)) where
 dragMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPageSetupDialog_dragMoveEvent_h cobj_x0 cobj_x1

instance QdropEvent (QAbstractPageSetupDialog ()) ((QDropEvent t1)) where
 dropEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPageSetupDialog_dropEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractPageSetupDialog_dropEvent_h" qtc_QAbstractPageSetupDialog_dropEvent_h :: Ptr (TQAbstractPageSetupDialog a) -> Ptr (TQDropEvent t1) -> IO ()

instance QdropEvent (QAbstractPageSetupDialogSc a) ((QDropEvent t1)) where
 dropEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPageSetupDialog_dropEvent_h cobj_x0 cobj_x1

instance QenabledChange (QAbstractPageSetupDialog ()) ((Bool)) where
 enabledChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPageSetupDialog_enabledChange cobj_x0 (toCBool x1)

foreign import ccall "qtc_QAbstractPageSetupDialog_enabledChange" qtc_QAbstractPageSetupDialog_enabledChange :: Ptr (TQAbstractPageSetupDialog a) -> CBool -> IO ()

instance QenabledChange (QAbstractPageSetupDialogSc a) ((Bool)) where
 enabledChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPageSetupDialog_enabledChange cobj_x0 (toCBool x1)

instance QenterEvent (QAbstractPageSetupDialog ()) ((QEvent t1)) where
 enterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPageSetupDialog_enterEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractPageSetupDialog_enterEvent_h" qtc_QAbstractPageSetupDialog_enterEvent_h :: Ptr (TQAbstractPageSetupDialog a) -> Ptr (TQEvent t1) -> IO ()

instance QenterEvent (QAbstractPageSetupDialogSc a) ((QEvent t1)) where
 enterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPageSetupDialog_enterEvent_h cobj_x0 cobj_x1

instance QfocusInEvent (QAbstractPageSetupDialog ()) ((QFocusEvent t1)) where
 focusInEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPageSetupDialog_focusInEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractPageSetupDialog_focusInEvent_h" qtc_QAbstractPageSetupDialog_focusInEvent_h :: Ptr (TQAbstractPageSetupDialog a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusInEvent (QAbstractPageSetupDialogSc a) ((QFocusEvent t1)) where
 focusInEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPageSetupDialog_focusInEvent_h cobj_x0 cobj_x1

instance QfocusNextChild (QAbstractPageSetupDialog ()) (()) where
 focusNextChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPageSetupDialog_focusNextChild cobj_x0

foreign import ccall "qtc_QAbstractPageSetupDialog_focusNextChild" qtc_QAbstractPageSetupDialog_focusNextChild :: Ptr (TQAbstractPageSetupDialog a) -> IO CBool

instance QfocusNextChild (QAbstractPageSetupDialogSc a) (()) where
 focusNextChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPageSetupDialog_focusNextChild cobj_x0

instance QfocusNextPrevChild (QAbstractPageSetupDialog ()) ((Bool)) where
 focusNextPrevChild x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPageSetupDialog_focusNextPrevChild cobj_x0 (toCBool x1)

foreign import ccall "qtc_QAbstractPageSetupDialog_focusNextPrevChild" qtc_QAbstractPageSetupDialog_focusNextPrevChild :: Ptr (TQAbstractPageSetupDialog a) -> CBool -> IO CBool

instance QfocusNextPrevChild (QAbstractPageSetupDialogSc a) ((Bool)) where
 focusNextPrevChild x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPageSetupDialog_focusNextPrevChild cobj_x0 (toCBool x1)

instance QfocusOutEvent (QAbstractPageSetupDialog ()) ((QFocusEvent t1)) where
 focusOutEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPageSetupDialog_focusOutEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractPageSetupDialog_focusOutEvent_h" qtc_QAbstractPageSetupDialog_focusOutEvent_h :: Ptr (TQAbstractPageSetupDialog a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusOutEvent (QAbstractPageSetupDialogSc a) ((QFocusEvent t1)) where
 focusOutEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPageSetupDialog_focusOutEvent_h cobj_x0 cobj_x1

instance QfocusPreviousChild (QAbstractPageSetupDialog ()) (()) where
 focusPreviousChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPageSetupDialog_focusPreviousChild cobj_x0

foreign import ccall "qtc_QAbstractPageSetupDialog_focusPreviousChild" qtc_QAbstractPageSetupDialog_focusPreviousChild :: Ptr (TQAbstractPageSetupDialog a) -> IO CBool

instance QfocusPreviousChild (QAbstractPageSetupDialogSc a) (()) where
 focusPreviousChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPageSetupDialog_focusPreviousChild cobj_x0

instance QfontChange (QAbstractPageSetupDialog ()) ((QFont t1)) where
 fontChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPageSetupDialog_fontChange cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractPageSetupDialog_fontChange" qtc_QAbstractPageSetupDialog_fontChange :: Ptr (TQAbstractPageSetupDialog a) -> Ptr (TQFont t1) -> IO ()

instance QfontChange (QAbstractPageSetupDialogSc a) ((QFont t1)) where
 fontChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPageSetupDialog_fontChange cobj_x0 cobj_x1

instance QheightForWidth (QAbstractPageSetupDialog ()) ((Int)) where
 heightForWidth x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPageSetupDialog_heightForWidth_h cobj_x0 (toCInt x1)

foreign import ccall "qtc_QAbstractPageSetupDialog_heightForWidth_h" qtc_QAbstractPageSetupDialog_heightForWidth_h :: Ptr (TQAbstractPageSetupDialog a) -> CInt -> IO CInt

instance QheightForWidth (QAbstractPageSetupDialogSc a) ((Int)) where
 heightForWidth x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPageSetupDialog_heightForWidth_h cobj_x0 (toCInt x1)

instance QhideEvent (QAbstractPageSetupDialog ()) ((QHideEvent t1)) where
 hideEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPageSetupDialog_hideEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractPageSetupDialog_hideEvent_h" qtc_QAbstractPageSetupDialog_hideEvent_h :: Ptr (TQAbstractPageSetupDialog a) -> Ptr (TQHideEvent t1) -> IO ()

instance QhideEvent (QAbstractPageSetupDialogSc a) ((QHideEvent t1)) where
 hideEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPageSetupDialog_hideEvent_h cobj_x0 cobj_x1

instance QinputMethodEvent (QAbstractPageSetupDialog ()) ((QInputMethodEvent t1)) where
 inputMethodEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPageSetupDialog_inputMethodEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractPageSetupDialog_inputMethodEvent" qtc_QAbstractPageSetupDialog_inputMethodEvent :: Ptr (TQAbstractPageSetupDialog a) -> Ptr (TQInputMethodEvent t1) -> IO ()

instance QinputMethodEvent (QAbstractPageSetupDialogSc a) ((QInputMethodEvent t1)) where
 inputMethodEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPageSetupDialog_inputMethodEvent cobj_x0 cobj_x1

instance QinputMethodQuery (QAbstractPageSetupDialog ()) ((InputMethodQuery)) where
 inputMethodQuery x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPageSetupDialog_inputMethodQuery_h cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QAbstractPageSetupDialog_inputMethodQuery_h" qtc_QAbstractPageSetupDialog_inputMethodQuery_h :: Ptr (TQAbstractPageSetupDialog a) -> CLong -> IO (Ptr (TQVariant ()))

instance QinputMethodQuery (QAbstractPageSetupDialogSc a) ((InputMethodQuery)) where
 inputMethodQuery x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPageSetupDialog_inputMethodQuery_h cobj_x0 (toCLong $ qEnum_toInt x1)

instance QkeyReleaseEvent (QAbstractPageSetupDialog ()) ((QKeyEvent t1)) where
 keyReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPageSetupDialog_keyReleaseEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractPageSetupDialog_keyReleaseEvent_h" qtc_QAbstractPageSetupDialog_keyReleaseEvent_h :: Ptr (TQAbstractPageSetupDialog a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyReleaseEvent (QAbstractPageSetupDialogSc a) ((QKeyEvent t1)) where
 keyReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPageSetupDialog_keyReleaseEvent_h cobj_x0 cobj_x1

instance QlanguageChange (QAbstractPageSetupDialog ()) (()) where
 languageChange x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPageSetupDialog_languageChange cobj_x0

foreign import ccall "qtc_QAbstractPageSetupDialog_languageChange" qtc_QAbstractPageSetupDialog_languageChange :: Ptr (TQAbstractPageSetupDialog a) -> IO ()

instance QlanguageChange (QAbstractPageSetupDialogSc a) (()) where
 languageChange x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPageSetupDialog_languageChange cobj_x0

instance QleaveEvent (QAbstractPageSetupDialog ()) ((QEvent t1)) where
 leaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPageSetupDialog_leaveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractPageSetupDialog_leaveEvent_h" qtc_QAbstractPageSetupDialog_leaveEvent_h :: Ptr (TQAbstractPageSetupDialog a) -> Ptr (TQEvent t1) -> IO ()

instance QleaveEvent (QAbstractPageSetupDialogSc a) ((QEvent t1)) where
 leaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPageSetupDialog_leaveEvent_h cobj_x0 cobj_x1

instance Qmetric (QAbstractPageSetupDialog ()) ((PaintDeviceMetric)) where
 metric x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPageSetupDialog_metric cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QAbstractPageSetupDialog_metric" qtc_QAbstractPageSetupDialog_metric :: Ptr (TQAbstractPageSetupDialog a) -> CLong -> IO CInt

instance Qmetric (QAbstractPageSetupDialogSc a) ((PaintDeviceMetric)) where
 metric x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPageSetupDialog_metric cobj_x0 (toCLong $ qEnum_toInt x1)

instance QmouseDoubleClickEvent (QAbstractPageSetupDialog ()) ((QMouseEvent t1)) where
 mouseDoubleClickEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPageSetupDialog_mouseDoubleClickEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractPageSetupDialog_mouseDoubleClickEvent_h" qtc_QAbstractPageSetupDialog_mouseDoubleClickEvent_h :: Ptr (TQAbstractPageSetupDialog a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseDoubleClickEvent (QAbstractPageSetupDialogSc a) ((QMouseEvent t1)) where
 mouseDoubleClickEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPageSetupDialog_mouseDoubleClickEvent_h cobj_x0 cobj_x1

instance QmouseMoveEvent (QAbstractPageSetupDialog ()) ((QMouseEvent t1)) where
 mouseMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPageSetupDialog_mouseMoveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractPageSetupDialog_mouseMoveEvent_h" qtc_QAbstractPageSetupDialog_mouseMoveEvent_h :: Ptr (TQAbstractPageSetupDialog a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseMoveEvent (QAbstractPageSetupDialogSc a) ((QMouseEvent t1)) where
 mouseMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPageSetupDialog_mouseMoveEvent_h cobj_x0 cobj_x1

instance QmousePressEvent (QAbstractPageSetupDialog ()) ((QMouseEvent t1)) where
 mousePressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPageSetupDialog_mousePressEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractPageSetupDialog_mousePressEvent_h" qtc_QAbstractPageSetupDialog_mousePressEvent_h :: Ptr (TQAbstractPageSetupDialog a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmousePressEvent (QAbstractPageSetupDialogSc a) ((QMouseEvent t1)) where
 mousePressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPageSetupDialog_mousePressEvent_h cobj_x0 cobj_x1

instance QmouseReleaseEvent (QAbstractPageSetupDialog ()) ((QMouseEvent t1)) where
 mouseReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPageSetupDialog_mouseReleaseEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractPageSetupDialog_mouseReleaseEvent_h" qtc_QAbstractPageSetupDialog_mouseReleaseEvent_h :: Ptr (TQAbstractPageSetupDialog a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseReleaseEvent (QAbstractPageSetupDialogSc a) ((QMouseEvent t1)) where
 mouseReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPageSetupDialog_mouseReleaseEvent_h cobj_x0 cobj_x1

instance Qmove (QAbstractPageSetupDialog ()) ((Int, Int)) where
 move x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPageSetupDialog_move1 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QAbstractPageSetupDialog_move1" qtc_QAbstractPageSetupDialog_move1 :: Ptr (TQAbstractPageSetupDialog a) -> CInt -> CInt -> IO ()

instance Qmove (QAbstractPageSetupDialogSc a) ((Int, Int)) where
 move x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPageSetupDialog_move1 cobj_x0 (toCInt x1) (toCInt x2)

instance Qmove (QAbstractPageSetupDialog ()) ((Point)) where
 move x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QAbstractPageSetupDialog_move_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

foreign import ccall "qtc_QAbstractPageSetupDialog_move_qth" qtc_QAbstractPageSetupDialog_move_qth :: Ptr (TQAbstractPageSetupDialog a) -> CInt -> CInt -> IO ()

instance Qmove (QAbstractPageSetupDialogSc a) ((Point)) where
 move x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QAbstractPageSetupDialog_move_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

instance Qqmove (QAbstractPageSetupDialog ()) ((QPoint t1)) where
 qmove x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPageSetupDialog_move cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractPageSetupDialog_move" qtc_QAbstractPageSetupDialog_move :: Ptr (TQAbstractPageSetupDialog a) -> Ptr (TQPoint t1) -> IO ()

instance Qqmove (QAbstractPageSetupDialogSc a) ((QPoint t1)) where
 qmove x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPageSetupDialog_move cobj_x0 cobj_x1

instance QmoveEvent (QAbstractPageSetupDialog ()) ((QMoveEvent t1)) where
 moveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPageSetupDialog_moveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractPageSetupDialog_moveEvent_h" qtc_QAbstractPageSetupDialog_moveEvent_h :: Ptr (TQAbstractPageSetupDialog a) -> Ptr (TQMoveEvent t1) -> IO ()

instance QmoveEvent (QAbstractPageSetupDialogSc a) ((QMoveEvent t1)) where
 moveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPageSetupDialog_moveEvent_h cobj_x0 cobj_x1

instance QpaintEngine (QAbstractPageSetupDialog ()) (()) where
 paintEngine x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPageSetupDialog_paintEngine_h cobj_x0

foreign import ccall "qtc_QAbstractPageSetupDialog_paintEngine_h" qtc_QAbstractPageSetupDialog_paintEngine_h :: Ptr (TQAbstractPageSetupDialog a) -> IO (Ptr (TQPaintEngine ()))

instance QpaintEngine (QAbstractPageSetupDialogSc a) (()) where
 paintEngine x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPageSetupDialog_paintEngine_h cobj_x0

instance QpaintEvent (QAbstractPageSetupDialog ()) ((QPaintEvent t1)) where
 paintEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPageSetupDialog_paintEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractPageSetupDialog_paintEvent_h" qtc_QAbstractPageSetupDialog_paintEvent_h :: Ptr (TQAbstractPageSetupDialog a) -> Ptr (TQPaintEvent t1) -> IO ()

instance QpaintEvent (QAbstractPageSetupDialogSc a) ((QPaintEvent t1)) where
 paintEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPageSetupDialog_paintEvent_h cobj_x0 cobj_x1

instance QpaletteChange (QAbstractPageSetupDialog ()) ((QPalette t1)) where
 paletteChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPageSetupDialog_paletteChange cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractPageSetupDialog_paletteChange" qtc_QAbstractPageSetupDialog_paletteChange :: Ptr (TQAbstractPageSetupDialog a) -> Ptr (TQPalette t1) -> IO ()

instance QpaletteChange (QAbstractPageSetupDialogSc a) ((QPalette t1)) where
 paletteChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPageSetupDialog_paletteChange cobj_x0 cobj_x1

instance Qrepaint (QAbstractPageSetupDialog ()) (()) where
 repaint x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPageSetupDialog_repaint cobj_x0

foreign import ccall "qtc_QAbstractPageSetupDialog_repaint" qtc_QAbstractPageSetupDialog_repaint :: Ptr (TQAbstractPageSetupDialog a) -> IO ()

instance Qrepaint (QAbstractPageSetupDialogSc a) (()) where
 repaint x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPageSetupDialog_repaint cobj_x0

instance Qrepaint (QAbstractPageSetupDialog ()) ((Int, Int, Int, Int)) where
 repaint x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPageSetupDialog_repaint2 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QAbstractPageSetupDialog_repaint2" qtc_QAbstractPageSetupDialog_repaint2 :: Ptr (TQAbstractPageSetupDialog a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance Qrepaint (QAbstractPageSetupDialogSc a) ((Int, Int, Int, Int)) where
 repaint x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPageSetupDialog_repaint2 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

instance Qrepaint (QAbstractPageSetupDialog ()) ((QRegion t1)) where
 repaint x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPageSetupDialog_repaint1 cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractPageSetupDialog_repaint1" qtc_QAbstractPageSetupDialog_repaint1 :: Ptr (TQAbstractPageSetupDialog a) -> Ptr (TQRegion t1) -> IO ()

instance Qrepaint (QAbstractPageSetupDialogSc a) ((QRegion t1)) where
 repaint x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPageSetupDialog_repaint1 cobj_x0 cobj_x1

instance QresetInputContext (QAbstractPageSetupDialog ()) (()) where
 resetInputContext x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPageSetupDialog_resetInputContext cobj_x0

foreign import ccall "qtc_QAbstractPageSetupDialog_resetInputContext" qtc_QAbstractPageSetupDialog_resetInputContext :: Ptr (TQAbstractPageSetupDialog a) -> IO ()

instance QresetInputContext (QAbstractPageSetupDialogSc a) (()) where
 resetInputContext x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPageSetupDialog_resetInputContext cobj_x0

instance Qresize (QAbstractPageSetupDialog ()) ((Int, Int)) (IO ()) where
 resize x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPageSetupDialog_resize1 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QAbstractPageSetupDialog_resize1" qtc_QAbstractPageSetupDialog_resize1 :: Ptr (TQAbstractPageSetupDialog a) -> CInt -> CInt -> IO ()

instance Qresize (QAbstractPageSetupDialogSc a) ((Int, Int)) (IO ()) where
 resize x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPageSetupDialog_resize1 cobj_x0 (toCInt x1) (toCInt x2)

instance Qqresize (QAbstractPageSetupDialog ()) ((QSize t1)) where
 qresize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPageSetupDialog_resize cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractPageSetupDialog_resize" qtc_QAbstractPageSetupDialog_resize :: Ptr (TQAbstractPageSetupDialog a) -> Ptr (TQSize t1) -> IO ()

instance Qqresize (QAbstractPageSetupDialogSc a) ((QSize t1)) where
 qresize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPageSetupDialog_resize cobj_x0 cobj_x1

instance Qresize (QAbstractPageSetupDialog ()) ((Size)) (IO ()) where
 resize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QAbstractPageSetupDialog_resize_qth cobj_x0 csize_x1_w csize_x1_h 

foreign import ccall "qtc_QAbstractPageSetupDialog_resize_qth" qtc_QAbstractPageSetupDialog_resize_qth :: Ptr (TQAbstractPageSetupDialog a) -> CInt -> CInt -> IO ()

instance Qresize (QAbstractPageSetupDialogSc a) ((Size)) (IO ()) where
 resize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QAbstractPageSetupDialog_resize_qth cobj_x0 csize_x1_w csize_x1_h 

instance QsetGeometry (QAbstractPageSetupDialog ()) ((Int, Int, Int, Int)) where
 setGeometry x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPageSetupDialog_setGeometry1 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QAbstractPageSetupDialog_setGeometry1" qtc_QAbstractPageSetupDialog_setGeometry1 :: Ptr (TQAbstractPageSetupDialog a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QsetGeometry (QAbstractPageSetupDialogSc a) ((Int, Int, Int, Int)) where
 setGeometry x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPageSetupDialog_setGeometry1 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

instance QqsetGeometry (QAbstractPageSetupDialog ()) ((QRect t1)) where
 qsetGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPageSetupDialog_setGeometry cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractPageSetupDialog_setGeometry" qtc_QAbstractPageSetupDialog_setGeometry :: Ptr (TQAbstractPageSetupDialog a) -> Ptr (TQRect t1) -> IO ()

instance QqsetGeometry (QAbstractPageSetupDialogSc a) ((QRect t1)) where
 qsetGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPageSetupDialog_setGeometry cobj_x0 cobj_x1

instance QsetGeometry (QAbstractPageSetupDialog ()) ((Rect)) where
 setGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QAbstractPageSetupDialog_setGeometry_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

foreign import ccall "qtc_QAbstractPageSetupDialog_setGeometry_qth" qtc_QAbstractPageSetupDialog_setGeometry_qth :: Ptr (TQAbstractPageSetupDialog a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QsetGeometry (QAbstractPageSetupDialogSc a) ((Rect)) where
 setGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QAbstractPageSetupDialog_setGeometry_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

instance QsetMouseTracking (QAbstractPageSetupDialog ()) ((Bool)) where
 setMouseTracking x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPageSetupDialog_setMouseTracking cobj_x0 (toCBool x1)

foreign import ccall "qtc_QAbstractPageSetupDialog_setMouseTracking" qtc_QAbstractPageSetupDialog_setMouseTracking :: Ptr (TQAbstractPageSetupDialog a) -> CBool -> IO ()

instance QsetMouseTracking (QAbstractPageSetupDialogSc a) ((Bool)) where
 setMouseTracking x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPageSetupDialog_setMouseTracking cobj_x0 (toCBool x1)

instance QtabletEvent (QAbstractPageSetupDialog ()) ((QTabletEvent t1)) where
 tabletEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPageSetupDialog_tabletEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractPageSetupDialog_tabletEvent_h" qtc_QAbstractPageSetupDialog_tabletEvent_h :: Ptr (TQAbstractPageSetupDialog a) -> Ptr (TQTabletEvent t1) -> IO ()

instance QtabletEvent (QAbstractPageSetupDialogSc a) ((QTabletEvent t1)) where
 tabletEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPageSetupDialog_tabletEvent_h cobj_x0 cobj_x1

instance QupdateMicroFocus (QAbstractPageSetupDialog ()) (()) where
 updateMicroFocus x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPageSetupDialog_updateMicroFocus cobj_x0

foreign import ccall "qtc_QAbstractPageSetupDialog_updateMicroFocus" qtc_QAbstractPageSetupDialog_updateMicroFocus :: Ptr (TQAbstractPageSetupDialog a) -> IO ()

instance QupdateMicroFocus (QAbstractPageSetupDialogSc a) (()) where
 updateMicroFocus x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPageSetupDialog_updateMicroFocus cobj_x0

instance QwheelEvent (QAbstractPageSetupDialog ()) ((QWheelEvent t1)) where
 wheelEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPageSetupDialog_wheelEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractPageSetupDialog_wheelEvent_h" qtc_QAbstractPageSetupDialog_wheelEvent_h :: Ptr (TQAbstractPageSetupDialog a) -> Ptr (TQWheelEvent t1) -> IO ()

instance QwheelEvent (QAbstractPageSetupDialogSc a) ((QWheelEvent t1)) where
 wheelEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPageSetupDialog_wheelEvent_h cobj_x0 cobj_x1

instance QwindowActivationChange (QAbstractPageSetupDialog ()) ((Bool)) where
 windowActivationChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPageSetupDialog_windowActivationChange cobj_x0 (toCBool x1)

foreign import ccall "qtc_QAbstractPageSetupDialog_windowActivationChange" qtc_QAbstractPageSetupDialog_windowActivationChange :: Ptr (TQAbstractPageSetupDialog a) -> CBool -> IO ()

instance QwindowActivationChange (QAbstractPageSetupDialogSc a) ((Bool)) where
 windowActivationChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPageSetupDialog_windowActivationChange cobj_x0 (toCBool x1)

instance QchildEvent (QAbstractPageSetupDialog ()) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPageSetupDialog_childEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractPageSetupDialog_childEvent" qtc_QAbstractPageSetupDialog_childEvent :: Ptr (TQAbstractPageSetupDialog a) -> Ptr (TQChildEvent t1) -> IO ()

instance QchildEvent (QAbstractPageSetupDialogSc a) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPageSetupDialog_childEvent cobj_x0 cobj_x1

instance QconnectNotify (QAbstractPageSetupDialog ()) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QAbstractPageSetupDialog_connectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QAbstractPageSetupDialog_connectNotify" qtc_QAbstractPageSetupDialog_connectNotify :: Ptr (TQAbstractPageSetupDialog a) -> CWString -> IO ()

instance QconnectNotify (QAbstractPageSetupDialogSc a) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QAbstractPageSetupDialog_connectNotify cobj_x0 cstr_x1

instance QcustomEvent (QAbstractPageSetupDialog ()) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPageSetupDialog_customEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractPageSetupDialog_customEvent" qtc_QAbstractPageSetupDialog_customEvent :: Ptr (TQAbstractPageSetupDialog a) -> Ptr (TQEvent t1) -> IO ()

instance QcustomEvent (QAbstractPageSetupDialogSc a) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPageSetupDialog_customEvent cobj_x0 cobj_x1

instance QdisconnectNotify (QAbstractPageSetupDialog ()) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QAbstractPageSetupDialog_disconnectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QAbstractPageSetupDialog_disconnectNotify" qtc_QAbstractPageSetupDialog_disconnectNotify :: Ptr (TQAbstractPageSetupDialog a) -> CWString -> IO ()

instance QdisconnectNotify (QAbstractPageSetupDialogSc a) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QAbstractPageSetupDialog_disconnectNotify cobj_x0 cstr_x1

instance Qreceivers (QAbstractPageSetupDialog ()) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QAbstractPageSetupDialog_receivers cobj_x0 cstr_x1

foreign import ccall "qtc_QAbstractPageSetupDialog_receivers" qtc_QAbstractPageSetupDialog_receivers :: Ptr (TQAbstractPageSetupDialog a) -> CWString -> IO CInt

instance Qreceivers (QAbstractPageSetupDialogSc a) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QAbstractPageSetupDialog_receivers cobj_x0 cstr_x1

instance Qsender (QAbstractPageSetupDialog ()) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPageSetupDialog_sender cobj_x0

foreign import ccall "qtc_QAbstractPageSetupDialog_sender" qtc_QAbstractPageSetupDialog_sender :: Ptr (TQAbstractPageSetupDialog a) -> IO (Ptr (TQObject ()))

instance Qsender (QAbstractPageSetupDialogSc a) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPageSetupDialog_sender cobj_x0

instance QtimerEvent (QAbstractPageSetupDialog ()) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPageSetupDialog_timerEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractPageSetupDialog_timerEvent" qtc_QAbstractPageSetupDialog_timerEvent :: Ptr (TQAbstractPageSetupDialog a) -> Ptr (TQTimerEvent t1) -> IO ()

instance QtimerEvent (QAbstractPageSetupDialogSc a) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPageSetupDialog_timerEvent cobj_x0 cobj_x1

