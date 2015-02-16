{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QLineF.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:31
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Core.QLineF (
  QqqLineF(..), QqLineF(..)
  ,QqqLineF_nf(..), QqLineF_nf(..)
  ,qqangle
  ,qnormalVector, qqnormalVector
  ,qpointAt, qqpointAt
  ,qsetLength
  ,qtoLine, qqtoLine
  ,qunitVector, qqunitVector
  ,qLineF_delete
  )
  where

import Foreign.C.Types

import Qth.ClassTypes.Core
import Qtc.Enums.Base
import Qtc.Enums.Core.QLineF

import Qtc.Classes.Base
import Qtc.Classes.Qccs
import Qtc.Classes.Core
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core

class QqqLineF x1 where
  qqLineF :: x1 -> IO (QLineF ())

class QqLineF x1 where
  qLineF :: x1 -> IO (QLineF ())

instance QqLineF (()) where
 qLineF ()
  = withQLineFResult $
    qtc_QLineF

foreign import ccall "qtc_QLineF" qtc_QLineF :: IO (Ptr (TQLineF ()))

instance QqqLineF ((QLine t1)) where
 qqLineF (x1)
  = withQLineFResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLineF1 cobj_x1

foreign import ccall "qtc_QLineF1" qtc_QLineF1 :: Ptr (TQLine t1) -> IO (Ptr (TQLineF ()))

instance QqLineF ((Line)) where
 qLineF (x1)
  = withQLineFResult $
    withCLine x1 $ \cline_x1_x1 cline_x1_y1  cline_x1_x2 cline_x1_y2 -> 
    qtc_QLineF2 cline_x1_x1 cline_x1_y1 cline_x1_x2 cline_x1_y2 

foreign import ccall "qtc_QLineF2" qtc_QLineF2 :: CInt -> CInt -> CInt -> CInt -> IO (Ptr (TQLineF ()))

instance QqqLineF ((QLineF t1)) where
 qqLineF (x1)
  = withQLineFResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLineF3 cobj_x1

foreign import ccall "qtc_QLineF3" qtc_QLineF3 :: Ptr (TQLineF t1) -> IO (Ptr (TQLineF ()))

instance QqLineF ((LineF)) where
 qLineF (x1)
  = withQLineFResult $
    withCLineF x1 $ \clinef_x1_x1 clinef_x1_y1  clinef_x1_x2 clinef_x1_y2 -> 
    qtc_QLineF4 clinef_x1_x1 clinef_x1_y1 clinef_x1_x2 clinef_x1_y2 

foreign import ccall "qtc_QLineF4" qtc_QLineF4 :: CDouble -> CDouble -> CDouble -> CDouble -> IO (Ptr (TQLineF ()))

instance QqqLineF ((QPointF t1, QPointF t2)) where
 qqLineF (x1, x2)
  = withQLineFResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QLineF5 cobj_x1 cobj_x2

foreign import ccall "qtc_QLineF5" qtc_QLineF5 :: Ptr (TQPointF t1) -> Ptr (TQPointF t2) -> IO (Ptr (TQLineF ()))

instance QqLineF ((PointF, PointF)) where
 qLineF (x1, x2)
  = withQLineFResult $
    withCPointF x1 $ \cpointf_x1_x cpointf_x1_y -> 
    withCPointF x2 $ \cpointf_x2_x cpointf_x2_y -> 
    qtc_QLineF6 cpointf_x1_x cpointf_x1_y  cpointf_x2_x cpointf_x2_y 

foreign import ccall "qtc_QLineF6" qtc_QLineF6 :: CDouble -> CDouble -> CDouble -> CDouble -> IO (Ptr (TQLineF ()))

instance QqLineF ((Double, Double, Double, Double)) where
 qLineF (x1, x2, x3, x4)
  = withQLineFResult $
    qtc_QLineF7 (toCDouble x1) (toCDouble x2) (toCDouble x3) (toCDouble x4)

foreign import ccall "qtc_QLineF7" qtc_QLineF7 :: CDouble -> CDouble -> CDouble -> CDouble -> IO (Ptr (TQLineF ()))

class QqqLineF_nf x1 where
  qqLineF_nf :: x1 -> IO (QLineF ())

class QqLineF_nf x1 where
  qLineF_nf :: x1 -> IO (QLineF ())

instance QqLineF_nf (()) where
 qLineF_nf ()
  = withObjectRefResult $
    qtc_QLineF

instance QqqLineF_nf ((QLine t1)) where
 qqLineF_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLineF1 cobj_x1

instance QqLineF_nf ((Line)) where
 qLineF_nf (x1)
  = withObjectRefResult $
    withCLine x1 $ \cline_x1_x1 cline_x1_y1  cline_x1_x2 cline_x1_y2 -> 
    qtc_QLineF2 cline_x1_x1 cline_x1_y1 cline_x1_x2 cline_x1_y2 

instance QqqLineF_nf ((QLineF t1)) where
 qqLineF_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLineF3 cobj_x1

instance QqLineF_nf ((LineF)) where
 qLineF_nf (x1)
  = withObjectRefResult $
    withCLineF x1 $ \clinef_x1_x1 clinef_x1_y1  clinef_x1_x2 clinef_x1_y2 -> 
    qtc_QLineF4 clinef_x1_x1 clinef_x1_y1 clinef_x1_x2 clinef_x1_y2 

instance QqqLineF_nf ((QPointF t1, QPointF t2)) where
 qqLineF_nf (x1, x2)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QLineF5 cobj_x1 cobj_x2

instance QqLineF_nf ((PointF, PointF)) where
 qLineF_nf (x1, x2)
  = withObjectRefResult $
    withCPointF x1 $ \cpointf_x1_x cpointf_x1_y -> 
    withCPointF x2 $ \cpointf_x2_x cpointf_x2_y -> 
    qtc_QLineF6 cpointf_x1_x cpointf_x1_y  cpointf_x2_x cpointf_x2_y 

instance QqLineF_nf ((Double, Double, Double, Double)) where
 qLineF_nf (x1, x2, x3, x4)
  = withObjectRefResult $
    qtc_QLineF7 (toCDouble x1) (toCDouble x2) (toCDouble x3) (toCDouble x4)

instance Qqangle (QLineF a) ((LineF)) where
 qangle x0 (x1)
  = withDoubleResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCLineF x1 $ \clinef_x1_x1 clinef_x1_y1  clinef_x1_x2 clinef_x1_y2 -> 
    qtc_QLineF_angle_qth cobj_x0 clinef_x1_x1 clinef_x1_y1 clinef_x1_x2 clinef_x1_y2 

foreign import ccall "qtc_QLineF_angle_qth" qtc_QLineF_angle_qth :: Ptr (TQLineF a) -> CDouble -> CDouble -> CDouble -> CDouble -> IO CDouble

qqangle :: QLineF a -> ((QLineF t1)) -> IO (Double)
qqangle x0 (x1)
  = withDoubleResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLineF_angle cobj_x0 cobj_x1

foreign import ccall "qtc_QLineF_angle" qtc_QLineF_angle :: Ptr (TQLineF a) -> Ptr (TQLineF t1) -> IO CDouble

instance Qqdx (QLineF a) (()) (IO (Double)) where
 qdx x0 ()
  = withDoubleResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLineF_dx cobj_x0

foreign import ccall "qtc_QLineF_dx" qtc_QLineF_dx :: Ptr (TQLineF a) -> IO CDouble

instance Qqdy (QLineF a) (()) (IO (Double)) where
 qdy x0 ()
  = withDoubleResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLineF_dy cobj_x0

foreign import ccall "qtc_QLineF_dy" qtc_QLineF_dy :: Ptr (TQLineF a) -> IO CDouble

instance Qqqintersect (QLineF a) ((QLineF t1, QPointF t2)) (IO (IntersectType)) where
 qqintersect x0 (x1, x2)
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QLineF_intersect cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QLineF_intersect" qtc_QLineF_intersect :: Ptr (TQLineF a) -> Ptr (TQLineF t1) -> Ptr (TQPointF t2) -> IO CLong

instance QqisNull (QLineF a) (()) where
 qisNull x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLineF_isNull cobj_x0

foreign import ccall "qtc_QLineF_isNull" qtc_QLineF_isNull :: Ptr (TQLineF a) -> IO CBool

instance Qqlength (QLineF a) (()) (IO (Double)) where
 qlength x0 ()
  = withDoubleResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLineF_length cobj_x0

foreign import ccall "qtc_QLineF_length" qtc_QLineF_length :: Ptr (TQLineF a) -> IO CDouble

qnormalVector :: QLineF a -> (()) -> IO (LineF)
qnormalVector x0 ()
  = withLineFResult $ \clinef_ret_x1 clinef_ret_y1 clinef_ret_x2 clinef_ret_y2 ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLineF_normalVector_qth cobj_x0 clinef_ret_x1 clinef_ret_y1 clinef_ret_x2 clinef_ret_y2

foreign import ccall "qtc_QLineF_normalVector_qth" qtc_QLineF_normalVector_qth :: Ptr (TQLineF a) -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> IO ()

qqnormalVector :: QLineF a -> (()) -> IO (QLineF ())
qqnormalVector x0 ()
  = withQLineFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLineF_normalVector cobj_x0

foreign import ccall "qtc_QLineF_normalVector" qtc_QLineF_normalVector :: Ptr (TQLineF a) -> IO (Ptr (TQLineF ()))

instance Qqp1 (QLineF a) (()) (IO (PointF)) where
 qp1 x0 ()
  = withPointFResult $ \cpointf_ret_x cpointf_ret_y ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLineF_p1_qth cobj_x0 cpointf_ret_x cpointf_ret_y

foreign import ccall "qtc_QLineF_p1_qth" qtc_QLineF_p1_qth :: Ptr (TQLineF a) -> Ptr CDouble -> Ptr CDouble -> IO ()

instance Qqqp1 (QLineF a) (()) (IO (QPointF ())) where
 qqp1 x0 ()
  = withQPointFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLineF_p1 cobj_x0

foreign import ccall "qtc_QLineF_p1" qtc_QLineF_p1 :: Ptr (TQLineF a) -> IO (Ptr (TQPointF ()))

instance Qqp2 (QLineF a) (()) (IO (PointF)) where
 qp2 x0 ()
  = withPointFResult $ \cpointf_ret_x cpointf_ret_y ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLineF_p2_qth cobj_x0 cpointf_ret_x cpointf_ret_y

foreign import ccall "qtc_QLineF_p2_qth" qtc_QLineF_p2_qth :: Ptr (TQLineF a) -> Ptr CDouble -> Ptr CDouble -> IO ()

instance Qqqp2 (QLineF a) (()) (IO (QPointF ())) where
 qqp2 x0 ()
  = withQPointFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLineF_p2 cobj_x0

foreign import ccall "qtc_QLineF_p2" qtc_QLineF_p2 :: Ptr (TQLineF a) -> IO (Ptr (TQPointF ()))

qpointAt :: QLineF a -> ((Double)) -> IO (PointF)
qpointAt x0 (x1)
  = withPointFResult $ \cpointf_ret_x cpointf_ret_y ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLineF_pointAt_qth cobj_x0 (toCDouble x1) cpointf_ret_x cpointf_ret_y

foreign import ccall "qtc_QLineF_pointAt_qth" qtc_QLineF_pointAt_qth :: Ptr (TQLineF a) -> CDouble -> Ptr CDouble -> Ptr CDouble -> IO ()

qqpointAt :: QLineF a -> ((Double)) -> IO (QPointF ())
qqpointAt x0 (x1)
  = withQPointFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLineF_pointAt cobj_x0 (toCDouble x1)

foreign import ccall "qtc_QLineF_pointAt" qtc_QLineF_pointAt :: Ptr (TQLineF a) -> CDouble -> IO (Ptr (TQPointF ()))

qsetLength :: QLineF a -> ((Double)) -> IO ()
qsetLength x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLineF_setLength cobj_x0 (toCDouble x1)

foreign import ccall "qtc_QLineF_setLength" qtc_QLineF_setLength :: Ptr (TQLineF a) -> CDouble -> IO ()

qtoLine :: QLineF a -> (()) -> IO (Line)
qtoLine x0 ()
  = withLineResult $ \cline_ret_x1 cline_ret_y1 cline_ret_x2 cline_ret_y2 ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLineF_toLine_qth cobj_x0 cline_ret_x1 cline_ret_y1 cline_ret_x2 cline_ret_y2

foreign import ccall "qtc_QLineF_toLine_qth" qtc_QLineF_toLine_qth :: Ptr (TQLineF a) -> Ptr CInt -> Ptr CInt -> Ptr CInt -> Ptr CInt -> IO ()

qqtoLine :: QLineF a -> (()) -> IO (QLine ())
qqtoLine x0 ()
  = withQLineResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLineF_toLine cobj_x0

foreign import ccall "qtc_QLineF_toLine" qtc_QLineF_toLine :: Ptr (TQLineF a) -> IO (Ptr (TQLine ()))

instance Qqtranslate (QLineF a) ((Double, Double)) (IO ()) where
 qtranslate x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLineF_translate1 cobj_x0 (toCDouble x1) (toCDouble x2)

foreign import ccall "qtc_QLineF_translate1" qtc_QLineF_translate1 :: Ptr (TQLineF a) -> CDouble -> CDouble -> IO ()

instance Qqtranslate (QLineF a) ((PointF)) (IO ()) where
 qtranslate x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPointF x1 $ \cpointf_x1_x cpointf_x1_y -> 
    qtc_QLineF_translate_qth cobj_x0 cpointf_x1_x cpointf_x1_y 

foreign import ccall "qtc_QLineF_translate_qth" qtc_QLineF_translate_qth :: Ptr (TQLineF a) -> CDouble -> CDouble -> IO ()

instance Qqqtranslate (QLineF a) ((QPointF t1)) where
 qqtranslate x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLineF_translate cobj_x0 cobj_x1

foreign import ccall "qtc_QLineF_translate" qtc_QLineF_translate :: Ptr (TQLineF a) -> Ptr (TQPointF t1) -> IO ()

qunitVector :: QLineF a -> (()) -> IO (LineF)
qunitVector x0 ()
  = withLineFResult $ \clinef_ret_x1 clinef_ret_y1 clinef_ret_x2 clinef_ret_y2 ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLineF_unitVector_qth cobj_x0 clinef_ret_x1 clinef_ret_y1 clinef_ret_x2 clinef_ret_y2

foreign import ccall "qtc_QLineF_unitVector_qth" qtc_QLineF_unitVector_qth :: Ptr (TQLineF a) -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> IO ()

qqunitVector :: QLineF a -> (()) -> IO (QLineF ())
qqunitVector x0 ()
  = withQLineFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLineF_unitVector cobj_x0

foreign import ccall "qtc_QLineF_unitVector" qtc_QLineF_unitVector :: Ptr (TQLineF a) -> IO (Ptr (TQLineF ()))

instance Qqx1 (QLineF a) (()) (IO (Double)) where
 qx1 x0 ()
  = withDoubleResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLineF_x1 cobj_x0

foreign import ccall "qtc_QLineF_x1" qtc_QLineF_x1 :: Ptr (TQLineF a) -> IO CDouble

instance Qqx2 (QLineF a) (()) (IO (Double)) where
 qx2 x0 ()
  = withDoubleResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLineF_x2 cobj_x0

foreign import ccall "qtc_QLineF_x2" qtc_QLineF_x2 :: Ptr (TQLineF a) -> IO CDouble

instance Qqy1 (QLineF a) (()) (IO (Double)) where
 qy1 x0 ()
  = withDoubleResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLineF_y1 cobj_x0

foreign import ccall "qtc_QLineF_y1" qtc_QLineF_y1 :: Ptr (TQLineF a) -> IO CDouble

instance Qqy2 (QLineF a) (()) (IO (Double)) where
 qy2 x0 ()
  = withDoubleResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLineF_y2 cobj_x0

foreign import ccall "qtc_QLineF_y2" qtc_QLineF_y2 :: Ptr (TQLineF a) -> IO CDouble

qLineF_delete :: QLineF a -> IO ()
qLineF_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLineF_delete cobj_x0

foreign import ccall "qtc_QLineF_delete" qtc_QLineF_delete :: Ptr (TQLineF a) -> IO ()

