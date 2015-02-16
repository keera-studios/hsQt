{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QRegExpValidator.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:20
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QRegExpValidator (
  QqRegExpValidator(..)
  ,regExp
  ,setRegExp
  ,qRegExpValidator_delete
  ,qRegExpValidator_deleteLater
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
import Qtc.Classes.Gui
import Qtc.ClassTypes.Gui

instance QuserMethod (QRegExpValidator ()) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QRegExpValidator_userMethod cobj_qobj (toCInt evid)

foreign import ccall "qtc_QRegExpValidator_userMethod" qtc_QRegExpValidator_userMethod :: Ptr (TQRegExpValidator a) -> CInt -> IO ()

instance QuserMethod (QRegExpValidatorSc a) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QRegExpValidator_userMethod cobj_qobj (toCInt evid)

instance QuserMethod (QRegExpValidator ()) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QRegExpValidator_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

foreign import ccall "qtc_QRegExpValidator_userMethodVariant" qtc_QRegExpValidator_userMethodVariant :: Ptr (TQRegExpValidator a) -> CInt -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))

instance QuserMethod (QRegExpValidatorSc a) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QRegExpValidator_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

class QqRegExpValidator x1 where
  qRegExpValidator :: x1 -> IO (QRegExpValidator ())

instance QqRegExpValidator ((QObject t1)) where
 qRegExpValidator (x1)
  = withQRegExpValidatorResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRegExpValidator cobj_x1

foreign import ccall "qtc_QRegExpValidator" qtc_QRegExpValidator :: Ptr (TQObject t1) -> IO (Ptr (TQRegExpValidator ()))

instance QqRegExpValidator ((QRegExp t1, QObject t2)) where
 qRegExpValidator (x1, x2)
  = withQRegExpValidatorResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QRegExpValidator1 cobj_x1 cobj_x2

foreign import ccall "qtc_QRegExpValidator1" qtc_QRegExpValidator1 :: Ptr (TQRegExp t1) -> Ptr (TQObject t2) -> IO (Ptr (TQRegExpValidator ()))

regExp :: QRegExpValidator a -> (()) -> IO (QRegExp ())
regExp x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRegExpValidator_regExp cobj_x0

foreign import ccall "qtc_QRegExpValidator_regExp" qtc_QRegExpValidator_regExp :: Ptr (TQRegExpValidator a) -> IO (Ptr (TQRegExp ()))

setRegExp :: QRegExpValidator a -> ((QRegExp t1)) -> IO ()
setRegExp x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRegExpValidator_setRegExp cobj_x0 cobj_x1

foreign import ccall "qtc_QRegExpValidator_setRegExp" qtc_QRegExpValidator_setRegExp :: Ptr (TQRegExpValidator a) -> Ptr (TQRegExp t1) -> IO ()

qRegExpValidator_delete :: QRegExpValidator a -> IO ()
qRegExpValidator_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRegExpValidator_delete cobj_x0

foreign import ccall "qtc_QRegExpValidator_delete" qtc_QRegExpValidator_delete :: Ptr (TQRegExpValidator a) -> IO ()

qRegExpValidator_deleteLater :: QRegExpValidator a -> IO ()
qRegExpValidator_deleteLater x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRegExpValidator_deleteLater cobj_x0

foreign import ccall "qtc_QRegExpValidator_deleteLater" qtc_QRegExpValidator_deleteLater :: Ptr (TQRegExpValidator a) -> IO ()

instance QchildEvent (QRegExpValidator ()) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRegExpValidator_childEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QRegExpValidator_childEvent" qtc_QRegExpValidator_childEvent :: Ptr (TQRegExpValidator a) -> Ptr (TQChildEvent t1) -> IO ()

instance QchildEvent (QRegExpValidatorSc a) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRegExpValidator_childEvent cobj_x0 cobj_x1

instance QconnectNotify (QRegExpValidator ()) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QRegExpValidator_connectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QRegExpValidator_connectNotify" qtc_QRegExpValidator_connectNotify :: Ptr (TQRegExpValidator a) -> CWString -> IO ()

instance QconnectNotify (QRegExpValidatorSc a) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QRegExpValidator_connectNotify cobj_x0 cstr_x1

instance QcustomEvent (QRegExpValidator ()) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRegExpValidator_customEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QRegExpValidator_customEvent" qtc_QRegExpValidator_customEvent :: Ptr (TQRegExpValidator a) -> Ptr (TQEvent t1) -> IO ()

instance QcustomEvent (QRegExpValidatorSc a) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRegExpValidator_customEvent cobj_x0 cobj_x1

instance QdisconnectNotify (QRegExpValidator ()) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QRegExpValidator_disconnectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QRegExpValidator_disconnectNotify" qtc_QRegExpValidator_disconnectNotify :: Ptr (TQRegExpValidator a) -> CWString -> IO ()

instance QdisconnectNotify (QRegExpValidatorSc a) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QRegExpValidator_disconnectNotify cobj_x0 cstr_x1

instance Qevent (QRegExpValidator ()) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRegExpValidator_event_h cobj_x0 cobj_x1

foreign import ccall "qtc_QRegExpValidator_event_h" qtc_QRegExpValidator_event_h :: Ptr (TQRegExpValidator a) -> Ptr (TQEvent t1) -> IO CBool

instance Qevent (QRegExpValidatorSc a) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRegExpValidator_event_h cobj_x0 cobj_x1

instance QeventFilter (QRegExpValidator ()) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QRegExpValidator_eventFilter_h cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QRegExpValidator_eventFilter_h" qtc_QRegExpValidator_eventFilter_h :: Ptr (TQRegExpValidator a) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO CBool

instance QeventFilter (QRegExpValidatorSc a) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QRegExpValidator_eventFilter_h cobj_x0 cobj_x1 cobj_x2

instance Qreceivers (QRegExpValidator ()) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QRegExpValidator_receivers cobj_x0 cstr_x1

foreign import ccall "qtc_QRegExpValidator_receivers" qtc_QRegExpValidator_receivers :: Ptr (TQRegExpValidator a) -> CWString -> IO CInt

instance Qreceivers (QRegExpValidatorSc a) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QRegExpValidator_receivers cobj_x0 cstr_x1

instance Qsender (QRegExpValidator ()) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRegExpValidator_sender cobj_x0

foreign import ccall "qtc_QRegExpValidator_sender" qtc_QRegExpValidator_sender :: Ptr (TQRegExpValidator a) -> IO (Ptr (TQObject ()))

instance Qsender (QRegExpValidatorSc a) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRegExpValidator_sender cobj_x0

instance QtimerEvent (QRegExpValidator ()) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRegExpValidator_timerEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QRegExpValidator_timerEvent" qtc_QRegExpValidator_timerEvent :: Ptr (TQRegExpValidator a) -> Ptr (TQTimerEvent t1) -> IO ()

instance QtimerEvent (QRegExpValidatorSc a) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRegExpValidator_timerEvent cobj_x0 cobj_x1

