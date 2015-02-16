{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QHoverEvent.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:18
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QHoverEvent (
  QqqHoverEvent(..), QqHoverEvent(..)
  ,QqqHoverEvent_nf(..), QqHoverEvent_nf(..)
  ,qHoverEvent_delete
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

class QqqHoverEvent x1 where
  qqHoverEvent :: x1 -> IO (QHoverEvent ())

class QqHoverEvent x1 where
  qHoverEvent :: x1 -> IO (QHoverEvent ())

instance QqHoverEvent ((QHoverEvent t1)) where
 qHoverEvent (x1)
  = withQHoverEventResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHoverEvent cobj_x1

foreign import ccall "qtc_QHoverEvent" qtc_QHoverEvent :: Ptr (TQHoverEvent t1) -> IO (Ptr (TQHoverEvent ()))

instance QqqHoverEvent ((QEventType, QPoint t2, QPoint t3)) where
 qqHoverEvent (x1, x2, x3)
  = withQHoverEventResult $
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QHoverEvent1 (toCLong $ qEnum_toInt x1) cobj_x2 cobj_x3

foreign import ccall "qtc_QHoverEvent1" qtc_QHoverEvent1 :: CLong -> Ptr (TQPoint t2) -> Ptr (TQPoint t3) -> IO (Ptr (TQHoverEvent ()))

instance QqHoverEvent ((QEventType, Point, Point)) where
 qHoverEvent (x1, x2, x3)
  = withQHoverEventResult $
    withCPoint x2 $ \cpoint_x2_x cpoint_x2_y -> 
    withCPoint x3 $ \cpoint_x3_x cpoint_x3_y -> 
    qtc_QHoverEvent2 (toCLong $ qEnum_toInt x1) cpoint_x2_x cpoint_x2_y  cpoint_x3_x cpoint_x3_y 

foreign import ccall "qtc_QHoverEvent2" qtc_QHoverEvent2 :: CLong -> CInt -> CInt -> CInt -> CInt -> IO (Ptr (TQHoverEvent ()))

class QqqHoverEvent_nf x1 where
  qqHoverEvent_nf :: x1 -> IO (QHoverEvent ())

class QqHoverEvent_nf x1 where
  qHoverEvent_nf :: x1 -> IO (QHoverEvent ())

instance QqHoverEvent_nf ((QHoverEvent t1)) where
 qHoverEvent_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHoverEvent cobj_x1

instance QqqHoverEvent_nf ((QEventType, QPoint t2, QPoint t3)) where
 qqHoverEvent_nf (x1, x2, x3)
  = withObjectRefResult $
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QHoverEvent1 (toCLong $ qEnum_toInt x1) cobj_x2 cobj_x3

instance QqHoverEvent_nf ((QEventType, Point, Point)) where
 qHoverEvent_nf (x1, x2, x3)
  = withObjectRefResult $
    withCPoint x2 $ \cpoint_x2_x cpoint_x2_y -> 
    withCPoint x3 $ \cpoint_x3_x cpoint_x3_y -> 
    qtc_QHoverEvent2 (toCLong $ qEnum_toInt x1) cpoint_x2_x cpoint_x2_y  cpoint_x3_x cpoint_x3_y 

instance QoldPos (QHoverEvent a) (()) where
 oldPos x0 ()
  = withPointResult $ \cpoint_ret_x cpoint_ret_y ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHoverEvent_oldPos_qth cobj_x0 cpoint_ret_x cpoint_ret_y

foreign import ccall "qtc_QHoverEvent_oldPos_qth" qtc_QHoverEvent_oldPos_qth :: Ptr (TQHoverEvent a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QqoldPos (QHoverEvent a) (()) where
 qoldPos x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHoverEvent_oldPos cobj_x0

foreign import ccall "qtc_QHoverEvent_oldPos" qtc_QHoverEvent_oldPos :: Ptr (TQHoverEvent a) -> IO (Ptr (TQPoint ()))

instance Qpos (QHoverEvent a) (()) (IO (Point)) where
 pos x0 ()
  = withPointResult $ \cpoint_ret_x cpoint_ret_y ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHoverEvent_pos_qth cobj_x0 cpoint_ret_x cpoint_ret_y

foreign import ccall "qtc_QHoverEvent_pos_qth" qtc_QHoverEvent_pos_qth :: Ptr (TQHoverEvent a) -> Ptr CInt -> Ptr CInt -> IO ()

instance Qqpos (QHoverEvent a) (()) (IO (QPoint ())) where
 qpos x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHoverEvent_pos cobj_x0

foreign import ccall "qtc_QHoverEvent_pos" qtc_QHoverEvent_pos :: Ptr (TQHoverEvent a) -> IO (Ptr (TQPoint ()))

qHoverEvent_delete :: QHoverEvent a -> IO ()
qHoverEvent_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHoverEvent_delete cobj_x0

foreign import ccall "qtc_QHoverEvent_delete" qtc_QHoverEvent_delete :: Ptr (TQHoverEvent a) -> IO ()

