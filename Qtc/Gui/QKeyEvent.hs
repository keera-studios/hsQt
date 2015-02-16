{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QKeyEvent.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:26
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QKeyEvent (
  QqKeyEvent(..)
  ,QqKeyEvent_nf(..)
  ,QqKeyEventCreateExtendedKeyEvent(..)
  ,hasExtendedInfo
  ,isAutoRepeat
  ,nativeModifiers
  ,nativeScanCode
  ,nativeVirtualKey
  ,qKeyEvent_delete
  )
  where

import Foreign.C.Types
import Qth.ClassTypes.Core
import Qtc.Enums.Base
import Qtc.Enums.Gui.QKeySequence
import Qtc.Enums.Core.Qt
import Qtc.Enums.Core.QEvent

import Qtc.Classes.Base
import Qtc.Classes.Qccs
import Qtc.Classes.Core
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core
import Qtc.Classes.Gui
import Qtc.ClassTypes.Gui

class QqKeyEvent x1 where
  qKeyEvent :: x1 -> IO (QKeyEvent ())

instance QqKeyEvent ((QKeyEvent t1)) where
 qKeyEvent (x1)
  = withQKeyEventResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QKeyEvent cobj_x1

foreign import ccall "qtc_QKeyEvent" qtc_QKeyEvent :: Ptr (TQKeyEvent t1) -> IO (Ptr (TQKeyEvent ()))

instance QqKeyEvent ((QEventType, Int, KeyboardModifiers)) where
 qKeyEvent (x1, x2, x3)
  = withQKeyEventResult $
    qtc_QKeyEvent1 (toCLong $ qEnum_toInt x1) (toCInt x2) (toCLong $ qFlags_toInt x3)

foreign import ccall "qtc_QKeyEvent1" qtc_QKeyEvent1 :: CLong -> CInt -> CLong -> IO (Ptr (TQKeyEvent ()))

instance QqKeyEvent ((QEventType, Int, KeyboardModifiers, String)) where
 qKeyEvent (x1, x2, x3, x4)
  = withQKeyEventResult $
    withCWString x4 $ \cstr_x4 ->
    qtc_QKeyEvent2 (toCLong $ qEnum_toInt x1) (toCInt x2) (toCLong $ qFlags_toInt x3) cstr_x4

foreign import ccall "qtc_QKeyEvent2" qtc_QKeyEvent2 :: CLong -> CInt -> CLong -> CWString -> IO (Ptr (TQKeyEvent ()))

instance QqKeyEvent ((QEventType, Int, KeyboardModifiers, String, Bool)) where
 qKeyEvent (x1, x2, x3, x4, x5)
  = withQKeyEventResult $
    withCWString x4 $ \cstr_x4 ->
    qtc_QKeyEvent3 (toCLong $ qEnum_toInt x1) (toCInt x2) (toCLong $ qFlags_toInt x3) cstr_x4 (toCBool x5)

foreign import ccall "qtc_QKeyEvent3" qtc_QKeyEvent3 :: CLong -> CInt -> CLong -> CWString -> CBool -> IO (Ptr (TQKeyEvent ()))

instance QqKeyEvent ((QEventType, Int, KeyboardModifiers, String, Bool, Int)) where
 qKeyEvent (x1, x2, x3, x4, x5, x6)
  = withQKeyEventResult $
    withCWString x4 $ \cstr_x4 ->
    qtc_QKeyEvent4 (toCLong $ qEnum_toInt x1) (toCInt x2) (toCLong $ qFlags_toInt x3) cstr_x4 (toCBool x5) (toCUShort x6)

foreign import ccall "qtc_QKeyEvent4" qtc_QKeyEvent4 :: CLong -> CInt -> CLong -> CWString -> CBool -> CUShort -> IO (Ptr (TQKeyEvent ()))

class QqKeyEvent_nf x1 where
  qKeyEvent_nf :: x1 -> IO (QKeyEvent ())

instance QqKeyEvent_nf ((QKeyEvent t1)) where
 qKeyEvent_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QKeyEvent cobj_x1

instance QqKeyEvent_nf ((QEventType, Int, KeyboardModifiers)) where
 qKeyEvent_nf (x1, x2, x3)
  = withObjectRefResult $
    qtc_QKeyEvent1 (toCLong $ qEnum_toInt x1) (toCInt x2) (toCLong $ qFlags_toInt x3)

instance QqKeyEvent_nf ((QEventType, Int, KeyboardModifiers, String)) where
 qKeyEvent_nf (x1, x2, x3, x4)
  = withObjectRefResult $
    withCWString x4 $ \cstr_x4 ->
    qtc_QKeyEvent2 (toCLong $ qEnum_toInt x1) (toCInt x2) (toCLong $ qFlags_toInt x3) cstr_x4

instance QqKeyEvent_nf ((QEventType, Int, KeyboardModifiers, String, Bool)) where
 qKeyEvent_nf (x1, x2, x3, x4, x5)
  = withObjectRefResult $
    withCWString x4 $ \cstr_x4 ->
    qtc_QKeyEvent3 (toCLong $ qEnum_toInt x1) (toCInt x2) (toCLong $ qFlags_toInt x3) cstr_x4 (toCBool x5)

instance QqKeyEvent_nf ((QEventType, Int, KeyboardModifiers, String, Bool, Int)) where
 qKeyEvent_nf (x1, x2, x3, x4, x5, x6)
  = withObjectRefResult $
    withCWString x4 $ \cstr_x4 ->
    qtc_QKeyEvent4 (toCLong $ qEnum_toInt x1) (toCInt x2) (toCLong $ qFlags_toInt x3) cstr_x4 (toCBool x5) (toCUShort x6)

instance Qcount (QKeyEvent a) (()) where
 count x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QKeyEvent_count cobj_x0

foreign import ccall "qtc_QKeyEvent_count" qtc_QKeyEvent_count :: Ptr (TQKeyEvent a) -> IO CInt

class QqKeyEventCreateExtendedKeyEvent x1 where
 qKeyEventCreateExtendedKeyEvent :: x1 -> IO (QKeyEvent ())

instance QqKeyEventCreateExtendedKeyEvent ((QEventType, Int, KeyboardModifiers, Int, Int, Int)) where
 qKeyEventCreateExtendedKeyEvent (x1, x2, x3, x4, x5, x6)
  = withObjectRefResult $
    qtc_QKeyEvent_createExtendedKeyEvent (toCLong $ qEnum_toInt x1) (toCInt x2) (toCLong $ qFlags_toInt x3) (toCUInt x4) (toCUInt x5) (toCUInt x6)

foreign import ccall "qtc_QKeyEvent_createExtendedKeyEvent" qtc_QKeyEvent_createExtendedKeyEvent :: CLong -> CInt -> CLong -> CUInt -> CUInt -> CUInt -> IO (Ptr (TQKeyEvent ()))

instance QqKeyEventCreateExtendedKeyEvent ((QEventType, Int, KeyboardModifiers, Int, Int, Int, String)) where
 qKeyEventCreateExtendedKeyEvent (x1, x2, x3, x4, x5, x6, x7)
  = withObjectRefResult $
    withCWString x7 $ \cstr_x7 ->
    qtc_QKeyEvent_createExtendedKeyEvent1 (toCLong $ qEnum_toInt x1) (toCInt x2) (toCLong $ qFlags_toInt x3) (toCUInt x4) (toCUInt x5) (toCUInt x6) cstr_x7

foreign import ccall "qtc_QKeyEvent_createExtendedKeyEvent1" qtc_QKeyEvent_createExtendedKeyEvent1 :: CLong -> CInt -> CLong -> CUInt -> CUInt -> CUInt -> CWString -> IO (Ptr (TQKeyEvent ()))

instance QqKeyEventCreateExtendedKeyEvent ((QEventType, Int, KeyboardModifiers, Int, Int, Int, String, Bool)) where
 qKeyEventCreateExtendedKeyEvent (x1, x2, x3, x4, x5, x6, x7, x8)
  = withObjectRefResult $
    withCWString x7 $ \cstr_x7 ->
    qtc_QKeyEvent_createExtendedKeyEvent2 (toCLong $ qEnum_toInt x1) (toCInt x2) (toCLong $ qFlags_toInt x3) (toCUInt x4) (toCUInt x5) (toCUInt x6) cstr_x7 (toCBool x8)

foreign import ccall "qtc_QKeyEvent_createExtendedKeyEvent2" qtc_QKeyEvent_createExtendedKeyEvent2 :: CLong -> CInt -> CLong -> CUInt -> CUInt -> CUInt -> CWString -> CBool -> IO (Ptr (TQKeyEvent ()))

instance QqKeyEventCreateExtendedKeyEvent ((QEventType, Int, KeyboardModifiers, Int, Int, Int, String, Bool, Int)) where
 qKeyEventCreateExtendedKeyEvent (x1, x2, x3, x4, x5, x6, x7, x8, x9)
  = withObjectRefResult $
    withCWString x7 $ \cstr_x7 ->
    qtc_QKeyEvent_createExtendedKeyEvent3 (toCLong $ qEnum_toInt x1) (toCInt x2) (toCLong $ qFlags_toInt x3) (toCUInt x4) (toCUInt x5) (toCUInt x6) cstr_x7 (toCBool x8) (toCUShort x9)

foreign import ccall "qtc_QKeyEvent_createExtendedKeyEvent3" qtc_QKeyEvent_createExtendedKeyEvent3 :: CLong -> CInt -> CLong -> CUInt -> CUInt -> CUInt -> CWString -> CBool -> CUShort -> IO (Ptr (TQKeyEvent ()))

hasExtendedInfo :: QKeyEvent a -> (()) -> IO (Bool)
hasExtendedInfo x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QKeyEvent_hasExtendedInfo cobj_x0

foreign import ccall "qtc_QKeyEvent_hasExtendedInfo" qtc_QKeyEvent_hasExtendedInfo :: Ptr (TQKeyEvent a) -> IO CBool

isAutoRepeat :: QKeyEvent a -> (()) -> IO (Bool)
isAutoRepeat x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QKeyEvent_isAutoRepeat cobj_x0

foreign import ccall "qtc_QKeyEvent_isAutoRepeat" qtc_QKeyEvent_isAutoRepeat :: Ptr (TQKeyEvent a) -> IO CBool

instance Qkey (QKeyEvent a) (()) (IO (Int)) where
 key x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QKeyEvent_key cobj_x0

foreign import ccall "qtc_QKeyEvent_key" qtc_QKeyEvent_key :: Ptr (TQKeyEvent a) -> IO CInt

instance Qmatches (QKeyEvent a) ((StandardKey)) (IO (Bool)) where
 matches x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QKeyEvent_matches cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QKeyEvent_matches" qtc_QKeyEvent_matches :: Ptr (TQKeyEvent a) -> CLong -> IO CBool

instance Qmodifiers (QKeyEvent a) (()) where
 modifiers x0 ()
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QKeyEvent_modifiers cobj_x0

foreign import ccall "qtc_QKeyEvent_modifiers" qtc_QKeyEvent_modifiers :: Ptr (TQKeyEvent a) -> IO CLong

nativeModifiers :: QKeyEvent a -> (()) -> IO (Int)
nativeModifiers x0 ()
  = withUnsignedIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QKeyEvent_nativeModifiers cobj_x0

foreign import ccall "qtc_QKeyEvent_nativeModifiers" qtc_QKeyEvent_nativeModifiers :: Ptr (TQKeyEvent a) -> IO CUInt

nativeScanCode :: QKeyEvent a -> (()) -> IO (Int)
nativeScanCode x0 ()
  = withUnsignedIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QKeyEvent_nativeScanCode cobj_x0

foreign import ccall "qtc_QKeyEvent_nativeScanCode" qtc_QKeyEvent_nativeScanCode :: Ptr (TQKeyEvent a) -> IO CUInt

nativeVirtualKey :: QKeyEvent a -> (()) -> IO (Int)
nativeVirtualKey x0 ()
  = withUnsignedIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QKeyEvent_nativeVirtualKey cobj_x0

foreign import ccall "qtc_QKeyEvent_nativeVirtualKey" qtc_QKeyEvent_nativeVirtualKey :: Ptr (TQKeyEvent a) -> IO CUInt

instance Qtext (QKeyEvent a) (()) (IO (String)) where
 text x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QKeyEvent_text cobj_x0

foreign import ccall "qtc_QKeyEvent_text" qtc_QKeyEvent_text :: Ptr (TQKeyEvent a) -> IO (Ptr (TQString ()))

qKeyEvent_delete :: QKeyEvent a -> IO ()
qKeyEvent_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QKeyEvent_delete cobj_x0

foreign import ccall "qtc_QKeyEvent_delete" qtc_QKeyEvent_delete :: Ptr (TQKeyEvent a) -> IO ()

