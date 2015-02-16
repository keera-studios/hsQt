{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QUuid.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:32
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Core.QUuid (
  QqUuid(..)
  ,QqUuid_nf(..)
  ,qUuidCreateUuid
  ,data1
  ,data2
  ,data3
  ,setData1
  ,setData2
  ,setData3
  ,variant
  ,qUuid_delete
  )
  where

import Foreign.C.Types
import Qth.ClassTypes.Core
import Qtc.Enums.Base
import Qtc.Enums.Core.QUuid

import Qtc.Classes.Base
import Qtc.Classes.Qccs
import Qtc.Classes.Core
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core

class QqUuid x1 where
  qUuid :: x1 -> IO (QUuid ())

instance QqUuid (()) where
 qUuid ()
  = withQUuidResult $
    qtc_QUuid

foreign import ccall "qtc_QUuid" qtc_QUuid :: IO (Ptr (TQUuid ()))

instance QqUuid ((QUuid t1)) where
 qUuid (x1)
  = withQUuidResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUuid2 cobj_x1

foreign import ccall "qtc_QUuid2" qtc_QUuid2 :: Ptr (TQUuid t1) -> IO (Ptr (TQUuid ()))

instance QqUuid ((String)) where
 qUuid (x1)
  = withQUuidResult $
    withCWString x1 $ \cstr_x1 ->
    qtc_QUuid3 cstr_x1

foreign import ccall "qtc_QUuid3" qtc_QUuid3 :: CWString -> IO (Ptr (TQUuid ()))

class QqUuid_nf x1 where
  qUuid_nf :: x1 -> IO (QUuid ())

instance QqUuid_nf (()) where
 qUuid_nf ()
  = withObjectRefResult $
    qtc_QUuid

instance QqUuid_nf ((QUuid t1)) where
 qUuid_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUuid2 cobj_x1

instance QqUuid_nf ((String)) where
 qUuid_nf (x1)
  = withObjectRefResult $
    withCWString x1 $ \cstr_x1 ->
    qtc_QUuid3 cstr_x1

qUuidCreateUuid :: (()) -> IO (QUuid ())
qUuidCreateUuid ()
  = withQUuidResult $
    qtc_QUuid_createUuid

foreign import ccall "qtc_QUuid_createUuid" qtc_QUuid_createUuid :: IO (Ptr (TQUuid ()))

data1 :: QUuid a -> (()) -> IO (Int)
data1 x0 ()
  = withUnsignedIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUuid_data1 cobj_x0

foreign import ccall "qtc_QUuid_data1" qtc_QUuid_data1 :: Ptr (TQUuid a) -> IO CUInt

data2 :: QUuid a -> (()) -> IO (Int)
data2 x0 ()
  = withUnsignedShortResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUuid_data2 cobj_x0

foreign import ccall "qtc_QUuid_data2" qtc_QUuid_data2 :: Ptr (TQUuid a) -> IO CUShort

data3 :: QUuid a -> (()) -> IO (Int)
data3 x0 ()
  = withUnsignedShortResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUuid_data3 cobj_x0

foreign import ccall "qtc_QUuid_data3" qtc_QUuid_data3 :: Ptr (TQUuid a) -> IO CUShort

instance QqisNull (QUuid a) (()) where
 qisNull x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUuid_isNull cobj_x0

foreign import ccall "qtc_QUuid_isNull" qtc_QUuid_isNull :: Ptr (TQUuid a) -> IO CBool

setData1 :: QUuid a -> ((Int)) -> IO ()
setData1 x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUuid_setData1 cobj_x0 (toCUInt x1)

foreign import ccall "qtc_QUuid_setData1" qtc_QUuid_setData1 :: Ptr (TQUuid a) -> CUInt -> IO ()

setData2 :: QUuid a -> ((Int)) -> IO ()
setData2 x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUuid_setData2 cobj_x0 (toCUShort x1)

foreign import ccall "qtc_QUuid_setData2" qtc_QUuid_setData2 :: Ptr (TQUuid a) -> CUShort -> IO ()

setData3 :: QUuid a -> ((Int)) -> IO ()
setData3 x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUuid_setData3 cobj_x0 (toCUShort x1)

foreign import ccall "qtc_QUuid_setData3" qtc_QUuid_setData3 :: Ptr (TQUuid a) -> CUShort -> IO ()

instance QtoString (QUuid a) (()) where
 toString x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUuid_toString cobj_x0

foreign import ccall "qtc_QUuid_toString" qtc_QUuid_toString :: Ptr (TQUuid a) -> IO (Ptr (TQString ()))

variant :: QUuid a -> (()) -> IO (Variant)
variant x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUuid_variant cobj_x0

foreign import ccall "qtc_QUuid_variant" qtc_QUuid_variant :: Ptr (TQUuid a) -> IO CLong

instance Qversion (QUuid a) (()) (IO (QUuidVersion)) where
 version x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUuid_version cobj_x0

foreign import ccall "qtc_QUuid_version" qtc_QUuid_version :: Ptr (TQUuid a) -> IO CLong

qUuid_delete :: QUuid a -> IO ()
qUuid_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUuid_delete cobj_x0

foreign import ccall "qtc_QUuid_delete" qtc_QUuid_delete :: Ptr (TQUuid a) -> IO ()

