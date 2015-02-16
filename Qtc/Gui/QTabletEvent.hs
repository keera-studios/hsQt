{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QTabletEvent.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:16
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QTabletEvent (
  QqqTabletEvent(..), QqTabletEvent(..)
  ,QqqTabletEvent_nf(..), QqTabletEvent_nf(..)
  ,hiResGlobalPos, qhiResGlobalPos
  ,hiResGlobalX
  ,hiResGlobalY
  ,pointerType
  ,pressure
  ,rotation
  ,tangentialPressure
  ,uniqueId
  ,xTilt
  ,yTilt
  ,z
  ,qTabletEvent_delete
  )
  where

import Foreign.C.Types
import Qth.ClassTypes.Core
import Qtc.Enums.Base
import Qtc.Enums.Core.Qt
import Qtc.Enums.Gui.QTabletEvent
import Qtc.Enums.Core.QEvent

import Qtc.Classes.Base
import Qtc.Classes.Qccs
import Qtc.Classes.Core
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core
import Qtc.Classes.Gui
import Qtc.ClassTypes.Gui

class QqqTabletEvent x1 where
  qqTabletEvent :: x1 -> IO (QTabletEvent ())

class QqTabletEvent x1 where
  qTabletEvent :: x1 -> IO (QTabletEvent ())

instance QqTabletEvent ((QTabletEvent t1)) where
 qTabletEvent (x1)
  = withQTabletEventResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabletEvent cobj_x1

foreign import ccall "qtc_QTabletEvent" qtc_QTabletEvent :: Ptr (TQTabletEvent t1) -> IO (Ptr (TQTabletEvent ()))

instance QqqTabletEvent ((QEventType, QPoint t2, QPoint t3, QPointF t4, Int, Int, Double, Int, Int, Double, Double, Int, KeyboardModifiers, Int)) where
 qqTabletEvent (x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14)
  = withQTabletEventResult $
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    withObjectPtr x4 $ \cobj_x4 ->
    qtc_QTabletEvent1 (toCLong $ qEnum_toInt x1) cobj_x2 cobj_x3 cobj_x4 (toCInt x5) (toCInt x6) (toCDouble x7) (toCInt x8) (toCInt x9) (toCDouble x10) (toCDouble x11) (toCInt x12) (toCLong $ qFlags_toInt x13) (toCLLong x14)

foreign import ccall "qtc_QTabletEvent1" qtc_QTabletEvent1 :: CLong -> Ptr (TQPoint t2) -> Ptr (TQPoint t3) -> Ptr (TQPointF t4) -> CInt -> CInt -> CDouble -> CInt -> CInt -> CDouble -> CDouble -> CInt -> CLong -> CLLong -> IO (Ptr (TQTabletEvent ()))

instance QqTabletEvent ((QEventType, Point, Point, PointF, Int, Int, Double, Int, Int, Double, Double, Int, KeyboardModifiers, Int)) where
 qTabletEvent (x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14)
  = withQTabletEventResult $
    withCPoint x2 $ \cpoint_x2_x cpoint_x2_y -> 
    withCPoint x3 $ \cpoint_x3_x cpoint_x3_y -> 
    withCPointF x4 $ \cpointf_x4_x cpointf_x4_y -> 
    qtc_QTabletEvent2 (toCLong $ qEnum_toInt x1) cpoint_x2_x cpoint_x2_y  cpoint_x3_x cpoint_x3_y  cpointf_x4_x cpointf_x4_y  (toCInt x5) (toCInt x6) (toCDouble x7) (toCInt x8) (toCInt x9) (toCDouble x10) (toCDouble x11) (toCInt x12) (toCLong $ qFlags_toInt x13) (toCLLong x14)

foreign import ccall "qtc_QTabletEvent2" qtc_QTabletEvent2 :: CLong -> CInt -> CInt -> CInt -> CInt -> CDouble -> CDouble -> CInt -> CInt -> CDouble -> CInt -> CInt -> CDouble -> CDouble -> CInt -> CLong -> CLLong -> IO (Ptr (TQTabletEvent ()))

class QqqTabletEvent_nf x1 where
  qqTabletEvent_nf :: x1 -> IO (QTabletEvent ())

class QqTabletEvent_nf x1 where
  qTabletEvent_nf :: x1 -> IO (QTabletEvent ())

instance QqTabletEvent_nf ((QTabletEvent t1)) where
 qTabletEvent_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabletEvent cobj_x1

instance QqqTabletEvent_nf ((QEventType, QPoint t2, QPoint t3, QPointF t4, Int, Int, Double, Int, Int, Double, Double, Int, KeyboardModifiers, Int)) where
 qqTabletEvent_nf (x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14)
  = withObjectRefResult $
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    withObjectPtr x4 $ \cobj_x4 ->
    qtc_QTabletEvent1 (toCLong $ qEnum_toInt x1) cobj_x2 cobj_x3 cobj_x4 (toCInt x5) (toCInt x6) (toCDouble x7) (toCInt x8) (toCInt x9) (toCDouble x10) (toCDouble x11) (toCInt x12) (toCLong $ qFlags_toInt x13) (toCLLong x14)

instance QqTabletEvent_nf ((QEventType, Point, Point, PointF, Int, Int, Double, Int, Int, Double, Double, Int, KeyboardModifiers, Int)) where
 qTabletEvent_nf (x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14)
  = withObjectRefResult $
    withCPoint x2 $ \cpoint_x2_x cpoint_x2_y -> 
    withCPoint x3 $ \cpoint_x3_x cpoint_x3_y -> 
    withCPointF x4 $ \cpointf_x4_x cpointf_x4_y -> 
    qtc_QTabletEvent2 (toCLong $ qEnum_toInt x1) cpoint_x2_x cpoint_x2_y  cpoint_x3_x cpoint_x3_y  cpointf_x4_x cpointf_x4_y  (toCInt x5) (toCInt x6) (toCDouble x7) (toCInt x8) (toCInt x9) (toCDouble x10) (toCDouble x11) (toCInt x12) (toCLong $ qFlags_toInt x13) (toCLLong x14)

instance Qdevice (QTabletEvent a) (()) (IO (TabletDevice)) where
 device x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabletEvent_device cobj_x0

foreign import ccall "qtc_QTabletEvent_device" qtc_QTabletEvent_device :: Ptr (TQTabletEvent a) -> IO CLong

instance QglobalPos (QTabletEvent a) (()) where
 globalPos x0 ()
  = withPointResult $ \cpoint_ret_x cpoint_ret_y ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabletEvent_globalPos_qth cobj_x0 cpoint_ret_x cpoint_ret_y

foreign import ccall "qtc_QTabletEvent_globalPos_qth" qtc_QTabletEvent_globalPos_qth :: Ptr (TQTabletEvent a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QqglobalPos (QTabletEvent a) (()) where
 qglobalPos x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabletEvent_globalPos cobj_x0

foreign import ccall "qtc_QTabletEvent_globalPos" qtc_QTabletEvent_globalPos :: Ptr (TQTabletEvent a) -> IO (Ptr (TQPoint ()))

instance QglobalX (QTabletEvent a) (()) where
 globalX x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabletEvent_globalX cobj_x0

foreign import ccall "qtc_QTabletEvent_globalX" qtc_QTabletEvent_globalX :: Ptr (TQTabletEvent a) -> IO CInt

instance QglobalY (QTabletEvent a) (()) where
 globalY x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabletEvent_globalY cobj_x0

foreign import ccall "qtc_QTabletEvent_globalY" qtc_QTabletEvent_globalY :: Ptr (TQTabletEvent a) -> IO CInt

hiResGlobalPos :: QTabletEvent a -> (()) -> IO (PointF)
hiResGlobalPos x0 ()
  = withPointFResult $ \cpointf_ret_x cpointf_ret_y ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabletEvent_hiResGlobalPos_qth cobj_x0 cpointf_ret_x cpointf_ret_y

foreign import ccall "qtc_QTabletEvent_hiResGlobalPos_qth" qtc_QTabletEvent_hiResGlobalPos_qth :: Ptr (TQTabletEvent a) -> Ptr CDouble -> Ptr CDouble -> IO ()

qhiResGlobalPos :: QTabletEvent a -> (()) -> IO (QPointF ())
qhiResGlobalPos x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabletEvent_hiResGlobalPos cobj_x0

foreign import ccall "qtc_QTabletEvent_hiResGlobalPos" qtc_QTabletEvent_hiResGlobalPos :: Ptr (TQTabletEvent a) -> IO (Ptr (TQPointF ()))

hiResGlobalX :: QTabletEvent a -> (()) -> IO (Double)
hiResGlobalX x0 ()
  = withDoubleResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabletEvent_hiResGlobalX cobj_x0

foreign import ccall "qtc_QTabletEvent_hiResGlobalX" qtc_QTabletEvent_hiResGlobalX :: Ptr (TQTabletEvent a) -> IO CDouble

hiResGlobalY :: QTabletEvent a -> (()) -> IO (Double)
hiResGlobalY x0 ()
  = withDoubleResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabletEvent_hiResGlobalY cobj_x0

foreign import ccall "qtc_QTabletEvent_hiResGlobalY" qtc_QTabletEvent_hiResGlobalY :: Ptr (TQTabletEvent a) -> IO CDouble

pointerType :: QTabletEvent a -> (()) -> IO (PointerType)
pointerType x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabletEvent_pointerType cobj_x0

foreign import ccall "qtc_QTabletEvent_pointerType" qtc_QTabletEvent_pointerType :: Ptr (TQTabletEvent a) -> IO CLong

instance Qpos (QTabletEvent a) (()) (IO (Point)) where
 pos x0 ()
  = withPointResult $ \cpoint_ret_x cpoint_ret_y ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabletEvent_pos_qth cobj_x0 cpoint_ret_x cpoint_ret_y

foreign import ccall "qtc_QTabletEvent_pos_qth" qtc_QTabletEvent_pos_qth :: Ptr (TQTabletEvent a) -> Ptr CInt -> Ptr CInt -> IO ()

instance Qqpos (QTabletEvent a) (()) (IO (QPoint ())) where
 qpos x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabletEvent_pos cobj_x0

foreign import ccall "qtc_QTabletEvent_pos" qtc_QTabletEvent_pos :: Ptr (TQTabletEvent a) -> IO (Ptr (TQPoint ()))

pressure :: QTabletEvent a -> (()) -> IO (Double)
pressure x0 ()
  = withDoubleResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabletEvent_pressure cobj_x0

foreign import ccall "qtc_QTabletEvent_pressure" qtc_QTabletEvent_pressure :: Ptr (TQTabletEvent a) -> IO CDouble

rotation :: QTabletEvent a -> (()) -> IO (Double)
rotation x0 ()
  = withDoubleResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabletEvent_rotation cobj_x0

foreign import ccall "qtc_QTabletEvent_rotation" qtc_QTabletEvent_rotation :: Ptr (TQTabletEvent a) -> IO CDouble

tangentialPressure :: QTabletEvent a -> (()) -> IO (Double)
tangentialPressure x0 ()
  = withDoubleResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabletEvent_tangentialPressure cobj_x0

foreign import ccall "qtc_QTabletEvent_tangentialPressure" qtc_QTabletEvent_tangentialPressure :: Ptr (TQTabletEvent a) -> IO CDouble

uniqueId :: QTabletEvent a -> (()) -> IO (Int)
uniqueId x0 ()
  = withLongLongResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabletEvent_uniqueId cobj_x0

foreign import ccall "qtc_QTabletEvent_uniqueId" qtc_QTabletEvent_uniqueId :: Ptr (TQTabletEvent a) -> IO CLLong

instance Qqx (QTabletEvent a) (()) (IO (Int)) where
 qx x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabletEvent_x cobj_x0

foreign import ccall "qtc_QTabletEvent_x" qtc_QTabletEvent_x :: Ptr (TQTabletEvent a) -> IO CInt

xTilt :: QTabletEvent a -> (()) -> IO (Int)
xTilt x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabletEvent_xTilt cobj_x0

foreign import ccall "qtc_QTabletEvent_xTilt" qtc_QTabletEvent_xTilt :: Ptr (TQTabletEvent a) -> IO CInt

instance Qqy (QTabletEvent a) (()) (IO (Int)) where
 qy x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabletEvent_y cobj_x0

foreign import ccall "qtc_QTabletEvent_y" qtc_QTabletEvent_y :: Ptr (TQTabletEvent a) -> IO CInt

yTilt :: QTabletEvent a -> (()) -> IO (Int)
yTilt x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabletEvent_yTilt cobj_x0

foreign import ccall "qtc_QTabletEvent_yTilt" qtc_QTabletEvent_yTilt :: Ptr (TQTabletEvent a) -> IO CInt

z :: QTabletEvent a -> (()) -> IO (Int)
z x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabletEvent_z cobj_x0

foreign import ccall "qtc_QTabletEvent_z" qtc_QTabletEvent_z :: Ptr (TQTabletEvent a) -> IO CInt

qTabletEvent_delete :: QTabletEvent a -> IO ()
qTabletEvent_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabletEvent_delete cobj_x0

foreign import ccall "qtc_QTabletEvent_delete" qtc_QTabletEvent_delete :: Ptr (TQTabletEvent a) -> IO ()

