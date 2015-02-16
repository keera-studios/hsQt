{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QErrorMessage.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:18
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QErrorMessage (
  QqErrorMessage(..)
  ,qErrorMessageQtHandler
  ,qErrorMessage_delete
  ,qErrorMessage_deleteLater
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

instance QuserMethod (QErrorMessage ()) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QErrorMessage_userMethod cobj_qobj (toCInt evid)

foreign import ccall "qtc_QErrorMessage_userMethod" qtc_QErrorMessage_userMethod :: Ptr (TQErrorMessage a) -> CInt -> IO ()

instance QuserMethod (QErrorMessageSc a) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QErrorMessage_userMethod cobj_qobj (toCInt evid)

instance QuserMethod (QErrorMessage ()) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QErrorMessage_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

foreign import ccall "qtc_QErrorMessage_userMethodVariant" qtc_QErrorMessage_userMethodVariant :: Ptr (TQErrorMessage a) -> CInt -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))

instance QuserMethod (QErrorMessageSc a) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QErrorMessage_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

class QqErrorMessage x1 where
  qErrorMessage :: x1 -> IO (QErrorMessage ())

instance QqErrorMessage (()) where
 qErrorMessage ()
  = withQErrorMessageResult $
    qtc_QErrorMessage

foreign import ccall "qtc_QErrorMessage" qtc_QErrorMessage :: IO (Ptr (TQErrorMessage ()))

instance QqErrorMessage ((QWidget t1)) where
 qErrorMessage (x1)
  = withQErrorMessageResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QErrorMessage1 cobj_x1

foreign import ccall "qtc_QErrorMessage1" qtc_QErrorMessage1 :: Ptr (TQWidget t1) -> IO (Ptr (TQErrorMessage ()))

instance QchangeEvent (QErrorMessage ()) ((QEvent t1)) where
 changeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QErrorMessage_changeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QErrorMessage_changeEvent_h" qtc_QErrorMessage_changeEvent_h :: Ptr (TQErrorMessage a) -> Ptr (TQEvent t1) -> IO ()

instance QchangeEvent (QErrorMessageSc a) ((QEvent t1)) where
 changeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QErrorMessage_changeEvent_h cobj_x0 cobj_x1

instance Qdone (QErrorMessage ()) ((Int)) where
 done x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QErrorMessage_done cobj_x0 (toCInt x1)

foreign import ccall "qtc_QErrorMessage_done" qtc_QErrorMessage_done :: Ptr (TQErrorMessage a) -> CInt -> IO ()

instance Qdone (QErrorMessageSc a) ((Int)) where
 done x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QErrorMessage_done cobj_x0 (toCInt x1)

qErrorMessageQtHandler :: (()) -> IO (QErrorMessage ())
qErrorMessageQtHandler ()
  = withQErrorMessageResult $
    qtc_QErrorMessage_qtHandler

foreign import ccall "qtc_QErrorMessage_qtHandler" qtc_QErrorMessage_qtHandler :: IO (Ptr (TQErrorMessage ()))

instance QshowMessage (QErrorMessage a) ((String)) where
 showMessage x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QErrorMessage_showMessage cobj_x0 cstr_x1

foreign import ccall "qtc_QErrorMessage_showMessage" qtc_QErrorMessage_showMessage :: Ptr (TQErrorMessage a) -> CWString -> IO ()

qErrorMessage_delete :: QErrorMessage a -> IO ()
qErrorMessage_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QErrorMessage_delete cobj_x0

foreign import ccall "qtc_QErrorMessage_delete" qtc_QErrorMessage_delete :: Ptr (TQErrorMessage a) -> IO ()

qErrorMessage_deleteLater :: QErrorMessage a -> IO ()
qErrorMessage_deleteLater x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QErrorMessage_deleteLater cobj_x0

foreign import ccall "qtc_QErrorMessage_deleteLater" qtc_QErrorMessage_deleteLater :: Ptr (TQErrorMessage a) -> IO ()

instance Qaccept (QErrorMessage ()) (()) where
 accept x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QErrorMessage_accept_h cobj_x0

foreign import ccall "qtc_QErrorMessage_accept_h" qtc_QErrorMessage_accept_h :: Ptr (TQErrorMessage a) -> IO ()

instance Qaccept (QErrorMessageSc a) (()) where
 accept x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QErrorMessage_accept_h cobj_x0

instance QadjustPosition (QErrorMessage ()) ((QWidget t1)) where
 adjustPosition x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QErrorMessage_adjustPosition cobj_x0 cobj_x1

foreign import ccall "qtc_QErrorMessage_adjustPosition" qtc_QErrorMessage_adjustPosition :: Ptr (TQErrorMessage a) -> Ptr (TQWidget t1) -> IO ()

instance QadjustPosition (QErrorMessageSc a) ((QWidget t1)) where
 adjustPosition x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QErrorMessage_adjustPosition cobj_x0 cobj_x1

instance QcloseEvent (QErrorMessage ()) ((QCloseEvent t1)) where
 closeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QErrorMessage_closeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QErrorMessage_closeEvent_h" qtc_QErrorMessage_closeEvent_h :: Ptr (TQErrorMessage a) -> Ptr (TQCloseEvent t1) -> IO ()

instance QcloseEvent (QErrorMessageSc a) ((QCloseEvent t1)) where
 closeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QErrorMessage_closeEvent_h cobj_x0 cobj_x1

instance QcontextMenuEvent (QErrorMessage ()) ((QContextMenuEvent t1)) where
 contextMenuEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QErrorMessage_contextMenuEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QErrorMessage_contextMenuEvent_h" qtc_QErrorMessage_contextMenuEvent_h :: Ptr (TQErrorMessage a) -> Ptr (TQContextMenuEvent t1) -> IO ()

instance QcontextMenuEvent (QErrorMessageSc a) ((QContextMenuEvent t1)) where
 contextMenuEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QErrorMessage_contextMenuEvent_h cobj_x0 cobj_x1

instance Qevent (QErrorMessage ()) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QErrorMessage_event_h cobj_x0 cobj_x1

foreign import ccall "qtc_QErrorMessage_event_h" qtc_QErrorMessage_event_h :: Ptr (TQErrorMessage a) -> Ptr (TQEvent t1) -> IO CBool

instance Qevent (QErrorMessageSc a) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QErrorMessage_event_h cobj_x0 cobj_x1

instance QeventFilter (QErrorMessage ()) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QErrorMessage_eventFilter cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QErrorMessage_eventFilter" qtc_QErrorMessage_eventFilter :: Ptr (TQErrorMessage a) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO CBool

instance QeventFilter (QErrorMessageSc a) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QErrorMessage_eventFilter cobj_x0 cobj_x1 cobj_x2

instance QkeyPressEvent (QErrorMessage ()) ((QKeyEvent t1)) where
 keyPressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QErrorMessage_keyPressEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QErrorMessage_keyPressEvent_h" qtc_QErrorMessage_keyPressEvent_h :: Ptr (TQErrorMessage a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyPressEvent (QErrorMessageSc a) ((QKeyEvent t1)) where
 keyPressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QErrorMessage_keyPressEvent_h cobj_x0 cobj_x1

instance QqminimumSizeHint (QErrorMessage ()) (()) where
 qminimumSizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QErrorMessage_minimumSizeHint_h cobj_x0

foreign import ccall "qtc_QErrorMessage_minimumSizeHint_h" qtc_QErrorMessage_minimumSizeHint_h :: Ptr (TQErrorMessage a) -> IO (Ptr (TQSize ()))

instance QqminimumSizeHint (QErrorMessageSc a) (()) where
 qminimumSizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QErrorMessage_minimumSizeHint_h cobj_x0

instance QminimumSizeHint (QErrorMessage ()) (()) where
 minimumSizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QErrorMessage_minimumSizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QErrorMessage_minimumSizeHint_qth_h" qtc_QErrorMessage_minimumSizeHint_qth_h :: Ptr (TQErrorMessage a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QminimumSizeHint (QErrorMessageSc a) (()) where
 minimumSizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QErrorMessage_minimumSizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

instance Qreject (QErrorMessage ()) (()) where
 reject x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QErrorMessage_reject_h cobj_x0

foreign import ccall "qtc_QErrorMessage_reject_h" qtc_QErrorMessage_reject_h :: Ptr (TQErrorMessage a) -> IO ()

instance Qreject (QErrorMessageSc a) (()) where
 reject x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QErrorMessage_reject_h cobj_x0

instance QresizeEvent (QErrorMessage ()) ((QResizeEvent t1)) where
 resizeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QErrorMessage_resizeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QErrorMessage_resizeEvent_h" qtc_QErrorMessage_resizeEvent_h :: Ptr (TQErrorMessage a) -> Ptr (TQResizeEvent t1) -> IO ()

instance QresizeEvent (QErrorMessageSc a) ((QResizeEvent t1)) where
 resizeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QErrorMessage_resizeEvent_h cobj_x0 cobj_x1

instance QsetVisible (QErrorMessage ()) ((Bool)) where
 setVisible x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QErrorMessage_setVisible_h cobj_x0 (toCBool x1)

foreign import ccall "qtc_QErrorMessage_setVisible_h" qtc_QErrorMessage_setVisible_h :: Ptr (TQErrorMessage a) -> CBool -> IO ()

instance QsetVisible (QErrorMessageSc a) ((Bool)) where
 setVisible x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QErrorMessage_setVisible_h cobj_x0 (toCBool x1)

instance QshowEvent (QErrorMessage ()) ((QShowEvent t1)) where
 showEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QErrorMessage_showEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QErrorMessage_showEvent_h" qtc_QErrorMessage_showEvent_h :: Ptr (TQErrorMessage a) -> Ptr (TQShowEvent t1) -> IO ()

instance QshowEvent (QErrorMessageSc a) ((QShowEvent t1)) where
 showEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QErrorMessage_showEvent_h cobj_x0 cobj_x1

instance QqsizeHint (QErrorMessage ()) (()) where
 qsizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QErrorMessage_sizeHint_h cobj_x0

foreign import ccall "qtc_QErrorMessage_sizeHint_h" qtc_QErrorMessage_sizeHint_h :: Ptr (TQErrorMessage a) -> IO (Ptr (TQSize ()))

instance QqsizeHint (QErrorMessageSc a) (()) where
 qsizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QErrorMessage_sizeHint_h cobj_x0

instance QsizeHint (QErrorMessage ()) (()) where
 sizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QErrorMessage_sizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QErrorMessage_sizeHint_qth_h" qtc_QErrorMessage_sizeHint_qth_h :: Ptr (TQErrorMessage a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QsizeHint (QErrorMessageSc a) (()) where
 sizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QErrorMessage_sizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

instance QactionEvent (QErrorMessage ()) ((QActionEvent t1)) where
 actionEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QErrorMessage_actionEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QErrorMessage_actionEvent_h" qtc_QErrorMessage_actionEvent_h :: Ptr (TQErrorMessage a) -> Ptr (TQActionEvent t1) -> IO ()

instance QactionEvent (QErrorMessageSc a) ((QActionEvent t1)) where
 actionEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QErrorMessage_actionEvent_h cobj_x0 cobj_x1

instance QaddAction (QErrorMessage ()) ((QAction t1)) (IO ()) where
 addAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QErrorMessage_addAction cobj_x0 cobj_x1

foreign import ccall "qtc_QErrorMessage_addAction" qtc_QErrorMessage_addAction :: Ptr (TQErrorMessage a) -> Ptr (TQAction t1) -> IO ()

instance QaddAction (QErrorMessageSc a) ((QAction t1)) (IO ()) where
 addAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QErrorMessage_addAction cobj_x0 cobj_x1

instance Qcreate (QErrorMessage ()) (()) (IO ()) where
 create x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QErrorMessage_create cobj_x0

foreign import ccall "qtc_QErrorMessage_create" qtc_QErrorMessage_create :: Ptr (TQErrorMessage a) -> IO ()

instance Qcreate (QErrorMessageSc a) (()) (IO ()) where
 create x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QErrorMessage_create cobj_x0

instance Qcreate (QErrorMessage ()) ((QVoid t1)) (IO ()) where
 create x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QErrorMessage_create1 cobj_x0 cobj_x1

foreign import ccall "qtc_QErrorMessage_create1" qtc_QErrorMessage_create1 :: Ptr (TQErrorMessage a) -> Ptr (TQVoid t1) -> IO ()

instance Qcreate (QErrorMessageSc a) ((QVoid t1)) (IO ()) where
 create x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QErrorMessage_create1 cobj_x0 cobj_x1

instance Qcreate (QErrorMessage ()) ((QVoid t1, Bool)) (IO ()) where
 create x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QErrorMessage_create2 cobj_x0 cobj_x1 (toCBool x2)

foreign import ccall "qtc_QErrorMessage_create2" qtc_QErrorMessage_create2 :: Ptr (TQErrorMessage a) -> Ptr (TQVoid t1) -> CBool -> IO ()

instance Qcreate (QErrorMessageSc a) ((QVoid t1, Bool)) (IO ()) where
 create x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QErrorMessage_create2 cobj_x0 cobj_x1 (toCBool x2)

instance Qcreate (QErrorMessage ()) ((QVoid t1, Bool, Bool)) (IO ()) where
 create x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QErrorMessage_create3 cobj_x0 cobj_x1 (toCBool x2) (toCBool x3)

foreign import ccall "qtc_QErrorMessage_create3" qtc_QErrorMessage_create3 :: Ptr (TQErrorMessage a) -> Ptr (TQVoid t1) -> CBool -> CBool -> IO ()

instance Qcreate (QErrorMessageSc a) ((QVoid t1, Bool, Bool)) (IO ()) where
 create x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QErrorMessage_create3 cobj_x0 cobj_x1 (toCBool x2) (toCBool x3)

instance Qdestroy (QErrorMessage ()) (()) where
 destroy x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QErrorMessage_destroy cobj_x0

foreign import ccall "qtc_QErrorMessage_destroy" qtc_QErrorMessage_destroy :: Ptr (TQErrorMessage a) -> IO ()

instance Qdestroy (QErrorMessageSc a) (()) where
 destroy x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QErrorMessage_destroy cobj_x0

instance Qdestroy (QErrorMessage ()) ((Bool)) where
 destroy x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QErrorMessage_destroy1 cobj_x0 (toCBool x1)

foreign import ccall "qtc_QErrorMessage_destroy1" qtc_QErrorMessage_destroy1 :: Ptr (TQErrorMessage a) -> CBool -> IO ()

instance Qdestroy (QErrorMessageSc a) ((Bool)) where
 destroy x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QErrorMessage_destroy1 cobj_x0 (toCBool x1)

instance Qdestroy (QErrorMessage ()) ((Bool, Bool)) where
 destroy x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QErrorMessage_destroy2 cobj_x0 (toCBool x1) (toCBool x2)

foreign import ccall "qtc_QErrorMessage_destroy2" qtc_QErrorMessage_destroy2 :: Ptr (TQErrorMessage a) -> CBool -> CBool -> IO ()

instance Qdestroy (QErrorMessageSc a) ((Bool, Bool)) where
 destroy x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QErrorMessage_destroy2 cobj_x0 (toCBool x1) (toCBool x2)

instance QdevType (QErrorMessage ()) (()) where
 devType x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QErrorMessage_devType_h cobj_x0

foreign import ccall "qtc_QErrorMessage_devType_h" qtc_QErrorMessage_devType_h :: Ptr (TQErrorMessage a) -> IO CInt

instance QdevType (QErrorMessageSc a) (()) where
 devType x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QErrorMessage_devType_h cobj_x0

instance QdragEnterEvent (QErrorMessage ()) ((QDragEnterEvent t1)) where
 dragEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QErrorMessage_dragEnterEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QErrorMessage_dragEnterEvent_h" qtc_QErrorMessage_dragEnterEvent_h :: Ptr (TQErrorMessage a) -> Ptr (TQDragEnterEvent t1) -> IO ()

instance QdragEnterEvent (QErrorMessageSc a) ((QDragEnterEvent t1)) where
 dragEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QErrorMessage_dragEnterEvent_h cobj_x0 cobj_x1

instance QdragLeaveEvent (QErrorMessage ()) ((QDragLeaveEvent t1)) where
 dragLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QErrorMessage_dragLeaveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QErrorMessage_dragLeaveEvent_h" qtc_QErrorMessage_dragLeaveEvent_h :: Ptr (TQErrorMessage a) -> Ptr (TQDragLeaveEvent t1) -> IO ()

instance QdragLeaveEvent (QErrorMessageSc a) ((QDragLeaveEvent t1)) where
 dragLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QErrorMessage_dragLeaveEvent_h cobj_x0 cobj_x1

instance QdragMoveEvent (QErrorMessage ()) ((QDragMoveEvent t1)) where
 dragMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QErrorMessage_dragMoveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QErrorMessage_dragMoveEvent_h" qtc_QErrorMessage_dragMoveEvent_h :: Ptr (TQErrorMessage a) -> Ptr (TQDragMoveEvent t1) -> IO ()

instance QdragMoveEvent (QErrorMessageSc a) ((QDragMoveEvent t1)) where
 dragMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QErrorMessage_dragMoveEvent_h cobj_x0 cobj_x1

instance QdropEvent (QErrorMessage ()) ((QDropEvent t1)) where
 dropEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QErrorMessage_dropEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QErrorMessage_dropEvent_h" qtc_QErrorMessage_dropEvent_h :: Ptr (TQErrorMessage a) -> Ptr (TQDropEvent t1) -> IO ()

instance QdropEvent (QErrorMessageSc a) ((QDropEvent t1)) where
 dropEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QErrorMessage_dropEvent_h cobj_x0 cobj_x1

instance QenabledChange (QErrorMessage ()) ((Bool)) where
 enabledChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QErrorMessage_enabledChange cobj_x0 (toCBool x1)

foreign import ccall "qtc_QErrorMessage_enabledChange" qtc_QErrorMessage_enabledChange :: Ptr (TQErrorMessage a) -> CBool -> IO ()

instance QenabledChange (QErrorMessageSc a) ((Bool)) where
 enabledChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QErrorMessage_enabledChange cobj_x0 (toCBool x1)

instance QenterEvent (QErrorMessage ()) ((QEvent t1)) where
 enterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QErrorMessage_enterEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QErrorMessage_enterEvent_h" qtc_QErrorMessage_enterEvent_h :: Ptr (TQErrorMessage a) -> Ptr (TQEvent t1) -> IO ()

instance QenterEvent (QErrorMessageSc a) ((QEvent t1)) where
 enterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QErrorMessage_enterEvent_h cobj_x0 cobj_x1

instance QfocusInEvent (QErrorMessage ()) ((QFocusEvent t1)) where
 focusInEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QErrorMessage_focusInEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QErrorMessage_focusInEvent_h" qtc_QErrorMessage_focusInEvent_h :: Ptr (TQErrorMessage a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusInEvent (QErrorMessageSc a) ((QFocusEvent t1)) where
 focusInEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QErrorMessage_focusInEvent_h cobj_x0 cobj_x1

instance QfocusNextChild (QErrorMessage ()) (()) where
 focusNextChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QErrorMessage_focusNextChild cobj_x0

foreign import ccall "qtc_QErrorMessage_focusNextChild" qtc_QErrorMessage_focusNextChild :: Ptr (TQErrorMessage a) -> IO CBool

instance QfocusNextChild (QErrorMessageSc a) (()) where
 focusNextChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QErrorMessage_focusNextChild cobj_x0

instance QfocusNextPrevChild (QErrorMessage ()) ((Bool)) where
 focusNextPrevChild x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QErrorMessage_focusNextPrevChild cobj_x0 (toCBool x1)

foreign import ccall "qtc_QErrorMessage_focusNextPrevChild" qtc_QErrorMessage_focusNextPrevChild :: Ptr (TQErrorMessage a) -> CBool -> IO CBool

instance QfocusNextPrevChild (QErrorMessageSc a) ((Bool)) where
 focusNextPrevChild x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QErrorMessage_focusNextPrevChild cobj_x0 (toCBool x1)

instance QfocusOutEvent (QErrorMessage ()) ((QFocusEvent t1)) where
 focusOutEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QErrorMessage_focusOutEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QErrorMessage_focusOutEvent_h" qtc_QErrorMessage_focusOutEvent_h :: Ptr (TQErrorMessage a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusOutEvent (QErrorMessageSc a) ((QFocusEvent t1)) where
 focusOutEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QErrorMessage_focusOutEvent_h cobj_x0 cobj_x1

instance QfocusPreviousChild (QErrorMessage ()) (()) where
 focusPreviousChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QErrorMessage_focusPreviousChild cobj_x0

foreign import ccall "qtc_QErrorMessage_focusPreviousChild" qtc_QErrorMessage_focusPreviousChild :: Ptr (TQErrorMessage a) -> IO CBool

instance QfocusPreviousChild (QErrorMessageSc a) (()) where
 focusPreviousChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QErrorMessage_focusPreviousChild cobj_x0

instance QfontChange (QErrorMessage ()) ((QFont t1)) where
 fontChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QErrorMessage_fontChange cobj_x0 cobj_x1

foreign import ccall "qtc_QErrorMessage_fontChange" qtc_QErrorMessage_fontChange :: Ptr (TQErrorMessage a) -> Ptr (TQFont t1) -> IO ()

instance QfontChange (QErrorMessageSc a) ((QFont t1)) where
 fontChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QErrorMessage_fontChange cobj_x0 cobj_x1

instance QheightForWidth (QErrorMessage ()) ((Int)) where
 heightForWidth x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QErrorMessage_heightForWidth_h cobj_x0 (toCInt x1)

foreign import ccall "qtc_QErrorMessage_heightForWidth_h" qtc_QErrorMessage_heightForWidth_h :: Ptr (TQErrorMessage a) -> CInt -> IO CInt

instance QheightForWidth (QErrorMessageSc a) ((Int)) where
 heightForWidth x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QErrorMessage_heightForWidth_h cobj_x0 (toCInt x1)

instance QhideEvent (QErrorMessage ()) ((QHideEvent t1)) where
 hideEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QErrorMessage_hideEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QErrorMessage_hideEvent_h" qtc_QErrorMessage_hideEvent_h :: Ptr (TQErrorMessage a) -> Ptr (TQHideEvent t1) -> IO ()

instance QhideEvent (QErrorMessageSc a) ((QHideEvent t1)) where
 hideEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QErrorMessage_hideEvent_h cobj_x0 cobj_x1

instance QinputMethodEvent (QErrorMessage ()) ((QInputMethodEvent t1)) where
 inputMethodEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QErrorMessage_inputMethodEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QErrorMessage_inputMethodEvent" qtc_QErrorMessage_inputMethodEvent :: Ptr (TQErrorMessage a) -> Ptr (TQInputMethodEvent t1) -> IO ()

instance QinputMethodEvent (QErrorMessageSc a) ((QInputMethodEvent t1)) where
 inputMethodEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QErrorMessage_inputMethodEvent cobj_x0 cobj_x1

instance QinputMethodQuery (QErrorMessage ()) ((InputMethodQuery)) where
 inputMethodQuery x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QErrorMessage_inputMethodQuery_h cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QErrorMessage_inputMethodQuery_h" qtc_QErrorMessage_inputMethodQuery_h :: Ptr (TQErrorMessage a) -> CLong -> IO (Ptr (TQVariant ()))

instance QinputMethodQuery (QErrorMessageSc a) ((InputMethodQuery)) where
 inputMethodQuery x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QErrorMessage_inputMethodQuery_h cobj_x0 (toCLong $ qEnum_toInt x1)

instance QkeyReleaseEvent (QErrorMessage ()) ((QKeyEvent t1)) where
 keyReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QErrorMessage_keyReleaseEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QErrorMessage_keyReleaseEvent_h" qtc_QErrorMessage_keyReleaseEvent_h :: Ptr (TQErrorMessage a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyReleaseEvent (QErrorMessageSc a) ((QKeyEvent t1)) where
 keyReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QErrorMessage_keyReleaseEvent_h cobj_x0 cobj_x1

instance QlanguageChange (QErrorMessage ()) (()) where
 languageChange x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QErrorMessage_languageChange cobj_x0

foreign import ccall "qtc_QErrorMessage_languageChange" qtc_QErrorMessage_languageChange :: Ptr (TQErrorMessage a) -> IO ()

instance QlanguageChange (QErrorMessageSc a) (()) where
 languageChange x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QErrorMessage_languageChange cobj_x0

instance QleaveEvent (QErrorMessage ()) ((QEvent t1)) where
 leaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QErrorMessage_leaveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QErrorMessage_leaveEvent_h" qtc_QErrorMessage_leaveEvent_h :: Ptr (TQErrorMessage a) -> Ptr (TQEvent t1) -> IO ()

instance QleaveEvent (QErrorMessageSc a) ((QEvent t1)) where
 leaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QErrorMessage_leaveEvent_h cobj_x0 cobj_x1

instance Qmetric (QErrorMessage ()) ((PaintDeviceMetric)) where
 metric x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QErrorMessage_metric cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QErrorMessage_metric" qtc_QErrorMessage_metric :: Ptr (TQErrorMessage a) -> CLong -> IO CInt

instance Qmetric (QErrorMessageSc a) ((PaintDeviceMetric)) where
 metric x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QErrorMessage_metric cobj_x0 (toCLong $ qEnum_toInt x1)

instance QmouseDoubleClickEvent (QErrorMessage ()) ((QMouseEvent t1)) where
 mouseDoubleClickEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QErrorMessage_mouseDoubleClickEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QErrorMessage_mouseDoubleClickEvent_h" qtc_QErrorMessage_mouseDoubleClickEvent_h :: Ptr (TQErrorMessage a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseDoubleClickEvent (QErrorMessageSc a) ((QMouseEvent t1)) where
 mouseDoubleClickEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QErrorMessage_mouseDoubleClickEvent_h cobj_x0 cobj_x1

instance QmouseMoveEvent (QErrorMessage ()) ((QMouseEvent t1)) where
 mouseMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QErrorMessage_mouseMoveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QErrorMessage_mouseMoveEvent_h" qtc_QErrorMessage_mouseMoveEvent_h :: Ptr (TQErrorMessage a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseMoveEvent (QErrorMessageSc a) ((QMouseEvent t1)) where
 mouseMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QErrorMessage_mouseMoveEvent_h cobj_x0 cobj_x1

instance QmousePressEvent (QErrorMessage ()) ((QMouseEvent t1)) where
 mousePressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QErrorMessage_mousePressEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QErrorMessage_mousePressEvent_h" qtc_QErrorMessage_mousePressEvent_h :: Ptr (TQErrorMessage a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmousePressEvent (QErrorMessageSc a) ((QMouseEvent t1)) where
 mousePressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QErrorMessage_mousePressEvent_h cobj_x0 cobj_x1

instance QmouseReleaseEvent (QErrorMessage ()) ((QMouseEvent t1)) where
 mouseReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QErrorMessage_mouseReleaseEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QErrorMessage_mouseReleaseEvent_h" qtc_QErrorMessage_mouseReleaseEvent_h :: Ptr (TQErrorMessage a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseReleaseEvent (QErrorMessageSc a) ((QMouseEvent t1)) where
 mouseReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QErrorMessage_mouseReleaseEvent_h cobj_x0 cobj_x1

instance Qmove (QErrorMessage ()) ((Int, Int)) where
 move x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QErrorMessage_move1 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QErrorMessage_move1" qtc_QErrorMessage_move1 :: Ptr (TQErrorMessage a) -> CInt -> CInt -> IO ()

instance Qmove (QErrorMessageSc a) ((Int, Int)) where
 move x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QErrorMessage_move1 cobj_x0 (toCInt x1) (toCInt x2)

instance Qmove (QErrorMessage ()) ((Point)) where
 move x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QErrorMessage_move_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

foreign import ccall "qtc_QErrorMessage_move_qth" qtc_QErrorMessage_move_qth :: Ptr (TQErrorMessage a) -> CInt -> CInt -> IO ()

instance Qmove (QErrorMessageSc a) ((Point)) where
 move x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QErrorMessage_move_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

instance Qqmove (QErrorMessage ()) ((QPoint t1)) where
 qmove x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QErrorMessage_move cobj_x0 cobj_x1

foreign import ccall "qtc_QErrorMessage_move" qtc_QErrorMessage_move :: Ptr (TQErrorMessage a) -> Ptr (TQPoint t1) -> IO ()

instance Qqmove (QErrorMessageSc a) ((QPoint t1)) where
 qmove x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QErrorMessage_move cobj_x0 cobj_x1

instance QmoveEvent (QErrorMessage ()) ((QMoveEvent t1)) where
 moveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QErrorMessage_moveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QErrorMessage_moveEvent_h" qtc_QErrorMessage_moveEvent_h :: Ptr (TQErrorMessage a) -> Ptr (TQMoveEvent t1) -> IO ()

instance QmoveEvent (QErrorMessageSc a) ((QMoveEvent t1)) where
 moveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QErrorMessage_moveEvent_h cobj_x0 cobj_x1

instance QpaintEngine (QErrorMessage ()) (()) where
 paintEngine x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QErrorMessage_paintEngine_h cobj_x0

foreign import ccall "qtc_QErrorMessage_paintEngine_h" qtc_QErrorMessage_paintEngine_h :: Ptr (TQErrorMessage a) -> IO (Ptr (TQPaintEngine ()))

instance QpaintEngine (QErrorMessageSc a) (()) where
 paintEngine x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QErrorMessage_paintEngine_h cobj_x0

instance QpaintEvent (QErrorMessage ()) ((QPaintEvent t1)) where
 paintEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QErrorMessage_paintEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QErrorMessage_paintEvent_h" qtc_QErrorMessage_paintEvent_h :: Ptr (TQErrorMessage a) -> Ptr (TQPaintEvent t1) -> IO ()

instance QpaintEvent (QErrorMessageSc a) ((QPaintEvent t1)) where
 paintEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QErrorMessage_paintEvent_h cobj_x0 cobj_x1

instance QpaletteChange (QErrorMessage ()) ((QPalette t1)) where
 paletteChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QErrorMessage_paletteChange cobj_x0 cobj_x1

foreign import ccall "qtc_QErrorMessage_paletteChange" qtc_QErrorMessage_paletteChange :: Ptr (TQErrorMessage a) -> Ptr (TQPalette t1) -> IO ()

instance QpaletteChange (QErrorMessageSc a) ((QPalette t1)) where
 paletteChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QErrorMessage_paletteChange cobj_x0 cobj_x1

instance Qrepaint (QErrorMessage ()) (()) where
 repaint x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QErrorMessage_repaint cobj_x0

foreign import ccall "qtc_QErrorMessage_repaint" qtc_QErrorMessage_repaint :: Ptr (TQErrorMessage a) -> IO ()

instance Qrepaint (QErrorMessageSc a) (()) where
 repaint x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QErrorMessage_repaint cobj_x0

instance Qrepaint (QErrorMessage ()) ((Int, Int, Int, Int)) where
 repaint x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QErrorMessage_repaint2 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QErrorMessage_repaint2" qtc_QErrorMessage_repaint2 :: Ptr (TQErrorMessage a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance Qrepaint (QErrorMessageSc a) ((Int, Int, Int, Int)) where
 repaint x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QErrorMessage_repaint2 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

instance Qrepaint (QErrorMessage ()) ((QRegion t1)) where
 repaint x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QErrorMessage_repaint1 cobj_x0 cobj_x1

foreign import ccall "qtc_QErrorMessage_repaint1" qtc_QErrorMessage_repaint1 :: Ptr (TQErrorMessage a) -> Ptr (TQRegion t1) -> IO ()

instance Qrepaint (QErrorMessageSc a) ((QRegion t1)) where
 repaint x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QErrorMessage_repaint1 cobj_x0 cobj_x1

instance QresetInputContext (QErrorMessage ()) (()) where
 resetInputContext x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QErrorMessage_resetInputContext cobj_x0

foreign import ccall "qtc_QErrorMessage_resetInputContext" qtc_QErrorMessage_resetInputContext :: Ptr (TQErrorMessage a) -> IO ()

instance QresetInputContext (QErrorMessageSc a) (()) where
 resetInputContext x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QErrorMessage_resetInputContext cobj_x0

instance Qresize (QErrorMessage ()) ((Int, Int)) (IO ()) where
 resize x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QErrorMessage_resize1 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QErrorMessage_resize1" qtc_QErrorMessage_resize1 :: Ptr (TQErrorMessage a) -> CInt -> CInt -> IO ()

instance Qresize (QErrorMessageSc a) ((Int, Int)) (IO ()) where
 resize x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QErrorMessage_resize1 cobj_x0 (toCInt x1) (toCInt x2)

instance Qqresize (QErrorMessage ()) ((QSize t1)) where
 qresize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QErrorMessage_resize cobj_x0 cobj_x1

foreign import ccall "qtc_QErrorMessage_resize" qtc_QErrorMessage_resize :: Ptr (TQErrorMessage a) -> Ptr (TQSize t1) -> IO ()

instance Qqresize (QErrorMessageSc a) ((QSize t1)) where
 qresize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QErrorMessage_resize cobj_x0 cobj_x1

instance Qresize (QErrorMessage ()) ((Size)) (IO ()) where
 resize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QErrorMessage_resize_qth cobj_x0 csize_x1_w csize_x1_h 

foreign import ccall "qtc_QErrorMessage_resize_qth" qtc_QErrorMessage_resize_qth :: Ptr (TQErrorMessage a) -> CInt -> CInt -> IO ()

instance Qresize (QErrorMessageSc a) ((Size)) (IO ()) where
 resize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QErrorMessage_resize_qth cobj_x0 csize_x1_w csize_x1_h 

instance QsetGeometry (QErrorMessage ()) ((Int, Int, Int, Int)) where
 setGeometry x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QErrorMessage_setGeometry1 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QErrorMessage_setGeometry1" qtc_QErrorMessage_setGeometry1 :: Ptr (TQErrorMessage a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QsetGeometry (QErrorMessageSc a) ((Int, Int, Int, Int)) where
 setGeometry x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QErrorMessage_setGeometry1 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

instance QqsetGeometry (QErrorMessage ()) ((QRect t1)) where
 qsetGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QErrorMessage_setGeometry cobj_x0 cobj_x1

foreign import ccall "qtc_QErrorMessage_setGeometry" qtc_QErrorMessage_setGeometry :: Ptr (TQErrorMessage a) -> Ptr (TQRect t1) -> IO ()

instance QqsetGeometry (QErrorMessageSc a) ((QRect t1)) where
 qsetGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QErrorMessage_setGeometry cobj_x0 cobj_x1

instance QsetGeometry (QErrorMessage ()) ((Rect)) where
 setGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QErrorMessage_setGeometry_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

foreign import ccall "qtc_QErrorMessage_setGeometry_qth" qtc_QErrorMessage_setGeometry_qth :: Ptr (TQErrorMessage a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QsetGeometry (QErrorMessageSc a) ((Rect)) where
 setGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QErrorMessage_setGeometry_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

instance QsetMouseTracking (QErrorMessage ()) ((Bool)) where
 setMouseTracking x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QErrorMessage_setMouseTracking cobj_x0 (toCBool x1)

foreign import ccall "qtc_QErrorMessage_setMouseTracking" qtc_QErrorMessage_setMouseTracking :: Ptr (TQErrorMessage a) -> CBool -> IO ()

instance QsetMouseTracking (QErrorMessageSc a) ((Bool)) where
 setMouseTracking x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QErrorMessage_setMouseTracking cobj_x0 (toCBool x1)

instance QtabletEvent (QErrorMessage ()) ((QTabletEvent t1)) where
 tabletEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QErrorMessage_tabletEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QErrorMessage_tabletEvent_h" qtc_QErrorMessage_tabletEvent_h :: Ptr (TQErrorMessage a) -> Ptr (TQTabletEvent t1) -> IO ()

instance QtabletEvent (QErrorMessageSc a) ((QTabletEvent t1)) where
 tabletEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QErrorMessage_tabletEvent_h cobj_x0 cobj_x1

instance QupdateMicroFocus (QErrorMessage ()) (()) where
 updateMicroFocus x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QErrorMessage_updateMicroFocus cobj_x0

foreign import ccall "qtc_QErrorMessage_updateMicroFocus" qtc_QErrorMessage_updateMicroFocus :: Ptr (TQErrorMessage a) -> IO ()

instance QupdateMicroFocus (QErrorMessageSc a) (()) where
 updateMicroFocus x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QErrorMessage_updateMicroFocus cobj_x0

instance QwheelEvent (QErrorMessage ()) ((QWheelEvent t1)) where
 wheelEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QErrorMessage_wheelEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QErrorMessage_wheelEvent_h" qtc_QErrorMessage_wheelEvent_h :: Ptr (TQErrorMessage a) -> Ptr (TQWheelEvent t1) -> IO ()

instance QwheelEvent (QErrorMessageSc a) ((QWheelEvent t1)) where
 wheelEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QErrorMessage_wheelEvent_h cobj_x0 cobj_x1

instance QwindowActivationChange (QErrorMessage ()) ((Bool)) where
 windowActivationChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QErrorMessage_windowActivationChange cobj_x0 (toCBool x1)

foreign import ccall "qtc_QErrorMessage_windowActivationChange" qtc_QErrorMessage_windowActivationChange :: Ptr (TQErrorMessage a) -> CBool -> IO ()

instance QwindowActivationChange (QErrorMessageSc a) ((Bool)) where
 windowActivationChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QErrorMessage_windowActivationChange cobj_x0 (toCBool x1)

instance QchildEvent (QErrorMessage ()) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QErrorMessage_childEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QErrorMessage_childEvent" qtc_QErrorMessage_childEvent :: Ptr (TQErrorMessage a) -> Ptr (TQChildEvent t1) -> IO ()

instance QchildEvent (QErrorMessageSc a) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QErrorMessage_childEvent cobj_x0 cobj_x1

instance QconnectNotify (QErrorMessage ()) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QErrorMessage_connectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QErrorMessage_connectNotify" qtc_QErrorMessage_connectNotify :: Ptr (TQErrorMessage a) -> CWString -> IO ()

instance QconnectNotify (QErrorMessageSc a) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QErrorMessage_connectNotify cobj_x0 cstr_x1

instance QcustomEvent (QErrorMessage ()) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QErrorMessage_customEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QErrorMessage_customEvent" qtc_QErrorMessage_customEvent :: Ptr (TQErrorMessage a) -> Ptr (TQEvent t1) -> IO ()

instance QcustomEvent (QErrorMessageSc a) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QErrorMessage_customEvent cobj_x0 cobj_x1

instance QdisconnectNotify (QErrorMessage ()) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QErrorMessage_disconnectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QErrorMessage_disconnectNotify" qtc_QErrorMessage_disconnectNotify :: Ptr (TQErrorMessage a) -> CWString -> IO ()

instance QdisconnectNotify (QErrorMessageSc a) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QErrorMessage_disconnectNotify cobj_x0 cstr_x1

instance Qreceivers (QErrorMessage ()) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QErrorMessage_receivers cobj_x0 cstr_x1

foreign import ccall "qtc_QErrorMessage_receivers" qtc_QErrorMessage_receivers :: Ptr (TQErrorMessage a) -> CWString -> IO CInt

instance Qreceivers (QErrorMessageSc a) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QErrorMessage_receivers cobj_x0 cstr_x1

instance Qsender (QErrorMessage ()) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QErrorMessage_sender cobj_x0

foreign import ccall "qtc_QErrorMessage_sender" qtc_QErrorMessage_sender :: Ptr (TQErrorMessage a) -> IO (Ptr (TQObject ()))

instance Qsender (QErrorMessageSc a) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QErrorMessage_sender cobj_x0

instance QtimerEvent (QErrorMessage ()) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QErrorMessage_timerEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QErrorMessage_timerEvent" qtc_QErrorMessage_timerEvent :: Ptr (TQErrorMessage a) -> Ptr (TQTimerEvent t1) -> IO ()

instance QtimerEvent (QErrorMessageSc a) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QErrorMessage_timerEvent cobj_x0 cobj_x1

