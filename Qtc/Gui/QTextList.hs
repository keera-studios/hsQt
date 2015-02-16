{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QTextList.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:14
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QTextList (
  qTextList
  ,add
  ,itemNumber
  ,qTextList_delete
  ,qTextList_deleteLater
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

instance QuserMethod (QTextList ()) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QTextList_userMethod cobj_qobj (toCInt evid)

foreign import ccall "qtc_QTextList_userMethod" qtc_QTextList_userMethod :: Ptr (TQTextList a) -> CInt -> IO ()

instance QuserMethod (QTextListSc a) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QTextList_userMethod cobj_qobj (toCInt evid)

instance QuserMethod (QTextList ()) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QTextList_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

foreign import ccall "qtc_QTextList_userMethodVariant" qtc_QTextList_userMethodVariant :: Ptr (TQTextList a) -> CInt -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))

instance QuserMethod (QTextListSc a) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QTextList_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

qTextList :: (QTextDocument t1) -> IO (QTextList ())
qTextList (x1)
  = withQTextListResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextList cobj_x1

foreign import ccall "qtc_QTextList" qtc_QTextList :: Ptr (TQTextDocument t1) -> IO (Ptr (TQTextList ()))

add :: QTextList a -> ((QTextBlock t1)) -> IO ()
add x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextList_add cobj_x0 cobj_x1

foreign import ccall "qtc_QTextList_add" qtc_QTextList_add :: Ptr (TQTextList a) -> Ptr (TQTextBlock t1) -> IO ()

instance Qcount (QTextList a) (()) where
 count x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextList_count cobj_x0

foreign import ccall "qtc_QTextList_count" qtc_QTextList_count :: Ptr (TQTextList a) -> IO CInt

instance Qformat (QTextList a) (()) (IO (QTextListFormat ())) where
 format x0 ()
  = withQTextListFormatResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextList_format cobj_x0

foreign import ccall "qtc_QTextList_format" qtc_QTextList_format :: Ptr (TQTextList a) -> IO (Ptr (TQTextListFormat ()))

instance QqisEmpty (QTextList a) (()) where
 qisEmpty x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextList_isEmpty cobj_x0

foreign import ccall "qtc_QTextList_isEmpty" qtc_QTextList_isEmpty :: Ptr (TQTextList a) -> IO CBool

instance Qitem (QTextList a) ((Int)) (IO (QTextBlock ())) where
 item x0 (x1)
  = withQTextBlockResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextList_item cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTextList_item" qtc_QTextList_item :: Ptr (TQTextList a) -> CInt -> IO (Ptr (TQTextBlock ()))

itemNumber :: QTextList a -> ((QTextBlock t1)) -> IO (Int)
itemNumber x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextList_itemNumber cobj_x0 cobj_x1

foreign import ccall "qtc_QTextList_itemNumber" qtc_QTextList_itemNumber :: Ptr (TQTextList a) -> Ptr (TQTextBlock t1) -> IO CInt

instance QitemText (QTextList a) ((QTextBlock t1)) where
 itemText x0 (x1)
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextList_itemText cobj_x0 cobj_x1

foreign import ccall "qtc_QTextList_itemText" qtc_QTextList_itemText :: Ptr (TQTextList a) -> Ptr (TQTextBlock t1) -> IO (Ptr (TQString ()))

instance Qremove (QTextList a) ((QTextBlock t1)) (IO ()) where
 remove x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextList_remove cobj_x0 cobj_x1

foreign import ccall "qtc_QTextList_remove" qtc_QTextList_remove :: Ptr (TQTextList a) -> Ptr (TQTextBlock t1) -> IO ()

instance QremoveItem (QTextList a) ((Int)) where
 removeItem x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextList_removeItem cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTextList_removeItem" qtc_QTextList_removeItem :: Ptr (TQTextList a) -> CInt -> IO ()

instance QsetFormat (QTextList a) ((QTextListFormat t1)) where
 setFormat x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextList_setFormat cobj_x0 cobj_x1

foreign import ccall "qtc_QTextList_setFormat" qtc_QTextList_setFormat :: Ptr (TQTextList a) -> Ptr (TQTextListFormat t1) -> IO ()

qTextList_delete :: QTextList a -> IO ()
qTextList_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextList_delete cobj_x0

foreign import ccall "qtc_QTextList_delete" qtc_QTextList_delete :: Ptr (TQTextList a) -> IO ()

qTextList_deleteLater :: QTextList a -> IO ()
qTextList_deleteLater x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextList_deleteLater cobj_x0

foreign import ccall "qtc_QTextList_deleteLater" qtc_QTextList_deleteLater :: Ptr (TQTextList a) -> IO ()

instance QblockFormatChanged (QTextList ()) ((QTextBlock t1)) where
 blockFormatChanged x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextList_blockFormatChanged_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTextList_blockFormatChanged_h" qtc_QTextList_blockFormatChanged_h :: Ptr (TQTextList a) -> Ptr (TQTextBlock t1) -> IO ()

instance QblockFormatChanged (QTextListSc a) ((QTextBlock t1)) where
 blockFormatChanged x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextList_blockFormatChanged_h cobj_x0 cobj_x1

instance QblockInserted (QTextList ()) ((QTextBlock t1)) where
 blockInserted x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextList_blockInserted_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTextList_blockInserted_h" qtc_QTextList_blockInserted_h :: Ptr (TQTextList a) -> Ptr (TQTextBlock t1) -> IO ()

instance QblockInserted (QTextListSc a) ((QTextBlock t1)) where
 blockInserted x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextList_blockInserted_h cobj_x0 cobj_x1

instance QblockList (QTextList ()) (()) where
 blockList x0 ()
  = withQListObjectRefResult $ \arr ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextList_blockList cobj_x0 arr

foreign import ccall "qtc_QTextList_blockList" qtc_QTextList_blockList :: Ptr (TQTextList a) -> Ptr (Ptr (TQTextBlock ())) -> IO CInt

instance QblockList (QTextListSc a) (()) where
 blockList x0 ()
  = withQListObjectRefResult $ \arr ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextList_blockList cobj_x0 arr

instance QblockRemoved (QTextList ()) ((QTextBlock t1)) where
 blockRemoved x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextList_blockRemoved_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTextList_blockRemoved_h" qtc_QTextList_blockRemoved_h :: Ptr (TQTextList a) -> Ptr (TQTextBlock t1) -> IO ()

instance QblockRemoved (QTextListSc a) ((QTextBlock t1)) where
 blockRemoved x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextList_blockRemoved_h cobj_x0 cobj_x1

instance QchildEvent (QTextList ()) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextList_childEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTextList_childEvent" qtc_QTextList_childEvent :: Ptr (TQTextList a) -> Ptr (TQChildEvent t1) -> IO ()

instance QchildEvent (QTextListSc a) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextList_childEvent cobj_x0 cobj_x1

instance QconnectNotify (QTextList ()) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTextList_connectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QTextList_connectNotify" qtc_QTextList_connectNotify :: Ptr (TQTextList a) -> CWString -> IO ()

instance QconnectNotify (QTextListSc a) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTextList_connectNotify cobj_x0 cstr_x1

instance QcustomEvent (QTextList ()) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextList_customEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTextList_customEvent" qtc_QTextList_customEvent :: Ptr (TQTextList a) -> Ptr (TQEvent t1) -> IO ()

instance QcustomEvent (QTextListSc a) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextList_customEvent cobj_x0 cobj_x1

instance QdisconnectNotify (QTextList ()) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTextList_disconnectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QTextList_disconnectNotify" qtc_QTextList_disconnectNotify :: Ptr (TQTextList a) -> CWString -> IO ()

instance QdisconnectNotify (QTextListSc a) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTextList_disconnectNotify cobj_x0 cstr_x1

instance Qevent (QTextList ()) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextList_event_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTextList_event_h" qtc_QTextList_event_h :: Ptr (TQTextList a) -> Ptr (TQEvent t1) -> IO CBool

instance Qevent (QTextListSc a) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextList_event_h cobj_x0 cobj_x1

instance QeventFilter (QTextList ()) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QTextList_eventFilter_h cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QTextList_eventFilter_h" qtc_QTextList_eventFilter_h :: Ptr (TQTextList a) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO CBool

instance QeventFilter (QTextListSc a) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QTextList_eventFilter_h cobj_x0 cobj_x1 cobj_x2

instance Qreceivers (QTextList ()) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTextList_receivers cobj_x0 cstr_x1

foreign import ccall "qtc_QTextList_receivers" qtc_QTextList_receivers :: Ptr (TQTextList a) -> CWString -> IO CInt

instance Qreceivers (QTextListSc a) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTextList_receivers cobj_x0 cstr_x1

instance Qsender (QTextList ()) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextList_sender cobj_x0

foreign import ccall "qtc_QTextList_sender" qtc_QTextList_sender :: Ptr (TQTextList a) -> IO (Ptr (TQObject ()))

instance Qsender (QTextListSc a) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextList_sender cobj_x0

instance QtimerEvent (QTextList ()) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextList_timerEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTextList_timerEvent" qtc_QTextList_timerEvent :: Ptr (TQTextList a) -> Ptr (TQTimerEvent t1) -> IO ()

instance QtimerEvent (QTextListSc a) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextList_timerEvent cobj_x0 cobj_x1

