{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QGraphicsSceneContextMenuEvent.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:24
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QGraphicsSceneContextMenuEvent (
  setReason
  ,qGraphicsSceneContextMenuEvent_delete
  )
  where

import Foreign.C.Types
import Qth.ClassTypes.Core
import Qtc.Enums.Base
import Qtc.Enums.Gui.QGraphicsSceneContextMenuEvent
import Qtc.Enums.Core.Qt
import Qtc.Enums.Core.QEvent

import Qtc.Classes.Base
import Qtc.Classes.Qccs
import Qtc.Classes.Core
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core
import Qtc.Classes.Gui
import Qtc.ClassTypes.Gui

instance Qmodifiers (QGraphicsSceneContextMenuEvent a) (()) where
 modifiers x0 ()
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsSceneContextMenuEvent_modifiers cobj_x0

foreign import ccall "qtc_QGraphicsSceneContextMenuEvent_modifiers" qtc_QGraphicsSceneContextMenuEvent_modifiers :: Ptr (TQGraphicsSceneContextMenuEvent a) -> IO CLong

instance Qpos (QGraphicsSceneContextMenuEvent a) (()) (IO (PointF)) where
 pos x0 ()
  = withPointFResult $ \cpointf_ret_x cpointf_ret_y ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsSceneContextMenuEvent_pos_qth cobj_x0 cpointf_ret_x cpointf_ret_y

foreign import ccall "qtc_QGraphicsSceneContextMenuEvent_pos_qth" qtc_QGraphicsSceneContextMenuEvent_pos_qth :: Ptr (TQGraphicsSceneContextMenuEvent a) -> Ptr CDouble -> Ptr CDouble -> IO ()

instance Qqpos (QGraphicsSceneContextMenuEvent a) (()) (IO (QPointF ())) where
 qpos x0 ()
  = withQPointFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsSceneContextMenuEvent_pos cobj_x0

foreign import ccall "qtc_QGraphicsSceneContextMenuEvent_pos" qtc_QGraphicsSceneContextMenuEvent_pos :: Ptr (TQGraphicsSceneContextMenuEvent a) -> IO (Ptr (TQPointF ()))

instance Qreason (QGraphicsSceneContextMenuEvent a) (()) (IO (QGraphicsSceneContextMenuEventReason)) where
 reason x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsSceneContextMenuEvent_reason cobj_x0

foreign import ccall "qtc_QGraphicsSceneContextMenuEvent_reason" qtc_QGraphicsSceneContextMenuEvent_reason :: Ptr (TQGraphicsSceneContextMenuEvent a) -> IO CLong

instance QscenePos (QGraphicsSceneContextMenuEvent a) (()) where
 scenePos x0 ()
  = withPointFResult $ \cpointf_ret_x cpointf_ret_y ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsSceneContextMenuEvent_scenePos_qth cobj_x0 cpointf_ret_x cpointf_ret_y

foreign import ccall "qtc_QGraphicsSceneContextMenuEvent_scenePos_qth" qtc_QGraphicsSceneContextMenuEvent_scenePos_qth :: Ptr (TQGraphicsSceneContextMenuEvent a) -> Ptr CDouble -> Ptr CDouble -> IO ()

instance QqscenePos (QGraphicsSceneContextMenuEvent a) (()) where
 qscenePos x0 ()
  = withQPointFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsSceneContextMenuEvent_scenePos cobj_x0

foreign import ccall "qtc_QGraphicsSceneContextMenuEvent_scenePos" qtc_QGraphicsSceneContextMenuEvent_scenePos :: Ptr (TQGraphicsSceneContextMenuEvent a) -> IO (Ptr (TQPointF ()))

instance QscreenPos (QGraphicsSceneContextMenuEvent a) (()) where
 screenPos x0 ()
  = withPointResult $ \cpoint_ret_x cpoint_ret_y ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsSceneContextMenuEvent_screenPos_qth cobj_x0 cpoint_ret_x cpoint_ret_y

foreign import ccall "qtc_QGraphicsSceneContextMenuEvent_screenPos_qth" qtc_QGraphicsSceneContextMenuEvent_screenPos_qth :: Ptr (TQGraphicsSceneContextMenuEvent a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QqscreenPos (QGraphicsSceneContextMenuEvent a) (()) where
 qscreenPos x0 ()
  = withQPointResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsSceneContextMenuEvent_screenPos cobj_x0

foreign import ccall "qtc_QGraphicsSceneContextMenuEvent_screenPos" qtc_QGraphicsSceneContextMenuEvent_screenPos :: Ptr (TQGraphicsSceneContextMenuEvent a) -> IO (Ptr (TQPoint ()))

instance QsetModifiers (QGraphicsSceneContextMenuEvent a) ((KeyboardModifiers)) where
 setModifiers x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsSceneContextMenuEvent_setModifiers cobj_x0 (toCLong $ qFlags_toInt x1)

foreign import ccall "qtc_QGraphicsSceneContextMenuEvent_setModifiers" qtc_QGraphicsSceneContextMenuEvent_setModifiers :: Ptr (TQGraphicsSceneContextMenuEvent a) -> CLong -> IO ()

instance QsetPos (QGraphicsSceneContextMenuEvent a) ((PointF)) where
 setPos x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPointF x1 $ \cpointf_x1_x cpointf_x1_y -> 
    qtc_QGraphicsSceneContextMenuEvent_setPos_qth cobj_x0 cpointf_x1_x cpointf_x1_y 

foreign import ccall "qtc_QGraphicsSceneContextMenuEvent_setPos_qth" qtc_QGraphicsSceneContextMenuEvent_setPos_qth :: Ptr (TQGraphicsSceneContextMenuEvent a) -> CDouble -> CDouble -> IO ()

instance QqsetPos (QGraphicsSceneContextMenuEvent a) ((QPointF t1)) where
 qsetPos x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsSceneContextMenuEvent_setPos cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsSceneContextMenuEvent_setPos" qtc_QGraphicsSceneContextMenuEvent_setPos :: Ptr (TQGraphicsSceneContextMenuEvent a) -> Ptr (TQPointF t1) -> IO ()

setReason :: QGraphicsSceneContextMenuEvent a -> ((QGraphicsSceneContextMenuEventReason)) -> IO ()
setReason x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsSceneContextMenuEvent_setReason cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QGraphicsSceneContextMenuEvent_setReason" qtc_QGraphicsSceneContextMenuEvent_setReason :: Ptr (TQGraphicsSceneContextMenuEvent a) -> CLong -> IO ()

instance QsetScenePos (QGraphicsSceneContextMenuEvent a) ((PointF)) where
 setScenePos x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPointF x1 $ \cpointf_x1_x cpointf_x1_y -> 
    qtc_QGraphicsSceneContextMenuEvent_setScenePos_qth cobj_x0 cpointf_x1_x cpointf_x1_y 

foreign import ccall "qtc_QGraphicsSceneContextMenuEvent_setScenePos_qth" qtc_QGraphicsSceneContextMenuEvent_setScenePos_qth :: Ptr (TQGraphicsSceneContextMenuEvent a) -> CDouble -> CDouble -> IO ()

instance QqsetScenePos (QGraphicsSceneContextMenuEvent a) ((QPointF t1)) where
 qsetScenePos x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsSceneContextMenuEvent_setScenePos cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsSceneContextMenuEvent_setScenePos" qtc_QGraphicsSceneContextMenuEvent_setScenePos :: Ptr (TQGraphicsSceneContextMenuEvent a) -> Ptr (TQPointF t1) -> IO ()

instance QsetScreenPos (QGraphicsSceneContextMenuEvent a) ((Point)) where
 setScreenPos x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QGraphicsSceneContextMenuEvent_setScreenPos_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

foreign import ccall "qtc_QGraphicsSceneContextMenuEvent_setScreenPos_qth" qtc_QGraphicsSceneContextMenuEvent_setScreenPos_qth :: Ptr (TQGraphicsSceneContextMenuEvent a) -> CInt -> CInt -> IO ()

instance QqsetScreenPos (QGraphicsSceneContextMenuEvent a) ((QPoint t1)) where
 qsetScreenPos x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsSceneContextMenuEvent_setScreenPos cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsSceneContextMenuEvent_setScreenPos" qtc_QGraphicsSceneContextMenuEvent_setScreenPos :: Ptr (TQGraphicsSceneContextMenuEvent a) -> Ptr (TQPoint t1) -> IO ()

qGraphicsSceneContextMenuEvent_delete :: QGraphicsSceneContextMenuEvent a -> IO ()
qGraphicsSceneContextMenuEvent_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsSceneContextMenuEvent_delete cobj_x0

foreign import ccall "qtc_QGraphicsSceneContextMenuEvent_delete" qtc_QGraphicsSceneContextMenuEvent_delete :: Ptr (TQGraphicsSceneContextMenuEvent a) -> IO ()

