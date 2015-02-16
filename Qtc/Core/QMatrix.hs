{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QMatrix.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:31
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Core.QMatrix (
  QqMatrix(..)
  ,QqMatrix_nf(..)
  ,det
  ,inverted
  ,isIdentity
  ,isInvertible
  ,m11
  ,m12
  ,m21
  ,m22
  ,Qqmap(..), Qqqmap(..)
  ,QmapRect(..), QqmapRect(..)
  ,qmapToPolygon, mapToPolygon
  ,qMatrix_delete
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

class QqMatrix x1 where
  qMatrix :: x1 -> IO (QMatrix ())

instance QqMatrix (()) where
 qMatrix ()
  = withQMatrixResult $
    qtc_QMatrix

foreign import ccall "qtc_QMatrix" qtc_QMatrix :: IO (Ptr (TQMatrix ()))

instance QqMatrix ((QMatrix t1)) where
 qMatrix (x1)
  = withQMatrixResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMatrix1 cobj_x1

foreign import ccall "qtc_QMatrix1" qtc_QMatrix1 :: Ptr (TQMatrix t1) -> IO (Ptr (TQMatrix ()))

instance QqMatrix ((Double, Double, Double, Double, Double, Double)) where
 qMatrix (x1, x2, x3, x4, x5, x6)
  = withQMatrixResult $
    qtc_QMatrix2 (toCDouble x1) (toCDouble x2) (toCDouble x3) (toCDouble x4) (toCDouble x5) (toCDouble x6)

foreign import ccall "qtc_QMatrix2" qtc_QMatrix2 :: CDouble -> CDouble -> CDouble -> CDouble -> CDouble -> CDouble -> IO (Ptr (TQMatrix ()))

class QqMatrix_nf x1 where
  qMatrix_nf :: x1 -> IO (QMatrix ())

instance QqMatrix_nf (()) where
 qMatrix_nf ()
  = withObjectRefResult $
    qtc_QMatrix

instance QqMatrix_nf ((QMatrix t1)) where
 qMatrix_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMatrix1 cobj_x1

instance QqMatrix_nf ((Double, Double, Double, Double, Double, Double)) where
 qMatrix_nf (x1, x2, x3, x4, x5, x6)
  = withObjectRefResult $
    qtc_QMatrix2 (toCDouble x1) (toCDouble x2) (toCDouble x3) (toCDouble x4) (toCDouble x5) (toCDouble x6)

det :: QMatrix a -> (()) -> IO (Double)
det x0 ()
  = withDoubleResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMatrix_det cobj_x0

foreign import ccall "qtc_QMatrix_det" qtc_QMatrix_det :: Ptr (TQMatrix a) -> IO CDouble

instance Qqdx (QMatrix a) (()) (IO (Double)) where
 qdx x0 ()
  = withDoubleResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMatrix_dx cobj_x0

foreign import ccall "qtc_QMatrix_dx" qtc_QMatrix_dx :: Ptr (TQMatrix a) -> IO CDouble

instance Qqdy (QMatrix a) (()) (IO (Double)) where
 qdy x0 ()
  = withDoubleResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMatrix_dy cobj_x0

foreign import ccall "qtc_QMatrix_dy" qtc_QMatrix_dy :: Ptr (TQMatrix a) -> IO CDouble

inverted :: QMatrix a -> (()) -> IO (QMatrix ())
inverted x0 ()
  = withQMatrixResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMatrix_inverted cobj_x0

foreign import ccall "qtc_QMatrix_inverted" qtc_QMatrix_inverted :: Ptr (TQMatrix a) -> IO (Ptr (TQMatrix ()))

isIdentity :: QMatrix a -> (()) -> IO (Bool)
isIdentity x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMatrix_isIdentity cobj_x0

foreign import ccall "qtc_QMatrix_isIdentity" qtc_QMatrix_isIdentity :: Ptr (TQMatrix a) -> IO CBool

isInvertible :: QMatrix a -> (()) -> IO (Bool)
isInvertible x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMatrix_isInvertible cobj_x0

foreign import ccall "qtc_QMatrix_isInvertible" qtc_QMatrix_isInvertible :: Ptr (TQMatrix a) -> IO CBool

m11 :: QMatrix a -> (()) -> IO (Double)
m11 x0 ()
  = withDoubleResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMatrix_m11 cobj_x0

foreign import ccall "qtc_QMatrix_m11" qtc_QMatrix_m11 :: Ptr (TQMatrix a) -> IO CDouble

m12 :: QMatrix a -> (()) -> IO (Double)
m12 x0 ()
  = withDoubleResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMatrix_m12 cobj_x0

foreign import ccall "qtc_QMatrix_m12" qtc_QMatrix_m12 :: Ptr (TQMatrix a) -> IO CDouble

m21 :: QMatrix a -> (()) -> IO (Double)
m21 x0 ()
  = withDoubleResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMatrix_m21 cobj_x0

foreign import ccall "qtc_QMatrix_m21" qtc_QMatrix_m21 :: Ptr (TQMatrix a) -> IO CDouble

m22 :: QMatrix a -> (()) -> IO (Double)
m22 x0 ()
  = withDoubleResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMatrix_m22 cobj_x0

foreign import ccall "qtc_QMatrix_m22" qtc_QMatrix_m22 :: Ptr (TQMatrix a) -> IO CDouble

class Qqmap x1 xr where
 qmap :: QMatrix a -> x1 -> xr

class Qqqmap x1 xr where
 qqmap :: QMatrix a -> x1 -> xr

instance Qqmap ((Line)) (IO (Line)) where
 qmap x0 (x1)
  = withLineResult $ \cline_ret_x1 cline_ret_y1 cline_ret_x2 cline_ret_y2 ->
    withObjectPtr x0 $ \cobj_x0 ->
    withCLine x1 $ \cline_x1_x1 cline_x1_y1  cline_x1_x2 cline_x1_y2 -> 
    qtc_QMatrix_map7_qth cobj_x0 cline_x1_x1 cline_x1_y1 cline_x1_x2 cline_x1_y2  cline_ret_x1 cline_ret_y1 cline_ret_x2 cline_ret_y2

foreign import ccall "qtc_QMatrix_map7_qth" qtc_QMatrix_map7_qth :: Ptr (TQMatrix a) -> CInt -> CInt -> CInt -> CInt -> Ptr CInt -> Ptr CInt -> Ptr CInt -> Ptr CInt -> IO ()

instance Qqmap ((LineF)) (IO (LineF)) where
 qmap x0 (x1)
  = withLineFResult $ \clinef_ret_x1 clinef_ret_y1 clinef_ret_x2 clinef_ret_y2 ->
    withObjectPtr x0 $ \cobj_x0 ->
    withCLineF x1 $ \clinef_x1_x1 clinef_x1_y1  clinef_x1_x2 clinef_x1_y2 -> 
    qtc_QMatrix_map6_qth cobj_x0 clinef_x1_x1 clinef_x1_y1 clinef_x1_x2 clinef_x1_y2  clinef_ret_x1 clinef_ret_y1 clinef_ret_x2 clinef_ret_y2

foreign import ccall "qtc_QMatrix_map6_qth" qtc_QMatrix_map6_qth :: Ptr (TQMatrix a) -> CDouble -> CDouble -> CDouble -> CDouble -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> IO ()

instance Qqmap ((Point)) (IO (Point)) where
 qmap x0 (x1)
  = withPointResult $ \cpoint_ret_x cpoint_ret_y ->
    withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QMatrix_map4_qth cobj_x0 cpoint_x1_x cpoint_x1_y  cpoint_ret_x cpoint_ret_y

foreign import ccall "qtc_QMatrix_map4_qth" qtc_QMatrix_map4_qth :: Ptr (TQMatrix a) -> CInt -> CInt -> Ptr CInt -> Ptr CInt -> IO ()

instance Qqmap ((PointF)) (IO (PointF)) where
 qmap x0 (x1)
  = withPointFResult $ \cpointf_ret_x cpointf_ret_y ->
    withObjectPtr x0 $ \cobj_x0 ->
    withCPointF x1 $ \cpointf_x1_x cpointf_x1_y -> 
    qtc_QMatrix_map3_qth cobj_x0 cpointf_x1_x cpointf_x1_y  cpointf_ret_x cpointf_ret_y

foreign import ccall "qtc_QMatrix_map3_qth" qtc_QMatrix_map3_qth :: Ptr (TQMatrix a) -> CDouble -> CDouble -> Ptr CDouble -> Ptr CDouble -> IO ()

instance Qqqmap ((QLine t1)) (IO (QLine ())) where
 qqmap x0 (x1)
  = withQLineResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMatrix_map7 cobj_x0 cobj_x1

foreign import ccall "qtc_QMatrix_map7" qtc_QMatrix_map7 :: Ptr (TQMatrix a) -> Ptr (TQLine t1) -> IO (Ptr (TQLine ()))

instance Qqqmap ((QLineF t1)) (IO (QLineF ())) where
 qqmap x0 (x1)
  = withQLineFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMatrix_map6 cobj_x0 cobj_x1

foreign import ccall "qtc_QMatrix_map6" qtc_QMatrix_map6 :: Ptr (TQMatrix a) -> Ptr (TQLineF t1) -> IO (Ptr (TQLineF ()))

instance Qqmap ((QPainterPath t1)) (IO (QPainterPath ())) where
 qmap x0 (x1)
  = withQPainterPathResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMatrix_map5 cobj_x0 cobj_x1

foreign import ccall "qtc_QMatrix_map5" qtc_QMatrix_map5 :: Ptr (TQMatrix a) -> Ptr (TQPainterPath t1) -> IO (Ptr (TQPainterPath ()))

instance Qqqmap ((QPoint t1)) (IO (QPoint ())) where
 qqmap x0 (x1)
  = withQPointResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMatrix_map4 cobj_x0 cobj_x1

foreign import ccall "qtc_QMatrix_map4" qtc_QMatrix_map4 :: Ptr (TQMatrix a) -> Ptr (TQPoint t1) -> IO (Ptr (TQPoint ()))

instance Qqqmap ((QPointF t1)) (IO (QPointF ())) where
 qqmap x0 (x1)
  = withQPointFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMatrix_map3 cobj_x0 cobj_x1

foreign import ccall "qtc_QMatrix_map3" qtc_QMatrix_map3 :: Ptr (TQMatrix a) -> Ptr (TQPointF t1) -> IO (Ptr (TQPointF ()))

instance Qqmap ((QPolygon t1)) (IO (QPolygon ())) where
 qmap x0 (x1)
  = withQPolygonResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMatrix_map2 cobj_x0 cobj_x1

foreign import ccall "qtc_QMatrix_map2" qtc_QMatrix_map2 :: Ptr (TQMatrix a) -> Ptr (TQPolygon t1) -> IO (Ptr (TQPolygon ()))

instance Qqmap ((QPolygonF t1)) (IO (QPolygonF ())) where
 qmap x0 (x1)
  = withQPolygonFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMatrix_map1 cobj_x0 cobj_x1

foreign import ccall "qtc_QMatrix_map1" qtc_QMatrix_map1 :: Ptr (TQMatrix a) -> Ptr (TQPolygonF t1) -> IO (Ptr (TQPolygonF ()))

instance Qqmap ((QRegion t1)) (IO (QRegion ())) where
 qmap x0 (x1)
  = withQRegionResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMatrix_map cobj_x0 cobj_x1

foreign import ccall "qtc_QMatrix_map" qtc_QMatrix_map :: Ptr (TQMatrix a) -> Ptr (TQRegion t1) -> IO (Ptr (TQRegion ()))

class QmapRect x1 xr where
 mapRect :: QMatrix a -> x1 -> xr

class QqmapRect x1 xr where
 qmapRect :: QMatrix a -> x1 -> xr

instance QqmapRect ((QRect t1)) (IO (QRect ())) where
 qmapRect x0 (x1)
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMatrix_mapRect cobj_x0 cobj_x1

foreign import ccall "qtc_QMatrix_mapRect" qtc_QMatrix_mapRect :: Ptr (TQMatrix a) -> Ptr (TQRect t1) -> IO (Ptr (TQRect ()))

instance QqmapRect ((QRectF t1)) (IO (QRectF ())) where
 qmapRect x0 (x1)
  = withQRectFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMatrix_mapRect1 cobj_x0 cobj_x1

foreign import ccall "qtc_QMatrix_mapRect1" qtc_QMatrix_mapRect1 :: Ptr (TQMatrix a) -> Ptr (TQRectF t1) -> IO (Ptr (TQRectF ()))

instance QmapRect ((Rect)) (IO (Rect)) where
 mapRect x0 (x1)
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QMatrix_mapRect_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h  crect_ret_x crect_ret_y crect_ret_w crect_ret_h

foreign import ccall "qtc_QMatrix_mapRect_qth" qtc_QMatrix_mapRect_qth :: Ptr (TQMatrix a) -> CInt -> CInt -> CInt -> CInt -> Ptr CInt -> Ptr CInt -> Ptr CInt -> Ptr CInt -> IO ()

instance QmapRect ((RectF)) (IO (RectF)) where
 mapRect x0 (x1)
  = withRectFResult $ \crectf_ret_x crectf_ret_y crectf_ret_w crectf_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withCRectF x1 $ \crectf_x1_x crectf_x1_y  crectf_x1_w crectf_x1_h -> 
    qtc_QMatrix_mapRect1_qth cobj_x0 crectf_x1_x crectf_x1_y crectf_x1_w crectf_x1_h  crectf_ret_x crectf_ret_y crectf_ret_w crectf_ret_h

foreign import ccall "qtc_QMatrix_mapRect1_qth" qtc_QMatrix_mapRect1_qth :: Ptr (TQMatrix a) -> CDouble -> CDouble -> CDouble -> CDouble -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> IO ()

qmapToPolygon :: QMatrix a -> ((QRect t1)) -> IO (QPolygon ())
qmapToPolygon x0 (x1)
  = withQPolygonResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMatrix_mapToPolygon cobj_x0 cobj_x1

foreign import ccall "qtc_QMatrix_mapToPolygon" qtc_QMatrix_mapToPolygon :: Ptr (TQMatrix a) -> Ptr (TQRect t1) -> IO (Ptr (TQPolygon ()))

mapToPolygon :: QMatrix a -> ((Rect)) -> IO (QPolygon ())
mapToPolygon x0 (x1)
  = withQPolygonResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QMatrix_mapToPolygon_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

foreign import ccall "qtc_QMatrix_mapToPolygon_qth" qtc_QMatrix_mapToPolygon_qth :: Ptr (TQMatrix a) -> CInt -> CInt -> CInt -> CInt -> IO (Ptr (TQPolygon ()))

instance Qreset (QMatrix a) (()) (IO ()) where
 reset x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMatrix_reset cobj_x0

foreign import ccall "qtc_QMatrix_reset" qtc_QMatrix_reset :: Ptr (TQMatrix a) -> IO ()

instance QsetMatrix (QMatrix a) ((Double, Double, Double, Double, Double, Double)) where
 setMatrix x0 (x1, x2, x3, x4, x5, x6)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMatrix_setMatrix cobj_x0 (toCDouble x1) (toCDouble x2) (toCDouble x3) (toCDouble x4) (toCDouble x5) (toCDouble x6)

foreign import ccall "qtc_QMatrix_setMatrix" qtc_QMatrix_setMatrix :: Ptr (TQMatrix a) -> CDouble -> CDouble -> CDouble -> CDouble -> CDouble -> CDouble -> IO ()

qMatrix_delete :: QMatrix a -> IO ()
qMatrix_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMatrix_delete cobj_x0

foreign import ccall "qtc_QMatrix_delete" qtc_QMatrix_delete :: Ptr (TQMatrix a) -> IO ()

