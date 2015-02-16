{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QTranslator.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:32
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Core.QTranslator (
  QqTranslator(..)
  ,qTranslator_delete
  ,qTranslator_deleteLater
  )
  where

import Foreign.C.Types
import Qth.ClassTypes.Core
import Qtc.Enums.Base

import Qtc.Classes.Base
import Qtc.Classes.Qccs
import Qtc.Classes.Core
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core

instance QuserMethod (QTranslator ()) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QTranslator_userMethod cobj_qobj (toCInt evid)

foreign import ccall "qtc_QTranslator_userMethod" qtc_QTranslator_userMethod :: Ptr (TQTranslator a) -> CInt -> IO ()

instance QuserMethod (QTranslatorSc a) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QTranslator_userMethod cobj_qobj (toCInt evid)

instance QuserMethod (QTranslator ()) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QTranslator_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

foreign import ccall "qtc_QTranslator_userMethodVariant" qtc_QTranslator_userMethodVariant :: Ptr (TQTranslator a) -> CInt -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))

instance QuserMethod (QTranslatorSc a) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QTranslator_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

class QqTranslator x1 where
  qTranslator :: x1 -> IO (QTranslator ())

instance QqTranslator (()) where
 qTranslator ()
  = withQTranslatorResult $
    qtc_QTranslator

foreign import ccall "qtc_QTranslator" qtc_QTranslator :: IO (Ptr (TQTranslator ()))

instance QqTranslator ((QObject t1)) where
 qTranslator (x1)
  = withQTranslatorResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTranslator1 cobj_x1

foreign import ccall "qtc_QTranslator1" qtc_QTranslator1 :: Ptr (TQObject t1) -> IO (Ptr (TQTranslator ()))

instance QqisEmpty (QTranslator ()) (()) where
 qisEmpty x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTranslator_isEmpty_h cobj_x0

foreign import ccall "qtc_QTranslator_isEmpty_h" qtc_QTranslator_isEmpty_h :: Ptr (TQTranslator a) -> IO CBool

instance QqisEmpty (QTranslatorSc a) (()) where
 qisEmpty x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTranslator_isEmpty_h cobj_x0

instance Qload (QTranslator a) ((String)) (IO (Bool)) where
 load x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTranslator_load cobj_x0 cstr_x1

foreign import ccall "qtc_QTranslator_load" qtc_QTranslator_load :: Ptr (TQTranslator a) -> CWString -> IO CBool

instance Qload (QTranslator a) ((String, String)) (IO (Bool)) where
 load x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QTranslator_load1 cobj_x0 cstr_x1 cstr_x2

foreign import ccall "qtc_QTranslator_load1" qtc_QTranslator_load1 :: Ptr (TQTranslator a) -> CWString -> CWString -> IO CBool

instance Qload (QTranslator a) ((String, String, String)) (IO (Bool)) where
 load x0 (x1, x2, x3)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    withCWString x2 $ \cstr_x2 ->
    withCWString x3 $ \cstr_x3 ->
    qtc_QTranslator_load2 cobj_x0 cstr_x1 cstr_x2 cstr_x3

foreign import ccall "qtc_QTranslator_load2" qtc_QTranslator_load2 :: Ptr (TQTranslator a) -> CWString -> CWString -> CWString -> IO CBool

instance Qload (QTranslator a) ((String, String, String, String)) (IO (Bool)) where
 load x0 (x1, x2, x3, x4)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    withCWString x2 $ \cstr_x2 ->
    withCWString x3 $ \cstr_x3 ->
    withCWString x4 $ \cstr_x4 ->
    qtc_QTranslator_load3 cobj_x0 cstr_x1 cstr_x2 cstr_x3 cstr_x4

foreign import ccall "qtc_QTranslator_load3" qtc_QTranslator_load3 :: Ptr (TQTranslator a) -> CWString -> CWString -> CWString -> CWString -> IO CBool

instance Qqtranslate (QTranslator a) ((String, String)) (IO (String)) where
 qtranslate x0 (x1, x2)
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QTranslator_translate cobj_x0 cstr_x1 cstr_x2

foreign import ccall "qtc_QTranslator_translate" qtc_QTranslator_translate :: Ptr (TQTranslator a) -> CWString -> CWString -> IO (Ptr (TQString ()))

instance Qqtranslate (QTranslator a) ((String, String, String)) (IO (String)) where
 qtranslate x0 (x1, x2, x3)
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    withCWString x2 $ \cstr_x2 ->
    withCWString x3 $ \cstr_x3 ->
    qtc_QTranslator_translate1 cobj_x0 cstr_x1 cstr_x2 cstr_x3

foreign import ccall "qtc_QTranslator_translate1" qtc_QTranslator_translate1 :: Ptr (TQTranslator a) -> CWString -> CWString -> CWString -> IO (Ptr (TQString ()))

instance Qqtranslate (QTranslator ()) ((String, String, String, Int)) (IO (String)) where
 qtranslate x0 (x1, x2, x3, x4)
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    withCWString x2 $ \cstr_x2 ->
    withCWString x3 $ \cstr_x3 ->
    qtc_QTranslator_translate2_h cobj_x0 cstr_x1 cstr_x2 cstr_x3 (toCInt x4)

foreign import ccall "qtc_QTranslator_translate2_h" qtc_QTranslator_translate2_h :: Ptr (TQTranslator a) -> CWString -> CWString -> CWString -> CInt -> IO (Ptr (TQString ()))

instance Qqtranslate (QTranslatorSc a) ((String, String, String, Int)) (IO (String)) where
 qtranslate x0 (x1, x2, x3, x4)
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    withCWString x2 $ \cstr_x2 ->
    withCWString x3 $ \cstr_x3 ->
    qtc_QTranslator_translate2_h cobj_x0 cstr_x1 cstr_x2 cstr_x3 (toCInt x4)

qTranslator_delete :: QTranslator a -> IO ()
qTranslator_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTranslator_delete cobj_x0

foreign import ccall "qtc_QTranslator_delete" qtc_QTranslator_delete :: Ptr (TQTranslator a) -> IO ()

qTranslator_deleteLater :: QTranslator a -> IO ()
qTranslator_deleteLater x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTranslator_deleteLater cobj_x0

foreign import ccall "qtc_QTranslator_deleteLater" qtc_QTranslator_deleteLater :: Ptr (TQTranslator a) -> IO ()

instance QchildEvent (QTranslator ()) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTranslator_childEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTranslator_childEvent" qtc_QTranslator_childEvent :: Ptr (TQTranslator a) -> Ptr (TQChildEvent t1) -> IO ()

instance QchildEvent (QTranslatorSc a) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTranslator_childEvent cobj_x0 cobj_x1

instance QconnectNotify (QTranslator ()) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTranslator_connectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QTranslator_connectNotify" qtc_QTranslator_connectNotify :: Ptr (TQTranslator a) -> CWString -> IO ()

instance QconnectNotify (QTranslatorSc a) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTranslator_connectNotify cobj_x0 cstr_x1

instance QcustomEvent (QTranslator ()) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTranslator_customEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTranslator_customEvent" qtc_QTranslator_customEvent :: Ptr (TQTranslator a) -> Ptr (TQEvent t1) -> IO ()

instance QcustomEvent (QTranslatorSc a) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTranslator_customEvent cobj_x0 cobj_x1

instance QdisconnectNotify (QTranslator ()) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTranslator_disconnectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QTranslator_disconnectNotify" qtc_QTranslator_disconnectNotify :: Ptr (TQTranslator a) -> CWString -> IO ()

instance QdisconnectNotify (QTranslatorSc a) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTranslator_disconnectNotify cobj_x0 cstr_x1

instance Qevent (QTranslator ()) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTranslator_event_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTranslator_event_h" qtc_QTranslator_event_h :: Ptr (TQTranslator a) -> Ptr (TQEvent t1) -> IO CBool

instance Qevent (QTranslatorSc a) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTranslator_event_h cobj_x0 cobj_x1

instance QeventFilter (QTranslator ()) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QTranslator_eventFilter_h cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QTranslator_eventFilter_h" qtc_QTranslator_eventFilter_h :: Ptr (TQTranslator a) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO CBool

instance QeventFilter (QTranslatorSc a) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QTranslator_eventFilter_h cobj_x0 cobj_x1 cobj_x2

instance Qreceivers (QTranslator ()) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTranslator_receivers cobj_x0 cstr_x1

foreign import ccall "qtc_QTranslator_receivers" qtc_QTranslator_receivers :: Ptr (TQTranslator a) -> CWString -> IO CInt

instance Qreceivers (QTranslatorSc a) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTranslator_receivers cobj_x0 cstr_x1

instance Qsender (QTranslator ()) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTranslator_sender cobj_x0

foreign import ccall "qtc_QTranslator_sender" qtc_QTranslator_sender :: Ptr (TQTranslator a) -> IO (Ptr (TQObject ()))

instance Qsender (QTranslatorSc a) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTranslator_sender cobj_x0

instance QtimerEvent (QTranslator ()) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTranslator_timerEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTranslator_timerEvent" qtc_QTranslator_timerEvent :: Ptr (TQTranslator a) -> Ptr (TQTimerEvent t1) -> IO ()

instance QtimerEvent (QTranslatorSc a) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTranslator_timerEvent cobj_x0 cobj_x1

