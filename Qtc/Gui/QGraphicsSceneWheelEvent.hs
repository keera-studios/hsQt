{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QGraphicsSceneWheelEvent.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:24
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QGraphicsSceneWheelEvent (
  setDelta
  ,qGraphicsSceneWheelEvent_delete
  )
  where

import Foreign.C.Types
import Qth.ClassTypes.Core
import Qtc.Enums.Base
import Qtc.Enums.Core.Qt
import Qtc.Enums.Core.QEvent

import Qtc.Classes.Base
import Qtc.Classes.Qccs
import Qtc.Classes.Core
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core
import Qtc.Classes.Gui
import Qtc.ClassTypes.Gui

instance Qbuttons (QGraphicsSceneWheelEvent a) (()) (IO (MouseButtons)) where
 buttons x0 ()
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsSceneWheelEvent_buttons cobj_x0

foreign import ccall "qtc_QGraphicsSceneWheelEvent_buttons" qtc_QGraphicsSceneWheelEvent_buttons :: Ptr (TQGraphicsSceneWheelEvent a) -> IO CLong

instance Qdelta (QGraphicsSceneWheelEvent a) (()) where
 delta x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsSceneWheelEvent_delta cobj_x0

foreign import ccall "qtc_QGraphicsSceneWheelEvent_delta" qtc_QGraphicsSceneWheelEvent_delta :: Ptr (TQGraphicsSceneWheelEvent a) -> IO CInt

instance Qmodifiers (QGraphicsSceneWheelEvent a) (()) where
 modifiers x0 ()
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsSceneWheelEvent_modifiers cobj_x0

foreign import ccall "qtc_QGraphicsSceneWheelEvent_modifiers" qtc_QGraphicsSceneWheelEvent_modifiers :: Ptr (TQGraphicsSceneWheelEvent a) -> IO CLong

instance Qorientation (QGraphicsSceneWheelEvent a) (()) (IO (QtOrientation)) where
 orientation x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsSceneWheelEvent_orientation cobj_x0

foreign import ccall "qtc_QGraphicsSceneWheelEvent_orientation" qtc_QGraphicsSceneWheelEvent_orientation :: Ptr (TQGraphicsSceneWheelEvent a) -> IO CLong

instance Qpos (QGraphicsSceneWheelEvent a) (()) (IO (PointF)) where
 pos x0 ()
  = withPointFResult $ \cpointf_ret_x cpointf_ret_y ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsSceneWheelEvent_pos_qth cobj_x0 cpointf_ret_x cpointf_ret_y

foreign import ccall "qtc_QGraphicsSceneWheelEvent_pos_qth" qtc_QGraphicsSceneWheelEvent_pos_qth :: Ptr (TQGraphicsSceneWheelEvent a) -> Ptr CDouble -> Ptr CDouble -> IO ()

instance Qqpos (QGraphicsSceneWheelEvent a) (()) (IO (QPointF ())) where
 qpos x0 ()
  = withQPointFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsSceneWheelEvent_pos cobj_x0

foreign import ccall "qtc_QGraphicsSceneWheelEvent_pos" qtc_QGraphicsSceneWheelEvent_pos :: Ptr (TQGraphicsSceneWheelEvent a) -> IO (Ptr (TQPointF ()))

instance QscenePos (QGraphicsSceneWheelEvent a) (()) where
 scenePos x0 ()
  = withPointFResult $ \cpointf_ret_x cpointf_ret_y ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsSceneWheelEvent_scenePos_qth cobj_x0 cpointf_ret_x cpointf_ret_y

foreign import ccall "qtc_QGraphicsSceneWheelEvent_scenePos_qth" qtc_QGraphicsSceneWheelEvent_scenePos_qth :: Ptr (TQGraphicsSceneWheelEvent a) -> Ptr CDouble -> Ptr CDouble -> IO ()

instance QqscenePos (QGraphicsSceneWheelEvent a) (()) where
 qscenePos x0 ()
  = withQPointFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsSceneWheelEvent_scenePos cobj_x0

foreign import ccall "qtc_QGraphicsSceneWheelEvent_scenePos" qtc_QGraphicsSceneWheelEvent_scenePos :: Ptr (TQGraphicsSceneWheelEvent a) -> IO (Ptr (TQPointF ()))

instance QscreenPos (QGraphicsSceneWheelEvent a) (()) where
 screenPos x0 ()
  = withPointResult $ \cpoint_ret_x cpoint_ret_y ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsSceneWheelEvent_screenPos_qth cobj_x0 cpoint_ret_x cpoint_ret_y

foreign import ccall "qtc_QGraphicsSceneWheelEvent_screenPos_qth" qtc_QGraphicsSceneWheelEvent_screenPos_qth :: Ptr (TQGraphicsSceneWheelEvent a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QqscreenPos (QGraphicsSceneWheelEvent a) (()) where
 qscreenPos x0 ()
  = withQPointResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsSceneWheelEvent_screenPos cobj_x0

foreign import ccall "qtc_QGraphicsSceneWheelEvent_screenPos" qtc_QGraphicsSceneWheelEvent_screenPos :: Ptr (TQGraphicsSceneWheelEvent a) -> IO (Ptr (TQPoint ()))

instance QsetButtons (QGraphicsSceneWheelEvent a) ((MouseButtons)) where
 setButtons x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsSceneWheelEvent_setButtons cobj_x0 (toCLong $ qFlags_toInt x1)

foreign import ccall "qtc_QGraphicsSceneWheelEvent_setButtons" qtc_QGraphicsSceneWheelEvent_setButtons :: Ptr (TQGraphicsSceneWheelEvent a) -> CLong -> IO ()

setDelta :: QGraphicsSceneWheelEvent a -> ((Int)) -> IO ()
setDelta x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsSceneWheelEvent_setDelta cobj_x0 (toCInt x1)

foreign import ccall "qtc_QGraphicsSceneWheelEvent_setDelta" qtc_QGraphicsSceneWheelEvent_setDelta :: Ptr (TQGraphicsSceneWheelEvent a) -> CInt -> IO ()

instance QsetModifiers (QGraphicsSceneWheelEvent a) ((KeyboardModifiers)) where
 setModifiers x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsSceneWheelEvent_setModifiers cobj_x0 (toCLong $ qFlags_toInt x1)

foreign import ccall "qtc_QGraphicsSceneWheelEvent_setModifiers" qtc_QGraphicsSceneWheelEvent_setModifiers :: Ptr (TQGraphicsSceneWheelEvent a) -> CLong -> IO ()

instance QsetOrientation (QGraphicsSceneWheelEvent a) ((QtOrientation)) where
 setOrientation x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsSceneWheelEvent_setOrientation cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QGraphicsSceneWheelEvent_setOrientation" qtc_QGraphicsSceneWheelEvent_setOrientation :: Ptr (TQGraphicsSceneWheelEvent a) -> CLong -> IO ()

instance QsetPos (QGraphicsSceneWheelEvent a) ((PointF)) where
 setPos x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPointF x1 $ \cpointf_x1_x cpointf_x1_y -> 
    qtc_QGraphicsSceneWheelEvent_setPos_qth cobj_x0 cpointf_x1_x cpointf_x1_y 

foreign import ccall "qtc_QGraphicsSceneWheelEvent_setPos_qth" qtc_QGraphicsSceneWheelEvent_setPos_qth :: Ptr (TQGraphicsSceneWheelEvent a) -> CDouble -> CDouble -> IO ()

instance QqsetPos (QGraphicsSceneWheelEvent a) ((QPointF t1)) where
 qsetPos x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsSceneWheelEvent_setPos cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsSceneWheelEvent_setPos" qtc_QGraphicsSceneWheelEvent_setPos :: Ptr (TQGraphicsSceneWheelEvent a) -> Ptr (TQPointF t1) -> IO ()

instance QsetScenePos (QGraphicsSceneWheelEvent a) ((PointF)) where
 setScenePos x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPointF x1 $ \cpointf_x1_x cpointf_x1_y -> 
    qtc_QGraphicsSceneWheelEvent_setScenePos_qth cobj_x0 cpointf_x1_x cpointf_x1_y 

foreign import ccall "qtc_QGraphicsSceneWheelEvent_setScenePos_qth" qtc_QGraphicsSceneWheelEvent_setScenePos_qth :: Ptr (TQGraphicsSceneWheelEvent a) -> CDouble -> CDouble -> IO ()

instance QqsetScenePos (QGraphicsSceneWheelEvent a) ((QPointF t1)) where
 qsetScenePos x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsSceneWheelEvent_setScenePos cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsSceneWheelEvent_setScenePos" qtc_QGraphicsSceneWheelEvent_setScenePos :: Ptr (TQGraphicsSceneWheelEvent a) -> Ptr (TQPointF t1) -> IO ()

instance QsetScreenPos (QGraphicsSceneWheelEvent a) ((Point)) where
 setScreenPos x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QGraphicsSceneWheelEvent_setScreenPos_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

foreign import ccall "qtc_QGraphicsSceneWheelEvent_setScreenPos_qth" qtc_QGraphicsSceneWheelEvent_setScreenPos_qth :: Ptr (TQGraphicsSceneWheelEvent a) -> CInt -> CInt -> IO ()

instance QqsetScreenPos (QGraphicsSceneWheelEvent a) ((QPoint t1)) where
 qsetScreenPos x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsSceneWheelEvent_setScreenPos cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsSceneWheelEvent_setScreenPos" qtc_QGraphicsSceneWheelEvent_setScreenPos :: Ptr (TQGraphicsSceneWheelEvent a) -> Ptr (TQPoint t1) -> IO ()

qGraphicsSceneWheelEvent_delete :: QGraphicsSceneWheelEvent a -> IO ()
qGraphicsSceneWheelEvent_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsSceneWheelEvent_delete cobj_x0

foreign import ccall "qtc_QGraphicsSceneWheelEvent_delete" qtc_QGraphicsSceneWheelEvent_delete :: Ptr (TQGraphicsSceneWheelEvent a) -> IO ()

