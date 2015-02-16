{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QWheelEvent.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:16
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QWheelEvent (
  QqqWheelEvent(..), QqWheelEvent(..)
  ,QqqWheelEvent_nf(..), QqWheelEvent_nf(..)
  ,qWheelEvent_delete
  )
  where

import Foreign.C.Types
import Qth.ClassTypes.Core
import Qtc.Enums.Base
import Qtc.Enums.Core.Qt

import Qtc.Classes.Base
import Qtc.Classes.Qccs
import Qtc.Classes.Core
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core
import Qtc.Classes.Gui
import Qtc.ClassTypes.Gui

class QqqWheelEvent x1 where
  qqWheelEvent :: x1 -> IO (QWheelEvent ())

class QqWheelEvent x1 where
  qWheelEvent :: x1 -> IO (QWheelEvent ())

instance QqWheelEvent ((QWheelEvent t1)) where
 qWheelEvent (x1)
  = withQWheelEventResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWheelEvent cobj_x1

foreign import ccall "qtc_QWheelEvent" qtc_QWheelEvent :: Ptr (TQWheelEvent t1) -> IO (Ptr (TQWheelEvent ()))

instance QqqWheelEvent ((QPoint t1, Int, MouseButtons, KeyboardModifiers)) where
 qqWheelEvent (x1, x2, x3, x4)
  = withQWheelEventResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWheelEvent1 cobj_x1 (toCInt x2) (toCLong $ qFlags_toInt x3) (toCLong $ qFlags_toInt x4)

foreign import ccall "qtc_QWheelEvent1" qtc_QWheelEvent1 :: Ptr (TQPoint t1) -> CInt -> CLong -> CLong -> IO (Ptr (TQWheelEvent ()))

instance QqWheelEvent ((Point, Int, MouseButtons, KeyboardModifiers)) where
 qWheelEvent (x1, x2, x3, x4)
  = withQWheelEventResult $
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QWheelEvent2 cpoint_x1_x cpoint_x1_y  (toCInt x2) (toCLong $ qFlags_toInt x3) (toCLong $ qFlags_toInt x4)

foreign import ccall "qtc_QWheelEvent2" qtc_QWheelEvent2 :: CInt -> CInt -> CInt -> CLong -> CLong -> IO (Ptr (TQWheelEvent ()))

instance QqqWheelEvent ((QPoint t1, QPoint t2, Int, MouseButtons, KeyboardModifiers)) where
 qqWheelEvent (x1, x2, x3, x4, x5)
  = withQWheelEventResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QWheelEvent3 cobj_x1 cobj_x2 (toCInt x3) (toCLong $ qFlags_toInt x4) (toCLong $ qFlags_toInt x5)

foreign import ccall "qtc_QWheelEvent3" qtc_QWheelEvent3 :: Ptr (TQPoint t1) -> Ptr (TQPoint t2) -> CInt -> CLong -> CLong -> IO (Ptr (TQWheelEvent ()))

instance QqWheelEvent ((Point, Point, Int, MouseButtons, KeyboardModifiers)) where
 qWheelEvent (x1, x2, x3, x4, x5)
  = withQWheelEventResult $
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    withCPoint x2 $ \cpoint_x2_x cpoint_x2_y -> 
    qtc_QWheelEvent4 cpoint_x1_x cpoint_x1_y  cpoint_x2_x cpoint_x2_y  (toCInt x3) (toCLong $ qFlags_toInt x4) (toCLong $ qFlags_toInt x5)

foreign import ccall "qtc_QWheelEvent4" qtc_QWheelEvent4 :: CInt -> CInt -> CInt -> CInt -> CInt -> CLong -> CLong -> IO (Ptr (TQWheelEvent ()))

instance QqqWheelEvent ((QPoint t1, Int, MouseButtons, KeyboardModifiers, QtOrientation)) where
 qqWheelEvent (x1, x2, x3, x4, x5)
  = withQWheelEventResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWheelEvent5 cobj_x1 (toCInt x2) (toCLong $ qFlags_toInt x3) (toCLong $ qFlags_toInt x4) (toCLong $ qEnum_toInt x5)

foreign import ccall "qtc_QWheelEvent5" qtc_QWheelEvent5 :: Ptr (TQPoint t1) -> CInt -> CLong -> CLong -> CLong -> IO (Ptr (TQWheelEvent ()))

instance QqWheelEvent ((Point, Int, MouseButtons, KeyboardModifiers, QtOrientation)) where
 qWheelEvent (x1, x2, x3, x4, x5)
  = withQWheelEventResult $
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QWheelEvent6 cpoint_x1_x cpoint_x1_y  (toCInt x2) (toCLong $ qFlags_toInt x3) (toCLong $ qFlags_toInt x4) (toCLong $ qEnum_toInt x5)

foreign import ccall "qtc_QWheelEvent6" qtc_QWheelEvent6 :: CInt -> CInt -> CInt -> CLong -> CLong -> CLong -> IO (Ptr (TQWheelEvent ()))

instance QqqWheelEvent ((QPoint t1, QPoint t2, Int, MouseButtons, KeyboardModifiers, QtOrientation)) where
 qqWheelEvent (x1, x2, x3, x4, x5, x6)
  = withQWheelEventResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QWheelEvent7 cobj_x1 cobj_x2 (toCInt x3) (toCLong $ qFlags_toInt x4) (toCLong $ qFlags_toInt x5) (toCLong $ qEnum_toInt x6)

foreign import ccall "qtc_QWheelEvent7" qtc_QWheelEvent7 :: Ptr (TQPoint t1) -> Ptr (TQPoint t2) -> CInt -> CLong -> CLong -> CLong -> IO (Ptr (TQWheelEvent ()))

instance QqWheelEvent ((Point, Point, Int, MouseButtons, KeyboardModifiers, QtOrientation)) where
 qWheelEvent (x1, x2, x3, x4, x5, x6)
  = withQWheelEventResult $
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    withCPoint x2 $ \cpoint_x2_x cpoint_x2_y -> 
    qtc_QWheelEvent8 cpoint_x1_x cpoint_x1_y  cpoint_x2_x cpoint_x2_y  (toCInt x3) (toCLong $ qFlags_toInt x4) (toCLong $ qFlags_toInt x5) (toCLong $ qEnum_toInt x6)

foreign import ccall "qtc_QWheelEvent8" qtc_QWheelEvent8 :: CInt -> CInt -> CInt -> CInt -> CInt -> CLong -> CLong -> CLong -> IO (Ptr (TQWheelEvent ()))

class QqqWheelEvent_nf x1 where
  qqWheelEvent_nf :: x1 -> IO (QWheelEvent ())

class QqWheelEvent_nf x1 where
  qWheelEvent_nf :: x1 -> IO (QWheelEvent ())

instance QqWheelEvent_nf ((QWheelEvent t1)) where
 qWheelEvent_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWheelEvent cobj_x1

instance QqqWheelEvent_nf ((QPoint t1, Int, MouseButtons, KeyboardModifiers)) where
 qqWheelEvent_nf (x1, x2, x3, x4)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWheelEvent1 cobj_x1 (toCInt x2) (toCLong $ qFlags_toInt x3) (toCLong $ qFlags_toInt x4)

instance QqWheelEvent_nf ((Point, Int, MouseButtons, KeyboardModifiers)) where
 qWheelEvent_nf (x1, x2, x3, x4)
  = withObjectRefResult $
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QWheelEvent2 cpoint_x1_x cpoint_x1_y  (toCInt x2) (toCLong $ qFlags_toInt x3) (toCLong $ qFlags_toInt x4)

instance QqqWheelEvent_nf ((QPoint t1, QPoint t2, Int, MouseButtons, KeyboardModifiers)) where
 qqWheelEvent_nf (x1, x2, x3, x4, x5)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QWheelEvent3 cobj_x1 cobj_x2 (toCInt x3) (toCLong $ qFlags_toInt x4) (toCLong $ qFlags_toInt x5)

instance QqWheelEvent_nf ((Point, Point, Int, MouseButtons, KeyboardModifiers)) where
 qWheelEvent_nf (x1, x2, x3, x4, x5)
  = withObjectRefResult $
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    withCPoint x2 $ \cpoint_x2_x cpoint_x2_y -> 
    qtc_QWheelEvent4 cpoint_x1_x cpoint_x1_y  cpoint_x2_x cpoint_x2_y  (toCInt x3) (toCLong $ qFlags_toInt x4) (toCLong $ qFlags_toInt x5)

instance QqqWheelEvent_nf ((QPoint t1, Int, MouseButtons, KeyboardModifiers, QtOrientation)) where
 qqWheelEvent_nf (x1, x2, x3, x4, x5)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWheelEvent5 cobj_x1 (toCInt x2) (toCLong $ qFlags_toInt x3) (toCLong $ qFlags_toInt x4) (toCLong $ qEnum_toInt x5)

instance QqWheelEvent_nf ((Point, Int, MouseButtons, KeyboardModifiers, QtOrientation)) where
 qWheelEvent_nf (x1, x2, x3, x4, x5)
  = withObjectRefResult $
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QWheelEvent6 cpoint_x1_x cpoint_x1_y  (toCInt x2) (toCLong $ qFlags_toInt x3) (toCLong $ qFlags_toInt x4) (toCLong $ qEnum_toInt x5)

instance QqqWheelEvent_nf ((QPoint t1, QPoint t2, Int, MouseButtons, KeyboardModifiers, QtOrientation)) where
 qqWheelEvent_nf (x1, x2, x3, x4, x5, x6)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QWheelEvent7 cobj_x1 cobj_x2 (toCInt x3) (toCLong $ qFlags_toInt x4) (toCLong $ qFlags_toInt x5) (toCLong $ qEnum_toInt x6)

instance QqWheelEvent_nf ((Point, Point, Int, MouseButtons, KeyboardModifiers, QtOrientation)) where
 qWheelEvent_nf (x1, x2, x3, x4, x5, x6)
  = withObjectRefResult $
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    withCPoint x2 $ \cpoint_x2_x cpoint_x2_y -> 
    qtc_QWheelEvent8 cpoint_x1_x cpoint_x1_y  cpoint_x2_x cpoint_x2_y  (toCInt x3) (toCLong $ qFlags_toInt x4) (toCLong $ qFlags_toInt x5) (toCLong $ qEnum_toInt x6)

instance Qbuttons (QWheelEvent a) (()) (IO (MouseButtons)) where
 buttons x0 ()
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWheelEvent_buttons cobj_x0

foreign import ccall "qtc_QWheelEvent_buttons" qtc_QWheelEvent_buttons :: Ptr (TQWheelEvent a) -> IO CLong

instance Qdelta (QWheelEvent a) (()) where
 delta x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWheelEvent_delta cobj_x0

foreign import ccall "qtc_QWheelEvent_delta" qtc_QWheelEvent_delta :: Ptr (TQWheelEvent a) -> IO CInt

instance QglobalPos (QWheelEvent a) (()) where
 globalPos x0 ()
  = withPointResult $ \cpoint_ret_x cpoint_ret_y ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWheelEvent_globalPos_qth cobj_x0 cpoint_ret_x cpoint_ret_y

foreign import ccall "qtc_QWheelEvent_globalPos_qth" qtc_QWheelEvent_globalPos_qth :: Ptr (TQWheelEvent a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QqglobalPos (QWheelEvent a) (()) where
 qglobalPos x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWheelEvent_globalPos cobj_x0

foreign import ccall "qtc_QWheelEvent_globalPos" qtc_QWheelEvent_globalPos :: Ptr (TQWheelEvent a) -> IO (Ptr (TQPoint ()))

instance QglobalX (QWheelEvent a) (()) where
 globalX x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWheelEvent_globalX cobj_x0

foreign import ccall "qtc_QWheelEvent_globalX" qtc_QWheelEvent_globalX :: Ptr (TQWheelEvent a) -> IO CInt

instance QglobalY (QWheelEvent a) (()) where
 globalY x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWheelEvent_globalY cobj_x0

foreign import ccall "qtc_QWheelEvent_globalY" qtc_QWheelEvent_globalY :: Ptr (TQWheelEvent a) -> IO CInt

instance Qorientation (QWheelEvent a) (()) (IO (QtOrientation)) where
 orientation x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWheelEvent_orientation cobj_x0

foreign import ccall "qtc_QWheelEvent_orientation" qtc_QWheelEvent_orientation :: Ptr (TQWheelEvent a) -> IO CLong

instance Qpos (QWheelEvent a) (()) (IO (Point)) where
 pos x0 ()
  = withPointResult $ \cpoint_ret_x cpoint_ret_y ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWheelEvent_pos_qth cobj_x0 cpoint_ret_x cpoint_ret_y

foreign import ccall "qtc_QWheelEvent_pos_qth" qtc_QWheelEvent_pos_qth :: Ptr (TQWheelEvent a) -> Ptr CInt -> Ptr CInt -> IO ()

instance Qqpos (QWheelEvent a) (()) (IO (QPoint ())) where
 qpos x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWheelEvent_pos cobj_x0

foreign import ccall "qtc_QWheelEvent_pos" qtc_QWheelEvent_pos :: Ptr (TQWheelEvent a) -> IO (Ptr (TQPoint ()))

instance Qqx (QWheelEvent a) (()) (IO (Int)) where
 qx x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWheelEvent_x cobj_x0

foreign import ccall "qtc_QWheelEvent_x" qtc_QWheelEvent_x :: Ptr (TQWheelEvent a) -> IO CInt

instance Qqy (QWheelEvent a) (()) (IO (Int)) where
 qy x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWheelEvent_y cobj_x0

foreign import ccall "qtc_QWheelEvent_y" qtc_QWheelEvent_y :: Ptr (TQWheelEvent a) -> IO CInt

qWheelEvent_delete :: QWheelEvent a -> IO ()
qWheelEvent_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWheelEvent_delete cobj_x0

foreign import ccall "qtc_QWheelEvent_delete" qtc_QWheelEvent_delete :: Ptr (TQWheelEvent a) -> IO ()

