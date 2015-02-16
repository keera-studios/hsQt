{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QGraphicsSceneMouseEvent.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:25
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QGraphicsSceneMouseEvent (
  buttonDownPos, qbuttonDownPos
  ,buttonDownScenePos, qbuttonDownScenePos
  ,buttonDownScreenPos, qbuttonDownScreenPos
  ,lastPos, qlastPos
  ,lastScenePos, qlastScenePos
  ,lastScreenPos, qlastScreenPos
  ,setButton
  ,setButtonDownPos, qsetButtonDownPos
  ,setButtonDownScenePos, qsetButtonDownScenePos
  ,setButtonDownScreenPos, qsetButtonDownScreenPos
  ,setLastPos, qsetLastPos
  ,setLastScenePos, qsetLastScenePos
  ,setLastScreenPos, qsetLastScreenPos
  ,qGraphicsSceneMouseEvent_delete
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

instance Qbutton (QGraphicsSceneMouseEvent a) (()) (IO (MouseButton)) where
 button x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsSceneMouseEvent_button cobj_x0

foreign import ccall "qtc_QGraphicsSceneMouseEvent_button" qtc_QGraphicsSceneMouseEvent_button :: Ptr (TQGraphicsSceneMouseEvent a) -> IO CLong

buttonDownPos :: QGraphicsSceneMouseEvent a -> ((MouseButton)) -> IO (PointF)
buttonDownPos x0 (x1)
  = withPointFResult $ \cpointf_ret_x cpointf_ret_y ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsSceneMouseEvent_buttonDownPos_qth cobj_x0 (toCLong $ qEnum_toInt x1) cpointf_ret_x cpointf_ret_y

foreign import ccall "qtc_QGraphicsSceneMouseEvent_buttonDownPos_qth" qtc_QGraphicsSceneMouseEvent_buttonDownPos_qth :: Ptr (TQGraphicsSceneMouseEvent a) -> CLong -> Ptr CDouble -> Ptr CDouble -> IO ()

qbuttonDownPos :: QGraphicsSceneMouseEvent a -> ((MouseButton)) -> IO (QPointF ())
qbuttonDownPos x0 (x1)
  = withQPointFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsSceneMouseEvent_buttonDownPos cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QGraphicsSceneMouseEvent_buttonDownPos" qtc_QGraphicsSceneMouseEvent_buttonDownPos :: Ptr (TQGraphicsSceneMouseEvent a) -> CLong -> IO (Ptr (TQPointF ()))

buttonDownScenePos :: QGraphicsSceneMouseEvent a -> ((MouseButton)) -> IO (PointF)
buttonDownScenePos x0 (x1)
  = withPointFResult $ \cpointf_ret_x cpointf_ret_y ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsSceneMouseEvent_buttonDownScenePos_qth cobj_x0 (toCLong $ qEnum_toInt x1) cpointf_ret_x cpointf_ret_y

foreign import ccall "qtc_QGraphicsSceneMouseEvent_buttonDownScenePos_qth" qtc_QGraphicsSceneMouseEvent_buttonDownScenePos_qth :: Ptr (TQGraphicsSceneMouseEvent a) -> CLong -> Ptr CDouble -> Ptr CDouble -> IO ()

qbuttonDownScenePos :: QGraphicsSceneMouseEvent a -> ((MouseButton)) -> IO (QPointF ())
qbuttonDownScenePos x0 (x1)
  = withQPointFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsSceneMouseEvent_buttonDownScenePos cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QGraphicsSceneMouseEvent_buttonDownScenePos" qtc_QGraphicsSceneMouseEvent_buttonDownScenePos :: Ptr (TQGraphicsSceneMouseEvent a) -> CLong -> IO (Ptr (TQPointF ()))

buttonDownScreenPos :: QGraphicsSceneMouseEvent a -> ((MouseButton)) -> IO (Point)
buttonDownScreenPos x0 (x1)
  = withPointResult $ \cpoint_ret_x cpoint_ret_y ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsSceneMouseEvent_buttonDownScreenPos_qth cobj_x0 (toCLong $ qEnum_toInt x1) cpoint_ret_x cpoint_ret_y

foreign import ccall "qtc_QGraphicsSceneMouseEvent_buttonDownScreenPos_qth" qtc_QGraphicsSceneMouseEvent_buttonDownScreenPos_qth :: Ptr (TQGraphicsSceneMouseEvent a) -> CLong -> Ptr CInt -> Ptr CInt -> IO ()

qbuttonDownScreenPos :: QGraphicsSceneMouseEvent a -> ((MouseButton)) -> IO (QPoint ())
qbuttonDownScreenPos x0 (x1)
  = withQPointResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsSceneMouseEvent_buttonDownScreenPos cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QGraphicsSceneMouseEvent_buttonDownScreenPos" qtc_QGraphicsSceneMouseEvent_buttonDownScreenPos :: Ptr (TQGraphicsSceneMouseEvent a) -> CLong -> IO (Ptr (TQPoint ()))

instance Qbuttons (QGraphicsSceneMouseEvent a) (()) (IO (MouseButtons)) where
 buttons x0 ()
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsSceneMouseEvent_buttons cobj_x0

foreign import ccall "qtc_QGraphicsSceneMouseEvent_buttons" qtc_QGraphicsSceneMouseEvent_buttons :: Ptr (TQGraphicsSceneMouseEvent a) -> IO CLong

lastPos :: QGraphicsSceneMouseEvent a -> (()) -> IO (PointF)
lastPos x0 ()
  = withPointFResult $ \cpointf_ret_x cpointf_ret_y ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsSceneMouseEvent_lastPos_qth cobj_x0 cpointf_ret_x cpointf_ret_y

foreign import ccall "qtc_QGraphicsSceneMouseEvent_lastPos_qth" qtc_QGraphicsSceneMouseEvent_lastPos_qth :: Ptr (TQGraphicsSceneMouseEvent a) -> Ptr CDouble -> Ptr CDouble -> IO ()

qlastPos :: QGraphicsSceneMouseEvent a -> (()) -> IO (QPointF ())
qlastPos x0 ()
  = withQPointFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsSceneMouseEvent_lastPos cobj_x0

foreign import ccall "qtc_QGraphicsSceneMouseEvent_lastPos" qtc_QGraphicsSceneMouseEvent_lastPos :: Ptr (TQGraphicsSceneMouseEvent a) -> IO (Ptr (TQPointF ()))

lastScenePos :: QGraphicsSceneMouseEvent a -> (()) -> IO (PointF)
lastScenePos x0 ()
  = withPointFResult $ \cpointf_ret_x cpointf_ret_y ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsSceneMouseEvent_lastScenePos_qth cobj_x0 cpointf_ret_x cpointf_ret_y

foreign import ccall "qtc_QGraphicsSceneMouseEvent_lastScenePos_qth" qtc_QGraphicsSceneMouseEvent_lastScenePos_qth :: Ptr (TQGraphicsSceneMouseEvent a) -> Ptr CDouble -> Ptr CDouble -> IO ()

qlastScenePos :: QGraphicsSceneMouseEvent a -> (()) -> IO (QPointF ())
qlastScenePos x0 ()
  = withQPointFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsSceneMouseEvent_lastScenePos cobj_x0

foreign import ccall "qtc_QGraphicsSceneMouseEvent_lastScenePos" qtc_QGraphicsSceneMouseEvent_lastScenePos :: Ptr (TQGraphicsSceneMouseEvent a) -> IO (Ptr (TQPointF ()))

lastScreenPos :: QGraphicsSceneMouseEvent a -> (()) -> IO (Point)
lastScreenPos x0 ()
  = withPointResult $ \cpoint_ret_x cpoint_ret_y ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsSceneMouseEvent_lastScreenPos_qth cobj_x0 cpoint_ret_x cpoint_ret_y

foreign import ccall "qtc_QGraphicsSceneMouseEvent_lastScreenPos_qth" qtc_QGraphicsSceneMouseEvent_lastScreenPos_qth :: Ptr (TQGraphicsSceneMouseEvent a) -> Ptr CInt -> Ptr CInt -> IO ()

qlastScreenPos :: QGraphicsSceneMouseEvent a -> (()) -> IO (QPoint ())
qlastScreenPos x0 ()
  = withQPointResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsSceneMouseEvent_lastScreenPos cobj_x0

foreign import ccall "qtc_QGraphicsSceneMouseEvent_lastScreenPos" qtc_QGraphicsSceneMouseEvent_lastScreenPos :: Ptr (TQGraphicsSceneMouseEvent a) -> IO (Ptr (TQPoint ()))

instance Qmodifiers (QGraphicsSceneMouseEvent a) (()) where
 modifiers x0 ()
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsSceneMouseEvent_modifiers cobj_x0

foreign import ccall "qtc_QGraphicsSceneMouseEvent_modifiers" qtc_QGraphicsSceneMouseEvent_modifiers :: Ptr (TQGraphicsSceneMouseEvent a) -> IO CLong

instance Qpos (QGraphicsSceneMouseEvent a) (()) (IO (PointF)) where
 pos x0 ()
  = withPointFResult $ \cpointf_ret_x cpointf_ret_y ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsSceneMouseEvent_pos_qth cobj_x0 cpointf_ret_x cpointf_ret_y

foreign import ccall "qtc_QGraphicsSceneMouseEvent_pos_qth" qtc_QGraphicsSceneMouseEvent_pos_qth :: Ptr (TQGraphicsSceneMouseEvent a) -> Ptr CDouble -> Ptr CDouble -> IO ()

instance Qqpos (QGraphicsSceneMouseEvent a) (()) (IO (QPointF ())) where
 qpos x0 ()
  = withQPointFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsSceneMouseEvent_pos cobj_x0

foreign import ccall "qtc_QGraphicsSceneMouseEvent_pos" qtc_QGraphicsSceneMouseEvent_pos :: Ptr (TQGraphicsSceneMouseEvent a) -> IO (Ptr (TQPointF ()))

instance QscenePos (QGraphicsSceneMouseEvent a) (()) where
 scenePos x0 ()
  = withPointFResult $ \cpointf_ret_x cpointf_ret_y ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsSceneMouseEvent_scenePos_qth cobj_x0 cpointf_ret_x cpointf_ret_y

foreign import ccall "qtc_QGraphicsSceneMouseEvent_scenePos_qth" qtc_QGraphicsSceneMouseEvent_scenePos_qth :: Ptr (TQGraphicsSceneMouseEvent a) -> Ptr CDouble -> Ptr CDouble -> IO ()

instance QqscenePos (QGraphicsSceneMouseEvent a) (()) where
 qscenePos x0 ()
  = withQPointFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsSceneMouseEvent_scenePos cobj_x0

foreign import ccall "qtc_QGraphicsSceneMouseEvent_scenePos" qtc_QGraphicsSceneMouseEvent_scenePos :: Ptr (TQGraphicsSceneMouseEvent a) -> IO (Ptr (TQPointF ()))

instance QscreenPos (QGraphicsSceneMouseEvent a) (()) where
 screenPos x0 ()
  = withPointResult $ \cpoint_ret_x cpoint_ret_y ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsSceneMouseEvent_screenPos_qth cobj_x0 cpoint_ret_x cpoint_ret_y

foreign import ccall "qtc_QGraphicsSceneMouseEvent_screenPos_qth" qtc_QGraphicsSceneMouseEvent_screenPos_qth :: Ptr (TQGraphicsSceneMouseEvent a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QqscreenPos (QGraphicsSceneMouseEvent a) (()) where
 qscreenPos x0 ()
  = withQPointResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsSceneMouseEvent_screenPos cobj_x0

foreign import ccall "qtc_QGraphicsSceneMouseEvent_screenPos" qtc_QGraphicsSceneMouseEvent_screenPos :: Ptr (TQGraphicsSceneMouseEvent a) -> IO (Ptr (TQPoint ()))

setButton :: QGraphicsSceneMouseEvent a -> ((MouseButton)) -> IO ()
setButton x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsSceneMouseEvent_setButton cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QGraphicsSceneMouseEvent_setButton" qtc_QGraphicsSceneMouseEvent_setButton :: Ptr (TQGraphicsSceneMouseEvent a) -> CLong -> IO ()

setButtonDownPos :: QGraphicsSceneMouseEvent a -> ((MouseButton, PointF)) -> IO ()
setButtonDownPos x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPointF x2 $ \cpointf_x2_x cpointf_x2_y -> 
    qtc_QGraphicsSceneMouseEvent_setButtonDownPos_qth cobj_x0 (toCLong $ qEnum_toInt x1) cpointf_x2_x cpointf_x2_y 

foreign import ccall "qtc_QGraphicsSceneMouseEvent_setButtonDownPos_qth" qtc_QGraphicsSceneMouseEvent_setButtonDownPos_qth :: Ptr (TQGraphicsSceneMouseEvent a) -> CLong -> CDouble -> CDouble -> IO ()

qsetButtonDownPos :: QGraphicsSceneMouseEvent a -> ((MouseButton, QPointF t2)) -> IO ()
qsetButtonDownPos x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsSceneMouseEvent_setButtonDownPos cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2

foreign import ccall "qtc_QGraphicsSceneMouseEvent_setButtonDownPos" qtc_QGraphicsSceneMouseEvent_setButtonDownPos :: Ptr (TQGraphicsSceneMouseEvent a) -> CLong -> Ptr (TQPointF t2) -> IO ()

setButtonDownScenePos :: QGraphicsSceneMouseEvent a -> ((MouseButton, PointF)) -> IO ()
setButtonDownScenePos x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPointF x2 $ \cpointf_x2_x cpointf_x2_y -> 
    qtc_QGraphicsSceneMouseEvent_setButtonDownScenePos_qth cobj_x0 (toCLong $ qEnum_toInt x1) cpointf_x2_x cpointf_x2_y 

foreign import ccall "qtc_QGraphicsSceneMouseEvent_setButtonDownScenePos_qth" qtc_QGraphicsSceneMouseEvent_setButtonDownScenePos_qth :: Ptr (TQGraphicsSceneMouseEvent a) -> CLong -> CDouble -> CDouble -> IO ()

qsetButtonDownScenePos :: QGraphicsSceneMouseEvent a -> ((MouseButton, QPointF t2)) -> IO ()
qsetButtonDownScenePos x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsSceneMouseEvent_setButtonDownScenePos cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2

foreign import ccall "qtc_QGraphicsSceneMouseEvent_setButtonDownScenePos" qtc_QGraphicsSceneMouseEvent_setButtonDownScenePos :: Ptr (TQGraphicsSceneMouseEvent a) -> CLong -> Ptr (TQPointF t2) -> IO ()

setButtonDownScreenPos :: QGraphicsSceneMouseEvent a -> ((MouseButton, Point)) -> IO ()
setButtonDownScreenPos x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x2 $ \cpoint_x2_x cpoint_x2_y -> 
    qtc_QGraphicsSceneMouseEvent_setButtonDownScreenPos_qth cobj_x0 (toCLong $ qEnum_toInt x1) cpoint_x2_x cpoint_x2_y 

foreign import ccall "qtc_QGraphicsSceneMouseEvent_setButtonDownScreenPos_qth" qtc_QGraphicsSceneMouseEvent_setButtonDownScreenPos_qth :: Ptr (TQGraphicsSceneMouseEvent a) -> CLong -> CInt -> CInt -> IO ()

qsetButtonDownScreenPos :: QGraphicsSceneMouseEvent a -> ((MouseButton, QPoint t2)) -> IO ()
qsetButtonDownScreenPos x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsSceneMouseEvent_setButtonDownScreenPos cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2

foreign import ccall "qtc_QGraphicsSceneMouseEvent_setButtonDownScreenPos" qtc_QGraphicsSceneMouseEvent_setButtonDownScreenPos :: Ptr (TQGraphicsSceneMouseEvent a) -> CLong -> Ptr (TQPoint t2) -> IO ()

instance QsetButtons (QGraphicsSceneMouseEvent a) ((MouseButtons)) where
 setButtons x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsSceneMouseEvent_setButtons cobj_x0 (toCLong $ qFlags_toInt x1)

foreign import ccall "qtc_QGraphicsSceneMouseEvent_setButtons" qtc_QGraphicsSceneMouseEvent_setButtons :: Ptr (TQGraphicsSceneMouseEvent a) -> CLong -> IO ()

setLastPos :: QGraphicsSceneMouseEvent a -> ((PointF)) -> IO ()
setLastPos x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPointF x1 $ \cpointf_x1_x cpointf_x1_y -> 
    qtc_QGraphicsSceneMouseEvent_setLastPos_qth cobj_x0 cpointf_x1_x cpointf_x1_y 

foreign import ccall "qtc_QGraphicsSceneMouseEvent_setLastPos_qth" qtc_QGraphicsSceneMouseEvent_setLastPos_qth :: Ptr (TQGraphicsSceneMouseEvent a) -> CDouble -> CDouble -> IO ()

qsetLastPos :: QGraphicsSceneMouseEvent a -> ((QPointF t1)) -> IO ()
qsetLastPos x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsSceneMouseEvent_setLastPos cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsSceneMouseEvent_setLastPos" qtc_QGraphicsSceneMouseEvent_setLastPos :: Ptr (TQGraphicsSceneMouseEvent a) -> Ptr (TQPointF t1) -> IO ()

setLastScenePos :: QGraphicsSceneMouseEvent a -> ((PointF)) -> IO ()
setLastScenePos x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPointF x1 $ \cpointf_x1_x cpointf_x1_y -> 
    qtc_QGraphicsSceneMouseEvent_setLastScenePos_qth cobj_x0 cpointf_x1_x cpointf_x1_y 

foreign import ccall "qtc_QGraphicsSceneMouseEvent_setLastScenePos_qth" qtc_QGraphicsSceneMouseEvent_setLastScenePos_qth :: Ptr (TQGraphicsSceneMouseEvent a) -> CDouble -> CDouble -> IO ()

qsetLastScenePos :: QGraphicsSceneMouseEvent a -> ((QPointF t1)) -> IO ()
qsetLastScenePos x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsSceneMouseEvent_setLastScenePos cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsSceneMouseEvent_setLastScenePos" qtc_QGraphicsSceneMouseEvent_setLastScenePos :: Ptr (TQGraphicsSceneMouseEvent a) -> Ptr (TQPointF t1) -> IO ()

setLastScreenPos :: QGraphicsSceneMouseEvent a -> ((Point)) -> IO ()
setLastScreenPos x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QGraphicsSceneMouseEvent_setLastScreenPos_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

foreign import ccall "qtc_QGraphicsSceneMouseEvent_setLastScreenPos_qth" qtc_QGraphicsSceneMouseEvent_setLastScreenPos_qth :: Ptr (TQGraphicsSceneMouseEvent a) -> CInt -> CInt -> IO ()

qsetLastScreenPos :: QGraphicsSceneMouseEvent a -> ((QPoint t1)) -> IO ()
qsetLastScreenPos x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsSceneMouseEvent_setLastScreenPos cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsSceneMouseEvent_setLastScreenPos" qtc_QGraphicsSceneMouseEvent_setLastScreenPos :: Ptr (TQGraphicsSceneMouseEvent a) -> Ptr (TQPoint t1) -> IO ()

instance QsetModifiers (QGraphicsSceneMouseEvent a) ((KeyboardModifiers)) where
 setModifiers x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsSceneMouseEvent_setModifiers cobj_x0 (toCLong $ qFlags_toInt x1)

foreign import ccall "qtc_QGraphicsSceneMouseEvent_setModifiers" qtc_QGraphicsSceneMouseEvent_setModifiers :: Ptr (TQGraphicsSceneMouseEvent a) -> CLong -> IO ()

instance QsetPos (QGraphicsSceneMouseEvent a) ((PointF)) where
 setPos x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPointF x1 $ \cpointf_x1_x cpointf_x1_y -> 
    qtc_QGraphicsSceneMouseEvent_setPos_qth cobj_x0 cpointf_x1_x cpointf_x1_y 

foreign import ccall "qtc_QGraphicsSceneMouseEvent_setPos_qth" qtc_QGraphicsSceneMouseEvent_setPos_qth :: Ptr (TQGraphicsSceneMouseEvent a) -> CDouble -> CDouble -> IO ()

instance QqsetPos (QGraphicsSceneMouseEvent a) ((QPointF t1)) where
 qsetPos x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsSceneMouseEvent_setPos cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsSceneMouseEvent_setPos" qtc_QGraphicsSceneMouseEvent_setPos :: Ptr (TQGraphicsSceneMouseEvent a) -> Ptr (TQPointF t1) -> IO ()

instance QsetScenePos (QGraphicsSceneMouseEvent a) ((PointF)) where
 setScenePos x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPointF x1 $ \cpointf_x1_x cpointf_x1_y -> 
    qtc_QGraphicsSceneMouseEvent_setScenePos_qth cobj_x0 cpointf_x1_x cpointf_x1_y 

foreign import ccall "qtc_QGraphicsSceneMouseEvent_setScenePos_qth" qtc_QGraphicsSceneMouseEvent_setScenePos_qth :: Ptr (TQGraphicsSceneMouseEvent a) -> CDouble -> CDouble -> IO ()

instance QqsetScenePos (QGraphicsSceneMouseEvent a) ((QPointF t1)) where
 qsetScenePos x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsSceneMouseEvent_setScenePos cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsSceneMouseEvent_setScenePos" qtc_QGraphicsSceneMouseEvent_setScenePos :: Ptr (TQGraphicsSceneMouseEvent a) -> Ptr (TQPointF t1) -> IO ()

instance QsetScreenPos (QGraphicsSceneMouseEvent a) ((Point)) where
 setScreenPos x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QGraphicsSceneMouseEvent_setScreenPos_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

foreign import ccall "qtc_QGraphicsSceneMouseEvent_setScreenPos_qth" qtc_QGraphicsSceneMouseEvent_setScreenPos_qth :: Ptr (TQGraphicsSceneMouseEvent a) -> CInt -> CInt -> IO ()

instance QqsetScreenPos (QGraphicsSceneMouseEvent a) ((QPoint t1)) where
 qsetScreenPos x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsSceneMouseEvent_setScreenPos cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsSceneMouseEvent_setScreenPos" qtc_QGraphicsSceneMouseEvent_setScreenPos :: Ptr (TQGraphicsSceneMouseEvent a) -> Ptr (TQPoint t1) -> IO ()

qGraphicsSceneMouseEvent_delete :: QGraphicsSceneMouseEvent a -> IO ()
qGraphicsSceneMouseEvent_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsSceneMouseEvent_delete cobj_x0

foreign import ccall "qtc_QGraphicsSceneMouseEvent_delete" qtc_QGraphicsSceneMouseEvent_delete :: Ptr (TQGraphicsSceneMouseEvent a) -> IO ()

