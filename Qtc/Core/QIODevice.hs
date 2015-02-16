{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QIODevice.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:31
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Core.QIODevice (
  isOpen
  ,isTextModeEnabled
  ,openMode
  ,peek
  ,setTextModeEnabled
  ,Qwrite(..)
  ,qIODevice_delete
  ,qIODevice_deleteLater
  )
  where

import Foreign.C.Types
import Qth.ClassTypes.Core
import Qtc.Enums.Base
import Qtc.Enums.Core.QIODevice

import Qtc.Classes.Base
import Qtc.Classes.Qccs
import Qtc.Classes.Core
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core

instance QuserMethod (QIODevice ()) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QIODevice_userMethod cobj_qobj (toCInt evid)

foreign import ccall "qtc_QIODevice_userMethod" qtc_QIODevice_userMethod :: Ptr (TQIODevice a) -> CInt -> IO ()

instance QuserMethod (QIODeviceSc a) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QIODevice_userMethod cobj_qobj (toCInt evid)

instance QuserMethod (QIODevice ()) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QIODevice_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

foreign import ccall "qtc_QIODevice_userMethodVariant" qtc_QIODevice_userMethodVariant :: Ptr (TQIODevice a) -> CInt -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))

instance QuserMethod (QIODeviceSc a) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QIODevice_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

instance QatEnd (QIODevice ()) (()) where
 atEnd x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QIODevice_atEnd_h cobj_x0

foreign import ccall "qtc_QIODevice_atEnd_h" qtc_QIODevice_atEnd_h :: Ptr (TQIODevice a) -> IO CBool

instance QatEnd (QIODeviceSc a) (()) where
 atEnd x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QIODevice_atEnd_h cobj_x0

instance QbytesAvailable (QIODevice ()) (()) where
 bytesAvailable x0 ()
  = withLongLongResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QIODevice_bytesAvailable_h cobj_x0

foreign import ccall "qtc_QIODevice_bytesAvailable_h" qtc_QIODevice_bytesAvailable_h :: Ptr (TQIODevice a) -> IO CLLong

instance QbytesAvailable (QIODeviceSc a) (()) where
 bytesAvailable x0 ()
  = withLongLongResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QIODevice_bytesAvailable_h cobj_x0

instance QbytesToWrite (QIODevice ()) (()) where
 bytesToWrite x0 ()
  = withLongLongResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QIODevice_bytesToWrite_h cobj_x0

foreign import ccall "qtc_QIODevice_bytesToWrite_h" qtc_QIODevice_bytesToWrite_h :: Ptr (TQIODevice a) -> IO CLLong

instance QbytesToWrite (QIODeviceSc a) (()) where
 bytesToWrite x0 ()
  = withLongLongResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QIODevice_bytesToWrite_h cobj_x0

instance QcanReadLine (QIODevice ()) (()) where
 canReadLine x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QIODevice_canReadLine_h cobj_x0

foreign import ccall "qtc_QIODevice_canReadLine_h" qtc_QIODevice_canReadLine_h :: Ptr (TQIODevice a) -> IO CBool

instance QcanReadLine (QIODeviceSc a) (()) where
 canReadLine x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QIODevice_canReadLine_h cobj_x0

instance Qclose (QIODevice ()) (()) (IO ()) where
 close x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QIODevice_close_h cobj_x0

foreign import ccall "qtc_QIODevice_close_h" qtc_QIODevice_close_h :: Ptr (TQIODevice a) -> IO ()

instance Qclose (QIODeviceSc a) (()) (IO ()) where
 close x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QIODevice_close_h cobj_x0

instance QerrorString (QIODevice a) (()) where
 errorString x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QIODevice_errorString cobj_x0

foreign import ccall "qtc_QIODevice_errorString" qtc_QIODevice_errorString :: Ptr (TQIODevice a) -> IO (Ptr (TQString ()))

isOpen :: QIODevice a -> (()) -> IO (Bool)
isOpen x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QIODevice_isOpen cobj_x0

foreign import ccall "qtc_QIODevice_isOpen" qtc_QIODevice_isOpen :: Ptr (TQIODevice a) -> IO CBool

instance QisReadable (QIODevice a) (()) where
 isReadable x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QIODevice_isReadable cobj_x0

foreign import ccall "qtc_QIODevice_isReadable" qtc_QIODevice_isReadable :: Ptr (TQIODevice a) -> IO CBool

instance QisSequential (QIODevice ()) (()) where
 isSequential x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QIODevice_isSequential_h cobj_x0

foreign import ccall "qtc_QIODevice_isSequential_h" qtc_QIODevice_isSequential_h :: Ptr (TQIODevice a) -> IO CBool

instance QisSequential (QIODeviceSc a) (()) where
 isSequential x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QIODevice_isSequential_h cobj_x0

isTextModeEnabled :: QIODevice a -> (()) -> IO (Bool)
isTextModeEnabled x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QIODevice_isTextModeEnabled cobj_x0

foreign import ccall "qtc_QIODevice_isTextModeEnabled" qtc_QIODevice_isTextModeEnabled :: Ptr (TQIODevice a) -> IO CBool

instance QisWritable (QIODevice a) (()) where
 isWritable x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QIODevice_isWritable cobj_x0

foreign import ccall "qtc_QIODevice_isWritable" qtc_QIODevice_isWritable :: Ptr (TQIODevice a) -> IO CBool

instance Qopen (QIODevice ()) ((OpenMode)) where
 open x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QIODevice_open_h cobj_x0 (toCLong $ qFlags_toInt x1)

foreign import ccall "qtc_QIODevice_open_h" qtc_QIODevice_open_h :: Ptr (TQIODevice a) -> CLong -> IO CBool

instance Qopen (QIODeviceSc a) ((OpenMode)) where
 open x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QIODevice_open_h cobj_x0 (toCLong $ qFlags_toInt x1)

openMode :: QIODevice a -> (()) -> IO (OpenMode)
openMode x0 ()
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QIODevice_openMode cobj_x0

foreign import ccall "qtc_QIODevice_openMode" qtc_QIODevice_openMode :: Ptr (TQIODevice a) -> IO CLong

peek :: QIODevice a -> ((Int)) -> IO (String)
peek x0 (x1)
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QIODevice_peek cobj_x0 (toCLLong x1)

foreign import ccall "qtc_QIODevice_peek" qtc_QIODevice_peek :: Ptr (TQIODevice a) -> CLLong -> IO (Ptr (TQString ()))

instance Qpos (QIODevice ()) (()) (IO (Int)) where
 pos x0 ()
  = withLongLongResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QIODevice_pos_h cobj_x0

foreign import ccall "qtc_QIODevice_pos_h" qtc_QIODevice_pos_h :: Ptr (TQIODevice a) -> IO CLLong

instance Qpos (QIODeviceSc a) (()) (IO (Int)) where
 pos x0 ()
  = withLongLongResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QIODevice_pos_h cobj_x0

instance Qqread (QIODevice a) ((Int)) where
 qread x0 (x1)
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QIODevice_read cobj_x0 (toCLLong x1)

foreign import ccall "qtc_QIODevice_read" qtc_QIODevice_read :: Ptr (TQIODevice a) -> CLLong -> IO (Ptr (TQString ()))

instance QreadAll (QIODevice a) (()) where
 readAll x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QIODevice_readAll cobj_x0

foreign import ccall "qtc_QIODevice_readAll" qtc_QIODevice_readAll :: Ptr (TQIODevice a) -> IO (Ptr (TQString ()))

instance QreadLine (QIODevice a) (()) where
 readLine x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QIODevice_readLine cobj_x0

foreign import ccall "qtc_QIODevice_readLine" qtc_QIODevice_readLine :: Ptr (TQIODevice a) -> IO (Ptr (TQString ()))

instance QreadLine (QIODevice a) ((Int)) where
 readLine x0 (x1)
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QIODevice_readLine1 cobj_x0 (toCLLong x1)

foreign import ccall "qtc_QIODevice_readLine1" qtc_QIODevice_readLine1 :: Ptr (TQIODevice a) -> CLLong -> IO (Ptr (TQString ()))

instance Qreset (QIODevice ()) (()) (IO (Bool)) where
 reset x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QIODevice_reset_h cobj_x0

foreign import ccall "qtc_QIODevice_reset_h" qtc_QIODevice_reset_h :: Ptr (TQIODevice a) -> IO CBool

instance Qreset (QIODeviceSc a) (()) (IO (Bool)) where
 reset x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QIODevice_reset_h cobj_x0

instance Qseek (QIODevice ()) ((Int)) where
 seek x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QIODevice_seek_h cobj_x0 (toCLLong x1)

foreign import ccall "qtc_QIODevice_seek_h" qtc_QIODevice_seek_h :: Ptr (TQIODevice a) -> CLLong -> IO CBool

instance Qseek (QIODeviceSc a) ((Int)) where
 seek x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QIODevice_seek_h cobj_x0 (toCLLong x1)

instance QsetErrorString (QIODevice ()) ((String)) where
 setErrorString x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QIODevice_setErrorString cobj_x0 cstr_x1

foreign import ccall "qtc_QIODevice_setErrorString" qtc_QIODevice_setErrorString :: Ptr (TQIODevice a) -> CWString -> IO ()

instance QsetErrorString (QIODeviceSc a) ((String)) where
 setErrorString x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QIODevice_setErrorString cobj_x0 cstr_x1

instance QsetOpenMode (QIODevice ()) ((OpenMode)) where
 setOpenMode x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QIODevice_setOpenMode cobj_x0 (toCLong $ qFlags_toInt x1)

foreign import ccall "qtc_QIODevice_setOpenMode" qtc_QIODevice_setOpenMode :: Ptr (TQIODevice a) -> CLong -> IO ()

instance QsetOpenMode (QIODeviceSc a) ((OpenMode)) where
 setOpenMode x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QIODevice_setOpenMode cobj_x0 (toCLong $ qFlags_toInt x1)

setTextModeEnabled :: QIODevice a -> ((Bool)) -> IO ()
setTextModeEnabled x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QIODevice_setTextModeEnabled cobj_x0 (toCBool x1)

foreign import ccall "qtc_QIODevice_setTextModeEnabled" qtc_QIODevice_setTextModeEnabled :: Ptr (TQIODevice a) -> CBool -> IO ()

instance Qqsize (QIODevice ()) (()) (IO (Int)) where
 qsize x0 ()
  = withLongLongResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QIODevice_size_h cobj_x0

foreign import ccall "qtc_QIODevice_size_h" qtc_QIODevice_size_h :: Ptr (TQIODevice a) -> IO CLLong

instance Qqsize (QIODeviceSc a) (()) (IO (Int)) where
 qsize x0 ()
  = withLongLongResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QIODevice_size_h cobj_x0

instance QwaitForBytesWritten (QIODevice ()) ((Int)) where
 waitForBytesWritten x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QIODevice_waitForBytesWritten_h cobj_x0 (toCInt x1)

foreign import ccall "qtc_QIODevice_waitForBytesWritten_h" qtc_QIODevice_waitForBytesWritten_h :: Ptr (TQIODevice a) -> CInt -> IO CBool

instance QwaitForBytesWritten (QIODeviceSc a) ((Int)) where
 waitForBytesWritten x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QIODevice_waitForBytesWritten_h cobj_x0 (toCInt x1)

instance QwaitForReadyRead (QIODevice ()) ((Int)) where
 waitForReadyRead x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QIODevice_waitForReadyRead_h cobj_x0 (toCInt x1)

foreign import ccall "qtc_QIODevice_waitForReadyRead_h" qtc_QIODevice_waitForReadyRead_h :: Ptr (TQIODevice a) -> CInt -> IO CBool

instance QwaitForReadyRead (QIODeviceSc a) ((Int)) where
 waitForReadyRead x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QIODevice_waitForReadyRead_h cobj_x0 (toCInt x1)

class Qwrite x1 where
 write :: QIODevice a -> x1 -> IO (Int)

instance Qwrite ((String)) where
 write x0 (x1)
  = withLongLongResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QIODevice_write cobj_x0 cstr_x1

foreign import ccall "qtc_QIODevice_write" qtc_QIODevice_write :: Ptr (TQIODevice a) -> CWString -> IO CLLong

instance Qwrite ((String, Int)) where
 write x0 (x1, x2)
  = withLongLongResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QIODevice_write1 cobj_x0 cstr_x1 (toCLLong x2)

foreign import ccall "qtc_QIODevice_write1" qtc_QIODevice_write1 :: Ptr (TQIODevice a) -> CWString -> CLLong -> IO CLLong

instance QwriteData (QIODevice ()) ((String, Int)) where
 writeData x0 (x1, x2)
  = withLongLongResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QIODevice_writeData_h cobj_x0 cstr_x1 (toCLLong x2)

foreign import ccall "qtc_QIODevice_writeData_h" qtc_QIODevice_writeData_h :: Ptr (TQIODevice a) -> CWString -> CLLong -> IO CLLong

instance QwriteData (QIODeviceSc a) ((String, Int)) where
 writeData x0 (x1, x2)
  = withLongLongResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QIODevice_writeData_h cobj_x0 cstr_x1 (toCLLong x2)

qIODevice_delete :: QIODevice a -> IO ()
qIODevice_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QIODevice_delete cobj_x0

foreign import ccall "qtc_QIODevice_delete" qtc_QIODevice_delete :: Ptr (TQIODevice a) -> IO ()

qIODevice_deleteLater :: QIODevice a -> IO ()
qIODevice_deleteLater x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QIODevice_deleteLater cobj_x0

foreign import ccall "qtc_QIODevice_deleteLater" qtc_QIODevice_deleteLater :: Ptr (TQIODevice a) -> IO ()

instance QchildEvent (QIODevice ()) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QIODevice_childEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QIODevice_childEvent" qtc_QIODevice_childEvent :: Ptr (TQIODevice a) -> Ptr (TQChildEvent t1) -> IO ()

instance QchildEvent (QIODeviceSc a) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QIODevice_childEvent cobj_x0 cobj_x1

instance QconnectNotify (QIODevice ()) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QIODevice_connectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QIODevice_connectNotify" qtc_QIODevice_connectNotify :: Ptr (TQIODevice a) -> CWString -> IO ()

instance QconnectNotify (QIODeviceSc a) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QIODevice_connectNotify cobj_x0 cstr_x1

instance QcustomEvent (QIODevice ()) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QIODevice_customEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QIODevice_customEvent" qtc_QIODevice_customEvent :: Ptr (TQIODevice a) -> Ptr (TQEvent t1) -> IO ()

instance QcustomEvent (QIODeviceSc a) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QIODevice_customEvent cobj_x0 cobj_x1

instance QdisconnectNotify (QIODevice ()) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QIODevice_disconnectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QIODevice_disconnectNotify" qtc_QIODevice_disconnectNotify :: Ptr (TQIODevice a) -> CWString -> IO ()

instance QdisconnectNotify (QIODeviceSc a) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QIODevice_disconnectNotify cobj_x0 cstr_x1

instance Qevent (QIODevice ()) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QIODevice_event_h cobj_x0 cobj_x1

foreign import ccall "qtc_QIODevice_event_h" qtc_QIODevice_event_h :: Ptr (TQIODevice a) -> Ptr (TQEvent t1) -> IO CBool

instance Qevent (QIODeviceSc a) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QIODevice_event_h cobj_x0 cobj_x1

instance QeventFilter (QIODevice ()) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QIODevice_eventFilter_h cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QIODevice_eventFilter_h" qtc_QIODevice_eventFilter_h :: Ptr (TQIODevice a) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO CBool

instance QeventFilter (QIODeviceSc a) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QIODevice_eventFilter_h cobj_x0 cobj_x1 cobj_x2

instance Qreceivers (QIODevice ()) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QIODevice_receivers cobj_x0 cstr_x1

foreign import ccall "qtc_QIODevice_receivers" qtc_QIODevice_receivers :: Ptr (TQIODevice a) -> CWString -> IO CInt

instance Qreceivers (QIODeviceSc a) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QIODevice_receivers cobj_x0 cstr_x1

instance Qsender (QIODevice ()) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QIODevice_sender cobj_x0

foreign import ccall "qtc_QIODevice_sender" qtc_QIODevice_sender :: Ptr (TQIODevice a) -> IO (Ptr (TQObject ()))

instance Qsender (QIODeviceSc a) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QIODevice_sender cobj_x0

instance QtimerEvent (QIODevice ()) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QIODevice_timerEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QIODevice_timerEvent" qtc_QIODevice_timerEvent :: Ptr (TQIODevice a) -> Ptr (TQTimerEvent t1) -> IO ()

instance QtimerEvent (QIODeviceSc a) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QIODevice_timerEvent cobj_x0 cobj_x1

