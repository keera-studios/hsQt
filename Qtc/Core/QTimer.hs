{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QTimer.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:32
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Core.QTimer (
  QqTimer(..)
  ,interval
  ,isSingleShot
  ,setInterval
  ,setSingleShot
  ,qTimerSingleShot
  ,qTimer_delete
  ,qTimer_deleteLater
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

instance QuserMethod (QTimer ()) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QTimer_userMethod cobj_qobj (toCInt evid)

foreign import ccall "qtc_QTimer_userMethod" qtc_QTimer_userMethod :: Ptr (TQTimer a) -> CInt -> IO ()

instance QuserMethod (QTimerSc a) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QTimer_userMethod cobj_qobj (toCInt evid)

instance QuserMethod (QTimer ()) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QTimer_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

foreign import ccall "qtc_QTimer_userMethodVariant" qtc_QTimer_userMethodVariant :: Ptr (TQTimer a) -> CInt -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))

instance QuserMethod (QTimerSc a) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QTimer_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

class QqTimer x1 where
  qTimer :: x1 -> IO (QTimer ())

instance QqTimer (()) where
 qTimer ()
  = withQTimerResult $
    qtc_QTimer

foreign import ccall "qtc_QTimer" qtc_QTimer :: IO (Ptr (TQTimer ()))

instance QqTimer ((QObject t1)) where
 qTimer (x1)
  = withQTimerResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTimer1 cobj_x1

foreign import ccall "qtc_QTimer1" qtc_QTimer1 :: Ptr (TQObject t1) -> IO (Ptr (TQTimer ()))

interval :: QTimer a -> (()) -> IO (Int)
interval x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTimer_interval cobj_x0

foreign import ccall "qtc_QTimer_interval" qtc_QTimer_interval :: Ptr (TQTimer a) -> IO CInt

instance QisActive (QTimer a) (()) where
 isActive x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTimer_isActive cobj_x0

foreign import ccall "qtc_QTimer_isActive" qtc_QTimer_isActive :: Ptr (TQTimer a) -> IO CBool

isSingleShot :: QTimer a -> (()) -> IO (Bool)
isSingleShot x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTimer_isSingleShot cobj_x0

foreign import ccall "qtc_QTimer_isSingleShot" qtc_QTimer_isSingleShot :: Ptr (TQTimer a) -> IO CBool

setInterval :: QTimer a -> ((Int)) -> IO ()
setInterval x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTimer_setInterval cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTimer_setInterval" qtc_QTimer_setInterval :: Ptr (TQTimer a) -> CInt -> IO ()

setSingleShot :: QTimer a -> ((Bool)) -> IO ()
setSingleShot x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTimer_setSingleShot cobj_x0 (toCBool x1)

foreign import ccall "qtc_QTimer_setSingleShot" qtc_QTimer_setSingleShot :: Ptr (TQTimer a) -> CBool -> IO ()

qTimerSingleShot :: ((Int, QObject t2, String)) -> IO ()
qTimerSingleShot (x1, x2, x3)
  = withObjectPtr x2 $ \cobj_x2 ->
    withCWString x3 $ \cstr_x3 ->
    qtc_QTimer_singleShot (toCInt x1) cobj_x2 cstr_x3

foreign import ccall "qtc_QTimer_singleShot" qtc_QTimer_singleShot :: CInt -> Ptr (TQObject t2) -> CWString -> IO ()

instance Qstart (QTimer a) (()) (IO ()) where
 start x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTimer_start cobj_x0

foreign import ccall "qtc_QTimer_start" qtc_QTimer_start :: Ptr (TQTimer a) -> IO ()

instance Qstart (QTimer a) ((Int)) (IO ()) where
 start x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTimer_start1 cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTimer_start1" qtc_QTimer_start1 :: Ptr (TQTimer a) -> CInt -> IO ()

instance Qstop (QTimer a) (()) where
 stop x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTimer_stop cobj_x0

foreign import ccall "qtc_QTimer_stop" qtc_QTimer_stop :: Ptr (TQTimer a) -> IO ()

instance QtimerEvent (QTimer ()) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTimer_timerEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTimer_timerEvent" qtc_QTimer_timerEvent :: Ptr (TQTimer a) -> Ptr (TQTimerEvent t1) -> IO ()

instance QtimerEvent (QTimerSc a) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTimer_timerEvent cobj_x0 cobj_x1

instance QtimerId (QTimer a) (()) where
 timerId x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTimer_timerId cobj_x0

foreign import ccall "qtc_QTimer_timerId" qtc_QTimer_timerId :: Ptr (TQTimer a) -> IO CInt

qTimer_delete :: QTimer a -> IO ()
qTimer_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTimer_delete cobj_x0

foreign import ccall "qtc_QTimer_delete" qtc_QTimer_delete :: Ptr (TQTimer a) -> IO ()

qTimer_deleteLater :: QTimer a -> IO ()
qTimer_deleteLater x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTimer_deleteLater cobj_x0

foreign import ccall "qtc_QTimer_deleteLater" qtc_QTimer_deleteLater :: Ptr (TQTimer a) -> IO ()

instance QchildEvent (QTimer ()) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTimer_childEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTimer_childEvent" qtc_QTimer_childEvent :: Ptr (TQTimer a) -> Ptr (TQChildEvent t1) -> IO ()

instance QchildEvent (QTimerSc a) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTimer_childEvent cobj_x0 cobj_x1

instance QconnectNotify (QTimer ()) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTimer_connectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QTimer_connectNotify" qtc_QTimer_connectNotify :: Ptr (TQTimer a) -> CWString -> IO ()

instance QconnectNotify (QTimerSc a) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTimer_connectNotify cobj_x0 cstr_x1

instance QcustomEvent (QTimer ()) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTimer_customEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTimer_customEvent" qtc_QTimer_customEvent :: Ptr (TQTimer a) -> Ptr (TQEvent t1) -> IO ()

instance QcustomEvent (QTimerSc a) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTimer_customEvent cobj_x0 cobj_x1

instance QdisconnectNotify (QTimer ()) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTimer_disconnectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QTimer_disconnectNotify" qtc_QTimer_disconnectNotify :: Ptr (TQTimer a) -> CWString -> IO ()

instance QdisconnectNotify (QTimerSc a) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTimer_disconnectNotify cobj_x0 cstr_x1

instance Qevent (QTimer ()) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTimer_event_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTimer_event_h" qtc_QTimer_event_h :: Ptr (TQTimer a) -> Ptr (TQEvent t1) -> IO CBool

instance Qevent (QTimerSc a) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTimer_event_h cobj_x0 cobj_x1

instance QeventFilter (QTimer ()) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QTimer_eventFilter_h cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QTimer_eventFilter_h" qtc_QTimer_eventFilter_h :: Ptr (TQTimer a) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO CBool

instance QeventFilter (QTimerSc a) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QTimer_eventFilter_h cobj_x0 cobj_x1 cobj_x2

instance Qreceivers (QTimer ()) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTimer_receivers cobj_x0 cstr_x1

foreign import ccall "qtc_QTimer_receivers" qtc_QTimer_receivers :: Ptr (TQTimer a) -> CWString -> IO CInt

instance Qreceivers (QTimerSc a) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTimer_receivers cobj_x0 cstr_x1

instance Qsender (QTimer ()) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTimer_sender cobj_x0

foreign import ccall "qtc_QTimer_sender" qtc_QTimer_sender :: Ptr (TQTimer a) -> IO (Ptr (TQObject ()))

instance Qsender (QTimerSc a) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTimer_sender cobj_x0

