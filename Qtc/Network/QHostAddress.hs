{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QHostAddress.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:31
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Network.QHostAddress (
  QqHostAddress(..)
  ,QqHostAddress_nf(..)
  ,protocol
  ,scopeId
  ,QsetAddress(..)
  ,setScopeId
  ,toIPv4Address
  ,toIPv6Address
  ,qHostAddress_delete
  )
  where

import Foreign.C.Types
import Qth.ClassTypes.Core
import Qtc.Enums.Base
import Qtc.Enums.Network.QAbstractSocket
import Qtc.Enums.Network.QHostAddress

import Qtc.Classes.Base
import Qtc.Classes.Qccs
import Qtc.Classes.Core
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core
import Qtc.Classes.Network
import Qtc.ClassTypes.Network

class QqHostAddress x1 where
  qHostAddress :: x1 -> IO (QHostAddress ())

instance QqHostAddress (()) where
 qHostAddress ()
  = withQHostAddressResult $
    qtc_QHostAddress

foreign import ccall "qtc_QHostAddress" qtc_QHostAddress :: IO (Ptr (TQHostAddress ()))

instance QqHostAddress ((SpecialAddress)) where
 qHostAddress (x1)
  = withQHostAddressResult $
    qtc_QHostAddress1 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QHostAddress1" qtc_QHostAddress1 :: CLong -> IO (Ptr (TQHostAddress ()))

instance QqHostAddress ((Int)) where
 qHostAddress (x1)
  = withQHostAddressResult $
    qtc_QHostAddress2 (toCUInt x1)

foreign import ccall "qtc_QHostAddress2" qtc_QHostAddress2 :: CUInt -> IO (Ptr (TQHostAddress ()))

instance QqHostAddress ((String)) where
 qHostAddress (x1)
  = withQHostAddressResult $
    withCWString x1 $ \cstr_x1 ->
    qtc_QHostAddress3 cstr_x1

foreign import ccall "qtc_QHostAddress3" qtc_QHostAddress3 :: CWString -> IO (Ptr (TQHostAddress ()))

instance QqHostAddress ((QHostAddress t1)) where
 qHostAddress (x1)
  = withQHostAddressResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHostAddress4 cobj_x1

foreign import ccall "qtc_QHostAddress4" qtc_QHostAddress4 :: Ptr (TQHostAddress t1) -> IO (Ptr (TQHostAddress ()))

class QqHostAddress_nf x1 where
  qHostAddress_nf :: x1 -> IO (QHostAddress ())

instance QqHostAddress_nf (()) where
 qHostAddress_nf ()
  = withObjectRefResult $
    qtc_QHostAddress

instance QqHostAddress_nf ((SpecialAddress)) where
 qHostAddress_nf (x1)
  = withObjectRefResult $
    qtc_QHostAddress1 (toCLong $ qEnum_toInt x1)

instance QqHostAddress_nf ((Int)) where
 qHostAddress_nf (x1)
  = withObjectRefResult $
    qtc_QHostAddress2 (toCUInt x1)

instance QqHostAddress_nf ((String)) where
 qHostAddress_nf (x1)
  = withObjectRefResult $
    withCWString x1 $ \cstr_x1 ->
    qtc_QHostAddress3 cstr_x1

instance QqHostAddress_nf ((QHostAddress t1)) where
 qHostAddress_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHostAddress4 cobj_x1

instance Qclear (QHostAddress a) (()) where
 clear x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHostAddress_clear cobj_x0

foreign import ccall "qtc_QHostAddress_clear" qtc_QHostAddress_clear :: Ptr (TQHostAddress a) -> IO ()

instance QqisNull (QHostAddress a) (()) where
 qisNull x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHostAddress_isNull cobj_x0

foreign import ccall "qtc_QHostAddress_isNull" qtc_QHostAddress_isNull :: Ptr (TQHostAddress a) -> IO CBool

protocol :: QHostAddress a -> (()) -> IO (NetworkLayerProtocol)
protocol x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHostAddress_protocol cobj_x0

foreign import ccall "qtc_QHostAddress_protocol" qtc_QHostAddress_protocol :: Ptr (TQHostAddress a) -> IO CLong

scopeId :: QHostAddress a -> (()) -> IO (String)
scopeId x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHostAddress_scopeId cobj_x0

foreign import ccall "qtc_QHostAddress_scopeId" qtc_QHostAddress_scopeId :: Ptr (TQHostAddress a) -> IO (Ptr (TQString ()))

class QsetAddress x1 xr where
 setAddress :: QHostAddress a -> x1 -> xr

instance QsetAddress ((Int)) (IO ()) where
 setAddress x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHostAddress_setAddress cobj_x0 (toCUInt x1)

foreign import ccall "qtc_QHostAddress_setAddress" qtc_QHostAddress_setAddress :: Ptr (TQHostAddress a) -> CUInt -> IO ()

instance QsetAddress ((String)) (IO (Bool)) where
 setAddress x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QHostAddress_setAddress1 cobj_x0 cstr_x1

foreign import ccall "qtc_QHostAddress_setAddress1" qtc_QHostAddress_setAddress1 :: Ptr (TQHostAddress a) -> CWString -> IO CBool

setScopeId :: QHostAddress a -> ((String)) -> IO ()
setScopeId x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QHostAddress_setScopeId cobj_x0 cstr_x1

foreign import ccall "qtc_QHostAddress_setScopeId" qtc_QHostAddress_setScopeId :: Ptr (TQHostAddress a) -> CWString -> IO ()

toIPv4Address :: QHostAddress a -> (()) -> IO (Int)
toIPv4Address x0 ()
  = withUnsignedIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHostAddress_toIPv4Address cobj_x0

foreign import ccall "qtc_QHostAddress_toIPv4Address" qtc_QHostAddress_toIPv4Address :: Ptr (TQHostAddress a) -> IO CUInt

toIPv6Address :: QHostAddress a -> (()) -> IO (Q_IPV6ADDR ())
toIPv6Address x0 ()
  = withQ_IPV6ADDRResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHostAddress_toIPv6Address cobj_x0

foreign import ccall "qtc_QHostAddress_toIPv6Address" qtc_QHostAddress_toIPv6Address :: Ptr (TQHostAddress a) -> IO (Ptr (TQ_IPV6ADDR ()))

instance QtoString (QHostAddress a) (()) where
 toString x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHostAddress_toString cobj_x0

foreign import ccall "qtc_QHostAddress_toString" qtc_QHostAddress_toString :: Ptr (TQHostAddress a) -> IO (Ptr (TQString ()))

qHostAddress_delete :: QHostAddress a -> IO ()
qHostAddress_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHostAddress_delete cobj_x0

foreign import ccall "qtc_QHostAddress_delete" qtc_QHostAddress_delete :: Ptr (TQHostAddress a) -> IO ()

