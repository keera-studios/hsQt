{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QHttp.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:31
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Network.QHttp (
  QqHttp(..)
  ,clearPendingRequests
  ,closeConnection
  ,currentDestinationDevice
  ,QcurrentRequest(..), QcurrentRequest_nf(..)
  ,currentSourceDevice
  ,hasPendingRequests
  ,qhead
  ,QlastResponse(..), QlastResponse_nf(..)
  ,Qpost(..)
  ,Qrequest(..)
  ,setSocket
  ,qHttp_delete
  ,qHttp_deleteLater
  )
  where

import Foreign.C.Types
import Qth.ClassTypes.Core
import Qtc.Enums.Base
import Qtc.Enums.Network.QHttp

import Qtc.Classes.Base
import Qtc.Classes.Qccs
import Qtc.Classes.Core
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core
import Qtc.Classes.Network
import Qtc.ClassTypes.Network

instance QuserMethod (QHttp ()) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QHttp_userMethod cobj_qobj (toCInt evid)

foreign import ccall "qtc_QHttp_userMethod" qtc_QHttp_userMethod :: Ptr (TQHttp a) -> CInt -> IO ()

instance QuserMethod (QHttpSc a) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QHttp_userMethod cobj_qobj (toCInt evid)

instance QuserMethod (QHttp ()) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QHttp_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

foreign import ccall "qtc_QHttp_userMethodVariant" qtc_QHttp_userMethodVariant :: Ptr (TQHttp a) -> CInt -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))

instance QuserMethod (QHttpSc a) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QHttp_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

class QqHttp x1 where
  qHttp :: x1 -> IO (QHttp ())

instance QqHttp (()) where
 qHttp ()
  = withQHttpResult $
    qtc_QHttp

foreign import ccall "qtc_QHttp" qtc_QHttp :: IO (Ptr (TQHttp ()))

instance QqHttp ((String)) where
 qHttp (x1)
  = withQHttpResult $
    withCWString x1 $ \cstr_x1 ->
    qtc_QHttp1 cstr_x1

foreign import ccall "qtc_QHttp1" qtc_QHttp1 :: CWString -> IO (Ptr (TQHttp ()))

instance QqHttp ((QObject t1)) where
 qHttp (x1)
  = withQHttpResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHttp2 cobj_x1

foreign import ccall "qtc_QHttp2" qtc_QHttp2 :: Ptr (TQObject t1) -> IO (Ptr (TQHttp ()))

instance QqHttp ((String, Int)) where
 qHttp (x1, x2)
  = withQHttpResult $
    withCWString x1 $ \cstr_x1 ->
    qtc_QHttp3 cstr_x1 (toCUShort x2)

foreign import ccall "qtc_QHttp3" qtc_QHttp3 :: CWString -> CUShort -> IO (Ptr (TQHttp ()))

instance QqHttp ((String, ConnectionMode)) where
 qHttp (x1, x2)
  = withQHttpResult $
    withCWString x1 $ \cstr_x1 ->
    qtc_QHttp4 cstr_x1 (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QHttp4" qtc_QHttp4 :: CWString -> CLong -> IO (Ptr (TQHttp ()))

instance QqHttp ((String, ConnectionMode, Int)) where
 qHttp (x1, x2, x3)
  = withQHttpResult $
    withCWString x1 $ \cstr_x1 ->
    qtc_QHttp5 cstr_x1 (toCLong $ qEnum_toInt x2) (toCUShort x3)

foreign import ccall "qtc_QHttp5" qtc_QHttp5 :: CWString -> CLong -> CUShort -> IO (Ptr (TQHttp ()))

instance QqHttp ((String, Int, QObject t3)) where
 qHttp (x1, x2, x3)
  = withQHttpResult $
    withCWString x1 $ \cstr_x1 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QHttp6 cstr_x1 (toCUShort x2) cobj_x3

foreign import ccall "qtc_QHttp6" qtc_QHttp6 :: CWString -> CUShort -> Ptr (TQObject t3) -> IO (Ptr (TQHttp ()))

instance QqHttp ((String, ConnectionMode, Int, QObject t4)) where
 qHttp (x1, x2, x3, x4)
  = withQHttpResult $
    withCWString x1 $ \cstr_x1 ->
    withObjectPtr x4 $ \cobj_x4 ->
    qtc_QHttp7 cstr_x1 (toCLong $ qEnum_toInt x2) (toCUShort x3) cobj_x4

foreign import ccall "qtc_QHttp7" qtc_QHttp7 :: CWString -> CLong -> CUShort -> Ptr (TQObject t4) -> IO (Ptr (TQHttp ()))

instance Qabort (QHttp a) (()) (IO ()) where
 abort x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHttp_abort cobj_x0

foreign import ccall "qtc_QHttp_abort" qtc_QHttp_abort :: Ptr (TQHttp a) -> IO ()

instance QbytesAvailable (QHttp a) (()) where
 bytesAvailable x0 ()
  = withLongLongResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHttp_bytesAvailable cobj_x0

foreign import ccall "qtc_QHttp_bytesAvailable" qtc_QHttp_bytesAvailable :: Ptr (TQHttp a) -> IO CLLong

clearPendingRequests :: QHttp a -> (()) -> IO ()
clearPendingRequests x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHttp_clearPendingRequests cobj_x0

foreign import ccall "qtc_QHttp_clearPendingRequests" qtc_QHttp_clearPendingRequests :: Ptr (TQHttp a) -> IO ()

instance Qclose (QHttp a) (()) (IO (Int)) where
 close x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHttp_close cobj_x0

foreign import ccall "qtc_QHttp_close" qtc_QHttp_close :: Ptr (TQHttp a) -> IO CInt

closeConnection :: QHttp a -> (()) -> IO (Int)
closeConnection x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHttp_closeConnection cobj_x0

foreign import ccall "qtc_QHttp_closeConnection" qtc_QHttp_closeConnection :: Ptr (TQHttp a) -> IO CInt

currentDestinationDevice :: QHttp a -> (()) -> IO (QIODevice ())
currentDestinationDevice x0 ()
  = withQIODeviceResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHttp_currentDestinationDevice cobj_x0

foreign import ccall "qtc_QHttp_currentDestinationDevice" qtc_QHttp_currentDestinationDevice :: Ptr (TQHttp a) -> IO (Ptr (TQIODevice ()))

instance QcurrentId (QHttp a) (()) where
 currentId x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHttp_currentId cobj_x0

foreign import ccall "qtc_QHttp_currentId" qtc_QHttp_currentId :: Ptr (TQHttp a) -> IO CInt

class QcurrentRequest x0 x1 where
 currentRequest :: x0 -> x1 -> IO (QHttpRequestHeader ())

class QcurrentRequest_nf x0 x1 where
 currentRequest_nf :: x0 -> x1 -> IO (QHttpRequestHeader ())

instance QcurrentRequest (QHttp ()) (()) where
 currentRequest x0 ()
  = withQHttpRequestHeaderResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHttp_currentRequest cobj_x0

foreign import ccall "qtc_QHttp_currentRequest" qtc_QHttp_currentRequest :: Ptr (TQHttp a) -> IO (Ptr (TQHttpRequestHeader ()))

instance QcurrentRequest (QHttpSc a) (()) where
 currentRequest x0 ()
  = withQHttpRequestHeaderResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHttp_currentRequest cobj_x0

instance QcurrentRequest_nf (QHttp ()) (()) where
 currentRequest_nf x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHttp_currentRequest cobj_x0

instance QcurrentRequest_nf (QHttpSc a) (()) where
 currentRequest_nf x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHttp_currentRequest cobj_x0

currentSourceDevice :: QHttp a -> (()) -> IO (QIODevice ())
currentSourceDevice x0 ()
  = withQIODeviceResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHttp_currentSourceDevice cobj_x0

foreign import ccall "qtc_QHttp_currentSourceDevice" qtc_QHttp_currentSourceDevice :: Ptr (TQHttp a) -> IO (Ptr (TQIODevice ()))

instance Qqerror (QHttp a) (()) (IO (QHttpError)) where
 qerror x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHttp_error cobj_x0

foreign import ccall "qtc_QHttp_error" qtc_QHttp_error :: Ptr (TQHttp a) -> IO CLong

instance QerrorString (QHttp a) (()) where
 errorString x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHttp_errorString cobj_x0

foreign import ccall "qtc_QHttp_errorString" qtc_QHttp_errorString :: Ptr (TQHttp a) -> IO (Ptr (TQString ()))

instance Qqget (QHttp a) ((String)) where
 qget x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QHttp_get cobj_x0 cstr_x1

foreign import ccall "qtc_QHttp_get" qtc_QHttp_get :: Ptr (TQHttp a) -> CWString -> IO CInt

instance Qqget (QHttp a) ((String, QIODevice t2)) where
 qget x0 (x1, x2)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QHttp_get1 cobj_x0 cstr_x1 cobj_x2

foreign import ccall "qtc_QHttp_get1" qtc_QHttp_get1 :: Ptr (TQHttp a) -> CWString -> Ptr (TQIODevice t2) -> IO CInt

hasPendingRequests :: QHttp a -> (()) -> IO (Bool)
hasPendingRequests x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHttp_hasPendingRequests cobj_x0

foreign import ccall "qtc_QHttp_hasPendingRequests" qtc_QHttp_hasPendingRequests :: Ptr (TQHttp a) -> IO CBool

qhead :: QHttp a -> ((String)) -> IO (Int)
qhead x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QHttp_head cobj_x0 cstr_x1

foreign import ccall "qtc_QHttp_head" qtc_QHttp_head :: Ptr (TQHttp a) -> CWString -> IO CInt

class QlastResponse x0 x1 where
 lastResponse :: x0 -> x1 -> IO (QHttpResponseHeader ())

class QlastResponse_nf x0 x1 where
 lastResponse_nf :: x0 -> x1 -> IO (QHttpResponseHeader ())

instance QlastResponse (QHttp ()) (()) where
 lastResponse x0 ()
  = withQHttpResponseHeaderResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHttp_lastResponse cobj_x0

foreign import ccall "qtc_QHttp_lastResponse" qtc_QHttp_lastResponse :: Ptr (TQHttp a) -> IO (Ptr (TQHttpResponseHeader ()))

instance QlastResponse (QHttpSc a) (()) where
 lastResponse x0 ()
  = withQHttpResponseHeaderResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHttp_lastResponse cobj_x0

instance QlastResponse_nf (QHttp ()) (()) where
 lastResponse_nf x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHttp_lastResponse cobj_x0

instance QlastResponse_nf (QHttpSc a) (()) where
 lastResponse_nf x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHttp_lastResponse cobj_x0

class Qpost x1 where
 post :: QHttp a -> x1 -> IO (Int)

instance Qpost ((String, QIODevice t2)) where
 post x0 (x1, x2)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QHttp_post1 cobj_x0 cstr_x1 cobj_x2

foreign import ccall "qtc_QHttp_post1" qtc_QHttp_post1 :: Ptr (TQHttp a) -> CWString -> Ptr (TQIODevice t2) -> IO CInt

instance Qpost ((String, QIODevice t2, QIODevice t3)) where
 post x0 (x1, x2, x3)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QHttp_post3 cobj_x0 cstr_x1 cobj_x2 cobj_x3

foreign import ccall "qtc_QHttp_post3" qtc_QHttp_post3 :: Ptr (TQHttp a) -> CWString -> Ptr (TQIODevice t2) -> Ptr (TQIODevice t3) -> IO CInt

instance Qpost ((String, String)) where
 post x0 (x1, x2)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QHttp_post cobj_x0 cstr_x1 cstr_x2

foreign import ccall "qtc_QHttp_post" qtc_QHttp_post :: Ptr (TQHttp a) -> CWString -> CWString -> IO CInt

instance Qpost ((String, String, QIODevice t3)) where
 post x0 (x1, x2, x3)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    withCWString x2 $ \cstr_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QHttp_post2 cobj_x0 cstr_x1 cstr_x2 cobj_x3

foreign import ccall "qtc_QHttp_post2" qtc_QHttp_post2 :: Ptr (TQHttp a) -> CWString -> CWString -> Ptr (TQIODevice t3) -> IO CInt

instance QreadAll (QHttp a) (()) where
 readAll x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHttp_readAll cobj_x0

foreign import ccall "qtc_QHttp_readAll" qtc_QHttp_readAll :: Ptr (TQHttp a) -> IO (Ptr (TQString ()))

class Qrequest x1 where
 request :: QHttp a -> x1 -> IO (Int)

instance Qrequest ((QHttpRequestHeader t1)) where
 request x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHttp_request cobj_x0 cobj_x1

foreign import ccall "qtc_QHttp_request" qtc_QHttp_request :: Ptr (TQHttp a) -> Ptr (TQHttpRequestHeader t1) -> IO CInt

instance Qrequest ((QHttpRequestHeader t1, QIODevice t2)) where
 request x0 (x1, x2)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QHttp_request2 cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QHttp_request2" qtc_QHttp_request2 :: Ptr (TQHttp a) -> Ptr (TQHttpRequestHeader t1) -> Ptr (TQIODevice t2) -> IO CInt

instance Qrequest ((QHttpRequestHeader t1, QIODevice t2, QIODevice t3)) where
 request x0 (x1, x2, x3)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QHttp_request4 cobj_x0 cobj_x1 cobj_x2 cobj_x3

foreign import ccall "qtc_QHttp_request4" qtc_QHttp_request4 :: Ptr (TQHttp a) -> Ptr (TQHttpRequestHeader t1) -> Ptr (TQIODevice t2) -> Ptr (TQIODevice t3) -> IO CInt

instance Qrequest ((QHttpRequestHeader t1, String)) where
 request x0 (x1, x2)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QHttp_request1 cobj_x0 cobj_x1 cstr_x2

foreign import ccall "qtc_QHttp_request1" qtc_QHttp_request1 :: Ptr (TQHttp a) -> Ptr (TQHttpRequestHeader t1) -> CWString -> IO CInt

instance Qrequest ((QHttpRequestHeader t1, String, QIODevice t3)) where
 request x0 (x1, x2, x3)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCWString x2 $ \cstr_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QHttp_request3 cobj_x0 cobj_x1 cstr_x2 cobj_x3

foreign import ccall "qtc_QHttp_request3" qtc_QHttp_request3 :: Ptr (TQHttp a) -> Ptr (TQHttpRequestHeader t1) -> CWString -> Ptr (TQIODevice t3) -> IO CInt

instance QsetHost (QHttp a) ((String)) (IO (Int)) where
 setHost x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QHttp_setHost cobj_x0 cstr_x1

foreign import ccall "qtc_QHttp_setHost" qtc_QHttp_setHost :: Ptr (TQHttp a) -> CWString -> IO CInt

instance QsetHost (QHttp a) ((String, ConnectionMode)) (IO (Int)) where
 setHost x0 (x1, x2)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QHttp_setHost2 cobj_x0 cstr_x1 (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QHttp_setHost2" qtc_QHttp_setHost2 :: Ptr (TQHttp a) -> CWString -> CLong -> IO CInt

instance QsetHost (QHttp a) ((String, ConnectionMode, Int)) (IO (Int)) where
 setHost x0 (x1, x2, x3)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QHttp_setHost3 cobj_x0 cstr_x1 (toCLong $ qEnum_toInt x2) (toCUShort x3)

foreign import ccall "qtc_QHttp_setHost3" qtc_QHttp_setHost3 :: Ptr (TQHttp a) -> CWString -> CLong -> CUShort -> IO CInt

instance QsetHost (QHttp a) ((String, Int)) (IO (Int)) where
 setHost x0 (x1, x2)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QHttp_setHost1 cobj_x0 cstr_x1 (toCUShort x2)

foreign import ccall "qtc_QHttp_setHost1" qtc_QHttp_setHost1 :: Ptr (TQHttp a) -> CWString -> CUShort -> IO CInt

instance QsetProxy (QHttp a) ((QNetworkProxy t1)) (IO (Int)) where
 setProxy x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHttp_setProxy cobj_x0 cobj_x1

foreign import ccall "qtc_QHttp_setProxy" qtc_QHttp_setProxy :: Ptr (TQHttp a) -> Ptr (TQNetworkProxy t1) -> IO CInt

instance QsetProxy (QHttp a) ((String, Int)) (IO (Int)) where
 setProxy x0 (x1, x2)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QHttp_setProxy1 cobj_x0 cstr_x1 (toCInt x2)

foreign import ccall "qtc_QHttp_setProxy1" qtc_QHttp_setProxy1 :: Ptr (TQHttp a) -> CWString -> CInt -> IO CInt

instance QsetProxy (QHttp a) ((String, Int, String)) (IO (Int)) where
 setProxy x0 (x1, x2, x3)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    withCWString x3 $ \cstr_x3 ->
    qtc_QHttp_setProxy2 cobj_x0 cstr_x1 (toCInt x2) cstr_x3

foreign import ccall "qtc_QHttp_setProxy2" qtc_QHttp_setProxy2 :: Ptr (TQHttp a) -> CWString -> CInt -> CWString -> IO CInt

instance QsetProxy (QHttp a) ((String, Int, String, String)) (IO (Int)) where
 setProxy x0 (x1, x2, x3, x4)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    withCWString x3 $ \cstr_x3 ->
    withCWString x4 $ \cstr_x4 ->
    qtc_QHttp_setProxy3 cobj_x0 cstr_x1 (toCInt x2) cstr_x3 cstr_x4

foreign import ccall "qtc_QHttp_setProxy3" qtc_QHttp_setProxy3 :: Ptr (TQHttp a) -> CWString -> CInt -> CWString -> CWString -> IO CInt

setSocket :: QHttp a -> ((QTcpSocket t1)) -> IO (Int)
setSocket x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHttp_setSocket cobj_x0 cobj_x1

foreign import ccall "qtc_QHttp_setSocket" qtc_QHttp_setSocket :: Ptr (TQHttp a) -> Ptr (TQTcpSocket t1) -> IO CInt

instance QsetUser (QHttp a) ((String)) (IO (Int)) where
 setUser x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QHttp_setUser cobj_x0 cstr_x1

foreign import ccall "qtc_QHttp_setUser" qtc_QHttp_setUser :: Ptr (TQHttp a) -> CWString -> IO CInt

instance QsetUser (QHttp a) ((String, String)) (IO (Int)) where
 setUser x0 (x1, x2)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QHttp_setUser1 cobj_x0 cstr_x1 cstr_x2

foreign import ccall "qtc_QHttp_setUser1" qtc_QHttp_setUser1 :: Ptr (TQHttp a) -> CWString -> CWString -> IO CInt

instance Qstate (QHttp a) (()) (IO (QHttpState)) where
 state x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHttp_state cobj_x0

foreign import ccall "qtc_QHttp_state" qtc_QHttp_state :: Ptr (TQHttp a) -> IO CLong

qHttp_delete :: QHttp a -> IO ()
qHttp_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHttp_delete cobj_x0

foreign import ccall "qtc_QHttp_delete" qtc_QHttp_delete :: Ptr (TQHttp a) -> IO ()

qHttp_deleteLater :: QHttp a -> IO ()
qHttp_deleteLater x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHttp_deleteLater cobj_x0

foreign import ccall "qtc_QHttp_deleteLater" qtc_QHttp_deleteLater :: Ptr (TQHttp a) -> IO ()

instance QchildEvent (QHttp ()) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHttp_childEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QHttp_childEvent" qtc_QHttp_childEvent :: Ptr (TQHttp a) -> Ptr (TQChildEvent t1) -> IO ()

instance QchildEvent (QHttpSc a) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHttp_childEvent cobj_x0 cobj_x1

instance QconnectNotify (QHttp ()) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QHttp_connectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QHttp_connectNotify" qtc_QHttp_connectNotify :: Ptr (TQHttp a) -> CWString -> IO ()

instance QconnectNotify (QHttpSc a) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QHttp_connectNotify cobj_x0 cstr_x1

instance QcustomEvent (QHttp ()) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHttp_customEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QHttp_customEvent" qtc_QHttp_customEvent :: Ptr (TQHttp a) -> Ptr (TQEvent t1) -> IO ()

instance QcustomEvent (QHttpSc a) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHttp_customEvent cobj_x0 cobj_x1

instance QdisconnectNotify (QHttp ()) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QHttp_disconnectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QHttp_disconnectNotify" qtc_QHttp_disconnectNotify :: Ptr (TQHttp a) -> CWString -> IO ()

instance QdisconnectNotify (QHttpSc a) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QHttp_disconnectNotify cobj_x0 cstr_x1

instance Qevent (QHttp ()) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHttp_event_h cobj_x0 cobj_x1

foreign import ccall "qtc_QHttp_event_h" qtc_QHttp_event_h :: Ptr (TQHttp a) -> Ptr (TQEvent t1) -> IO CBool

instance Qevent (QHttpSc a) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHttp_event_h cobj_x0 cobj_x1

instance QeventFilter (QHttp ()) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QHttp_eventFilter_h cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QHttp_eventFilter_h" qtc_QHttp_eventFilter_h :: Ptr (TQHttp a) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO CBool

instance QeventFilter (QHttpSc a) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QHttp_eventFilter_h cobj_x0 cobj_x1 cobj_x2

instance Qreceivers (QHttp ()) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QHttp_receivers cobj_x0 cstr_x1

foreign import ccall "qtc_QHttp_receivers" qtc_QHttp_receivers :: Ptr (TQHttp a) -> CWString -> IO CInt

instance Qreceivers (QHttpSc a) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QHttp_receivers cobj_x0 cstr_x1

instance Qsender (QHttp ()) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHttp_sender cobj_x0

foreign import ccall "qtc_QHttp_sender" qtc_QHttp_sender :: Ptr (TQHttp a) -> IO (Ptr (TQObject ()))

instance Qsender (QHttpSc a) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHttp_sender cobj_x0

instance QtimerEvent (QHttp ()) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHttp_timerEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QHttp_timerEvent" qtc_QHttp_timerEvent :: Ptr (TQHttp a) -> Ptr (TQTimerEvent t1) -> IO ()

instance QtimerEvent (QHttpSc a) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHttp_timerEvent cobj_x0 cobj_x1

