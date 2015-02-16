{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QRect.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:31
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Core.QRect (
  QqqRect(..), QqRect(..)
  ,QqqRect_nf(..), QqRect_nf(..)
  ,qRect_delete
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

class QqqRect x1 where
  qqRect :: x1 -> IO (QRect ())

class QqRect x1 where
  qRect :: x1 -> IO (QRect ())

instance QqRect (()) where
 qRect ()
  = withQRectResult $
    qtc_QRect

foreign import ccall "qtc_QRect" qtc_QRect :: IO (Ptr (TQRect ()))

instance QqqRect ((QRect t1)) where
 qqRect (x1)
  = withQRectResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRect1 cobj_x1

foreign import ccall "qtc_QRect1" qtc_QRect1 :: Ptr (TQRect t1) -> IO (Ptr (TQRect ()))

instance QqRect ((Rect)) where
 qRect (x1)
  = withQRectResult $
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QRect2 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

foreign import ccall "qtc_QRect2" qtc_QRect2 :: CInt -> CInt -> CInt -> CInt -> IO (Ptr (TQRect ()))

instance QqqRect ((QPoint t1, QPoint t2)) where
 qqRect (x1, x2)
  = withQRectResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QRect3 cobj_x1 cobj_x2

foreign import ccall "qtc_QRect3" qtc_QRect3 :: Ptr (TQPoint t1) -> Ptr (TQPoint t2) -> IO (Ptr (TQRect ()))

instance QqRect ((Point, Point)) where
 qRect (x1, x2)
  = withQRectResult $
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    withCPoint x2 $ \cpoint_x2_x cpoint_x2_y -> 
    qtc_QRect4 cpoint_x1_x cpoint_x1_y  cpoint_x2_x cpoint_x2_y 

foreign import ccall "qtc_QRect4" qtc_QRect4 :: CInt -> CInt -> CInt -> CInt -> IO (Ptr (TQRect ()))

instance QqqRect ((QPoint t1, QSize t2)) where
 qqRect (x1, x2)
  = withQRectResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QRect5 cobj_x1 cobj_x2

foreign import ccall "qtc_QRect5" qtc_QRect5 :: Ptr (TQPoint t1) -> Ptr (TQSize t2) -> IO (Ptr (TQRect ()))

instance QqRect ((Point, Size)) where
 qRect (x1, x2)
  = withQRectResult $
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    withCSize x2 $ \csize_x2_w csize_x2_h -> 
    qtc_QRect6 cpoint_x1_x cpoint_x1_y  csize_x2_w csize_x2_h 

foreign import ccall "qtc_QRect6" qtc_QRect6 :: CInt -> CInt -> CInt -> CInt -> IO (Ptr (TQRect ()))

instance QqRect ((Int, Int, Int, Int)) where
 qRect (x1, x2, x3, x4)
  = withQRectResult $
    qtc_QRect7 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QRect7" qtc_QRect7 :: CInt -> CInt -> CInt -> CInt -> IO (Ptr (TQRect ()))

class QqqRect_nf x1 where
  qqRect_nf :: x1 -> IO (QRect ())

class QqRect_nf x1 where
  qRect_nf :: x1 -> IO (QRect ())

instance QqRect_nf (()) where
 qRect_nf ()
  = withObjectRefResult $
    qtc_QRect

instance QqqRect_nf ((QRect t1)) where
 qqRect_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRect1 cobj_x1

instance QqRect_nf ((Rect)) where
 qRect_nf (x1)
  = withObjectRefResult $
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QRect2 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

instance QqqRect_nf ((QPoint t1, QPoint t2)) where
 qqRect_nf (x1, x2)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QRect3 cobj_x1 cobj_x2

instance QqRect_nf ((Point, Point)) where
 qRect_nf (x1, x2)
  = withObjectRefResult $
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    withCPoint x2 $ \cpoint_x2_x cpoint_x2_y -> 
    qtc_QRect4 cpoint_x1_x cpoint_x1_y  cpoint_x2_x cpoint_x2_y 

instance QqqRect_nf ((QPoint t1, QSize t2)) where
 qqRect_nf (x1, x2)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QRect5 cobj_x1 cobj_x2

instance QqRect_nf ((Point, Size)) where
 qRect_nf (x1, x2)
  = withObjectRefResult $
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    withCSize x2 $ \csize_x2_w csize_x2_h -> 
    qtc_QRect6 cpoint_x1_x cpoint_x1_y  csize_x2_w csize_x2_h 

instance QqRect_nf ((Int, Int, Int, Int)) where
 qRect_nf (x1, x2, x3, x4)
  = withObjectRefResult $
    qtc_QRect7 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

instance Qqadjust (QRect a) ((Int, Int, Int, Int)) where
 qadjust x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRect_adjust cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QRect_adjust" qtc_QRect_adjust :: Ptr (TQRect a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance Qqqadjusted (QRect a) ((Int, Int, Int, Int)) (IO (QRect ())) where
 qqadjusted x0 (x1, x2, x3, x4)
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRect_adjusted cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QRect_adjusted" qtc_QRect_adjusted :: Ptr (TQRect a) -> CInt -> CInt -> CInt -> CInt -> IO (Ptr (TQRect ()))

instance Qqadjusted (QRect a) ((Int, Int, Int, Int)) (IO (Rect)) where
 qadjusted x0 (x1, x2, x3, x4)
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRect_adjusted_qth cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4) crect_ret_x crect_ret_y crect_ret_w crect_ret_h

foreign import ccall "qtc_QRect_adjusted_qth" qtc_QRect_adjusted_qth :: Ptr (TQRect a) -> CInt -> CInt -> CInt -> CInt -> Ptr CInt -> Ptr CInt -> Ptr CInt -> Ptr CInt -> IO ()

instance Qqbottom (QRect a) (()) (IO (Int)) where
 qbottom x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRect_bottom cobj_x0

foreign import ccall "qtc_QRect_bottom" qtc_QRect_bottom :: Ptr (TQRect a) -> IO CInt

instance QqbottomLeft (QRect a) (()) (IO (Point)) where
 qbottomLeft x0 ()
  = withPointResult $ \cpoint_ret_x cpoint_ret_y ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRect_bottomLeft_qth cobj_x0 cpoint_ret_x cpoint_ret_y

foreign import ccall "qtc_QRect_bottomLeft_qth" qtc_QRect_bottomLeft_qth :: Ptr (TQRect a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QqqbottomLeft (QRect a) (()) (IO (QPoint ())) where
 qqbottomLeft x0 ()
  = withQPointResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRect_bottomLeft cobj_x0

foreign import ccall "qtc_QRect_bottomLeft" qtc_QRect_bottomLeft :: Ptr (TQRect a) -> IO (Ptr (TQPoint ()))

instance QqbottomRight (QRect a) (()) (IO (Point)) where
 qbottomRight x0 ()
  = withPointResult $ \cpoint_ret_x cpoint_ret_y ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRect_bottomRight_qth cobj_x0 cpoint_ret_x cpoint_ret_y

foreign import ccall "qtc_QRect_bottomRight_qth" qtc_QRect_bottomRight_qth :: Ptr (TQRect a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QqqbottomRight (QRect a) (()) (IO (QPoint ())) where
 qqbottomRight x0 ()
  = withQPointResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRect_bottomRight cobj_x0

foreign import ccall "qtc_QRect_bottomRight" qtc_QRect_bottomRight :: Ptr (TQRect a) -> IO (Ptr (TQPoint ()))

instance Qqcenter (QRect a) (()) (IO (Point)) where
 qcenter x0 ()
  = withPointResult $ \cpoint_ret_x cpoint_ret_y ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRect_center_qth cobj_x0 cpoint_ret_x cpoint_ret_y

foreign import ccall "qtc_QRect_center_qth" qtc_QRect_center_qth :: Ptr (TQRect a) -> Ptr CInt -> Ptr CInt -> IO ()

instance Qqqcenter (QRect a) (()) (IO (QPoint ())) where
 qqcenter x0 ()
  = withQPointResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRect_center cobj_x0

foreign import ccall "qtc_QRect_center" qtc_QRect_center :: Ptr (TQRect a) -> IO (Ptr (TQPoint ()))

instance Qqcontains (QRect a) ((Int, Int)) where
 qcontains x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRect_contains4 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QRect_contains4" qtc_QRect_contains4 :: Ptr (TQRect a) -> CInt -> CInt -> IO CBool

instance Qqcontains (QRect a) ((Int, Int, Bool)) where
 qcontains x0 (x1, x2, x3)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRect_contains5 cobj_x0 (toCInt x1) (toCInt x2) (toCBool x3)

foreign import ccall "qtc_QRect_contains5" qtc_QRect_contains5 :: Ptr (TQRect a) -> CInt -> CInt -> CBool -> IO CBool

instance Qqcontains (QRect a) ((Point)) where
 qcontains x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QRect_contains_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

foreign import ccall "qtc_QRect_contains_qth" qtc_QRect_contains_qth :: Ptr (TQRect a) -> CInt -> CInt -> IO CBool

instance Qqcontains (QRect a) ((Point, Bool)) where
 qcontains x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QRect_contains2_qth cobj_x0 cpoint_x1_x cpoint_x1_y  (toCBool x2)

foreign import ccall "qtc_QRect_contains2_qth" qtc_QRect_contains2_qth :: Ptr (TQRect a) -> CInt -> CInt -> CBool -> IO CBool

instance Qqqcontains (QRect a) ((QPoint t1)) where
 qqcontains x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRect_contains cobj_x0 cobj_x1

foreign import ccall "qtc_QRect_contains" qtc_QRect_contains :: Ptr (TQRect a) -> Ptr (TQPoint t1) -> IO CBool

instance Qqqcontains (QRect a) ((QPoint t1, Bool)) where
 qqcontains x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRect_contains2 cobj_x0 cobj_x1 (toCBool x2)

foreign import ccall "qtc_QRect_contains2" qtc_QRect_contains2 :: Ptr (TQRect a) -> Ptr (TQPoint t1) -> CBool -> IO CBool

instance Qqqcontains (QRect a) ((QRect t1)) where
 qqcontains x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRect_contains1 cobj_x0 cobj_x1

foreign import ccall "qtc_QRect_contains1" qtc_QRect_contains1 :: Ptr (TQRect a) -> Ptr (TQRect t1) -> IO CBool

instance Qqqcontains (QRect a) ((QRect t1, Bool)) where
 qqcontains x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRect_contains3 cobj_x0 cobj_x1 (toCBool x2)

foreign import ccall "qtc_QRect_contains3" qtc_QRect_contains3 :: Ptr (TQRect a) -> Ptr (TQRect t1) -> CBool -> IO CBool

instance Qqcontains (QRect a) ((Rect)) where
 qcontains x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QRect_contains1_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

foreign import ccall "qtc_QRect_contains1_qth" qtc_QRect_contains1_qth :: Ptr (TQRect a) -> CInt -> CInt -> CInt -> CInt -> IO CBool

instance Qqcontains (QRect a) ((Rect, Bool)) where
 qcontains x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QRect_contains3_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h  (toCBool x2)

foreign import ccall "qtc_QRect_contains3_qth" qtc_QRect_contains3_qth :: Ptr (TQRect a) -> CInt -> CInt -> CInt -> CInt -> CBool -> IO CBool

instance Qqheight (QRect a) (()) (IO (Int)) where
 qheight x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRect_height cobj_x0

foreign import ccall "qtc_QRect_height" qtc_QRect_height :: Ptr (TQRect a) -> IO CInt

instance Qqqintersect (QRect a) ((QRect t1)) (IO (QRect ())) where
 qqintersect x0 (x1)
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRect_intersect cobj_x0 cobj_x1

foreign import ccall "qtc_QRect_intersect" qtc_QRect_intersect :: Ptr (TQRect a) -> Ptr (TQRect t1) -> IO (Ptr (TQRect ()))

instance Qqintersect (QRect a) ((Rect)) (IO (Rect)) where
 qintersect x0 (x1)
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QRect_intersect_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h  crect_ret_x crect_ret_y crect_ret_w crect_ret_h

foreign import ccall "qtc_QRect_intersect_qth" qtc_QRect_intersect_qth :: Ptr (TQRect a) -> CInt -> CInt -> CInt -> CInt -> Ptr CInt -> Ptr CInt -> Ptr CInt -> Ptr CInt -> IO ()

instance Qqqintersected (QRect a) ((QRect t1)) (IO (QRect ())) where
 qqintersected x0 (x1)
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRect_intersected cobj_x0 cobj_x1

foreign import ccall "qtc_QRect_intersected" qtc_QRect_intersected :: Ptr (TQRect a) -> Ptr (TQRect t1) -> IO (Ptr (TQRect ()))

instance Qqintersected (QRect a) ((Rect)) (IO (Rect)) where
 qintersected x0 (x1)
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QRect_intersected_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h  crect_ret_x crect_ret_y crect_ret_w crect_ret_h

foreign import ccall "qtc_QRect_intersected_qth" qtc_QRect_intersected_qth :: Ptr (TQRect a) -> CInt -> CInt -> CInt -> CInt -> Ptr CInt -> Ptr CInt -> Ptr CInt -> Ptr CInt -> IO ()

instance Qqqintersects (QRect a) ((QRect t1)) where
 qqintersects x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRect_intersects cobj_x0 cobj_x1

foreign import ccall "qtc_QRect_intersects" qtc_QRect_intersects :: Ptr (TQRect a) -> Ptr (TQRect t1) -> IO CBool

instance Qqintersects (QRect a) ((Rect)) where
 qintersects x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QRect_intersects_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

foreign import ccall "qtc_QRect_intersects_qth" qtc_QRect_intersects_qth :: Ptr (TQRect a) -> CInt -> CInt -> CInt -> CInt -> IO CBool

instance QqisEmpty (QRect a) (()) where
 qisEmpty x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRect_isEmpty cobj_x0

foreign import ccall "qtc_QRect_isEmpty" qtc_QRect_isEmpty :: Ptr (TQRect a) -> IO CBool

instance QqisNull (QRect a) (()) where
 qisNull x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRect_isNull cobj_x0

foreign import ccall "qtc_QRect_isNull" qtc_QRect_isNull :: Ptr (TQRect a) -> IO CBool

instance QqisValid (QRect ()) (()) where
 qisValid x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRect_isValid cobj_x0

foreign import ccall "qtc_QRect_isValid" qtc_QRect_isValid :: Ptr (TQRect a) -> IO CBool

instance QqisValid (QRectSc a) (()) where
 qisValid x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRect_isValid cobj_x0

instance Qqleft (QRect a) (()) (IO (Int)) where
 qleft x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRect_left cobj_x0

foreign import ccall "qtc_QRect_left" qtc_QRect_left :: Ptr (TQRect a) -> IO CInt

instance QqmoveBottom (QRect a) ((Int)) where
 qmoveBottom x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRect_moveBottom cobj_x0 (toCInt x1)

foreign import ccall "qtc_QRect_moveBottom" qtc_QRect_moveBottom :: Ptr (TQRect a) -> CInt -> IO ()

instance QqmoveBottomLeft (QRect a) ((Point)) where
 qmoveBottomLeft x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QRect_moveBottomLeft_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

foreign import ccall "qtc_QRect_moveBottomLeft_qth" qtc_QRect_moveBottomLeft_qth :: Ptr (TQRect a) -> CInt -> CInt -> IO ()

instance QqqmoveBottomLeft (QRect a) ((QPoint t1)) where
 qqmoveBottomLeft x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRect_moveBottomLeft cobj_x0 cobj_x1

foreign import ccall "qtc_QRect_moveBottomLeft" qtc_QRect_moveBottomLeft :: Ptr (TQRect a) -> Ptr (TQPoint t1) -> IO ()

instance QqmoveBottomRight (QRect a) ((Point)) where
 qmoveBottomRight x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QRect_moveBottomRight_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

foreign import ccall "qtc_QRect_moveBottomRight_qth" qtc_QRect_moveBottomRight_qth :: Ptr (TQRect a) -> CInt -> CInt -> IO ()

instance QqqmoveBottomRight (QRect a) ((QPoint t1)) where
 qqmoveBottomRight x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRect_moveBottomRight cobj_x0 cobj_x1

foreign import ccall "qtc_QRect_moveBottomRight" qtc_QRect_moveBottomRight :: Ptr (TQRect a) -> Ptr (TQPoint t1) -> IO ()

instance QqmoveCenter (QRect a) ((Point)) where
 qmoveCenter x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QRect_moveCenter_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

foreign import ccall "qtc_QRect_moveCenter_qth" qtc_QRect_moveCenter_qth :: Ptr (TQRect a) -> CInt -> CInt -> IO ()

instance QqqmoveCenter (QRect a) ((QPoint t1)) where
 qqmoveCenter x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRect_moveCenter cobj_x0 cobj_x1

foreign import ccall "qtc_QRect_moveCenter" qtc_QRect_moveCenter :: Ptr (TQRect a) -> Ptr (TQPoint t1) -> IO ()

instance QqmoveLeft (QRect a) ((Int)) where
 qmoveLeft x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRect_moveLeft cobj_x0 (toCInt x1)

foreign import ccall "qtc_QRect_moveLeft" qtc_QRect_moveLeft :: Ptr (TQRect a) -> CInt -> IO ()

instance QqmoveRight (QRect a) ((Int)) where
 qmoveRight x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRect_moveRight cobj_x0 (toCInt x1)

foreign import ccall "qtc_QRect_moveRight" qtc_QRect_moveRight :: Ptr (TQRect a) -> CInt -> IO ()

instance QqmoveTo (QRect a) ((Int, Int)) where
 qmoveTo x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRect_moveTo1 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QRect_moveTo1" qtc_QRect_moveTo1 :: Ptr (TQRect a) -> CInt -> CInt -> IO ()

instance QqmoveTo (QRect a) ((Point)) where
 qmoveTo x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QRect_moveTo_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

foreign import ccall "qtc_QRect_moveTo_qth" qtc_QRect_moveTo_qth :: Ptr (TQRect a) -> CInt -> CInt -> IO ()

instance QqqmoveTo (QRect a) ((QPoint t1)) where
 qqmoveTo x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRect_moveTo cobj_x0 cobj_x1

foreign import ccall "qtc_QRect_moveTo" qtc_QRect_moveTo :: Ptr (TQRect a) -> Ptr (TQPoint t1) -> IO ()

instance QqmoveTop (QRect a) ((Int)) where
 qmoveTop x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRect_moveTop cobj_x0 (toCInt x1)

foreign import ccall "qtc_QRect_moveTop" qtc_QRect_moveTop :: Ptr (TQRect a) -> CInt -> IO ()

instance QqmoveTopLeft (QRect a) ((Point)) where
 qmoveTopLeft x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QRect_moveTopLeft_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

foreign import ccall "qtc_QRect_moveTopLeft_qth" qtc_QRect_moveTopLeft_qth :: Ptr (TQRect a) -> CInt -> CInt -> IO ()

instance QqqmoveTopLeft (QRect a) ((QPoint t1)) where
 qqmoveTopLeft x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRect_moveTopLeft cobj_x0 cobj_x1

foreign import ccall "qtc_QRect_moveTopLeft" qtc_QRect_moveTopLeft :: Ptr (TQRect a) -> Ptr (TQPoint t1) -> IO ()

instance QqmoveTopRight (QRect a) ((Point)) where
 qmoveTopRight x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QRect_moveTopRight_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

foreign import ccall "qtc_QRect_moveTopRight_qth" qtc_QRect_moveTopRight_qth :: Ptr (TQRect a) -> CInt -> CInt -> IO ()

instance QqqmoveTopRight (QRect a) ((QPoint t1)) where
 qqmoveTopRight x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRect_moveTopRight cobj_x0 cobj_x1

foreign import ccall "qtc_QRect_moveTopRight" qtc_QRect_moveTopRight :: Ptr (TQRect a) -> Ptr (TQPoint t1) -> IO ()

instance Qqqnormalized (QRect a) (()) (IO (QRect ())) where
 qqnormalized x0 ()
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRect_normalized cobj_x0

foreign import ccall "qtc_QRect_normalized" qtc_QRect_normalized :: Ptr (TQRect a) -> IO (Ptr (TQRect ()))

instance Qqnormalized (QRect a) (()) (IO (Rect)) where
 qnormalized x0 ()
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRect_normalized_qth cobj_x0 crect_ret_x crect_ret_y crect_ret_w crect_ret_h

foreign import ccall "qtc_QRect_normalized_qth" qtc_QRect_normalized_qth :: Ptr (TQRect a) -> Ptr CInt -> Ptr CInt -> Ptr CInt -> Ptr CInt -> IO ()

instance Qqright (QRect a) (()) (IO (Int)) where
 qright x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRect_right cobj_x0

foreign import ccall "qtc_QRect_right" qtc_QRect_right :: Ptr (TQRect a) -> IO CInt

instance QqsetBottom (QRect a) ((Int)) where
 qsetBottom x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRect_setBottom cobj_x0 (toCInt x1)

foreign import ccall "qtc_QRect_setBottom" qtc_QRect_setBottom :: Ptr (TQRect a) -> CInt -> IO ()

instance QqsetBottomLeft (QRect a) ((Point)) where
 qsetBottomLeft x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QRect_setBottomLeft_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

foreign import ccall "qtc_QRect_setBottomLeft_qth" qtc_QRect_setBottomLeft_qth :: Ptr (TQRect a) -> CInt -> CInt -> IO ()

instance QqqsetBottomLeft (QRect a) ((QPoint t1)) where
 qqsetBottomLeft x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRect_setBottomLeft cobj_x0 cobj_x1

foreign import ccall "qtc_QRect_setBottomLeft" qtc_QRect_setBottomLeft :: Ptr (TQRect a) -> Ptr (TQPoint t1) -> IO ()

instance QqsetBottomRight (QRect a) ((Point)) where
 qsetBottomRight x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QRect_setBottomRight_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

foreign import ccall "qtc_QRect_setBottomRight_qth" qtc_QRect_setBottomRight_qth :: Ptr (TQRect a) -> CInt -> CInt -> IO ()

instance QqqsetBottomRight (QRect a) ((QPoint t1)) where
 qqsetBottomRight x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRect_setBottomRight cobj_x0 cobj_x1

foreign import ccall "qtc_QRect_setBottomRight" qtc_QRect_setBottomRight :: Ptr (TQRect a) -> Ptr (TQPoint t1) -> IO ()

instance QqsetCoords (QRect a) ((Int, Int, Int, Int)) where
 qsetCoords x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRect_setCoords cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QRect_setCoords" qtc_QRect_setCoords :: Ptr (TQRect a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QqsetHeight (QRect a) ((Int)) where
 qsetHeight x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRect_setHeight cobj_x0 (toCInt x1)

foreign import ccall "qtc_QRect_setHeight" qtc_QRect_setHeight :: Ptr (TQRect a) -> CInt -> IO ()

instance QqsetLeft (QRect a) ((Int)) where
 qsetLeft x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRect_setLeft cobj_x0 (toCInt x1)

foreign import ccall "qtc_QRect_setLeft" qtc_QRect_setLeft :: Ptr (TQRect a) -> CInt -> IO ()

instance QqsetRect (QRect a) ((Int, Int, Int, Int)) where
 qsetRect x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRect_setRect cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QRect_setRect" qtc_QRect_setRect :: Ptr (TQRect a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QqsetRight (QRect a) ((Int)) where
 qsetRight x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRect_setRight cobj_x0 (toCInt x1)

foreign import ccall "qtc_QRect_setRight" qtc_QRect_setRight :: Ptr (TQRect a) -> CInt -> IO ()

instance QqqsetSize (QRect a) ((QSize t1)) where
 qqsetSize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRect_setSize cobj_x0 cobj_x1

foreign import ccall "qtc_QRect_setSize" qtc_QRect_setSize :: Ptr (TQRect a) -> Ptr (TQSize t1) -> IO ()

instance QqsetSize (QRect a) ((Size)) where
 qsetSize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QRect_setSize_qth cobj_x0 csize_x1_w csize_x1_h 

foreign import ccall "qtc_QRect_setSize_qth" qtc_QRect_setSize_qth :: Ptr (TQRect a) -> CInt -> CInt -> IO ()

instance QqsetTop (QRect a) ((Int)) where
 qsetTop x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRect_setTop cobj_x0 (toCInt x1)

foreign import ccall "qtc_QRect_setTop" qtc_QRect_setTop :: Ptr (TQRect a) -> CInt -> IO ()

instance QqsetTopLeft (QRect a) ((Point)) where
 qsetTopLeft x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QRect_setTopLeft_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

foreign import ccall "qtc_QRect_setTopLeft_qth" qtc_QRect_setTopLeft_qth :: Ptr (TQRect a) -> CInt -> CInt -> IO ()

instance QqqsetTopLeft (QRect a) ((QPoint t1)) where
 qqsetTopLeft x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRect_setTopLeft cobj_x0 cobj_x1

foreign import ccall "qtc_QRect_setTopLeft" qtc_QRect_setTopLeft :: Ptr (TQRect a) -> Ptr (TQPoint t1) -> IO ()

instance QqsetTopRight (QRect a) ((Point)) where
 qsetTopRight x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QRect_setTopRight_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

foreign import ccall "qtc_QRect_setTopRight_qth" qtc_QRect_setTopRight_qth :: Ptr (TQRect a) -> CInt -> CInt -> IO ()

instance QqqsetTopRight (QRect a) ((QPoint t1)) where
 qqsetTopRight x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRect_setTopRight cobj_x0 cobj_x1

foreign import ccall "qtc_QRect_setTopRight" qtc_QRect_setTopRight :: Ptr (TQRect a) -> Ptr (TQPoint t1) -> IO ()

instance QqsetWidth (QRect a) ((Int)) where
 qsetWidth x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRect_setWidth cobj_x0 (toCInt x1)

foreign import ccall "qtc_QRect_setWidth" qtc_QRect_setWidth :: Ptr (TQRect a) -> CInt -> IO ()

instance QqsetX (QRect a) ((Int)) where
 qsetX x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRect_setX cobj_x0 (toCInt x1)

foreign import ccall "qtc_QRect_setX" qtc_QRect_setX :: Ptr (TQRect a) -> CInt -> IO ()

instance QqsetY (QRect a) ((Int)) where
 qsetY x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRect_setY cobj_x0 (toCInt x1)

foreign import ccall "qtc_QRect_setY" qtc_QRect_setY :: Ptr (TQRect a) -> CInt -> IO ()

instance Qqqsize (QRect a) (()) (IO (QSize ())) where
 qqsize x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRect_size cobj_x0

foreign import ccall "qtc_QRect_size" qtc_QRect_size :: Ptr (TQRect a) -> IO (Ptr (TQSize ()))

instance Qqsize (QRect a) (()) (IO (Size)) where
 qsize x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRect_size_qth cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QRect_size_qth" qtc_QRect_size_qth :: Ptr (TQRect a) -> Ptr CInt -> Ptr CInt -> IO ()

instance Qqtop (QRect a) (()) (IO (Int)) where
 qtop x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRect_top cobj_x0

foreign import ccall "qtc_QRect_top" qtc_QRect_top :: Ptr (TQRect a) -> IO CInt

instance QqtopLeft (QRect a) (()) (IO (Point)) where
 qtopLeft x0 ()
  = withPointResult $ \cpoint_ret_x cpoint_ret_y ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRect_topLeft_qth cobj_x0 cpoint_ret_x cpoint_ret_y

foreign import ccall "qtc_QRect_topLeft_qth" qtc_QRect_topLeft_qth :: Ptr (TQRect a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QqqtopLeft (QRect a) (()) (IO (QPoint ())) where
 qqtopLeft x0 ()
  = withQPointResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRect_topLeft cobj_x0

foreign import ccall "qtc_QRect_topLeft" qtc_QRect_topLeft :: Ptr (TQRect a) -> IO (Ptr (TQPoint ()))

instance QqtopRight (QRect a) (()) (IO (Point)) where
 qtopRight x0 ()
  = withPointResult $ \cpoint_ret_x cpoint_ret_y ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRect_topRight_qth cobj_x0 cpoint_ret_x cpoint_ret_y

foreign import ccall "qtc_QRect_topRight_qth" qtc_QRect_topRight_qth :: Ptr (TQRect a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QqqtopRight (QRect a) (()) (IO (QPoint ())) where
 qqtopRight x0 ()
  = withQPointResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRect_topRight cobj_x0

foreign import ccall "qtc_QRect_topRight" qtc_QRect_topRight :: Ptr (TQRect a) -> IO (Ptr (TQPoint ()))

instance Qqtranslate (QRect a) ((Int, Int)) (IO ()) where
 qtranslate x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRect_translate1 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QRect_translate1" qtc_QRect_translate1 :: Ptr (TQRect a) -> CInt -> CInt -> IO ()

instance Qqtranslate (QRect a) ((Point)) (IO ()) where
 qtranslate x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QRect_translate_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

foreign import ccall "qtc_QRect_translate_qth" qtc_QRect_translate_qth :: Ptr (TQRect a) -> CInt -> CInt -> IO ()

instance Qqqtranslate (QRect a) ((QPoint t1)) where
 qqtranslate x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRect_translate cobj_x0 cobj_x1

foreign import ccall "qtc_QRect_translate" qtc_QRect_translate :: Ptr (TQRect a) -> Ptr (TQPoint t1) -> IO ()

instance Qqqtranslated (QRect a) ((Int, Int)) (IO (QRect ())) where
 qqtranslated x0 (x1, x2)
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRect_translated1 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QRect_translated1" qtc_QRect_translated1 :: Ptr (TQRect a) -> CInt -> CInt -> IO (Ptr (TQRect ()))

instance Qqqtranslated (QRect a) ((QPoint t1)) (IO (QRect ())) where
 qqtranslated x0 (x1)
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRect_translated cobj_x0 cobj_x1

foreign import ccall "qtc_QRect_translated" qtc_QRect_translated :: Ptr (TQRect a) -> Ptr (TQPoint t1) -> IO (Ptr (TQRect ()))

instance Qqtranslated (QRect a) ((Int, Int)) (IO (Rect)) where
 qtranslated x0 (x1, x2)
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRect_translated1_qth cobj_x0 (toCInt x1) (toCInt x2) crect_ret_x crect_ret_y crect_ret_w crect_ret_h

foreign import ccall "qtc_QRect_translated1_qth" qtc_QRect_translated1_qth :: Ptr (TQRect a) -> CInt -> CInt -> Ptr CInt -> Ptr CInt -> Ptr CInt -> Ptr CInt -> IO ()

instance Qqtranslated (QRect a) ((Point)) (IO (Rect)) where
 qtranslated x0 (x1)
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QRect_translated_qth cobj_x0 cpoint_x1_x cpoint_x1_y  crect_ret_x crect_ret_y crect_ret_w crect_ret_h

foreign import ccall "qtc_QRect_translated_qth" qtc_QRect_translated_qth :: Ptr (TQRect a) -> CInt -> CInt -> Ptr CInt -> Ptr CInt -> Ptr CInt -> Ptr CInt -> IO ()

instance Qqqunite (QRect a) ((QRect t1)) (IO (QRect ())) where
 qqunite x0 (x1)
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRect_unite cobj_x0 cobj_x1

foreign import ccall "qtc_QRect_unite" qtc_QRect_unite :: Ptr (TQRect a) -> Ptr (TQRect t1) -> IO (Ptr (TQRect ()))

instance Qqunite (QRect a) ((Rect)) (IO (Rect)) where
 qunite x0 (x1)
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QRect_unite_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h  crect_ret_x crect_ret_y crect_ret_w crect_ret_h

foreign import ccall "qtc_QRect_unite_qth" qtc_QRect_unite_qth :: Ptr (TQRect a) -> CInt -> CInt -> CInt -> CInt -> Ptr CInt -> Ptr CInt -> Ptr CInt -> Ptr CInt -> IO ()

instance Qqqunited (QRect a) ((QRect t1)) (IO (QRect ())) where
 qqunited x0 (x1)
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRect_united cobj_x0 cobj_x1

foreign import ccall "qtc_QRect_united" qtc_QRect_united :: Ptr (TQRect a) -> Ptr (TQRect t1) -> IO (Ptr (TQRect ()))

instance Qqunited (QRect a) ((Rect)) (IO (Rect)) where
 qunited x0 (x1)
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QRect_united_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h  crect_ret_x crect_ret_y crect_ret_w crect_ret_h

foreign import ccall "qtc_QRect_united_qth" qtc_QRect_united_qth :: Ptr (TQRect a) -> CInt -> CInt -> CInt -> CInt -> Ptr CInt -> Ptr CInt -> Ptr CInt -> Ptr CInt -> IO ()

instance Qqwidth (QRect a) (()) (IO (Int)) where
 qwidth x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRect_width cobj_x0

foreign import ccall "qtc_QRect_width" qtc_QRect_width :: Ptr (TQRect a) -> IO CInt

instance Qqx (QRect a) (()) (IO (Int)) where
 qx x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRect_x cobj_x0

foreign import ccall "qtc_QRect_x" qtc_QRect_x :: Ptr (TQRect a) -> IO CInt

instance Qqy (QRect a) (()) (IO (Int)) where
 qy x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRect_y cobj_x0

foreign import ccall "qtc_QRect_y" qtc_QRect_y :: Ptr (TQRect a) -> IO CInt

qRect_delete :: QRect a -> IO ()
qRect_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRect_delete cobj_x0

foreign import ccall "qtc_QRect_delete" qtc_QRect_delete :: Ptr (TQRect a) -> IO ()

