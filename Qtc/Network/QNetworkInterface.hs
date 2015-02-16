{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QNetworkInterface.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:31
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Network.QNetworkInterface (
  QqNetworkInterface(..)
  ,QqNetworkInterface_nf(..)
  ,addressEntries
  ,qNetworkInterfaceAllAddresses
  ,qNetworkInterfaceAllInterfaces
  ,hardwareAddress
  ,qNetworkInterfaceInterfaceFromIndex
  ,qNetworkInterfaceInterfaceFromName
  ,qNetworkInterface_delete
  )
  where

import Foreign.C.Types
import Qth.ClassTypes.Core
import Qtc.Enums.Base
import Qtc.Enums.Network.QNetworkInterface

import Qtc.Classes.Base
import Qtc.Classes.Qccs
import Qtc.Classes.Core
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core
import Qtc.Classes.Network
import Qtc.ClassTypes.Network

class QqNetworkInterface x1 where
  qNetworkInterface :: x1 -> IO (QNetworkInterface ())

instance QqNetworkInterface (()) where
 qNetworkInterface ()
  = withQNetworkInterfaceResult $
    qtc_QNetworkInterface

foreign import ccall "qtc_QNetworkInterface" qtc_QNetworkInterface :: IO (Ptr (TQNetworkInterface ()))

instance QqNetworkInterface ((QNetworkInterface t1)) where
 qNetworkInterface (x1)
  = withQNetworkInterfaceResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QNetworkInterface1 cobj_x1

foreign import ccall "qtc_QNetworkInterface1" qtc_QNetworkInterface1 :: Ptr (TQNetworkInterface t1) -> IO (Ptr (TQNetworkInterface ()))

class QqNetworkInterface_nf x1 where
  qNetworkInterface_nf :: x1 -> IO (QNetworkInterface ())

instance QqNetworkInterface_nf (()) where
 qNetworkInterface_nf ()
  = withObjectRefResult $
    qtc_QNetworkInterface

instance QqNetworkInterface_nf ((QNetworkInterface t1)) where
 qNetworkInterface_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QNetworkInterface1 cobj_x1

addressEntries :: QNetworkInterface a -> (()) -> IO ([QNetworkAddressEntry ()])
addressEntries x0 ()
  = withQListObjectRefResult $ \arr ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QNetworkInterface_addressEntries cobj_x0 arr

foreign import ccall "qtc_QNetworkInterface_addressEntries" qtc_QNetworkInterface_addressEntries :: Ptr (TQNetworkInterface a) -> Ptr (Ptr (TQNetworkAddressEntry ())) -> IO CInt

qNetworkInterfaceAllAddresses :: (()) -> IO ([QHostAddress ()])
qNetworkInterfaceAllAddresses ()
  = withQListObjectRefResult $ \arr ->
    qtc_QNetworkInterface_allAddresses arr

foreign import ccall "qtc_QNetworkInterface_allAddresses" qtc_QNetworkInterface_allAddresses :: Ptr (Ptr (TQHostAddress ())) -> IO CInt

qNetworkInterfaceAllInterfaces :: (()) -> IO ([QNetworkInterface ()])
qNetworkInterfaceAllInterfaces ()
  = withQListObjectRefResult $ \arr ->
    qtc_QNetworkInterface_allInterfaces arr

foreign import ccall "qtc_QNetworkInterface_allInterfaces" qtc_QNetworkInterface_allInterfaces :: Ptr (Ptr (TQNetworkInterface ())) -> IO CInt

instance Qflags (QNetworkInterface a) (()) (IO (InterfaceFlags)) where
 flags x0 ()
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QNetworkInterface_flags cobj_x0

foreign import ccall "qtc_QNetworkInterface_flags" qtc_QNetworkInterface_flags :: Ptr (TQNetworkInterface a) -> IO CLong

hardwareAddress :: QNetworkInterface a -> (()) -> IO (String)
hardwareAddress x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QNetworkInterface_hardwareAddress cobj_x0

foreign import ccall "qtc_QNetworkInterface_hardwareAddress" qtc_QNetworkInterface_hardwareAddress :: Ptr (TQNetworkInterface a) -> IO (Ptr (TQString ()))

qNetworkInterfaceInterfaceFromIndex :: ((Int)) -> IO (QNetworkInterface ())
qNetworkInterfaceInterfaceFromIndex (x1)
  = withQNetworkInterfaceResult $
    qtc_QNetworkInterface_interfaceFromIndex (toCInt x1)

foreign import ccall "qtc_QNetworkInterface_interfaceFromIndex" qtc_QNetworkInterface_interfaceFromIndex :: CInt -> IO (Ptr (TQNetworkInterface ()))

qNetworkInterfaceInterfaceFromName :: ((String)) -> IO (QNetworkInterface ())
qNetworkInterfaceInterfaceFromName (x1)
  = withQNetworkInterfaceResult $
    withCWString x1 $ \cstr_x1 ->
    qtc_QNetworkInterface_interfaceFromName cstr_x1

foreign import ccall "qtc_QNetworkInterface_interfaceFromName" qtc_QNetworkInterface_interfaceFromName :: CWString -> IO (Ptr (TQNetworkInterface ()))

instance QqisValid (QNetworkInterface ()) (()) where
 qisValid x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QNetworkInterface_isValid cobj_x0

foreign import ccall "qtc_QNetworkInterface_isValid" qtc_QNetworkInterface_isValid :: Ptr (TQNetworkInterface a) -> IO CBool

instance QqisValid (QNetworkInterfaceSc a) (()) where
 qisValid x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QNetworkInterface_isValid cobj_x0

instance Qname (QNetworkInterface a) (()) where
 name x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QNetworkInterface_name cobj_x0

foreign import ccall "qtc_QNetworkInterface_name" qtc_QNetworkInterface_name :: Ptr (TQNetworkInterface a) -> IO (Ptr (TQString ()))

qNetworkInterface_delete :: QNetworkInterface a -> IO ()
qNetworkInterface_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QNetworkInterface_delete cobj_x0

foreign import ccall "qtc_QNetworkInterface_delete" qtc_QNetworkInterface_delete :: Ptr (TQNetworkInterface a) -> IO ()

