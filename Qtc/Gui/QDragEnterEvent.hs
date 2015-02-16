{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QDragEnterEvent.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:22
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QDragEnterEvent (
  QqqDragEnterEvent(..), QqDragEnterEvent(..)
  ,QqqDragEnterEvent_nf(..), QqDragEnterEvent_nf(..)
  ,qDragEnterEvent_delete
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

class QqqDragEnterEvent x1 where
  qqDragEnterEvent :: x1 -> IO (QDragEnterEvent ())

class QqDragEnterEvent x1 where
  qDragEnterEvent :: x1 -> IO (QDragEnterEvent ())

instance QqDragEnterEvent ((QDragEnterEvent t1)) where
 qDragEnterEvent (x1)
  = withQDragEnterEventResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDragEnterEvent cobj_x1

foreign import ccall "qtc_QDragEnterEvent" qtc_QDragEnterEvent :: Ptr (TQDragEnterEvent t1) -> IO (Ptr (TQDragEnterEvent ()))

instance QqqDragEnterEvent ((QPoint t1, DropActions, QMimeData t3, MouseButtons, KeyboardModifiers)) where
 qqDragEnterEvent (x1, x2, x3, x4, x5)
  = withQDragEnterEventResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QDragEnterEvent1 cobj_x1 (toCLong $ qFlags_toInt x2) cobj_x3 (toCLong $ qFlags_toInt x4) (toCLong $ qFlags_toInt x5)

foreign import ccall "qtc_QDragEnterEvent1" qtc_QDragEnterEvent1 :: Ptr (TQPoint t1) -> CLong -> Ptr (TQMimeData t3) -> CLong -> CLong -> IO (Ptr (TQDragEnterEvent ()))

instance QqDragEnterEvent ((Point, DropActions, QMimeData t3, MouseButtons, KeyboardModifiers)) where
 qDragEnterEvent (x1, x2, x3, x4, x5)
  = withQDragEnterEventResult $
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QDragEnterEvent2 cpoint_x1_x cpoint_x1_y  (toCLong $ qFlags_toInt x2) cobj_x3 (toCLong $ qFlags_toInt x4) (toCLong $ qFlags_toInt x5)

foreign import ccall "qtc_QDragEnterEvent2" qtc_QDragEnterEvent2 :: CInt -> CInt -> CLong -> Ptr (TQMimeData t3) -> CLong -> CLong -> IO (Ptr (TQDragEnterEvent ()))

class QqqDragEnterEvent_nf x1 where
  qqDragEnterEvent_nf :: x1 -> IO (QDragEnterEvent ())

class QqDragEnterEvent_nf x1 where
  qDragEnterEvent_nf :: x1 -> IO (QDragEnterEvent ())

instance QqDragEnterEvent_nf ((QDragEnterEvent t1)) where
 qDragEnterEvent_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDragEnterEvent cobj_x1

instance QqqDragEnterEvent_nf ((QPoint t1, DropActions, QMimeData t3, MouseButtons, KeyboardModifiers)) where
 qqDragEnterEvent_nf (x1, x2, x3, x4, x5)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QDragEnterEvent1 cobj_x1 (toCLong $ qFlags_toInt x2) cobj_x3 (toCLong $ qFlags_toInt x4) (toCLong $ qFlags_toInt x5)

instance QqDragEnterEvent_nf ((Point, DropActions, QMimeData t3, MouseButtons, KeyboardModifiers)) where
 qDragEnterEvent_nf (x1, x2, x3, x4, x5)
  = withObjectRefResult $
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QDragEnterEvent2 cpoint_x1_x cpoint_x1_y  (toCLong $ qFlags_toInt x2) cobj_x3 (toCLong $ qFlags_toInt x4) (toCLong $ qFlags_toInt x5)

qDragEnterEvent_delete :: QDragEnterEvent a -> IO ()
qDragEnterEvent_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDragEnterEvent_delete cobj_x0

foreign import ccall "qtc_QDragEnterEvent_delete" qtc_QDragEnterEvent_delete :: Ptr (TQDragEnterEvent a) -> IO ()

