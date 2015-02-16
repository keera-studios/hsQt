{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QProgressDialog.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:25
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QProgressDialog (
  QqProgressDialog(..)
  ,autoClose
  ,autoReset
  ,cancel
  ,QforceShow(..)
  ,minimumDuration
  ,setAutoClose
  ,setAutoReset
  ,setBar
  ,setCancelButton
  ,setCancelButtonText
  ,setLabel
  ,setMinimumDuration
  ,wasCanceled
  ,qProgressDialog_delete
  ,qProgressDialog_deleteLater
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

instance QuserMethod (QProgressDialog ()) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QProgressDialog_userMethod cobj_qobj (toCInt evid)

foreign import ccall "qtc_QProgressDialog_userMethod" qtc_QProgressDialog_userMethod :: Ptr (TQProgressDialog a) -> CInt -> IO ()

instance QuserMethod (QProgressDialogSc a) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QProgressDialog_userMethod cobj_qobj (toCInt evid)

instance QuserMethod (QProgressDialog ()) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QProgressDialog_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

foreign import ccall "qtc_QProgressDialog_userMethodVariant" qtc_QProgressDialog_userMethodVariant :: Ptr (TQProgressDialog a) -> CInt -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))

instance QuserMethod (QProgressDialogSc a) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QProgressDialog_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

class QqProgressDialog x1 where
  qProgressDialog :: x1 -> IO (QProgressDialog ())

instance QqProgressDialog (()) where
 qProgressDialog ()
  = withQProgressDialogResult $
    qtc_QProgressDialog

foreign import ccall "qtc_QProgressDialog" qtc_QProgressDialog :: IO (Ptr (TQProgressDialog ()))

instance QqProgressDialog ((QWidget t1)) where
 qProgressDialog (x1)
  = withQProgressDialogResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressDialog1 cobj_x1

foreign import ccall "qtc_QProgressDialog1" qtc_QProgressDialog1 :: Ptr (TQWidget t1) -> IO (Ptr (TQProgressDialog ()))

instance QqProgressDialog ((QWidget t1, WindowFlags)) where
 qProgressDialog (x1, x2)
  = withQProgressDialogResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressDialog2 cobj_x1 (toCLong $ qFlags_toInt x2)

foreign import ccall "qtc_QProgressDialog2" qtc_QProgressDialog2 :: Ptr (TQWidget t1) -> CLong -> IO (Ptr (TQProgressDialog ()))

instance QqProgressDialog ((String, String, Int, Int)) where
 qProgressDialog (x1, x2, x3, x4)
  = withQProgressDialogResult $
    withCWString x1 $ \cstr_x1 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QProgressDialog3 cstr_x1 cstr_x2 (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QProgressDialog3" qtc_QProgressDialog3 :: CWString -> CWString -> CInt -> CInt -> IO (Ptr (TQProgressDialog ()))

instance QqProgressDialog ((String, String, Int, Int, QWidget t5)) where
 qProgressDialog (x1, x2, x3, x4, x5)
  = withQProgressDialogResult $
    withCWString x1 $ \cstr_x1 ->
    withCWString x2 $ \cstr_x2 ->
    withObjectPtr x5 $ \cobj_x5 ->
    qtc_QProgressDialog4 cstr_x1 cstr_x2 (toCInt x3) (toCInt x4) cobj_x5

foreign import ccall "qtc_QProgressDialog4" qtc_QProgressDialog4 :: CWString -> CWString -> CInt -> CInt -> Ptr (TQWidget t5) -> IO (Ptr (TQProgressDialog ()))

instance QqProgressDialog ((String, String, Int, Int, QWidget t5, WindowFlags)) where
 qProgressDialog (x1, x2, x3, x4, x5, x6)
  = withQProgressDialogResult $
    withCWString x1 $ \cstr_x1 ->
    withCWString x2 $ \cstr_x2 ->
    withObjectPtr x5 $ \cobj_x5 ->
    qtc_QProgressDialog5 cstr_x1 cstr_x2 (toCInt x3) (toCInt x4) cobj_x5 (toCLong $ qFlags_toInt x6)

foreign import ccall "qtc_QProgressDialog5" qtc_QProgressDialog5 :: CWString -> CWString -> CInt -> CInt -> Ptr (TQWidget t5) -> CLong -> IO (Ptr (TQProgressDialog ()))

autoClose :: QProgressDialog a -> (()) -> IO (Bool)
autoClose x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QProgressDialog_autoClose cobj_x0

foreign import ccall "qtc_QProgressDialog_autoClose" qtc_QProgressDialog_autoClose :: Ptr (TQProgressDialog a) -> IO CBool

autoReset :: QProgressDialog a -> (()) -> IO (Bool)
autoReset x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QProgressDialog_autoReset cobj_x0

foreign import ccall "qtc_QProgressDialog_autoReset" qtc_QProgressDialog_autoReset :: Ptr (TQProgressDialog a) -> IO CBool

cancel :: QProgressDialog a -> (()) -> IO ()
cancel x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QProgressDialog_cancel cobj_x0

foreign import ccall "qtc_QProgressDialog_cancel" qtc_QProgressDialog_cancel :: Ptr (TQProgressDialog a) -> IO ()

instance QchangeEvent (QProgressDialog ()) ((QEvent t1)) where
 changeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressDialog_changeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QProgressDialog_changeEvent_h" qtc_QProgressDialog_changeEvent_h :: Ptr (TQProgressDialog a) -> Ptr (TQEvent t1) -> IO ()

instance QchangeEvent (QProgressDialogSc a) ((QEvent t1)) where
 changeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressDialog_changeEvent_h cobj_x0 cobj_x1

instance QcloseEvent (QProgressDialog ()) ((QCloseEvent t1)) where
 closeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressDialog_closeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QProgressDialog_closeEvent_h" qtc_QProgressDialog_closeEvent_h :: Ptr (TQProgressDialog a) -> Ptr (TQCloseEvent t1) -> IO ()

instance QcloseEvent (QProgressDialogSc a) ((QCloseEvent t1)) where
 closeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressDialog_closeEvent_h cobj_x0 cobj_x1

class QforceShow x0 x1 where
 forceShow :: x0 -> x1 -> IO ()

instance QforceShow (QProgressDialog ()) (()) where
 forceShow x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QProgressDialog_forceShow cobj_x0

foreign import ccall "qtc_QProgressDialog_forceShow" qtc_QProgressDialog_forceShow :: Ptr (TQProgressDialog a) -> IO ()

instance QforceShow (QProgressDialogSc a) (()) where
 forceShow x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QProgressDialog_forceShow cobj_x0

instance QlabelText (QProgressDialog a) (()) where
 labelText x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QProgressDialog_labelText cobj_x0

foreign import ccall "qtc_QProgressDialog_labelText" qtc_QProgressDialog_labelText :: Ptr (TQProgressDialog a) -> IO (Ptr (TQString ()))

instance Qqmaximum (QProgressDialog a) (()) (IO (Int)) where
 qmaximum x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QProgressDialog_maximum cobj_x0

foreign import ccall "qtc_QProgressDialog_maximum" qtc_QProgressDialog_maximum :: Ptr (TQProgressDialog a) -> IO CInt

instance Qqminimum (QProgressDialog a) (()) (IO (Int)) where
 qminimum x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QProgressDialog_minimum cobj_x0

foreign import ccall "qtc_QProgressDialog_minimum" qtc_QProgressDialog_minimum :: Ptr (TQProgressDialog a) -> IO CInt

minimumDuration :: QProgressDialog a -> (()) -> IO (Int)
minimumDuration x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QProgressDialog_minimumDuration cobj_x0

foreign import ccall "qtc_QProgressDialog_minimumDuration" qtc_QProgressDialog_minimumDuration :: Ptr (TQProgressDialog a) -> IO CInt

instance Qreset (QProgressDialog a) (()) (IO ()) where
 reset x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QProgressDialog_reset cobj_x0

foreign import ccall "qtc_QProgressDialog_reset" qtc_QProgressDialog_reset :: Ptr (TQProgressDialog a) -> IO ()

instance QresizeEvent (QProgressDialog ()) ((QResizeEvent t1)) where
 resizeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressDialog_resizeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QProgressDialog_resizeEvent_h" qtc_QProgressDialog_resizeEvent_h :: Ptr (TQProgressDialog a) -> Ptr (TQResizeEvent t1) -> IO ()

instance QresizeEvent (QProgressDialogSc a) ((QResizeEvent t1)) where
 resizeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressDialog_resizeEvent_h cobj_x0 cobj_x1

setAutoClose :: QProgressDialog a -> ((Bool)) -> IO ()
setAutoClose x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QProgressDialog_setAutoClose cobj_x0 (toCBool x1)

foreign import ccall "qtc_QProgressDialog_setAutoClose" qtc_QProgressDialog_setAutoClose :: Ptr (TQProgressDialog a) -> CBool -> IO ()

setAutoReset :: QProgressDialog a -> ((Bool)) -> IO ()
setAutoReset x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QProgressDialog_setAutoReset cobj_x0 (toCBool x1)

foreign import ccall "qtc_QProgressDialog_setAutoReset" qtc_QProgressDialog_setAutoReset :: Ptr (TQProgressDialog a) -> CBool -> IO ()

setBar :: QProgressDialog a -> ((QProgressBar t1)) -> IO ()
setBar x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressDialog_setBar cobj_x0 cobj_x1

foreign import ccall "qtc_QProgressDialog_setBar" qtc_QProgressDialog_setBar :: Ptr (TQProgressDialog a) -> Ptr (TQProgressBar t1) -> IO ()

setCancelButton :: QProgressDialog a -> ((QPushButton t1)) -> IO ()
setCancelButton x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressDialog_setCancelButton cobj_x0 cobj_x1

foreign import ccall "qtc_QProgressDialog_setCancelButton" qtc_QProgressDialog_setCancelButton :: Ptr (TQProgressDialog a) -> Ptr (TQPushButton t1) -> IO ()

setCancelButtonText :: QProgressDialog a -> ((String)) -> IO ()
setCancelButtonText x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QProgressDialog_setCancelButtonText cobj_x0 cstr_x1

foreign import ccall "qtc_QProgressDialog_setCancelButtonText" qtc_QProgressDialog_setCancelButtonText :: Ptr (TQProgressDialog a) -> CWString -> IO ()

setLabel :: QProgressDialog a -> ((QLabel t1)) -> IO ()
setLabel x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressDialog_setLabel cobj_x0 cobj_x1

foreign import ccall "qtc_QProgressDialog_setLabel" qtc_QProgressDialog_setLabel :: Ptr (TQProgressDialog a) -> Ptr (TQLabel t1) -> IO ()

instance QsetLabelText (QProgressDialog a) ((String)) where
 setLabelText x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QProgressDialog_setLabelText cobj_x0 cstr_x1

foreign import ccall "qtc_QProgressDialog_setLabelText" qtc_QProgressDialog_setLabelText :: Ptr (TQProgressDialog a) -> CWString -> IO ()

instance QsetMaximum (QProgressDialog a) ((Int)) where
 setMaximum x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QProgressDialog_setMaximum cobj_x0 (toCInt x1)

foreign import ccall "qtc_QProgressDialog_setMaximum" qtc_QProgressDialog_setMaximum :: Ptr (TQProgressDialog a) -> CInt -> IO ()

instance QsetMinimum (QProgressDialog a) ((Int)) where
 setMinimum x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QProgressDialog_setMinimum cobj_x0 (toCInt x1)

foreign import ccall "qtc_QProgressDialog_setMinimum" qtc_QProgressDialog_setMinimum :: Ptr (TQProgressDialog a) -> CInt -> IO ()

setMinimumDuration :: QProgressDialog a -> ((Int)) -> IO ()
setMinimumDuration x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QProgressDialog_setMinimumDuration cobj_x0 (toCInt x1)

foreign import ccall "qtc_QProgressDialog_setMinimumDuration" qtc_QProgressDialog_setMinimumDuration :: Ptr (TQProgressDialog a) -> CInt -> IO ()

instance QsetRange (QProgressDialog a) ((Int, Int)) where
 setRange x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QProgressDialog_setRange cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QProgressDialog_setRange" qtc_QProgressDialog_setRange :: Ptr (TQProgressDialog a) -> CInt -> CInt -> IO ()

instance QsetValue (QProgressDialog a) ((Int)) where
 setValue x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QProgressDialog_setValue cobj_x0 (toCInt x1)

foreign import ccall "qtc_QProgressDialog_setValue" qtc_QProgressDialog_setValue :: Ptr (TQProgressDialog a) -> CInt -> IO ()

instance QsetWindowModality (QProgressDialog a) ((WindowModality)) where
 setWindowModality x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_setWindowModality cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QWidget_setWindowModality" qtc_QWidget_setWindowModality :: Ptr (TQWidget a) -> CLong -> IO ()

instance QshowEvent (QProgressDialog ()) ((QShowEvent t1)) where
 showEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressDialog_showEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QProgressDialog_showEvent_h" qtc_QProgressDialog_showEvent_h :: Ptr (TQProgressDialog a) -> Ptr (TQShowEvent t1) -> IO ()

instance QshowEvent (QProgressDialogSc a) ((QShowEvent t1)) where
 showEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressDialog_showEvent_h cobj_x0 cobj_x1

instance QqsizeHint (QProgressDialog ()) (()) where
 qsizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QProgressDialog_sizeHint_h cobj_x0

foreign import ccall "qtc_QProgressDialog_sizeHint_h" qtc_QProgressDialog_sizeHint_h :: Ptr (TQProgressDialog a) -> IO (Ptr (TQSize ()))

instance QqsizeHint (QProgressDialogSc a) (()) where
 qsizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QProgressDialog_sizeHint_h cobj_x0

instance QsizeHint (QProgressDialog ()) (()) where
 sizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QProgressDialog_sizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QProgressDialog_sizeHint_qth_h" qtc_QProgressDialog_sizeHint_qth_h :: Ptr (TQProgressDialog a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QsizeHint (QProgressDialogSc a) (()) where
 sizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QProgressDialog_sizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

instance Qvalue (QProgressDialog a) (()) (IO (Int)) where
 value x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QProgressDialog_value cobj_x0

foreign import ccall "qtc_QProgressDialog_value" qtc_QProgressDialog_value :: Ptr (TQProgressDialog a) -> IO CInt

wasCanceled :: QProgressDialog a -> (()) -> IO (Bool)
wasCanceled x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QProgressDialog_wasCanceled cobj_x0

foreign import ccall "qtc_QProgressDialog_wasCanceled" qtc_QProgressDialog_wasCanceled :: Ptr (TQProgressDialog a) -> IO CBool

qProgressDialog_delete :: QProgressDialog a -> IO ()
qProgressDialog_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QProgressDialog_delete cobj_x0

foreign import ccall "qtc_QProgressDialog_delete" qtc_QProgressDialog_delete :: Ptr (TQProgressDialog a) -> IO ()

qProgressDialog_deleteLater :: QProgressDialog a -> IO ()
qProgressDialog_deleteLater x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QProgressDialog_deleteLater cobj_x0

foreign import ccall "qtc_QProgressDialog_deleteLater" qtc_QProgressDialog_deleteLater :: Ptr (TQProgressDialog a) -> IO ()

instance Qaccept (QProgressDialog ()) (()) where
 accept x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QProgressDialog_accept_h cobj_x0

foreign import ccall "qtc_QProgressDialog_accept_h" qtc_QProgressDialog_accept_h :: Ptr (TQProgressDialog a) -> IO ()

instance Qaccept (QProgressDialogSc a) (()) where
 accept x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QProgressDialog_accept_h cobj_x0

instance QadjustPosition (QProgressDialog ()) ((QWidget t1)) where
 adjustPosition x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressDialog_adjustPosition cobj_x0 cobj_x1

foreign import ccall "qtc_QProgressDialog_adjustPosition" qtc_QProgressDialog_adjustPosition :: Ptr (TQProgressDialog a) -> Ptr (TQWidget t1) -> IO ()

instance QadjustPosition (QProgressDialogSc a) ((QWidget t1)) where
 adjustPosition x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressDialog_adjustPosition cobj_x0 cobj_x1

instance QcontextMenuEvent (QProgressDialog ()) ((QContextMenuEvent t1)) where
 contextMenuEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressDialog_contextMenuEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QProgressDialog_contextMenuEvent_h" qtc_QProgressDialog_contextMenuEvent_h :: Ptr (TQProgressDialog a) -> Ptr (TQContextMenuEvent t1) -> IO ()

instance QcontextMenuEvent (QProgressDialogSc a) ((QContextMenuEvent t1)) where
 contextMenuEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressDialog_contextMenuEvent_h cobj_x0 cobj_x1

instance Qdone (QProgressDialog ()) ((Int)) where
 done x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QProgressDialog_done_h cobj_x0 (toCInt x1)

foreign import ccall "qtc_QProgressDialog_done_h" qtc_QProgressDialog_done_h :: Ptr (TQProgressDialog a) -> CInt -> IO ()

instance Qdone (QProgressDialogSc a) ((Int)) where
 done x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QProgressDialog_done_h cobj_x0 (toCInt x1)

instance Qevent (QProgressDialog ()) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressDialog_event_h cobj_x0 cobj_x1

foreign import ccall "qtc_QProgressDialog_event_h" qtc_QProgressDialog_event_h :: Ptr (TQProgressDialog a) -> Ptr (TQEvent t1) -> IO CBool

instance Qevent (QProgressDialogSc a) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressDialog_event_h cobj_x0 cobj_x1

instance QeventFilter (QProgressDialog ()) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QProgressDialog_eventFilter cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QProgressDialog_eventFilter" qtc_QProgressDialog_eventFilter :: Ptr (TQProgressDialog a) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO CBool

instance QeventFilter (QProgressDialogSc a) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QProgressDialog_eventFilter cobj_x0 cobj_x1 cobj_x2

instance QkeyPressEvent (QProgressDialog ()) ((QKeyEvent t1)) where
 keyPressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressDialog_keyPressEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QProgressDialog_keyPressEvent_h" qtc_QProgressDialog_keyPressEvent_h :: Ptr (TQProgressDialog a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyPressEvent (QProgressDialogSc a) ((QKeyEvent t1)) where
 keyPressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressDialog_keyPressEvent_h cobj_x0 cobj_x1

instance QqminimumSizeHint (QProgressDialog ()) (()) where
 qminimumSizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QProgressDialog_minimumSizeHint_h cobj_x0

foreign import ccall "qtc_QProgressDialog_minimumSizeHint_h" qtc_QProgressDialog_minimumSizeHint_h :: Ptr (TQProgressDialog a) -> IO (Ptr (TQSize ()))

instance QqminimumSizeHint (QProgressDialogSc a) (()) where
 qminimumSizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QProgressDialog_minimumSizeHint_h cobj_x0

instance QminimumSizeHint (QProgressDialog ()) (()) where
 minimumSizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QProgressDialog_minimumSizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QProgressDialog_minimumSizeHint_qth_h" qtc_QProgressDialog_minimumSizeHint_qth_h :: Ptr (TQProgressDialog a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QminimumSizeHint (QProgressDialogSc a) (()) where
 minimumSizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QProgressDialog_minimumSizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

instance Qreject (QProgressDialog ()) (()) where
 reject x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QProgressDialog_reject_h cobj_x0

foreign import ccall "qtc_QProgressDialog_reject_h" qtc_QProgressDialog_reject_h :: Ptr (TQProgressDialog a) -> IO ()

instance Qreject (QProgressDialogSc a) (()) where
 reject x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QProgressDialog_reject_h cobj_x0

instance QsetVisible (QProgressDialog ()) ((Bool)) where
 setVisible x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QProgressDialog_setVisible_h cobj_x0 (toCBool x1)

foreign import ccall "qtc_QProgressDialog_setVisible_h" qtc_QProgressDialog_setVisible_h :: Ptr (TQProgressDialog a) -> CBool -> IO ()

instance QsetVisible (QProgressDialogSc a) ((Bool)) where
 setVisible x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QProgressDialog_setVisible_h cobj_x0 (toCBool x1)

instance QactionEvent (QProgressDialog ()) ((QActionEvent t1)) where
 actionEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressDialog_actionEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QProgressDialog_actionEvent_h" qtc_QProgressDialog_actionEvent_h :: Ptr (TQProgressDialog a) -> Ptr (TQActionEvent t1) -> IO ()

instance QactionEvent (QProgressDialogSc a) ((QActionEvent t1)) where
 actionEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressDialog_actionEvent_h cobj_x0 cobj_x1

instance QaddAction (QProgressDialog ()) ((QAction t1)) (IO ()) where
 addAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressDialog_addAction cobj_x0 cobj_x1

foreign import ccall "qtc_QProgressDialog_addAction" qtc_QProgressDialog_addAction :: Ptr (TQProgressDialog a) -> Ptr (TQAction t1) -> IO ()

instance QaddAction (QProgressDialogSc a) ((QAction t1)) (IO ()) where
 addAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressDialog_addAction cobj_x0 cobj_x1

instance Qcreate (QProgressDialog ()) (()) (IO ()) where
 create x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QProgressDialog_create cobj_x0

foreign import ccall "qtc_QProgressDialog_create" qtc_QProgressDialog_create :: Ptr (TQProgressDialog a) -> IO ()

instance Qcreate (QProgressDialogSc a) (()) (IO ()) where
 create x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QProgressDialog_create cobj_x0

instance Qcreate (QProgressDialog ()) ((QVoid t1)) (IO ()) where
 create x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressDialog_create1 cobj_x0 cobj_x1

foreign import ccall "qtc_QProgressDialog_create1" qtc_QProgressDialog_create1 :: Ptr (TQProgressDialog a) -> Ptr (TQVoid t1) -> IO ()

instance Qcreate (QProgressDialogSc a) ((QVoid t1)) (IO ()) where
 create x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressDialog_create1 cobj_x0 cobj_x1

instance Qcreate (QProgressDialog ()) ((QVoid t1, Bool)) (IO ()) where
 create x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressDialog_create2 cobj_x0 cobj_x1 (toCBool x2)

foreign import ccall "qtc_QProgressDialog_create2" qtc_QProgressDialog_create2 :: Ptr (TQProgressDialog a) -> Ptr (TQVoid t1) -> CBool -> IO ()

instance Qcreate (QProgressDialogSc a) ((QVoid t1, Bool)) (IO ()) where
 create x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressDialog_create2 cobj_x0 cobj_x1 (toCBool x2)

instance Qcreate (QProgressDialog ()) ((QVoid t1, Bool, Bool)) (IO ()) where
 create x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressDialog_create3 cobj_x0 cobj_x1 (toCBool x2) (toCBool x3)

foreign import ccall "qtc_QProgressDialog_create3" qtc_QProgressDialog_create3 :: Ptr (TQProgressDialog a) -> Ptr (TQVoid t1) -> CBool -> CBool -> IO ()

instance Qcreate (QProgressDialogSc a) ((QVoid t1, Bool, Bool)) (IO ()) where
 create x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressDialog_create3 cobj_x0 cobj_x1 (toCBool x2) (toCBool x3)

instance Qdestroy (QProgressDialog ()) (()) where
 destroy x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QProgressDialog_destroy cobj_x0

foreign import ccall "qtc_QProgressDialog_destroy" qtc_QProgressDialog_destroy :: Ptr (TQProgressDialog a) -> IO ()

instance Qdestroy (QProgressDialogSc a) (()) where
 destroy x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QProgressDialog_destroy cobj_x0

instance Qdestroy (QProgressDialog ()) ((Bool)) where
 destroy x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QProgressDialog_destroy1 cobj_x0 (toCBool x1)

foreign import ccall "qtc_QProgressDialog_destroy1" qtc_QProgressDialog_destroy1 :: Ptr (TQProgressDialog a) -> CBool -> IO ()

instance Qdestroy (QProgressDialogSc a) ((Bool)) where
 destroy x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QProgressDialog_destroy1 cobj_x0 (toCBool x1)

instance Qdestroy (QProgressDialog ()) ((Bool, Bool)) where
 destroy x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QProgressDialog_destroy2 cobj_x0 (toCBool x1) (toCBool x2)

foreign import ccall "qtc_QProgressDialog_destroy2" qtc_QProgressDialog_destroy2 :: Ptr (TQProgressDialog a) -> CBool -> CBool -> IO ()

instance Qdestroy (QProgressDialogSc a) ((Bool, Bool)) where
 destroy x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QProgressDialog_destroy2 cobj_x0 (toCBool x1) (toCBool x2)

instance QdevType (QProgressDialog ()) (()) where
 devType x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QProgressDialog_devType_h cobj_x0

foreign import ccall "qtc_QProgressDialog_devType_h" qtc_QProgressDialog_devType_h :: Ptr (TQProgressDialog a) -> IO CInt

instance QdevType (QProgressDialogSc a) (()) where
 devType x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QProgressDialog_devType_h cobj_x0

instance QdragEnterEvent (QProgressDialog ()) ((QDragEnterEvent t1)) where
 dragEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressDialog_dragEnterEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QProgressDialog_dragEnterEvent_h" qtc_QProgressDialog_dragEnterEvent_h :: Ptr (TQProgressDialog a) -> Ptr (TQDragEnterEvent t1) -> IO ()

instance QdragEnterEvent (QProgressDialogSc a) ((QDragEnterEvent t1)) where
 dragEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressDialog_dragEnterEvent_h cobj_x0 cobj_x1

instance QdragLeaveEvent (QProgressDialog ()) ((QDragLeaveEvent t1)) where
 dragLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressDialog_dragLeaveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QProgressDialog_dragLeaveEvent_h" qtc_QProgressDialog_dragLeaveEvent_h :: Ptr (TQProgressDialog a) -> Ptr (TQDragLeaveEvent t1) -> IO ()

instance QdragLeaveEvent (QProgressDialogSc a) ((QDragLeaveEvent t1)) where
 dragLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressDialog_dragLeaveEvent_h cobj_x0 cobj_x1

instance QdragMoveEvent (QProgressDialog ()) ((QDragMoveEvent t1)) where
 dragMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressDialog_dragMoveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QProgressDialog_dragMoveEvent_h" qtc_QProgressDialog_dragMoveEvent_h :: Ptr (TQProgressDialog a) -> Ptr (TQDragMoveEvent t1) -> IO ()

instance QdragMoveEvent (QProgressDialogSc a) ((QDragMoveEvent t1)) where
 dragMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressDialog_dragMoveEvent_h cobj_x0 cobj_x1

instance QdropEvent (QProgressDialog ()) ((QDropEvent t1)) where
 dropEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressDialog_dropEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QProgressDialog_dropEvent_h" qtc_QProgressDialog_dropEvent_h :: Ptr (TQProgressDialog a) -> Ptr (TQDropEvent t1) -> IO ()

instance QdropEvent (QProgressDialogSc a) ((QDropEvent t1)) where
 dropEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressDialog_dropEvent_h cobj_x0 cobj_x1

instance QenabledChange (QProgressDialog ()) ((Bool)) where
 enabledChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QProgressDialog_enabledChange cobj_x0 (toCBool x1)

foreign import ccall "qtc_QProgressDialog_enabledChange" qtc_QProgressDialog_enabledChange :: Ptr (TQProgressDialog a) -> CBool -> IO ()

instance QenabledChange (QProgressDialogSc a) ((Bool)) where
 enabledChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QProgressDialog_enabledChange cobj_x0 (toCBool x1)

instance QenterEvent (QProgressDialog ()) ((QEvent t1)) where
 enterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressDialog_enterEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QProgressDialog_enterEvent_h" qtc_QProgressDialog_enterEvent_h :: Ptr (TQProgressDialog a) -> Ptr (TQEvent t1) -> IO ()

instance QenterEvent (QProgressDialogSc a) ((QEvent t1)) where
 enterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressDialog_enterEvent_h cobj_x0 cobj_x1

instance QfocusInEvent (QProgressDialog ()) ((QFocusEvent t1)) where
 focusInEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressDialog_focusInEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QProgressDialog_focusInEvent_h" qtc_QProgressDialog_focusInEvent_h :: Ptr (TQProgressDialog a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusInEvent (QProgressDialogSc a) ((QFocusEvent t1)) where
 focusInEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressDialog_focusInEvent_h cobj_x0 cobj_x1

instance QfocusNextChild (QProgressDialog ()) (()) where
 focusNextChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QProgressDialog_focusNextChild cobj_x0

foreign import ccall "qtc_QProgressDialog_focusNextChild" qtc_QProgressDialog_focusNextChild :: Ptr (TQProgressDialog a) -> IO CBool

instance QfocusNextChild (QProgressDialogSc a) (()) where
 focusNextChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QProgressDialog_focusNextChild cobj_x0

instance QfocusNextPrevChild (QProgressDialog ()) ((Bool)) where
 focusNextPrevChild x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QProgressDialog_focusNextPrevChild cobj_x0 (toCBool x1)

foreign import ccall "qtc_QProgressDialog_focusNextPrevChild" qtc_QProgressDialog_focusNextPrevChild :: Ptr (TQProgressDialog a) -> CBool -> IO CBool

instance QfocusNextPrevChild (QProgressDialogSc a) ((Bool)) where
 focusNextPrevChild x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QProgressDialog_focusNextPrevChild cobj_x0 (toCBool x1)

instance QfocusOutEvent (QProgressDialog ()) ((QFocusEvent t1)) where
 focusOutEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressDialog_focusOutEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QProgressDialog_focusOutEvent_h" qtc_QProgressDialog_focusOutEvent_h :: Ptr (TQProgressDialog a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusOutEvent (QProgressDialogSc a) ((QFocusEvent t1)) where
 focusOutEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressDialog_focusOutEvent_h cobj_x0 cobj_x1

instance QfocusPreviousChild (QProgressDialog ()) (()) where
 focusPreviousChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QProgressDialog_focusPreviousChild cobj_x0

foreign import ccall "qtc_QProgressDialog_focusPreviousChild" qtc_QProgressDialog_focusPreviousChild :: Ptr (TQProgressDialog a) -> IO CBool

instance QfocusPreviousChild (QProgressDialogSc a) (()) where
 focusPreviousChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QProgressDialog_focusPreviousChild cobj_x0

instance QfontChange (QProgressDialog ()) ((QFont t1)) where
 fontChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressDialog_fontChange cobj_x0 cobj_x1

foreign import ccall "qtc_QProgressDialog_fontChange" qtc_QProgressDialog_fontChange :: Ptr (TQProgressDialog a) -> Ptr (TQFont t1) -> IO ()

instance QfontChange (QProgressDialogSc a) ((QFont t1)) where
 fontChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressDialog_fontChange cobj_x0 cobj_x1

instance QheightForWidth (QProgressDialog ()) ((Int)) where
 heightForWidth x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QProgressDialog_heightForWidth_h cobj_x0 (toCInt x1)

foreign import ccall "qtc_QProgressDialog_heightForWidth_h" qtc_QProgressDialog_heightForWidth_h :: Ptr (TQProgressDialog a) -> CInt -> IO CInt

instance QheightForWidth (QProgressDialogSc a) ((Int)) where
 heightForWidth x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QProgressDialog_heightForWidth_h cobj_x0 (toCInt x1)

instance QhideEvent (QProgressDialog ()) ((QHideEvent t1)) where
 hideEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressDialog_hideEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QProgressDialog_hideEvent_h" qtc_QProgressDialog_hideEvent_h :: Ptr (TQProgressDialog a) -> Ptr (TQHideEvent t1) -> IO ()

instance QhideEvent (QProgressDialogSc a) ((QHideEvent t1)) where
 hideEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressDialog_hideEvent_h cobj_x0 cobj_x1

instance QinputMethodEvent (QProgressDialog ()) ((QInputMethodEvent t1)) where
 inputMethodEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressDialog_inputMethodEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QProgressDialog_inputMethodEvent" qtc_QProgressDialog_inputMethodEvent :: Ptr (TQProgressDialog a) -> Ptr (TQInputMethodEvent t1) -> IO ()

instance QinputMethodEvent (QProgressDialogSc a) ((QInputMethodEvent t1)) where
 inputMethodEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressDialog_inputMethodEvent cobj_x0 cobj_x1

instance QinputMethodQuery (QProgressDialog ()) ((InputMethodQuery)) where
 inputMethodQuery x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QProgressDialog_inputMethodQuery_h cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QProgressDialog_inputMethodQuery_h" qtc_QProgressDialog_inputMethodQuery_h :: Ptr (TQProgressDialog a) -> CLong -> IO (Ptr (TQVariant ()))

instance QinputMethodQuery (QProgressDialogSc a) ((InputMethodQuery)) where
 inputMethodQuery x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QProgressDialog_inputMethodQuery_h cobj_x0 (toCLong $ qEnum_toInt x1)

instance QkeyReleaseEvent (QProgressDialog ()) ((QKeyEvent t1)) where
 keyReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressDialog_keyReleaseEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QProgressDialog_keyReleaseEvent_h" qtc_QProgressDialog_keyReleaseEvent_h :: Ptr (TQProgressDialog a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyReleaseEvent (QProgressDialogSc a) ((QKeyEvent t1)) where
 keyReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressDialog_keyReleaseEvent_h cobj_x0 cobj_x1

instance QlanguageChange (QProgressDialog ()) (()) where
 languageChange x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QProgressDialog_languageChange cobj_x0

foreign import ccall "qtc_QProgressDialog_languageChange" qtc_QProgressDialog_languageChange :: Ptr (TQProgressDialog a) -> IO ()

instance QlanguageChange (QProgressDialogSc a) (()) where
 languageChange x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QProgressDialog_languageChange cobj_x0

instance QleaveEvent (QProgressDialog ()) ((QEvent t1)) where
 leaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressDialog_leaveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QProgressDialog_leaveEvent_h" qtc_QProgressDialog_leaveEvent_h :: Ptr (TQProgressDialog a) -> Ptr (TQEvent t1) -> IO ()

instance QleaveEvent (QProgressDialogSc a) ((QEvent t1)) where
 leaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressDialog_leaveEvent_h cobj_x0 cobj_x1

instance Qmetric (QProgressDialog ()) ((PaintDeviceMetric)) where
 metric x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QProgressDialog_metric cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QProgressDialog_metric" qtc_QProgressDialog_metric :: Ptr (TQProgressDialog a) -> CLong -> IO CInt

instance Qmetric (QProgressDialogSc a) ((PaintDeviceMetric)) where
 metric x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QProgressDialog_metric cobj_x0 (toCLong $ qEnum_toInt x1)

instance QmouseDoubleClickEvent (QProgressDialog ()) ((QMouseEvent t1)) where
 mouseDoubleClickEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressDialog_mouseDoubleClickEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QProgressDialog_mouseDoubleClickEvent_h" qtc_QProgressDialog_mouseDoubleClickEvent_h :: Ptr (TQProgressDialog a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseDoubleClickEvent (QProgressDialogSc a) ((QMouseEvent t1)) where
 mouseDoubleClickEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressDialog_mouseDoubleClickEvent_h cobj_x0 cobj_x1

instance QmouseMoveEvent (QProgressDialog ()) ((QMouseEvent t1)) where
 mouseMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressDialog_mouseMoveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QProgressDialog_mouseMoveEvent_h" qtc_QProgressDialog_mouseMoveEvent_h :: Ptr (TQProgressDialog a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseMoveEvent (QProgressDialogSc a) ((QMouseEvent t1)) where
 mouseMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressDialog_mouseMoveEvent_h cobj_x0 cobj_x1

instance QmousePressEvent (QProgressDialog ()) ((QMouseEvent t1)) where
 mousePressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressDialog_mousePressEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QProgressDialog_mousePressEvent_h" qtc_QProgressDialog_mousePressEvent_h :: Ptr (TQProgressDialog a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmousePressEvent (QProgressDialogSc a) ((QMouseEvent t1)) where
 mousePressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressDialog_mousePressEvent_h cobj_x0 cobj_x1

instance QmouseReleaseEvent (QProgressDialog ()) ((QMouseEvent t1)) where
 mouseReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressDialog_mouseReleaseEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QProgressDialog_mouseReleaseEvent_h" qtc_QProgressDialog_mouseReleaseEvent_h :: Ptr (TQProgressDialog a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseReleaseEvent (QProgressDialogSc a) ((QMouseEvent t1)) where
 mouseReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressDialog_mouseReleaseEvent_h cobj_x0 cobj_x1

instance Qmove (QProgressDialog ()) ((Int, Int)) where
 move x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QProgressDialog_move1 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QProgressDialog_move1" qtc_QProgressDialog_move1 :: Ptr (TQProgressDialog a) -> CInt -> CInt -> IO ()

instance Qmove (QProgressDialogSc a) ((Int, Int)) where
 move x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QProgressDialog_move1 cobj_x0 (toCInt x1) (toCInt x2)

instance Qmove (QProgressDialog ()) ((Point)) where
 move x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QProgressDialog_move_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

foreign import ccall "qtc_QProgressDialog_move_qth" qtc_QProgressDialog_move_qth :: Ptr (TQProgressDialog a) -> CInt -> CInt -> IO ()

instance Qmove (QProgressDialogSc a) ((Point)) where
 move x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QProgressDialog_move_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

instance Qqmove (QProgressDialog ()) ((QPoint t1)) where
 qmove x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressDialog_move cobj_x0 cobj_x1

foreign import ccall "qtc_QProgressDialog_move" qtc_QProgressDialog_move :: Ptr (TQProgressDialog a) -> Ptr (TQPoint t1) -> IO ()

instance Qqmove (QProgressDialogSc a) ((QPoint t1)) where
 qmove x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressDialog_move cobj_x0 cobj_x1

instance QmoveEvent (QProgressDialog ()) ((QMoveEvent t1)) where
 moveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressDialog_moveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QProgressDialog_moveEvent_h" qtc_QProgressDialog_moveEvent_h :: Ptr (TQProgressDialog a) -> Ptr (TQMoveEvent t1) -> IO ()

instance QmoveEvent (QProgressDialogSc a) ((QMoveEvent t1)) where
 moveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressDialog_moveEvent_h cobj_x0 cobj_x1

instance QpaintEngine (QProgressDialog ()) (()) where
 paintEngine x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QProgressDialog_paintEngine_h cobj_x0

foreign import ccall "qtc_QProgressDialog_paintEngine_h" qtc_QProgressDialog_paintEngine_h :: Ptr (TQProgressDialog a) -> IO (Ptr (TQPaintEngine ()))

instance QpaintEngine (QProgressDialogSc a) (()) where
 paintEngine x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QProgressDialog_paintEngine_h cobj_x0

instance QpaintEvent (QProgressDialog ()) ((QPaintEvent t1)) where
 paintEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressDialog_paintEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QProgressDialog_paintEvent_h" qtc_QProgressDialog_paintEvent_h :: Ptr (TQProgressDialog a) -> Ptr (TQPaintEvent t1) -> IO ()

instance QpaintEvent (QProgressDialogSc a) ((QPaintEvent t1)) where
 paintEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressDialog_paintEvent_h cobj_x0 cobj_x1

instance QpaletteChange (QProgressDialog ()) ((QPalette t1)) where
 paletteChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressDialog_paletteChange cobj_x0 cobj_x1

foreign import ccall "qtc_QProgressDialog_paletteChange" qtc_QProgressDialog_paletteChange :: Ptr (TQProgressDialog a) -> Ptr (TQPalette t1) -> IO ()

instance QpaletteChange (QProgressDialogSc a) ((QPalette t1)) where
 paletteChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressDialog_paletteChange cobj_x0 cobj_x1

instance Qrepaint (QProgressDialog ()) (()) where
 repaint x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QProgressDialog_repaint cobj_x0

foreign import ccall "qtc_QProgressDialog_repaint" qtc_QProgressDialog_repaint :: Ptr (TQProgressDialog a) -> IO ()

instance Qrepaint (QProgressDialogSc a) (()) where
 repaint x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QProgressDialog_repaint cobj_x0

instance Qrepaint (QProgressDialog ()) ((Int, Int, Int, Int)) where
 repaint x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QProgressDialog_repaint2 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QProgressDialog_repaint2" qtc_QProgressDialog_repaint2 :: Ptr (TQProgressDialog a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance Qrepaint (QProgressDialogSc a) ((Int, Int, Int, Int)) where
 repaint x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QProgressDialog_repaint2 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

instance Qrepaint (QProgressDialog ()) ((QRegion t1)) where
 repaint x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressDialog_repaint1 cobj_x0 cobj_x1

foreign import ccall "qtc_QProgressDialog_repaint1" qtc_QProgressDialog_repaint1 :: Ptr (TQProgressDialog a) -> Ptr (TQRegion t1) -> IO ()

instance Qrepaint (QProgressDialogSc a) ((QRegion t1)) where
 repaint x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressDialog_repaint1 cobj_x0 cobj_x1

instance QresetInputContext (QProgressDialog ()) (()) where
 resetInputContext x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QProgressDialog_resetInputContext cobj_x0

foreign import ccall "qtc_QProgressDialog_resetInputContext" qtc_QProgressDialog_resetInputContext :: Ptr (TQProgressDialog a) -> IO ()

instance QresetInputContext (QProgressDialogSc a) (()) where
 resetInputContext x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QProgressDialog_resetInputContext cobj_x0

instance Qresize (QProgressDialog ()) ((Int, Int)) (IO ()) where
 resize x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QProgressDialog_resize1 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QProgressDialog_resize1" qtc_QProgressDialog_resize1 :: Ptr (TQProgressDialog a) -> CInt -> CInt -> IO ()

instance Qresize (QProgressDialogSc a) ((Int, Int)) (IO ()) where
 resize x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QProgressDialog_resize1 cobj_x0 (toCInt x1) (toCInt x2)

instance Qqresize (QProgressDialog ()) ((QSize t1)) where
 qresize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressDialog_resize cobj_x0 cobj_x1

foreign import ccall "qtc_QProgressDialog_resize" qtc_QProgressDialog_resize :: Ptr (TQProgressDialog a) -> Ptr (TQSize t1) -> IO ()

instance Qqresize (QProgressDialogSc a) ((QSize t1)) where
 qresize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressDialog_resize cobj_x0 cobj_x1

instance Qresize (QProgressDialog ()) ((Size)) (IO ()) where
 resize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QProgressDialog_resize_qth cobj_x0 csize_x1_w csize_x1_h 

foreign import ccall "qtc_QProgressDialog_resize_qth" qtc_QProgressDialog_resize_qth :: Ptr (TQProgressDialog a) -> CInt -> CInt -> IO ()

instance Qresize (QProgressDialogSc a) ((Size)) (IO ()) where
 resize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QProgressDialog_resize_qth cobj_x0 csize_x1_w csize_x1_h 

instance QsetGeometry (QProgressDialog ()) ((Int, Int, Int, Int)) where
 setGeometry x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QProgressDialog_setGeometry1 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QProgressDialog_setGeometry1" qtc_QProgressDialog_setGeometry1 :: Ptr (TQProgressDialog a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QsetGeometry (QProgressDialogSc a) ((Int, Int, Int, Int)) where
 setGeometry x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QProgressDialog_setGeometry1 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

instance QqsetGeometry (QProgressDialog ()) ((QRect t1)) where
 qsetGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressDialog_setGeometry cobj_x0 cobj_x1

foreign import ccall "qtc_QProgressDialog_setGeometry" qtc_QProgressDialog_setGeometry :: Ptr (TQProgressDialog a) -> Ptr (TQRect t1) -> IO ()

instance QqsetGeometry (QProgressDialogSc a) ((QRect t1)) where
 qsetGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressDialog_setGeometry cobj_x0 cobj_x1

instance QsetGeometry (QProgressDialog ()) ((Rect)) where
 setGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QProgressDialog_setGeometry_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

foreign import ccall "qtc_QProgressDialog_setGeometry_qth" qtc_QProgressDialog_setGeometry_qth :: Ptr (TQProgressDialog a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QsetGeometry (QProgressDialogSc a) ((Rect)) where
 setGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QProgressDialog_setGeometry_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

instance QsetMouseTracking (QProgressDialog ()) ((Bool)) where
 setMouseTracking x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QProgressDialog_setMouseTracking cobj_x0 (toCBool x1)

foreign import ccall "qtc_QProgressDialog_setMouseTracking" qtc_QProgressDialog_setMouseTracking :: Ptr (TQProgressDialog a) -> CBool -> IO ()

instance QsetMouseTracking (QProgressDialogSc a) ((Bool)) where
 setMouseTracking x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QProgressDialog_setMouseTracking cobj_x0 (toCBool x1)

instance QtabletEvent (QProgressDialog ()) ((QTabletEvent t1)) where
 tabletEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressDialog_tabletEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QProgressDialog_tabletEvent_h" qtc_QProgressDialog_tabletEvent_h :: Ptr (TQProgressDialog a) -> Ptr (TQTabletEvent t1) -> IO ()

instance QtabletEvent (QProgressDialogSc a) ((QTabletEvent t1)) where
 tabletEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressDialog_tabletEvent_h cobj_x0 cobj_x1

instance QupdateMicroFocus (QProgressDialog ()) (()) where
 updateMicroFocus x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QProgressDialog_updateMicroFocus cobj_x0

foreign import ccall "qtc_QProgressDialog_updateMicroFocus" qtc_QProgressDialog_updateMicroFocus :: Ptr (TQProgressDialog a) -> IO ()

instance QupdateMicroFocus (QProgressDialogSc a) (()) where
 updateMicroFocus x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QProgressDialog_updateMicroFocus cobj_x0

instance QwheelEvent (QProgressDialog ()) ((QWheelEvent t1)) where
 wheelEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressDialog_wheelEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QProgressDialog_wheelEvent_h" qtc_QProgressDialog_wheelEvent_h :: Ptr (TQProgressDialog a) -> Ptr (TQWheelEvent t1) -> IO ()

instance QwheelEvent (QProgressDialogSc a) ((QWheelEvent t1)) where
 wheelEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressDialog_wheelEvent_h cobj_x0 cobj_x1

instance QwindowActivationChange (QProgressDialog ()) ((Bool)) where
 windowActivationChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QProgressDialog_windowActivationChange cobj_x0 (toCBool x1)

foreign import ccall "qtc_QProgressDialog_windowActivationChange" qtc_QProgressDialog_windowActivationChange :: Ptr (TQProgressDialog a) -> CBool -> IO ()

instance QwindowActivationChange (QProgressDialogSc a) ((Bool)) where
 windowActivationChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QProgressDialog_windowActivationChange cobj_x0 (toCBool x1)

instance QchildEvent (QProgressDialog ()) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressDialog_childEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QProgressDialog_childEvent" qtc_QProgressDialog_childEvent :: Ptr (TQProgressDialog a) -> Ptr (TQChildEvent t1) -> IO ()

instance QchildEvent (QProgressDialogSc a) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressDialog_childEvent cobj_x0 cobj_x1

instance QconnectNotify (QProgressDialog ()) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QProgressDialog_connectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QProgressDialog_connectNotify" qtc_QProgressDialog_connectNotify :: Ptr (TQProgressDialog a) -> CWString -> IO ()

instance QconnectNotify (QProgressDialogSc a) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QProgressDialog_connectNotify cobj_x0 cstr_x1

instance QcustomEvent (QProgressDialog ()) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressDialog_customEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QProgressDialog_customEvent" qtc_QProgressDialog_customEvent :: Ptr (TQProgressDialog a) -> Ptr (TQEvent t1) -> IO ()

instance QcustomEvent (QProgressDialogSc a) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressDialog_customEvent cobj_x0 cobj_x1

instance QdisconnectNotify (QProgressDialog ()) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QProgressDialog_disconnectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QProgressDialog_disconnectNotify" qtc_QProgressDialog_disconnectNotify :: Ptr (TQProgressDialog a) -> CWString -> IO ()

instance QdisconnectNotify (QProgressDialogSc a) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QProgressDialog_disconnectNotify cobj_x0 cstr_x1

instance Qreceivers (QProgressDialog ()) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QProgressDialog_receivers cobj_x0 cstr_x1

foreign import ccall "qtc_QProgressDialog_receivers" qtc_QProgressDialog_receivers :: Ptr (TQProgressDialog a) -> CWString -> IO CInt

instance Qreceivers (QProgressDialogSc a) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QProgressDialog_receivers cobj_x0 cstr_x1

instance Qsender (QProgressDialog ()) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QProgressDialog_sender cobj_x0

foreign import ccall "qtc_QProgressDialog_sender" qtc_QProgressDialog_sender :: Ptr (TQProgressDialog a) -> IO (Ptr (TQObject ()))

instance Qsender (QProgressDialogSc a) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QProgressDialog_sender cobj_x0

instance QtimerEvent (QProgressDialog ()) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressDialog_timerEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QProgressDialog_timerEvent" qtc_QProgressDialog_timerEvent :: Ptr (TQProgressDialog a) -> Ptr (TQTimerEvent t1) -> IO ()

instance QtimerEvent (QProgressDialogSc a) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressDialog_timerEvent cobj_x0 cobj_x1

