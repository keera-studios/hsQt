{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QRectF.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:31
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Core.QRectF (
  QqqRectF(..), QqRectF(..)
  ,QqqRectF_nf(..), QqRectF_nf(..)
  ,qqtoAlignedRect, qtoAlignedRect
  ,qqtoRect, qtoRect
  ,qRectF_delete
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

class QqqRectF x1 where
  qqRectF :: x1 -> IO (QRectF ())

class QqRectF x1 where
  qRectF :: x1 -> IO (QRectF ())

instance QqRectF (()) where
 qRectF ()
  = withQRectFResult $
    qtc_QRectF

foreign import ccall "qtc_QRectF" qtc_QRectF :: IO (Ptr (TQRectF ()))

instance QqqRectF ((QRect t1)) where
 qqRectF (x1)
  = withQRectFResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRectF1 cobj_x1

foreign import ccall "qtc_QRectF1" qtc_QRectF1 :: Ptr (TQRect t1) -> IO (Ptr (TQRectF ()))

instance QqRectF ((Rect)) where
 qRectF (x1)
  = withQRectFResult $
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QRectF2 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

foreign import ccall "qtc_QRectF2" qtc_QRectF2 :: CInt -> CInt -> CInt -> CInt -> IO (Ptr (TQRectF ()))

instance QqqRectF ((QRectF t1)) where
 qqRectF (x1)
  = withQRectFResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRectF3 cobj_x1

foreign import ccall "qtc_QRectF3" qtc_QRectF3 :: Ptr (TQRectF t1) -> IO (Ptr (TQRectF ()))

instance QqRectF ((RectF)) where
 qRectF (x1)
  = withQRectFResult $
    withCRectF x1 $ \crectf_x1_x crectf_x1_y  crectf_x1_w crectf_x1_h -> 
    qtc_QRectF4 crectf_x1_x crectf_x1_y crectf_x1_w crectf_x1_h 

foreign import ccall "qtc_QRectF4" qtc_QRectF4 :: CDouble -> CDouble -> CDouble -> CDouble -> IO (Ptr (TQRectF ()))

instance QqqRectF ((QPointF t1, QPointF t2)) where
 qqRectF (x1, x2)
  = withQRectFResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QRectF5 cobj_x1 cobj_x2

foreign import ccall "qtc_QRectF5" qtc_QRectF5 :: Ptr (TQPointF t1) -> Ptr (TQPointF t2) -> IO (Ptr (TQRectF ()))

instance QqRectF ((PointF, PointF)) where
 qRectF (x1, x2)
  = withQRectFResult $
    withCPointF x1 $ \cpointf_x1_x cpointf_x1_y -> 
    withCPointF x2 $ \cpointf_x2_x cpointf_x2_y -> 
    qtc_QRectF6 cpointf_x1_x cpointf_x1_y  cpointf_x2_x cpointf_x2_y 

foreign import ccall "qtc_QRectF6" qtc_QRectF6 :: CDouble -> CDouble -> CDouble -> CDouble -> IO (Ptr (TQRectF ()))

instance QqqRectF ((QPointF t1, QSizeF t2)) where
 qqRectF (x1, x2)
  = withQRectFResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QRectF7 cobj_x1 cobj_x2

foreign import ccall "qtc_QRectF7" qtc_QRectF7 :: Ptr (TQPointF t1) -> Ptr (TQSizeF t2) -> IO (Ptr (TQRectF ()))

instance QqRectF ((PointF, SizeF)) where
 qRectF (x1, x2)
  = withQRectFResult $
    withCPointF x1 $ \cpointf_x1_x cpointf_x1_y -> 
    withCSizeF x2 $ \csizef_x2_w csizef_x2_h -> 
    qtc_QRectF8 cpointf_x1_x cpointf_x1_y  csizef_x2_w csizef_x2_h 

foreign import ccall "qtc_QRectF8" qtc_QRectF8 :: CDouble -> CDouble -> CDouble -> CDouble -> IO (Ptr (TQRectF ()))

instance QqRectF ((Double, Double, Double, Double)) where
 qRectF (x1, x2, x3, x4)
  = withQRectFResult $
    qtc_QRectF9 (toCDouble x1) (toCDouble x2) (toCDouble x3) (toCDouble x4)

foreign import ccall "qtc_QRectF9" qtc_QRectF9 :: CDouble -> CDouble -> CDouble -> CDouble -> IO (Ptr (TQRectF ()))

class QqqRectF_nf x1 where
  qqRectF_nf :: x1 -> IO (QRectF ())

class QqRectF_nf x1 where
  qRectF_nf :: x1 -> IO (QRectF ())

instance QqRectF_nf (()) where
 qRectF_nf ()
  = withObjectRefResult $
    qtc_QRectF

instance QqqRectF_nf ((QRect t1)) where
 qqRectF_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRectF1 cobj_x1

instance QqRectF_nf ((Rect)) where
 qRectF_nf (x1)
  = withObjectRefResult $
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QRectF2 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

instance QqqRectF_nf ((QRectF t1)) where
 qqRectF_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRectF3 cobj_x1

instance QqRectF_nf ((RectF)) where
 qRectF_nf (x1)
  = withObjectRefResult $
    withCRectF x1 $ \crectf_x1_x crectf_x1_y  crectf_x1_w crectf_x1_h -> 
    qtc_QRectF4 crectf_x1_x crectf_x1_y crectf_x1_w crectf_x1_h 

instance QqqRectF_nf ((QPointF t1, QPointF t2)) where
 qqRectF_nf (x1, x2)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QRectF5 cobj_x1 cobj_x2

instance QqRectF_nf ((PointF, PointF)) where
 qRectF_nf (x1, x2)
  = withObjectRefResult $
    withCPointF x1 $ \cpointf_x1_x cpointf_x1_y -> 
    withCPointF x2 $ \cpointf_x2_x cpointf_x2_y -> 
    qtc_QRectF6 cpointf_x1_x cpointf_x1_y  cpointf_x2_x cpointf_x2_y 

instance QqqRectF_nf ((QPointF t1, QSizeF t2)) where
 qqRectF_nf (x1, x2)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QRectF7 cobj_x1 cobj_x2

instance QqRectF_nf ((PointF, SizeF)) where
 qRectF_nf (x1, x2)
  = withObjectRefResult $
    withCPointF x1 $ \cpointf_x1_x cpointf_x1_y -> 
    withCSizeF x2 $ \csizef_x2_w csizef_x2_h -> 
    qtc_QRectF8 cpointf_x1_x cpointf_x1_y  csizef_x2_w csizef_x2_h 

instance QqRectF_nf ((Double, Double, Double, Double)) where
 qRectF_nf (x1, x2, x3, x4)
  = withObjectRefResult $
    qtc_QRectF9 (toCDouble x1) (toCDouble x2) (toCDouble x3) (toCDouble x4)

instance Qqadjust (QRectF a) ((Double, Double, Double, Double)) where
 qadjust x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRectF_adjust cobj_x0 (toCDouble x1) (toCDouble x2) (toCDouble x3) (toCDouble x4)

foreign import ccall "qtc_QRectF_adjust" qtc_QRectF_adjust :: Ptr (TQRectF a) -> CDouble -> CDouble -> CDouble -> CDouble -> IO ()

instance Qqqadjusted (QRectF a) ((Double, Double, Double, Double)) (IO (QRectF ())) where
 qqadjusted x0 (x1, x2, x3, x4)
  = withQRectFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRectF_adjusted cobj_x0 (toCDouble x1) (toCDouble x2) (toCDouble x3) (toCDouble x4)

foreign import ccall "qtc_QRectF_adjusted" qtc_QRectF_adjusted :: Ptr (TQRectF a) -> CDouble -> CDouble -> CDouble -> CDouble -> IO (Ptr (TQRectF ()))

instance Qqadjusted (QRectF a) ((Double, Double, Double, Double)) (IO (RectF)) where
 qadjusted x0 (x1, x2, x3, x4)
  = withRectFResult $ \crectf_ret_x crectf_ret_y crectf_ret_w crectf_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRectF_adjusted_qth cobj_x0 (toCDouble x1) (toCDouble x2) (toCDouble x3) (toCDouble x4) crectf_ret_x crectf_ret_y crectf_ret_w crectf_ret_h

foreign import ccall "qtc_QRectF_adjusted_qth" qtc_QRectF_adjusted_qth :: Ptr (TQRectF a) -> CDouble -> CDouble -> CDouble -> CDouble -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> IO ()

instance Qqbottom (QRectF a) (()) (IO (Double)) where
 qbottom x0 ()
  = withDoubleResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRectF_bottom cobj_x0

foreign import ccall "qtc_QRectF_bottom" qtc_QRectF_bottom :: Ptr (TQRectF a) -> IO CDouble

instance QqbottomLeft (QRectF a) (()) (IO (PointF)) where
 qbottomLeft x0 ()
  = withPointFResult $ \cpointf_ret_x cpointf_ret_y ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRectF_bottomLeft_qth cobj_x0 cpointf_ret_x cpointf_ret_y

foreign import ccall "qtc_QRectF_bottomLeft_qth" qtc_QRectF_bottomLeft_qth :: Ptr (TQRectF a) -> Ptr CDouble -> Ptr CDouble -> IO ()

instance QqqbottomLeft (QRectF a) (()) (IO (QPointF ())) where
 qqbottomLeft x0 ()
  = withQPointFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRectF_bottomLeft cobj_x0

foreign import ccall "qtc_QRectF_bottomLeft" qtc_QRectF_bottomLeft :: Ptr (TQRectF a) -> IO (Ptr (TQPointF ()))

instance QqbottomRight (QRectF a) (()) (IO (PointF)) where
 qbottomRight x0 ()
  = withPointFResult $ \cpointf_ret_x cpointf_ret_y ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRectF_bottomRight_qth cobj_x0 cpointf_ret_x cpointf_ret_y

foreign import ccall "qtc_QRectF_bottomRight_qth" qtc_QRectF_bottomRight_qth :: Ptr (TQRectF a) -> Ptr CDouble -> Ptr CDouble -> IO ()

instance QqqbottomRight (QRectF a) (()) (IO (QPointF ())) where
 qqbottomRight x0 ()
  = withQPointFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRectF_bottomRight cobj_x0

foreign import ccall "qtc_QRectF_bottomRight" qtc_QRectF_bottomRight :: Ptr (TQRectF a) -> IO (Ptr (TQPointF ()))

instance Qqcenter (QRectF a) (()) (IO (PointF)) where
 qcenter x0 ()
  = withPointFResult $ \cpointf_ret_x cpointf_ret_y ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRectF_center_qth cobj_x0 cpointf_ret_x cpointf_ret_y

foreign import ccall "qtc_QRectF_center_qth" qtc_QRectF_center_qth :: Ptr (TQRectF a) -> Ptr CDouble -> Ptr CDouble -> IO ()

instance Qqqcenter (QRectF a) (()) (IO (QPointF ())) where
 qqcenter x0 ()
  = withQPointFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRectF_center cobj_x0

foreign import ccall "qtc_QRectF_center" qtc_QRectF_center :: Ptr (TQRectF a) -> IO (Ptr (TQPointF ()))

instance Qqcontains (QRectF a) ((Double, Double)) where
 qcontains x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRectF_contains2 cobj_x0 (toCDouble x1) (toCDouble x2)

foreign import ccall "qtc_QRectF_contains2" qtc_QRectF_contains2 :: Ptr (TQRectF a) -> CDouble -> CDouble -> IO CBool

instance Qqcontains (QRectF a) ((PointF)) where
 qcontains x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCPointF x1 $ \cpointf_x1_x cpointf_x1_y -> 
    qtc_QRectF_contains_qth cobj_x0 cpointf_x1_x cpointf_x1_y 

foreign import ccall "qtc_QRectF_contains_qth" qtc_QRectF_contains_qth :: Ptr (TQRectF a) -> CDouble -> CDouble -> IO CBool

instance Qqqcontains (QRectF a) ((QPointF t1)) where
 qqcontains x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRectF_contains cobj_x0 cobj_x1

foreign import ccall "qtc_QRectF_contains" qtc_QRectF_contains :: Ptr (TQRectF a) -> Ptr (TQPointF t1) -> IO CBool

instance Qqqcontains (QRectF a) ((QRectF t1)) where
 qqcontains x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRectF_contains1 cobj_x0 cobj_x1

foreign import ccall "qtc_QRectF_contains1" qtc_QRectF_contains1 :: Ptr (TQRectF a) -> Ptr (TQRectF t1) -> IO CBool

instance Qqcontains (QRectF a) ((RectF)) where
 qcontains x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCRectF x1 $ \crectf_x1_x crectf_x1_y  crectf_x1_w crectf_x1_h -> 
    qtc_QRectF_contains1_qth cobj_x0 crectf_x1_x crectf_x1_y crectf_x1_w crectf_x1_h 

foreign import ccall "qtc_QRectF_contains1_qth" qtc_QRectF_contains1_qth :: Ptr (TQRectF a) -> CDouble -> CDouble -> CDouble -> CDouble -> IO CBool

instance Qqheight (QRectF a) (()) (IO (Double)) where
 qheight x0 ()
  = withDoubleResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRectF_height cobj_x0

foreign import ccall "qtc_QRectF_height" qtc_QRectF_height :: Ptr (TQRectF a) -> IO CDouble

instance Qqqintersect (QRectF a) ((QRectF t1)) (IO (QRectF ())) where
 qqintersect x0 (x1)
  = withQRectFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRectF_intersect cobj_x0 cobj_x1

foreign import ccall "qtc_QRectF_intersect" qtc_QRectF_intersect :: Ptr (TQRectF a) -> Ptr (TQRectF t1) -> IO (Ptr (TQRectF ()))

instance Qqintersect (QRectF a) ((RectF)) (IO (RectF)) where
 qintersect x0 (x1)
  = withRectFResult $ \crectf_ret_x crectf_ret_y crectf_ret_w crectf_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withCRectF x1 $ \crectf_x1_x crectf_x1_y  crectf_x1_w crectf_x1_h -> 
    qtc_QRectF_intersect_qth cobj_x0 crectf_x1_x crectf_x1_y crectf_x1_w crectf_x1_h  crectf_ret_x crectf_ret_y crectf_ret_w crectf_ret_h

foreign import ccall "qtc_QRectF_intersect_qth" qtc_QRectF_intersect_qth :: Ptr (TQRectF a) -> CDouble -> CDouble -> CDouble -> CDouble -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> IO ()

instance Qqqintersected (QRectF a) ((QRectF t1)) (IO (QRectF ())) where
 qqintersected x0 (x1)
  = withQRectFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRectF_intersected cobj_x0 cobj_x1

foreign import ccall "qtc_QRectF_intersected" qtc_QRectF_intersected :: Ptr (TQRectF a) -> Ptr (TQRectF t1) -> IO (Ptr (TQRectF ()))

instance Qqintersected (QRectF a) ((RectF)) (IO (RectF)) where
 qintersected x0 (x1)
  = withRectFResult $ \crectf_ret_x crectf_ret_y crectf_ret_w crectf_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withCRectF x1 $ \crectf_x1_x crectf_x1_y  crectf_x1_w crectf_x1_h -> 
    qtc_QRectF_intersected_qth cobj_x0 crectf_x1_x crectf_x1_y crectf_x1_w crectf_x1_h  crectf_ret_x crectf_ret_y crectf_ret_w crectf_ret_h

foreign import ccall "qtc_QRectF_intersected_qth" qtc_QRectF_intersected_qth :: Ptr (TQRectF a) -> CDouble -> CDouble -> CDouble -> CDouble -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> IO ()

instance Qqqintersects (QRectF a) ((QRectF t1)) where
 qqintersects x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRectF_intersects cobj_x0 cobj_x1

foreign import ccall "qtc_QRectF_intersects" qtc_QRectF_intersects :: Ptr (TQRectF a) -> Ptr (TQRectF t1) -> IO CBool

instance Qqintersects (QRectF a) ((RectF)) where
 qintersects x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCRectF x1 $ \crectf_x1_x crectf_x1_y  crectf_x1_w crectf_x1_h -> 
    qtc_QRectF_intersects_qth cobj_x0 crectf_x1_x crectf_x1_y crectf_x1_w crectf_x1_h 

foreign import ccall "qtc_QRectF_intersects_qth" qtc_QRectF_intersects_qth :: Ptr (TQRectF a) -> CDouble -> CDouble -> CDouble -> CDouble -> IO CBool

instance QqisEmpty (QRectF a) (()) where
 qisEmpty x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRectF_isEmpty cobj_x0

foreign import ccall "qtc_QRectF_isEmpty" qtc_QRectF_isEmpty :: Ptr (TQRectF a) -> IO CBool

instance QqisNull (QRectF a) (()) where
 qisNull x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRectF_isNull cobj_x0

foreign import ccall "qtc_QRectF_isNull" qtc_QRectF_isNull :: Ptr (TQRectF a) -> IO CBool

instance QqisValid (QRectF ()) (()) where
 qisValid x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRectF_isValid cobj_x0

foreign import ccall "qtc_QRectF_isValid" qtc_QRectF_isValid :: Ptr (TQRectF a) -> IO CBool

instance QqisValid (QRectFSc a) (()) where
 qisValid x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRectF_isValid cobj_x0

instance Qqleft (QRectF a) (()) (IO (Double)) where
 qleft x0 ()
  = withDoubleResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRectF_left cobj_x0

foreign import ccall "qtc_QRectF_left" qtc_QRectF_left :: Ptr (TQRectF a) -> IO CDouble

instance QqmoveBottom (QRectF a) ((Double)) where
 qmoveBottom x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRectF_moveBottom cobj_x0 (toCDouble x1)

foreign import ccall "qtc_QRectF_moveBottom" qtc_QRectF_moveBottom :: Ptr (TQRectF a) -> CDouble -> IO ()

instance QqmoveBottomLeft (QRectF a) ((PointF)) where
 qmoveBottomLeft x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPointF x1 $ \cpointf_x1_x cpointf_x1_y -> 
    qtc_QRectF_moveBottomLeft_qth cobj_x0 cpointf_x1_x cpointf_x1_y 

foreign import ccall "qtc_QRectF_moveBottomLeft_qth" qtc_QRectF_moveBottomLeft_qth :: Ptr (TQRectF a) -> CDouble -> CDouble -> IO ()

instance QqqmoveBottomLeft (QRectF a) ((QPointF t1)) where
 qqmoveBottomLeft x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRectF_moveBottomLeft cobj_x0 cobj_x1

foreign import ccall "qtc_QRectF_moveBottomLeft" qtc_QRectF_moveBottomLeft :: Ptr (TQRectF a) -> Ptr (TQPointF t1) -> IO ()

instance QqmoveBottomRight (QRectF a) ((PointF)) where
 qmoveBottomRight x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPointF x1 $ \cpointf_x1_x cpointf_x1_y -> 
    qtc_QRectF_moveBottomRight_qth cobj_x0 cpointf_x1_x cpointf_x1_y 

foreign import ccall "qtc_QRectF_moveBottomRight_qth" qtc_QRectF_moveBottomRight_qth :: Ptr (TQRectF a) -> CDouble -> CDouble -> IO ()

instance QqqmoveBottomRight (QRectF a) ((QPointF t1)) where
 qqmoveBottomRight x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRectF_moveBottomRight cobj_x0 cobj_x1

foreign import ccall "qtc_QRectF_moveBottomRight" qtc_QRectF_moveBottomRight :: Ptr (TQRectF a) -> Ptr (TQPointF t1) -> IO ()

instance QqmoveCenter (QRectF a) ((PointF)) where
 qmoveCenter x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPointF x1 $ \cpointf_x1_x cpointf_x1_y -> 
    qtc_QRectF_moveCenter_qth cobj_x0 cpointf_x1_x cpointf_x1_y 

foreign import ccall "qtc_QRectF_moveCenter_qth" qtc_QRectF_moveCenter_qth :: Ptr (TQRectF a) -> CDouble -> CDouble -> IO ()

instance QqqmoveCenter (QRectF a) ((QPointF t1)) where
 qqmoveCenter x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRectF_moveCenter cobj_x0 cobj_x1

foreign import ccall "qtc_QRectF_moveCenter" qtc_QRectF_moveCenter :: Ptr (TQRectF a) -> Ptr (TQPointF t1) -> IO ()

instance QqmoveLeft (QRectF a) ((Double)) where
 qmoveLeft x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRectF_moveLeft cobj_x0 (toCDouble x1)

foreign import ccall "qtc_QRectF_moveLeft" qtc_QRectF_moveLeft :: Ptr (TQRectF a) -> CDouble -> IO ()

instance QqmoveRight (QRectF a) ((Double)) where
 qmoveRight x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRectF_moveRight cobj_x0 (toCDouble x1)

foreign import ccall "qtc_QRectF_moveRight" qtc_QRectF_moveRight :: Ptr (TQRectF a) -> CDouble -> IO ()

instance QqmoveTo (QRectF a) ((Double, Double)) where
 qmoveTo x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRectF_moveTo1 cobj_x0 (toCDouble x1) (toCDouble x2)

foreign import ccall "qtc_QRectF_moveTo1" qtc_QRectF_moveTo1 :: Ptr (TQRectF a) -> CDouble -> CDouble -> IO ()

instance QqmoveTo (QRectF a) ((PointF)) where
 qmoveTo x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPointF x1 $ \cpointf_x1_x cpointf_x1_y -> 
    qtc_QRectF_moveTo_qth cobj_x0 cpointf_x1_x cpointf_x1_y 

foreign import ccall "qtc_QRectF_moveTo_qth" qtc_QRectF_moveTo_qth :: Ptr (TQRectF a) -> CDouble -> CDouble -> IO ()

instance QqqmoveTo (QRectF a) ((QPointF t1)) where
 qqmoveTo x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRectF_moveTo cobj_x0 cobj_x1

foreign import ccall "qtc_QRectF_moveTo" qtc_QRectF_moveTo :: Ptr (TQRectF a) -> Ptr (TQPointF t1) -> IO ()

instance QqmoveTop (QRectF a) ((Double)) where
 qmoveTop x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRectF_moveTop cobj_x0 (toCDouble x1)

foreign import ccall "qtc_QRectF_moveTop" qtc_QRectF_moveTop :: Ptr (TQRectF a) -> CDouble -> IO ()

instance QqmoveTopLeft (QRectF a) ((PointF)) where
 qmoveTopLeft x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPointF x1 $ \cpointf_x1_x cpointf_x1_y -> 
    qtc_QRectF_moveTopLeft_qth cobj_x0 cpointf_x1_x cpointf_x1_y 

foreign import ccall "qtc_QRectF_moveTopLeft_qth" qtc_QRectF_moveTopLeft_qth :: Ptr (TQRectF a) -> CDouble -> CDouble -> IO ()

instance QqqmoveTopLeft (QRectF a) ((QPointF t1)) where
 qqmoveTopLeft x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRectF_moveTopLeft cobj_x0 cobj_x1

foreign import ccall "qtc_QRectF_moveTopLeft" qtc_QRectF_moveTopLeft :: Ptr (TQRectF a) -> Ptr (TQPointF t1) -> IO ()

instance QqmoveTopRight (QRectF a) ((PointF)) where
 qmoveTopRight x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPointF x1 $ \cpointf_x1_x cpointf_x1_y -> 
    qtc_QRectF_moveTopRight_qth cobj_x0 cpointf_x1_x cpointf_x1_y 

foreign import ccall "qtc_QRectF_moveTopRight_qth" qtc_QRectF_moveTopRight_qth :: Ptr (TQRectF a) -> CDouble -> CDouble -> IO ()

instance QqqmoveTopRight (QRectF a) ((QPointF t1)) where
 qqmoveTopRight x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRectF_moveTopRight cobj_x0 cobj_x1

foreign import ccall "qtc_QRectF_moveTopRight" qtc_QRectF_moveTopRight :: Ptr (TQRectF a) -> Ptr (TQPointF t1) -> IO ()

instance Qqqnormalized (QRectF a) (()) (IO (QRectF ())) where
 qqnormalized x0 ()
  = withQRectFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRectF_normalized cobj_x0

foreign import ccall "qtc_QRectF_normalized" qtc_QRectF_normalized :: Ptr (TQRectF a) -> IO (Ptr (TQRectF ()))

instance Qqnormalized (QRectF a) (()) (IO (RectF)) where
 qnormalized x0 ()
  = withRectFResult $ \crectf_ret_x crectf_ret_y crectf_ret_w crectf_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRectF_normalized_qth cobj_x0 crectf_ret_x crectf_ret_y crectf_ret_w crectf_ret_h

foreign import ccall "qtc_QRectF_normalized_qth" qtc_QRectF_normalized_qth :: Ptr (TQRectF a) -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> IO ()

instance Qqright (QRectF a) (()) (IO (Double)) where
 qright x0 ()
  = withDoubleResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRectF_right cobj_x0

foreign import ccall "qtc_QRectF_right" qtc_QRectF_right :: Ptr (TQRectF a) -> IO CDouble

instance QqsetBottom (QRectF a) ((Double)) where
 qsetBottom x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRectF_setBottom cobj_x0 (toCDouble x1)

foreign import ccall "qtc_QRectF_setBottom" qtc_QRectF_setBottom :: Ptr (TQRectF a) -> CDouble -> IO ()

instance QqsetBottomLeft (QRectF a) ((PointF)) where
 qsetBottomLeft x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPointF x1 $ \cpointf_x1_x cpointf_x1_y -> 
    qtc_QRectF_setBottomLeft_qth cobj_x0 cpointf_x1_x cpointf_x1_y 

foreign import ccall "qtc_QRectF_setBottomLeft_qth" qtc_QRectF_setBottomLeft_qth :: Ptr (TQRectF a) -> CDouble -> CDouble -> IO ()

instance QqqsetBottomLeft (QRectF a) ((QPointF t1)) where
 qqsetBottomLeft x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRectF_setBottomLeft cobj_x0 cobj_x1

foreign import ccall "qtc_QRectF_setBottomLeft" qtc_QRectF_setBottomLeft :: Ptr (TQRectF a) -> Ptr (TQPointF t1) -> IO ()

instance QqsetBottomRight (QRectF a) ((PointF)) where
 qsetBottomRight x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPointF x1 $ \cpointf_x1_x cpointf_x1_y -> 
    qtc_QRectF_setBottomRight_qth cobj_x0 cpointf_x1_x cpointf_x1_y 

foreign import ccall "qtc_QRectF_setBottomRight_qth" qtc_QRectF_setBottomRight_qth :: Ptr (TQRectF a) -> CDouble -> CDouble -> IO ()

instance QqqsetBottomRight (QRectF a) ((QPointF t1)) where
 qqsetBottomRight x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRectF_setBottomRight cobj_x0 cobj_x1

foreign import ccall "qtc_QRectF_setBottomRight" qtc_QRectF_setBottomRight :: Ptr (TQRectF a) -> Ptr (TQPointF t1) -> IO ()

instance QqsetCoords (QRectF a) ((Double, Double, Double, Double)) where
 qsetCoords x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRectF_setCoords cobj_x0 (toCDouble x1) (toCDouble x2) (toCDouble x3) (toCDouble x4)

foreign import ccall "qtc_QRectF_setCoords" qtc_QRectF_setCoords :: Ptr (TQRectF a) -> CDouble -> CDouble -> CDouble -> CDouble -> IO ()

instance QqsetHeight (QRectF a) ((Double)) where
 qsetHeight x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRectF_setHeight cobj_x0 (toCDouble x1)

foreign import ccall "qtc_QRectF_setHeight" qtc_QRectF_setHeight :: Ptr (TQRectF a) -> CDouble -> IO ()

instance QqsetLeft (QRectF a) ((Double)) where
 qsetLeft x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRectF_setLeft cobj_x0 (toCDouble x1)

foreign import ccall "qtc_QRectF_setLeft" qtc_QRectF_setLeft :: Ptr (TQRectF a) -> CDouble -> IO ()

instance QqsetRect (QRectF a) ((Double, Double, Double, Double)) where
 qsetRect x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRectF_setRect cobj_x0 (toCDouble x1) (toCDouble x2) (toCDouble x3) (toCDouble x4)

foreign import ccall "qtc_QRectF_setRect" qtc_QRectF_setRect :: Ptr (TQRectF a) -> CDouble -> CDouble -> CDouble -> CDouble -> IO ()

instance QqsetRight (QRectF a) ((Double)) where
 qsetRight x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRectF_setRight cobj_x0 (toCDouble x1)

foreign import ccall "qtc_QRectF_setRight" qtc_QRectF_setRight :: Ptr (TQRectF a) -> CDouble -> IO ()

instance QqqsetSize (QRectF a) ((QSizeF t1)) where
 qqsetSize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRectF_setSize cobj_x0 cobj_x1

foreign import ccall "qtc_QRectF_setSize" qtc_QRectF_setSize :: Ptr (TQRectF a) -> Ptr (TQSizeF t1) -> IO ()

instance QqsetSize (QRectF a) ((SizeF)) where
 qsetSize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCSizeF x1 $ \csizef_x1_w csizef_x1_h -> 
    qtc_QRectF_setSize_qth cobj_x0 csizef_x1_w csizef_x1_h 

foreign import ccall "qtc_QRectF_setSize_qth" qtc_QRectF_setSize_qth :: Ptr (TQRectF a) -> CDouble -> CDouble -> IO ()

instance QqsetTop (QRectF a) ((Double)) where
 qsetTop x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRectF_setTop cobj_x0 (toCDouble x1)

foreign import ccall "qtc_QRectF_setTop" qtc_QRectF_setTop :: Ptr (TQRectF a) -> CDouble -> IO ()

instance QqsetTopLeft (QRectF a) ((PointF)) where
 qsetTopLeft x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPointF x1 $ \cpointf_x1_x cpointf_x1_y -> 
    qtc_QRectF_setTopLeft_qth cobj_x0 cpointf_x1_x cpointf_x1_y 

foreign import ccall "qtc_QRectF_setTopLeft_qth" qtc_QRectF_setTopLeft_qth :: Ptr (TQRectF a) -> CDouble -> CDouble -> IO ()

instance QqqsetTopLeft (QRectF a) ((QPointF t1)) where
 qqsetTopLeft x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRectF_setTopLeft cobj_x0 cobj_x1

foreign import ccall "qtc_QRectF_setTopLeft" qtc_QRectF_setTopLeft :: Ptr (TQRectF a) -> Ptr (TQPointF t1) -> IO ()

instance QqsetTopRight (QRectF a) ((PointF)) where
 qsetTopRight x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPointF x1 $ \cpointf_x1_x cpointf_x1_y -> 
    qtc_QRectF_setTopRight_qth cobj_x0 cpointf_x1_x cpointf_x1_y 

foreign import ccall "qtc_QRectF_setTopRight_qth" qtc_QRectF_setTopRight_qth :: Ptr (TQRectF a) -> CDouble -> CDouble -> IO ()

instance QqqsetTopRight (QRectF a) ((QPointF t1)) where
 qqsetTopRight x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRectF_setTopRight cobj_x0 cobj_x1

foreign import ccall "qtc_QRectF_setTopRight" qtc_QRectF_setTopRight :: Ptr (TQRectF a) -> Ptr (TQPointF t1) -> IO ()

instance QqsetWidth (QRectF a) ((Double)) where
 qsetWidth x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRectF_setWidth cobj_x0 (toCDouble x1)

foreign import ccall "qtc_QRectF_setWidth" qtc_QRectF_setWidth :: Ptr (TQRectF a) -> CDouble -> IO ()

instance Qqqsize (QRectF a) (()) (IO (QSizeF ())) where
 qqsize x0 ()
  = withQSizeFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRectF_size cobj_x0

foreign import ccall "qtc_QRectF_size" qtc_QRectF_size :: Ptr (TQRectF a) -> IO (Ptr (TQSizeF ()))

instance Qqsize (QRectF a) (()) (IO (SizeF)) where
 qsize x0 ()
  = withSizeFResult $ \csizef_ret_w csizef_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRectF_size_qth cobj_x0 csizef_ret_w csizef_ret_h

foreign import ccall "qtc_QRectF_size_qth" qtc_QRectF_size_qth :: Ptr (TQRectF a) -> Ptr CDouble -> Ptr CDouble -> IO ()

qqtoAlignedRect :: QRectF a -> (()) -> IO (QRect ())
qqtoAlignedRect x0 ()
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRectF_toAlignedRect cobj_x0

foreign import ccall "qtc_QRectF_toAlignedRect" qtc_QRectF_toAlignedRect :: Ptr (TQRectF a) -> IO (Ptr (TQRect ()))

qtoAlignedRect :: QRectF a -> (()) -> IO (Rect)
qtoAlignedRect x0 ()
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRectF_toAlignedRect_qth cobj_x0 crect_ret_x crect_ret_y crect_ret_w crect_ret_h

foreign import ccall "qtc_QRectF_toAlignedRect_qth" qtc_QRectF_toAlignedRect_qth :: Ptr (TQRectF a) -> Ptr CInt -> Ptr CInt -> Ptr CInt -> Ptr CInt -> IO ()

qqtoRect :: QRectF a -> (()) -> IO (QRect ())
qqtoRect x0 ()
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRectF_toRect cobj_x0

foreign import ccall "qtc_QRectF_toRect" qtc_QRectF_toRect :: Ptr (TQRectF a) -> IO (Ptr (TQRect ()))

qtoRect :: QRectF a -> (()) -> IO (Rect)
qtoRect x0 ()
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRectF_toRect_qth cobj_x0 crect_ret_x crect_ret_y crect_ret_w crect_ret_h

foreign import ccall "qtc_QRectF_toRect_qth" qtc_QRectF_toRect_qth :: Ptr (TQRectF a) -> Ptr CInt -> Ptr CInt -> Ptr CInt -> Ptr CInt -> IO ()

instance Qqtop (QRectF a) (()) (IO (Double)) where
 qtop x0 ()
  = withDoubleResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRectF_top cobj_x0

foreign import ccall "qtc_QRectF_top" qtc_QRectF_top :: Ptr (TQRectF a) -> IO CDouble

instance QqtopLeft (QRectF a) (()) (IO (PointF)) where
 qtopLeft x0 ()
  = withPointFResult $ \cpointf_ret_x cpointf_ret_y ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRectF_topLeft_qth cobj_x0 cpointf_ret_x cpointf_ret_y

foreign import ccall "qtc_QRectF_topLeft_qth" qtc_QRectF_topLeft_qth :: Ptr (TQRectF a) -> Ptr CDouble -> Ptr CDouble -> IO ()

instance QqqtopLeft (QRectF a) (()) (IO (QPointF ())) where
 qqtopLeft x0 ()
  = withQPointFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRectF_topLeft cobj_x0

foreign import ccall "qtc_QRectF_topLeft" qtc_QRectF_topLeft :: Ptr (TQRectF a) -> IO (Ptr (TQPointF ()))

instance QqtopRight (QRectF a) (()) (IO (PointF)) where
 qtopRight x0 ()
  = withPointFResult $ \cpointf_ret_x cpointf_ret_y ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRectF_topRight_qth cobj_x0 cpointf_ret_x cpointf_ret_y

foreign import ccall "qtc_QRectF_topRight_qth" qtc_QRectF_topRight_qth :: Ptr (TQRectF a) -> Ptr CDouble -> Ptr CDouble -> IO ()

instance QqqtopRight (QRectF a) (()) (IO (QPointF ())) where
 qqtopRight x0 ()
  = withQPointFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRectF_topRight cobj_x0

foreign import ccall "qtc_QRectF_topRight" qtc_QRectF_topRight :: Ptr (TQRectF a) -> IO (Ptr (TQPointF ()))

instance Qqtranslate (QRectF a) ((Double, Double)) (IO ()) where
 qtranslate x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRectF_translate1 cobj_x0 (toCDouble x1) (toCDouble x2)

foreign import ccall "qtc_QRectF_translate1" qtc_QRectF_translate1 :: Ptr (TQRectF a) -> CDouble -> CDouble -> IO ()

instance Qqtranslate (QRectF a) ((PointF)) (IO ()) where
 qtranslate x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPointF x1 $ \cpointf_x1_x cpointf_x1_y -> 
    qtc_QRectF_translate_qth cobj_x0 cpointf_x1_x cpointf_x1_y 

foreign import ccall "qtc_QRectF_translate_qth" qtc_QRectF_translate_qth :: Ptr (TQRectF a) -> CDouble -> CDouble -> IO ()

instance Qqqtranslate (QRectF a) ((QPointF t1)) where
 qqtranslate x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRectF_translate cobj_x0 cobj_x1

foreign import ccall "qtc_QRectF_translate" qtc_QRectF_translate :: Ptr (TQRectF a) -> Ptr (TQPointF t1) -> IO ()

instance Qqqtranslated (QRectF a) ((Double, Double)) (IO (QRectF ())) where
 qqtranslated x0 (x1, x2)
  = withQRectFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRectF_translated1 cobj_x0 (toCDouble x1) (toCDouble x2)

foreign import ccall "qtc_QRectF_translated1" qtc_QRectF_translated1 :: Ptr (TQRectF a) -> CDouble -> CDouble -> IO (Ptr (TQRectF ()))

instance Qqqtranslated (QRectF a) ((QPointF t1)) (IO (QRectF ())) where
 qqtranslated x0 (x1)
  = withQRectFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRectF_translated cobj_x0 cobj_x1

foreign import ccall "qtc_QRectF_translated" qtc_QRectF_translated :: Ptr (TQRectF a) -> Ptr (TQPointF t1) -> IO (Ptr (TQRectF ()))

instance Qqtranslated (QRectF a) ((Double, Double)) (IO (RectF)) where
 qtranslated x0 (x1, x2)
  = withRectFResult $ \crectf_ret_x crectf_ret_y crectf_ret_w crectf_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRectF_translated1_qth cobj_x0 (toCDouble x1) (toCDouble x2) crectf_ret_x crectf_ret_y crectf_ret_w crectf_ret_h

foreign import ccall "qtc_QRectF_translated1_qth" qtc_QRectF_translated1_qth :: Ptr (TQRectF a) -> CDouble -> CDouble -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> IO ()

instance Qqtranslated (QRectF a) ((PointF)) (IO (RectF)) where
 qtranslated x0 (x1)
  = withRectFResult $ \crectf_ret_x crectf_ret_y crectf_ret_w crectf_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withCPointF x1 $ \cpointf_x1_x cpointf_x1_y -> 
    qtc_QRectF_translated_qth cobj_x0 cpointf_x1_x cpointf_x1_y  crectf_ret_x crectf_ret_y crectf_ret_w crectf_ret_h

foreign import ccall "qtc_QRectF_translated_qth" qtc_QRectF_translated_qth :: Ptr (TQRectF a) -> CDouble -> CDouble -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> IO ()

instance Qqqunite (QRectF a) ((QRectF t1)) (IO (QRectF ())) where
 qqunite x0 (x1)
  = withQRectFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRectF_unite cobj_x0 cobj_x1

foreign import ccall "qtc_QRectF_unite" qtc_QRectF_unite :: Ptr (TQRectF a) -> Ptr (TQRectF t1) -> IO (Ptr (TQRectF ()))

instance Qqunite (QRectF a) ((RectF)) (IO (RectF)) where
 qunite x0 (x1)
  = withRectFResult $ \crectf_ret_x crectf_ret_y crectf_ret_w crectf_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withCRectF x1 $ \crectf_x1_x crectf_x1_y  crectf_x1_w crectf_x1_h -> 
    qtc_QRectF_unite_qth cobj_x0 crectf_x1_x crectf_x1_y crectf_x1_w crectf_x1_h  crectf_ret_x crectf_ret_y crectf_ret_w crectf_ret_h

foreign import ccall "qtc_QRectF_unite_qth" qtc_QRectF_unite_qth :: Ptr (TQRectF a) -> CDouble -> CDouble -> CDouble -> CDouble -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> IO ()

instance Qqqunited (QRectF a) ((QRectF t1)) (IO (QRectF ())) where
 qqunited x0 (x1)
  = withQRectFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRectF_united cobj_x0 cobj_x1

foreign import ccall "qtc_QRectF_united" qtc_QRectF_united :: Ptr (TQRectF a) -> Ptr (TQRectF t1) -> IO (Ptr (TQRectF ()))

instance Qqunited (QRectF a) ((RectF)) (IO (RectF)) where
 qunited x0 (x1)
  = withRectFResult $ \crectf_ret_x crectf_ret_y crectf_ret_w crectf_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withCRectF x1 $ \crectf_x1_x crectf_x1_y  crectf_x1_w crectf_x1_h -> 
    qtc_QRectF_united_qth cobj_x0 crectf_x1_x crectf_x1_y crectf_x1_w crectf_x1_h  crectf_ret_x crectf_ret_y crectf_ret_w crectf_ret_h

foreign import ccall "qtc_QRectF_united_qth" qtc_QRectF_united_qth :: Ptr (TQRectF a) -> CDouble -> CDouble -> CDouble -> CDouble -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> IO ()

instance Qqwidth (QRectF a) (()) (IO (Double)) where
 qwidth x0 ()
  = withDoubleResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRectF_width cobj_x0

foreign import ccall "qtc_QRectF_width" qtc_QRectF_width :: Ptr (TQRectF a) -> IO CDouble

instance Qqx (QRectF a) (()) (IO (Double)) where
 qx x0 ()
  = withDoubleResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRectF_x cobj_x0

foreign import ccall "qtc_QRectF_x" qtc_QRectF_x :: Ptr (TQRectF a) -> IO CDouble

instance Qqy (QRectF a) (()) (IO (Double)) where
 qy x0 ()
  = withDoubleResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRectF_y cobj_x0

foreign import ccall "qtc_QRectF_y" qtc_QRectF_y :: Ptr (TQRectF a) -> IO CDouble

qRectF_delete :: QRectF a -> IO ()
qRectF_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRectF_delete cobj_x0

foreign import ccall "qtc_QRectF_delete" qtc_QRectF_delete :: Ptr (TQRectF a) -> IO ()

