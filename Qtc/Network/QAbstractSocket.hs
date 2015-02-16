{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QAbstractSocket.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:31
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Network.QAbstractSocket (
  qAbstractSocket
  ,disconnectFromHost
  ,localAddress
  ,localPort
  ,peerAddress
  ,peerName
  ,peerPort
  ,readBufferSize
  ,setReadBufferSize
  ,socketType
  ,QwaitForConnected(..)
  ,QwaitForDisconnected(..)
  ,qAbstractSocket_delete
  ,qAbstractSocket_deleteLater
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

instance QuserMethod (QAbstractSocket ()) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QAbstractSocket_userMethod cobj_qobj (toCInt evid)

foreign import ccall "qtc_QAbstractSocket_userMethod" qtc_QAbstractSocket_userMethod :: Ptr (TQAbstractSocket a) -> CInt -> IO ()

instance QuserMethod (QAbstractSocketSc a) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QAbstractSocket_userMethod cobj_qobj (toCInt evid)

instance QuserMethod (QAbstractSocket ()) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QAbstractSocket_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

foreign import ccall "qtc_QAbstractSocket_userMethodVariant" qtc_QAbstractSocket_userMethodVariant :: Ptr (TQAbstractSocket a) -> CInt -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))

instance QuserMethod (QAbstractSocketSc a) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QAbstractSocket_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

qAbstractSocket :: (SocketType, QObject t2) -> IO (QAbstractSocket ())
qAbstractSocket (x1, x2)
  = withQAbstractSocketResult $
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QAbstractSocket (toCLong $ qEnum_toInt x1) cobj_x2

foreign import ccall "qtc_QAbstractSocket" qtc_QAbstractSocket :: CLong -> Ptr (TQObject t2) -> IO (Ptr (TQAbstractSocket ()))

instance Qabort (QAbstractSocket a) (()) (IO ()) where
 abort x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSocket_abort cobj_x0

foreign import ccall "qtc_QAbstractSocket_abort" qtc_QAbstractSocket_abort :: Ptr (TQAbstractSocket a) -> IO ()

instance QatEnd (QAbstractSocket ()) (()) where
 atEnd x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSocket_atEnd_h cobj_x0

foreign import ccall "qtc_QAbstractSocket_atEnd_h" qtc_QAbstractSocket_atEnd_h :: Ptr (TQAbstractSocket a) -> IO CBool

instance QatEnd (QAbstractSocketSc a) (()) where
 atEnd x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSocket_atEnd_h cobj_x0

instance QbytesAvailable (QAbstractSocket ()) (()) where
 bytesAvailable x0 ()
  = withLongLongResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSocket_bytesAvailable_h cobj_x0

foreign import ccall "qtc_QAbstractSocket_bytesAvailable_h" qtc_QAbstractSocket_bytesAvailable_h :: Ptr (TQAbstractSocket a) -> IO CLLong

instance QbytesAvailable (QAbstractSocketSc a) (()) where
 bytesAvailable x0 ()
  = withLongLongResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSocket_bytesAvailable_h cobj_x0

instance QbytesToWrite (QAbstractSocket ()) (()) where
 bytesToWrite x0 ()
  = withLongLongResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSocket_bytesToWrite_h cobj_x0

foreign import ccall "qtc_QAbstractSocket_bytesToWrite_h" qtc_QAbstractSocket_bytesToWrite_h :: Ptr (TQAbstractSocket a) -> IO CLLong

instance QbytesToWrite (QAbstractSocketSc a) (()) where
 bytesToWrite x0 ()
  = withLongLongResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSocket_bytesToWrite_h cobj_x0

instance QcanReadLine (QAbstractSocket ()) (()) where
 canReadLine x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSocket_canReadLine_h cobj_x0

foreign import ccall "qtc_QAbstractSocket_canReadLine_h" qtc_QAbstractSocket_canReadLine_h :: Ptr (TQAbstractSocket a) -> IO CBool

instance QcanReadLine (QAbstractSocketSc a) (()) where
 canReadLine x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSocket_canReadLine_h cobj_x0

instance Qclose (QAbstractSocket ()) (()) (IO ()) where
 close x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSocket_close_h cobj_x0

foreign import ccall "qtc_QAbstractSocket_close_h" qtc_QAbstractSocket_close_h :: Ptr (TQAbstractSocket a) -> IO ()

instance Qclose (QAbstractSocketSc a) (()) (IO ()) where
 close x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSocket_close_h cobj_x0

instance QconnectToHost (QAbstractSocket a) ((QHostAddress t1, Int)) (IO ()) where
 connectToHost x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSocket_connectToHost cobj_x0 cobj_x1 (toCUShort x2)

foreign import ccall "qtc_QAbstractSocket_connectToHost" qtc_QAbstractSocket_connectToHost :: Ptr (TQAbstractSocket a) -> Ptr (TQHostAddress t1) -> CUShort -> IO ()

instance QconnectToHost (QAbstractSocket a) ((QHostAddress t1, Int, OpenMode)) (IO ()) where
 connectToHost x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSocket_connectToHost2 cobj_x0 cobj_x1 (toCUShort x2) (toCLong $ qFlags_toInt x3)

foreign import ccall "qtc_QAbstractSocket_connectToHost2" qtc_QAbstractSocket_connectToHost2 :: Ptr (TQAbstractSocket a) -> Ptr (TQHostAddress t1) -> CUShort -> CLong -> IO ()

instance QconnectToHost (QAbstractSocket a) ((String, Int)) (IO ()) where
 connectToHost x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QAbstractSocket_connectToHost1 cobj_x0 cstr_x1 (toCUShort x2)

foreign import ccall "qtc_QAbstractSocket_connectToHost1" qtc_QAbstractSocket_connectToHost1 :: Ptr (TQAbstractSocket a) -> CWString -> CUShort -> IO ()

instance QconnectToHost (QAbstractSocket a) ((String, Int, OpenMode)) (IO ()) where
 connectToHost x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QAbstractSocket_connectToHost3 cobj_x0 cstr_x1 (toCUShort x2) (toCLong $ qFlags_toInt x3)

foreign import ccall "qtc_QAbstractSocket_connectToHost3" qtc_QAbstractSocket_connectToHost3 :: Ptr (TQAbstractSocket a) -> CWString -> CUShort -> CLong -> IO ()

instance QconnectToHostImplementation (QAbstractSocket ()) ((String, Int)) where
 connectToHostImplementation x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QAbstractSocket_connectToHostImplementation cobj_x0 cstr_x1 (toCUShort x2)

foreign import ccall "qtc_QAbstractSocket_connectToHostImplementation" qtc_QAbstractSocket_connectToHostImplementation :: Ptr (TQAbstractSocket a) -> CWString -> CUShort -> IO ()

instance QconnectToHostImplementation (QAbstractSocketSc a) ((String, Int)) where
 connectToHostImplementation x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QAbstractSocket_connectToHostImplementation cobj_x0 cstr_x1 (toCUShort x2)

instance QconnectToHostImplementation (QAbstractSocket ()) ((String, Int, OpenMode)) where
 connectToHostImplementation x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QAbstractSocket_connectToHostImplementation1 cobj_x0 cstr_x1 (toCUShort x2) (toCLong $ qFlags_toInt x3)

foreign import ccall "qtc_QAbstractSocket_connectToHostImplementation1" qtc_QAbstractSocket_connectToHostImplementation1 :: Ptr (TQAbstractSocket a) -> CWString -> CUShort -> CLong -> IO ()

instance QconnectToHostImplementation (QAbstractSocketSc a) ((String, Int, OpenMode)) where
 connectToHostImplementation x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QAbstractSocket_connectToHostImplementation1 cobj_x0 cstr_x1 (toCUShort x2) (toCLong $ qFlags_toInt x3)

disconnectFromHost :: QAbstractSocket a -> (()) -> IO ()
disconnectFromHost x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSocket_disconnectFromHost cobj_x0

foreign import ccall "qtc_QAbstractSocket_disconnectFromHost" qtc_QAbstractSocket_disconnectFromHost :: Ptr (TQAbstractSocket a) -> IO ()

instance QdisconnectFromHostImplementation (QAbstractSocket ()) (()) where
 disconnectFromHostImplementation x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSocket_disconnectFromHostImplementation cobj_x0

foreign import ccall "qtc_QAbstractSocket_disconnectFromHostImplementation" qtc_QAbstractSocket_disconnectFromHostImplementation :: Ptr (TQAbstractSocket a) -> IO ()

instance QdisconnectFromHostImplementation (QAbstractSocketSc a) (()) where
 disconnectFromHostImplementation x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSocket_disconnectFromHostImplementation cobj_x0

instance Qqerror (QAbstractSocket a) (()) (IO (SocketError)) where
 qerror x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSocket_error cobj_x0

foreign import ccall "qtc_QAbstractSocket_error" qtc_QAbstractSocket_error :: Ptr (TQAbstractSocket a) -> IO CLong

instance Qflush (QAbstractSocket a) (()) (IO (Bool)) where
 flush x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSocket_flush cobj_x0

foreign import ccall "qtc_QAbstractSocket_flush" qtc_QAbstractSocket_flush :: Ptr (TQAbstractSocket a) -> IO CBool

instance QisSequential (QAbstractSocket ()) (()) where
 isSequential x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSocket_isSequential_h cobj_x0

foreign import ccall "qtc_QAbstractSocket_isSequential_h" qtc_QAbstractSocket_isSequential_h :: Ptr (TQAbstractSocket a) -> IO CBool

instance QisSequential (QAbstractSocketSc a) (()) where
 isSequential x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSocket_isSequential_h cobj_x0

instance QqisValid (QAbstractSocket ()) (()) where
 qisValid x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSocket_isValid cobj_x0

foreign import ccall "qtc_QAbstractSocket_isValid" qtc_QAbstractSocket_isValid :: Ptr (TQAbstractSocket a) -> IO CBool

instance QqisValid (QAbstractSocketSc a) (()) where
 qisValid x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSocket_isValid cobj_x0

localAddress :: QAbstractSocket a -> (()) -> IO (QHostAddress ())
localAddress x0 ()
  = withQHostAddressResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSocket_localAddress cobj_x0

foreign import ccall "qtc_QAbstractSocket_localAddress" qtc_QAbstractSocket_localAddress :: Ptr (TQAbstractSocket a) -> IO (Ptr (TQHostAddress ()))

localPort :: QAbstractSocket a -> (()) -> IO (Int)
localPort x0 ()
  = withUnsignedShortResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSocket_localPort cobj_x0

foreign import ccall "qtc_QAbstractSocket_localPort" qtc_QAbstractSocket_localPort :: Ptr (TQAbstractSocket a) -> IO CUShort

peerAddress :: QAbstractSocket a -> (()) -> IO (QHostAddress ())
peerAddress x0 ()
  = withQHostAddressResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSocket_peerAddress cobj_x0

foreign import ccall "qtc_QAbstractSocket_peerAddress" qtc_QAbstractSocket_peerAddress :: Ptr (TQAbstractSocket a) -> IO (Ptr (TQHostAddress ()))

peerName :: QAbstractSocket a -> (()) -> IO (String)
peerName x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSocket_peerName cobj_x0

foreign import ccall "qtc_QAbstractSocket_peerName" qtc_QAbstractSocket_peerName :: Ptr (TQAbstractSocket a) -> IO (Ptr (TQString ()))

peerPort :: QAbstractSocket a -> (()) -> IO (Int)
peerPort x0 ()
  = withUnsignedShortResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSocket_peerPort cobj_x0

foreign import ccall "qtc_QAbstractSocket_peerPort" qtc_QAbstractSocket_peerPort :: Ptr (TQAbstractSocket a) -> IO CUShort

instance Qproxy (QAbstractSocket a) (()) where
 proxy x0 ()
  = withQNetworkProxyResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSocket_proxy cobj_x0

foreign import ccall "qtc_QAbstractSocket_proxy" qtc_QAbstractSocket_proxy :: Ptr (TQAbstractSocket a) -> IO (Ptr (TQNetworkProxy ()))

readBufferSize :: QAbstractSocket a -> (()) -> IO (Int)
readBufferSize x0 ()
  = withLongLongResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSocket_readBufferSize cobj_x0

foreign import ccall "qtc_QAbstractSocket_readBufferSize" qtc_QAbstractSocket_readBufferSize :: Ptr (TQAbstractSocket a) -> IO CLLong

instance QsetLocalAddress (QAbstractSocket ()) ((QHostAddress t1)) where
 setLocalAddress x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSocket_setLocalAddress cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractSocket_setLocalAddress" qtc_QAbstractSocket_setLocalAddress :: Ptr (TQAbstractSocket a) -> Ptr (TQHostAddress t1) -> IO ()

instance QsetLocalAddress (QAbstractSocketSc a) ((QHostAddress t1)) where
 setLocalAddress x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSocket_setLocalAddress cobj_x0 cobj_x1

instance QsetLocalPort (QAbstractSocket ()) ((Int)) where
 setLocalPort x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSocket_setLocalPort cobj_x0 (toCUShort x1)

foreign import ccall "qtc_QAbstractSocket_setLocalPort" qtc_QAbstractSocket_setLocalPort :: Ptr (TQAbstractSocket a) -> CUShort -> IO ()

instance QsetLocalPort (QAbstractSocketSc a) ((Int)) where
 setLocalPort x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSocket_setLocalPort cobj_x0 (toCUShort x1)

instance QsetPeerAddress (QAbstractSocket ()) ((QHostAddress t1)) where
 setPeerAddress x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSocket_setPeerAddress cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractSocket_setPeerAddress" qtc_QAbstractSocket_setPeerAddress :: Ptr (TQAbstractSocket a) -> Ptr (TQHostAddress t1) -> IO ()

instance QsetPeerAddress (QAbstractSocketSc a) ((QHostAddress t1)) where
 setPeerAddress x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSocket_setPeerAddress cobj_x0 cobj_x1

instance QsetPeerName (QAbstractSocket ()) ((String)) where
 setPeerName x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QAbstractSocket_setPeerName cobj_x0 cstr_x1

foreign import ccall "qtc_QAbstractSocket_setPeerName" qtc_QAbstractSocket_setPeerName :: Ptr (TQAbstractSocket a) -> CWString -> IO ()

instance QsetPeerName (QAbstractSocketSc a) ((String)) where
 setPeerName x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QAbstractSocket_setPeerName cobj_x0 cstr_x1

instance QsetPeerPort (QAbstractSocket ()) ((Int)) where
 setPeerPort x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSocket_setPeerPort cobj_x0 (toCUShort x1)

foreign import ccall "qtc_QAbstractSocket_setPeerPort" qtc_QAbstractSocket_setPeerPort :: Ptr (TQAbstractSocket a) -> CUShort -> IO ()

instance QsetPeerPort (QAbstractSocketSc a) ((Int)) where
 setPeerPort x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSocket_setPeerPort cobj_x0 (toCUShort x1)

instance QsetProxy (QAbstractSocket a) ((QNetworkProxy t1)) (IO ()) where
 setProxy x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSocket_setProxy cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractSocket_setProxy" qtc_QAbstractSocket_setProxy :: Ptr (TQAbstractSocket a) -> Ptr (TQNetworkProxy t1) -> IO ()

setReadBufferSize :: QAbstractSocket a -> ((Int)) -> IO ()
setReadBufferSize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSocket_setReadBufferSize cobj_x0 (toCLLong x1)

foreign import ccall "qtc_QAbstractSocket_setReadBufferSize" qtc_QAbstractSocket_setReadBufferSize :: Ptr (TQAbstractSocket a) -> CLLong -> IO ()

instance QsetSocketDescriptor (QAbstractSocket a) ((Int)) where
 setSocketDescriptor x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSocket_setSocketDescriptor cobj_x0 (toCInt x1)

foreign import ccall "qtc_QAbstractSocket_setSocketDescriptor" qtc_QAbstractSocket_setSocketDescriptor :: Ptr (TQAbstractSocket a) -> CInt -> IO CBool

instance QsetSocketDescriptor (QAbstractSocket a) ((Int, SocketState)) where
 setSocketDescriptor x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSocket_setSocketDescriptor1 cobj_x0 (toCInt x1) (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QAbstractSocket_setSocketDescriptor1" qtc_QAbstractSocket_setSocketDescriptor1 :: Ptr (TQAbstractSocket a) -> CInt -> CLong -> IO CBool

instance QsetSocketDescriptor (QAbstractSocket a) ((Int, SocketState, OpenMode)) where
 setSocketDescriptor x0 (x1, x2, x3)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSocket_setSocketDescriptor2 cobj_x0 (toCInt x1) (toCLong $ qEnum_toInt x2) (toCLong $ qFlags_toInt x3)

foreign import ccall "qtc_QAbstractSocket_setSocketDescriptor2" qtc_QAbstractSocket_setSocketDescriptor2 :: Ptr (TQAbstractSocket a) -> CInt -> CLong -> CLong -> IO CBool

instance QsetSocketError (QAbstractSocket ()) ((SocketError)) where
 setSocketError x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSocket_setSocketError cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QAbstractSocket_setSocketError" qtc_QAbstractSocket_setSocketError :: Ptr (TQAbstractSocket a) -> CLong -> IO ()

instance QsetSocketError (QAbstractSocketSc a) ((SocketError)) where
 setSocketError x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSocket_setSocketError cobj_x0 (toCLong $ qEnum_toInt x1)

instance QsetSocketState (QAbstractSocket ()) ((SocketState)) where
 setSocketState x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSocket_setSocketState cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QAbstractSocket_setSocketState" qtc_QAbstractSocket_setSocketState :: Ptr (TQAbstractSocket a) -> CLong -> IO ()

instance QsetSocketState (QAbstractSocketSc a) ((SocketState)) where
 setSocketState x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSocket_setSocketState cobj_x0 (toCLong $ qEnum_toInt x1)

instance QsocketDescriptor (QAbstractSocket a) (()) where
 socketDescriptor x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSocket_socketDescriptor cobj_x0

foreign import ccall "qtc_QAbstractSocket_socketDescriptor" qtc_QAbstractSocket_socketDescriptor :: Ptr (TQAbstractSocket a) -> IO CInt

socketType :: QAbstractSocket a -> (()) -> IO (SocketType)
socketType x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSocket_socketType cobj_x0

foreign import ccall "qtc_QAbstractSocket_socketType" qtc_QAbstractSocket_socketType :: Ptr (TQAbstractSocket a) -> IO CLong

instance Qstate (QAbstractSocket a) (()) (IO (SocketState)) where
 state x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSocket_state cobj_x0

foreign import ccall "qtc_QAbstractSocket_state" qtc_QAbstractSocket_state :: Ptr (TQAbstractSocket a) -> IO CLong

instance QwaitForBytesWritten (QAbstractSocket ()) (()) where
 waitForBytesWritten x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSocket_waitForBytesWritten_h cobj_x0

foreign import ccall "qtc_QAbstractSocket_waitForBytesWritten_h" qtc_QAbstractSocket_waitForBytesWritten_h :: Ptr (TQAbstractSocket a) -> IO CBool

instance QwaitForBytesWritten (QAbstractSocketSc a) (()) where
 waitForBytesWritten x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSocket_waitForBytesWritten_h cobj_x0

instance QwaitForBytesWritten (QAbstractSocket ()) ((Int)) where
 waitForBytesWritten x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSocket_waitForBytesWritten1_h cobj_x0 (toCInt x1)

foreign import ccall "qtc_QAbstractSocket_waitForBytesWritten1_h" qtc_QAbstractSocket_waitForBytesWritten1_h :: Ptr (TQAbstractSocket a) -> CInt -> IO CBool

instance QwaitForBytesWritten (QAbstractSocketSc a) ((Int)) where
 waitForBytesWritten x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSocket_waitForBytesWritten1_h cobj_x0 (toCInt x1)

class QwaitForConnected x1 where
 waitForConnected :: QAbstractSocket a -> x1 -> IO (Bool)

instance QwaitForConnected (()) where
 waitForConnected x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSocket_waitForConnected cobj_x0

foreign import ccall "qtc_QAbstractSocket_waitForConnected" qtc_QAbstractSocket_waitForConnected :: Ptr (TQAbstractSocket a) -> IO CBool

instance QwaitForConnected ((Int)) where
 waitForConnected x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSocket_waitForConnected1 cobj_x0 (toCInt x1)

foreign import ccall "qtc_QAbstractSocket_waitForConnected1" qtc_QAbstractSocket_waitForConnected1 :: Ptr (TQAbstractSocket a) -> CInt -> IO CBool

class QwaitForDisconnected x1 where
 waitForDisconnected :: QAbstractSocket a -> x1 -> IO (Bool)

instance QwaitForDisconnected (()) where
 waitForDisconnected x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSocket_waitForDisconnected cobj_x0

foreign import ccall "qtc_QAbstractSocket_waitForDisconnected" qtc_QAbstractSocket_waitForDisconnected :: Ptr (TQAbstractSocket a) -> IO CBool

instance QwaitForDisconnected ((Int)) where
 waitForDisconnected x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSocket_waitForDisconnected1 cobj_x0 (toCInt x1)

foreign import ccall "qtc_QAbstractSocket_waitForDisconnected1" qtc_QAbstractSocket_waitForDisconnected1 :: Ptr (TQAbstractSocket a) -> CInt -> IO CBool

instance QwaitForReadyRead (QAbstractSocket ()) (()) where
 waitForReadyRead x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSocket_waitForReadyRead_h cobj_x0

foreign import ccall "qtc_QAbstractSocket_waitForReadyRead_h" qtc_QAbstractSocket_waitForReadyRead_h :: Ptr (TQAbstractSocket a) -> IO CBool

instance QwaitForReadyRead (QAbstractSocketSc a) (()) where
 waitForReadyRead x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSocket_waitForReadyRead_h cobj_x0

instance QwaitForReadyRead (QAbstractSocket ()) ((Int)) where
 waitForReadyRead x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSocket_waitForReadyRead1_h cobj_x0 (toCInt x1)

foreign import ccall "qtc_QAbstractSocket_waitForReadyRead1_h" qtc_QAbstractSocket_waitForReadyRead1_h :: Ptr (TQAbstractSocket a) -> CInt -> IO CBool

instance QwaitForReadyRead (QAbstractSocketSc a) ((Int)) where
 waitForReadyRead x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSocket_waitForReadyRead1_h cobj_x0 (toCInt x1)

instance QwriteData (QAbstractSocket ()) ((String, Int)) where
 writeData x0 (x1, x2)
  = withLongLongResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QAbstractSocket_writeData cobj_x0 cstr_x1 (toCLLong x2)

foreign import ccall "qtc_QAbstractSocket_writeData" qtc_QAbstractSocket_writeData :: Ptr (TQAbstractSocket a) -> CWString -> CLLong -> IO CLLong

instance QwriteData (QAbstractSocketSc a) ((String, Int)) where
 writeData x0 (x1, x2)
  = withLongLongResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QAbstractSocket_writeData cobj_x0 cstr_x1 (toCLLong x2)

qAbstractSocket_delete :: QAbstractSocket a -> IO ()
qAbstractSocket_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSocket_delete cobj_x0

foreign import ccall "qtc_QAbstractSocket_delete" qtc_QAbstractSocket_delete :: Ptr (TQAbstractSocket a) -> IO ()

qAbstractSocket_deleteLater :: QAbstractSocket a -> IO ()
qAbstractSocket_deleteLater x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSocket_deleteLater cobj_x0

foreign import ccall "qtc_QAbstractSocket_deleteLater" qtc_QAbstractSocket_deleteLater :: Ptr (TQAbstractSocket a) -> IO ()

instance Qopen (QAbstractSocket ()) ((OpenMode)) where
 open x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSocket_open_h cobj_x0 (toCLong $ qFlags_toInt x1)

foreign import ccall "qtc_QAbstractSocket_open_h" qtc_QAbstractSocket_open_h :: Ptr (TQAbstractSocket a) -> CLong -> IO CBool

instance Qopen (QAbstractSocketSc a) ((OpenMode)) where
 open x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSocket_open_h cobj_x0 (toCLong $ qFlags_toInt x1)

instance Qpos (QAbstractSocket ()) (()) (IO (Int)) where
 pos x0 ()
  = withLongLongResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSocket_pos_h cobj_x0

foreign import ccall "qtc_QAbstractSocket_pos_h" qtc_QAbstractSocket_pos_h :: Ptr (TQAbstractSocket a) -> IO CLLong

instance Qpos (QAbstractSocketSc a) (()) (IO (Int)) where
 pos x0 ()
  = withLongLongResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSocket_pos_h cobj_x0

instance Qreset (QAbstractSocket ()) (()) (IO (Bool)) where
 reset x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSocket_reset_h cobj_x0

foreign import ccall "qtc_QAbstractSocket_reset_h" qtc_QAbstractSocket_reset_h :: Ptr (TQAbstractSocket a) -> IO CBool

instance Qreset (QAbstractSocketSc a) (()) (IO (Bool)) where
 reset x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSocket_reset_h cobj_x0

instance Qseek (QAbstractSocket ()) ((Int)) where
 seek x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSocket_seek_h cobj_x0 (toCLLong x1)

foreign import ccall "qtc_QAbstractSocket_seek_h" qtc_QAbstractSocket_seek_h :: Ptr (TQAbstractSocket a) -> CLLong -> IO CBool

instance Qseek (QAbstractSocketSc a) ((Int)) where
 seek x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSocket_seek_h cobj_x0 (toCLLong x1)

instance QsetErrorString (QAbstractSocket ()) ((String)) where
 setErrorString x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QAbstractSocket_setErrorString cobj_x0 cstr_x1

foreign import ccall "qtc_QAbstractSocket_setErrorString" qtc_QAbstractSocket_setErrorString :: Ptr (TQAbstractSocket a) -> CWString -> IO ()

instance QsetErrorString (QAbstractSocketSc a) ((String)) where
 setErrorString x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QAbstractSocket_setErrorString cobj_x0 cstr_x1

instance QsetOpenMode (QAbstractSocket ()) ((OpenMode)) where
 setOpenMode x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSocket_setOpenMode cobj_x0 (toCLong $ qFlags_toInt x1)

foreign import ccall "qtc_QAbstractSocket_setOpenMode" qtc_QAbstractSocket_setOpenMode :: Ptr (TQAbstractSocket a) -> CLong -> IO ()

instance QsetOpenMode (QAbstractSocketSc a) ((OpenMode)) where
 setOpenMode x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSocket_setOpenMode cobj_x0 (toCLong $ qFlags_toInt x1)

instance Qqsize (QAbstractSocket ()) (()) (IO (Int)) where
 qsize x0 ()
  = withLongLongResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSocket_size_h cobj_x0

foreign import ccall "qtc_QAbstractSocket_size_h" qtc_QAbstractSocket_size_h :: Ptr (TQAbstractSocket a) -> IO CLLong

instance Qqsize (QAbstractSocketSc a) (()) (IO (Int)) where
 qsize x0 ()
  = withLongLongResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSocket_size_h cobj_x0

instance QchildEvent (QAbstractSocket ()) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSocket_childEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractSocket_childEvent" qtc_QAbstractSocket_childEvent :: Ptr (TQAbstractSocket a) -> Ptr (TQChildEvent t1) -> IO ()

instance QchildEvent (QAbstractSocketSc a) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSocket_childEvent cobj_x0 cobj_x1

instance QconnectNotify (QAbstractSocket ()) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QAbstractSocket_connectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QAbstractSocket_connectNotify" qtc_QAbstractSocket_connectNotify :: Ptr (TQAbstractSocket a) -> CWString -> IO ()

instance QconnectNotify (QAbstractSocketSc a) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QAbstractSocket_connectNotify cobj_x0 cstr_x1

instance QcustomEvent (QAbstractSocket ()) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSocket_customEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractSocket_customEvent" qtc_QAbstractSocket_customEvent :: Ptr (TQAbstractSocket a) -> Ptr (TQEvent t1) -> IO ()

instance QcustomEvent (QAbstractSocketSc a) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSocket_customEvent cobj_x0 cobj_x1

instance QdisconnectNotify (QAbstractSocket ()) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QAbstractSocket_disconnectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QAbstractSocket_disconnectNotify" qtc_QAbstractSocket_disconnectNotify :: Ptr (TQAbstractSocket a) -> CWString -> IO ()

instance QdisconnectNotify (QAbstractSocketSc a) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QAbstractSocket_disconnectNotify cobj_x0 cstr_x1

instance Qevent (QAbstractSocket ()) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSocket_event_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractSocket_event_h" qtc_QAbstractSocket_event_h :: Ptr (TQAbstractSocket a) -> Ptr (TQEvent t1) -> IO CBool

instance Qevent (QAbstractSocketSc a) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSocket_event_h cobj_x0 cobj_x1

instance QeventFilter (QAbstractSocket ()) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QAbstractSocket_eventFilter_h cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QAbstractSocket_eventFilter_h" qtc_QAbstractSocket_eventFilter_h :: Ptr (TQAbstractSocket a) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO CBool

instance QeventFilter (QAbstractSocketSc a) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QAbstractSocket_eventFilter_h cobj_x0 cobj_x1 cobj_x2

instance Qreceivers (QAbstractSocket ()) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QAbstractSocket_receivers cobj_x0 cstr_x1

foreign import ccall "qtc_QAbstractSocket_receivers" qtc_QAbstractSocket_receivers :: Ptr (TQAbstractSocket a) -> CWString -> IO CInt

instance Qreceivers (QAbstractSocketSc a) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QAbstractSocket_receivers cobj_x0 cstr_x1

instance Qsender (QAbstractSocket ()) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSocket_sender cobj_x0

foreign import ccall "qtc_QAbstractSocket_sender" qtc_QAbstractSocket_sender :: Ptr (TQAbstractSocket a) -> IO (Ptr (TQObject ()))

instance Qsender (QAbstractSocketSc a) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSocket_sender cobj_x0

instance QtimerEvent (QAbstractSocket ()) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSocket_timerEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractSocket_timerEvent" qtc_QAbstractSocket_timerEvent :: Ptr (TQAbstractSocket a) -> Ptr (TQTimerEvent t1) -> IO ()

instance QtimerEvent (QAbstractSocketSc a) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSocket_timerEvent cobj_x0 cobj_x1

