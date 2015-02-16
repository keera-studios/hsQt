{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QAbstractPrintDialog.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:25
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QAbstractPrintDialog (
  QqAbstractPrintDialog(..)
  ,addEnabledOption
  ,enabledOptions
  ,isOptionEnabled
  ,maxPage
  ,minPage
  ,printRange
  ,setEnabledOptions
  ,setMinMax
  ,setPrintRange
  ,qAbstractPrintDialog_delete
  ,qAbstractPrintDialog_deleteLater
  )
  where

import Foreign.C.Types
import Qth.ClassTypes.Core
import Qtc.Enums.Base
import Qtc.Enums.Gui.QPaintDevice
import Qtc.Enums.Core.Qt
import Qtc.Enums.Gui.QAbstractPrintDialog

import Qtc.Classes.Base
import Qtc.Classes.Qccs
import Qtc.Classes.Core
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core
import Qtc.Classes.Gui
import Qtc.ClassTypes.Gui

instance QuserMethod (QAbstractPrintDialog ()) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QAbstractPrintDialog_userMethod cobj_qobj (toCInt evid)

foreign import ccall "qtc_QAbstractPrintDialog_userMethod" qtc_QAbstractPrintDialog_userMethod :: Ptr (TQAbstractPrintDialog a) -> CInt -> IO ()

instance QuserMethod (QAbstractPrintDialogSc a) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QAbstractPrintDialog_userMethod cobj_qobj (toCInt evid)

instance QuserMethod (QAbstractPrintDialog ()) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QAbstractPrintDialog_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

foreign import ccall "qtc_QAbstractPrintDialog_userMethodVariant" qtc_QAbstractPrintDialog_userMethodVariant :: Ptr (TQAbstractPrintDialog a) -> CInt -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))

instance QuserMethod (QAbstractPrintDialogSc a) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QAbstractPrintDialog_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

class QqAbstractPrintDialog x1 where
  qAbstractPrintDialog :: x1 -> IO (QAbstractPrintDialog ())

instance QqAbstractPrintDialog ((QPrinter t1)) where
 qAbstractPrintDialog (x1)
  = withQAbstractPrintDialogResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPrintDialog cobj_x1

foreign import ccall "qtc_QAbstractPrintDialog" qtc_QAbstractPrintDialog :: Ptr (TQPrinter t1) -> IO (Ptr (TQAbstractPrintDialog ()))

instance QqAbstractPrintDialog ((QPrinter t1, QWidget t2)) where
 qAbstractPrintDialog (x1, x2)
  = withQAbstractPrintDialogResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QAbstractPrintDialog1 cobj_x1 cobj_x2

foreign import ccall "qtc_QAbstractPrintDialog1" qtc_QAbstractPrintDialog1 :: Ptr (TQPrinter t1) -> Ptr (TQWidget t2) -> IO (Ptr (TQAbstractPrintDialog ()))

addEnabledOption :: QAbstractPrintDialog a -> ((PrintDialogOption)) -> IO ()
addEnabledOption x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPrintDialog_addEnabledOption cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QAbstractPrintDialog_addEnabledOption" qtc_QAbstractPrintDialog_addEnabledOption :: Ptr (TQAbstractPrintDialog a) -> CLong -> IO ()

enabledOptions :: QAbstractPrintDialog a -> (()) -> IO (PrintDialogOptions)
enabledOptions x0 ()
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPrintDialog_enabledOptions cobj_x0

foreign import ccall "qtc_QAbstractPrintDialog_enabledOptions" qtc_QAbstractPrintDialog_enabledOptions :: Ptr (TQAbstractPrintDialog a) -> IO CLong

instance Qexec (QAbstractPrintDialog ()) (()) (IO (Int)) where
 exec x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPrintDialog_exec_h cobj_x0

foreign import ccall "qtc_QAbstractPrintDialog_exec_h" qtc_QAbstractPrintDialog_exec_h :: Ptr (TQAbstractPrintDialog a) -> IO CInt

instance Qexec (QAbstractPrintDialogSc a) (()) (IO (Int)) where
 exec x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPrintDialog_exec_h cobj_x0

instance QfromPage (QAbstractPrintDialog a) (()) where
 fromPage x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPrintDialog_fromPage cobj_x0

foreign import ccall "qtc_QAbstractPrintDialog_fromPage" qtc_QAbstractPrintDialog_fromPage :: Ptr (TQAbstractPrintDialog a) -> IO CInt

isOptionEnabled :: QAbstractPrintDialog a -> ((PrintDialogOption)) -> IO (Bool)
isOptionEnabled x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPrintDialog_isOptionEnabled cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QAbstractPrintDialog_isOptionEnabled" qtc_QAbstractPrintDialog_isOptionEnabled :: Ptr (TQAbstractPrintDialog a) -> CLong -> IO CBool

maxPage :: QAbstractPrintDialog a -> (()) -> IO (Int)
maxPage x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPrintDialog_maxPage cobj_x0

foreign import ccall "qtc_QAbstractPrintDialog_maxPage" qtc_QAbstractPrintDialog_maxPage :: Ptr (TQAbstractPrintDialog a) -> IO CInt

minPage :: QAbstractPrintDialog a -> (()) -> IO (Int)
minPage x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPrintDialog_minPage cobj_x0

foreign import ccall "qtc_QAbstractPrintDialog_minPage" qtc_QAbstractPrintDialog_minPage :: Ptr (TQAbstractPrintDialog a) -> IO CInt

printRange :: QAbstractPrintDialog a -> (()) -> IO (QAbstractPrintDialogPrintRange)
printRange x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPrintDialog_printRange cobj_x0

foreign import ccall "qtc_QAbstractPrintDialog_printRange" qtc_QAbstractPrintDialog_printRange :: Ptr (TQAbstractPrintDialog a) -> IO CLong

instance Qprinter (QAbstractPrintDialog a) (()) where
 printer x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPrintDialog_printer cobj_x0

foreign import ccall "qtc_QAbstractPrintDialog_printer" qtc_QAbstractPrintDialog_printer :: Ptr (TQAbstractPrintDialog a) -> IO (Ptr (TQPrinter ()))

setEnabledOptions :: QAbstractPrintDialog a -> ((PrintDialogOptions)) -> IO ()
setEnabledOptions x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPrintDialog_setEnabledOptions cobj_x0 (toCLong $ qFlags_toInt x1)

foreign import ccall "qtc_QAbstractPrintDialog_setEnabledOptions" qtc_QAbstractPrintDialog_setEnabledOptions :: Ptr (TQAbstractPrintDialog a) -> CLong -> IO ()

instance QsetFromTo (QAbstractPrintDialog a) ((Int, Int)) where
 setFromTo x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPrintDialog_setFromTo cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QAbstractPrintDialog_setFromTo" qtc_QAbstractPrintDialog_setFromTo :: Ptr (TQAbstractPrintDialog a) -> CInt -> CInt -> IO ()

setMinMax :: QAbstractPrintDialog a -> ((Int, Int)) -> IO ()
setMinMax x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPrintDialog_setMinMax cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QAbstractPrintDialog_setMinMax" qtc_QAbstractPrintDialog_setMinMax :: Ptr (TQAbstractPrintDialog a) -> CInt -> CInt -> IO ()

setPrintRange :: QAbstractPrintDialog a -> ((QAbstractPrintDialogPrintRange)) -> IO ()
setPrintRange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPrintDialog_setPrintRange cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QAbstractPrintDialog_setPrintRange" qtc_QAbstractPrintDialog_setPrintRange :: Ptr (TQAbstractPrintDialog a) -> CLong -> IO ()

instance QtoPage (QAbstractPrintDialog a) (()) where
 toPage x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPrintDialog_toPage cobj_x0

foreign import ccall "qtc_QAbstractPrintDialog_toPage" qtc_QAbstractPrintDialog_toPage :: Ptr (TQAbstractPrintDialog a) -> IO CInt

qAbstractPrintDialog_delete :: QAbstractPrintDialog a -> IO ()
qAbstractPrintDialog_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPrintDialog_delete cobj_x0

foreign import ccall "qtc_QAbstractPrintDialog_delete" qtc_QAbstractPrintDialog_delete :: Ptr (TQAbstractPrintDialog a) -> IO ()

qAbstractPrintDialog_deleteLater :: QAbstractPrintDialog a -> IO ()
qAbstractPrintDialog_deleteLater x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPrintDialog_deleteLater cobj_x0

foreign import ccall "qtc_QAbstractPrintDialog_deleteLater" qtc_QAbstractPrintDialog_deleteLater :: Ptr (TQAbstractPrintDialog a) -> IO ()

instance Qaccept (QAbstractPrintDialog ()) (()) where
 accept x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPrintDialog_accept_h cobj_x0

foreign import ccall "qtc_QAbstractPrintDialog_accept_h" qtc_QAbstractPrintDialog_accept_h :: Ptr (TQAbstractPrintDialog a) -> IO ()

instance Qaccept (QAbstractPrintDialogSc a) (()) where
 accept x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPrintDialog_accept_h cobj_x0

instance QadjustPosition (QAbstractPrintDialog ()) ((QWidget t1)) where
 adjustPosition x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPrintDialog_adjustPosition cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractPrintDialog_adjustPosition" qtc_QAbstractPrintDialog_adjustPosition :: Ptr (TQAbstractPrintDialog a) -> Ptr (TQWidget t1) -> IO ()

instance QadjustPosition (QAbstractPrintDialogSc a) ((QWidget t1)) where
 adjustPosition x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPrintDialog_adjustPosition cobj_x0 cobj_x1

instance QcloseEvent (QAbstractPrintDialog ()) ((QCloseEvent t1)) where
 closeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPrintDialog_closeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractPrintDialog_closeEvent_h" qtc_QAbstractPrintDialog_closeEvent_h :: Ptr (TQAbstractPrintDialog a) -> Ptr (TQCloseEvent t1) -> IO ()

instance QcloseEvent (QAbstractPrintDialogSc a) ((QCloseEvent t1)) where
 closeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPrintDialog_closeEvent_h cobj_x0 cobj_x1

instance QcontextMenuEvent (QAbstractPrintDialog ()) ((QContextMenuEvent t1)) where
 contextMenuEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPrintDialog_contextMenuEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractPrintDialog_contextMenuEvent_h" qtc_QAbstractPrintDialog_contextMenuEvent_h :: Ptr (TQAbstractPrintDialog a) -> Ptr (TQContextMenuEvent t1) -> IO ()

instance QcontextMenuEvent (QAbstractPrintDialogSc a) ((QContextMenuEvent t1)) where
 contextMenuEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPrintDialog_contextMenuEvent_h cobj_x0 cobj_x1

instance Qdone (QAbstractPrintDialog ()) ((Int)) where
 done x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPrintDialog_done_h cobj_x0 (toCInt x1)

foreign import ccall "qtc_QAbstractPrintDialog_done_h" qtc_QAbstractPrintDialog_done_h :: Ptr (TQAbstractPrintDialog a) -> CInt -> IO ()

instance Qdone (QAbstractPrintDialogSc a) ((Int)) where
 done x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPrintDialog_done_h cobj_x0 (toCInt x1)

instance Qevent (QAbstractPrintDialog ()) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPrintDialog_event_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractPrintDialog_event_h" qtc_QAbstractPrintDialog_event_h :: Ptr (TQAbstractPrintDialog a) -> Ptr (TQEvent t1) -> IO CBool

instance Qevent (QAbstractPrintDialogSc a) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPrintDialog_event_h cobj_x0 cobj_x1

instance QeventFilter (QAbstractPrintDialog ()) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QAbstractPrintDialog_eventFilter cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QAbstractPrintDialog_eventFilter" qtc_QAbstractPrintDialog_eventFilter :: Ptr (TQAbstractPrintDialog a) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO CBool

instance QeventFilter (QAbstractPrintDialogSc a) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QAbstractPrintDialog_eventFilter cobj_x0 cobj_x1 cobj_x2

instance QkeyPressEvent (QAbstractPrintDialog ()) ((QKeyEvent t1)) where
 keyPressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPrintDialog_keyPressEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractPrintDialog_keyPressEvent_h" qtc_QAbstractPrintDialog_keyPressEvent_h :: Ptr (TQAbstractPrintDialog a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyPressEvent (QAbstractPrintDialogSc a) ((QKeyEvent t1)) where
 keyPressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPrintDialog_keyPressEvent_h cobj_x0 cobj_x1

instance QqminimumSizeHint (QAbstractPrintDialog ()) (()) where
 qminimumSizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPrintDialog_minimumSizeHint_h cobj_x0

foreign import ccall "qtc_QAbstractPrintDialog_minimumSizeHint_h" qtc_QAbstractPrintDialog_minimumSizeHint_h :: Ptr (TQAbstractPrintDialog a) -> IO (Ptr (TQSize ()))

instance QqminimumSizeHint (QAbstractPrintDialogSc a) (()) where
 qminimumSizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPrintDialog_minimumSizeHint_h cobj_x0

instance QminimumSizeHint (QAbstractPrintDialog ()) (()) where
 minimumSizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPrintDialog_minimumSizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QAbstractPrintDialog_minimumSizeHint_qth_h" qtc_QAbstractPrintDialog_minimumSizeHint_qth_h :: Ptr (TQAbstractPrintDialog a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QminimumSizeHint (QAbstractPrintDialogSc a) (()) where
 minimumSizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPrintDialog_minimumSizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

instance Qreject (QAbstractPrintDialog ()) (()) where
 reject x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPrintDialog_reject_h cobj_x0

foreign import ccall "qtc_QAbstractPrintDialog_reject_h" qtc_QAbstractPrintDialog_reject_h :: Ptr (TQAbstractPrintDialog a) -> IO ()

instance Qreject (QAbstractPrintDialogSc a) (()) where
 reject x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPrintDialog_reject_h cobj_x0

instance QresizeEvent (QAbstractPrintDialog ()) ((QResizeEvent t1)) where
 resizeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPrintDialog_resizeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractPrintDialog_resizeEvent_h" qtc_QAbstractPrintDialog_resizeEvent_h :: Ptr (TQAbstractPrintDialog a) -> Ptr (TQResizeEvent t1) -> IO ()

instance QresizeEvent (QAbstractPrintDialogSc a) ((QResizeEvent t1)) where
 resizeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPrintDialog_resizeEvent_h cobj_x0 cobj_x1

instance QsetVisible (QAbstractPrintDialog ()) ((Bool)) where
 setVisible x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPrintDialog_setVisible_h cobj_x0 (toCBool x1)

foreign import ccall "qtc_QAbstractPrintDialog_setVisible_h" qtc_QAbstractPrintDialog_setVisible_h :: Ptr (TQAbstractPrintDialog a) -> CBool -> IO ()

instance QsetVisible (QAbstractPrintDialogSc a) ((Bool)) where
 setVisible x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPrintDialog_setVisible_h cobj_x0 (toCBool x1)

instance QshowEvent (QAbstractPrintDialog ()) ((QShowEvent t1)) where
 showEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPrintDialog_showEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractPrintDialog_showEvent_h" qtc_QAbstractPrintDialog_showEvent_h :: Ptr (TQAbstractPrintDialog a) -> Ptr (TQShowEvent t1) -> IO ()

instance QshowEvent (QAbstractPrintDialogSc a) ((QShowEvent t1)) where
 showEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPrintDialog_showEvent_h cobj_x0 cobj_x1

instance QqsizeHint (QAbstractPrintDialog ()) (()) where
 qsizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPrintDialog_sizeHint_h cobj_x0

foreign import ccall "qtc_QAbstractPrintDialog_sizeHint_h" qtc_QAbstractPrintDialog_sizeHint_h :: Ptr (TQAbstractPrintDialog a) -> IO (Ptr (TQSize ()))

instance QqsizeHint (QAbstractPrintDialogSc a) (()) where
 qsizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPrintDialog_sizeHint_h cobj_x0

instance QsizeHint (QAbstractPrintDialog ()) (()) where
 sizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPrintDialog_sizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QAbstractPrintDialog_sizeHint_qth_h" qtc_QAbstractPrintDialog_sizeHint_qth_h :: Ptr (TQAbstractPrintDialog a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QsizeHint (QAbstractPrintDialogSc a) (()) where
 sizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPrintDialog_sizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

instance QactionEvent (QAbstractPrintDialog ()) ((QActionEvent t1)) where
 actionEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPrintDialog_actionEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractPrintDialog_actionEvent_h" qtc_QAbstractPrintDialog_actionEvent_h :: Ptr (TQAbstractPrintDialog a) -> Ptr (TQActionEvent t1) -> IO ()

instance QactionEvent (QAbstractPrintDialogSc a) ((QActionEvent t1)) where
 actionEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPrintDialog_actionEvent_h cobj_x0 cobj_x1

instance QaddAction (QAbstractPrintDialog ()) ((QAction t1)) (IO ()) where
 addAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPrintDialog_addAction cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractPrintDialog_addAction" qtc_QAbstractPrintDialog_addAction :: Ptr (TQAbstractPrintDialog a) -> Ptr (TQAction t1) -> IO ()

instance QaddAction (QAbstractPrintDialogSc a) ((QAction t1)) (IO ()) where
 addAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPrintDialog_addAction cobj_x0 cobj_x1

instance QchangeEvent (QAbstractPrintDialog ()) ((QEvent t1)) where
 changeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPrintDialog_changeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractPrintDialog_changeEvent_h" qtc_QAbstractPrintDialog_changeEvent_h :: Ptr (TQAbstractPrintDialog a) -> Ptr (TQEvent t1) -> IO ()

instance QchangeEvent (QAbstractPrintDialogSc a) ((QEvent t1)) where
 changeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPrintDialog_changeEvent_h cobj_x0 cobj_x1

instance Qcreate (QAbstractPrintDialog ()) (()) (IO ()) where
 create x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPrintDialog_create cobj_x0

foreign import ccall "qtc_QAbstractPrintDialog_create" qtc_QAbstractPrintDialog_create :: Ptr (TQAbstractPrintDialog a) -> IO ()

instance Qcreate (QAbstractPrintDialogSc a) (()) (IO ()) where
 create x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPrintDialog_create cobj_x0

instance Qcreate (QAbstractPrintDialog ()) ((QVoid t1)) (IO ()) where
 create x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPrintDialog_create1 cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractPrintDialog_create1" qtc_QAbstractPrintDialog_create1 :: Ptr (TQAbstractPrintDialog a) -> Ptr (TQVoid t1) -> IO ()

instance Qcreate (QAbstractPrintDialogSc a) ((QVoid t1)) (IO ()) where
 create x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPrintDialog_create1 cobj_x0 cobj_x1

instance Qcreate (QAbstractPrintDialog ()) ((QVoid t1, Bool)) (IO ()) where
 create x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPrintDialog_create2 cobj_x0 cobj_x1 (toCBool x2)

foreign import ccall "qtc_QAbstractPrintDialog_create2" qtc_QAbstractPrintDialog_create2 :: Ptr (TQAbstractPrintDialog a) -> Ptr (TQVoid t1) -> CBool -> IO ()

instance Qcreate (QAbstractPrintDialogSc a) ((QVoid t1, Bool)) (IO ()) where
 create x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPrintDialog_create2 cobj_x0 cobj_x1 (toCBool x2)

instance Qcreate (QAbstractPrintDialog ()) ((QVoid t1, Bool, Bool)) (IO ()) where
 create x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPrintDialog_create3 cobj_x0 cobj_x1 (toCBool x2) (toCBool x3)

foreign import ccall "qtc_QAbstractPrintDialog_create3" qtc_QAbstractPrintDialog_create3 :: Ptr (TQAbstractPrintDialog a) -> Ptr (TQVoid t1) -> CBool -> CBool -> IO ()

instance Qcreate (QAbstractPrintDialogSc a) ((QVoid t1, Bool, Bool)) (IO ()) where
 create x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPrintDialog_create3 cobj_x0 cobj_x1 (toCBool x2) (toCBool x3)

instance Qdestroy (QAbstractPrintDialog ()) (()) where
 destroy x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPrintDialog_destroy cobj_x0

foreign import ccall "qtc_QAbstractPrintDialog_destroy" qtc_QAbstractPrintDialog_destroy :: Ptr (TQAbstractPrintDialog a) -> IO ()

instance Qdestroy (QAbstractPrintDialogSc a) (()) where
 destroy x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPrintDialog_destroy cobj_x0

instance Qdestroy (QAbstractPrintDialog ()) ((Bool)) where
 destroy x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPrintDialog_destroy1 cobj_x0 (toCBool x1)

foreign import ccall "qtc_QAbstractPrintDialog_destroy1" qtc_QAbstractPrintDialog_destroy1 :: Ptr (TQAbstractPrintDialog a) -> CBool -> IO ()

instance Qdestroy (QAbstractPrintDialogSc a) ((Bool)) where
 destroy x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPrintDialog_destroy1 cobj_x0 (toCBool x1)

instance Qdestroy (QAbstractPrintDialog ()) ((Bool, Bool)) where
 destroy x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPrintDialog_destroy2 cobj_x0 (toCBool x1) (toCBool x2)

foreign import ccall "qtc_QAbstractPrintDialog_destroy2" qtc_QAbstractPrintDialog_destroy2 :: Ptr (TQAbstractPrintDialog a) -> CBool -> CBool -> IO ()

instance Qdestroy (QAbstractPrintDialogSc a) ((Bool, Bool)) where
 destroy x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPrintDialog_destroy2 cobj_x0 (toCBool x1) (toCBool x2)

instance QdevType (QAbstractPrintDialog ()) (()) where
 devType x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPrintDialog_devType_h cobj_x0

foreign import ccall "qtc_QAbstractPrintDialog_devType_h" qtc_QAbstractPrintDialog_devType_h :: Ptr (TQAbstractPrintDialog a) -> IO CInt

instance QdevType (QAbstractPrintDialogSc a) (()) where
 devType x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPrintDialog_devType_h cobj_x0

instance QdragEnterEvent (QAbstractPrintDialog ()) ((QDragEnterEvent t1)) where
 dragEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPrintDialog_dragEnterEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractPrintDialog_dragEnterEvent_h" qtc_QAbstractPrintDialog_dragEnterEvent_h :: Ptr (TQAbstractPrintDialog a) -> Ptr (TQDragEnterEvent t1) -> IO ()

instance QdragEnterEvent (QAbstractPrintDialogSc a) ((QDragEnterEvent t1)) where
 dragEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPrintDialog_dragEnterEvent_h cobj_x0 cobj_x1

instance QdragLeaveEvent (QAbstractPrintDialog ()) ((QDragLeaveEvent t1)) where
 dragLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPrintDialog_dragLeaveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractPrintDialog_dragLeaveEvent_h" qtc_QAbstractPrintDialog_dragLeaveEvent_h :: Ptr (TQAbstractPrintDialog a) -> Ptr (TQDragLeaveEvent t1) -> IO ()

instance QdragLeaveEvent (QAbstractPrintDialogSc a) ((QDragLeaveEvent t1)) where
 dragLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPrintDialog_dragLeaveEvent_h cobj_x0 cobj_x1

instance QdragMoveEvent (QAbstractPrintDialog ()) ((QDragMoveEvent t1)) where
 dragMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPrintDialog_dragMoveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractPrintDialog_dragMoveEvent_h" qtc_QAbstractPrintDialog_dragMoveEvent_h :: Ptr (TQAbstractPrintDialog a) -> Ptr (TQDragMoveEvent t1) -> IO ()

instance QdragMoveEvent (QAbstractPrintDialogSc a) ((QDragMoveEvent t1)) where
 dragMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPrintDialog_dragMoveEvent_h cobj_x0 cobj_x1

instance QdropEvent (QAbstractPrintDialog ()) ((QDropEvent t1)) where
 dropEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPrintDialog_dropEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractPrintDialog_dropEvent_h" qtc_QAbstractPrintDialog_dropEvent_h :: Ptr (TQAbstractPrintDialog a) -> Ptr (TQDropEvent t1) -> IO ()

instance QdropEvent (QAbstractPrintDialogSc a) ((QDropEvent t1)) where
 dropEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPrintDialog_dropEvent_h cobj_x0 cobj_x1

instance QenabledChange (QAbstractPrintDialog ()) ((Bool)) where
 enabledChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPrintDialog_enabledChange cobj_x0 (toCBool x1)

foreign import ccall "qtc_QAbstractPrintDialog_enabledChange" qtc_QAbstractPrintDialog_enabledChange :: Ptr (TQAbstractPrintDialog a) -> CBool -> IO ()

instance QenabledChange (QAbstractPrintDialogSc a) ((Bool)) where
 enabledChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPrintDialog_enabledChange cobj_x0 (toCBool x1)

instance QenterEvent (QAbstractPrintDialog ()) ((QEvent t1)) where
 enterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPrintDialog_enterEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractPrintDialog_enterEvent_h" qtc_QAbstractPrintDialog_enterEvent_h :: Ptr (TQAbstractPrintDialog a) -> Ptr (TQEvent t1) -> IO ()

instance QenterEvent (QAbstractPrintDialogSc a) ((QEvent t1)) where
 enterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPrintDialog_enterEvent_h cobj_x0 cobj_x1

instance QfocusInEvent (QAbstractPrintDialog ()) ((QFocusEvent t1)) where
 focusInEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPrintDialog_focusInEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractPrintDialog_focusInEvent_h" qtc_QAbstractPrintDialog_focusInEvent_h :: Ptr (TQAbstractPrintDialog a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusInEvent (QAbstractPrintDialogSc a) ((QFocusEvent t1)) where
 focusInEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPrintDialog_focusInEvent_h cobj_x0 cobj_x1

instance QfocusNextChild (QAbstractPrintDialog ()) (()) where
 focusNextChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPrintDialog_focusNextChild cobj_x0

foreign import ccall "qtc_QAbstractPrintDialog_focusNextChild" qtc_QAbstractPrintDialog_focusNextChild :: Ptr (TQAbstractPrintDialog a) -> IO CBool

instance QfocusNextChild (QAbstractPrintDialogSc a) (()) where
 focusNextChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPrintDialog_focusNextChild cobj_x0

instance QfocusNextPrevChild (QAbstractPrintDialog ()) ((Bool)) where
 focusNextPrevChild x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPrintDialog_focusNextPrevChild cobj_x0 (toCBool x1)

foreign import ccall "qtc_QAbstractPrintDialog_focusNextPrevChild" qtc_QAbstractPrintDialog_focusNextPrevChild :: Ptr (TQAbstractPrintDialog a) -> CBool -> IO CBool

instance QfocusNextPrevChild (QAbstractPrintDialogSc a) ((Bool)) where
 focusNextPrevChild x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPrintDialog_focusNextPrevChild cobj_x0 (toCBool x1)

instance QfocusOutEvent (QAbstractPrintDialog ()) ((QFocusEvent t1)) where
 focusOutEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPrintDialog_focusOutEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractPrintDialog_focusOutEvent_h" qtc_QAbstractPrintDialog_focusOutEvent_h :: Ptr (TQAbstractPrintDialog a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusOutEvent (QAbstractPrintDialogSc a) ((QFocusEvent t1)) where
 focusOutEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPrintDialog_focusOutEvent_h cobj_x0 cobj_x1

instance QfocusPreviousChild (QAbstractPrintDialog ()) (()) where
 focusPreviousChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPrintDialog_focusPreviousChild cobj_x0

foreign import ccall "qtc_QAbstractPrintDialog_focusPreviousChild" qtc_QAbstractPrintDialog_focusPreviousChild :: Ptr (TQAbstractPrintDialog a) -> IO CBool

instance QfocusPreviousChild (QAbstractPrintDialogSc a) (()) where
 focusPreviousChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPrintDialog_focusPreviousChild cobj_x0

instance QfontChange (QAbstractPrintDialog ()) ((QFont t1)) where
 fontChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPrintDialog_fontChange cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractPrintDialog_fontChange" qtc_QAbstractPrintDialog_fontChange :: Ptr (TQAbstractPrintDialog a) -> Ptr (TQFont t1) -> IO ()

instance QfontChange (QAbstractPrintDialogSc a) ((QFont t1)) where
 fontChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPrintDialog_fontChange cobj_x0 cobj_x1

instance QheightForWidth (QAbstractPrintDialog ()) ((Int)) where
 heightForWidth x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPrintDialog_heightForWidth_h cobj_x0 (toCInt x1)

foreign import ccall "qtc_QAbstractPrintDialog_heightForWidth_h" qtc_QAbstractPrintDialog_heightForWidth_h :: Ptr (TQAbstractPrintDialog a) -> CInt -> IO CInt

instance QheightForWidth (QAbstractPrintDialogSc a) ((Int)) where
 heightForWidth x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPrintDialog_heightForWidth_h cobj_x0 (toCInt x1)

instance QhideEvent (QAbstractPrintDialog ()) ((QHideEvent t1)) where
 hideEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPrintDialog_hideEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractPrintDialog_hideEvent_h" qtc_QAbstractPrintDialog_hideEvent_h :: Ptr (TQAbstractPrintDialog a) -> Ptr (TQHideEvent t1) -> IO ()

instance QhideEvent (QAbstractPrintDialogSc a) ((QHideEvent t1)) where
 hideEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPrintDialog_hideEvent_h cobj_x0 cobj_x1

instance QinputMethodEvent (QAbstractPrintDialog ()) ((QInputMethodEvent t1)) where
 inputMethodEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPrintDialog_inputMethodEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractPrintDialog_inputMethodEvent" qtc_QAbstractPrintDialog_inputMethodEvent :: Ptr (TQAbstractPrintDialog a) -> Ptr (TQInputMethodEvent t1) -> IO ()

instance QinputMethodEvent (QAbstractPrintDialogSc a) ((QInputMethodEvent t1)) where
 inputMethodEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPrintDialog_inputMethodEvent cobj_x0 cobj_x1

instance QinputMethodQuery (QAbstractPrintDialog ()) ((InputMethodQuery)) where
 inputMethodQuery x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPrintDialog_inputMethodQuery_h cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QAbstractPrintDialog_inputMethodQuery_h" qtc_QAbstractPrintDialog_inputMethodQuery_h :: Ptr (TQAbstractPrintDialog a) -> CLong -> IO (Ptr (TQVariant ()))

instance QinputMethodQuery (QAbstractPrintDialogSc a) ((InputMethodQuery)) where
 inputMethodQuery x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPrintDialog_inputMethodQuery_h cobj_x0 (toCLong $ qEnum_toInt x1)

instance QkeyReleaseEvent (QAbstractPrintDialog ()) ((QKeyEvent t1)) where
 keyReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPrintDialog_keyReleaseEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractPrintDialog_keyReleaseEvent_h" qtc_QAbstractPrintDialog_keyReleaseEvent_h :: Ptr (TQAbstractPrintDialog a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyReleaseEvent (QAbstractPrintDialogSc a) ((QKeyEvent t1)) where
 keyReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPrintDialog_keyReleaseEvent_h cobj_x0 cobj_x1

instance QlanguageChange (QAbstractPrintDialog ()) (()) where
 languageChange x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPrintDialog_languageChange cobj_x0

foreign import ccall "qtc_QAbstractPrintDialog_languageChange" qtc_QAbstractPrintDialog_languageChange :: Ptr (TQAbstractPrintDialog a) -> IO ()

instance QlanguageChange (QAbstractPrintDialogSc a) (()) where
 languageChange x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPrintDialog_languageChange cobj_x0

instance QleaveEvent (QAbstractPrintDialog ()) ((QEvent t1)) where
 leaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPrintDialog_leaveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractPrintDialog_leaveEvent_h" qtc_QAbstractPrintDialog_leaveEvent_h :: Ptr (TQAbstractPrintDialog a) -> Ptr (TQEvent t1) -> IO ()

instance QleaveEvent (QAbstractPrintDialogSc a) ((QEvent t1)) where
 leaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPrintDialog_leaveEvent_h cobj_x0 cobj_x1

instance Qmetric (QAbstractPrintDialog ()) ((PaintDeviceMetric)) where
 metric x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPrintDialog_metric cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QAbstractPrintDialog_metric" qtc_QAbstractPrintDialog_metric :: Ptr (TQAbstractPrintDialog a) -> CLong -> IO CInt

instance Qmetric (QAbstractPrintDialogSc a) ((PaintDeviceMetric)) where
 metric x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPrintDialog_metric cobj_x0 (toCLong $ qEnum_toInt x1)

instance QmouseDoubleClickEvent (QAbstractPrintDialog ()) ((QMouseEvent t1)) where
 mouseDoubleClickEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPrintDialog_mouseDoubleClickEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractPrintDialog_mouseDoubleClickEvent_h" qtc_QAbstractPrintDialog_mouseDoubleClickEvent_h :: Ptr (TQAbstractPrintDialog a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseDoubleClickEvent (QAbstractPrintDialogSc a) ((QMouseEvent t1)) where
 mouseDoubleClickEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPrintDialog_mouseDoubleClickEvent_h cobj_x0 cobj_x1

instance QmouseMoveEvent (QAbstractPrintDialog ()) ((QMouseEvent t1)) where
 mouseMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPrintDialog_mouseMoveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractPrintDialog_mouseMoveEvent_h" qtc_QAbstractPrintDialog_mouseMoveEvent_h :: Ptr (TQAbstractPrintDialog a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseMoveEvent (QAbstractPrintDialogSc a) ((QMouseEvent t1)) where
 mouseMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPrintDialog_mouseMoveEvent_h cobj_x0 cobj_x1

instance QmousePressEvent (QAbstractPrintDialog ()) ((QMouseEvent t1)) where
 mousePressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPrintDialog_mousePressEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractPrintDialog_mousePressEvent_h" qtc_QAbstractPrintDialog_mousePressEvent_h :: Ptr (TQAbstractPrintDialog a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmousePressEvent (QAbstractPrintDialogSc a) ((QMouseEvent t1)) where
 mousePressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPrintDialog_mousePressEvent_h cobj_x0 cobj_x1

instance QmouseReleaseEvent (QAbstractPrintDialog ()) ((QMouseEvent t1)) where
 mouseReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPrintDialog_mouseReleaseEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractPrintDialog_mouseReleaseEvent_h" qtc_QAbstractPrintDialog_mouseReleaseEvent_h :: Ptr (TQAbstractPrintDialog a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseReleaseEvent (QAbstractPrintDialogSc a) ((QMouseEvent t1)) where
 mouseReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPrintDialog_mouseReleaseEvent_h cobj_x0 cobj_x1

instance Qmove (QAbstractPrintDialog ()) ((Int, Int)) where
 move x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPrintDialog_move1 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QAbstractPrintDialog_move1" qtc_QAbstractPrintDialog_move1 :: Ptr (TQAbstractPrintDialog a) -> CInt -> CInt -> IO ()

instance Qmove (QAbstractPrintDialogSc a) ((Int, Int)) where
 move x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPrintDialog_move1 cobj_x0 (toCInt x1) (toCInt x2)

instance Qmove (QAbstractPrintDialog ()) ((Point)) where
 move x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QAbstractPrintDialog_move_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

foreign import ccall "qtc_QAbstractPrintDialog_move_qth" qtc_QAbstractPrintDialog_move_qth :: Ptr (TQAbstractPrintDialog a) -> CInt -> CInt -> IO ()

instance Qmove (QAbstractPrintDialogSc a) ((Point)) where
 move x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QAbstractPrintDialog_move_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

instance Qqmove (QAbstractPrintDialog ()) ((QPoint t1)) where
 qmove x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPrintDialog_move cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractPrintDialog_move" qtc_QAbstractPrintDialog_move :: Ptr (TQAbstractPrintDialog a) -> Ptr (TQPoint t1) -> IO ()

instance Qqmove (QAbstractPrintDialogSc a) ((QPoint t1)) where
 qmove x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPrintDialog_move cobj_x0 cobj_x1

instance QmoveEvent (QAbstractPrintDialog ()) ((QMoveEvent t1)) where
 moveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPrintDialog_moveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractPrintDialog_moveEvent_h" qtc_QAbstractPrintDialog_moveEvent_h :: Ptr (TQAbstractPrintDialog a) -> Ptr (TQMoveEvent t1) -> IO ()

instance QmoveEvent (QAbstractPrintDialogSc a) ((QMoveEvent t1)) where
 moveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPrintDialog_moveEvent_h cobj_x0 cobj_x1

instance QpaintEngine (QAbstractPrintDialog ()) (()) where
 paintEngine x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPrintDialog_paintEngine_h cobj_x0

foreign import ccall "qtc_QAbstractPrintDialog_paintEngine_h" qtc_QAbstractPrintDialog_paintEngine_h :: Ptr (TQAbstractPrintDialog a) -> IO (Ptr (TQPaintEngine ()))

instance QpaintEngine (QAbstractPrintDialogSc a) (()) where
 paintEngine x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPrintDialog_paintEngine_h cobj_x0

instance QpaintEvent (QAbstractPrintDialog ()) ((QPaintEvent t1)) where
 paintEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPrintDialog_paintEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractPrintDialog_paintEvent_h" qtc_QAbstractPrintDialog_paintEvent_h :: Ptr (TQAbstractPrintDialog a) -> Ptr (TQPaintEvent t1) -> IO ()

instance QpaintEvent (QAbstractPrintDialogSc a) ((QPaintEvent t1)) where
 paintEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPrintDialog_paintEvent_h cobj_x0 cobj_x1

instance QpaletteChange (QAbstractPrintDialog ()) ((QPalette t1)) where
 paletteChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPrintDialog_paletteChange cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractPrintDialog_paletteChange" qtc_QAbstractPrintDialog_paletteChange :: Ptr (TQAbstractPrintDialog a) -> Ptr (TQPalette t1) -> IO ()

instance QpaletteChange (QAbstractPrintDialogSc a) ((QPalette t1)) where
 paletteChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPrintDialog_paletteChange cobj_x0 cobj_x1

instance Qrepaint (QAbstractPrintDialog ()) (()) where
 repaint x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPrintDialog_repaint cobj_x0

foreign import ccall "qtc_QAbstractPrintDialog_repaint" qtc_QAbstractPrintDialog_repaint :: Ptr (TQAbstractPrintDialog a) -> IO ()

instance Qrepaint (QAbstractPrintDialogSc a) (()) where
 repaint x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPrintDialog_repaint cobj_x0

instance Qrepaint (QAbstractPrintDialog ()) ((Int, Int, Int, Int)) where
 repaint x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPrintDialog_repaint2 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QAbstractPrintDialog_repaint2" qtc_QAbstractPrintDialog_repaint2 :: Ptr (TQAbstractPrintDialog a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance Qrepaint (QAbstractPrintDialogSc a) ((Int, Int, Int, Int)) where
 repaint x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPrintDialog_repaint2 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

instance Qrepaint (QAbstractPrintDialog ()) ((QRegion t1)) where
 repaint x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPrintDialog_repaint1 cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractPrintDialog_repaint1" qtc_QAbstractPrintDialog_repaint1 :: Ptr (TQAbstractPrintDialog a) -> Ptr (TQRegion t1) -> IO ()

instance Qrepaint (QAbstractPrintDialogSc a) ((QRegion t1)) where
 repaint x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPrintDialog_repaint1 cobj_x0 cobj_x1

instance QresetInputContext (QAbstractPrintDialog ()) (()) where
 resetInputContext x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPrintDialog_resetInputContext cobj_x0

foreign import ccall "qtc_QAbstractPrintDialog_resetInputContext" qtc_QAbstractPrintDialog_resetInputContext :: Ptr (TQAbstractPrintDialog a) -> IO ()

instance QresetInputContext (QAbstractPrintDialogSc a) (()) where
 resetInputContext x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPrintDialog_resetInputContext cobj_x0

instance Qresize (QAbstractPrintDialog ()) ((Int, Int)) (IO ()) where
 resize x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPrintDialog_resize1 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QAbstractPrintDialog_resize1" qtc_QAbstractPrintDialog_resize1 :: Ptr (TQAbstractPrintDialog a) -> CInt -> CInt -> IO ()

instance Qresize (QAbstractPrintDialogSc a) ((Int, Int)) (IO ()) where
 resize x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPrintDialog_resize1 cobj_x0 (toCInt x1) (toCInt x2)

instance Qqresize (QAbstractPrintDialog ()) ((QSize t1)) where
 qresize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPrintDialog_resize cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractPrintDialog_resize" qtc_QAbstractPrintDialog_resize :: Ptr (TQAbstractPrintDialog a) -> Ptr (TQSize t1) -> IO ()

instance Qqresize (QAbstractPrintDialogSc a) ((QSize t1)) where
 qresize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPrintDialog_resize cobj_x0 cobj_x1

instance Qresize (QAbstractPrintDialog ()) ((Size)) (IO ()) where
 resize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QAbstractPrintDialog_resize_qth cobj_x0 csize_x1_w csize_x1_h 

foreign import ccall "qtc_QAbstractPrintDialog_resize_qth" qtc_QAbstractPrintDialog_resize_qth :: Ptr (TQAbstractPrintDialog a) -> CInt -> CInt -> IO ()

instance Qresize (QAbstractPrintDialogSc a) ((Size)) (IO ()) where
 resize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QAbstractPrintDialog_resize_qth cobj_x0 csize_x1_w csize_x1_h 

instance QsetGeometry (QAbstractPrintDialog ()) ((Int, Int, Int, Int)) where
 setGeometry x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPrintDialog_setGeometry1 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QAbstractPrintDialog_setGeometry1" qtc_QAbstractPrintDialog_setGeometry1 :: Ptr (TQAbstractPrintDialog a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QsetGeometry (QAbstractPrintDialogSc a) ((Int, Int, Int, Int)) where
 setGeometry x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPrintDialog_setGeometry1 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

instance QqsetGeometry (QAbstractPrintDialog ()) ((QRect t1)) where
 qsetGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPrintDialog_setGeometry cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractPrintDialog_setGeometry" qtc_QAbstractPrintDialog_setGeometry :: Ptr (TQAbstractPrintDialog a) -> Ptr (TQRect t1) -> IO ()

instance QqsetGeometry (QAbstractPrintDialogSc a) ((QRect t1)) where
 qsetGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPrintDialog_setGeometry cobj_x0 cobj_x1

instance QsetGeometry (QAbstractPrintDialog ()) ((Rect)) where
 setGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QAbstractPrintDialog_setGeometry_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

foreign import ccall "qtc_QAbstractPrintDialog_setGeometry_qth" qtc_QAbstractPrintDialog_setGeometry_qth :: Ptr (TQAbstractPrintDialog a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QsetGeometry (QAbstractPrintDialogSc a) ((Rect)) where
 setGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QAbstractPrintDialog_setGeometry_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

instance QsetMouseTracking (QAbstractPrintDialog ()) ((Bool)) where
 setMouseTracking x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPrintDialog_setMouseTracking cobj_x0 (toCBool x1)

foreign import ccall "qtc_QAbstractPrintDialog_setMouseTracking" qtc_QAbstractPrintDialog_setMouseTracking :: Ptr (TQAbstractPrintDialog a) -> CBool -> IO ()

instance QsetMouseTracking (QAbstractPrintDialogSc a) ((Bool)) where
 setMouseTracking x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPrintDialog_setMouseTracking cobj_x0 (toCBool x1)

instance QtabletEvent (QAbstractPrintDialog ()) ((QTabletEvent t1)) where
 tabletEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPrintDialog_tabletEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractPrintDialog_tabletEvent_h" qtc_QAbstractPrintDialog_tabletEvent_h :: Ptr (TQAbstractPrintDialog a) -> Ptr (TQTabletEvent t1) -> IO ()

instance QtabletEvent (QAbstractPrintDialogSc a) ((QTabletEvent t1)) where
 tabletEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPrintDialog_tabletEvent_h cobj_x0 cobj_x1

instance QupdateMicroFocus (QAbstractPrintDialog ()) (()) where
 updateMicroFocus x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPrintDialog_updateMicroFocus cobj_x0

foreign import ccall "qtc_QAbstractPrintDialog_updateMicroFocus" qtc_QAbstractPrintDialog_updateMicroFocus :: Ptr (TQAbstractPrintDialog a) -> IO ()

instance QupdateMicroFocus (QAbstractPrintDialogSc a) (()) where
 updateMicroFocus x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPrintDialog_updateMicroFocus cobj_x0

instance QwheelEvent (QAbstractPrintDialog ()) ((QWheelEvent t1)) where
 wheelEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPrintDialog_wheelEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractPrintDialog_wheelEvent_h" qtc_QAbstractPrintDialog_wheelEvent_h :: Ptr (TQAbstractPrintDialog a) -> Ptr (TQWheelEvent t1) -> IO ()

instance QwheelEvent (QAbstractPrintDialogSc a) ((QWheelEvent t1)) where
 wheelEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPrintDialog_wheelEvent_h cobj_x0 cobj_x1

instance QwindowActivationChange (QAbstractPrintDialog ()) ((Bool)) where
 windowActivationChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPrintDialog_windowActivationChange cobj_x0 (toCBool x1)

foreign import ccall "qtc_QAbstractPrintDialog_windowActivationChange" qtc_QAbstractPrintDialog_windowActivationChange :: Ptr (TQAbstractPrintDialog a) -> CBool -> IO ()

instance QwindowActivationChange (QAbstractPrintDialogSc a) ((Bool)) where
 windowActivationChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPrintDialog_windowActivationChange cobj_x0 (toCBool x1)

instance QchildEvent (QAbstractPrintDialog ()) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPrintDialog_childEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractPrintDialog_childEvent" qtc_QAbstractPrintDialog_childEvent :: Ptr (TQAbstractPrintDialog a) -> Ptr (TQChildEvent t1) -> IO ()

instance QchildEvent (QAbstractPrintDialogSc a) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPrintDialog_childEvent cobj_x0 cobj_x1

instance QconnectNotify (QAbstractPrintDialog ()) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QAbstractPrintDialog_connectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QAbstractPrintDialog_connectNotify" qtc_QAbstractPrintDialog_connectNotify :: Ptr (TQAbstractPrintDialog a) -> CWString -> IO ()

instance QconnectNotify (QAbstractPrintDialogSc a) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QAbstractPrintDialog_connectNotify cobj_x0 cstr_x1

instance QcustomEvent (QAbstractPrintDialog ()) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPrintDialog_customEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractPrintDialog_customEvent" qtc_QAbstractPrintDialog_customEvent :: Ptr (TQAbstractPrintDialog a) -> Ptr (TQEvent t1) -> IO ()

instance QcustomEvent (QAbstractPrintDialogSc a) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPrintDialog_customEvent cobj_x0 cobj_x1

instance QdisconnectNotify (QAbstractPrintDialog ()) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QAbstractPrintDialog_disconnectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QAbstractPrintDialog_disconnectNotify" qtc_QAbstractPrintDialog_disconnectNotify :: Ptr (TQAbstractPrintDialog a) -> CWString -> IO ()

instance QdisconnectNotify (QAbstractPrintDialogSc a) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QAbstractPrintDialog_disconnectNotify cobj_x0 cstr_x1

instance Qreceivers (QAbstractPrintDialog ()) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QAbstractPrintDialog_receivers cobj_x0 cstr_x1

foreign import ccall "qtc_QAbstractPrintDialog_receivers" qtc_QAbstractPrintDialog_receivers :: Ptr (TQAbstractPrintDialog a) -> CWString -> IO CInt

instance Qreceivers (QAbstractPrintDialogSc a) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QAbstractPrintDialog_receivers cobj_x0 cstr_x1

instance Qsender (QAbstractPrintDialog ()) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPrintDialog_sender cobj_x0

foreign import ccall "qtc_QAbstractPrintDialog_sender" qtc_QAbstractPrintDialog_sender :: Ptr (TQAbstractPrintDialog a) -> IO (Ptr (TQObject ()))

instance Qsender (QAbstractPrintDialogSc a) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPrintDialog_sender cobj_x0

instance QtimerEvent (QAbstractPrintDialog ()) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPrintDialog_timerEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractPrintDialog_timerEvent" qtc_QAbstractPrintDialog_timerEvent :: Ptr (TQAbstractPrintDialog a) -> Ptr (TQTimerEvent t1) -> IO ()

instance QtimerEvent (QAbstractPrintDialogSc a) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPrintDialog_timerEvent cobj_x0 cobj_x1

