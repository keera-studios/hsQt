{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QTcpServer.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:31
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Network.QTcpServer (
  QqTcpServer(..)
  ,QhasPendingConnections(..)
  ,QincomingConnection(..)
  ,isListening
  ,Qlisten(..)
  ,maxPendingConnections
  ,QnextPendingConnection(..)
  ,serverAddress
  ,serverError
  ,serverPort
  ,setMaxPendingConnections
  ,QwaitForNewConnection(..)
  ,qTcpServer_delete
  ,qTcpServer_deleteLater
  )
  where

import Foreign.C.Types
import Qth.ClassTypes.Core
import Qtc.Enums.Base
import Qtc.Enums.Network.QAbstractSocket

import Qtc.Classes.Base
import Qtc.Classes.Qccs
import Qtc.Classes.Core
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core
import Qtc.Classes.Network
import Qtc.ClassTypes.Network

instance QuserMethod (QTcpServer ()) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QTcpServer_userMethod cobj_qobj (toCInt evid)

foreign import ccall "qtc_QTcpServer_userMethod" qtc_QTcpServer_userMethod :: Ptr (TQTcpServer a) -> CInt -> IO ()

instance QuserMethod (QTcpServerSc a) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QTcpServer_userMethod cobj_qobj (toCInt evid)

instance QuserMethod (QTcpServer ()) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QTcpServer_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

foreign import ccall "qtc_QTcpServer_userMethodVariant" qtc_QTcpServer_userMethodVariant :: Ptr (TQTcpServer a) -> CInt -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))

instance QuserMethod (QTcpServerSc a) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QTcpServer_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

class QqTcpServer x1 where
  qTcpServer :: x1 -> IO (QTcpServer ())

instance QqTcpServer (()) where
 qTcpServer ()
  = withQTcpServerResult $
    qtc_QTcpServer

foreign import ccall "qtc_QTcpServer" qtc_QTcpServer :: IO (Ptr (TQTcpServer ()))

instance QqTcpServer ((QObject t1)) where
 qTcpServer (x1)
  = withQTcpServerResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTcpServer1 cobj_x1

foreign import ccall "qtc_QTcpServer1" qtc_QTcpServer1 :: Ptr (TQObject t1) -> IO (Ptr (TQTcpServer ()))

instance Qclose (QTcpServer a) (()) (IO ()) where
 close x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTcpServer_close cobj_x0

foreign import ccall "qtc_QTcpServer_close" qtc_QTcpServer_close :: Ptr (TQTcpServer a) -> IO ()

instance QerrorString (QTcpServer a) (()) where
 errorString x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTcpServer_errorString cobj_x0

foreign import ccall "qtc_QTcpServer_errorString" qtc_QTcpServer_errorString :: Ptr (TQTcpServer a) -> IO (Ptr (TQString ()))

class QhasPendingConnections x0 x1 where
 hasPendingConnections :: x0 -> x1 -> IO (Bool)

instance QhasPendingConnections (QTcpServer ()) (()) where
 hasPendingConnections x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTcpServer_hasPendingConnections_h cobj_x0

foreign import ccall "qtc_QTcpServer_hasPendingConnections_h" qtc_QTcpServer_hasPendingConnections_h :: Ptr (TQTcpServer a) -> IO CBool

instance QhasPendingConnections (QTcpServerSc a) (()) where
 hasPendingConnections x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTcpServer_hasPendingConnections_h cobj_x0

class QincomingConnection x0 x1 where
 incomingConnection :: x0 -> x1 -> IO ()

instance QincomingConnection (QTcpServer ()) ((Int)) where
 incomingConnection x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTcpServer_incomingConnection cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTcpServer_incomingConnection" qtc_QTcpServer_incomingConnection :: Ptr (TQTcpServer a) -> CInt -> IO ()

instance QincomingConnection (QTcpServerSc a) ((Int)) where
 incomingConnection x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTcpServer_incomingConnection cobj_x0 (toCInt x1)

isListening :: QTcpServer a -> (()) -> IO (Bool)
isListening x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTcpServer_isListening cobj_x0

foreign import ccall "qtc_QTcpServer_isListening" qtc_QTcpServer_isListening :: Ptr (TQTcpServer a) -> IO CBool

class Qlisten x1 where
 listen :: QTcpServer a -> x1 -> IO (Bool)

instance Qlisten (()) where
 listen x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTcpServer_listen cobj_x0

foreign import ccall "qtc_QTcpServer_listen" qtc_QTcpServer_listen :: Ptr (TQTcpServer a) -> IO CBool

instance Qlisten ((QHostAddress t1)) where
 listen x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTcpServer_listen1 cobj_x0 cobj_x1

foreign import ccall "qtc_QTcpServer_listen1" qtc_QTcpServer_listen1 :: Ptr (TQTcpServer a) -> Ptr (TQHostAddress t1) -> IO CBool

instance Qlisten ((QHostAddress t1, Int)) where
 listen x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTcpServer_listen2 cobj_x0 cobj_x1 (toCUShort x2)

foreign import ccall "qtc_QTcpServer_listen2" qtc_QTcpServer_listen2 :: Ptr (TQTcpServer a) -> Ptr (TQHostAddress t1) -> CUShort -> IO CBool

maxPendingConnections :: QTcpServer a -> (()) -> IO (Int)
maxPendingConnections x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTcpServer_maxPendingConnections cobj_x0

foreign import ccall "qtc_QTcpServer_maxPendingConnections" qtc_QTcpServer_maxPendingConnections :: Ptr (TQTcpServer a) -> IO CInt

class QnextPendingConnection x0 x1 where
 nextPendingConnection :: x0 -> x1 -> IO (QTcpSocket ())

instance QnextPendingConnection (QTcpServer ()) (()) where
 nextPendingConnection x0 ()
  = withQTcpSocketResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTcpServer_nextPendingConnection_h cobj_x0

foreign import ccall "qtc_QTcpServer_nextPendingConnection_h" qtc_QTcpServer_nextPendingConnection_h :: Ptr (TQTcpServer a) -> IO (Ptr (TQTcpSocket ()))

instance QnextPendingConnection (QTcpServerSc a) (()) where
 nextPendingConnection x0 ()
  = withQTcpSocketResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTcpServer_nextPendingConnection_h cobj_x0

instance Qproxy (QTcpServer a) (()) where
 proxy x0 ()
  = withQNetworkProxyResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTcpServer_proxy cobj_x0

foreign import ccall "qtc_QTcpServer_proxy" qtc_QTcpServer_proxy :: Ptr (TQTcpServer a) -> IO (Ptr (TQNetworkProxy ()))

serverAddress :: QTcpServer a -> (()) -> IO (QHostAddress ())
serverAddress x0 ()
  = withQHostAddressResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTcpServer_serverAddress cobj_x0

foreign import ccall "qtc_QTcpServer_serverAddress" qtc_QTcpServer_serverAddress :: Ptr (TQTcpServer a) -> IO (Ptr (TQHostAddress ()))

serverError :: QTcpServer a -> (()) -> IO (SocketError)
serverError x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTcpServer_serverError cobj_x0

foreign import ccall "qtc_QTcpServer_serverError" qtc_QTcpServer_serverError :: Ptr (TQTcpServer a) -> IO CLong

serverPort :: QTcpServer a -> (()) -> IO (Int)
serverPort x0 ()
  = withUnsignedShortResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTcpServer_serverPort cobj_x0

foreign import ccall "qtc_QTcpServer_serverPort" qtc_QTcpServer_serverPort :: Ptr (TQTcpServer a) -> IO CUShort

setMaxPendingConnections :: QTcpServer a -> ((Int)) -> IO ()
setMaxPendingConnections x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTcpServer_setMaxPendingConnections cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTcpServer_setMaxPendingConnections" qtc_QTcpServer_setMaxPendingConnections :: Ptr (TQTcpServer a) -> CInt -> IO ()

instance QsetProxy (QTcpServer a) ((QNetworkProxy t1)) (IO ()) where
 setProxy x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTcpServer_setProxy cobj_x0 cobj_x1

foreign import ccall "qtc_QTcpServer_setProxy" qtc_QTcpServer_setProxy :: Ptr (TQTcpServer a) -> Ptr (TQNetworkProxy t1) -> IO ()

instance QsetSocketDescriptor (QTcpServer a) ((Int)) where
 setSocketDescriptor x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTcpServer_setSocketDescriptor cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTcpServer_setSocketDescriptor" qtc_QTcpServer_setSocketDescriptor :: Ptr (TQTcpServer a) -> CInt -> IO CBool

instance QsocketDescriptor (QTcpServer a) (()) where
 socketDescriptor x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTcpServer_socketDescriptor cobj_x0

foreign import ccall "qtc_QTcpServer_socketDescriptor" qtc_QTcpServer_socketDescriptor :: Ptr (TQTcpServer a) -> IO CInt

class QwaitForNewConnection x1 where
 waitForNewConnection :: QTcpServer a -> x1 -> IO (Bool)

instance QwaitForNewConnection (()) where
 waitForNewConnection x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTcpServer_waitForNewConnection cobj_x0

foreign import ccall "qtc_QTcpServer_waitForNewConnection" qtc_QTcpServer_waitForNewConnection :: Ptr (TQTcpServer a) -> IO CBool

instance QwaitForNewConnection ((Int)) where
 waitForNewConnection x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTcpServer_waitForNewConnection1 cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTcpServer_waitForNewConnection1" qtc_QTcpServer_waitForNewConnection1 :: Ptr (TQTcpServer a) -> CInt -> IO CBool

qTcpServer_delete :: QTcpServer a -> IO ()
qTcpServer_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTcpServer_delete cobj_x0

foreign import ccall "qtc_QTcpServer_delete" qtc_QTcpServer_delete :: Ptr (TQTcpServer a) -> IO ()

qTcpServer_deleteLater :: QTcpServer a -> IO ()
qTcpServer_deleteLater x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTcpServer_deleteLater cobj_x0

foreign import ccall "qtc_QTcpServer_deleteLater" qtc_QTcpServer_deleteLater :: Ptr (TQTcpServer a) -> IO ()

instance QchildEvent (QTcpServer ()) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTcpServer_childEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTcpServer_childEvent" qtc_QTcpServer_childEvent :: Ptr (TQTcpServer a) -> Ptr (TQChildEvent t1) -> IO ()

instance QchildEvent (QTcpServerSc a) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTcpServer_childEvent cobj_x0 cobj_x1

instance QconnectNotify (QTcpServer ()) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTcpServer_connectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QTcpServer_connectNotify" qtc_QTcpServer_connectNotify :: Ptr (TQTcpServer a) -> CWString -> IO ()

instance QconnectNotify (QTcpServerSc a) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTcpServer_connectNotify cobj_x0 cstr_x1

instance QcustomEvent (QTcpServer ()) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTcpServer_customEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTcpServer_customEvent" qtc_QTcpServer_customEvent :: Ptr (TQTcpServer a) -> Ptr (TQEvent t1) -> IO ()

instance QcustomEvent (QTcpServerSc a) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTcpServer_customEvent cobj_x0 cobj_x1

instance QdisconnectNotify (QTcpServer ()) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTcpServer_disconnectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QTcpServer_disconnectNotify" qtc_QTcpServer_disconnectNotify :: Ptr (TQTcpServer a) -> CWString -> IO ()

instance QdisconnectNotify (QTcpServerSc a) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTcpServer_disconnectNotify cobj_x0 cstr_x1

instance Qevent (QTcpServer ()) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTcpServer_event_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTcpServer_event_h" qtc_QTcpServer_event_h :: Ptr (TQTcpServer a) -> Ptr (TQEvent t1) -> IO CBool

instance Qevent (QTcpServerSc a) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTcpServer_event_h cobj_x0 cobj_x1

instance QeventFilter (QTcpServer ()) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QTcpServer_eventFilter_h cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QTcpServer_eventFilter_h" qtc_QTcpServer_eventFilter_h :: Ptr (TQTcpServer a) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO CBool

instance QeventFilter (QTcpServerSc a) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QTcpServer_eventFilter_h cobj_x0 cobj_x1 cobj_x2

instance Qreceivers (QTcpServer ()) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTcpServer_receivers cobj_x0 cstr_x1

foreign import ccall "qtc_QTcpServer_receivers" qtc_QTcpServer_receivers :: Ptr (TQTcpServer a) -> CWString -> IO CInt

instance Qreceivers (QTcpServerSc a) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTcpServer_receivers cobj_x0 cstr_x1

instance Qsender (QTcpServer ()) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTcpServer_sender cobj_x0

foreign import ccall "qtc_QTcpServer_sender" qtc_QTcpServer_sender :: Ptr (TQTcpServer a) -> IO (Ptr (TQObject ()))

instance Qsender (QTcpServerSc a) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTcpServer_sender cobj_x0

instance QtimerEvent (QTcpServer ()) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTcpServer_timerEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTcpServer_timerEvent" qtc_QTcpServer_timerEvent :: Ptr (TQTcpServer a) -> Ptr (TQTimerEvent t1) -> IO ()

instance QtimerEvent (QTcpServerSc a) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTcpServer_timerEvent cobj_x0 cobj_x1

