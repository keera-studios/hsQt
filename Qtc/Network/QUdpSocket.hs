{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QUdpSocket.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:31
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Network.QUdpSocket (
  QqUdpSocket(..)
  ,hasPendingDatagrams
  ,pendingDatagramSize
  ,QwriteDatagram(..)
  ,qUdpSocket_delete
  ,qUdpSocket_deleteLater
  )
  where

import Foreign.C.Types
import Qth.ClassTypes.Core
import Qtc.Enums.Base
import Qtc.Enums.Core.QIODevice
import Qtc.Enums.Network.QAbstractSocket
import Qtc.Enums.Network.QUdpSocket

import Qtc.Classes.Base
import Qtc.Classes.Qccs
import Qtc.Classes.Core
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core
import Qtc.Classes.Network
import Qtc.ClassTypes.Network

instance QuserMethod (QUdpSocket ()) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QUdpSocket_userMethod cobj_qobj (toCInt evid)

foreign import ccall "qtc_QUdpSocket_userMethod" qtc_QUdpSocket_userMethod :: Ptr (TQUdpSocket a) -> CInt -> IO ()

instance QuserMethod (QUdpSocketSc a) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QUdpSocket_userMethod cobj_qobj (toCInt evid)

instance QuserMethod (QUdpSocket ()) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QUdpSocket_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

foreign import ccall "qtc_QUdpSocket_userMethodVariant" qtc_QUdpSocket_userMethodVariant :: Ptr (TQUdpSocket a) -> CInt -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))

instance QuserMethod (QUdpSocketSc a) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QUdpSocket_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

class QqUdpSocket x1 where
  qUdpSocket :: x1 -> IO (QUdpSocket ())

instance QqUdpSocket (()) where
 qUdpSocket ()
  = withQUdpSocketResult $
    qtc_QUdpSocket

foreign import ccall "qtc_QUdpSocket" qtc_QUdpSocket :: IO (Ptr (TQUdpSocket ()))

instance QqUdpSocket ((QObject t1)) where
 qUdpSocket (x1)
  = withQUdpSocketResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUdpSocket1 cobj_x1

foreign import ccall "qtc_QUdpSocket1" qtc_QUdpSocket1 :: Ptr (TQObject t1) -> IO (Ptr (TQUdpSocket ()))

instance Qbind (QUdpSocket a) (()) where
 bind x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUdpSocket_bind cobj_x0

foreign import ccall "qtc_QUdpSocket_bind" qtc_QUdpSocket_bind :: Ptr (TQUdpSocket a) -> IO CBool

instance Qbind (QUdpSocket a) ((Int)) where
 bind x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUdpSocket_bind1 cobj_x0 (toCUShort x1)

foreign import ccall "qtc_QUdpSocket_bind1" qtc_QUdpSocket_bind1 :: Ptr (TQUdpSocket a) -> CUShort -> IO CBool

instance Qbind (QUdpSocket a) ((Int, BindMode)) where
 bind x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUdpSocket_bind3 cobj_x0 (toCUShort x1) (toCLong $ qFlags_toInt x2)

foreign import ccall "qtc_QUdpSocket_bind3" qtc_QUdpSocket_bind3 :: Ptr (TQUdpSocket a) -> CUShort -> CLong -> IO CBool

instance Qbind (QUdpSocket a) ((QHostAddress t1, Int)) where
 bind x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUdpSocket_bind2 cobj_x0 cobj_x1 (toCUShort x2)

foreign import ccall "qtc_QUdpSocket_bind2" qtc_QUdpSocket_bind2 :: Ptr (TQUdpSocket a) -> Ptr (TQHostAddress t1) -> CUShort -> IO CBool

instance Qbind (QUdpSocket a) ((QHostAddress t1, Int, BindMode)) where
 bind x0 (x1, x2, x3)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUdpSocket_bind4 cobj_x0 cobj_x1 (toCUShort x2) (toCLong $ qFlags_toInt x3)

foreign import ccall "qtc_QUdpSocket_bind4" qtc_QUdpSocket_bind4 :: Ptr (TQUdpSocket a) -> Ptr (TQHostAddress t1) -> CUShort -> CLong -> IO CBool

hasPendingDatagrams :: QUdpSocket a -> (()) -> IO (Bool)
hasPendingDatagrams x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUdpSocket_hasPendingDatagrams cobj_x0

foreign import ccall "qtc_QUdpSocket_hasPendingDatagrams" qtc_QUdpSocket_hasPendingDatagrams :: Ptr (TQUdpSocket a) -> IO CBool

pendingDatagramSize :: QUdpSocket a -> (()) -> IO (Int)
pendingDatagramSize x0 ()
  = withLongLongResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUdpSocket_pendingDatagramSize cobj_x0

foreign import ccall "qtc_QUdpSocket_pendingDatagramSize" qtc_QUdpSocket_pendingDatagramSize :: Ptr (TQUdpSocket a) -> IO CLLong

class QwriteDatagram x1 where
 writeDatagram :: QUdpSocket a -> x1 -> IO (Int)

instance QwriteDatagram ((String, Int, QHostAddress t3, Int)) where
 writeDatagram x0 (x1, x2, x3, x4)
  = withLongLongResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QUdpSocket_writeDatagram1 cobj_x0 cstr_x1 (toCLLong x2) cobj_x3 (toCUShort x4)

foreign import ccall "qtc_QUdpSocket_writeDatagram1" qtc_QUdpSocket_writeDatagram1 :: Ptr (TQUdpSocket a) -> CWString -> CLLong -> Ptr (TQHostAddress t3) -> CUShort -> IO CLLong

instance QwriteDatagram ((String, QHostAddress t2, Int)) where
 writeDatagram x0 (x1, x2, x3)
  = withLongLongResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QUdpSocket_writeDatagram cobj_x0 cstr_x1 cobj_x2 (toCUShort x3)

foreign import ccall "qtc_QUdpSocket_writeDatagram" qtc_QUdpSocket_writeDatagram :: Ptr (TQUdpSocket a) -> CWString -> Ptr (TQHostAddress t2) -> CUShort -> IO CLLong

qUdpSocket_delete :: QUdpSocket a -> IO ()
qUdpSocket_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUdpSocket_delete cobj_x0

foreign import ccall "qtc_QUdpSocket_delete" qtc_QUdpSocket_delete :: Ptr (TQUdpSocket a) -> IO ()

qUdpSocket_deleteLater :: QUdpSocket a -> IO ()
qUdpSocket_deleteLater x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUdpSocket_deleteLater cobj_x0

foreign import ccall "qtc_QUdpSocket_deleteLater" qtc_QUdpSocket_deleteLater :: Ptr (TQUdpSocket a) -> IO ()

instance QatEnd (QUdpSocket ()) (()) where
 atEnd x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUdpSocket_atEnd_h cobj_x0

foreign import ccall "qtc_QUdpSocket_atEnd_h" qtc_QUdpSocket_atEnd_h :: Ptr (TQUdpSocket a) -> IO CBool

instance QatEnd (QUdpSocketSc a) (()) where
 atEnd x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUdpSocket_atEnd_h cobj_x0

instance QbytesAvailable (QUdpSocket ()) (()) where
 bytesAvailable x0 ()
  = withLongLongResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUdpSocket_bytesAvailable_h cobj_x0

foreign import ccall "qtc_QUdpSocket_bytesAvailable_h" qtc_QUdpSocket_bytesAvailable_h :: Ptr (TQUdpSocket a) -> IO CLLong

instance QbytesAvailable (QUdpSocketSc a) (()) where
 bytesAvailable x0 ()
  = withLongLongResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUdpSocket_bytesAvailable_h cobj_x0

instance QbytesToWrite (QUdpSocket ()) (()) where
 bytesToWrite x0 ()
  = withLongLongResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUdpSocket_bytesToWrite_h cobj_x0

foreign import ccall "qtc_QUdpSocket_bytesToWrite_h" qtc_QUdpSocket_bytesToWrite_h :: Ptr (TQUdpSocket a) -> IO CLLong

instance QbytesToWrite (QUdpSocketSc a) (()) where
 bytesToWrite x0 ()
  = withLongLongResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUdpSocket_bytesToWrite_h cobj_x0

instance QcanReadLine (QUdpSocket ()) (()) where
 canReadLine x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUdpSocket_canReadLine_h cobj_x0

foreign import ccall "qtc_QUdpSocket_canReadLine_h" qtc_QUdpSocket_canReadLine_h :: Ptr (TQUdpSocket a) -> IO CBool

instance QcanReadLine (QUdpSocketSc a) (()) where
 canReadLine x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUdpSocket_canReadLine_h cobj_x0

instance Qclose (QUdpSocket ()) (()) (IO ()) where
 close x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUdpSocket_close_h cobj_x0

foreign import ccall "qtc_QUdpSocket_close_h" qtc_QUdpSocket_close_h :: Ptr (TQUdpSocket a) -> IO ()

instance Qclose (QUdpSocketSc a) (()) (IO ()) where
 close x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUdpSocket_close_h cobj_x0

instance QconnectToHostImplementation (QUdpSocket ()) ((String, Int)) where
 connectToHostImplementation x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QUdpSocket_connectToHostImplementation cobj_x0 cstr_x1 (toCUShort x2)

foreign import ccall "qtc_QUdpSocket_connectToHostImplementation" qtc_QUdpSocket_connectToHostImplementation :: Ptr (TQUdpSocket a) -> CWString -> CUShort -> IO ()

instance QconnectToHostImplementation (QUdpSocketSc a) ((String, Int)) where
 connectToHostImplementation x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QUdpSocket_connectToHostImplementation cobj_x0 cstr_x1 (toCUShort x2)

instance QconnectToHostImplementation (QUdpSocket ()) ((String, Int, OpenMode)) where
 connectToHostImplementation x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QUdpSocket_connectToHostImplementation1 cobj_x0 cstr_x1 (toCUShort x2) (toCLong $ qFlags_toInt x3)

foreign import ccall "qtc_QUdpSocket_connectToHostImplementation1" qtc_QUdpSocket_connectToHostImplementation1 :: Ptr (TQUdpSocket a) -> CWString -> CUShort -> CLong -> IO ()

instance QconnectToHostImplementation (QUdpSocketSc a) ((String, Int, OpenMode)) where
 connectToHostImplementation x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QUdpSocket_connectToHostImplementation1 cobj_x0 cstr_x1 (toCUShort x2) (toCLong $ qFlags_toInt x3)

instance QdisconnectFromHostImplementation (QUdpSocket ()) (()) where
 disconnectFromHostImplementation x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUdpSocket_disconnectFromHostImplementation cobj_x0

foreign import ccall "qtc_QUdpSocket_disconnectFromHostImplementation" qtc_QUdpSocket_disconnectFromHostImplementation :: Ptr (TQUdpSocket a) -> IO ()

instance QdisconnectFromHostImplementation (QUdpSocketSc a) (()) where
 disconnectFromHostImplementation x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUdpSocket_disconnectFromHostImplementation cobj_x0

instance QisSequential (QUdpSocket ()) (()) where
 isSequential x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUdpSocket_isSequential_h cobj_x0

foreign import ccall "qtc_QUdpSocket_isSequential_h" qtc_QUdpSocket_isSequential_h :: Ptr (TQUdpSocket a) -> IO CBool

instance QisSequential (QUdpSocketSc a) (()) where
 isSequential x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUdpSocket_isSequential_h cobj_x0

instance QqisValid (QUdpSocket ()) (()) where
 qisValid x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUdpSocket_isValid cobj_x0

foreign import ccall "qtc_QUdpSocket_isValid" qtc_QUdpSocket_isValid :: Ptr (TQUdpSocket a) -> IO CBool

instance QqisValid (QUdpSocketSc a) (()) where
 qisValid x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUdpSocket_isValid cobj_x0

instance QsetLocalAddress (QUdpSocket ()) ((QHostAddress t1)) where
 setLocalAddress x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUdpSocket_setLocalAddress cobj_x0 cobj_x1

foreign import ccall "qtc_QUdpSocket_setLocalAddress" qtc_QUdpSocket_setLocalAddress :: Ptr (TQUdpSocket a) -> Ptr (TQHostAddress t1) -> IO ()

instance QsetLocalAddress (QUdpSocketSc a) ((QHostAddress t1)) where
 setLocalAddress x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUdpSocket_setLocalAddress cobj_x0 cobj_x1

instance QsetLocalPort (QUdpSocket ()) ((Int)) where
 setLocalPort x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUdpSocket_setLocalPort cobj_x0 (toCUShort x1)

foreign import ccall "qtc_QUdpSocket_setLocalPort" qtc_QUdpSocket_setLocalPort :: Ptr (TQUdpSocket a) -> CUShort -> IO ()

instance QsetLocalPort (QUdpSocketSc a) ((Int)) where
 setLocalPort x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUdpSocket_setLocalPort cobj_x0 (toCUShort x1)

instance QsetPeerAddress (QUdpSocket ()) ((QHostAddress t1)) where
 setPeerAddress x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUdpSocket_setPeerAddress cobj_x0 cobj_x1

foreign import ccall "qtc_QUdpSocket_setPeerAddress" qtc_QUdpSocket_setPeerAddress :: Ptr (TQUdpSocket a) -> Ptr (TQHostAddress t1) -> IO ()

instance QsetPeerAddress (QUdpSocketSc a) ((QHostAddress t1)) where
 setPeerAddress x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUdpSocket_setPeerAddress cobj_x0 cobj_x1

instance QsetPeerName (QUdpSocket ()) ((String)) where
 setPeerName x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QUdpSocket_setPeerName cobj_x0 cstr_x1

foreign import ccall "qtc_QUdpSocket_setPeerName" qtc_QUdpSocket_setPeerName :: Ptr (TQUdpSocket a) -> CWString -> IO ()

instance QsetPeerName (QUdpSocketSc a) ((String)) where
 setPeerName x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QUdpSocket_setPeerName cobj_x0 cstr_x1

instance QsetPeerPort (QUdpSocket ()) ((Int)) where
 setPeerPort x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUdpSocket_setPeerPort cobj_x0 (toCUShort x1)

foreign import ccall "qtc_QUdpSocket_setPeerPort" qtc_QUdpSocket_setPeerPort :: Ptr (TQUdpSocket a) -> CUShort -> IO ()

instance QsetPeerPort (QUdpSocketSc a) ((Int)) where
 setPeerPort x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUdpSocket_setPeerPort cobj_x0 (toCUShort x1)

instance QsetSocketError (QUdpSocket ()) ((SocketError)) where
 setSocketError x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUdpSocket_setSocketError cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QUdpSocket_setSocketError" qtc_QUdpSocket_setSocketError :: Ptr (TQUdpSocket a) -> CLong -> IO ()

instance QsetSocketError (QUdpSocketSc a) ((SocketError)) where
 setSocketError x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUdpSocket_setSocketError cobj_x0 (toCLong $ qEnum_toInt x1)

instance QsetSocketState (QUdpSocket ()) ((SocketState)) where
 setSocketState x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUdpSocket_setSocketState cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QUdpSocket_setSocketState" qtc_QUdpSocket_setSocketState :: Ptr (TQUdpSocket a) -> CLong -> IO ()

instance QsetSocketState (QUdpSocketSc a) ((SocketState)) where
 setSocketState x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUdpSocket_setSocketState cobj_x0 (toCLong $ qEnum_toInt x1)

instance QwaitForBytesWritten (QUdpSocket ()) (()) where
 waitForBytesWritten x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUdpSocket_waitForBytesWritten_h cobj_x0

foreign import ccall "qtc_QUdpSocket_waitForBytesWritten_h" qtc_QUdpSocket_waitForBytesWritten_h :: Ptr (TQUdpSocket a) -> IO CBool

instance QwaitForBytesWritten (QUdpSocketSc a) (()) where
 waitForBytesWritten x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUdpSocket_waitForBytesWritten_h cobj_x0

instance QwaitForBytesWritten (QUdpSocket ()) ((Int)) where
 waitForBytesWritten x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUdpSocket_waitForBytesWritten1_h cobj_x0 (toCInt x1)

foreign import ccall "qtc_QUdpSocket_waitForBytesWritten1_h" qtc_QUdpSocket_waitForBytesWritten1_h :: Ptr (TQUdpSocket a) -> CInt -> IO CBool

instance QwaitForBytesWritten (QUdpSocketSc a) ((Int)) where
 waitForBytesWritten x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUdpSocket_waitForBytesWritten1_h cobj_x0 (toCInt x1)

instance QwaitForReadyRead (QUdpSocket ()) (()) where
 waitForReadyRead x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUdpSocket_waitForReadyRead_h cobj_x0

foreign import ccall "qtc_QUdpSocket_waitForReadyRead_h" qtc_QUdpSocket_waitForReadyRead_h :: Ptr (TQUdpSocket a) -> IO CBool

instance QwaitForReadyRead (QUdpSocketSc a) (()) where
 waitForReadyRead x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUdpSocket_waitForReadyRead_h cobj_x0

instance QwaitForReadyRead (QUdpSocket ()) ((Int)) where
 waitForReadyRead x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUdpSocket_waitForReadyRead1_h cobj_x0 (toCInt x1)

foreign import ccall "qtc_QUdpSocket_waitForReadyRead1_h" qtc_QUdpSocket_waitForReadyRead1_h :: Ptr (TQUdpSocket a) -> CInt -> IO CBool

instance QwaitForReadyRead (QUdpSocketSc a) ((Int)) where
 waitForReadyRead x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUdpSocket_waitForReadyRead1_h cobj_x0 (toCInt x1)

instance QwriteData (QUdpSocket ()) ((String, Int)) where
 writeData x0 (x1, x2)
  = withLongLongResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QUdpSocket_writeData cobj_x0 cstr_x1 (toCLLong x2)

foreign import ccall "qtc_QUdpSocket_writeData" qtc_QUdpSocket_writeData :: Ptr (TQUdpSocket a) -> CWString -> CLLong -> IO CLLong

instance QwriteData (QUdpSocketSc a) ((String, Int)) where
 writeData x0 (x1, x2)
  = withLongLongResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QUdpSocket_writeData cobj_x0 cstr_x1 (toCLLong x2)

instance Qopen (QUdpSocket ()) ((OpenMode)) where
 open x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUdpSocket_open_h cobj_x0 (toCLong $ qFlags_toInt x1)

foreign import ccall "qtc_QUdpSocket_open_h" qtc_QUdpSocket_open_h :: Ptr (TQUdpSocket a) -> CLong -> IO CBool

instance Qopen (QUdpSocketSc a) ((OpenMode)) where
 open x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUdpSocket_open_h cobj_x0 (toCLong $ qFlags_toInt x1)

instance Qpos (QUdpSocket ()) (()) (IO (Int)) where
 pos x0 ()
  = withLongLongResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUdpSocket_pos_h cobj_x0

foreign import ccall "qtc_QUdpSocket_pos_h" qtc_QUdpSocket_pos_h :: Ptr (TQUdpSocket a) -> IO CLLong

instance Qpos (QUdpSocketSc a) (()) (IO (Int)) where
 pos x0 ()
  = withLongLongResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUdpSocket_pos_h cobj_x0

instance Qreset (QUdpSocket ()) (()) (IO (Bool)) where
 reset x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUdpSocket_reset_h cobj_x0

foreign import ccall "qtc_QUdpSocket_reset_h" qtc_QUdpSocket_reset_h :: Ptr (TQUdpSocket a) -> IO CBool

instance Qreset (QUdpSocketSc a) (()) (IO (Bool)) where
 reset x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUdpSocket_reset_h cobj_x0

instance Qseek (QUdpSocket ()) ((Int)) where
 seek x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUdpSocket_seek_h cobj_x0 (toCLLong x1)

foreign import ccall "qtc_QUdpSocket_seek_h" qtc_QUdpSocket_seek_h :: Ptr (TQUdpSocket a) -> CLLong -> IO CBool

instance Qseek (QUdpSocketSc a) ((Int)) where
 seek x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUdpSocket_seek_h cobj_x0 (toCLLong x1)

instance QsetErrorString (QUdpSocket ()) ((String)) where
 setErrorString x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QUdpSocket_setErrorString cobj_x0 cstr_x1

foreign import ccall "qtc_QUdpSocket_setErrorString" qtc_QUdpSocket_setErrorString :: Ptr (TQUdpSocket a) -> CWString -> IO ()

instance QsetErrorString (QUdpSocketSc a) ((String)) where
 setErrorString x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QUdpSocket_setErrorString cobj_x0 cstr_x1

instance QsetOpenMode (QUdpSocket ()) ((OpenMode)) where
 setOpenMode x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUdpSocket_setOpenMode cobj_x0 (toCLong $ qFlags_toInt x1)

foreign import ccall "qtc_QUdpSocket_setOpenMode" qtc_QUdpSocket_setOpenMode :: Ptr (TQUdpSocket a) -> CLong -> IO ()

instance QsetOpenMode (QUdpSocketSc a) ((OpenMode)) where
 setOpenMode x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUdpSocket_setOpenMode cobj_x0 (toCLong $ qFlags_toInt x1)

instance Qqsize (QUdpSocket ()) (()) (IO (Int)) where
 qsize x0 ()
  = withLongLongResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUdpSocket_size_h cobj_x0

foreign import ccall "qtc_QUdpSocket_size_h" qtc_QUdpSocket_size_h :: Ptr (TQUdpSocket a) -> IO CLLong

instance Qqsize (QUdpSocketSc a) (()) (IO (Int)) where
 qsize x0 ()
  = withLongLongResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUdpSocket_size_h cobj_x0

instance QchildEvent (QUdpSocket ()) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUdpSocket_childEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QUdpSocket_childEvent" qtc_QUdpSocket_childEvent :: Ptr (TQUdpSocket a) -> Ptr (TQChildEvent t1) -> IO ()

instance QchildEvent (QUdpSocketSc a) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUdpSocket_childEvent cobj_x0 cobj_x1

instance QconnectNotify (QUdpSocket ()) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QUdpSocket_connectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QUdpSocket_connectNotify" qtc_QUdpSocket_connectNotify :: Ptr (TQUdpSocket a) -> CWString -> IO ()

instance QconnectNotify (QUdpSocketSc a) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QUdpSocket_connectNotify cobj_x0 cstr_x1

instance QcustomEvent (QUdpSocket ()) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUdpSocket_customEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QUdpSocket_customEvent" qtc_QUdpSocket_customEvent :: Ptr (TQUdpSocket a) -> Ptr (TQEvent t1) -> IO ()

instance QcustomEvent (QUdpSocketSc a) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUdpSocket_customEvent cobj_x0 cobj_x1

instance QdisconnectNotify (QUdpSocket ()) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QUdpSocket_disconnectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QUdpSocket_disconnectNotify" qtc_QUdpSocket_disconnectNotify :: Ptr (TQUdpSocket a) -> CWString -> IO ()

instance QdisconnectNotify (QUdpSocketSc a) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QUdpSocket_disconnectNotify cobj_x0 cstr_x1

instance Qevent (QUdpSocket ()) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUdpSocket_event_h cobj_x0 cobj_x1

foreign import ccall "qtc_QUdpSocket_event_h" qtc_QUdpSocket_event_h :: Ptr (TQUdpSocket a) -> Ptr (TQEvent t1) -> IO CBool

instance Qevent (QUdpSocketSc a) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUdpSocket_event_h cobj_x0 cobj_x1

instance QeventFilter (QUdpSocket ()) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QUdpSocket_eventFilter_h cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QUdpSocket_eventFilter_h" qtc_QUdpSocket_eventFilter_h :: Ptr (TQUdpSocket a) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO CBool

instance QeventFilter (QUdpSocketSc a) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QUdpSocket_eventFilter_h cobj_x0 cobj_x1 cobj_x2

instance Qreceivers (QUdpSocket ()) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QUdpSocket_receivers cobj_x0 cstr_x1

foreign import ccall "qtc_QUdpSocket_receivers" qtc_QUdpSocket_receivers :: Ptr (TQUdpSocket a) -> CWString -> IO CInt

instance Qreceivers (QUdpSocketSc a) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QUdpSocket_receivers cobj_x0 cstr_x1

instance Qsender (QUdpSocket ()) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUdpSocket_sender cobj_x0

foreign import ccall "qtc_QUdpSocket_sender" qtc_QUdpSocket_sender :: Ptr (TQUdpSocket a) -> IO (Ptr (TQObject ()))

instance Qsender (QUdpSocketSc a) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUdpSocket_sender cobj_x0

instance QtimerEvent (QUdpSocket ()) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUdpSocket_timerEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QUdpSocket_timerEvent" qtc_QUdpSocket_timerEvent :: Ptr (TQUdpSocket a) -> Ptr (TQTimerEvent t1) -> IO ()

instance QtimerEvent (QUdpSocketSc a) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUdpSocket_timerEvent cobj_x0 cobj_x1

