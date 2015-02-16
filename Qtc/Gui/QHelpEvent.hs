{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QHelpEvent.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:14
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QHelpEvent (
  QqqHelpEvent(..), QqHelpEvent(..)
  ,QqqHelpEvent_nf(..), QqHelpEvent_nf(..)
  ,qHelpEvent_delete
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

class QqqHelpEvent x1 where
  qqHelpEvent :: x1 -> IO (QHelpEvent ())

class QqHelpEvent x1 where
  qHelpEvent :: x1 -> IO (QHelpEvent ())

instance QqHelpEvent ((QHelpEvent t1)) where
 qHelpEvent (x1)
  = withQHelpEventResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHelpEvent cobj_x1

foreign import ccall "qtc_QHelpEvent" qtc_QHelpEvent :: Ptr (TQHelpEvent t1) -> IO (Ptr (TQHelpEvent ()))

instance QqqHelpEvent ((QEventType, QPoint t2, QPoint t3)) where
 qqHelpEvent (x1, x2, x3)
  = withQHelpEventResult $
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QHelpEvent1 (toCLong $ qEnum_toInt x1) cobj_x2 cobj_x3

foreign import ccall "qtc_QHelpEvent1" qtc_QHelpEvent1 :: CLong -> Ptr (TQPoint t2) -> Ptr (TQPoint t3) -> IO (Ptr (TQHelpEvent ()))

instance QqHelpEvent ((QEventType, Point, Point)) where
 qHelpEvent (x1, x2, x3)
  = withQHelpEventResult $
    withCPoint x2 $ \cpoint_x2_x cpoint_x2_y -> 
    withCPoint x3 $ \cpoint_x3_x cpoint_x3_y -> 
    qtc_QHelpEvent2 (toCLong $ qEnum_toInt x1) cpoint_x2_x cpoint_x2_y  cpoint_x3_x cpoint_x3_y 

foreign import ccall "qtc_QHelpEvent2" qtc_QHelpEvent2 :: CLong -> CInt -> CInt -> CInt -> CInt -> IO (Ptr (TQHelpEvent ()))

class QqqHelpEvent_nf x1 where
  qqHelpEvent_nf :: x1 -> IO (QHelpEvent ())

class QqHelpEvent_nf x1 where
  qHelpEvent_nf :: x1 -> IO (QHelpEvent ())

instance QqHelpEvent_nf ((QHelpEvent t1)) where
 qHelpEvent_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHelpEvent cobj_x1

instance QqqHelpEvent_nf ((QEventType, QPoint t2, QPoint t3)) where
 qqHelpEvent_nf (x1, x2, x3)
  = withObjectRefResult $
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QHelpEvent1 (toCLong $ qEnum_toInt x1) cobj_x2 cobj_x3

instance QqHelpEvent_nf ((QEventType, Point, Point)) where
 qHelpEvent_nf (x1, x2, x3)
  = withObjectRefResult $
    withCPoint x2 $ \cpoint_x2_x cpoint_x2_y -> 
    withCPoint x3 $ \cpoint_x3_x cpoint_x3_y -> 
    qtc_QHelpEvent2 (toCLong $ qEnum_toInt x1) cpoint_x2_x cpoint_x2_y  cpoint_x3_x cpoint_x3_y 

instance QglobalPos (QHelpEvent a) (()) where
 globalPos x0 ()
  = withPointResult $ \cpoint_ret_x cpoint_ret_y ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHelpEvent_globalPos_qth cobj_x0 cpoint_ret_x cpoint_ret_y

foreign import ccall "qtc_QHelpEvent_globalPos_qth" qtc_QHelpEvent_globalPos_qth :: Ptr (TQHelpEvent a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QqglobalPos (QHelpEvent a) (()) where
 qglobalPos x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHelpEvent_globalPos cobj_x0

foreign import ccall "qtc_QHelpEvent_globalPos" qtc_QHelpEvent_globalPos :: Ptr (TQHelpEvent a) -> IO (Ptr (TQPoint ()))

instance QglobalX (QHelpEvent a) (()) where
 globalX x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHelpEvent_globalX cobj_x0

foreign import ccall "qtc_QHelpEvent_globalX" qtc_QHelpEvent_globalX :: Ptr (TQHelpEvent a) -> IO CInt

instance QglobalY (QHelpEvent a) (()) where
 globalY x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHelpEvent_globalY cobj_x0

foreign import ccall "qtc_QHelpEvent_globalY" qtc_QHelpEvent_globalY :: Ptr (TQHelpEvent a) -> IO CInt

instance Qpos (QHelpEvent a) (()) (IO (Point)) where
 pos x0 ()
  = withPointResult $ \cpoint_ret_x cpoint_ret_y ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHelpEvent_pos_qth cobj_x0 cpoint_ret_x cpoint_ret_y

foreign import ccall "qtc_QHelpEvent_pos_qth" qtc_QHelpEvent_pos_qth :: Ptr (TQHelpEvent a) -> Ptr CInt -> Ptr CInt -> IO ()

instance Qqpos (QHelpEvent a) (()) (IO (QPoint ())) where
 qpos x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHelpEvent_pos cobj_x0

foreign import ccall "qtc_QHelpEvent_pos" qtc_QHelpEvent_pos :: Ptr (TQHelpEvent a) -> IO (Ptr (TQPoint ()))

instance Qqx (QHelpEvent a) (()) (IO (Int)) where
 qx x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHelpEvent_x cobj_x0

foreign import ccall "qtc_QHelpEvent_x" qtc_QHelpEvent_x :: Ptr (TQHelpEvent a) -> IO CInt

instance Qqy (QHelpEvent a) (()) (IO (Int)) where
 qy x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHelpEvent_y cobj_x0

foreign import ccall "qtc_QHelpEvent_y" qtc_QHelpEvent_y :: Ptr (TQHelpEvent a) -> IO CInt

qHelpEvent_delete :: QHelpEvent a -> IO ()
qHelpEvent_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHelpEvent_delete cobj_x0

foreign import ccall "qtc_QHelpEvent_delete" qtc_QHelpEvent_delete :: Ptr (TQHelpEvent a) -> IO ()

