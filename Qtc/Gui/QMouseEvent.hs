{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QMouseEvent.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:23
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QMouseEvent (
  QqqMouseEvent(..), QqMouseEvent(..)
  ,QqqMouseEvent_nf(..), QqMouseEvent_nf(..)
  ,qMouseEvent_delete
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

class QqqMouseEvent x1 where
  qqMouseEvent :: x1 -> IO (QMouseEvent ())

class QqMouseEvent x1 where
  qMouseEvent :: x1 -> IO (QMouseEvent ())

instance QqMouseEvent ((QMouseEvent t1)) where
 qMouseEvent (x1)
  = withQMouseEventResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMouseEvent cobj_x1

foreign import ccall "qtc_QMouseEvent" qtc_QMouseEvent :: Ptr (TQMouseEvent t1) -> IO (Ptr (TQMouseEvent ()))

instance QqqMouseEvent ((QEventType, QPoint t2, MouseButton, MouseButtons, KeyboardModifiers)) where
 qqMouseEvent (x1, x2, x3, x4, x5)
  = withQMouseEventResult $
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QMouseEvent1 (toCLong $ qEnum_toInt x1) cobj_x2 (toCLong $ qEnum_toInt x3) (toCLong $ qFlags_toInt x4) (toCLong $ qFlags_toInt x5)

foreign import ccall "qtc_QMouseEvent1" qtc_QMouseEvent1 :: CLong -> Ptr (TQPoint t2) -> CLong -> CLong -> CLong -> IO (Ptr (TQMouseEvent ()))

instance QqMouseEvent ((QEventType, Point, MouseButton, MouseButtons, KeyboardModifiers)) where
 qMouseEvent (x1, x2, x3, x4, x5)
  = withQMouseEventResult $
    withCPoint x2 $ \cpoint_x2_x cpoint_x2_y -> 
    qtc_QMouseEvent2 (toCLong $ qEnum_toInt x1) cpoint_x2_x cpoint_x2_y  (toCLong $ qEnum_toInt x3) (toCLong $ qFlags_toInt x4) (toCLong $ qFlags_toInt x5)

foreign import ccall "qtc_QMouseEvent2" qtc_QMouseEvent2 :: CLong -> CInt -> CInt -> CLong -> CLong -> CLong -> IO (Ptr (TQMouseEvent ()))

instance QqqMouseEvent ((QEventType, QPoint t2, QPoint t3, MouseButton, MouseButtons, KeyboardModifiers)) where
 qqMouseEvent (x1, x2, x3, x4, x5, x6)
  = withQMouseEventResult $
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QMouseEvent3 (toCLong $ qEnum_toInt x1) cobj_x2 cobj_x3 (toCLong $ qEnum_toInt x4) (toCLong $ qFlags_toInt x5) (toCLong $ qFlags_toInt x6)

foreign import ccall "qtc_QMouseEvent3" qtc_QMouseEvent3 :: CLong -> Ptr (TQPoint t2) -> Ptr (TQPoint t3) -> CLong -> CLong -> CLong -> IO (Ptr (TQMouseEvent ()))

instance QqMouseEvent ((QEventType, Point, Point, MouseButton, MouseButtons, KeyboardModifiers)) where
 qMouseEvent (x1, x2, x3, x4, x5, x6)
  = withQMouseEventResult $
    withCPoint x2 $ \cpoint_x2_x cpoint_x2_y -> 
    withCPoint x3 $ \cpoint_x3_x cpoint_x3_y -> 
    qtc_QMouseEvent4 (toCLong $ qEnum_toInt x1) cpoint_x2_x cpoint_x2_y  cpoint_x3_x cpoint_x3_y  (toCLong $ qEnum_toInt x4) (toCLong $ qFlags_toInt x5) (toCLong $ qFlags_toInt x6)

foreign import ccall "qtc_QMouseEvent4" qtc_QMouseEvent4 :: CLong -> CInt -> CInt -> CInt -> CInt -> CLong -> CLong -> CLong -> IO (Ptr (TQMouseEvent ()))

class QqqMouseEvent_nf x1 where
  qqMouseEvent_nf :: x1 -> IO (QMouseEvent ())

class QqMouseEvent_nf x1 where
  qMouseEvent_nf :: x1 -> IO (QMouseEvent ())

instance QqMouseEvent_nf ((QMouseEvent t1)) where
 qMouseEvent_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMouseEvent cobj_x1

instance QqqMouseEvent_nf ((QEventType, QPoint t2, MouseButton, MouseButtons, KeyboardModifiers)) where
 qqMouseEvent_nf (x1, x2, x3, x4, x5)
  = withObjectRefResult $
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QMouseEvent1 (toCLong $ qEnum_toInt x1) cobj_x2 (toCLong $ qEnum_toInt x3) (toCLong $ qFlags_toInt x4) (toCLong $ qFlags_toInt x5)

instance QqMouseEvent_nf ((QEventType, Point, MouseButton, MouseButtons, KeyboardModifiers)) where
 qMouseEvent_nf (x1, x2, x3, x4, x5)
  = withObjectRefResult $
    withCPoint x2 $ \cpoint_x2_x cpoint_x2_y -> 
    qtc_QMouseEvent2 (toCLong $ qEnum_toInt x1) cpoint_x2_x cpoint_x2_y  (toCLong $ qEnum_toInt x3) (toCLong $ qFlags_toInt x4) (toCLong $ qFlags_toInt x5)

instance QqqMouseEvent_nf ((QEventType, QPoint t2, QPoint t3, MouseButton, MouseButtons, KeyboardModifiers)) where
 qqMouseEvent_nf (x1, x2, x3, x4, x5, x6)
  = withObjectRefResult $
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QMouseEvent3 (toCLong $ qEnum_toInt x1) cobj_x2 cobj_x3 (toCLong $ qEnum_toInt x4) (toCLong $ qFlags_toInt x5) (toCLong $ qFlags_toInt x6)

instance QqMouseEvent_nf ((QEventType, Point, Point, MouseButton, MouseButtons, KeyboardModifiers)) where
 qMouseEvent_nf (x1, x2, x3, x4, x5, x6)
  = withObjectRefResult $
    withCPoint x2 $ \cpoint_x2_x cpoint_x2_y -> 
    withCPoint x3 $ \cpoint_x3_x cpoint_x3_y -> 
    qtc_QMouseEvent4 (toCLong $ qEnum_toInt x1) cpoint_x2_x cpoint_x2_y  cpoint_x3_x cpoint_x3_y  (toCLong $ qEnum_toInt x4) (toCLong $ qFlags_toInt x5) (toCLong $ qFlags_toInt x6)

instance Qbutton (QMouseEvent a) (()) (IO (MouseButton)) where
 button x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMouseEvent_button cobj_x0

foreign import ccall "qtc_QMouseEvent_button" qtc_QMouseEvent_button :: Ptr (TQMouseEvent a) -> IO CLong

instance Qbuttons (QMouseEvent a) (()) (IO (MouseButtons)) where
 buttons x0 ()
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMouseEvent_buttons cobj_x0

foreign import ccall "qtc_QMouseEvent_buttons" qtc_QMouseEvent_buttons :: Ptr (TQMouseEvent a) -> IO CLong

instance QglobalPos (QMouseEvent a) (()) where
 globalPos x0 ()
  = withPointResult $ \cpoint_ret_x cpoint_ret_y ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMouseEvent_globalPos_qth cobj_x0 cpoint_ret_x cpoint_ret_y

foreign import ccall "qtc_QMouseEvent_globalPos_qth" qtc_QMouseEvent_globalPos_qth :: Ptr (TQMouseEvent a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QqglobalPos (QMouseEvent a) (()) where
 qglobalPos x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMouseEvent_globalPos cobj_x0

foreign import ccall "qtc_QMouseEvent_globalPos" qtc_QMouseEvent_globalPos :: Ptr (TQMouseEvent a) -> IO (Ptr (TQPoint ()))

instance QglobalX (QMouseEvent a) (()) where
 globalX x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMouseEvent_globalX cobj_x0

foreign import ccall "qtc_QMouseEvent_globalX" qtc_QMouseEvent_globalX :: Ptr (TQMouseEvent a) -> IO CInt

instance QglobalY (QMouseEvent a) (()) where
 globalY x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMouseEvent_globalY cobj_x0

foreign import ccall "qtc_QMouseEvent_globalY" qtc_QMouseEvent_globalY :: Ptr (TQMouseEvent a) -> IO CInt

instance Qpos (QMouseEvent a) (()) (IO (Point)) where
 pos x0 ()
  = withPointResult $ \cpoint_ret_x cpoint_ret_y ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMouseEvent_pos_qth cobj_x0 cpoint_ret_x cpoint_ret_y

foreign import ccall "qtc_QMouseEvent_pos_qth" qtc_QMouseEvent_pos_qth :: Ptr (TQMouseEvent a) -> Ptr CInt -> Ptr CInt -> IO ()

instance Qqpos (QMouseEvent a) (()) (IO (QPoint ())) where
 qpos x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMouseEvent_pos cobj_x0

foreign import ccall "qtc_QMouseEvent_pos" qtc_QMouseEvent_pos :: Ptr (TQMouseEvent a) -> IO (Ptr (TQPoint ()))

instance Qqx (QMouseEvent a) (()) (IO (Int)) where
 qx x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMouseEvent_x cobj_x0

foreign import ccall "qtc_QMouseEvent_x" qtc_QMouseEvent_x :: Ptr (TQMouseEvent a) -> IO CInt

instance Qqy (QMouseEvent a) (()) (IO (Int)) where
 qy x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMouseEvent_y cobj_x0

foreign import ccall "qtc_QMouseEvent_y" qtc_QMouseEvent_y :: Ptr (TQMouseEvent a) -> IO CInt

qMouseEvent_delete :: QMouseEvent a -> IO ()
qMouseEvent_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMouseEvent_delete cobj_x0

foreign import ccall "qtc_QMouseEvent_delete" qtc_QMouseEvent_delete :: Ptr (TQMouseEvent a) -> IO ()

