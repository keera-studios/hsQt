{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QPointF.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:31
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Core.QPointF (
  QqqPointF(..), QqPointF(..)
  ,QqqPointF_nf(..), QqPointF_nf(..)
  ,qtoPoint, qqtoPoint
  ,qPointF_delete
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

class QqqPointF x1 where
  qqPointF :: x1 -> IO (QPointF ())

class QqPointF x1 where
  qPointF :: x1 -> IO (QPointF ())

instance QqPointF (()) where
 qPointF ()
  = withQPointFResult $
    qtc_QPointF

foreign import ccall "qtc_QPointF" qtc_QPointF :: IO (Ptr (TQPointF ()))

instance QqqPointF ((QPoint t1)) where
 qqPointF (x1)
  = withQPointFResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPointF1 cobj_x1

foreign import ccall "qtc_QPointF1" qtc_QPointF1 :: Ptr (TQPoint t1) -> IO (Ptr (TQPointF ()))

instance QqPointF ((Point)) where
 qPointF (x1)
  = withQPointFResult $
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QPointF2 cpoint_x1_x cpoint_x1_y 

foreign import ccall "qtc_QPointF2" qtc_QPointF2 :: CInt -> CInt -> IO (Ptr (TQPointF ()))

instance QqqPointF ((QPointF t1)) where
 qqPointF (x1)
  = withQPointFResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPointF3 cobj_x1

foreign import ccall "qtc_QPointF3" qtc_QPointF3 :: Ptr (TQPointF t1) -> IO (Ptr (TQPointF ()))

instance QqPointF ((PointF)) where
 qPointF (x1)
  = withQPointFResult $
    withCPointF x1 $ \cpointf_x1_x cpointf_x1_y -> 
    qtc_QPointF4 cpointf_x1_x cpointf_x1_y 

foreign import ccall "qtc_QPointF4" qtc_QPointF4 :: CDouble -> CDouble -> IO (Ptr (TQPointF ()))

instance QqPointF ((Double, Double)) where
 qPointF (x1, x2)
  = withQPointFResult $
    qtc_QPointF5 (toCDouble x1) (toCDouble x2)

foreign import ccall "qtc_QPointF5" qtc_QPointF5 :: CDouble -> CDouble -> IO (Ptr (TQPointF ()))

class QqqPointF_nf x1 where
  qqPointF_nf :: x1 -> IO (QPointF ())

class QqPointF_nf x1 where
  qPointF_nf :: x1 -> IO (QPointF ())

instance QqPointF_nf (()) where
 qPointF_nf ()
  = withObjectRefResult $
    qtc_QPointF

instance QqqPointF_nf ((QPoint t1)) where
 qqPointF_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPointF1 cobj_x1

instance QqPointF_nf ((Point)) where
 qPointF_nf (x1)
  = withObjectRefResult $
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QPointF2 cpoint_x1_x cpoint_x1_y 

instance QqqPointF_nf ((QPointF t1)) where
 qqPointF_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPointF3 cobj_x1

instance QqPointF_nf ((PointF)) where
 qPointF_nf (x1)
  = withObjectRefResult $
    withCPointF x1 $ \cpointf_x1_x cpointf_x1_y -> 
    qtc_QPointF4 cpointf_x1_x cpointf_x1_y 

instance QqPointF_nf ((Double, Double)) where
 qPointF_nf (x1, x2)
  = withObjectRefResult $
    qtc_QPointF5 (toCDouble x1) (toCDouble x2)

instance QqisNull (QPointF a) (()) where
 qisNull x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPointF_isNull cobj_x0

foreign import ccall "qtc_QPointF_isNull" qtc_QPointF_isNull :: Ptr (TQPointF a) -> IO CBool

instance QqsetX (QPointF a) ((Double)) where
 qsetX x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPointF_setX cobj_x0 (toCDouble x1)

foreign import ccall "qtc_QPointF_setX" qtc_QPointF_setX :: Ptr (TQPointF a) -> CDouble -> IO ()

instance QqsetY (QPointF a) ((Double)) where
 qsetY x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPointF_setY cobj_x0 (toCDouble x1)

foreign import ccall "qtc_QPointF_setY" qtc_QPointF_setY :: Ptr (TQPointF a) -> CDouble -> IO ()

qtoPoint :: QPointF a -> (()) -> IO (Point)
qtoPoint x0 ()
  = withPointResult $ \cpoint_ret_x cpoint_ret_y ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPointF_toPoint_qth cobj_x0 cpoint_ret_x cpoint_ret_y

foreign import ccall "qtc_QPointF_toPoint_qth" qtc_QPointF_toPoint_qth :: Ptr (TQPointF a) -> Ptr CInt -> Ptr CInt -> IO ()

qqtoPoint :: QPointF a -> (()) -> IO (QPoint ())
qqtoPoint x0 ()
  = withQPointResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPointF_toPoint cobj_x0

foreign import ccall "qtc_QPointF_toPoint" qtc_QPointF_toPoint :: Ptr (TQPointF a) -> IO (Ptr (TQPoint ()))

instance Qqx (QPointF a) (()) (IO (Double)) where
 qx x0 ()
  = withDoubleResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPointF_x cobj_x0

foreign import ccall "qtc_QPointF_x" qtc_QPointF_x :: Ptr (TQPointF a) -> IO CDouble

instance Qqy (QPointF a) (()) (IO (Double)) where
 qy x0 ()
  = withDoubleResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPointF_y cobj_x0

foreign import ccall "qtc_QPointF_y" qtc_QPointF_y :: Ptr (TQPointF a) -> IO CDouble

qPointF_delete :: QPointF a -> IO ()
qPointF_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPointF_delete cobj_x0

foreign import ccall "qtc_QPointF_delete" qtc_QPointF_delete :: Ptr (TQPointF a) -> IO ()

