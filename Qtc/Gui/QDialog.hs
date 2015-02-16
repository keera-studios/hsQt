{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QDialog.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:14
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QDialog (
  QqDialog(..)
  ,result
  ,setModal
  ,setResult
  ,showExtension
  ,qDialog_delete
  ,qDialog_deleteLater
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

instance QuserMethod (QDialog ()) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QDialog_userMethod cobj_qobj (toCInt evid)

foreign import ccall "qtc_QDialog_userMethod" qtc_QDialog_userMethod :: Ptr (TQDialog a) -> CInt -> IO ()

instance QuserMethod (QDialogSc a) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QDialog_userMethod cobj_qobj (toCInt evid)

instance QuserMethod (QDialog ()) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QDialog_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

foreign import ccall "qtc_QDialog_userMethodVariant" qtc_QDialog_userMethodVariant :: Ptr (TQDialog a) -> CInt -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))

instance QuserMethod (QDialogSc a) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QDialog_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

class QqDialog x1 where
  qDialog :: x1 -> IO (QDialog ())

instance QqDialog (()) where
 qDialog ()
  = withQDialogResult $
    qtc_QDialog

foreign import ccall "qtc_QDialog" qtc_QDialog :: IO (Ptr (TQDialog ()))

instance QqDialog ((QWidget t1)) where
 qDialog (x1)
  = withQDialogResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialog1 cobj_x1

foreign import ccall "qtc_QDialog1" qtc_QDialog1 :: Ptr (TQWidget t1) -> IO (Ptr (TQDialog ()))

instance QqDialog ((QWidget t1, WindowFlags)) where
 qDialog (x1, x2)
  = withQDialogResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialog2 cobj_x1 (toCLong $ qFlags_toInt x2)

foreign import ccall "qtc_QDialog2" qtc_QDialog2 :: Ptr (TQWidget t1) -> CLong -> IO (Ptr (TQDialog ()))

instance Qaccept (QDialog ()) (()) where
 accept x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDialog_accept_h cobj_x0

foreign import ccall "qtc_QDialog_accept_h" qtc_QDialog_accept_h :: Ptr (TQDialog a) -> IO ()

instance Qaccept (QDialogSc a) (()) where
 accept x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDialog_accept_h cobj_x0

instance QadjustPosition (QDialog ()) ((QWidget t1)) where
 adjustPosition x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialog_adjustPosition cobj_x0 cobj_x1

foreign import ccall "qtc_QDialog_adjustPosition" qtc_QDialog_adjustPosition :: Ptr (TQDialog a) -> Ptr (TQWidget t1) -> IO ()

instance QadjustPosition (QDialogSc a) ((QWidget t1)) where
 adjustPosition x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialog_adjustPosition cobj_x0 cobj_x1

instance QcloseEvent (QDialog ()) ((QCloseEvent t1)) where
 closeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialog_closeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDialog_closeEvent_h" qtc_QDialog_closeEvent_h :: Ptr (TQDialog a) -> Ptr (TQCloseEvent t1) -> IO ()

instance QcloseEvent (QDialogSc a) ((QCloseEvent t1)) where
 closeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialog_closeEvent_h cobj_x0 cobj_x1

instance QcontextMenuEvent (QDialog ()) ((QContextMenuEvent t1)) where
 contextMenuEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialog_contextMenuEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDialog_contextMenuEvent_h" qtc_QDialog_contextMenuEvent_h :: Ptr (TQDialog a) -> Ptr (TQContextMenuEvent t1) -> IO ()

instance QcontextMenuEvent (QDialogSc a) ((QContextMenuEvent t1)) where
 contextMenuEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialog_contextMenuEvent_h cobj_x0 cobj_x1

instance Qdone (QDialog ()) ((Int)) where
 done x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDialog_done_h cobj_x0 (toCInt x1)

foreign import ccall "qtc_QDialog_done_h" qtc_QDialog_done_h :: Ptr (TQDialog a) -> CInt -> IO ()

instance Qdone (QDialogSc a) ((Int)) where
 done x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDialog_done_h cobj_x0 (toCInt x1)

instance Qevent (QDialog ()) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialog_event_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDialog_event_h" qtc_QDialog_event_h :: Ptr (TQDialog a) -> Ptr (TQEvent t1) -> IO CBool

instance Qevent (QDialogSc a) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialog_event_h cobj_x0 cobj_x1

instance QeventFilter (QDialog ()) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QDialog_eventFilter_h cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QDialog_eventFilter" qtc_QDialog_eventFilter :: Ptr (TQDialog a) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO CBool

instance QeventFilter (QDialogSc a) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QDialog_eventFilter_h cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QDialog_eventFilter_h" qtc_QDialog_eventFilter_h :: Ptr (TQDialog a) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO CBool

instance Qexec (QDialog a) (()) (IO (Int)) where
 exec x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDialog_exec cobj_x0

foreign import ccall "qtc_QDialog_exec" qtc_QDialog_exec :: Ptr (TQDialog a) -> IO CInt

instance Qextension (QDialog a) (()) (IO (QWidget ())) where
 extension x0 ()
  = withQWidgetResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDialog_extension cobj_x0

foreign import ccall "qtc_QDialog_extension" qtc_QDialog_extension :: Ptr (TQDialog a) -> IO (Ptr (TQWidget ()))

instance QisSizeGripEnabled (QDialog a) (()) where
 isSizeGripEnabled x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDialog_isSizeGripEnabled cobj_x0

foreign import ccall "qtc_QDialog_isSizeGripEnabled" qtc_QDialog_isSizeGripEnabled :: Ptr (TQDialog a) -> IO CBool

instance QkeyPressEvent (QDialog ()) ((QKeyEvent t1)) where
 keyPressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialog_keyPressEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDialog_keyPressEvent_h" qtc_QDialog_keyPressEvent_h :: Ptr (TQDialog a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyPressEvent (QDialogSc a) ((QKeyEvent t1)) where
 keyPressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialog_keyPressEvent_h cobj_x0 cobj_x1

instance QqminimumSizeHint (QDialog ()) (()) where
 qminimumSizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDialog_minimumSizeHint_h cobj_x0

foreign import ccall "qtc_QDialog_minimumSizeHint_h" qtc_QDialog_minimumSizeHint_h :: Ptr (TQDialog a) -> IO (Ptr (TQSize ()))

instance QqminimumSizeHint (QDialogSc a) (()) where
 qminimumSizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDialog_minimumSizeHint_h cobj_x0

instance QminimumSizeHint (QDialog ()) (()) where
 minimumSizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDialog_minimumSizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QDialog_minimumSizeHint_qth_h" qtc_QDialog_minimumSizeHint_qth_h :: Ptr (TQDialog a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QminimumSizeHint (QDialogSc a) (()) where
 minimumSizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDialog_minimumSizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

instance Qorientation (QDialog a) (()) (IO (QtOrientation)) where
 orientation x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDialog_orientation cobj_x0

foreign import ccall "qtc_QDialog_orientation" qtc_QDialog_orientation :: Ptr (TQDialog a) -> IO CLong

instance Qreject (QDialog ()) (()) where
 reject x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDialog_reject_h cobj_x0

foreign import ccall "qtc_QDialog_reject_h" qtc_QDialog_reject_h :: Ptr (TQDialog a) -> IO ()

instance Qreject (QDialogSc a) (()) where
 reject x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDialog_reject_h cobj_x0

instance QresizeEvent (QDialog ()) ((QResizeEvent t1)) where
 resizeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialog_resizeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDialog_resizeEvent_h" qtc_QDialog_resizeEvent_h :: Ptr (TQDialog a) -> Ptr (TQResizeEvent t1) -> IO ()

instance QresizeEvent (QDialogSc a) ((QResizeEvent t1)) where
 resizeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialog_resizeEvent_h cobj_x0 cobj_x1

result :: QDialog a -> (()) -> IO (Int)
result x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDialog_result cobj_x0

foreign import ccall "qtc_QDialog_result" qtc_QDialog_result :: Ptr (TQDialog a) -> IO CInt

instance QsetExtension (QDialog a) ((QWidget t1)) where
 setExtension x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialog_setExtension cobj_x0 cobj_x1

foreign import ccall "qtc_QDialog_setExtension" qtc_QDialog_setExtension :: Ptr (TQDialog a) -> Ptr (TQWidget t1) -> IO ()

setModal :: QDialog a -> ((Bool)) -> IO ()
setModal x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDialog_setModal cobj_x0 (toCBool x1)

foreign import ccall "qtc_QDialog_setModal" qtc_QDialog_setModal :: Ptr (TQDialog a) -> CBool -> IO ()

instance QsetOrientation (QDialog a) ((QtOrientation)) where
 setOrientation x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDialog_setOrientation cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QDialog_setOrientation" qtc_QDialog_setOrientation :: Ptr (TQDialog a) -> CLong -> IO ()

setResult :: QDialog a -> ((Int)) -> IO ()
setResult x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDialog_setResult cobj_x0 (toCInt x1)

foreign import ccall "qtc_QDialog_setResult" qtc_QDialog_setResult :: Ptr (TQDialog a) -> CInt -> IO ()

instance QsetSizeGripEnabled (QDialog a) ((Bool)) where
 setSizeGripEnabled x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDialog_setSizeGripEnabled cobj_x0 (toCBool x1)

foreign import ccall "qtc_QDialog_setSizeGripEnabled" qtc_QDialog_setSizeGripEnabled :: Ptr (TQDialog a) -> CBool -> IO ()

instance QsetVisible (QDialog ()) ((Bool)) where
 setVisible x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDialog_setVisible_h cobj_x0 (toCBool x1)

foreign import ccall "qtc_QDialog_setVisible_h" qtc_QDialog_setVisible_h :: Ptr (TQDialog a) -> CBool -> IO ()

instance QsetVisible (QDialogSc a) ((Bool)) where
 setVisible x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDialog_setVisible_h cobj_x0 (toCBool x1)

instance QshowEvent (QDialog ()) ((QShowEvent t1)) where
 showEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialog_showEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDialog_showEvent_h" qtc_QDialog_showEvent_h :: Ptr (TQDialog a) -> Ptr (TQShowEvent t1) -> IO ()

instance QshowEvent (QDialogSc a) ((QShowEvent t1)) where
 showEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialog_showEvent_h cobj_x0 cobj_x1

showExtension :: QDialog a -> ((Bool)) -> IO ()
showExtension x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDialog_showExtension cobj_x0 (toCBool x1)

foreign import ccall "qtc_QDialog_showExtension" qtc_QDialog_showExtension :: Ptr (TQDialog a) -> CBool -> IO ()

instance QqsizeHint (QDialog ()) (()) where
 qsizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDialog_sizeHint_h cobj_x0

foreign import ccall "qtc_QDialog_sizeHint_h" qtc_QDialog_sizeHint_h :: Ptr (TQDialog a) -> IO (Ptr (TQSize ()))

instance QqsizeHint (QDialogSc a) (()) where
 qsizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDialog_sizeHint_h cobj_x0

instance QsizeHint (QDialog ()) (()) where
 sizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDialog_sizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QDialog_sizeHint_qth_h" qtc_QDialog_sizeHint_qth_h :: Ptr (TQDialog a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QsizeHint (QDialogSc a) (()) where
 sizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDialog_sizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

qDialog_delete :: QDialog a -> IO ()
qDialog_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDialog_delete cobj_x0

foreign import ccall "qtc_QDialog_delete" qtc_QDialog_delete :: Ptr (TQDialog a) -> IO ()

qDialog_deleteLater :: QDialog a -> IO ()
qDialog_deleteLater x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDialog_deleteLater cobj_x0

foreign import ccall "qtc_QDialog_deleteLater" qtc_QDialog_deleteLater :: Ptr (TQDialog a) -> IO ()

instance QactionEvent (QDialog ()) ((QActionEvent t1)) where
 actionEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialog_actionEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDialog_actionEvent_h" qtc_QDialog_actionEvent_h :: Ptr (TQDialog a) -> Ptr (TQActionEvent t1) -> IO ()

instance QactionEvent (QDialogSc a) ((QActionEvent t1)) where
 actionEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialog_actionEvent_h cobj_x0 cobj_x1

instance QaddAction (QDialog ()) ((QAction t1)) (IO ()) where
 addAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialog_addAction cobj_x0 cobj_x1

foreign import ccall "qtc_QDialog_addAction" qtc_QDialog_addAction :: Ptr (TQDialog a) -> Ptr (TQAction t1) -> IO ()

instance QaddAction (QDialogSc a) ((QAction t1)) (IO ()) where
 addAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialog_addAction cobj_x0 cobj_x1

instance QchangeEvent (QDialog ()) ((QEvent t1)) where
 changeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialog_changeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDialog_changeEvent_h" qtc_QDialog_changeEvent_h :: Ptr (TQDialog a) -> Ptr (TQEvent t1) -> IO ()

instance QchangeEvent (QDialogSc a) ((QEvent t1)) where
 changeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialog_changeEvent_h cobj_x0 cobj_x1

instance Qcreate (QDialog ()) (()) (IO ()) where
 create x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDialog_create cobj_x0

foreign import ccall "qtc_QDialog_create" qtc_QDialog_create :: Ptr (TQDialog a) -> IO ()

instance Qcreate (QDialogSc a) (()) (IO ()) where
 create x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDialog_create cobj_x0

instance Qcreate (QDialog ()) ((QVoid t1)) (IO ()) where
 create x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialog_create1 cobj_x0 cobj_x1

foreign import ccall "qtc_QDialog_create1" qtc_QDialog_create1 :: Ptr (TQDialog a) -> Ptr (TQVoid t1) -> IO ()

instance Qcreate (QDialogSc a) ((QVoid t1)) (IO ()) where
 create x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialog_create1 cobj_x0 cobj_x1

instance Qcreate (QDialog ()) ((QVoid t1, Bool)) (IO ()) where
 create x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialog_create2 cobj_x0 cobj_x1 (toCBool x2)

foreign import ccall "qtc_QDialog_create2" qtc_QDialog_create2 :: Ptr (TQDialog a) -> Ptr (TQVoid t1) -> CBool -> IO ()

instance Qcreate (QDialogSc a) ((QVoid t1, Bool)) (IO ()) where
 create x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialog_create2 cobj_x0 cobj_x1 (toCBool x2)

instance Qcreate (QDialog ()) ((QVoid t1, Bool, Bool)) (IO ()) where
 create x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialog_create3 cobj_x0 cobj_x1 (toCBool x2) (toCBool x3)

foreign import ccall "qtc_QDialog_create3" qtc_QDialog_create3 :: Ptr (TQDialog a) -> Ptr (TQVoid t1) -> CBool -> CBool -> IO ()

instance Qcreate (QDialogSc a) ((QVoid t1, Bool, Bool)) (IO ()) where
 create x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialog_create3 cobj_x0 cobj_x1 (toCBool x2) (toCBool x3)

instance Qdestroy (QDialog ()) (()) where
 destroy x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDialog_destroy cobj_x0

foreign import ccall "qtc_QDialog_destroy" qtc_QDialog_destroy :: Ptr (TQDialog a) -> IO ()

instance Qdestroy (QDialogSc a) (()) where
 destroy x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDialog_destroy cobj_x0

instance Qdestroy (QDialog ()) ((Bool)) where
 destroy x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDialog_destroy1 cobj_x0 (toCBool x1)

foreign import ccall "qtc_QDialog_destroy1" qtc_QDialog_destroy1 :: Ptr (TQDialog a) -> CBool -> IO ()

instance Qdestroy (QDialogSc a) ((Bool)) where
 destroy x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDialog_destroy1 cobj_x0 (toCBool x1)

instance Qdestroy (QDialog ()) ((Bool, Bool)) where
 destroy x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDialog_destroy2 cobj_x0 (toCBool x1) (toCBool x2)

foreign import ccall "qtc_QDialog_destroy2" qtc_QDialog_destroy2 :: Ptr (TQDialog a) -> CBool -> CBool -> IO ()

instance Qdestroy (QDialogSc a) ((Bool, Bool)) where
 destroy x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDialog_destroy2 cobj_x0 (toCBool x1) (toCBool x2)

instance QdevType (QDialog ()) (()) where
 devType x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDialog_devType_h cobj_x0

foreign import ccall "qtc_QDialog_devType_h" qtc_QDialog_devType_h :: Ptr (TQDialog a) -> IO CInt

instance QdevType (QDialogSc a) (()) where
 devType x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDialog_devType_h cobj_x0

instance QdragEnterEvent (QDialog ()) ((QDragEnterEvent t1)) where
 dragEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialog_dragEnterEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDialog_dragEnterEvent_h" qtc_QDialog_dragEnterEvent_h :: Ptr (TQDialog a) -> Ptr (TQDragEnterEvent t1) -> IO ()

instance QdragEnterEvent (QDialogSc a) ((QDragEnterEvent t1)) where
 dragEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialog_dragEnterEvent_h cobj_x0 cobj_x1

instance QdragLeaveEvent (QDialog ()) ((QDragLeaveEvent t1)) where
 dragLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialog_dragLeaveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDialog_dragLeaveEvent_h" qtc_QDialog_dragLeaveEvent_h :: Ptr (TQDialog a) -> Ptr (TQDragLeaveEvent t1) -> IO ()

instance QdragLeaveEvent (QDialogSc a) ((QDragLeaveEvent t1)) where
 dragLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialog_dragLeaveEvent_h cobj_x0 cobj_x1

instance QdragMoveEvent (QDialog ()) ((QDragMoveEvent t1)) where
 dragMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialog_dragMoveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDialog_dragMoveEvent_h" qtc_QDialog_dragMoveEvent_h :: Ptr (TQDialog a) -> Ptr (TQDragMoveEvent t1) -> IO ()

instance QdragMoveEvent (QDialogSc a) ((QDragMoveEvent t1)) where
 dragMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialog_dragMoveEvent_h cobj_x0 cobj_x1

instance QdropEvent (QDialog ()) ((QDropEvent t1)) where
 dropEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialog_dropEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDialog_dropEvent_h" qtc_QDialog_dropEvent_h :: Ptr (TQDialog a) -> Ptr (TQDropEvent t1) -> IO ()

instance QdropEvent (QDialogSc a) ((QDropEvent t1)) where
 dropEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialog_dropEvent_h cobj_x0 cobj_x1

instance QenabledChange (QDialog ()) ((Bool)) where
 enabledChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDialog_enabledChange cobj_x0 (toCBool x1)

foreign import ccall "qtc_QDialog_enabledChange" qtc_QDialog_enabledChange :: Ptr (TQDialog a) -> CBool -> IO ()

instance QenabledChange (QDialogSc a) ((Bool)) where
 enabledChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDialog_enabledChange cobj_x0 (toCBool x1)

instance QenterEvent (QDialog ()) ((QEvent t1)) where
 enterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialog_enterEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDialog_enterEvent_h" qtc_QDialog_enterEvent_h :: Ptr (TQDialog a) -> Ptr (TQEvent t1) -> IO ()

instance QenterEvent (QDialogSc a) ((QEvent t1)) where
 enterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialog_enterEvent_h cobj_x0 cobj_x1

instance QfocusInEvent (QDialog ()) ((QFocusEvent t1)) where
 focusInEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialog_focusInEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDialog_focusInEvent_h" qtc_QDialog_focusInEvent_h :: Ptr (TQDialog a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusInEvent (QDialogSc a) ((QFocusEvent t1)) where
 focusInEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialog_focusInEvent_h cobj_x0 cobj_x1

instance QfocusNextChild (QDialog ()) (()) where
 focusNextChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDialog_focusNextChild cobj_x0

foreign import ccall "qtc_QDialog_focusNextChild" qtc_QDialog_focusNextChild :: Ptr (TQDialog a) -> IO CBool

instance QfocusNextChild (QDialogSc a) (()) where
 focusNextChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDialog_focusNextChild cobj_x0

instance QfocusNextPrevChild (QDialog ()) ((Bool)) where
 focusNextPrevChild x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDialog_focusNextPrevChild cobj_x0 (toCBool x1)

foreign import ccall "qtc_QDialog_focusNextPrevChild" qtc_QDialog_focusNextPrevChild :: Ptr (TQDialog a) -> CBool -> IO CBool

instance QfocusNextPrevChild (QDialogSc a) ((Bool)) where
 focusNextPrevChild x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDialog_focusNextPrevChild cobj_x0 (toCBool x1)

instance QfocusOutEvent (QDialog ()) ((QFocusEvent t1)) where
 focusOutEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialog_focusOutEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDialog_focusOutEvent_h" qtc_QDialog_focusOutEvent_h :: Ptr (TQDialog a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusOutEvent (QDialogSc a) ((QFocusEvent t1)) where
 focusOutEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialog_focusOutEvent_h cobj_x0 cobj_x1

instance QfocusPreviousChild (QDialog ()) (()) where
 focusPreviousChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDialog_focusPreviousChild cobj_x0

foreign import ccall "qtc_QDialog_focusPreviousChild" qtc_QDialog_focusPreviousChild :: Ptr (TQDialog a) -> IO CBool

instance QfocusPreviousChild (QDialogSc a) (()) where
 focusPreviousChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDialog_focusPreviousChild cobj_x0

instance QfontChange (QDialog ()) ((QFont t1)) where
 fontChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialog_fontChange cobj_x0 cobj_x1

foreign import ccall "qtc_QDialog_fontChange" qtc_QDialog_fontChange :: Ptr (TQDialog a) -> Ptr (TQFont t1) -> IO ()

instance QfontChange (QDialogSc a) ((QFont t1)) where
 fontChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialog_fontChange cobj_x0 cobj_x1

instance QheightForWidth (QDialog ()) ((Int)) where
 heightForWidth x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDialog_heightForWidth_h cobj_x0 (toCInt x1)

foreign import ccall "qtc_QDialog_heightForWidth_h" qtc_QDialog_heightForWidth_h :: Ptr (TQDialog a) -> CInt -> IO CInt

instance QheightForWidth (QDialogSc a) ((Int)) where
 heightForWidth x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDialog_heightForWidth_h cobj_x0 (toCInt x1)

instance QhideEvent (QDialog ()) ((QHideEvent t1)) where
 hideEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialog_hideEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDialog_hideEvent_h" qtc_QDialog_hideEvent_h :: Ptr (TQDialog a) -> Ptr (TQHideEvent t1) -> IO ()

instance QhideEvent (QDialogSc a) ((QHideEvent t1)) where
 hideEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialog_hideEvent_h cobj_x0 cobj_x1

instance QinputMethodEvent (QDialog ()) ((QInputMethodEvent t1)) where
 inputMethodEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialog_inputMethodEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QDialog_inputMethodEvent" qtc_QDialog_inputMethodEvent :: Ptr (TQDialog a) -> Ptr (TQInputMethodEvent t1) -> IO ()

instance QinputMethodEvent (QDialogSc a) ((QInputMethodEvent t1)) where
 inputMethodEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialog_inputMethodEvent cobj_x0 cobj_x1

instance QinputMethodQuery (QDialog ()) ((InputMethodQuery)) where
 inputMethodQuery x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDialog_inputMethodQuery_h cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QDialog_inputMethodQuery_h" qtc_QDialog_inputMethodQuery_h :: Ptr (TQDialog a) -> CLong -> IO (Ptr (TQVariant ()))

instance QinputMethodQuery (QDialogSc a) ((InputMethodQuery)) where
 inputMethodQuery x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDialog_inputMethodQuery_h cobj_x0 (toCLong $ qEnum_toInt x1)

instance QkeyReleaseEvent (QDialog ()) ((QKeyEvent t1)) where
 keyReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialog_keyReleaseEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDialog_keyReleaseEvent_h" qtc_QDialog_keyReleaseEvent_h :: Ptr (TQDialog a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyReleaseEvent (QDialogSc a) ((QKeyEvent t1)) where
 keyReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialog_keyReleaseEvent_h cobj_x0 cobj_x1

instance QlanguageChange (QDialog ()) (()) where
 languageChange x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDialog_languageChange cobj_x0

foreign import ccall "qtc_QDialog_languageChange" qtc_QDialog_languageChange :: Ptr (TQDialog a) -> IO ()

instance QlanguageChange (QDialogSc a) (()) where
 languageChange x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDialog_languageChange cobj_x0

instance QleaveEvent (QDialog ()) ((QEvent t1)) where
 leaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialog_leaveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDialog_leaveEvent_h" qtc_QDialog_leaveEvent_h :: Ptr (TQDialog a) -> Ptr (TQEvent t1) -> IO ()

instance QleaveEvent (QDialogSc a) ((QEvent t1)) where
 leaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialog_leaveEvent_h cobj_x0 cobj_x1

instance Qmetric (QDialog ()) ((PaintDeviceMetric)) where
 metric x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDialog_metric cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QDialog_metric" qtc_QDialog_metric :: Ptr (TQDialog a) -> CLong -> IO CInt

instance Qmetric (QDialogSc a) ((PaintDeviceMetric)) where
 metric x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDialog_metric cobj_x0 (toCLong $ qEnum_toInt x1)

instance QmouseDoubleClickEvent (QDialog ()) ((QMouseEvent t1)) where
 mouseDoubleClickEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialog_mouseDoubleClickEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDialog_mouseDoubleClickEvent_h" qtc_QDialog_mouseDoubleClickEvent_h :: Ptr (TQDialog a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseDoubleClickEvent (QDialogSc a) ((QMouseEvent t1)) where
 mouseDoubleClickEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialog_mouseDoubleClickEvent_h cobj_x0 cobj_x1

instance QmouseMoveEvent (QDialog ()) ((QMouseEvent t1)) where
 mouseMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialog_mouseMoveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDialog_mouseMoveEvent_h" qtc_QDialog_mouseMoveEvent_h :: Ptr (TQDialog a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseMoveEvent (QDialogSc a) ((QMouseEvent t1)) where
 mouseMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialog_mouseMoveEvent_h cobj_x0 cobj_x1

instance QmousePressEvent (QDialog ()) ((QMouseEvent t1)) where
 mousePressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialog_mousePressEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDialog_mousePressEvent_h" qtc_QDialog_mousePressEvent_h :: Ptr (TQDialog a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmousePressEvent (QDialogSc a) ((QMouseEvent t1)) where
 mousePressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialog_mousePressEvent_h cobj_x0 cobj_x1

instance QmouseReleaseEvent (QDialog ()) ((QMouseEvent t1)) where
 mouseReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialog_mouseReleaseEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDialog_mouseReleaseEvent_h" qtc_QDialog_mouseReleaseEvent_h :: Ptr (TQDialog a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseReleaseEvent (QDialogSc a) ((QMouseEvent t1)) where
 mouseReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialog_mouseReleaseEvent_h cobj_x0 cobj_x1

instance Qmove (QDialog ()) ((Int, Int)) where
 move x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDialog_move1 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QDialog_move1" qtc_QDialog_move1 :: Ptr (TQDialog a) -> CInt -> CInt -> IO ()

instance Qmove (QDialogSc a) ((Int, Int)) where
 move x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDialog_move1 cobj_x0 (toCInt x1) (toCInt x2)

instance Qmove (QDialog ()) ((Point)) where
 move x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QDialog_move_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

foreign import ccall "qtc_QDialog_move_qth" qtc_QDialog_move_qth :: Ptr (TQDialog a) -> CInt -> CInt -> IO ()

instance Qmove (QDialogSc a) ((Point)) where
 move x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QDialog_move_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

instance Qqmove (QDialog ()) ((QPoint t1)) where
 qmove x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialog_move cobj_x0 cobj_x1

foreign import ccall "qtc_QDialog_move" qtc_QDialog_move :: Ptr (TQDialog a) -> Ptr (TQPoint t1) -> IO ()

instance Qqmove (QDialogSc a) ((QPoint t1)) where
 qmove x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialog_move cobj_x0 cobj_x1

instance QmoveEvent (QDialog ()) ((QMoveEvent t1)) where
 moveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialog_moveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDialog_moveEvent_h" qtc_QDialog_moveEvent_h :: Ptr (TQDialog a) -> Ptr (TQMoveEvent t1) -> IO ()

instance QmoveEvent (QDialogSc a) ((QMoveEvent t1)) where
 moveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialog_moveEvent_h cobj_x0 cobj_x1

instance QpaintEngine (QDialog ()) (()) where
 paintEngine x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDialog_paintEngine_h cobj_x0

foreign import ccall "qtc_QDialog_paintEngine_h" qtc_QDialog_paintEngine_h :: Ptr (TQDialog a) -> IO (Ptr (TQPaintEngine ()))

instance QpaintEngine (QDialogSc a) (()) where
 paintEngine x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDialog_paintEngine_h cobj_x0

instance QpaintEvent (QDialog ()) ((QPaintEvent t1)) where
 paintEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialog_paintEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDialog_paintEvent_h" qtc_QDialog_paintEvent_h :: Ptr (TQDialog a) -> Ptr (TQPaintEvent t1) -> IO ()

instance QpaintEvent (QDialogSc a) ((QPaintEvent t1)) where
 paintEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialog_paintEvent_h cobj_x0 cobj_x1

instance QpaletteChange (QDialog ()) ((QPalette t1)) where
 paletteChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialog_paletteChange cobj_x0 cobj_x1

foreign import ccall "qtc_QDialog_paletteChange" qtc_QDialog_paletteChange :: Ptr (TQDialog a) -> Ptr (TQPalette t1) -> IO ()

instance QpaletteChange (QDialogSc a) ((QPalette t1)) where
 paletteChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialog_paletteChange cobj_x0 cobj_x1

instance Qrepaint (QDialog ()) (()) where
 repaint x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDialog_repaint cobj_x0

foreign import ccall "qtc_QDialog_repaint" qtc_QDialog_repaint :: Ptr (TQDialog a) -> IO ()

instance Qrepaint (QDialogSc a) (()) where
 repaint x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDialog_repaint cobj_x0

instance Qrepaint (QDialog ()) ((Int, Int, Int, Int)) where
 repaint x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDialog_repaint2 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QDialog_repaint2" qtc_QDialog_repaint2 :: Ptr (TQDialog a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance Qrepaint (QDialogSc a) ((Int, Int, Int, Int)) where
 repaint x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDialog_repaint2 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

instance Qrepaint (QDialog ()) ((QRegion t1)) where
 repaint x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialog_repaint1 cobj_x0 cobj_x1

foreign import ccall "qtc_QDialog_repaint1" qtc_QDialog_repaint1 :: Ptr (TQDialog a) -> Ptr (TQRegion t1) -> IO ()

instance Qrepaint (QDialogSc a) ((QRegion t1)) where
 repaint x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialog_repaint1 cobj_x0 cobj_x1

instance QresetInputContext (QDialog ()) (()) where
 resetInputContext x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDialog_resetInputContext cobj_x0

foreign import ccall "qtc_QDialog_resetInputContext" qtc_QDialog_resetInputContext :: Ptr (TQDialog a) -> IO ()

instance QresetInputContext (QDialogSc a) (()) where
 resetInputContext x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDialog_resetInputContext cobj_x0

instance Qresize (QDialog ()) ((Int, Int)) (IO ()) where
 resize x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDialog_resize1 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QDialog_resize1" qtc_QDialog_resize1 :: Ptr (TQDialog a) -> CInt -> CInt -> IO ()

instance Qresize (QDialogSc a) ((Int, Int)) (IO ()) where
 resize x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDialog_resize1 cobj_x0 (toCInt x1) (toCInt x2)

instance Qqresize (QDialog ()) ((QSize t1)) where
 qresize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialog_resize cobj_x0 cobj_x1

foreign import ccall "qtc_QDialog_resize" qtc_QDialog_resize :: Ptr (TQDialog a) -> Ptr (TQSize t1) -> IO ()

instance Qqresize (QDialogSc a) ((QSize t1)) where
 qresize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialog_resize cobj_x0 cobj_x1

instance Qresize (QDialog ()) ((Size)) (IO ()) where
 resize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QDialog_resize_qth cobj_x0 csize_x1_w csize_x1_h 

foreign import ccall "qtc_QDialog_resize_qth" qtc_QDialog_resize_qth :: Ptr (TQDialog a) -> CInt -> CInt -> IO ()

instance Qresize (QDialogSc a) ((Size)) (IO ()) where
 resize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QDialog_resize_qth cobj_x0 csize_x1_w csize_x1_h 

instance QsetGeometry (QDialog ()) ((Int, Int, Int, Int)) where
 setGeometry x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDialog_setGeometry1 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QDialog_setGeometry1" qtc_QDialog_setGeometry1 :: Ptr (TQDialog a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QsetGeometry (QDialogSc a) ((Int, Int, Int, Int)) where
 setGeometry x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDialog_setGeometry1 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

instance QqsetGeometry (QDialog ()) ((QRect t1)) where
 qsetGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialog_setGeometry cobj_x0 cobj_x1

foreign import ccall "qtc_QDialog_setGeometry" qtc_QDialog_setGeometry :: Ptr (TQDialog a) -> Ptr (TQRect t1) -> IO ()

instance QqsetGeometry (QDialogSc a) ((QRect t1)) where
 qsetGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialog_setGeometry cobj_x0 cobj_x1

instance QsetGeometry (QDialog ()) ((Rect)) where
 setGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QDialog_setGeometry_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

foreign import ccall "qtc_QDialog_setGeometry_qth" qtc_QDialog_setGeometry_qth :: Ptr (TQDialog a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QsetGeometry (QDialogSc a) ((Rect)) where
 setGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QDialog_setGeometry_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

instance QsetMouseTracking (QDialog ()) ((Bool)) where
 setMouseTracking x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDialog_setMouseTracking cobj_x0 (toCBool x1)

foreign import ccall "qtc_QDialog_setMouseTracking" qtc_QDialog_setMouseTracking :: Ptr (TQDialog a) -> CBool -> IO ()

instance QsetMouseTracking (QDialogSc a) ((Bool)) where
 setMouseTracking x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDialog_setMouseTracking cobj_x0 (toCBool x1)

instance QtabletEvent (QDialog ()) ((QTabletEvent t1)) where
 tabletEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialog_tabletEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDialog_tabletEvent_h" qtc_QDialog_tabletEvent_h :: Ptr (TQDialog a) -> Ptr (TQTabletEvent t1) -> IO ()

instance QtabletEvent (QDialogSc a) ((QTabletEvent t1)) where
 tabletEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialog_tabletEvent_h cobj_x0 cobj_x1

instance QupdateMicroFocus (QDialog ()) (()) where
 updateMicroFocus x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDialog_updateMicroFocus cobj_x0

foreign import ccall "qtc_QDialog_updateMicroFocus" qtc_QDialog_updateMicroFocus :: Ptr (TQDialog a) -> IO ()

instance QupdateMicroFocus (QDialogSc a) (()) where
 updateMicroFocus x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDialog_updateMicroFocus cobj_x0

instance QwheelEvent (QDialog ()) ((QWheelEvent t1)) where
 wheelEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialog_wheelEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDialog_wheelEvent_h" qtc_QDialog_wheelEvent_h :: Ptr (TQDialog a) -> Ptr (TQWheelEvent t1) -> IO ()

instance QwheelEvent (QDialogSc a) ((QWheelEvent t1)) where
 wheelEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialog_wheelEvent_h cobj_x0 cobj_x1

instance QwindowActivationChange (QDialog ()) ((Bool)) where
 windowActivationChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDialog_windowActivationChange cobj_x0 (toCBool x1)

foreign import ccall "qtc_QDialog_windowActivationChange" qtc_QDialog_windowActivationChange :: Ptr (TQDialog a) -> CBool -> IO ()

instance QwindowActivationChange (QDialogSc a) ((Bool)) where
 windowActivationChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDialog_windowActivationChange cobj_x0 (toCBool x1)

instance QchildEvent (QDialog ()) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialog_childEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QDialog_childEvent" qtc_QDialog_childEvent :: Ptr (TQDialog a) -> Ptr (TQChildEvent t1) -> IO ()

instance QchildEvent (QDialogSc a) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialog_childEvent cobj_x0 cobj_x1

instance QconnectNotify (QDialog ()) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QDialog_connectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QDialog_connectNotify" qtc_QDialog_connectNotify :: Ptr (TQDialog a) -> CWString -> IO ()

instance QconnectNotify (QDialogSc a) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QDialog_connectNotify cobj_x0 cstr_x1

instance QcustomEvent (QDialog ()) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialog_customEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QDialog_customEvent" qtc_QDialog_customEvent :: Ptr (TQDialog a) -> Ptr (TQEvent t1) -> IO ()

instance QcustomEvent (QDialogSc a) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialog_customEvent cobj_x0 cobj_x1

instance QdisconnectNotify (QDialog ()) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QDialog_disconnectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QDialog_disconnectNotify" qtc_QDialog_disconnectNotify :: Ptr (TQDialog a) -> CWString -> IO ()

instance QdisconnectNotify (QDialogSc a) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QDialog_disconnectNotify cobj_x0 cstr_x1

instance Qreceivers (QDialog ()) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QDialog_receivers cobj_x0 cstr_x1

foreign import ccall "qtc_QDialog_receivers" qtc_QDialog_receivers :: Ptr (TQDialog a) -> CWString -> IO CInt

instance Qreceivers (QDialogSc a) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QDialog_receivers cobj_x0 cstr_x1

instance Qsender (QDialog ()) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDialog_sender cobj_x0

foreign import ccall "qtc_QDialog_sender" qtc_QDialog_sender :: Ptr (TQDialog a) -> IO (Ptr (TQObject ()))

instance Qsender (QDialogSc a) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDialog_sender cobj_x0

instance QtimerEvent (QDialog ()) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialog_timerEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QDialog_timerEvent" qtc_QDialog_timerEvent :: Ptr (TQDialog a) -> Ptr (TQTimerEvent t1) -> IO ()

instance QtimerEvent (QDialogSc a) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialog_timerEvent cobj_x0 cobj_x1

