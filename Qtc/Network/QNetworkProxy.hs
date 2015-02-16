{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QNetworkProxy.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:31
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Network.QNetworkProxy (
  QqNetworkProxy(..)
  ,QqNetworkProxy_nf(..)
  ,qNetworkProxyApplicationProxy
  ,qNetworkProxySetApplicationProxy
  ,user
  ,qNetworkProxy_delete
  )
  where

import Foreign.C.Types
import Qth.ClassTypes.Core
import Qtc.Enums.Base
import Qtc.Enums.Network.QNetworkProxy

import Qtc.Classes.Base
import Qtc.Classes.Qccs
import Qtc.Classes.Core
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core
import Qtc.Classes.Network
import Qtc.ClassTypes.Network

class QqNetworkProxy x1 where
  qNetworkProxy :: x1 -> IO (QNetworkProxy ())

instance QqNetworkProxy (()) where
 qNetworkProxy ()
  = withQNetworkProxyResult $
    qtc_QNetworkProxy

foreign import ccall "qtc_QNetworkProxy" qtc_QNetworkProxy :: IO (Ptr (TQNetworkProxy ()))

instance QqNetworkProxy ((QNetworkProxy t1)) where
 qNetworkProxy (x1)
  = withQNetworkProxyResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QNetworkProxy1 cobj_x1

foreign import ccall "qtc_QNetworkProxy1" qtc_QNetworkProxy1 :: Ptr (TQNetworkProxy t1) -> IO (Ptr (TQNetworkProxy ()))

instance QqNetworkProxy ((ProxyType)) where
 qNetworkProxy (x1)
  = withQNetworkProxyResult $
    qtc_QNetworkProxy2 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QNetworkProxy2" qtc_QNetworkProxy2 :: CLong -> IO (Ptr (TQNetworkProxy ()))

instance QqNetworkProxy ((ProxyType, String)) where
 qNetworkProxy (x1, x2)
  = withQNetworkProxyResult $
    withCWString x2 $ \cstr_x2 ->
    qtc_QNetworkProxy3 (toCLong $ qEnum_toInt x1) cstr_x2

foreign import ccall "qtc_QNetworkProxy3" qtc_QNetworkProxy3 :: CLong -> CWString -> IO (Ptr (TQNetworkProxy ()))

instance QqNetworkProxy ((ProxyType, String, Int)) where
 qNetworkProxy (x1, x2, x3)
  = withQNetworkProxyResult $
    withCWString x2 $ \cstr_x2 ->
    qtc_QNetworkProxy4 (toCLong $ qEnum_toInt x1) cstr_x2 (toCUShort x3)

foreign import ccall "qtc_QNetworkProxy4" qtc_QNetworkProxy4 :: CLong -> CWString -> CUShort -> IO (Ptr (TQNetworkProxy ()))

instance QqNetworkProxy ((ProxyType, String, Int, String)) where
 qNetworkProxy (x1, x2, x3, x4)
  = withQNetworkProxyResult $
    withCWString x2 $ \cstr_x2 ->
    withCWString x4 $ \cstr_x4 ->
    qtc_QNetworkProxy5 (toCLong $ qEnum_toInt x1) cstr_x2 (toCUShort x3) cstr_x4

foreign import ccall "qtc_QNetworkProxy5" qtc_QNetworkProxy5 :: CLong -> CWString -> CUShort -> CWString -> IO (Ptr (TQNetworkProxy ()))

instance QqNetworkProxy ((ProxyType, String, Int, String, String)) where
 qNetworkProxy (x1, x2, x3, x4, x5)
  = withQNetworkProxyResult $
    withCWString x2 $ \cstr_x2 ->
    withCWString x4 $ \cstr_x4 ->
    withCWString x5 $ \cstr_x5 ->
    qtc_QNetworkProxy6 (toCLong $ qEnum_toInt x1) cstr_x2 (toCUShort x3) cstr_x4 cstr_x5

foreign import ccall "qtc_QNetworkProxy6" qtc_QNetworkProxy6 :: CLong -> CWString -> CUShort -> CWString -> CWString -> IO (Ptr (TQNetworkProxy ()))

class QqNetworkProxy_nf x1 where
  qNetworkProxy_nf :: x1 -> IO (QNetworkProxy ())

instance QqNetworkProxy_nf (()) where
 qNetworkProxy_nf ()
  = withObjectRefResult $
    qtc_QNetworkProxy

instance QqNetworkProxy_nf ((QNetworkProxy t1)) where
 qNetworkProxy_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QNetworkProxy1 cobj_x1

instance QqNetworkProxy_nf ((ProxyType)) where
 qNetworkProxy_nf (x1)
  = withObjectRefResult $
    qtc_QNetworkProxy2 (toCLong $ qEnum_toInt x1)

instance QqNetworkProxy_nf ((ProxyType, String)) where
 qNetworkProxy_nf (x1, x2)
  = withObjectRefResult $
    withCWString x2 $ \cstr_x2 ->
    qtc_QNetworkProxy3 (toCLong $ qEnum_toInt x1) cstr_x2

instance QqNetworkProxy_nf ((ProxyType, String, Int)) where
 qNetworkProxy_nf (x1, x2, x3)
  = withObjectRefResult $
    withCWString x2 $ \cstr_x2 ->
    qtc_QNetworkProxy4 (toCLong $ qEnum_toInt x1) cstr_x2 (toCUShort x3)

instance QqNetworkProxy_nf ((ProxyType, String, Int, String)) where
 qNetworkProxy_nf (x1, x2, x3, x4)
  = withObjectRefResult $
    withCWString x2 $ \cstr_x2 ->
    withCWString x4 $ \cstr_x4 ->
    qtc_QNetworkProxy5 (toCLong $ qEnum_toInt x1) cstr_x2 (toCUShort x3) cstr_x4

instance QqNetworkProxy_nf ((ProxyType, String, Int, String, String)) where
 qNetworkProxy_nf (x1, x2, x3, x4, x5)
  = withObjectRefResult $
    withCWString x2 $ \cstr_x2 ->
    withCWString x4 $ \cstr_x4 ->
    withCWString x5 $ \cstr_x5 ->
    qtc_QNetworkProxy6 (toCLong $ qEnum_toInt x1) cstr_x2 (toCUShort x3) cstr_x4 cstr_x5

qNetworkProxyApplicationProxy :: (()) -> IO (QNetworkProxy ())
qNetworkProxyApplicationProxy ()
  = withQNetworkProxyResult $
    qtc_QNetworkProxy_applicationProxy

foreign import ccall "qtc_QNetworkProxy_applicationProxy" qtc_QNetworkProxy_applicationProxy :: IO (Ptr (TQNetworkProxy ()))

instance QhostName (QNetworkProxy a) (()) where
 hostName x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QNetworkProxy_hostName cobj_x0

foreign import ccall "qtc_QNetworkProxy_hostName" qtc_QNetworkProxy_hostName :: Ptr (TQNetworkProxy a) -> IO (Ptr (TQString ()))

instance Qpassword (QNetworkProxy a) (()) where
 password x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QNetworkProxy_password cobj_x0

foreign import ccall "qtc_QNetworkProxy_password" qtc_QNetworkProxy_password :: Ptr (TQNetworkProxy a) -> IO (Ptr (TQString ()))

instance Qport (QNetworkProxy a) (()) where
 port x0 ()
  = withUnsignedShortResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QNetworkProxy_port cobj_x0

foreign import ccall "qtc_QNetworkProxy_port" qtc_QNetworkProxy_port :: Ptr (TQNetworkProxy a) -> IO CUShort

qNetworkProxySetApplicationProxy :: ((QNetworkProxy t1)) -> IO ()
qNetworkProxySetApplicationProxy (x1)
  = withObjectPtr x1 $ \cobj_x1 ->
    qtc_QNetworkProxy_setApplicationProxy cobj_x1

foreign import ccall "qtc_QNetworkProxy_setApplicationProxy" qtc_QNetworkProxy_setApplicationProxy :: Ptr (TQNetworkProxy t1) -> IO ()

instance QsetHostName (QNetworkProxy a) ((String)) where
 setHostName x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QNetworkProxy_setHostName cobj_x0 cstr_x1

foreign import ccall "qtc_QNetworkProxy_setHostName" qtc_QNetworkProxy_setHostName :: Ptr (TQNetworkProxy a) -> CWString -> IO ()

instance QsetPassword (QNetworkProxy a) ((String)) where
 setPassword x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QNetworkProxy_setPassword cobj_x0 cstr_x1

foreign import ccall "qtc_QNetworkProxy_setPassword" qtc_QNetworkProxy_setPassword :: Ptr (TQNetworkProxy a) -> CWString -> IO ()

instance QsetPort (QNetworkProxy a) ((Int)) where
 setPort x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QNetworkProxy_setPort cobj_x0 (toCUShort x1)

foreign import ccall "qtc_QNetworkProxy_setPort" qtc_QNetworkProxy_setPort :: Ptr (TQNetworkProxy a) -> CUShort -> IO ()

instance QsetType (QNetworkProxy a) ((ProxyType)) where
 setType x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QNetworkProxy_setType cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QNetworkProxy_setType" qtc_QNetworkProxy_setType :: Ptr (TQNetworkProxy a) -> CLong -> IO ()

instance QsetUser (QNetworkProxy a) ((String)) (IO ()) where
 setUser x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QNetworkProxy_setUser cobj_x0 cstr_x1

foreign import ccall "qtc_QNetworkProxy_setUser" qtc_QNetworkProxy_setUser :: Ptr (TQNetworkProxy a) -> CWString -> IO ()

instance Qqtype (QNetworkProxy a) (()) (IO (ProxyType)) where
 qtype x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QNetworkProxy_type cobj_x0

foreign import ccall "qtc_QNetworkProxy_type" qtc_QNetworkProxy_type :: Ptr (TQNetworkProxy a) -> IO CLong

user :: QNetworkProxy a -> (()) -> IO (String)
user x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QNetworkProxy_user cobj_x0

foreign import ccall "qtc_QNetworkProxy_user" qtc_QNetworkProxy_user :: Ptr (TQNetworkProxy a) -> IO (Ptr (TQString ()))

qNetworkProxy_delete :: QNetworkProxy a -> IO ()
qNetworkProxy_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QNetworkProxy_delete cobj_x0

foreign import ccall "qtc_QNetworkProxy_delete" qtc_QNetworkProxy_delete :: Ptr (TQNetworkProxy a) -> IO ()

