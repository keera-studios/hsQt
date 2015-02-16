{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QDragMoveEvent.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:20
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QDragMoveEvent (
  QqqDragMoveEvent(..), QqDragMoveEvent(..)
  ,QqqDragMoveEvent_nf(..), QqDragMoveEvent_nf(..)
  ,qaccept
  ,qanswerRect, answerRect
  ,qignore
  ,qDragMoveEvent_delete
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

class QqqDragMoveEvent x1 where
  qqDragMoveEvent :: x1 -> IO (QDragMoveEvent ())

class QqDragMoveEvent x1 where
  qDragMoveEvent :: x1 -> IO (QDragMoveEvent ())

instance QqDragMoveEvent ((QDragMoveEvent t1)) where
 qDragMoveEvent (x1)
  = withQDragMoveEventResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDragMoveEvent cobj_x1

foreign import ccall "qtc_QDragMoveEvent" qtc_QDragMoveEvent :: Ptr (TQDragMoveEvent t1) -> IO (Ptr (TQDragMoveEvent ()))

instance QqqDragMoveEvent ((QPoint t1, DropActions, QMimeData t3, MouseButtons, KeyboardModifiers)) where
 qqDragMoveEvent (x1, x2, x3, x4, x5)
  = withQDragMoveEventResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QDragMoveEvent1 cobj_x1 (toCLong $ qFlags_toInt x2) cobj_x3 (toCLong $ qFlags_toInt x4) (toCLong $ qFlags_toInt x5)

foreign import ccall "qtc_QDragMoveEvent1" qtc_QDragMoveEvent1 :: Ptr (TQPoint t1) -> CLong -> Ptr (TQMimeData t3) -> CLong -> CLong -> IO (Ptr (TQDragMoveEvent ()))

instance QqDragMoveEvent ((Point, DropActions, QMimeData t3, MouseButtons, KeyboardModifiers)) where
 qDragMoveEvent (x1, x2, x3, x4, x5)
  = withQDragMoveEventResult $
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QDragMoveEvent2 cpoint_x1_x cpoint_x1_y  (toCLong $ qFlags_toInt x2) cobj_x3 (toCLong $ qFlags_toInt x4) (toCLong $ qFlags_toInt x5)

foreign import ccall "qtc_QDragMoveEvent2" qtc_QDragMoveEvent2 :: CInt -> CInt -> CLong -> Ptr (TQMimeData t3) -> CLong -> CLong -> IO (Ptr (TQDragMoveEvent ()))

instance QqqDragMoveEvent ((QPoint t1, DropActions, QMimeData t3, MouseButtons, KeyboardModifiers, QEventType)) where
 qqDragMoveEvent (x1, x2, x3, x4, x5, x6)
  = withQDragMoveEventResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QDragMoveEvent3 cobj_x1 (toCLong $ qFlags_toInt x2) cobj_x3 (toCLong $ qFlags_toInt x4) (toCLong $ qFlags_toInt x5) (toCLong $ qEnum_toInt x6)

foreign import ccall "qtc_QDragMoveEvent3" qtc_QDragMoveEvent3 :: Ptr (TQPoint t1) -> CLong -> Ptr (TQMimeData t3) -> CLong -> CLong -> CLong -> IO (Ptr (TQDragMoveEvent ()))

instance QqDragMoveEvent ((Point, DropActions, QMimeData t3, MouseButtons, KeyboardModifiers, QEventType)) where
 qDragMoveEvent (x1, x2, x3, x4, x5, x6)
  = withQDragMoveEventResult $
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QDragMoveEvent4 cpoint_x1_x cpoint_x1_y  (toCLong $ qFlags_toInt x2) cobj_x3 (toCLong $ qFlags_toInt x4) (toCLong $ qFlags_toInt x5) (toCLong $ qEnum_toInt x6)

foreign import ccall "qtc_QDragMoveEvent4" qtc_QDragMoveEvent4 :: CInt -> CInt -> CLong -> Ptr (TQMimeData t3) -> CLong -> CLong -> CLong -> IO (Ptr (TQDragMoveEvent ()))

class QqqDragMoveEvent_nf x1 where
  qqDragMoveEvent_nf :: x1 -> IO (QDragMoveEvent ())

class QqDragMoveEvent_nf x1 where
  qDragMoveEvent_nf :: x1 -> IO (QDragMoveEvent ())

instance QqDragMoveEvent_nf ((QDragMoveEvent t1)) where
 qDragMoveEvent_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDragMoveEvent cobj_x1

instance QqqDragMoveEvent_nf ((QPoint t1, DropActions, QMimeData t3, MouseButtons, KeyboardModifiers)) where
 qqDragMoveEvent_nf (x1, x2, x3, x4, x5)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QDragMoveEvent1 cobj_x1 (toCLong $ qFlags_toInt x2) cobj_x3 (toCLong $ qFlags_toInt x4) (toCLong $ qFlags_toInt x5)

instance QqDragMoveEvent_nf ((Point, DropActions, QMimeData t3, MouseButtons, KeyboardModifiers)) where
 qDragMoveEvent_nf (x1, x2, x3, x4, x5)
  = withObjectRefResult $
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QDragMoveEvent2 cpoint_x1_x cpoint_x1_y  (toCLong $ qFlags_toInt x2) cobj_x3 (toCLong $ qFlags_toInt x4) (toCLong $ qFlags_toInt x5)

instance QqqDragMoveEvent_nf ((QPoint t1, DropActions, QMimeData t3, MouseButtons, KeyboardModifiers, QEventType)) where
 qqDragMoveEvent_nf (x1, x2, x3, x4, x5, x6)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QDragMoveEvent3 cobj_x1 (toCLong $ qFlags_toInt x2) cobj_x3 (toCLong $ qFlags_toInt x4) (toCLong $ qFlags_toInt x5) (toCLong $ qEnum_toInt x6)

instance QqDragMoveEvent_nf ((Point, DropActions, QMimeData t3, MouseButtons, KeyboardModifiers, QEventType)) where
 qDragMoveEvent_nf (x1, x2, x3, x4, x5, x6)
  = withObjectRefResult $
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QDragMoveEvent4 cpoint_x1_x cpoint_x1_y  (toCLong $ qFlags_toInt x2) cobj_x3 (toCLong $ qFlags_toInt x4) (toCLong $ qFlags_toInt x5) (toCLong $ qEnum_toInt x6)

instance Qaccept (QDragMoveEvent a) (()) where
 accept x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDragMoveEvent_accept cobj_x0

foreign import ccall "qtc_QDragMoveEvent_accept" qtc_QDragMoveEvent_accept :: Ptr (TQDragMoveEvent a) -> IO ()

qaccept :: QDragMoveEvent a -> ((QRect t1)) -> IO ()
qaccept x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDragMoveEvent_accept1 cobj_x0 cobj_x1

foreign import ccall "qtc_QDragMoveEvent_accept1" qtc_QDragMoveEvent_accept1 :: Ptr (TQDragMoveEvent a) -> Ptr (TQRect t1) -> IO ()

instance Qaccept (QDragMoveEvent a) ((Rect)) where
 accept x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QDragMoveEvent_accept1_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

foreign import ccall "qtc_QDragMoveEvent_accept1_qth" qtc_QDragMoveEvent_accept1_qth :: Ptr (TQDragMoveEvent a) -> CInt -> CInt -> CInt -> CInt -> IO ()

qanswerRect :: QDragMoveEvent a -> (()) -> IO (QRect ())
qanswerRect x0 ()
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDragMoveEvent_answerRect cobj_x0

foreign import ccall "qtc_QDragMoveEvent_answerRect" qtc_QDragMoveEvent_answerRect :: Ptr (TQDragMoveEvent a) -> IO (Ptr (TQRect ()))

answerRect :: QDragMoveEvent a -> (()) -> IO (Rect)
answerRect x0 ()
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDragMoveEvent_answerRect_qth cobj_x0 crect_ret_x crect_ret_y crect_ret_w crect_ret_h

foreign import ccall "qtc_QDragMoveEvent_answerRect_qth" qtc_QDragMoveEvent_answerRect_qth :: Ptr (TQDragMoveEvent a) -> Ptr CInt -> Ptr CInt -> Ptr CInt -> Ptr CInt -> IO ()

instance Qignore (QDragMoveEvent a) (()) where
 ignore x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDragMoveEvent_ignore cobj_x0

foreign import ccall "qtc_QDragMoveEvent_ignore" qtc_QDragMoveEvent_ignore :: Ptr (TQDragMoveEvent a) -> IO ()

qignore :: QDragMoveEvent a -> ((QRect t1)) -> IO ()
qignore x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDragMoveEvent_ignore1 cobj_x0 cobj_x1

foreign import ccall "qtc_QDragMoveEvent_ignore1" qtc_QDragMoveEvent_ignore1 :: Ptr (TQDragMoveEvent a) -> Ptr (TQRect t1) -> IO ()

instance Qignore (QDragMoveEvent a) ((Rect)) where
 ignore x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QDragMoveEvent_ignore1_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

foreign import ccall "qtc_QDragMoveEvent_ignore1_qth" qtc_QDragMoveEvent_ignore1_qth :: Ptr (TQDragMoveEvent a) -> CInt -> CInt -> CInt -> CInt -> IO ()

qDragMoveEvent_delete :: QDragMoveEvent a -> IO ()
qDragMoveEvent_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDragMoveEvent_delete cobj_x0

foreign import ccall "qtc_QDragMoveEvent_delete" qtc_QDragMoveEvent_delete :: Ptr (TQDragMoveEvent a) -> IO ()

