{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : Network.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:30
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.ClassTypes.Network (
  QHttpHeader, TQHttpHeader, CQHttpHeader, qCast_QHttpHeader, QHttpHeaderSc, TQHttpHeaderSc, CQHttpHeaderSc, qCastList_QHttpHeader, withQHttpHeaderResult, qHttpHeaderAddFinalizer, qHttpHeaderAddFinalizer1
  ,QAbstractSocket, TQAbstractSocket, CQAbstractSocket, qCast_QAbstractSocket, QAbstractSocketSc, TQAbstractSocketSc, CQAbstractSocketSc, qCastList_QAbstractSocket, withQAbstractSocketResult, qAbstractSocketFromPtr, withQListQAbstractSocketResult, qAbstractSocketListFromPtrList
  ,QHostAddress, TQHostAddress, CQHostAddress, qCast_QHostAddress, QHostAddressSc, TQHostAddressSc, CQHostAddressSc, qCastList_QHostAddress, withQHostAddressResult, qHostAddressAddFinalizer
  ,QNetworkProxy, TQNetworkProxy, CQNetworkProxy, qCast_QNetworkProxy, QNetworkProxySc, TQNetworkProxySc, CQNetworkProxySc, qCastList_QNetworkProxy, withQNetworkProxyResult, qNetworkProxyAddFinalizer
  ,QHostInfo, TQHostInfo, CQHostInfo, qCast_QHostInfo, QHostInfoSc, TQHostInfoSc, CQHostInfoSc, qCastList_QHostInfo, withQHostInfoResult, qHostInfoAddFinalizer
  ,QNetworkAddressEntry, TQNetworkAddressEntry, CQNetworkAddressEntry, qCast_QNetworkAddressEntry, QNetworkAddressEntrySc, TQNetworkAddressEntrySc, CQNetworkAddressEntrySc, qCastList_QNetworkAddressEntry, withQNetworkAddressEntryResult, qNetworkAddressEntryAddFinalizer
  ,QNetworkInterface, TQNetworkInterface, CQNetworkInterface, qCast_QNetworkInterface, QNetworkInterfaceSc, TQNetworkInterfaceSc, CQNetworkInterfaceSc, qCastList_QNetworkInterface, withQNetworkInterfaceResult, qNetworkInterfaceAddFinalizer
  ,QUrlInfo, TQUrlInfo, CQUrlInfo, qCast_QUrlInfo, QUrlInfoSc, TQUrlInfoSc, CQUrlInfoSc, qCastList_QUrlInfo, withQUrlInfoResult, qUrlInfoAddFinalizer, qUrlInfoAddFinalizer1
  ,QUdpSocket, TQUdpSocket, CQUdpSocket, qCast_QUdpSocket, QUdpSocketSc, TQUdpSocketSc, CQUdpSocketSc, qCastList_QUdpSocket, withQUdpSocketResult, qUdpSocketFromPtr, withQListQUdpSocketResult, qUdpSocketListFromPtrList
  ,QTcpSocket, TQTcpSocket, CQTcpSocket, qCast_QTcpSocket, QTcpSocketSc, TQTcpSocketSc, CQTcpSocketSc, qCastList_QTcpSocket, withQTcpSocketResult, qTcpSocketFromPtr, withQListQTcpSocketResult, qTcpSocketListFromPtrList
  ,QHttpResponseHeader, TQHttpResponseHeader, CQHttpResponseHeader, qCast_QHttpResponseHeader, QHttpResponseHeaderSc, TQHttpResponseHeaderSc, CQHttpResponseHeaderSc, qCastList_QHttpResponseHeader, withQHttpResponseHeaderResult, qHttpResponseHeaderAddFinalizer, qHttpResponseHeaderAddFinalizer1
  ,QHttpRequestHeader, TQHttpRequestHeader, CQHttpRequestHeader, qCast_QHttpRequestHeader, QHttpRequestHeaderSc, TQHttpRequestHeaderSc, CQHttpRequestHeaderSc, qCastList_QHttpRequestHeader, withQHttpRequestHeaderResult, qHttpRequestHeaderAddFinalizer, qHttpRequestHeaderAddFinalizer1
  ,QTcpServer, TQTcpServer, CQTcpServer, qCast_QTcpServer, QTcpServerSc, TQTcpServerSc, CQTcpServerSc, qCastList_QTcpServer, withQTcpServerResult, qTcpServerFromPtr, withQListQTcpServerResult, qTcpServerListFromPtrList
  ,QHttp, TQHttp, CQHttp, qCast_QHttp, QHttpSc, TQHttpSc, CQHttpSc, qCastList_QHttp, withQHttpResult, qHttpFromPtr, withQListQHttpResult, qHttpListFromPtrList
  ,QFtp, TQFtp, CQFtp, qCast_QFtp, QFtpSc, TQFtpSc, CQFtpSc, qCastList_QFtp, withQFtpResult, qFtpFromPtr, withQListQFtpResult, qFtpListFromPtrList
  )
  where

import Foreign.C.Types
import Qtc.Classes.Types
import Qtc.ClassTypes.Core

type QHttpHeader a = Object (CQHttpHeader a)
type TQHttpHeader a = CQHttpHeader a
data CQHttpHeader a = CQHttpHeader

type QHttpHeaderSc a = QHttpHeader (CQHttpHeaderSc a)
type TQHttpHeaderSc a = TQHttpHeader (CQHttpHeaderSc a)
data CQHttpHeaderSc a = CQHttpHeaderSc

qCast_QHttpHeader :: Object a -> IO (QHttpHeader ())
qCast_QHttpHeader _qobj
  = return (objectCast _qobj)

withQHttpHeaderResult :: IO (Ptr (TQHttpHeader a)) -> IO (QHttpHeader a)
withQHttpHeaderResult f
  = withObjectResult qtc_QHttpHeader_getFinalizer f

foreign import ccall qtc_QHttpHeader_getFinalizer :: FunPtr (Ptr (TQHttpHeader a) -> IO ())

qHttpHeaderAddFinalizer :: QHttpHeader a -> IO ()
qHttpHeaderAddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QHttpHeader_getFinalizer fp

foreign import ccall qtc_QHttpHeader_getFinalizer1 :: FunPtr (Ptr (TQHttpHeader a) -> IO ())

qHttpHeaderAddFinalizer1 :: QHttpHeader a -> IO ()
qHttpHeaderAddFinalizer1 (Object fp)
  = addForeignPtrFinalizer qtc_QHttpHeader_getFinalizer1 fp

class QqCastList_QHttpHeader a r where
  qcl_QHttpHeader :: [QHttpHeader ()] -> a -> r

instance QqCastList_QHttpHeader (QHttpHeader ()) [QHttpHeader ()] where
  qcl_QHttpHeader l x = reverse $ x:l

instance QqCastList_QHttpHeader a r => QqCastList_QHttpHeader (QHttpHeader ()) (a -> r) where
  qcl_QHttpHeader l x sx = qcl_QHttpHeader (x:l) sx

instance QqCastList_QHttpHeader (QHttpResponseHeader ()) [QHttpHeader ()] where
  qcl_QHttpHeader l x = reverse $ ((objectCast x):l)

instance QqCastList_QHttpHeader a r => QqCastList_QHttpHeader (QHttpResponseHeader ()) (a -> r) where
  qcl_QHttpHeader l x sx = qcl_QHttpHeader ((objectCast x):l) sx

instance QqCastList_QHttpHeader (QHttpRequestHeader ()) [QHttpHeader ()] where
  qcl_QHttpHeader l x = reverse $ ((objectCast x):l)

instance QqCastList_QHttpHeader a r => QqCastList_QHttpHeader (QHttpRequestHeader ()) (a -> r) where
  qcl_QHttpHeader l x sx = qcl_QHttpHeader ((objectCast x):l) sx

qCastList_QHttpHeader x = qcl_QHttpHeader [] x

type QAbstractSocket a = QIODevice (CQAbstractSocket a)
type TQAbstractSocket a = TQIODevice (CQAbstractSocket a)
data CQAbstractSocket a = CQAbstractSocket

type QAbstractSocketSc a = QAbstractSocket (CQAbstractSocketSc a)
type TQAbstractSocketSc a = TQAbstractSocket (CQAbstractSocketSc a)
data CQAbstractSocketSc a = CQAbstractSocketSc

qCast_QAbstractSocket :: Object a -> IO (QAbstractSocket ())
qCast_QAbstractSocket _qobj
  = return (objectCast _qobj)

withQAbstractSocketResult :: IO (Ptr (TQAbstractSocket a)) -> IO (QAbstractSocket a)
withQAbstractSocketResult f
  = withObjectResult qtc_QAbstractSocket_getFinalizer f

qAbstractSocketFromPtr :: Ptr (TQAbstractSocket a) -> IO (QAbstractSocket a)
qAbstractSocketFromPtr p
  = objectFromPtr qtc_QAbstractSocket_getFinalizer p

withQListQAbstractSocketResult :: (Ptr (Ptr (TQAbstractSocket a)) -> IO CInt) -> IO [QAbstractSocket a]
withQListQAbstractSocketResult f
  = withQListObjectResult qtc_QAbstractSocket_getFinalizer f

qAbstractSocketListFromPtrList :: [Ptr (TQAbstractSocket a)] -> IO [QAbstractSocket a]
qAbstractSocketListFromPtrList p
  = objectListFromPtrList qtc_QAbstractSocket_getFinalizer p

foreign import ccall qtc_QAbstractSocket_getFinalizer :: FunPtr (Ptr (TQAbstractSocket a) -> IO ())

class QqCastList_QAbstractSocket a r where
  qcl_QAbstractSocket :: [QAbstractSocket ()] -> a -> r

instance QqCastList_QAbstractSocket (QAbstractSocket ()) [QAbstractSocket ()] where
  qcl_QAbstractSocket l x = reverse $ x:l

instance QqCastList_QAbstractSocket a r => QqCastList_QAbstractSocket (QAbstractSocket ()) (a -> r) where
  qcl_QAbstractSocket l x sx = qcl_QAbstractSocket (x:l) sx

instance QqCastList_QAbstractSocket (QUdpSocket ()) [QAbstractSocket ()] where
  qcl_QAbstractSocket l x = reverse $ ((objectCast x):l)

instance QqCastList_QAbstractSocket a r => QqCastList_QAbstractSocket (QUdpSocket ()) (a -> r) where
  qcl_QAbstractSocket l x sx = qcl_QAbstractSocket ((objectCast x):l) sx

instance QqCastList_QAbstractSocket (QTcpSocket ()) [QAbstractSocket ()] where
  qcl_QAbstractSocket l x = reverse $ ((objectCast x):l)

instance QqCastList_QAbstractSocket a r => QqCastList_QAbstractSocket (QTcpSocket ()) (a -> r) where
  qcl_QAbstractSocket l x sx = qcl_QAbstractSocket ((objectCast x):l) sx

qCastList_QAbstractSocket x = qcl_QAbstractSocket [] x

type QHostAddress a = Object (CQHostAddress a)
type TQHostAddress a = CQHostAddress a
data CQHostAddress a = CQHostAddress

type QHostAddressSc a = QHostAddress (CQHostAddressSc a)
type TQHostAddressSc a = TQHostAddress (CQHostAddressSc a)
data CQHostAddressSc a = CQHostAddressSc

qCast_QHostAddress :: Object a -> IO (QHostAddress ())
qCast_QHostAddress _qobj
  = return (objectCast _qobj)

withQHostAddressResult :: IO (Ptr (TQHostAddress a)) -> IO (QHostAddress a)
withQHostAddressResult f
  = withObjectResult qtc_QHostAddress_getFinalizer f

foreign import ccall qtc_QHostAddress_getFinalizer :: FunPtr (Ptr (TQHostAddress a) -> IO ())

qHostAddressAddFinalizer :: QHostAddress a -> IO ()
qHostAddressAddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QHostAddress_getFinalizer fp

class QqCastList_QHostAddress a r where
  qcl_QHostAddress :: [QHostAddress ()] -> a -> r

instance QqCastList_QHostAddress (QHostAddress ()) [QHostAddress ()] where
  qcl_QHostAddress l x = reverse $ x:l

instance QqCastList_QHostAddress a r => QqCastList_QHostAddress (QHostAddress ()) (a -> r) where
  qcl_QHostAddress l x sx = qcl_QHostAddress (x:l) sx

qCastList_QHostAddress x = qcl_QHostAddress [] x

type QNetworkProxy a = Object (CQNetworkProxy a)
type TQNetworkProxy a = CQNetworkProxy a
data CQNetworkProxy a = CQNetworkProxy

type QNetworkProxySc a = QNetworkProxy (CQNetworkProxySc a)
type TQNetworkProxySc a = TQNetworkProxy (CQNetworkProxySc a)
data CQNetworkProxySc a = CQNetworkProxySc

qCast_QNetworkProxy :: Object a -> IO (QNetworkProxy ())
qCast_QNetworkProxy _qobj
  = return (objectCast _qobj)

withQNetworkProxyResult :: IO (Ptr (TQNetworkProxy a)) -> IO (QNetworkProxy a)
withQNetworkProxyResult f
  = withObjectResult qtc_QNetworkProxy_getFinalizer f

foreign import ccall qtc_QNetworkProxy_getFinalizer :: FunPtr (Ptr (TQNetworkProxy a) -> IO ())

qNetworkProxyAddFinalizer :: QNetworkProxy a -> IO ()
qNetworkProxyAddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QNetworkProxy_getFinalizer fp

class QqCastList_QNetworkProxy a r where
  qcl_QNetworkProxy :: [QNetworkProxy ()] -> a -> r

instance QqCastList_QNetworkProxy (QNetworkProxy ()) [QNetworkProxy ()] where
  qcl_QNetworkProxy l x = reverse $ x:l

instance QqCastList_QNetworkProxy a r => QqCastList_QNetworkProxy (QNetworkProxy ()) (a -> r) where
  qcl_QNetworkProxy l x sx = qcl_QNetworkProxy (x:l) sx

qCastList_QNetworkProxy x = qcl_QNetworkProxy [] x

type QHostInfo a = Object (CQHostInfo a)
type TQHostInfo a = CQHostInfo a
data CQHostInfo a = CQHostInfo

type QHostInfoSc a = QHostInfo (CQHostInfoSc a)
type TQHostInfoSc a = TQHostInfo (CQHostInfoSc a)
data CQHostInfoSc a = CQHostInfoSc

qCast_QHostInfo :: Object a -> IO (QHostInfo ())
qCast_QHostInfo _qobj
  = return (objectCast _qobj)

withQHostInfoResult :: IO (Ptr (TQHostInfo a)) -> IO (QHostInfo a)
withQHostInfoResult f
  = withObjectResult qtc_QHostInfo_getFinalizer f

foreign import ccall qtc_QHostInfo_getFinalizer :: FunPtr (Ptr (TQHostInfo a) -> IO ())

qHostInfoAddFinalizer :: QHostInfo a -> IO ()
qHostInfoAddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QHostInfo_getFinalizer fp

class QqCastList_QHostInfo a r where
  qcl_QHostInfo :: [QHostInfo ()] -> a -> r

instance QqCastList_QHostInfo (QHostInfo ()) [QHostInfo ()] where
  qcl_QHostInfo l x = reverse $ x:l

instance QqCastList_QHostInfo a r => QqCastList_QHostInfo (QHostInfo ()) (a -> r) where
  qcl_QHostInfo l x sx = qcl_QHostInfo (x:l) sx

qCastList_QHostInfo x = qcl_QHostInfo [] x

type QNetworkAddressEntry a = Object (CQNetworkAddressEntry a)
type TQNetworkAddressEntry a = CQNetworkAddressEntry a
data CQNetworkAddressEntry a = CQNetworkAddressEntry

type QNetworkAddressEntrySc a = QNetworkAddressEntry (CQNetworkAddressEntrySc a)
type TQNetworkAddressEntrySc a = TQNetworkAddressEntry (CQNetworkAddressEntrySc a)
data CQNetworkAddressEntrySc a = CQNetworkAddressEntrySc

qCast_QNetworkAddressEntry :: Object a -> IO (QNetworkAddressEntry ())
qCast_QNetworkAddressEntry _qobj
  = return (objectCast _qobj)

withQNetworkAddressEntryResult :: IO (Ptr (TQNetworkAddressEntry a)) -> IO (QNetworkAddressEntry a)
withQNetworkAddressEntryResult f
  = withObjectResult qtc_QNetworkAddressEntry_getFinalizer f

foreign import ccall qtc_QNetworkAddressEntry_getFinalizer :: FunPtr (Ptr (TQNetworkAddressEntry a) -> IO ())

qNetworkAddressEntryAddFinalizer :: QNetworkAddressEntry a -> IO ()
qNetworkAddressEntryAddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QNetworkAddressEntry_getFinalizer fp

class QqCastList_QNetworkAddressEntry a r where
  qcl_QNetworkAddressEntry :: [QNetworkAddressEntry ()] -> a -> r

instance QqCastList_QNetworkAddressEntry (QNetworkAddressEntry ()) [QNetworkAddressEntry ()] where
  qcl_QNetworkAddressEntry l x = reverse $ x:l

instance QqCastList_QNetworkAddressEntry a r => QqCastList_QNetworkAddressEntry (QNetworkAddressEntry ()) (a -> r) where
  qcl_QNetworkAddressEntry l x sx = qcl_QNetworkAddressEntry (x:l) sx

qCastList_QNetworkAddressEntry x = qcl_QNetworkAddressEntry [] x

type QNetworkInterface a = Object (CQNetworkInterface a)
type TQNetworkInterface a = CQNetworkInterface a
data CQNetworkInterface a = CQNetworkInterface

type QNetworkInterfaceSc a = QNetworkInterface (CQNetworkInterfaceSc a)
type TQNetworkInterfaceSc a = TQNetworkInterface (CQNetworkInterfaceSc a)
data CQNetworkInterfaceSc a = CQNetworkInterfaceSc

qCast_QNetworkInterface :: Object a -> IO (QNetworkInterface ())
qCast_QNetworkInterface _qobj
  = return (objectCast _qobj)

withQNetworkInterfaceResult :: IO (Ptr (TQNetworkInterface a)) -> IO (QNetworkInterface a)
withQNetworkInterfaceResult f
  = withObjectResult qtc_QNetworkInterface_getFinalizer f

foreign import ccall qtc_QNetworkInterface_getFinalizer :: FunPtr (Ptr (TQNetworkInterface a) -> IO ())

qNetworkInterfaceAddFinalizer :: QNetworkInterface a -> IO ()
qNetworkInterfaceAddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QNetworkInterface_getFinalizer fp

class QqCastList_QNetworkInterface a r where
  qcl_QNetworkInterface :: [QNetworkInterface ()] -> a -> r

instance QqCastList_QNetworkInterface (QNetworkInterface ()) [QNetworkInterface ()] where
  qcl_QNetworkInterface l x = reverse $ x:l

instance QqCastList_QNetworkInterface a r => QqCastList_QNetworkInterface (QNetworkInterface ()) (a -> r) where
  qcl_QNetworkInterface l x sx = qcl_QNetworkInterface (x:l) sx

qCastList_QNetworkInterface x = qcl_QNetworkInterface [] x

type QUrlInfo a = Object (CQUrlInfo a)
type TQUrlInfo a = CQUrlInfo a
data CQUrlInfo a = CQUrlInfo

type QUrlInfoSc a = QUrlInfo (CQUrlInfoSc a)
type TQUrlInfoSc a = TQUrlInfo (CQUrlInfoSc a)
data CQUrlInfoSc a = CQUrlInfoSc

qCast_QUrlInfo :: Object a -> IO (QUrlInfo ())
qCast_QUrlInfo _qobj
  = return (objectCast _qobj)

withQUrlInfoResult :: IO (Ptr (TQUrlInfo a)) -> IO (QUrlInfo a)
withQUrlInfoResult f
  = withObjectResult qtc_QUrlInfo_getFinalizer f

foreign import ccall qtc_QUrlInfo_getFinalizer :: FunPtr (Ptr (TQUrlInfo a) -> IO ())

qUrlInfoAddFinalizer :: QUrlInfo a -> IO ()
qUrlInfoAddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QUrlInfo_getFinalizer fp

foreign import ccall qtc_QUrlInfo_getFinalizer1 :: FunPtr (Ptr (TQUrlInfo a) -> IO ())

qUrlInfoAddFinalizer1 :: QUrlInfo a -> IO ()
qUrlInfoAddFinalizer1 (Object fp)
  = addForeignPtrFinalizer qtc_QUrlInfo_getFinalizer1 fp

class QqCastList_QUrlInfo a r where
  qcl_QUrlInfo :: [QUrlInfo ()] -> a -> r

instance QqCastList_QUrlInfo (QUrlInfo ()) [QUrlInfo ()] where
  qcl_QUrlInfo l x = reverse $ x:l

instance QqCastList_QUrlInfo a r => QqCastList_QUrlInfo (QUrlInfo ()) (a -> r) where
  qcl_QUrlInfo l x sx = qcl_QUrlInfo (x:l) sx

qCastList_QUrlInfo x = qcl_QUrlInfo [] x

type QUdpSocket a = QAbstractSocket (CQUdpSocket a)
type TQUdpSocket a = TQAbstractSocket (CQUdpSocket a)
data CQUdpSocket a = CQUdpSocket

type QUdpSocketSc a = QUdpSocket (CQUdpSocketSc a)
type TQUdpSocketSc a = TQUdpSocket (CQUdpSocketSc a)
data CQUdpSocketSc a = CQUdpSocketSc

qCast_QUdpSocket :: Object a -> IO (QUdpSocket ())
qCast_QUdpSocket _qobj
  = return (objectCast _qobj)

withQUdpSocketResult :: IO (Ptr (TQUdpSocket a)) -> IO (QUdpSocket a)
withQUdpSocketResult f
  = withObjectResult qtc_QUdpSocket_getFinalizer f

qUdpSocketFromPtr :: Ptr (TQUdpSocket a) -> IO (QUdpSocket a)
qUdpSocketFromPtr p
  = objectFromPtr qtc_QUdpSocket_getFinalizer p

withQListQUdpSocketResult :: (Ptr (Ptr (TQUdpSocket a)) -> IO CInt) -> IO [QUdpSocket a]
withQListQUdpSocketResult f
  = withQListObjectResult qtc_QUdpSocket_getFinalizer f

qUdpSocketListFromPtrList :: [Ptr (TQUdpSocket a)] -> IO [QUdpSocket a]
qUdpSocketListFromPtrList p
  = objectListFromPtrList qtc_QUdpSocket_getFinalizer p

foreign import ccall qtc_QUdpSocket_getFinalizer :: FunPtr (Ptr (TQUdpSocket a) -> IO ())

class QqCastList_QUdpSocket a r where
  qcl_QUdpSocket :: [QUdpSocket ()] -> a -> r

instance QqCastList_QUdpSocket (QUdpSocket ()) [QUdpSocket ()] where
  qcl_QUdpSocket l x = reverse $ x:l

instance QqCastList_QUdpSocket a r => QqCastList_QUdpSocket (QUdpSocket ()) (a -> r) where
  qcl_QUdpSocket l x sx = qcl_QUdpSocket (x:l) sx

qCastList_QUdpSocket x = qcl_QUdpSocket [] x

type QTcpSocket a = QAbstractSocket (CQTcpSocket a)
type TQTcpSocket a = TQAbstractSocket (CQTcpSocket a)
data CQTcpSocket a = CQTcpSocket

type QTcpSocketSc a = QTcpSocket (CQTcpSocketSc a)
type TQTcpSocketSc a = TQTcpSocket (CQTcpSocketSc a)
data CQTcpSocketSc a = CQTcpSocketSc

qCast_QTcpSocket :: Object a -> IO (QTcpSocket ())
qCast_QTcpSocket _qobj
  = return (objectCast _qobj)

withQTcpSocketResult :: IO (Ptr (TQTcpSocket a)) -> IO (QTcpSocket a)
withQTcpSocketResult f
  = withObjectResult qtc_QTcpSocket_getFinalizer f

qTcpSocketFromPtr :: Ptr (TQTcpSocket a) -> IO (QTcpSocket a)
qTcpSocketFromPtr p
  = objectFromPtr qtc_QTcpSocket_getFinalizer p

withQListQTcpSocketResult :: (Ptr (Ptr (TQTcpSocket a)) -> IO CInt) -> IO [QTcpSocket a]
withQListQTcpSocketResult f
  = withQListObjectResult qtc_QTcpSocket_getFinalizer f

qTcpSocketListFromPtrList :: [Ptr (TQTcpSocket a)] -> IO [QTcpSocket a]
qTcpSocketListFromPtrList p
  = objectListFromPtrList qtc_QTcpSocket_getFinalizer p

foreign import ccall qtc_QTcpSocket_getFinalizer :: FunPtr (Ptr (TQTcpSocket a) -> IO ())

class QqCastList_QTcpSocket a r where
  qcl_QTcpSocket :: [QTcpSocket ()] -> a -> r

instance QqCastList_QTcpSocket (QTcpSocket ()) [QTcpSocket ()] where
  qcl_QTcpSocket l x = reverse $ x:l

instance QqCastList_QTcpSocket a r => QqCastList_QTcpSocket (QTcpSocket ()) (a -> r) where
  qcl_QTcpSocket l x sx = qcl_QTcpSocket (x:l) sx

qCastList_QTcpSocket x = qcl_QTcpSocket [] x

type QHttpResponseHeader a = QHttpHeader (CQHttpResponseHeader a)
type TQHttpResponseHeader a = TQHttpHeader (CQHttpResponseHeader a)
data CQHttpResponseHeader a = CQHttpResponseHeader

type QHttpResponseHeaderSc a = QHttpResponseHeader (CQHttpResponseHeaderSc a)
type TQHttpResponseHeaderSc a = TQHttpResponseHeader (CQHttpResponseHeaderSc a)
data CQHttpResponseHeaderSc a = CQHttpResponseHeaderSc

qCast_QHttpResponseHeader :: Object a -> IO (QHttpResponseHeader ())
qCast_QHttpResponseHeader _qobj
  = return (objectCast _qobj)

withQHttpResponseHeaderResult :: IO (Ptr (TQHttpResponseHeader a)) -> IO (QHttpResponseHeader a)
withQHttpResponseHeaderResult f
  = withObjectResult qtc_QHttpResponseHeader_getFinalizer f

foreign import ccall qtc_QHttpResponseHeader_getFinalizer :: FunPtr (Ptr (TQHttpResponseHeader a) -> IO ())

qHttpResponseHeaderAddFinalizer :: QHttpResponseHeader a -> IO ()
qHttpResponseHeaderAddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QHttpResponseHeader_getFinalizer fp

foreign import ccall qtc_QHttpResponseHeader_getFinalizer1 :: FunPtr (Ptr (TQHttpResponseHeader a) -> IO ())

qHttpResponseHeaderAddFinalizer1 :: QHttpResponseHeader a -> IO ()
qHttpResponseHeaderAddFinalizer1 (Object fp)
  = addForeignPtrFinalizer qtc_QHttpResponseHeader_getFinalizer1 fp

class QqCastList_QHttpResponseHeader a r where
  qcl_QHttpResponseHeader :: [QHttpResponseHeader ()] -> a -> r

instance QqCastList_QHttpResponseHeader (QHttpResponseHeader ()) [QHttpResponseHeader ()] where
  qcl_QHttpResponseHeader l x = reverse $ x:l

instance QqCastList_QHttpResponseHeader a r => QqCastList_QHttpResponseHeader (QHttpResponseHeader ()) (a -> r) where
  qcl_QHttpResponseHeader l x sx = qcl_QHttpResponseHeader (x:l) sx

qCastList_QHttpResponseHeader x = qcl_QHttpResponseHeader [] x

type QHttpRequestHeader a = QHttpHeader (CQHttpRequestHeader a)
type TQHttpRequestHeader a = TQHttpHeader (CQHttpRequestHeader a)
data CQHttpRequestHeader a = CQHttpRequestHeader

type QHttpRequestHeaderSc a = QHttpRequestHeader (CQHttpRequestHeaderSc a)
type TQHttpRequestHeaderSc a = TQHttpRequestHeader (CQHttpRequestHeaderSc a)
data CQHttpRequestHeaderSc a = CQHttpRequestHeaderSc

qCast_QHttpRequestHeader :: Object a -> IO (QHttpRequestHeader ())
qCast_QHttpRequestHeader _qobj
  = return (objectCast _qobj)

withQHttpRequestHeaderResult :: IO (Ptr (TQHttpRequestHeader a)) -> IO (QHttpRequestHeader a)
withQHttpRequestHeaderResult f
  = withObjectResult qtc_QHttpRequestHeader_getFinalizer f

foreign import ccall qtc_QHttpRequestHeader_getFinalizer :: FunPtr (Ptr (TQHttpRequestHeader a) -> IO ())

qHttpRequestHeaderAddFinalizer :: QHttpRequestHeader a -> IO ()
qHttpRequestHeaderAddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QHttpRequestHeader_getFinalizer fp

foreign import ccall qtc_QHttpRequestHeader_getFinalizer1 :: FunPtr (Ptr (TQHttpRequestHeader a) -> IO ())

qHttpRequestHeaderAddFinalizer1 :: QHttpRequestHeader a -> IO ()
qHttpRequestHeaderAddFinalizer1 (Object fp)
  = addForeignPtrFinalizer qtc_QHttpRequestHeader_getFinalizer1 fp

class QqCastList_QHttpRequestHeader a r where
  qcl_QHttpRequestHeader :: [QHttpRequestHeader ()] -> a -> r

instance QqCastList_QHttpRequestHeader (QHttpRequestHeader ()) [QHttpRequestHeader ()] where
  qcl_QHttpRequestHeader l x = reverse $ x:l

instance QqCastList_QHttpRequestHeader a r => QqCastList_QHttpRequestHeader (QHttpRequestHeader ()) (a -> r) where
  qcl_QHttpRequestHeader l x sx = qcl_QHttpRequestHeader (x:l) sx

qCastList_QHttpRequestHeader x = qcl_QHttpRequestHeader [] x

type QTcpServer a = QObject (CQTcpServer a)
type TQTcpServer a = TQObject (CQTcpServer a)
data CQTcpServer a = CQTcpServer

type QTcpServerSc a = QTcpServer (CQTcpServerSc a)
type TQTcpServerSc a = TQTcpServer (CQTcpServerSc a)
data CQTcpServerSc a = CQTcpServerSc

qCast_QTcpServer :: Object a -> IO (QTcpServer ())
qCast_QTcpServer _qobj
  = return (objectCast _qobj)

withQTcpServerResult :: IO (Ptr (TQTcpServer a)) -> IO (QTcpServer a)
withQTcpServerResult f
  = withObjectResult qtc_QTcpServer_getFinalizer f

qTcpServerFromPtr :: Ptr (TQTcpServer a) -> IO (QTcpServer a)
qTcpServerFromPtr p
  = objectFromPtr qtc_QTcpServer_getFinalizer p

withQListQTcpServerResult :: (Ptr (Ptr (TQTcpServer a)) -> IO CInt) -> IO [QTcpServer a]
withQListQTcpServerResult f
  = withQListObjectResult qtc_QTcpServer_getFinalizer f

qTcpServerListFromPtrList :: [Ptr (TQTcpServer a)] -> IO [QTcpServer a]
qTcpServerListFromPtrList p
  = objectListFromPtrList qtc_QTcpServer_getFinalizer p

foreign import ccall qtc_QTcpServer_getFinalizer :: FunPtr (Ptr (TQTcpServer a) -> IO ())

class QqCastList_QTcpServer a r where
  qcl_QTcpServer :: [QTcpServer ()] -> a -> r

instance QqCastList_QTcpServer (QTcpServer ()) [QTcpServer ()] where
  qcl_QTcpServer l x = reverse $ x:l

instance QqCastList_QTcpServer a r => QqCastList_QTcpServer (QTcpServer ()) (a -> r) where
  qcl_QTcpServer l x sx = qcl_QTcpServer (x:l) sx

qCastList_QTcpServer x = qcl_QTcpServer [] x

type QHttp a = QObject (CQHttp a)
type TQHttp a = TQObject (CQHttp a)
data CQHttp a = CQHttp

type QHttpSc a = QHttp (CQHttpSc a)
type TQHttpSc a = TQHttp (CQHttpSc a)
data CQHttpSc a = CQHttpSc

qCast_QHttp :: Object a -> IO (QHttp ())
qCast_QHttp _qobj
  = return (objectCast _qobj)

withQHttpResult :: IO (Ptr (TQHttp a)) -> IO (QHttp a)
withQHttpResult f
  = withObjectResult qtc_QHttp_getFinalizer f

qHttpFromPtr :: Ptr (TQHttp a) -> IO (QHttp a)
qHttpFromPtr p
  = objectFromPtr qtc_QHttp_getFinalizer p

withQListQHttpResult :: (Ptr (Ptr (TQHttp a)) -> IO CInt) -> IO [QHttp a]
withQListQHttpResult f
  = withQListObjectResult qtc_QHttp_getFinalizer f

qHttpListFromPtrList :: [Ptr (TQHttp a)] -> IO [QHttp a]
qHttpListFromPtrList p
  = objectListFromPtrList qtc_QHttp_getFinalizer p

foreign import ccall qtc_QHttp_getFinalizer :: FunPtr (Ptr (TQHttp a) -> IO ())

class QqCastList_QHttp a r where
  qcl_QHttp :: [QHttp ()] -> a -> r

instance QqCastList_QHttp (QHttp ()) [QHttp ()] where
  qcl_QHttp l x = reverse $ x:l

instance QqCastList_QHttp a r => QqCastList_QHttp (QHttp ()) (a -> r) where
  qcl_QHttp l x sx = qcl_QHttp (x:l) sx

qCastList_QHttp x = qcl_QHttp [] x

type QFtp a = QObject (CQFtp a)
type TQFtp a = TQObject (CQFtp a)
data CQFtp a = CQFtp

type QFtpSc a = QFtp (CQFtpSc a)
type TQFtpSc a = TQFtp (CQFtpSc a)
data CQFtpSc a = CQFtpSc

qCast_QFtp :: Object a -> IO (QFtp ())
qCast_QFtp _qobj
  = return (objectCast _qobj)

withQFtpResult :: IO (Ptr (TQFtp a)) -> IO (QFtp a)
withQFtpResult f
  = withObjectResult qtc_QFtp_getFinalizer f

qFtpFromPtr :: Ptr (TQFtp a) -> IO (QFtp a)
qFtpFromPtr p
  = objectFromPtr qtc_QFtp_getFinalizer p

withQListQFtpResult :: (Ptr (Ptr (TQFtp a)) -> IO CInt) -> IO [QFtp a]
withQListQFtpResult f
  = withQListObjectResult qtc_QFtp_getFinalizer f

qFtpListFromPtrList :: [Ptr (TQFtp a)] -> IO [QFtp a]
qFtpListFromPtrList p
  = objectListFromPtrList qtc_QFtp_getFinalizer p

foreign import ccall qtc_QFtp_getFinalizer :: FunPtr (Ptr (TQFtp a) -> IO ())

class QqCastList_QFtp a r where
  qcl_QFtp :: [QFtp ()] -> a -> r

instance QqCastList_QFtp (QFtp ()) [QFtp ()] where
  qcl_QFtp l x = reverse $ x:l

instance QqCastList_QFtp a r => QqCastList_QFtp (QFtp ()) (a -> r) where
  qcl_QFtp l x sx = qcl_QFtp (x:l) sx

qCastList_QFtp x = qcl_QFtp [] x

