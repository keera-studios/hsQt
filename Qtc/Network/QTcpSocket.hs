{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QTcpSocket.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:31
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Network.QTcpSocket (
  QqTcpSocket(..)
  ,qTcpSocket_delete
  ,qTcpSocket_deleteLater
  )
  where

import Foreign.C.Types
import Qth.ClassTypes.Core
import Qtc.Enums.Base
import Qtc.Enums.Core.QIODevice
import Qtc.Enums.Network.QAbstractSocket

import Qtc.Classes.Base
import Qtc.Classes.Qccs
import Qtc.Classes.Core
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core
import Qtc.Classes.Network
import Qtc.ClassTypes.Network

instance QuserMethod (QTcpSocket ()) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QTcpSocket_userMethod cobj_qobj (toCInt evid)

foreign import ccall "qtc_QTcpSocket_userMethod" qtc_QTcpSocket_userMethod :: Ptr (TQTcpSocket a) -> CInt -> IO ()

instance QuserMethod (QTcpSocketSc a) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QTcpSocket_userMethod cobj_qobj (toCInt evid)

instance QuserMethod (QTcpSocket ()) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QTcpSocket_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

foreign import ccall "qtc_QTcpSocket_userMethodVariant" qtc_QTcpSocket_userMethodVariant :: Ptr (TQTcpSocket a) -> CInt -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))

instance QuserMethod (QTcpSocketSc a) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QTcpSocket_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

class QqTcpSocket x1 where
  qTcpSocket :: x1 -> IO (QTcpSocket ())

instance QqTcpSocket (()) where
 qTcpSocket ()
  = withQTcpSocketResult $
    qtc_QTcpSocket

foreign import ccall "qtc_QTcpSocket" qtc_QTcpSocket :: IO (Ptr (TQTcpSocket ()))

instance QqTcpSocket ((QObject t1)) where
 qTcpSocket (x1)
  = withQTcpSocketResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTcpSocket1 cobj_x1

foreign import ccall "qtc_QTcpSocket1" qtc_QTcpSocket1 :: Ptr (TQObject t1) -> IO (Ptr (TQTcpSocket ()))

qTcpSocket_delete :: QTcpSocket a -> IO ()
qTcpSocket_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTcpSocket_delete cobj_x0

foreign import ccall "qtc_QTcpSocket_delete" qtc_QTcpSocket_delete :: Ptr (TQTcpSocket a) -> IO ()

qTcpSocket_deleteLater :: QTcpSocket a -> IO ()
qTcpSocket_deleteLater x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTcpSocket_deleteLater cobj_x0

foreign import ccall "qtc_QTcpSocket_deleteLater" qtc_QTcpSocket_deleteLater :: Ptr (TQTcpSocket a) -> IO ()

instance QatEnd (QTcpSocket ()) (()) where
 atEnd x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTcpSocket_atEnd_h cobj_x0

foreign import ccall "qtc_QTcpSocket_atEnd_h" qtc_QTcpSocket_atEnd_h :: Ptr (TQTcpSocket a) -> IO CBool

instance QatEnd (QTcpSocketSc a) (()) where
 atEnd x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTcpSocket_atEnd_h cobj_x0

instance QbytesAvailable (QTcpSocket ()) (()) where
 bytesAvailable x0 ()
  = withLongLongResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTcpSocket_bytesAvailable_h cobj_x0

foreign import ccall "qtc_QTcpSocket_bytesAvailable_h" qtc_QTcpSocket_bytesAvailable_h :: Ptr (TQTcpSocket a) -> IO CLLong

instance QbytesAvailable (QTcpSocketSc a) (()) where
 bytesAvailable x0 ()
  = withLongLongResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTcpSocket_bytesAvailable_h cobj_x0

instance QbytesToWrite (QTcpSocket ()) (()) where
 bytesToWrite x0 ()
  = withLongLongResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTcpSocket_bytesToWrite_h cobj_x0

foreign import ccall "qtc_QTcpSocket_bytesToWrite_h" qtc_QTcpSocket_bytesToWrite_h :: Ptr (TQTcpSocket a) -> IO CLLong

instance QbytesToWrite (QTcpSocketSc a) (()) where
 bytesToWrite x0 ()
  = withLongLongResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTcpSocket_bytesToWrite_h cobj_x0

instance QcanReadLine (QTcpSocket ()) (()) where
 canReadLine x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTcpSocket_canReadLine_h cobj_x0

foreign import ccall "qtc_QTcpSocket_canReadLine_h" qtc_QTcpSocket_canReadLine_h :: Ptr (TQTcpSocket a) -> IO CBool

instance QcanReadLine (QTcpSocketSc a) (()) where
 canReadLine x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTcpSocket_canReadLine_h cobj_x0

instance Qclose (QTcpSocket ()) (()) (IO ()) where
 close x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTcpSocket_close_h cobj_x0

foreign import ccall "qtc_QTcpSocket_close_h" qtc_QTcpSocket_close_h :: Ptr (TQTcpSocket a) -> IO ()

instance Qclose (QTcpSocketSc a) (()) (IO ()) where
 close x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTcpSocket_close_h cobj_x0

instance QconnectToHostImplementation (QTcpSocket ()) ((String, Int)) where
 connectToHostImplementation x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTcpSocket_connectToHostImplementation cobj_x0 cstr_x1 (toCUShort x2)

foreign import ccall "qtc_QTcpSocket_connectToHostImplementation" qtc_QTcpSocket_connectToHostImplementation :: Ptr (TQTcpSocket a) -> CWString -> CUShort -> IO ()

instance QconnectToHostImplementation (QTcpSocketSc a) ((String, Int)) where
 connectToHostImplementation x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTcpSocket_connectToHostImplementation cobj_x0 cstr_x1 (toCUShort x2)

instance QconnectToHostImplementation (QTcpSocket ()) ((String, Int, OpenMode)) where
 connectToHostImplementation x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTcpSocket_connectToHostImplementation1 cobj_x0 cstr_x1 (toCUShort x2) (toCLong $ qFlags_toInt x3)

foreign import ccall "qtc_QTcpSocket_connectToHostImplementation1" qtc_QTcpSocket_connectToHostImplementation1 :: Ptr (TQTcpSocket a) -> CWString -> CUShort -> CLong -> IO ()

instance QconnectToHostImplementation (QTcpSocketSc a) ((String, Int, OpenMode)) where
 connectToHostImplementation x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTcpSocket_connectToHostImplementation1 cobj_x0 cstr_x1 (toCUShort x2) (toCLong $ qFlags_toInt x3)

instance QdisconnectFromHostImplementation (QTcpSocket ()) (()) where
 disconnectFromHostImplementation x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTcpSocket_disconnectFromHostImplementation cobj_x0

foreign import ccall "qtc_QTcpSocket_disconnectFromHostImplementation" qtc_QTcpSocket_disconnectFromHostImplementation :: Ptr (TQTcpSocket a) -> IO ()

instance QdisconnectFromHostImplementation (QTcpSocketSc a) (()) where
 disconnectFromHostImplementation x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTcpSocket_disconnectFromHostImplementation cobj_x0

instance QisSequential (QTcpSocket ()) (()) where
 isSequential x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTcpSocket_isSequential_h cobj_x0

foreign import ccall "qtc_QTcpSocket_isSequential_h" qtc_QTcpSocket_isSequential_h :: Ptr (TQTcpSocket a) -> IO CBool

instance QisSequential (QTcpSocketSc a) (()) where
 isSequential x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTcpSocket_isSequential_h cobj_x0

instance QqisValid (QTcpSocket ()) (()) where
 qisValid x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTcpSocket_isValid cobj_x0

foreign import ccall "qtc_QTcpSocket_isValid" qtc_QTcpSocket_isValid :: Ptr (TQTcpSocket a) -> IO CBool

instance QqisValid (QTcpSocketSc a) (()) where
 qisValid x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTcpSocket_isValid cobj_x0

instance QsetLocalAddress (QTcpSocket ()) ((QHostAddress t1)) where
 setLocalAddress x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTcpSocket_setLocalAddress cobj_x0 cobj_x1

foreign import ccall "qtc_QTcpSocket_setLocalAddress" qtc_QTcpSocket_setLocalAddress :: Ptr (TQTcpSocket a) -> Ptr (TQHostAddress t1) -> IO ()

instance QsetLocalAddress (QTcpSocketSc a) ((QHostAddress t1)) where
 setLocalAddress x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTcpSocket_setLocalAddress cobj_x0 cobj_x1

instance QsetLocalPort (QTcpSocket ()) ((Int)) where
 setLocalPort x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTcpSocket_setLocalPort cobj_x0 (toCUShort x1)

foreign import ccall "qtc_QTcpSocket_setLocalPort" qtc_QTcpSocket_setLocalPort :: Ptr (TQTcpSocket a) -> CUShort -> IO ()

instance QsetLocalPort (QTcpSocketSc a) ((Int)) where
 setLocalPort x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTcpSocket_setLocalPort cobj_x0 (toCUShort x1)

instance QsetPeerAddress (QTcpSocket ()) ((QHostAddress t1)) where
 setPeerAddress x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTcpSocket_setPeerAddress cobj_x0 cobj_x1

foreign import ccall "qtc_QTcpSocket_setPeerAddress" qtc_QTcpSocket_setPeerAddress :: Ptr (TQTcpSocket a) -> Ptr (TQHostAddress t1) -> IO ()

instance QsetPeerAddress (QTcpSocketSc a) ((QHostAddress t1)) where
 setPeerAddress x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTcpSocket_setPeerAddress cobj_x0 cobj_x1

instance QsetPeerName (QTcpSocket ()) ((String)) where
 setPeerName x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTcpSocket_setPeerName cobj_x0 cstr_x1

foreign import ccall "qtc_QTcpSocket_setPeerName" qtc_QTcpSocket_setPeerName :: Ptr (TQTcpSocket a) -> CWString -> IO ()

instance QsetPeerName (QTcpSocketSc a) ((String)) where
 setPeerName x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTcpSocket_setPeerName cobj_x0 cstr_x1

instance QsetPeerPort (QTcpSocket ()) ((Int)) where
 setPeerPort x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTcpSocket_setPeerPort cobj_x0 (toCUShort x1)

foreign import ccall "qtc_QTcpSocket_setPeerPort" qtc_QTcpSocket_setPeerPort :: Ptr (TQTcpSocket a) -> CUShort -> IO ()

instance QsetPeerPort (QTcpSocketSc a) ((Int)) where
 setPeerPort x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTcpSocket_setPeerPort cobj_x0 (toCUShort x1)

instance QsetSocketError (QTcpSocket ()) ((SocketError)) where
 setSocketError x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTcpSocket_setSocketError cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QTcpSocket_setSocketError" qtc_QTcpSocket_setSocketError :: Ptr (TQTcpSocket a) -> CLong -> IO ()

instance QsetSocketError (QTcpSocketSc a) ((SocketError)) where
 setSocketError x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTcpSocket_setSocketError cobj_x0 (toCLong $ qEnum_toInt x1)

instance QsetSocketState (QTcpSocket ()) ((SocketState)) where
 setSocketState x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTcpSocket_setSocketState cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QTcpSocket_setSocketState" qtc_QTcpSocket_setSocketState :: Ptr (TQTcpSocket a) -> CLong -> IO ()

instance QsetSocketState (QTcpSocketSc a) ((SocketState)) where
 setSocketState x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTcpSocket_setSocketState cobj_x0 (toCLong $ qEnum_toInt x1)

instance QwaitForBytesWritten (QTcpSocket ()) (()) where
 waitForBytesWritten x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTcpSocket_waitForBytesWritten_h cobj_x0

foreign import ccall "qtc_QTcpSocket_waitForBytesWritten_h" qtc_QTcpSocket_waitForBytesWritten_h :: Ptr (TQTcpSocket a) -> IO CBool

instance QwaitForBytesWritten (QTcpSocketSc a) (()) where
 waitForBytesWritten x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTcpSocket_waitForBytesWritten_h cobj_x0

instance QwaitForBytesWritten (QTcpSocket ()) ((Int)) where
 waitForBytesWritten x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTcpSocket_waitForBytesWritten1_h cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTcpSocket_waitForBytesWritten1_h" qtc_QTcpSocket_waitForBytesWritten1_h :: Ptr (TQTcpSocket a) -> CInt -> IO CBool

instance QwaitForBytesWritten (QTcpSocketSc a) ((Int)) where
 waitForBytesWritten x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTcpSocket_waitForBytesWritten1_h cobj_x0 (toCInt x1)

instance QwaitForReadyRead (QTcpSocket ()) (()) where
 waitForReadyRead x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTcpSocket_waitForReadyRead_h cobj_x0

foreign import ccall "qtc_QTcpSocket_waitForReadyRead_h" qtc_QTcpSocket_waitForReadyRead_h :: Ptr (TQTcpSocket a) -> IO CBool

instance QwaitForReadyRead (QTcpSocketSc a) (()) where
 waitForReadyRead x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTcpSocket_waitForReadyRead_h cobj_x0

instance QwaitForReadyRead (QTcpSocket ()) ((Int)) where
 waitForReadyRead x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTcpSocket_waitForReadyRead1_h cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTcpSocket_waitForReadyRead1_h" qtc_QTcpSocket_waitForReadyRead1_h :: Ptr (TQTcpSocket a) -> CInt -> IO CBool

instance QwaitForReadyRead (QTcpSocketSc a) ((Int)) where
 waitForReadyRead x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTcpSocket_waitForReadyRead1_h cobj_x0 (toCInt x1)

instance QwriteData (QTcpSocket ()) ((String, Int)) where
 writeData x0 (x1, x2)
  = withLongLongResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTcpSocket_writeData cobj_x0 cstr_x1 (toCLLong x2)

foreign import ccall "qtc_QTcpSocket_writeData" qtc_QTcpSocket_writeData :: Ptr (TQTcpSocket a) -> CWString -> CLLong -> IO CLLong

instance QwriteData (QTcpSocketSc a) ((String, Int)) where
 writeData x0 (x1, x2)
  = withLongLongResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTcpSocket_writeData cobj_x0 cstr_x1 (toCLLong x2)

instance Qopen (QTcpSocket ()) ((OpenMode)) where
 open x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTcpSocket_open_h cobj_x0 (toCLong $ qFlags_toInt x1)

foreign import ccall "qtc_QTcpSocket_open_h" qtc_QTcpSocket_open_h :: Ptr (TQTcpSocket a) -> CLong -> IO CBool

instance Qopen (QTcpSocketSc a) ((OpenMode)) where
 open x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTcpSocket_open_h cobj_x0 (toCLong $ qFlags_toInt x1)

instance Qpos (QTcpSocket ()) (()) (IO (Int)) where
 pos x0 ()
  = withLongLongResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTcpSocket_pos_h cobj_x0

foreign import ccall "qtc_QTcpSocket_pos_h" qtc_QTcpSocket_pos_h :: Ptr (TQTcpSocket a) -> IO CLLong

instance Qpos (QTcpSocketSc a) (()) (IO (Int)) where
 pos x0 ()
  = withLongLongResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTcpSocket_pos_h cobj_x0

instance Qreset (QTcpSocket ()) (()) (IO (Bool)) where
 reset x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTcpSocket_reset_h cobj_x0

foreign import ccall "qtc_QTcpSocket_reset_h" qtc_QTcpSocket_reset_h :: Ptr (TQTcpSocket a) -> IO CBool

instance Qreset (QTcpSocketSc a) (()) (IO (Bool)) where
 reset x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTcpSocket_reset_h cobj_x0

instance Qseek (QTcpSocket ()) ((Int)) where
 seek x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTcpSocket_seek_h cobj_x0 (toCLLong x1)

foreign import ccall "qtc_QTcpSocket_seek_h" qtc_QTcpSocket_seek_h :: Ptr (TQTcpSocket a) -> CLLong -> IO CBool

instance Qseek (QTcpSocketSc a) ((Int)) where
 seek x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTcpSocket_seek_h cobj_x0 (toCLLong x1)

instance QsetErrorString (QTcpSocket ()) ((String)) where
 setErrorString x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTcpSocket_setErrorString cobj_x0 cstr_x1

foreign import ccall "qtc_QTcpSocket_setErrorString" qtc_QTcpSocket_setErrorString :: Ptr (TQTcpSocket a) -> CWString -> IO ()

instance QsetErrorString (QTcpSocketSc a) ((String)) where
 setErrorString x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTcpSocket_setErrorString cobj_x0 cstr_x1

instance QsetOpenMode (QTcpSocket ()) ((OpenMode)) where
 setOpenMode x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTcpSocket_setOpenMode cobj_x0 (toCLong $ qFlags_toInt x1)

foreign import ccall "qtc_QTcpSocket_setOpenMode" qtc_QTcpSocket_setOpenMode :: Ptr (TQTcpSocket a) -> CLong -> IO ()

instance QsetOpenMode (QTcpSocketSc a) ((OpenMode)) where
 setOpenMode x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTcpSocket_setOpenMode cobj_x0 (toCLong $ qFlags_toInt x1)

instance Qqsize (QTcpSocket ()) (()) (IO (Int)) where
 qsize x0 ()
  = withLongLongResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTcpSocket_size_h cobj_x0

foreign import ccall "qtc_QTcpSocket_size_h" qtc_QTcpSocket_size_h :: Ptr (TQTcpSocket a) -> IO CLLong

instance Qqsize (QTcpSocketSc a) (()) (IO (Int)) where
 qsize x0 ()
  = withLongLongResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTcpSocket_size_h cobj_x0

instance QchildEvent (QTcpSocket ()) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTcpSocket_childEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTcpSocket_childEvent" qtc_QTcpSocket_childEvent :: Ptr (TQTcpSocket a) -> Ptr (TQChildEvent t1) -> IO ()

instance QchildEvent (QTcpSocketSc a) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTcpSocket_childEvent cobj_x0 cobj_x1

instance QconnectNotify (QTcpSocket ()) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTcpSocket_connectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QTcpSocket_connectNotify" qtc_QTcpSocket_connectNotify :: Ptr (TQTcpSocket a) -> CWString -> IO ()

instance QconnectNotify (QTcpSocketSc a) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTcpSocket_connectNotify cobj_x0 cstr_x1

instance QcustomEvent (QTcpSocket ()) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTcpSocket_customEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTcpSocket_customEvent" qtc_QTcpSocket_customEvent :: Ptr (TQTcpSocket a) -> Ptr (TQEvent t1) -> IO ()

instance QcustomEvent (QTcpSocketSc a) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTcpSocket_customEvent cobj_x0 cobj_x1

instance QdisconnectNotify (QTcpSocket ()) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTcpSocket_disconnectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QTcpSocket_disconnectNotify" qtc_QTcpSocket_disconnectNotify :: Ptr (TQTcpSocket a) -> CWString -> IO ()

instance QdisconnectNotify (QTcpSocketSc a) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTcpSocket_disconnectNotify cobj_x0 cstr_x1

instance Qevent (QTcpSocket ()) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTcpSocket_event_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTcpSocket_event_h" qtc_QTcpSocket_event_h :: Ptr (TQTcpSocket a) -> Ptr (TQEvent t1) -> IO CBool

instance Qevent (QTcpSocketSc a) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTcpSocket_event_h cobj_x0 cobj_x1

instance QeventFilter (QTcpSocket ()) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QTcpSocket_eventFilter_h cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QTcpSocket_eventFilter_h" qtc_QTcpSocket_eventFilter_h :: Ptr (TQTcpSocket a) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO CBool

instance QeventFilter (QTcpSocketSc a) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QTcpSocket_eventFilter_h cobj_x0 cobj_x1 cobj_x2

instance Qreceivers (QTcpSocket ()) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTcpSocket_receivers cobj_x0 cstr_x1

foreign import ccall "qtc_QTcpSocket_receivers" qtc_QTcpSocket_receivers :: Ptr (TQTcpSocket a) -> CWString -> IO CInt

instance Qreceivers (QTcpSocketSc a) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTcpSocket_receivers cobj_x0 cstr_x1

instance Qsender (QTcpSocket ()) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTcpSocket_sender cobj_x0

foreign import ccall "qtc_QTcpSocket_sender" qtc_QTcpSocket_sender :: Ptr (TQTcpSocket a) -> IO (Ptr (TQObject ()))

instance Qsender (QTcpSocketSc a) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTcpSocket_sender cobj_x0

instance QtimerEvent (QTcpSocket ()) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTcpSocket_timerEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTcpSocket_timerEvent" qtc_QTcpSocket_timerEvent :: Ptr (TQTcpSocket a) -> Ptr (TQTimerEvent t1) -> IO ()

instance QtimerEvent (QTcpSocketSc a) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTcpSocket_timerEvent cobj_x0 cobj_x1

