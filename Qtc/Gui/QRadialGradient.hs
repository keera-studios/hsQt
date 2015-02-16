{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QRadialGradient.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:25
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QRadialGradient (
  QqqRadialGradient(..), QqRadialGradient(..)
  ,QqqRadialGradient_nf(..), QqRadialGradient_nf(..)
  ,focalPoint, qfocalPoint
  ,radius
  ,QsetFocalPoint(..), qsetFocalPoint
  ,setRadius
  ,qRadialGradient_delete
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

class QqqRadialGradient x1 where
  qqRadialGradient :: x1 -> IO (QRadialGradient ())

class QqRadialGradient x1 where
  qRadialGradient :: x1 -> IO (QRadialGradient ())

instance QqRadialGradient (()) where
 qRadialGradient ()
  = withQRadialGradientResult $
    qtc_QRadialGradient

foreign import ccall "qtc_QRadialGradient" qtc_QRadialGradient :: IO (Ptr (TQRadialGradient ()))

instance QqRadialGradient ((QRadialGradient t1)) where
 qRadialGradient (x1)
  = withQRadialGradientResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRadialGradient1 cobj_x1

foreign import ccall "qtc_QRadialGradient1" qtc_QRadialGradient1 :: Ptr (TQRadialGradient t1) -> IO (Ptr (TQRadialGradient ()))

instance QqqRadialGradient ((QPointF t1, Double)) where
 qqRadialGradient (x1, x2)
  = withQRadialGradientResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRadialGradient2 cobj_x1 (toCDouble x2)

foreign import ccall "qtc_QRadialGradient2" qtc_QRadialGradient2 :: Ptr (TQPointF t1) -> CDouble -> IO (Ptr (TQRadialGradient ()))

instance QqRadialGradient ((PointF, Double)) where
 qRadialGradient (x1, x2)
  = withQRadialGradientResult $
    withCPointF x1 $ \cpointf_x1_x cpointf_x1_y -> 
    qtc_QRadialGradient3 cpointf_x1_x cpointf_x1_y  (toCDouble x2)

foreign import ccall "qtc_QRadialGradient3" qtc_QRadialGradient3 :: CDouble -> CDouble -> CDouble -> IO (Ptr (TQRadialGradient ()))

instance QqqRadialGradient ((QPointF t1, Double, QPointF t3)) where
 qqRadialGradient (x1, x2, x3)
  = withQRadialGradientResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QRadialGradient4 cobj_x1 (toCDouble x2) cobj_x3

foreign import ccall "qtc_QRadialGradient4" qtc_QRadialGradient4 :: Ptr (TQPointF t1) -> CDouble -> Ptr (TQPointF t3) -> IO (Ptr (TQRadialGradient ()))

instance QqRadialGradient ((PointF, Double, PointF)) where
 qRadialGradient (x1, x2, x3)
  = withQRadialGradientResult $
    withCPointF x1 $ \cpointf_x1_x cpointf_x1_y -> 
    withCPointF x3 $ \cpointf_x3_x cpointf_x3_y -> 
    qtc_QRadialGradient5 cpointf_x1_x cpointf_x1_y  (toCDouble x2) cpointf_x3_x cpointf_x3_y 

foreign import ccall "qtc_QRadialGradient5" qtc_QRadialGradient5 :: CDouble -> CDouble -> CDouble -> CDouble -> CDouble -> IO (Ptr (TQRadialGradient ()))

instance QqRadialGradient ((Double, Double, Double)) where
 qRadialGradient (x1, x2, x3)
  = withQRadialGradientResult $
    qtc_QRadialGradient6 (toCDouble x1) (toCDouble x2) (toCDouble x3)

foreign import ccall "qtc_QRadialGradient6" qtc_QRadialGradient6 :: CDouble -> CDouble -> CDouble -> IO (Ptr (TQRadialGradient ()))

instance QqRadialGradient ((Double, Double, Double, Double, Double)) where
 qRadialGradient (x1, x2, x3, x4, x5)
  = withQRadialGradientResult $
    qtc_QRadialGradient7 (toCDouble x1) (toCDouble x2) (toCDouble x3) (toCDouble x4) (toCDouble x5)

foreign import ccall "qtc_QRadialGradient7" qtc_QRadialGradient7 :: CDouble -> CDouble -> CDouble -> CDouble -> CDouble -> IO (Ptr (TQRadialGradient ()))

class QqqRadialGradient_nf x1 where
  qqRadialGradient_nf :: x1 -> IO (QRadialGradient ())

class QqRadialGradient_nf x1 where
  qRadialGradient_nf :: x1 -> IO (QRadialGradient ())

instance QqRadialGradient_nf (()) where
 qRadialGradient_nf ()
  = withObjectRefResult $
    qtc_QRadialGradient

instance QqRadialGradient_nf ((QRadialGradient t1)) where
 qRadialGradient_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRadialGradient1 cobj_x1

instance QqqRadialGradient_nf ((QPointF t1, Double)) where
 qqRadialGradient_nf (x1, x2)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRadialGradient2 cobj_x1 (toCDouble x2)

instance QqRadialGradient_nf ((PointF, Double)) where
 qRadialGradient_nf (x1, x2)
  = withObjectRefResult $
    withCPointF x1 $ \cpointf_x1_x cpointf_x1_y -> 
    qtc_QRadialGradient3 cpointf_x1_x cpointf_x1_y  (toCDouble x2)

instance QqqRadialGradient_nf ((QPointF t1, Double, QPointF t3)) where
 qqRadialGradient_nf (x1, x2, x3)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QRadialGradient4 cobj_x1 (toCDouble x2) cobj_x3

instance QqRadialGradient_nf ((PointF, Double, PointF)) where
 qRadialGradient_nf (x1, x2, x3)
  = withObjectRefResult $
    withCPointF x1 $ \cpointf_x1_x cpointf_x1_y -> 
    withCPointF x3 $ \cpointf_x3_x cpointf_x3_y -> 
    qtc_QRadialGradient5 cpointf_x1_x cpointf_x1_y  (toCDouble x2) cpointf_x3_x cpointf_x3_y 

instance QqRadialGradient_nf ((Double, Double, Double)) where
 qRadialGradient_nf (x1, x2, x3)
  = withObjectRefResult $
    qtc_QRadialGradient6 (toCDouble x1) (toCDouble x2) (toCDouble x3)

instance QqRadialGradient_nf ((Double, Double, Double, Double, Double)) where
 qRadialGradient_nf (x1, x2, x3, x4, x5)
  = withObjectRefResult $
    qtc_QRadialGradient7 (toCDouble x1) (toCDouble x2) (toCDouble x3) (toCDouble x4) (toCDouble x5)

instance Qqcenter (QRadialGradient a) (()) (IO (PointF)) where
 qcenter x0 ()
  = withPointFResult $ \cpointf_ret_x cpointf_ret_y ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRadialGradient_center_qth cobj_x0 cpointf_ret_x cpointf_ret_y

foreign import ccall "qtc_QRadialGradient_center_qth" qtc_QRadialGradient_center_qth :: Ptr (TQRadialGradient a) -> Ptr CDouble -> Ptr CDouble -> IO ()

instance Qqqcenter (QRadialGradient a) (()) (IO (QPointF ())) where
 qqcenter x0 ()
  = withQPointFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRadialGradient_center cobj_x0

foreign import ccall "qtc_QRadialGradient_center" qtc_QRadialGradient_center :: Ptr (TQRadialGradient a) -> IO (Ptr (TQPointF ()))

focalPoint :: QRadialGradient a -> (()) -> IO (PointF)
focalPoint x0 ()
  = withPointFResult $ \cpointf_ret_x cpointf_ret_y ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRadialGradient_focalPoint_qth cobj_x0 cpointf_ret_x cpointf_ret_y

foreign import ccall "qtc_QRadialGradient_focalPoint_qth" qtc_QRadialGradient_focalPoint_qth :: Ptr (TQRadialGradient a) -> Ptr CDouble -> Ptr CDouble -> IO ()

qfocalPoint :: QRadialGradient a -> (()) -> IO (QPointF ())
qfocalPoint x0 ()
  = withQPointFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRadialGradient_focalPoint cobj_x0

foreign import ccall "qtc_QRadialGradient_focalPoint" qtc_QRadialGradient_focalPoint :: Ptr (TQRadialGradient a) -> IO (Ptr (TQPointF ()))

radius :: QRadialGradient a -> (()) -> IO (Double)
radius x0 ()
  = withDoubleResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRadialGradient_radius cobj_x0

foreign import ccall "qtc_QRadialGradient_radius" qtc_QRadialGradient_radius :: Ptr (TQRadialGradient a) -> IO CDouble

instance QsetCenter (QRadialGradient a) ((Double, Double)) where
 setCenter x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRadialGradient_setCenter1 cobj_x0 (toCDouble x1) (toCDouble x2)

foreign import ccall "qtc_QRadialGradient_setCenter1" qtc_QRadialGradient_setCenter1 :: Ptr (TQRadialGradient a) -> CDouble -> CDouble -> IO ()

instance QsetCenter (QRadialGradient a) ((PointF)) where
 setCenter x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPointF x1 $ \cpointf_x1_x cpointf_x1_y -> 
    qtc_QRadialGradient_setCenter_qth cobj_x0 cpointf_x1_x cpointf_x1_y 

foreign import ccall "qtc_QRadialGradient_setCenter_qth" qtc_QRadialGradient_setCenter_qth :: Ptr (TQRadialGradient a) -> CDouble -> CDouble -> IO ()

instance QqsetCenter (QRadialGradient a) ((QPointF t1)) where
 qsetCenter x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRadialGradient_setCenter cobj_x0 cobj_x1

foreign import ccall "qtc_QRadialGradient_setCenter" qtc_QRadialGradient_setCenter :: Ptr (TQRadialGradient a) -> Ptr (TQPointF t1) -> IO ()

class QsetFocalPoint x1 where
 setFocalPoint :: QRadialGradient a -> x1 -> IO ()

instance QsetFocalPoint ((Double, Double)) where
 setFocalPoint x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRadialGradient_setFocalPoint1 cobj_x0 (toCDouble x1) (toCDouble x2)

foreign import ccall "qtc_QRadialGradient_setFocalPoint1" qtc_QRadialGradient_setFocalPoint1 :: Ptr (TQRadialGradient a) -> CDouble -> CDouble -> IO ()

instance QsetFocalPoint ((PointF)) where
 setFocalPoint x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPointF x1 $ \cpointf_x1_x cpointf_x1_y -> 
    qtc_QRadialGradient_setFocalPoint_qth cobj_x0 cpointf_x1_x cpointf_x1_y 

foreign import ccall "qtc_QRadialGradient_setFocalPoint_qth" qtc_QRadialGradient_setFocalPoint_qth :: Ptr (TQRadialGradient a) -> CDouble -> CDouble -> IO ()

qsetFocalPoint :: QRadialGradient a -> ((QPointF t1)) -> IO ()
qsetFocalPoint x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRadialGradient_setFocalPoint cobj_x0 cobj_x1

foreign import ccall "qtc_QRadialGradient_setFocalPoint" qtc_QRadialGradient_setFocalPoint :: Ptr (TQRadialGradient a) -> Ptr (TQPointF t1) -> IO ()

setRadius :: QRadialGradient a -> ((Double)) -> IO ()
setRadius x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRadialGradient_setRadius cobj_x0 (toCDouble x1)

foreign import ccall "qtc_QRadialGradient_setRadius" qtc_QRadialGradient_setRadius :: Ptr (TQRadialGradient a) -> CDouble -> IO ()

qRadialGradient_delete :: QRadialGradient a -> IO ()
qRadialGradient_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRadialGradient_delete cobj_x0

foreign import ccall "qtc_QRadialGradient_delete" qtc_QRadialGradient_delete :: Ptr (TQRadialGradient a) -> IO ()

