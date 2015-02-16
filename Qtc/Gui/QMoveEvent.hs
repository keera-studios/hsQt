{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QMoveEvent.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:25
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QMoveEvent (
  QqqMoveEvent(..), QqMoveEvent(..)
  ,QqqMoveEvent_nf(..), QqMoveEvent_nf(..)
  ,qMoveEvent_delete
  )
  where

import Foreign.C.Types
import Qth.ClassTypes.Core
import Qtc.Enums.Base

import Qtc.Classes.Base
import Qtc.Classes.Qccs
import Qtc.Classes.Core
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core
import Qtc.Classes.Gui
import Qtc.ClassTypes.Gui

class QqqMoveEvent x1 where
  qqMoveEvent :: x1 -> IO (QMoveEvent ())

class QqMoveEvent x1 where
  qMoveEvent :: x1 -> IO (QMoveEvent ())

instance QqMoveEvent ((QMoveEvent t1)) where
 qMoveEvent (x1)
  = withQMoveEventResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMoveEvent cobj_x1

foreign import ccall "qtc_QMoveEvent" qtc_QMoveEvent :: Ptr (TQMoveEvent t1) -> IO (Ptr (TQMoveEvent ()))

instance QqqMoveEvent ((QPoint t1, QPoint t2)) where
 qqMoveEvent (x1, x2)
  = withQMoveEventResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QMoveEvent1 cobj_x1 cobj_x2

foreign import ccall "qtc_QMoveEvent1" qtc_QMoveEvent1 :: Ptr (TQPoint t1) -> Ptr (TQPoint t2) -> IO (Ptr (TQMoveEvent ()))

instance QqMoveEvent ((Point, Point)) where
 qMoveEvent (x1, x2)
  = withQMoveEventResult $
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    withCPoint x2 $ \cpoint_x2_x cpoint_x2_y -> 
    qtc_QMoveEvent2 cpoint_x1_x cpoint_x1_y  cpoint_x2_x cpoint_x2_y 

foreign import ccall "qtc_QMoveEvent2" qtc_QMoveEvent2 :: CInt -> CInt -> CInt -> CInt -> IO (Ptr (TQMoveEvent ()))

class QqqMoveEvent_nf x1 where
  qqMoveEvent_nf :: x1 -> IO (QMoveEvent ())

class QqMoveEvent_nf x1 where
  qMoveEvent_nf :: x1 -> IO (QMoveEvent ())

instance QqMoveEvent_nf ((QMoveEvent t1)) where
 qMoveEvent_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMoveEvent cobj_x1

instance QqqMoveEvent_nf ((QPoint t1, QPoint t2)) where
 qqMoveEvent_nf (x1, x2)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QMoveEvent1 cobj_x1 cobj_x2

instance QqMoveEvent_nf ((Point, Point)) where
 qMoveEvent_nf (x1, x2)
  = withObjectRefResult $
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    withCPoint x2 $ \cpoint_x2_x cpoint_x2_y -> 
    qtc_QMoveEvent2 cpoint_x1_x cpoint_x1_y  cpoint_x2_x cpoint_x2_y 

instance QoldPos (QMoveEvent a) (()) where
 oldPos x0 ()
  = withPointResult $ \cpoint_ret_x cpoint_ret_y ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMoveEvent_oldPos_qth cobj_x0 cpoint_ret_x cpoint_ret_y

foreign import ccall "qtc_QMoveEvent_oldPos_qth" qtc_QMoveEvent_oldPos_qth :: Ptr (TQMoveEvent a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QqoldPos (QMoveEvent a) (()) where
 qoldPos x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMoveEvent_oldPos cobj_x0

foreign import ccall "qtc_QMoveEvent_oldPos" qtc_QMoveEvent_oldPos :: Ptr (TQMoveEvent a) -> IO (Ptr (TQPoint ()))

instance Qpos (QMoveEvent a) (()) (IO (Point)) where
 pos x0 ()
  = withPointResult $ \cpoint_ret_x cpoint_ret_y ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMoveEvent_pos_qth cobj_x0 cpoint_ret_x cpoint_ret_y

foreign import ccall "qtc_QMoveEvent_pos_qth" qtc_QMoveEvent_pos_qth :: Ptr (TQMoveEvent a) -> Ptr CInt -> Ptr CInt -> IO ()

instance Qqpos (QMoveEvent a) (()) (IO (QPoint ())) where
 qpos x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMoveEvent_pos cobj_x0

foreign import ccall "qtc_QMoveEvent_pos" qtc_QMoveEvent_pos :: Ptr (TQMoveEvent a) -> IO (Ptr (TQPoint ()))

qMoveEvent_delete :: QMoveEvent a -> IO ()
qMoveEvent_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMoveEvent_delete cobj_x0

foreign import ccall "qtc_QMoveEvent_delete" qtc_QMoveEvent_delete :: Ptr (TQMoveEvent a) -> IO ()

