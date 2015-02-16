{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QSound.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:30
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QSound (
  QqSound(..)
  ,qSoundIsAvailable
  ,isFinished
  ,loops
  ,loopsRemaining
  ,qSoundPlay
  ,play
  ,setLoops
  ,qSound_delete
  ,qSound_deleteLater
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

instance QuserMethod (QSound ()) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QSound_userMethod cobj_qobj (toCInt evid)

foreign import ccall "qtc_QSound_userMethod" qtc_QSound_userMethod :: Ptr (TQSound a) -> CInt -> IO ()

instance QuserMethod (QSoundSc a) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QSound_userMethod cobj_qobj (toCInt evid)

instance QuserMethod (QSound ()) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QSound_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

foreign import ccall "qtc_QSound_userMethodVariant" qtc_QSound_userMethodVariant :: Ptr (TQSound a) -> CInt -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))

instance QuserMethod (QSoundSc a) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QSound_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

class QqSound x1 where
  qSound :: x1 -> IO (QSound ())

instance QqSound ((String)) where
 qSound (x1)
  = withQSoundResult $
    withCWString x1 $ \cstr_x1 ->
    qtc_QSound cstr_x1

foreign import ccall "qtc_QSound" qtc_QSound :: CWString -> IO (Ptr (TQSound ()))

instance QqSound ((String, QObject t2)) where
 qSound (x1, x2)
  = withQSoundResult $
    withCWString x1 $ \cstr_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QSound1 cstr_x1 cobj_x2

foreign import ccall "qtc_QSound1" qtc_QSound1 :: CWString -> Ptr (TQObject t2) -> IO (Ptr (TQSound ()))

instance QfileName (QSound a) (()) where
 fileName x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSound_fileName cobj_x0

foreign import ccall "qtc_QSound_fileName" qtc_QSound_fileName :: Ptr (TQSound a) -> IO (Ptr (TQString ()))

qSoundIsAvailable :: (()) -> IO (Bool)
qSoundIsAvailable ()
  = withBoolResult $
    qtc_QSound_isAvailable

foreign import ccall "qtc_QSound_isAvailable" qtc_QSound_isAvailable :: IO CBool

isFinished :: QSound a -> (()) -> IO (Bool)
isFinished x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSound_isFinished cobj_x0

foreign import ccall "qtc_QSound_isFinished" qtc_QSound_isFinished :: Ptr (TQSound a) -> IO CBool

loops :: QSound a -> (()) -> IO (Int)
loops x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSound_loops cobj_x0

foreign import ccall "qtc_QSound_loops" qtc_QSound_loops :: Ptr (TQSound a) -> IO CInt

loopsRemaining :: QSound a -> (()) -> IO (Int)
loopsRemaining x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSound_loopsRemaining cobj_x0

foreign import ccall "qtc_QSound_loopsRemaining" qtc_QSound_loopsRemaining :: Ptr (TQSound a) -> IO CInt

qSoundPlay :: ((String)) -> IO ()
qSoundPlay (x1)
  = withCWString x1 $ \cstr_x1 ->
    qtc_QSound_play1 cstr_x1

foreign import ccall "qtc_QSound_play1" qtc_QSound_play1 :: CWString -> IO ()

play :: QSound a -> (()) -> IO ()
play x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSound_play cobj_x0

foreign import ccall "qtc_QSound_play" qtc_QSound_play :: Ptr (TQSound a) -> IO ()

setLoops :: QSound a -> ((Int)) -> IO ()
setLoops x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSound_setLoops cobj_x0 (toCInt x1)

foreign import ccall "qtc_QSound_setLoops" qtc_QSound_setLoops :: Ptr (TQSound a) -> CInt -> IO ()

instance Qstop (QSound a) (()) where
 stop x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSound_stop cobj_x0

foreign import ccall "qtc_QSound_stop" qtc_QSound_stop :: Ptr (TQSound a) -> IO ()

qSound_delete :: QSound a -> IO ()
qSound_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSound_delete cobj_x0

foreign import ccall "qtc_QSound_delete" qtc_QSound_delete :: Ptr (TQSound a) -> IO ()

qSound_deleteLater :: QSound a -> IO ()
qSound_deleteLater x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSound_deleteLater cobj_x0

foreign import ccall "qtc_QSound_deleteLater" qtc_QSound_deleteLater :: Ptr (TQSound a) -> IO ()

instance QchildEvent (QSound ()) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSound_childEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QSound_childEvent" qtc_QSound_childEvent :: Ptr (TQSound a) -> Ptr (TQChildEvent t1) -> IO ()

instance QchildEvent (QSoundSc a) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSound_childEvent cobj_x0 cobj_x1

instance QconnectNotify (QSound ()) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QSound_connectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QSound_connectNotify" qtc_QSound_connectNotify :: Ptr (TQSound a) -> CWString -> IO ()

instance QconnectNotify (QSoundSc a) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QSound_connectNotify cobj_x0 cstr_x1

instance QcustomEvent (QSound ()) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSound_customEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QSound_customEvent" qtc_QSound_customEvent :: Ptr (TQSound a) -> Ptr (TQEvent t1) -> IO ()

instance QcustomEvent (QSoundSc a) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSound_customEvent cobj_x0 cobj_x1

instance QdisconnectNotify (QSound ()) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QSound_disconnectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QSound_disconnectNotify" qtc_QSound_disconnectNotify :: Ptr (TQSound a) -> CWString -> IO ()

instance QdisconnectNotify (QSoundSc a) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QSound_disconnectNotify cobj_x0 cstr_x1

instance Qevent (QSound ()) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSound_event_h cobj_x0 cobj_x1

foreign import ccall "qtc_QSound_event_h" qtc_QSound_event_h :: Ptr (TQSound a) -> Ptr (TQEvent t1) -> IO CBool

instance Qevent (QSoundSc a) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSound_event_h cobj_x0 cobj_x1

instance QeventFilter (QSound ()) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QSound_eventFilter_h cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QSound_eventFilter_h" qtc_QSound_eventFilter_h :: Ptr (TQSound a) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO CBool

instance QeventFilter (QSoundSc a) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QSound_eventFilter_h cobj_x0 cobj_x1 cobj_x2

instance Qreceivers (QSound ()) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QSound_receivers cobj_x0 cstr_x1

foreign import ccall "qtc_QSound_receivers" qtc_QSound_receivers :: Ptr (TQSound a) -> CWString -> IO CInt

instance Qreceivers (QSoundSc a) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QSound_receivers cobj_x0 cstr_x1

instance Qsender (QSound ()) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSound_sender cobj_x0

foreign import ccall "qtc_QSound_sender" qtc_QSound_sender :: Ptr (TQSound a) -> IO (Ptr (TQObject ()))

instance Qsender (QSoundSc a) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSound_sender cobj_x0

instance QtimerEvent (QSound ()) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSound_timerEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QSound_timerEvent" qtc_QSound_timerEvent :: Ptr (TQSound a) -> Ptr (TQTimerEvent t1) -> IO ()

instance QtimerEvent (QSoundSc a) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSound_timerEvent cobj_x0 cobj_x1

