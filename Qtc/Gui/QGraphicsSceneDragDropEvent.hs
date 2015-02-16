{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QGraphicsSceneDragDropEvent.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:16
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QGraphicsSceneDragDropEvent (
  setPossibleActions
  ,setProposedAction
  ,qGraphicsSceneDragDropEvent_delete
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

instance QacceptProposedAction (QGraphicsSceneDragDropEvent a) (()) where
 acceptProposedAction x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsSceneDragDropEvent_acceptProposedAction cobj_x0

foreign import ccall "qtc_QGraphicsSceneDragDropEvent_acceptProposedAction" qtc_QGraphicsSceneDragDropEvent_acceptProposedAction :: Ptr (TQGraphicsSceneDragDropEvent a) -> IO ()

instance Qbuttons (QGraphicsSceneDragDropEvent a) (()) (IO (MouseButtons)) where
 buttons x0 ()
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsSceneDragDropEvent_buttons cobj_x0

foreign import ccall "qtc_QGraphicsSceneDragDropEvent_buttons" qtc_QGraphicsSceneDragDropEvent_buttons :: Ptr (TQGraphicsSceneDragDropEvent a) -> IO CLong

instance QdropAction (QGraphicsSceneDragDropEvent a) (()) where
 dropAction x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsSceneDragDropEvent_dropAction cobj_x0

foreign import ccall "qtc_QGraphicsSceneDragDropEvent_dropAction" qtc_QGraphicsSceneDragDropEvent_dropAction :: Ptr (TQGraphicsSceneDragDropEvent a) -> IO CLong

instance QmimeData (QGraphicsSceneDragDropEvent a) (()) where
 mimeData x0 ()
  = withQMimeDataResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsSceneDragDropEvent_mimeData cobj_x0

foreign import ccall "qtc_QGraphicsSceneDragDropEvent_mimeData" qtc_QGraphicsSceneDragDropEvent_mimeData :: Ptr (TQGraphicsSceneDragDropEvent a) -> IO (Ptr (TQMimeData ()))

instance Qmodifiers (QGraphicsSceneDragDropEvent a) (()) where
 modifiers x0 ()
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsSceneDragDropEvent_modifiers cobj_x0

foreign import ccall "qtc_QGraphicsSceneDragDropEvent_modifiers" qtc_QGraphicsSceneDragDropEvent_modifiers :: Ptr (TQGraphicsSceneDragDropEvent a) -> IO CLong

instance Qpos (QGraphicsSceneDragDropEvent a) (()) (IO (PointF)) where
 pos x0 ()
  = withPointFResult $ \cpointf_ret_x cpointf_ret_y ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsSceneDragDropEvent_pos_qth cobj_x0 cpointf_ret_x cpointf_ret_y

foreign import ccall "qtc_QGraphicsSceneDragDropEvent_pos_qth" qtc_QGraphicsSceneDragDropEvent_pos_qth :: Ptr (TQGraphicsSceneDragDropEvent a) -> Ptr CDouble -> Ptr CDouble -> IO ()

instance Qqpos (QGraphicsSceneDragDropEvent a) (()) (IO (QPointF ())) where
 qpos x0 ()
  = withQPointFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsSceneDragDropEvent_pos cobj_x0

foreign import ccall "qtc_QGraphicsSceneDragDropEvent_pos" qtc_QGraphicsSceneDragDropEvent_pos :: Ptr (TQGraphicsSceneDragDropEvent a) -> IO (Ptr (TQPointF ()))

instance QpossibleActions (QGraphicsSceneDragDropEvent a) (()) where
 possibleActions x0 ()
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsSceneDragDropEvent_possibleActions cobj_x0

foreign import ccall "qtc_QGraphicsSceneDragDropEvent_possibleActions" qtc_QGraphicsSceneDragDropEvent_possibleActions :: Ptr (TQGraphicsSceneDragDropEvent a) -> IO CLong

instance QproposedAction (QGraphicsSceneDragDropEvent a) (()) where
 proposedAction x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsSceneDragDropEvent_proposedAction cobj_x0

foreign import ccall "qtc_QGraphicsSceneDragDropEvent_proposedAction" qtc_QGraphicsSceneDragDropEvent_proposedAction :: Ptr (TQGraphicsSceneDragDropEvent a) -> IO CLong

instance QscenePos (QGraphicsSceneDragDropEvent a) (()) where
 scenePos x0 ()
  = withPointFResult $ \cpointf_ret_x cpointf_ret_y ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsSceneDragDropEvent_scenePos_qth cobj_x0 cpointf_ret_x cpointf_ret_y

foreign import ccall "qtc_QGraphicsSceneDragDropEvent_scenePos_qth" qtc_QGraphicsSceneDragDropEvent_scenePos_qth :: Ptr (TQGraphicsSceneDragDropEvent a) -> Ptr CDouble -> Ptr CDouble -> IO ()

instance QqscenePos (QGraphicsSceneDragDropEvent a) (()) where
 qscenePos x0 ()
  = withQPointFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsSceneDragDropEvent_scenePos cobj_x0

foreign import ccall "qtc_QGraphicsSceneDragDropEvent_scenePos" qtc_QGraphicsSceneDragDropEvent_scenePos :: Ptr (TQGraphicsSceneDragDropEvent a) -> IO (Ptr (TQPointF ()))

instance QscreenPos (QGraphicsSceneDragDropEvent a) (()) where
 screenPos x0 ()
  = withPointResult $ \cpoint_ret_x cpoint_ret_y ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsSceneDragDropEvent_screenPos_qth cobj_x0 cpoint_ret_x cpoint_ret_y

foreign import ccall "qtc_QGraphicsSceneDragDropEvent_screenPos_qth" qtc_QGraphicsSceneDragDropEvent_screenPos_qth :: Ptr (TQGraphicsSceneDragDropEvent a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QqscreenPos (QGraphicsSceneDragDropEvent a) (()) where
 qscreenPos x0 ()
  = withQPointResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsSceneDragDropEvent_screenPos cobj_x0

foreign import ccall "qtc_QGraphicsSceneDragDropEvent_screenPos" qtc_QGraphicsSceneDragDropEvent_screenPos :: Ptr (TQGraphicsSceneDragDropEvent a) -> IO (Ptr (TQPoint ()))

instance QsetButtons (QGraphicsSceneDragDropEvent a) ((MouseButtons)) where
 setButtons x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsSceneDragDropEvent_setButtons cobj_x0 (toCLong $ qFlags_toInt x1)

foreign import ccall "qtc_QGraphicsSceneDragDropEvent_setButtons" qtc_QGraphicsSceneDragDropEvent_setButtons :: Ptr (TQGraphicsSceneDragDropEvent a) -> CLong -> IO ()

instance QsetDropAction (QGraphicsSceneDragDropEvent a) ((DropAction)) where
 setDropAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsSceneDragDropEvent_setDropAction cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QGraphicsSceneDragDropEvent_setDropAction" qtc_QGraphicsSceneDragDropEvent_setDropAction :: Ptr (TQGraphicsSceneDragDropEvent a) -> CLong -> IO ()

instance QsetMimeData (QGraphicsSceneDragDropEvent a) ((QMimeData t1)) where
 setMimeData x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsSceneDragDropEvent_setMimeData cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsSceneDragDropEvent_setMimeData" qtc_QGraphicsSceneDragDropEvent_setMimeData :: Ptr (TQGraphicsSceneDragDropEvent a) -> Ptr (TQMimeData t1) -> IO ()

instance QsetModifiers (QGraphicsSceneDragDropEvent a) ((KeyboardModifiers)) where
 setModifiers x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsSceneDragDropEvent_setModifiers cobj_x0 (toCLong $ qFlags_toInt x1)

foreign import ccall "qtc_QGraphicsSceneDragDropEvent_setModifiers" qtc_QGraphicsSceneDragDropEvent_setModifiers :: Ptr (TQGraphicsSceneDragDropEvent a) -> CLong -> IO ()

instance QsetPos (QGraphicsSceneDragDropEvent a) ((PointF)) where
 setPos x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPointF x1 $ \cpointf_x1_x cpointf_x1_y -> 
    qtc_QGraphicsSceneDragDropEvent_setPos_qth cobj_x0 cpointf_x1_x cpointf_x1_y 

foreign import ccall "qtc_QGraphicsSceneDragDropEvent_setPos_qth" qtc_QGraphicsSceneDragDropEvent_setPos_qth :: Ptr (TQGraphicsSceneDragDropEvent a) -> CDouble -> CDouble -> IO ()

instance QqsetPos (QGraphicsSceneDragDropEvent a) ((QPointF t1)) where
 qsetPos x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsSceneDragDropEvent_setPos cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsSceneDragDropEvent_setPos" qtc_QGraphicsSceneDragDropEvent_setPos :: Ptr (TQGraphicsSceneDragDropEvent a) -> Ptr (TQPointF t1) -> IO ()

setPossibleActions :: QGraphicsSceneDragDropEvent a -> ((DropActions)) -> IO ()
setPossibleActions x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsSceneDragDropEvent_setPossibleActions cobj_x0 (toCLong $ qFlags_toInt x1)

foreign import ccall "qtc_QGraphicsSceneDragDropEvent_setPossibleActions" qtc_QGraphicsSceneDragDropEvent_setPossibleActions :: Ptr (TQGraphicsSceneDragDropEvent a) -> CLong -> IO ()

setProposedAction :: QGraphicsSceneDragDropEvent a -> ((DropAction)) -> IO ()
setProposedAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsSceneDragDropEvent_setProposedAction cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QGraphicsSceneDragDropEvent_setProposedAction" qtc_QGraphicsSceneDragDropEvent_setProposedAction :: Ptr (TQGraphicsSceneDragDropEvent a) -> CLong -> IO ()

instance QsetScenePos (QGraphicsSceneDragDropEvent a) ((PointF)) where
 setScenePos x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPointF x1 $ \cpointf_x1_x cpointf_x1_y -> 
    qtc_QGraphicsSceneDragDropEvent_setScenePos_qth cobj_x0 cpointf_x1_x cpointf_x1_y 

foreign import ccall "qtc_QGraphicsSceneDragDropEvent_setScenePos_qth" qtc_QGraphicsSceneDragDropEvent_setScenePos_qth :: Ptr (TQGraphicsSceneDragDropEvent a) -> CDouble -> CDouble -> IO ()

instance QqsetScenePos (QGraphicsSceneDragDropEvent a) ((QPointF t1)) where
 qsetScenePos x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsSceneDragDropEvent_setScenePos cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsSceneDragDropEvent_setScenePos" qtc_QGraphicsSceneDragDropEvent_setScenePos :: Ptr (TQGraphicsSceneDragDropEvent a) -> Ptr (TQPointF t1) -> IO ()

instance QsetScreenPos (QGraphicsSceneDragDropEvent a) ((Point)) where
 setScreenPos x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QGraphicsSceneDragDropEvent_setScreenPos_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

foreign import ccall "qtc_QGraphicsSceneDragDropEvent_setScreenPos_qth" qtc_QGraphicsSceneDragDropEvent_setScreenPos_qth :: Ptr (TQGraphicsSceneDragDropEvent a) -> CInt -> CInt -> IO ()

instance QqsetScreenPos (QGraphicsSceneDragDropEvent a) ((QPoint t1)) where
 qsetScreenPos x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsSceneDragDropEvent_setScreenPos cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsSceneDragDropEvent_setScreenPos" qtc_QGraphicsSceneDragDropEvent_setScreenPos :: Ptr (TQGraphicsSceneDragDropEvent a) -> Ptr (TQPoint t1) -> IO ()

instance QsetSource (QGraphicsSceneDragDropEvent a) ((QWidget t1)) where
 setSource x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsSceneDragDropEvent_setSource cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsSceneDragDropEvent_setSource" qtc_QGraphicsSceneDragDropEvent_setSource :: Ptr (TQGraphicsSceneDragDropEvent a) -> Ptr (TQWidget t1) -> IO ()

instance Qsource (QGraphicsSceneDragDropEvent a) (()) (IO (QWidget ())) where
 source x0 ()
  = withQWidgetResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsSceneDragDropEvent_source cobj_x0

foreign import ccall "qtc_QGraphicsSceneDragDropEvent_source" qtc_QGraphicsSceneDragDropEvent_source :: Ptr (TQGraphicsSceneDragDropEvent a) -> IO (Ptr (TQWidget ()))

qGraphicsSceneDragDropEvent_delete :: QGraphicsSceneDragDropEvent a -> IO ()
qGraphicsSceneDragDropEvent_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsSceneDragDropEvent_delete cobj_x0

foreign import ccall "qtc_QGraphicsSceneDragDropEvent_delete" qtc_QGraphicsSceneDragDropEvent_delete :: Ptr (TQGraphicsSceneDragDropEvent a) -> IO ()

