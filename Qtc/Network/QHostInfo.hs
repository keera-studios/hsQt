{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QHostInfo.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:31
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Network.QHostInfo (
  QqHostInfo(..)
  ,QqHostInfo_nf(..)
  ,qHostInfoAbortHostLookup
  ,addresses
  ,qHostInfoFromName
  ,qHostInfoLocalHostName
  ,qHostInfoLookupHost
  ,lookupId
  ,setError
  ,setLookupId
  ,qHostInfo_delete
  )
  where

import Foreign.C.Types
import Qth.ClassTypes.Core
import Qtc.Enums.Base
import Qtc.Enums.Network.QHostInfo

import Qtc.Classes.Base
import Qtc.Classes.Qccs
import Qtc.Classes.Core
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core
import Qtc.Classes.Network
import Qtc.ClassTypes.Network

class QqHostInfo x1 where
  qHostInfo :: x1 -> IO (QHostInfo ())

instance QqHostInfo (()) where
 qHostInfo ()
  = withQHostInfoResult $
    qtc_QHostInfo

foreign import ccall "qtc_QHostInfo" qtc_QHostInfo :: IO (Ptr (TQHostInfo ()))

instance QqHostInfo ((QHostInfo t1)) where
 qHostInfo (x1)
  = withQHostInfoResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHostInfo1 cobj_x1

foreign import ccall "qtc_QHostInfo1" qtc_QHostInfo1 :: Ptr (TQHostInfo t1) -> IO (Ptr (TQHostInfo ()))

instance QqHostInfo ((Int)) where
 qHostInfo (x1)
  = withQHostInfoResult $
    qtc_QHostInfo2 (toCInt x1)

foreign import ccall "qtc_QHostInfo2" qtc_QHostInfo2 :: CInt -> IO (Ptr (TQHostInfo ()))

class QqHostInfo_nf x1 where
  qHostInfo_nf :: x1 -> IO (QHostInfo ())

instance QqHostInfo_nf (()) where
 qHostInfo_nf ()
  = withObjectRefResult $
    qtc_QHostInfo

instance QqHostInfo_nf ((QHostInfo t1)) where
 qHostInfo_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHostInfo1 cobj_x1

instance QqHostInfo_nf ((Int)) where
 qHostInfo_nf (x1)
  = withObjectRefResult $
    qtc_QHostInfo2 (toCInt x1)

qHostInfoAbortHostLookup :: ((Int)) -> IO ()
qHostInfoAbortHostLookup (x1)
  = qtc_QHostInfo_abortHostLookup (toCInt x1)

foreign import ccall "qtc_QHostInfo_abortHostLookup" qtc_QHostInfo_abortHostLookup :: CInt -> IO ()

addresses :: QHostInfo a -> (()) -> IO ([QHostAddress ()])
addresses x0 ()
  = withQListObjectRefResult $ \arr ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHostInfo_addresses cobj_x0 arr

foreign import ccall "qtc_QHostInfo_addresses" qtc_QHostInfo_addresses :: Ptr (TQHostInfo a) -> Ptr (Ptr (TQHostAddress ())) -> IO CInt

instance Qqerror (QHostInfo a) (()) (IO (HostInfoError)) where
 qerror x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHostInfo_error cobj_x0

foreign import ccall "qtc_QHostInfo_error" qtc_QHostInfo_error :: Ptr (TQHostInfo a) -> IO CLong

instance QerrorString (QHostInfo a) (()) where
 errorString x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHostInfo_errorString cobj_x0

foreign import ccall "qtc_QHostInfo_errorString" qtc_QHostInfo_errorString :: Ptr (TQHostInfo a) -> IO (Ptr (TQString ()))

qHostInfoFromName :: ((String)) -> IO (QHostInfo ())
qHostInfoFromName (x1)
  = withQHostInfoResult $
    withCWString x1 $ \cstr_x1 ->
    qtc_QHostInfo_fromName cstr_x1

foreign import ccall "qtc_QHostInfo_fromName" qtc_QHostInfo_fromName :: CWString -> IO (Ptr (TQHostInfo ()))

instance QhostName (QHostInfo a) (()) where
 hostName x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHostInfo_hostName cobj_x0

foreign import ccall "qtc_QHostInfo_hostName" qtc_QHostInfo_hostName :: Ptr (TQHostInfo a) -> IO (Ptr (TQString ()))

qHostInfoLocalHostName :: (()) -> IO (String)
qHostInfoLocalHostName ()
  = withStringResult $
    qtc_QHostInfo_localHostName

foreign import ccall "qtc_QHostInfo_localHostName" qtc_QHostInfo_localHostName :: IO (Ptr (TQString ()))

qHostInfoLookupHost :: ((String, QObject t2, String)) -> IO (Int)
qHostInfoLookupHost (x1, x2, x3)
  = withIntResult $
    withCWString x1 $ \cstr_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withCWString x3 $ \cstr_x3 ->
    qtc_QHostInfo_lookupHost cstr_x1 cobj_x2 cstr_x3

foreign import ccall "qtc_QHostInfo_lookupHost" qtc_QHostInfo_lookupHost :: CWString -> Ptr (TQObject t2) -> CWString -> IO CInt

lookupId :: QHostInfo a -> (()) -> IO (Int)
lookupId x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHostInfo_lookupId cobj_x0

foreign import ccall "qtc_QHostInfo_lookupId" qtc_QHostInfo_lookupId :: Ptr (TQHostInfo a) -> IO CInt

setError :: QHostInfo a -> ((HostInfoError)) -> IO ()
setError x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHostInfo_setError cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QHostInfo_setError" qtc_QHostInfo_setError :: Ptr (TQHostInfo a) -> CLong -> IO ()

instance QsetErrorString (QHostInfo a) ((String)) where
 setErrorString x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QHostInfo_setErrorString cobj_x0 cstr_x1

foreign import ccall "qtc_QHostInfo_setErrorString" qtc_QHostInfo_setErrorString :: Ptr (TQHostInfo a) -> CWString -> IO ()

instance QsetHostName (QHostInfo a) ((String)) where
 setHostName x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QHostInfo_setHostName cobj_x0 cstr_x1

foreign import ccall "qtc_QHostInfo_setHostName" qtc_QHostInfo_setHostName :: Ptr (TQHostInfo a) -> CWString -> IO ()

setLookupId :: QHostInfo a -> ((Int)) -> IO ()
setLookupId x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHostInfo_setLookupId cobj_x0 (toCInt x1)

foreign import ccall "qtc_QHostInfo_setLookupId" qtc_QHostInfo_setLookupId :: Ptr (TQHostInfo a) -> CInt -> IO ()

qHostInfo_delete :: QHostInfo a -> IO ()
qHostInfo_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHostInfo_delete cobj_x0

foreign import ccall "qtc_QHostInfo_delete" qtc_QHostInfo_delete :: Ptr (TQHostInfo a) -> IO ()

