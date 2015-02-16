{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QGraphicsSceneHoverEvent.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:27
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QGraphicsSceneHoverEvent (
  qGraphicsSceneHoverEvent_delete
  )
  where

import Foreign.C.Types
import Qth.ClassTypes.Core
import Qtc.Enums.Base
import Qtc.Enums.Core.QEvent

import Qtc.Classes.Base
import Qtc.Classes.Qccs
import Qtc.Classes.Core
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core
import Qtc.Classes.Gui
import Qtc.ClassTypes.Gui

instance Qpos (QGraphicsSceneHoverEvent a) (()) (IO (PointF)) where
 pos x0 ()
  = withPointFResult $ \cpointf_ret_x cpointf_ret_y ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsSceneHoverEvent_pos_qth cobj_x0 cpointf_ret_x cpointf_ret_y

foreign import ccall "qtc_QGraphicsSceneHoverEvent_pos_qth" qtc_QGraphicsSceneHoverEvent_pos_qth :: Ptr (TQGraphicsSceneHoverEvent a) -> Ptr CDouble -> Ptr CDouble -> IO ()

instance Qqpos (QGraphicsSceneHoverEvent a) (()) (IO (QPointF ())) where
 qpos x0 ()
  = withQPointFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsSceneHoverEvent_pos cobj_x0

foreign import ccall "qtc_QGraphicsSceneHoverEvent_pos" qtc_QGraphicsSceneHoverEvent_pos :: Ptr (TQGraphicsSceneHoverEvent a) -> IO (Ptr (TQPointF ()))

instance QscenePos (QGraphicsSceneHoverEvent a) (()) where
 scenePos x0 ()
  = withPointFResult $ \cpointf_ret_x cpointf_ret_y ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsSceneHoverEvent_scenePos_qth cobj_x0 cpointf_ret_x cpointf_ret_y

foreign import ccall "qtc_QGraphicsSceneHoverEvent_scenePos_qth" qtc_QGraphicsSceneHoverEvent_scenePos_qth :: Ptr (TQGraphicsSceneHoverEvent a) -> Ptr CDouble -> Ptr CDouble -> IO ()

instance QqscenePos (QGraphicsSceneHoverEvent a) (()) where
 qscenePos x0 ()
  = withQPointFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsSceneHoverEvent_scenePos cobj_x0

foreign import ccall "qtc_QGraphicsSceneHoverEvent_scenePos" qtc_QGraphicsSceneHoverEvent_scenePos :: Ptr (TQGraphicsSceneHoverEvent a) -> IO (Ptr (TQPointF ()))

instance QscreenPos (QGraphicsSceneHoverEvent a) (()) where
 screenPos x0 ()
  = withPointResult $ \cpoint_ret_x cpoint_ret_y ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsSceneHoverEvent_screenPos_qth cobj_x0 cpoint_ret_x cpoint_ret_y

foreign import ccall "qtc_QGraphicsSceneHoverEvent_screenPos_qth" qtc_QGraphicsSceneHoverEvent_screenPos_qth :: Ptr (TQGraphicsSceneHoverEvent a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QqscreenPos (QGraphicsSceneHoverEvent a) (()) where
 qscreenPos x0 ()
  = withQPointResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsSceneHoverEvent_screenPos cobj_x0

foreign import ccall "qtc_QGraphicsSceneHoverEvent_screenPos" qtc_QGraphicsSceneHoverEvent_screenPos :: Ptr (TQGraphicsSceneHoverEvent a) -> IO (Ptr (TQPoint ()))

instance QsetPos (QGraphicsSceneHoverEvent a) ((PointF)) where
 setPos x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPointF x1 $ \cpointf_x1_x cpointf_x1_y -> 
    qtc_QGraphicsSceneHoverEvent_setPos_qth cobj_x0 cpointf_x1_x cpointf_x1_y 

foreign import ccall "qtc_QGraphicsSceneHoverEvent_setPos_qth" qtc_QGraphicsSceneHoverEvent_setPos_qth :: Ptr (TQGraphicsSceneHoverEvent a) -> CDouble -> CDouble -> IO ()

instance QqsetPos (QGraphicsSceneHoverEvent a) ((QPointF t1)) where
 qsetPos x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsSceneHoverEvent_setPos cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsSceneHoverEvent_setPos" qtc_QGraphicsSceneHoverEvent_setPos :: Ptr (TQGraphicsSceneHoverEvent a) -> Ptr (TQPointF t1) -> IO ()

instance QsetScenePos (QGraphicsSceneHoverEvent a) ((PointF)) where
 setScenePos x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPointF x1 $ \cpointf_x1_x cpointf_x1_y -> 
    qtc_QGraphicsSceneHoverEvent_setScenePos_qth cobj_x0 cpointf_x1_x cpointf_x1_y 

foreign import ccall "qtc_QGraphicsSceneHoverEvent_setScenePos_qth" qtc_QGraphicsSceneHoverEvent_setScenePos_qth :: Ptr (TQGraphicsSceneHoverEvent a) -> CDouble -> CDouble -> IO ()

instance QqsetScenePos (QGraphicsSceneHoverEvent a) ((QPointF t1)) where
 qsetScenePos x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsSceneHoverEvent_setScenePos cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsSceneHoverEvent_setScenePos" qtc_QGraphicsSceneHoverEvent_setScenePos :: Ptr (TQGraphicsSceneHoverEvent a) -> Ptr (TQPointF t1) -> IO ()

instance QsetScreenPos (QGraphicsSceneHoverEvent a) ((Point)) where
 setScreenPos x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QGraphicsSceneHoverEvent_setScreenPos_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

foreign import ccall "qtc_QGraphicsSceneHoverEvent_setScreenPos_qth" qtc_QGraphicsSceneHoverEvent_setScreenPos_qth :: Ptr (TQGraphicsSceneHoverEvent a) -> CInt -> CInt -> IO ()

instance QqsetScreenPos (QGraphicsSceneHoverEvent a) ((QPoint t1)) where
 qsetScreenPos x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsSceneHoverEvent_setScreenPos cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsSceneHoverEvent_setScreenPos" qtc_QGraphicsSceneHoverEvent_setScreenPos :: Ptr (TQGraphicsSceneHoverEvent a) -> Ptr (TQPoint t1) -> IO ()

qGraphicsSceneHoverEvent_delete :: QGraphicsSceneHoverEvent a -> IO ()
qGraphicsSceneHoverEvent_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsSceneHoverEvent_delete cobj_x0

foreign import ccall "qtc_QGraphicsSceneHoverEvent_delete" qtc_QGraphicsSceneHoverEvent_delete :: Ptr (TQGraphicsSceneHoverEvent a) -> IO ()

