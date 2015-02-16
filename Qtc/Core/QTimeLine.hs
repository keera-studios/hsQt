{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QTimeLine.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:31
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Core.QTimeLine (
  QqTimeLine(..)
  ,currentTime
  ,currentValue
  ,curveShape
  ,duration
  ,endFrame
  ,frameForTime
  ,resume
  ,setCurrentTime
  ,setCurveShape
  ,setDuration
  ,setEndFrame
  ,setFrameRange
  ,setLoopCount
  ,setStartFrame
  ,setUpdateInterval
  ,startFrame
  ,toggleDirection
  ,updateInterval
  ,QvalueForTime(..)
  ,qTimeLine_delete
  ,qTimeLine_deleteLater
  )
  where

import Foreign.C.Types
import Qth.ClassTypes.Core
import Qtc.Enums.Base
import Qtc.Enums.Core.QTimeLine

import Qtc.Classes.Base
import Qtc.Classes.Qccs
import Qtc.Classes.Core
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core

instance QuserMethod (QTimeLine ()) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QTimeLine_userMethod cobj_qobj (toCInt evid)

foreign import ccall "qtc_QTimeLine_userMethod" qtc_QTimeLine_userMethod :: Ptr (TQTimeLine a) -> CInt -> IO ()

instance QuserMethod (QTimeLineSc a) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QTimeLine_userMethod cobj_qobj (toCInt evid)

instance QuserMethod (QTimeLine ()) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QTimeLine_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

foreign import ccall "qtc_QTimeLine_userMethodVariant" qtc_QTimeLine_userMethodVariant :: Ptr (TQTimeLine a) -> CInt -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))

instance QuserMethod (QTimeLineSc a) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QTimeLine_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

class QqTimeLine x1 where
  qTimeLine :: x1 -> IO (QTimeLine ())

instance QqTimeLine (()) where
 qTimeLine ()
  = withQTimeLineResult $
    qtc_QTimeLine

foreign import ccall "qtc_QTimeLine" qtc_QTimeLine :: IO (Ptr (TQTimeLine ()))

instance QqTimeLine ((Int)) where
 qTimeLine (x1)
  = withQTimeLineResult $
    qtc_QTimeLine1 (toCInt x1)

foreign import ccall "qtc_QTimeLine1" qtc_QTimeLine1 :: CInt -> IO (Ptr (TQTimeLine ()))

instance QqTimeLine ((Int, QObject t2)) where
 qTimeLine (x1, x2)
  = withQTimeLineResult $
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QTimeLine2 (toCInt x1) cobj_x2

foreign import ccall "qtc_QTimeLine2" qtc_QTimeLine2 :: CInt -> Ptr (TQObject t2) -> IO (Ptr (TQTimeLine ()))

instance QcurrentFrame (QTimeLine a) (()) (IO (Int)) where
 currentFrame x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTimeLine_currentFrame cobj_x0

foreign import ccall "qtc_QTimeLine_currentFrame" qtc_QTimeLine_currentFrame :: Ptr (TQTimeLine a) -> IO CInt

currentTime :: QTimeLine a -> (()) -> IO (Int)
currentTime x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTimeLine_currentTime cobj_x0

foreign import ccall "qtc_QTimeLine_currentTime" qtc_QTimeLine_currentTime :: Ptr (TQTimeLine a) -> IO CInt

currentValue :: QTimeLine a -> (()) -> IO (Double)
currentValue x0 ()
  = withDoubleResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTimeLine_currentValue cobj_x0

foreign import ccall "qtc_QTimeLine_currentValue" qtc_QTimeLine_currentValue :: Ptr (TQTimeLine a) -> IO CDouble

curveShape :: QTimeLine a -> (()) -> IO (CurveShape)
curveShape x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTimeLine_curveShape cobj_x0

foreign import ccall "qtc_QTimeLine_curveShape" qtc_QTimeLine_curveShape :: Ptr (TQTimeLine a) -> IO CLong

instance Qdirection (QTimeLine a) (()) (IO (QTimeLineDirection)) where
 direction x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTimeLine_direction cobj_x0

foreign import ccall "qtc_QTimeLine_direction" qtc_QTimeLine_direction :: Ptr (TQTimeLine a) -> IO CLong

duration :: QTimeLine a -> (()) -> IO (Int)
duration x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTimeLine_duration cobj_x0

foreign import ccall "qtc_QTimeLine_duration" qtc_QTimeLine_duration :: Ptr (TQTimeLine a) -> IO CInt

endFrame :: QTimeLine a -> (()) -> IO (Int)
endFrame x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTimeLine_endFrame cobj_x0

foreign import ccall "qtc_QTimeLine_endFrame" qtc_QTimeLine_endFrame :: Ptr (TQTimeLine a) -> IO CInt

frameForTime :: QTimeLine a -> ((Int)) -> IO (Int)
frameForTime x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTimeLine_frameForTime cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTimeLine_frameForTime" qtc_QTimeLine_frameForTime :: Ptr (TQTimeLine a) -> CInt -> IO CInt

instance QloopCount (QTimeLine a) (()) where
 loopCount x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTimeLine_loopCount cobj_x0

foreign import ccall "qtc_QTimeLine_loopCount" qtc_QTimeLine_loopCount :: Ptr (TQTimeLine a) -> IO CInt

resume :: QTimeLine a -> (()) -> IO ()
resume x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTimeLine_resume cobj_x0

foreign import ccall "qtc_QTimeLine_resume" qtc_QTimeLine_resume :: Ptr (TQTimeLine a) -> IO ()

setCurrentTime :: QTimeLine a -> ((Int)) -> IO ()
setCurrentTime x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTimeLine_setCurrentTime cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTimeLine_setCurrentTime" qtc_QTimeLine_setCurrentTime :: Ptr (TQTimeLine a) -> CInt -> IO ()

setCurveShape :: QTimeLine a -> ((CurveShape)) -> IO ()
setCurveShape x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTimeLine_setCurveShape cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QTimeLine_setCurveShape" qtc_QTimeLine_setCurveShape :: Ptr (TQTimeLine a) -> CLong -> IO ()

instance QsetDirection (QTimeLine a) ((QTimeLineDirection)) where
 setDirection x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTimeLine_setDirection cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QTimeLine_setDirection" qtc_QTimeLine_setDirection :: Ptr (TQTimeLine a) -> CLong -> IO ()

setDuration :: QTimeLine a -> ((Int)) -> IO ()
setDuration x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTimeLine_setDuration cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTimeLine_setDuration" qtc_QTimeLine_setDuration :: Ptr (TQTimeLine a) -> CInt -> IO ()

setEndFrame :: QTimeLine a -> ((Int)) -> IO ()
setEndFrame x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTimeLine_setEndFrame cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTimeLine_setEndFrame" qtc_QTimeLine_setEndFrame :: Ptr (TQTimeLine a) -> CInt -> IO ()

setFrameRange :: QTimeLine a -> ((Int, Int)) -> IO ()
setFrameRange x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTimeLine_setFrameRange cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QTimeLine_setFrameRange" qtc_QTimeLine_setFrameRange :: Ptr (TQTimeLine a) -> CInt -> CInt -> IO ()

setLoopCount :: QTimeLine a -> ((Int)) -> IO ()
setLoopCount x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTimeLine_setLoopCount cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTimeLine_setLoopCount" qtc_QTimeLine_setLoopCount :: Ptr (TQTimeLine a) -> CInt -> IO ()

instance QsetPaused (QTimeLine a) ((Bool)) where
 setPaused x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTimeLine_setPaused cobj_x0 (toCBool x1)

foreign import ccall "qtc_QTimeLine_setPaused" qtc_QTimeLine_setPaused :: Ptr (TQTimeLine a) -> CBool -> IO ()

setStartFrame :: QTimeLine a -> ((Int)) -> IO ()
setStartFrame x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTimeLine_setStartFrame cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTimeLine_setStartFrame" qtc_QTimeLine_setStartFrame :: Ptr (TQTimeLine a) -> CInt -> IO ()

setUpdateInterval :: QTimeLine a -> ((Int)) -> IO ()
setUpdateInterval x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTimeLine_setUpdateInterval cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTimeLine_setUpdateInterval" qtc_QTimeLine_setUpdateInterval :: Ptr (TQTimeLine a) -> CInt -> IO ()

instance Qstart (QTimeLine a) (()) (IO ()) where
 start x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTimeLine_start cobj_x0

foreign import ccall "qtc_QTimeLine_start" qtc_QTimeLine_start :: Ptr (TQTimeLine a) -> IO ()

startFrame :: QTimeLine a -> (()) -> IO (Int)
startFrame x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTimeLine_startFrame cobj_x0

foreign import ccall "qtc_QTimeLine_startFrame" qtc_QTimeLine_startFrame :: Ptr (TQTimeLine a) -> IO CInt

instance Qstate (QTimeLine a) (()) (IO (QTimeLineState)) where
 state x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTimeLine_state cobj_x0

foreign import ccall "qtc_QTimeLine_state" qtc_QTimeLine_state :: Ptr (TQTimeLine a) -> IO CLong

instance Qstop (QTimeLine a) (()) where
 stop x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTimeLine_stop cobj_x0

foreign import ccall "qtc_QTimeLine_stop" qtc_QTimeLine_stop :: Ptr (TQTimeLine a) -> IO ()

instance QtimerEvent (QTimeLine ()) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTimeLine_timerEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTimeLine_timerEvent" qtc_QTimeLine_timerEvent :: Ptr (TQTimeLine a) -> Ptr (TQTimerEvent t1) -> IO ()

instance QtimerEvent (QTimeLineSc a) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTimeLine_timerEvent cobj_x0 cobj_x1

toggleDirection :: QTimeLine a -> (()) -> IO ()
toggleDirection x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTimeLine_toggleDirection cobj_x0

foreign import ccall "qtc_QTimeLine_toggleDirection" qtc_QTimeLine_toggleDirection :: Ptr (TQTimeLine a) -> IO ()

updateInterval :: QTimeLine a -> (()) -> IO (Int)
updateInterval x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTimeLine_updateInterval cobj_x0

foreign import ccall "qtc_QTimeLine_updateInterval" qtc_QTimeLine_updateInterval :: Ptr (TQTimeLine a) -> IO CInt

class QvalueForTime x0 x1 where
 valueForTime :: x0 -> x1 -> IO (Double)

instance QvalueForTime (QTimeLine ()) ((Int)) where
 valueForTime x0 (x1)
  = withDoubleResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTimeLine_valueForTime_h cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTimeLine_valueForTime_h" qtc_QTimeLine_valueForTime_h :: Ptr (TQTimeLine a) -> CInt -> IO CDouble

instance QvalueForTime (QTimeLineSc a) ((Int)) where
 valueForTime x0 (x1)
  = withDoubleResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTimeLine_valueForTime_h cobj_x0 (toCInt x1)

qTimeLine_delete :: QTimeLine a -> IO ()
qTimeLine_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTimeLine_delete cobj_x0

foreign import ccall "qtc_QTimeLine_delete" qtc_QTimeLine_delete :: Ptr (TQTimeLine a) -> IO ()

qTimeLine_deleteLater :: QTimeLine a -> IO ()
qTimeLine_deleteLater x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTimeLine_deleteLater cobj_x0

foreign import ccall "qtc_QTimeLine_deleteLater" qtc_QTimeLine_deleteLater :: Ptr (TQTimeLine a) -> IO ()

instance QchildEvent (QTimeLine ()) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTimeLine_childEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTimeLine_childEvent" qtc_QTimeLine_childEvent :: Ptr (TQTimeLine a) -> Ptr (TQChildEvent t1) -> IO ()

instance QchildEvent (QTimeLineSc a) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTimeLine_childEvent cobj_x0 cobj_x1

instance QconnectNotify (QTimeLine ()) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTimeLine_connectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QTimeLine_connectNotify" qtc_QTimeLine_connectNotify :: Ptr (TQTimeLine a) -> CWString -> IO ()

instance QconnectNotify (QTimeLineSc a) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTimeLine_connectNotify cobj_x0 cstr_x1

instance QcustomEvent (QTimeLine ()) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTimeLine_customEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTimeLine_customEvent" qtc_QTimeLine_customEvent :: Ptr (TQTimeLine a) -> Ptr (TQEvent t1) -> IO ()

instance QcustomEvent (QTimeLineSc a) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTimeLine_customEvent cobj_x0 cobj_x1

instance QdisconnectNotify (QTimeLine ()) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTimeLine_disconnectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QTimeLine_disconnectNotify" qtc_QTimeLine_disconnectNotify :: Ptr (TQTimeLine a) -> CWString -> IO ()

instance QdisconnectNotify (QTimeLineSc a) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTimeLine_disconnectNotify cobj_x0 cstr_x1

instance Qevent (QTimeLine ()) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTimeLine_event_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTimeLine_event_h" qtc_QTimeLine_event_h :: Ptr (TQTimeLine a) -> Ptr (TQEvent t1) -> IO CBool

instance Qevent (QTimeLineSc a) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTimeLine_event_h cobj_x0 cobj_x1

instance QeventFilter (QTimeLine ()) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QTimeLine_eventFilter_h cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QTimeLine_eventFilter_h" qtc_QTimeLine_eventFilter_h :: Ptr (TQTimeLine a) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO CBool

instance QeventFilter (QTimeLineSc a) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QTimeLine_eventFilter_h cobj_x0 cobj_x1 cobj_x2

instance Qreceivers (QTimeLine ()) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTimeLine_receivers cobj_x0 cstr_x1

foreign import ccall "qtc_QTimeLine_receivers" qtc_QTimeLine_receivers :: Ptr (TQTimeLine a) -> CWString -> IO CInt

instance Qreceivers (QTimeLineSc a) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTimeLine_receivers cobj_x0 cstr_x1

instance Qsender (QTimeLine ()) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTimeLine_sender cobj_x0

foreign import ccall "qtc_QTimeLine_sender" qtc_QTimeLine_sender :: Ptr (TQTimeLine a) -> IO (Ptr (TQObject ()))

instance Qsender (QTimeLineSc a) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTimeLine_sender cobj_x0

