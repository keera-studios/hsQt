{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QGraphicsItemAnimation.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:16
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QGraphicsItemAnimation (
  QqGraphicsItemAnimation(..)
  ,QafterAnimationStep(..)
  ,QbeforeAnimationStep(..)
  ,horizontalScaleAt
  ,horizontalShearAt
  ,matrixAt
  ,posAt, qposAt
  ,rotationAt
  ,setPosAt, qsetPosAt
  ,setRotationAt
  ,setScaleAt
  ,setShearAt
  ,setStep
  ,setTimeLine
  ,setTranslationAt
  ,timeLine
  ,verticalScaleAt
  ,verticalShearAt
  ,xTranslationAt
  ,yTranslationAt
  ,qGraphicsItemAnimation_delete
  ,qGraphicsItemAnimation_deleteLater
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

instance QuserMethod (QGraphicsItemAnimation ()) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QGraphicsItemAnimation_userMethod cobj_qobj (toCInt evid)

foreign import ccall "qtc_QGraphicsItemAnimation_userMethod" qtc_QGraphicsItemAnimation_userMethod :: Ptr (TQGraphicsItemAnimation a) -> CInt -> IO ()

instance QuserMethod (QGraphicsItemAnimationSc a) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QGraphicsItemAnimation_userMethod cobj_qobj (toCInt evid)

instance QuserMethod (QGraphicsItemAnimation ()) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QGraphicsItemAnimation_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

foreign import ccall "qtc_QGraphicsItemAnimation_userMethodVariant" qtc_QGraphicsItemAnimation_userMethodVariant :: Ptr (TQGraphicsItemAnimation a) -> CInt -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))

instance QuserMethod (QGraphicsItemAnimationSc a) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QGraphicsItemAnimation_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

class QqGraphicsItemAnimation x1 where
  qGraphicsItemAnimation :: x1 -> IO (QGraphicsItemAnimation ())

instance QqGraphicsItemAnimation (()) where
 qGraphicsItemAnimation ()
  = withQGraphicsItemAnimationResult $
    qtc_QGraphicsItemAnimation

foreign import ccall "qtc_QGraphicsItemAnimation" qtc_QGraphicsItemAnimation :: IO (Ptr (TQGraphicsItemAnimation ()))

instance QqGraphicsItemAnimation ((QObject t1)) where
 qGraphicsItemAnimation (x1)
  = withQGraphicsItemAnimationResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItemAnimation1 cobj_x1

foreign import ccall "qtc_QGraphicsItemAnimation1" qtc_QGraphicsItemAnimation1 :: Ptr (TQObject t1) -> IO (Ptr (TQGraphicsItemAnimation ()))

class QafterAnimationStep x0 x1 where
 afterAnimationStep :: x0 -> x1 -> IO ()

instance QafterAnimationStep (QGraphicsItemAnimation ()) ((Double)) where
 afterAnimationStep x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItemAnimation_afterAnimationStep_h cobj_x0 (toCDouble x1)

foreign import ccall "qtc_QGraphicsItemAnimation_afterAnimationStep_h" qtc_QGraphicsItemAnimation_afterAnimationStep_h :: Ptr (TQGraphicsItemAnimation a) -> CDouble -> IO ()

instance QafterAnimationStep (QGraphicsItemAnimationSc a) ((Double)) where
 afterAnimationStep x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItemAnimation_afterAnimationStep_h cobj_x0 (toCDouble x1)

class QbeforeAnimationStep x0 x1 where
 beforeAnimationStep :: x0 -> x1 -> IO ()

instance QbeforeAnimationStep (QGraphicsItemAnimation ()) ((Double)) where
 beforeAnimationStep x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItemAnimation_beforeAnimationStep_h cobj_x0 (toCDouble x1)

foreign import ccall "qtc_QGraphicsItemAnimation_beforeAnimationStep_h" qtc_QGraphicsItemAnimation_beforeAnimationStep_h :: Ptr (TQGraphicsItemAnimation a) -> CDouble -> IO ()

instance QbeforeAnimationStep (QGraphicsItemAnimationSc a) ((Double)) where
 beforeAnimationStep x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItemAnimation_beforeAnimationStep_h cobj_x0 (toCDouble x1)

instance Qclear (QGraphicsItemAnimation a) (()) where
 clear x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItemAnimation_clear cobj_x0

foreign import ccall "qtc_QGraphicsItemAnimation_clear" qtc_QGraphicsItemAnimation_clear :: Ptr (TQGraphicsItemAnimation a) -> IO ()

horizontalScaleAt :: QGraphicsItemAnimation a -> ((Double)) -> IO (Double)
horizontalScaleAt x0 (x1)
  = withDoubleResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItemAnimation_horizontalScaleAt cobj_x0 (toCDouble x1)

foreign import ccall "qtc_QGraphicsItemAnimation_horizontalScaleAt" qtc_QGraphicsItemAnimation_horizontalScaleAt :: Ptr (TQGraphicsItemAnimation a) -> CDouble -> IO CDouble

horizontalShearAt :: QGraphicsItemAnimation a -> ((Double)) -> IO (Double)
horizontalShearAt x0 (x1)
  = withDoubleResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItemAnimation_horizontalShearAt cobj_x0 (toCDouble x1)

foreign import ccall "qtc_QGraphicsItemAnimation_horizontalShearAt" qtc_QGraphicsItemAnimation_horizontalShearAt :: Ptr (TQGraphicsItemAnimation a) -> CDouble -> IO CDouble

instance Qitem (QGraphicsItemAnimation a) (()) (IO (QGraphicsItem ())) where
 item x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItemAnimation_item cobj_x0

foreign import ccall "qtc_QGraphicsItemAnimation_item" qtc_QGraphicsItemAnimation_item :: Ptr (TQGraphicsItemAnimation a) -> IO (Ptr (TQGraphicsItem ()))

matrixAt :: QGraphicsItemAnimation a -> ((Double)) -> IO (QMatrix ())
matrixAt x0 (x1)
  = withQMatrixResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItemAnimation_matrixAt cobj_x0 (toCDouble x1)

foreign import ccall "qtc_QGraphicsItemAnimation_matrixAt" qtc_QGraphicsItemAnimation_matrixAt :: Ptr (TQGraphicsItemAnimation a) -> CDouble -> IO (Ptr (TQMatrix ()))

posAt :: QGraphicsItemAnimation a -> ((Double)) -> IO (PointF)
posAt x0 (x1)
  = withPointFResult $ \cpointf_ret_x cpointf_ret_y ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItemAnimation_posAt_qth cobj_x0 (toCDouble x1) cpointf_ret_x cpointf_ret_y

foreign import ccall "qtc_QGraphicsItemAnimation_posAt_qth" qtc_QGraphicsItemAnimation_posAt_qth :: Ptr (TQGraphicsItemAnimation a) -> CDouble -> Ptr CDouble -> Ptr CDouble -> IO ()

qposAt :: QGraphicsItemAnimation a -> ((Double)) -> IO (QPointF ())
qposAt x0 (x1)
  = withQPointFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItemAnimation_posAt cobj_x0 (toCDouble x1)

foreign import ccall "qtc_QGraphicsItemAnimation_posAt" qtc_QGraphicsItemAnimation_posAt :: Ptr (TQGraphicsItemAnimation a) -> CDouble -> IO (Ptr (TQPointF ()))

instance Qreset (QGraphicsItemAnimation a) (()) (IO ()) where
 reset x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItemAnimation_reset cobj_x0

foreign import ccall "qtc_QGraphicsItemAnimation_reset" qtc_QGraphicsItemAnimation_reset :: Ptr (TQGraphicsItemAnimation a) -> IO ()

rotationAt :: QGraphicsItemAnimation a -> ((Double)) -> IO (Double)
rotationAt x0 (x1)
  = withDoubleResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItemAnimation_rotationAt cobj_x0 (toCDouble x1)

foreign import ccall "qtc_QGraphicsItemAnimation_rotationAt" qtc_QGraphicsItemAnimation_rotationAt :: Ptr (TQGraphicsItemAnimation a) -> CDouble -> IO CDouble

instance QsetItem (QGraphicsItemAnimation a) ((QGraphicsItem t1)) where
 setItem x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItemAnimation_setItem cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsItemAnimation_setItem" qtc_QGraphicsItemAnimation_setItem :: Ptr (TQGraphicsItemAnimation a) -> Ptr (TQGraphicsItem t1) -> IO ()

instance QsetItem (QGraphicsItemAnimation a) ((QGraphicsTextItem t1)) where
 setItem x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItemAnimation_setItem_graphicstextitem cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsItemAnimation_setItem_graphicstextitem" qtc_QGraphicsItemAnimation_setItem_graphicstextitem :: Ptr (TQGraphicsItemAnimation a) -> Ptr (TQGraphicsTextItem t1) -> IO ()

setPosAt :: QGraphicsItemAnimation a -> ((Double, PointF)) -> IO ()
setPosAt x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPointF x2 $ \cpointf_x2_x cpointf_x2_y -> 
    qtc_QGraphicsItemAnimation_setPosAt_qth cobj_x0 (toCDouble x1) cpointf_x2_x cpointf_x2_y 

foreign import ccall "qtc_QGraphicsItemAnimation_setPosAt_qth" qtc_QGraphicsItemAnimation_setPosAt_qth :: Ptr (TQGraphicsItemAnimation a) -> CDouble -> CDouble -> CDouble -> IO ()

qsetPosAt :: QGraphicsItemAnimation a -> ((Double, QPointF t2)) -> IO ()
qsetPosAt x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsItemAnimation_setPosAt cobj_x0 (toCDouble x1) cobj_x2

foreign import ccall "qtc_QGraphicsItemAnimation_setPosAt" qtc_QGraphicsItemAnimation_setPosAt :: Ptr (TQGraphicsItemAnimation a) -> CDouble -> Ptr (TQPointF t2) -> IO ()

setRotationAt :: QGraphicsItemAnimation a -> ((Double, Double)) -> IO ()
setRotationAt x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItemAnimation_setRotationAt cobj_x0 (toCDouble x1) (toCDouble x2)

foreign import ccall "qtc_QGraphicsItemAnimation_setRotationAt" qtc_QGraphicsItemAnimation_setRotationAt :: Ptr (TQGraphicsItemAnimation a) -> CDouble -> CDouble -> IO ()

setScaleAt :: QGraphicsItemAnimation a -> ((Double, Double, Double)) -> IO ()
setScaleAt x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItemAnimation_setScaleAt cobj_x0 (toCDouble x1) (toCDouble x2) (toCDouble x3)

foreign import ccall "qtc_QGraphicsItemAnimation_setScaleAt" qtc_QGraphicsItemAnimation_setScaleAt :: Ptr (TQGraphicsItemAnimation a) -> CDouble -> CDouble -> CDouble -> IO ()

setShearAt :: QGraphicsItemAnimation a -> ((Double, Double, Double)) -> IO ()
setShearAt x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItemAnimation_setShearAt cobj_x0 (toCDouble x1) (toCDouble x2) (toCDouble x3)

foreign import ccall "qtc_QGraphicsItemAnimation_setShearAt" qtc_QGraphicsItemAnimation_setShearAt :: Ptr (TQGraphicsItemAnimation a) -> CDouble -> CDouble -> CDouble -> IO ()

setStep :: QGraphicsItemAnimation a -> ((Double)) -> IO ()
setStep x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItemAnimation_setStep cobj_x0 (toCDouble x1)

foreign import ccall "qtc_QGraphicsItemAnimation_setStep" qtc_QGraphicsItemAnimation_setStep :: Ptr (TQGraphicsItemAnimation a) -> CDouble -> IO ()

setTimeLine :: QGraphicsItemAnimation a -> ((QTimeLine t1)) -> IO ()
setTimeLine x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItemAnimation_setTimeLine cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsItemAnimation_setTimeLine" qtc_QGraphicsItemAnimation_setTimeLine :: Ptr (TQGraphicsItemAnimation a) -> Ptr (TQTimeLine t1) -> IO ()

setTranslationAt :: QGraphicsItemAnimation a -> ((Double, Double, Double)) -> IO ()
setTranslationAt x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItemAnimation_setTranslationAt cobj_x0 (toCDouble x1) (toCDouble x2) (toCDouble x3)

foreign import ccall "qtc_QGraphicsItemAnimation_setTranslationAt" qtc_QGraphicsItemAnimation_setTranslationAt :: Ptr (TQGraphicsItemAnimation a) -> CDouble -> CDouble -> CDouble -> IO ()

timeLine :: QGraphicsItemAnimation a -> (()) -> IO (QTimeLine ())
timeLine x0 ()
  = withQTimeLineResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItemAnimation_timeLine cobj_x0

foreign import ccall "qtc_QGraphicsItemAnimation_timeLine" qtc_QGraphicsItemAnimation_timeLine :: Ptr (TQGraphicsItemAnimation a) -> IO (Ptr (TQTimeLine ()))

verticalScaleAt :: QGraphicsItemAnimation a -> ((Double)) -> IO (Double)
verticalScaleAt x0 (x1)
  = withDoubleResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItemAnimation_verticalScaleAt cobj_x0 (toCDouble x1)

foreign import ccall "qtc_QGraphicsItemAnimation_verticalScaleAt" qtc_QGraphicsItemAnimation_verticalScaleAt :: Ptr (TQGraphicsItemAnimation a) -> CDouble -> IO CDouble

verticalShearAt :: QGraphicsItemAnimation a -> ((Double)) -> IO (Double)
verticalShearAt x0 (x1)
  = withDoubleResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItemAnimation_verticalShearAt cobj_x0 (toCDouble x1)

foreign import ccall "qtc_QGraphicsItemAnimation_verticalShearAt" qtc_QGraphicsItemAnimation_verticalShearAt :: Ptr (TQGraphicsItemAnimation a) -> CDouble -> IO CDouble

xTranslationAt :: QGraphicsItemAnimation a -> ((Double)) -> IO (Double)
xTranslationAt x0 (x1)
  = withDoubleResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItemAnimation_xTranslationAt cobj_x0 (toCDouble x1)

foreign import ccall "qtc_QGraphicsItemAnimation_xTranslationAt" qtc_QGraphicsItemAnimation_xTranslationAt :: Ptr (TQGraphicsItemAnimation a) -> CDouble -> IO CDouble

yTranslationAt :: QGraphicsItemAnimation a -> ((Double)) -> IO (Double)
yTranslationAt x0 (x1)
  = withDoubleResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItemAnimation_yTranslationAt cobj_x0 (toCDouble x1)

foreign import ccall "qtc_QGraphicsItemAnimation_yTranslationAt" qtc_QGraphicsItemAnimation_yTranslationAt :: Ptr (TQGraphicsItemAnimation a) -> CDouble -> IO CDouble

qGraphicsItemAnimation_delete :: QGraphicsItemAnimation a -> IO ()
qGraphicsItemAnimation_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItemAnimation_delete cobj_x0

foreign import ccall "qtc_QGraphicsItemAnimation_delete" qtc_QGraphicsItemAnimation_delete :: Ptr (TQGraphicsItemAnimation a) -> IO ()

qGraphicsItemAnimation_deleteLater :: QGraphicsItemAnimation a -> IO ()
qGraphicsItemAnimation_deleteLater x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItemAnimation_deleteLater cobj_x0

foreign import ccall "qtc_QGraphicsItemAnimation_deleteLater" qtc_QGraphicsItemAnimation_deleteLater :: Ptr (TQGraphicsItemAnimation a) -> IO ()

instance QchildEvent (QGraphicsItemAnimation ()) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItemAnimation_childEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsItemAnimation_childEvent" qtc_QGraphicsItemAnimation_childEvent :: Ptr (TQGraphicsItemAnimation a) -> Ptr (TQChildEvent t1) -> IO ()

instance QchildEvent (QGraphicsItemAnimationSc a) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItemAnimation_childEvent cobj_x0 cobj_x1

instance QconnectNotify (QGraphicsItemAnimation ()) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QGraphicsItemAnimation_connectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QGraphicsItemAnimation_connectNotify" qtc_QGraphicsItemAnimation_connectNotify :: Ptr (TQGraphicsItemAnimation a) -> CWString -> IO ()

instance QconnectNotify (QGraphicsItemAnimationSc a) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QGraphicsItemAnimation_connectNotify cobj_x0 cstr_x1

instance QcustomEvent (QGraphicsItemAnimation ()) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItemAnimation_customEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsItemAnimation_customEvent" qtc_QGraphicsItemAnimation_customEvent :: Ptr (TQGraphicsItemAnimation a) -> Ptr (TQEvent t1) -> IO ()

instance QcustomEvent (QGraphicsItemAnimationSc a) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItemAnimation_customEvent cobj_x0 cobj_x1

instance QdisconnectNotify (QGraphicsItemAnimation ()) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QGraphicsItemAnimation_disconnectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QGraphicsItemAnimation_disconnectNotify" qtc_QGraphicsItemAnimation_disconnectNotify :: Ptr (TQGraphicsItemAnimation a) -> CWString -> IO ()

instance QdisconnectNotify (QGraphicsItemAnimationSc a) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QGraphicsItemAnimation_disconnectNotify cobj_x0 cstr_x1

instance Qevent (QGraphicsItemAnimation ()) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItemAnimation_event_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsItemAnimation_event_h" qtc_QGraphicsItemAnimation_event_h :: Ptr (TQGraphicsItemAnimation a) -> Ptr (TQEvent t1) -> IO CBool

instance Qevent (QGraphicsItemAnimationSc a) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItemAnimation_event_h cobj_x0 cobj_x1

instance QeventFilter (QGraphicsItemAnimation ()) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsItemAnimation_eventFilter_h cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QGraphicsItemAnimation_eventFilter_h" qtc_QGraphicsItemAnimation_eventFilter_h :: Ptr (TQGraphicsItemAnimation a) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO CBool

instance QeventFilter (QGraphicsItemAnimationSc a) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsItemAnimation_eventFilter_h cobj_x0 cobj_x1 cobj_x2

instance Qreceivers (QGraphicsItemAnimation ()) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QGraphicsItemAnimation_receivers cobj_x0 cstr_x1

foreign import ccall "qtc_QGraphicsItemAnimation_receivers" qtc_QGraphicsItemAnimation_receivers :: Ptr (TQGraphicsItemAnimation a) -> CWString -> IO CInt

instance Qreceivers (QGraphicsItemAnimationSc a) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QGraphicsItemAnimation_receivers cobj_x0 cstr_x1

instance Qsender (QGraphicsItemAnimation ()) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItemAnimation_sender cobj_x0

foreign import ccall "qtc_QGraphicsItemAnimation_sender" qtc_QGraphicsItemAnimation_sender :: Ptr (TQGraphicsItemAnimation a) -> IO (Ptr (TQObject ()))

instance Qsender (QGraphicsItemAnimationSc a) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItemAnimation_sender cobj_x0

instance QtimerEvent (QGraphicsItemAnimation ()) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItemAnimation_timerEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsItemAnimation_timerEvent" qtc_QGraphicsItemAnimation_timerEvent :: Ptr (TQGraphicsItemAnimation a) -> Ptr (TQTimerEvent t1) -> IO ()

instance QtimerEvent (QGraphicsItemAnimationSc a) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItemAnimation_timerEvent cobj_x0 cobj_x1

