{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QSettings.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:31
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Core.QSettings (
  QqSettings(..)
  ,allKeys
  ,applicationName
  ,beginGroup
  ,beginReadArray
  ,beginWriteArray
  ,childGroups
  ,childKeys
  ,endArray
  ,endGroup
  ,fallbacksEnabled
  ,iniCodec
  ,organizationName
  ,scope
  ,setArrayIndex
  ,setFallbacksEnabled
  ,QsetIniCodec(..)
  ,sync
  ,qSettings_delete
  ,qSettings_deleteLater
  )
  where

import Foreign.C.Types
import Qth.ClassTypes.Core
import Qtc.Enums.Base
import Qtc.Enums.Core.QSettings

import Qtc.Classes.Base
import Qtc.Classes.Qccs
import Qtc.Classes.Core
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core

instance QuserMethod (QSettings ()) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QSettings_userMethod cobj_qobj (toCInt evid)

foreign import ccall "qtc_QSettings_userMethod" qtc_QSettings_userMethod :: Ptr (TQSettings a) -> CInt -> IO ()

instance QuserMethod (QSettingsSc a) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QSettings_userMethod cobj_qobj (toCInt evid)

instance QuserMethod (QSettings ()) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QSettings_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

foreign import ccall "qtc_QSettings_userMethodVariant" qtc_QSettings_userMethodVariant :: Ptr (TQSettings a) -> CInt -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))

instance QuserMethod (QSettingsSc a) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QSettings_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

class QqSettings x1 where
  qSettings :: x1 -> IO (QSettings ())

instance QqSettings (()) where
 qSettings ()
  = withQSettingsResult $
    qtc_QSettings

foreign import ccall "qtc_QSettings" qtc_QSettings :: IO (Ptr (TQSettings ()))

instance QqSettings ((String)) where
 qSettings (x1)
  = withQSettingsResult $
    withCWString x1 $ \cstr_x1 ->
    qtc_QSettings1 cstr_x1

foreign import ccall "qtc_QSettings1" qtc_QSettings1 :: CWString -> IO (Ptr (TQSettings ()))

instance QqSettings ((String, String)) where
 qSettings (x1, x2)
  = withQSettingsResult $
    withCWString x1 $ \cstr_x1 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QSettings2 cstr_x1 cstr_x2

foreign import ccall "qtc_QSettings2" qtc_QSettings2 :: CWString -> CWString -> IO (Ptr (TQSettings ()))

instance QqSettings ((String, String, QObject t3)) where
 qSettings (x1, x2, x3)
  = withQSettingsResult $
    withCWString x1 $ \cstr_x1 ->
    withCWString x2 $ \cstr_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QSettings3 cstr_x1 cstr_x2 cobj_x3

foreign import ccall "qtc_QSettings3" qtc_QSettings3 :: CWString -> CWString -> Ptr (TQObject t3) -> IO (Ptr (TQSettings ()))

instance QqSettings ((Scope, String)) where
 qSettings (x1, x2)
  = withQSettingsResult $
    withCWString x2 $ \cstr_x2 ->
    qtc_QSettings4 (toCLong $ qEnum_toInt x1) cstr_x2

foreign import ccall "qtc_QSettings4" qtc_QSettings4 :: CLong -> CWString -> IO (Ptr (TQSettings ()))

instance QqSettings ((Scope, String, String)) where
 qSettings (x1, x2, x3)
  = withQSettingsResult $
    withCWString x2 $ \cstr_x2 ->
    withCWString x3 $ \cstr_x3 ->
    qtc_QSettings5 (toCLong $ qEnum_toInt x1) cstr_x2 cstr_x3

foreign import ccall "qtc_QSettings5" qtc_QSettings5 :: CLong -> CWString -> CWString -> IO (Ptr (TQSettings ()))

instance QqSettings ((Scope, String, String, QObject t4)) where
 qSettings (x1, x2, x3, x4)
  = withQSettingsResult $
    withCWString x2 $ \cstr_x2 ->
    withCWString x3 $ \cstr_x3 ->
    withObjectPtr x4 $ \cobj_x4 ->
    qtc_QSettings6 (toCLong $ qEnum_toInt x1) cstr_x2 cstr_x3 cobj_x4

foreign import ccall "qtc_QSettings6" qtc_QSettings6 :: CLong -> CWString -> CWString -> Ptr (TQObject t4) -> IO (Ptr (TQSettings ()))

instance QqSettings ((QSettingsFormat, Scope, String)) where
 qSettings (x1, x2, x3)
  = withQSettingsResult $
    withCWString x3 $ \cstr_x3 ->
    qtc_QSettings7 (toCLong $ qEnum_toInt x1) (toCLong $ qEnum_toInt x2) cstr_x3

foreign import ccall "qtc_QSettings7" qtc_QSettings7 :: CLong -> CLong -> CWString -> IO (Ptr (TQSettings ()))

instance QqSettings ((QSettingsFormat, Scope, String, String)) where
 qSettings (x1, x2, x3, x4)
  = withQSettingsResult $
    withCWString x3 $ \cstr_x3 ->
    withCWString x4 $ \cstr_x4 ->
    qtc_QSettings8 (toCLong $ qEnum_toInt x1) (toCLong $ qEnum_toInt x2) cstr_x3 cstr_x4

foreign import ccall "qtc_QSettings8" qtc_QSettings8 :: CLong -> CLong -> CWString -> CWString -> IO (Ptr (TQSettings ()))

instance QqSettings ((QSettingsFormat, Scope, String, String, QObject t5)) where
 qSettings (x1, x2, x3, x4, x5)
  = withQSettingsResult $
    withCWString x3 $ \cstr_x3 ->
    withCWString x4 $ \cstr_x4 ->
    withObjectPtr x5 $ \cobj_x5 ->
    qtc_QSettings9 (toCLong $ qEnum_toInt x1) (toCLong $ qEnum_toInt x2) cstr_x3 cstr_x4 cobj_x5

foreign import ccall "qtc_QSettings9" qtc_QSettings9 :: CLong -> CLong -> CWString -> CWString -> Ptr (TQObject t5) -> IO (Ptr (TQSettings ()))

instance QqSettings ((String, QSettingsFormat)) where
 qSettings (x1, x2)
  = withQSettingsResult $
    withCWString x1 $ \cstr_x1 ->
    qtc_QSettings10 cstr_x1 (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QSettings10" qtc_QSettings10 :: CWString -> CLong -> IO (Ptr (TQSettings ()))

instance QqSettings ((String, QSettingsFormat, QObject t3)) where
 qSettings (x1, x2, x3)
  = withQSettingsResult $
    withCWString x1 $ \cstr_x1 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QSettings11 cstr_x1 (toCLong $ qEnum_toInt x2) cobj_x3

foreign import ccall "qtc_QSettings11" qtc_QSettings11 :: CWString -> CLong -> Ptr (TQObject t3) -> IO (Ptr (TQSettings ()))

instance QqSettings ((QObject t1)) where
 qSettings (x1)
  = withQSettingsResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSettings12 cobj_x1

foreign import ccall "qtc_QSettings12" qtc_QSettings12 :: Ptr (TQObject t1) -> IO (Ptr (TQSettings ()))

allKeys :: QSettings a -> (()) -> IO ([String])
allKeys x0 ()
  = withQListStringResult $ \arr ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSettings_allKeys cobj_x0 arr

foreign import ccall "qtc_QSettings_allKeys" qtc_QSettings_allKeys :: Ptr (TQSettings a) -> Ptr (Ptr (TQString ())) -> IO CInt

applicationName :: QSettings a -> (()) -> IO (String)
applicationName x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSettings_applicationName cobj_x0

foreign import ccall "qtc_QSettings_applicationName" qtc_QSettings_applicationName :: Ptr (TQSettings a) -> IO (Ptr (TQString ()))

beginGroup :: QSettings a -> String -> IO ()
beginGroup x0 x1
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QSettings_beginGroup cobj_x0 cstr_x1

foreign import ccall "qtc_QSettings_beginGroup" qtc_QSettings_beginGroup :: Ptr (TQSettings a) -> CWString -> IO ()

beginReadArray :: QSettings a -> String -> IO (Int)
beginReadArray x0 x1
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QSettings_beginReadArray cobj_x0 cstr_x1

foreign import ccall "qtc_QSettings_beginReadArray" qtc_QSettings_beginReadArray :: Ptr (TQSettings a) -> CWString -> IO (CInt)

class QbeginWriteArray x1 where
  beginWriteArray :: QSettings a -> x1 -> IO ()

instance QbeginWriteArray ((String)) where
 beginWriteArray x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QSettings_beginWriteArray cobj_x0 cstr_x1

foreign import ccall "qtc_QSettings_beginWriteArray" qtc_QSettings_beginWriteArray :: Ptr (TQSettings a) -> CWString -> IO ()

instance QbeginWriteArray ((String, Int)) where
 beginWriteArray x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QSettings_beginWriteArray1 cobj_x0 cstr_x1 (toCInt x2)

foreign import ccall "qtc_QSettings_beginWriteArray1" qtc_QSettings_beginWriteArray1 :: Ptr (TQSettings a) -> CWString -> CInt -> IO ()

childGroups :: QSettings a -> (()) -> IO ([String])
childGroups x0 ()
  = withQListStringResult $ \arr ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSettings_childGroups cobj_x0 arr

foreign import ccall "qtc_QSettings_childGroups" qtc_QSettings_childGroups :: Ptr (TQSettings a) -> Ptr (Ptr (TQString ())) -> IO CInt

childKeys :: QSettings a -> (()) -> IO ([String])
childKeys x0 ()
  = withQListStringResult $ \arr ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSettings_childKeys cobj_x0 arr

foreign import ccall "qtc_QSettings_childKeys" qtc_QSettings_childKeys :: Ptr (TQSettings a) -> Ptr (Ptr (TQString ())) -> IO CInt

instance Qclear (QSettings a) (()) where
 clear x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSettings_clear cobj_x0

foreign import ccall "qtc_QSettings_clear" qtc_QSettings_clear :: Ptr (TQSettings a) -> IO ()

instance Qqcontains (QSettings a) ((String)) where
 qcontains x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QSettings_contains cobj_x0 cstr_x1

foreign import ccall "qtc_QSettings_contains" qtc_QSettings_contains :: Ptr (TQSettings a) -> CWString -> IO (CBool)

endArray :: QSettings a -> (()) -> IO ()
endArray x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSettings_endArray cobj_x0

foreign import ccall "qtc_QSettings_endArray" qtc_QSettings_endArray :: Ptr (TQSettings a) -> IO ()

endGroup :: QSettings a -> (()) -> IO ()
endGroup x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSettings_endGroup cobj_x0

foreign import ccall "qtc_QSettings_endGroup" qtc_QSettings_endGroup :: Ptr (TQSettings a) -> IO ()

fallbacksEnabled :: QSettings a -> (()) -> IO (Bool)
fallbacksEnabled x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSettings_fallbacksEnabled cobj_x0

foreign import ccall "qtc_QSettings_fallbacksEnabled" qtc_QSettings_fallbacksEnabled :: Ptr (TQSettings a) -> IO (CBool)

instance QfileName (QSettings a) (()) where
 fileName x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSettings_fileName cobj_x0

foreign import ccall "qtc_QSettings_fileName" qtc_QSettings_fileName :: Ptr (TQSettings a) -> IO (Ptr (TQString ()))

instance Qformat (QSettings a) (()) (IO (QSettingsFormat)) where
 format x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSettings_format cobj_x0

foreign import ccall "qtc_QSettings_format" qtc_QSettings_format :: Ptr (TQSettings a) -> IO (CLong)

instance Qgroup (QSettings a) (()) (IO (String)) where
 group x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSettings_group cobj_x0

foreign import ccall "qtc_QSettings_group" qtc_QSettings_group :: Ptr (TQSettings a) -> IO (Ptr (TQString ()))

iniCodec :: QSettings a -> (()) -> IO (QTextCodec ())
iniCodec x0 ()
  = withQTextCodecResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSettings_iniCodec cobj_x0

foreign import ccall "qtc_QSettings_iniCodec" qtc_QSettings_iniCodec :: Ptr (TQSettings a) -> IO (Ptr (TQTextCodec ()))

instance QisWritable (QSettings a) (()) where
 isWritable x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSettings_isWritable cobj_x0

foreign import ccall "qtc_QSettings_isWritable" qtc_QSettings_isWritable :: Ptr (TQSettings a) -> IO (CBool)

organizationName :: QSettings a -> (()) -> IO (String)
organizationName x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSettings_organizationName cobj_x0

foreign import ccall "qtc_QSettings_organizationName" qtc_QSettings_organizationName :: Ptr (TQSettings a) -> IO (Ptr (TQString ()))

instance Qremove (QSettings a) ((String)) (IO ()) where
 remove x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QSettings_remove cobj_x0 cstr_x1

foreign import ccall "qtc_QSettings_remove" qtc_QSettings_remove :: Ptr (TQSettings a) -> CWString -> IO ()

scope :: QSettings a -> (()) -> IO (Scope)
scope x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSettings_scope cobj_x0

foreign import ccall "qtc_QSettings_scope" qtc_QSettings_scope :: Ptr (TQSettings a) -> IO (CLong)

setArrayIndex :: QSettings a -> ((Int)) -> IO ()
setArrayIndex x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSettings_setArrayIndex cobj_x0 (toCInt x1)

foreign import ccall "qtc_QSettings_setArrayIndex" qtc_QSettings_setArrayIndex :: Ptr (TQSettings a) -> CInt -> IO ()

setFallbacksEnabled :: QSettings a -> ((Bool)) -> IO ()
setFallbacksEnabled x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSettings_setFallbacksEnabled cobj_x0 (toCBool x1)

foreign import ccall "qtc_QSettings_setFallbacksEnabled" qtc_QSettings_setFallbacksEnabled :: Ptr (TQSettings a) -> CBool -> IO ()

class QsetIniCodec x where
  setIniCodec :: QSettings a -> x -> IO ()

instance QsetIniCodec ((QTextCodec t1)) where
 setIniCodec x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSettings_setIniCodec cobj_x0 cobj_x1

foreign import ccall "qtc_QSettings_setIniCodec" qtc_QSettings_setIniCodec :: Ptr (TQSettings a) -> Ptr (TQTextCodec t1) -> IO ()

instance QsetIniCodec ((String)) where
 setIniCodec x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QSettings_setIniCodec1 cobj_x0 cstr_x1

foreign import ccall "qtc_QSettings_setIniCodec1" qtc_QSettings_setIniCodec1 :: Ptr (TQSettings a) -> CWString -> IO ()

instance QsetValue (QSettings a) ((String, QVariant ())) where
 setValue x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QSettings_setValue cobj_x0 cstr_x1 cobj_x2

foreign import ccall "qtc_QSettings_setValue" qtc_QSettings_setValue :: Ptr (TQSettings a) -> CWString -> Ptr (TQVariant ()) -> IO ()

instance Qstatus (QSettings a) (()) (IO (Status)) where
 status x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSettings_status cobj_x0

foreign import ccall "qtc_QSettings_status" qtc_QSettings_status :: Ptr (TQSettings a) -> IO (CLong)

sync :: QSettings a -> () -> IO ()
sync x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSettings_sync cobj_x0

foreign import ccall "qtc_QSettings_sync" qtc_QSettings_sync :: Ptr (TQSettings a) -> IO ()

instance Qvalue (QSettings a) ((String)) (IO (QVariant ())) where
 value x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QSettings_value cobj_x0 cstr_x1

foreign import ccall "qtc_QSettings_value" qtc_QSettings_value :: Ptr (TQSettings a) -> CWString -> IO (Ptr (TQVariant ()))

instance Qvalue (QSettings a) ((String, QVariant ())) (IO (QVariant ())) where
 value x0 (x1, x2)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QSettings_value1 cobj_x0 cstr_x1 cobj_x2

foreign import ccall "qtc_QSettings_value1" qtc_QSettings_value1 :: Ptr (TQSettings a) -> CWString -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))

qSettings_delete :: QSettings a -> IO ()
qSettings_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSettings_delete cobj_x0

foreign import ccall "qtc_QSettings_delete" qtc_QSettings_delete :: Ptr (TQSettings a) -> IO ()

qSettings_deleteLater :: QSettings a -> IO ()
qSettings_deleteLater x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSettings_deleteLater cobj_x0

foreign import ccall "qtc_QSettings_deleteLater" qtc_QSettings_deleteLater :: Ptr (TQSettings a) -> IO ()

instance QchildEvent (QSettings ()) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSettings_childEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QSettings_childEvent" qtc_QSettings_childEvent :: Ptr (TQSettings a) -> Ptr (TQChildEvent t1) -> IO ()

instance QchildEvent (QSettingsSc a) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSettings_childEvent cobj_x0 cobj_x1

instance QconnectNotify (QSettings ()) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QSettings_connectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QSettings_connectNotify" qtc_QSettings_connectNotify :: Ptr (TQSettings a) -> CWString -> IO ()

instance QconnectNotify (QSettingsSc a) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QSettings_connectNotify cobj_x0 cstr_x1

instance QcustomEvent (QSettings ()) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSettings_customEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QSettings_customEvent" qtc_QSettings_customEvent :: Ptr (TQSettings a) -> Ptr (TQEvent t1) -> IO ()

instance QcustomEvent (QSettingsSc a) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSettings_customEvent cobj_x0 cobj_x1

instance QdisconnectNotify (QSettings ()) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QSettings_disconnectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QSettings_disconnectNotify" qtc_QSettings_disconnectNotify :: Ptr (TQSettings a) -> CWString -> IO ()

instance QdisconnectNotify (QSettingsSc a) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QSettings_disconnectNotify cobj_x0 cstr_x1

instance Qevent (QSettings ()) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSettings_event_h cobj_x0 cobj_x1

foreign import ccall "qtc_QSettings_event_h" qtc_QSettings_event_h :: Ptr (TQSettings a) -> Ptr (TQEvent t1) -> IO CBool

instance Qevent (QSettingsSc a) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSettings_event_h cobj_x0 cobj_x1

instance QeventFilter (QSettings ()) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QSettings_eventFilter_h cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QSettings_eventFilter_h" qtc_QSettings_eventFilter_h :: Ptr (TQSettings a) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO CBool

instance QeventFilter (QSettingsSc a) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QSettings_eventFilter_h cobj_x0 cobj_x1 cobj_x2

instance Qreceivers (QSettings ()) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QSettings_receivers cobj_x0 cstr_x1

foreign import ccall "qtc_QSettings_receivers" qtc_QSettings_receivers :: Ptr (TQSettings a) -> CWString -> IO CInt

instance Qreceivers (QSettingsSc a) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QSettings_receivers cobj_x0 cstr_x1

instance Qsender (QSettings ()) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSettings_sender cobj_x0

foreign import ccall "qtc_QSettings_sender" qtc_QSettings_sender :: Ptr (TQSettings a) -> IO (Ptr (TQObject ()))

instance Qsender (QSettingsSc a) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSettings_sender cobj_x0

