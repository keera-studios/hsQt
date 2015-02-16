{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QGraphicsSceneHelpEvent.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:21
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QGraphicsSceneHelpEvent (
  qGraphicsSceneHelpEvent_delete
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

instance QscenePos (QGraphicsSceneHelpEvent a) (()) where
 scenePos x0 ()
  = withPointFResult $ \cpointf_ret_x cpointf_ret_y ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsSceneHelpEvent_scenePos_qth cobj_x0 cpointf_ret_x cpointf_ret_y

foreign import ccall "qtc_QGraphicsSceneHelpEvent_scenePos_qth" qtc_QGraphicsSceneHelpEvent_scenePos_qth :: Ptr (TQGraphicsSceneHelpEvent a) -> Ptr CDouble -> Ptr CDouble -> IO ()

instance QqscenePos (QGraphicsSceneHelpEvent a) (()) where
 qscenePos x0 ()
  = withQPointFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsSceneHelpEvent_scenePos cobj_x0

foreign import ccall "qtc_QGraphicsSceneHelpEvent_scenePos" qtc_QGraphicsSceneHelpEvent_scenePos :: Ptr (TQGraphicsSceneHelpEvent a) -> IO (Ptr (TQPointF ()))

instance QscreenPos (QGraphicsSceneHelpEvent a) (()) where
 screenPos x0 ()
  = withPointResult $ \cpoint_ret_x cpoint_ret_y ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsSceneHelpEvent_screenPos_qth cobj_x0 cpoint_ret_x cpoint_ret_y

foreign import ccall "qtc_QGraphicsSceneHelpEvent_screenPos_qth" qtc_QGraphicsSceneHelpEvent_screenPos_qth :: Ptr (TQGraphicsSceneHelpEvent a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QqscreenPos (QGraphicsSceneHelpEvent a) (()) where
 qscreenPos x0 ()
  = withQPointResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsSceneHelpEvent_screenPos cobj_x0

foreign import ccall "qtc_QGraphicsSceneHelpEvent_screenPos" qtc_QGraphicsSceneHelpEvent_screenPos :: Ptr (TQGraphicsSceneHelpEvent a) -> IO (Ptr (TQPoint ()))

instance QsetScenePos (QGraphicsSceneHelpEvent a) ((PointF)) where
 setScenePos x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPointF x1 $ \cpointf_x1_x cpointf_x1_y -> 
    qtc_QGraphicsSceneHelpEvent_setScenePos_qth cobj_x0 cpointf_x1_x cpointf_x1_y 

foreign import ccall "qtc_QGraphicsSceneHelpEvent_setScenePos_qth" qtc_QGraphicsSceneHelpEvent_setScenePos_qth :: Ptr (TQGraphicsSceneHelpEvent a) -> CDouble -> CDouble -> IO ()

instance QqsetScenePos (QGraphicsSceneHelpEvent a) ((QPointF t1)) where
 qsetScenePos x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsSceneHelpEvent_setScenePos cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsSceneHelpEvent_setScenePos" qtc_QGraphicsSceneHelpEvent_setScenePos :: Ptr (TQGraphicsSceneHelpEvent a) -> Ptr (TQPointF t1) -> IO ()

instance QsetScreenPos (QGraphicsSceneHelpEvent a) ((Point)) where
 setScreenPos x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QGraphicsSceneHelpEvent_setScreenPos_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

foreign import ccall "qtc_QGraphicsSceneHelpEvent_setScreenPos_qth" qtc_QGraphicsSceneHelpEvent_setScreenPos_qth :: Ptr (TQGraphicsSceneHelpEvent a) -> CInt -> CInt -> IO ()

instance QqsetScreenPos (QGraphicsSceneHelpEvent a) ((QPoint t1)) where
 qsetScreenPos x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsSceneHelpEvent_setScreenPos cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsSceneHelpEvent_setScreenPos" qtc_QGraphicsSceneHelpEvent_setScreenPos :: Ptr (TQGraphicsSceneHelpEvent a) -> Ptr (TQPoint t1) -> IO ()

qGraphicsSceneHelpEvent_delete :: QGraphicsSceneHelpEvent a -> IO ()
qGraphicsSceneHelpEvent_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsSceneHelpEvent_delete cobj_x0

foreign import ccall "qtc_QGraphicsSceneHelpEvent_delete" qtc_QGraphicsSceneHelpEvent_delete :: Ptr (TQGraphicsSceneHelpEvent a) -> IO ()

