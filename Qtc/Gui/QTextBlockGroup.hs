{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QTextBlockGroup.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:14
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QTextBlockGroup (
  qTextBlockGroup_delete
  ,qTextBlockGroup_deleteLater
  ,qTextBlockGroup
  )
  where

import Foreign.C.Types
import Qth.ClassTypes.Core
import Qtc.Enums.Base

import Qtc.Classes.Base
import Qtc.Classes.Qccs
import Qtc.Classes.Core
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core
import Qtc.Classes.Gui
import Qtc.ClassTypes.Gui

instance QuserMethod (QTextBlockGroup ()) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QTextBlockGroup_userMethod cobj_qobj (toCInt evid)

foreign import ccall "qtc_QTextBlockGroup_userMethod" qtc_QTextBlockGroup_userMethod :: Ptr (TQTextBlockGroup a) -> CInt -> IO ()

instance QuserMethod (QTextBlockGroupSc a) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QTextBlockGroup_userMethod cobj_qobj (toCInt evid)

instance QuserMethod (QTextBlockGroup ()) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QTextBlockGroup_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

foreign import ccall "qtc_QTextBlockGroup_userMethodVariant" qtc_QTextBlockGroup_userMethodVariant :: Ptr (TQTextBlockGroup a) -> CInt -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))

instance QuserMethod (QTextBlockGroupSc a) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QTextBlockGroup_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

qTextBlockGroup_delete :: QTextBlockGroup a -> IO ()
qTextBlockGroup_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextBlockGroup_delete cobj_x0

foreign import ccall "qtc_QTextBlockGroup_delete" qtc_QTextBlockGroup_delete :: Ptr (TQTextBlockGroup a) -> IO ()

qTextBlockGroup_deleteLater :: QTextBlockGroup a -> IO ()
qTextBlockGroup_deleteLater x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextBlockGroup_deleteLater cobj_x0

foreign import ccall "qtc_QTextBlockGroup_deleteLater" qtc_QTextBlockGroup_deleteLater :: Ptr (TQTextBlockGroup a) -> IO ()

qTextBlockGroup :: (QTextDocument t1) -> IO (QTextBlockGroup ())
qTextBlockGroup (x1)
  = withQTextBlockGroupResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextBlockGroup cobj_x1

foreign import ccall "qtc_QTextBlockGroup" qtc_QTextBlockGroup :: Ptr (TQTextDocument t1) -> IO (Ptr (TQTextBlockGroup ()))

instance QblockFormatChanged (QTextBlockGroup ()) ((QTextBlock t1)) where
 blockFormatChanged x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextBlockGroup_blockFormatChanged_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTextBlockGroup_blockFormatChanged_h" qtc_QTextBlockGroup_blockFormatChanged_h :: Ptr (TQTextBlockGroup a) -> Ptr (TQTextBlock t1) -> IO ()

instance QblockFormatChanged (QTextBlockGroupSc a) ((QTextBlock t1)) where
 blockFormatChanged x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextBlockGroup_blockFormatChanged_h cobj_x0 cobj_x1

instance QblockInserted (QTextBlockGroup ()) ((QTextBlock t1)) where
 blockInserted x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextBlockGroup_blockInserted_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTextBlockGroup_blockInserted_h" qtc_QTextBlockGroup_blockInserted_h :: Ptr (TQTextBlockGroup a) -> Ptr (TQTextBlock t1) -> IO ()

instance QblockInserted (QTextBlockGroupSc a) ((QTextBlock t1)) where
 blockInserted x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextBlockGroup_blockInserted_h cobj_x0 cobj_x1

instance QblockList (QTextBlockGroup ()) (()) where
 blockList x0 ()
  = withQListObjectRefResult $ \arr ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextBlockGroup_blockList cobj_x0 arr

foreign import ccall "qtc_QTextBlockGroup_blockList" qtc_QTextBlockGroup_blockList :: Ptr (TQTextBlockGroup a) -> Ptr (Ptr (TQTextBlock ())) -> IO CInt

instance QblockList (QTextBlockGroupSc a) (()) where
 blockList x0 ()
  = withQListObjectRefResult $ \arr ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextBlockGroup_blockList cobj_x0 arr

instance QblockRemoved (QTextBlockGroup ()) ((QTextBlock t1)) where
 blockRemoved x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextBlockGroup_blockRemoved_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTextBlockGroup_blockRemoved_h" qtc_QTextBlockGroup_blockRemoved_h :: Ptr (TQTextBlockGroup a) -> Ptr (TQTextBlock t1) -> IO ()

instance QblockRemoved (QTextBlockGroupSc a) ((QTextBlock t1)) where
 blockRemoved x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextBlockGroup_blockRemoved_h cobj_x0 cobj_x1

instance QsetFormat (QTextBlockGroup ()) ((QTextFormat t1)) where
 setFormat x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextBlockGroup_setFormat cobj_x0 cobj_x1

foreign import ccall "qtc_QTextBlockGroup_setFormat" qtc_QTextBlockGroup_setFormat :: Ptr (TQTextBlockGroup a) -> Ptr (TQTextFormat t1) -> IO ()

instance QsetFormat (QTextBlockGroupSc a) ((QTextFormat t1)) where
 setFormat x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextBlockGroup_setFormat cobj_x0 cobj_x1

instance QchildEvent (QTextBlockGroup ()) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextBlockGroup_childEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTextBlockGroup_childEvent" qtc_QTextBlockGroup_childEvent :: Ptr (TQTextBlockGroup a) -> Ptr (TQChildEvent t1) -> IO ()

instance QchildEvent (QTextBlockGroupSc a) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextBlockGroup_childEvent cobj_x0 cobj_x1

instance QconnectNotify (QTextBlockGroup ()) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTextBlockGroup_connectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QTextBlockGroup_connectNotify" qtc_QTextBlockGroup_connectNotify :: Ptr (TQTextBlockGroup a) -> CWString -> IO ()

instance QconnectNotify (QTextBlockGroupSc a) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTextBlockGroup_connectNotify cobj_x0 cstr_x1

instance QcustomEvent (QTextBlockGroup ()) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextBlockGroup_customEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTextBlockGroup_customEvent" qtc_QTextBlockGroup_customEvent :: Ptr (TQTextBlockGroup a) -> Ptr (TQEvent t1) -> IO ()

instance QcustomEvent (QTextBlockGroupSc a) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextBlockGroup_customEvent cobj_x0 cobj_x1

instance QdisconnectNotify (QTextBlockGroup ()) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTextBlockGroup_disconnectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QTextBlockGroup_disconnectNotify" qtc_QTextBlockGroup_disconnectNotify :: Ptr (TQTextBlockGroup a) -> CWString -> IO ()

instance QdisconnectNotify (QTextBlockGroupSc a) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTextBlockGroup_disconnectNotify cobj_x0 cstr_x1

instance Qevent (QTextBlockGroup ()) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextBlockGroup_event_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTextBlockGroup_event_h" qtc_QTextBlockGroup_event_h :: Ptr (TQTextBlockGroup a) -> Ptr (TQEvent t1) -> IO CBool

instance Qevent (QTextBlockGroupSc a) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextBlockGroup_event_h cobj_x0 cobj_x1

instance QeventFilter (QTextBlockGroup ()) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QTextBlockGroup_eventFilter_h cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QTextBlockGroup_eventFilter_h" qtc_QTextBlockGroup_eventFilter_h :: Ptr (TQTextBlockGroup a) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO CBool

instance QeventFilter (QTextBlockGroupSc a) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QTextBlockGroup_eventFilter_h cobj_x0 cobj_x1 cobj_x2

instance Qreceivers (QTextBlockGroup ()) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTextBlockGroup_receivers cobj_x0 cstr_x1

foreign import ccall "qtc_QTextBlockGroup_receivers" qtc_QTextBlockGroup_receivers :: Ptr (TQTextBlockGroup a) -> CWString -> IO CInt

instance Qreceivers (QTextBlockGroupSc a) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTextBlockGroup_receivers cobj_x0 cstr_x1

instance Qsender (QTextBlockGroup ()) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextBlockGroup_sender cobj_x0

foreign import ccall "qtc_QTextBlockGroup_sender" qtc_QTextBlockGroup_sender :: Ptr (TQTextBlockGroup a) -> IO (Ptr (TQObject ()))

instance Qsender (QTextBlockGroupSc a) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextBlockGroup_sender cobj_x0

instance QtimerEvent (QTextBlockGroup ()) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextBlockGroup_timerEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTextBlockGroup_timerEvent" qtc_QTextBlockGroup_timerEvent :: Ptr (TQTextBlockGroup a) -> Ptr (TQTimerEvent t1) -> IO ()

instance QtimerEvent (QTextBlockGroupSc a) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextBlockGroup_timerEvent cobj_x0 cobj_x1

