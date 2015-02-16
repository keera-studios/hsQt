{-# OPTIONS -fglasgow-exts -#include "../include/gui/qtc_hs_QPainterPath.h" #-}
-----------------------------------------------------------------------------
{-| Module    : QPainterPath.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:15
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QPainterPath (
  QqqPainterPath(..), QqPainterPath(..)
  ,QqqPainterPath_nf(..), QqPainterPath_nf(..)
  ,addRegion
  ,QaddRoundRect(..), QqaddRoundRect(..)
  ,qaddText
  ,angleAtPercent
  ,QarcMoveTo(..), qarcMoveTo
  ,QarcTo(..), qarcTo
  ,closeSubpath
  ,connectPath
  ,qcontrolPointRect, controlPointRect
  ,QcubicTo(..), qcubicTo
  ,currentPosition, qcurrentPosition
  ,elementCount
  ,QlineTo(..), qlineTo
  ,percentAtLength
  ,pointAtPercent, qpointAtPercent
  ,QquadTo(..), qquadTo
  ,setElementPositionAt
  ,slopeAtPercent
  ,subtractedInverted
  ,QtoFillPolygon(..)
  ,QtoFillPolygons(..)
  ,toReversed
  ,QtoSubpathPolygons(..)
  ,qPainterPath_delete
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

class QqqPainterPath x1 where
  qqPainterPath :: x1 -> IO (QPainterPath ())

class QqPainterPath x1 where
  qPainterPath :: x1 -> IO (QPainterPath ())

instance QqPainterPath (()) where
 qPainterPath ()
  = withQPainterPathResult $
    qtc_QPainterPath

foreign import ccall "qtc_QPainterPath" qtc_QPainterPath :: IO (Ptr (TQPainterPath ()))

instance QqPainterPath ((QPainterPath t1)) where
 qPainterPath (x1)
  = withQPainterPathResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPainterPath1 cobj_x1

foreign import ccall "qtc_QPainterPath1" qtc_QPainterPath1 :: Ptr (TQPainterPath t1) -> IO (Ptr (TQPainterPath ()))

instance QqqPainterPath ((QPointF t1)) where
 qqPainterPath (x1)
  = withQPainterPathResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPainterPath2 cobj_x1

foreign import ccall "qtc_QPainterPath2" qtc_QPainterPath2 :: Ptr (TQPointF t1) -> IO (Ptr (TQPainterPath ()))

instance QqPainterPath ((PointF)) where
 qPainterPath (x1)
  = withQPainterPathResult $
    withCPointF x1 $ \cpointf_x1_x cpointf_x1_y -> 
    qtc_QPainterPath3 cpointf_x1_x cpointf_x1_y 

foreign import ccall "qtc_QPainterPath3" qtc_QPainterPath3 :: CDouble -> CDouble -> IO (Ptr (TQPainterPath ()))

class QqqPainterPath_nf x1 where
  qqPainterPath_nf :: x1 -> IO (QPainterPath ())

class QqPainterPath_nf x1 where
  qPainterPath_nf :: x1 -> IO (QPainterPath ())

instance QqPainterPath_nf (()) where
 qPainterPath_nf ()
  = withObjectRefResult $
    qtc_QPainterPath

instance QqPainterPath_nf ((QPainterPath t1)) where
 qPainterPath_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPainterPath1 cobj_x1

instance QqqPainterPath_nf ((QPointF t1)) where
 qqPainterPath_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPainterPath2 cobj_x1

instance QqPainterPath_nf ((PointF)) where
 qPainterPath_nf (x1)
  = withObjectRefResult $
    withCPointF x1 $ \cpointf_x1_x cpointf_x1_y -> 
    qtc_QPainterPath3 cpointf_x1_x cpointf_x1_y 

instance QaddEllipse (QPainterPath a) ((Double, Double, Double, Double)) (IO ()) where
 addEllipse x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPainterPath_addEllipse1 cobj_x0 (toCDouble x1) (toCDouble x2) (toCDouble x3) (toCDouble x4)

foreign import ccall "qtc_QPainterPath_addEllipse1" qtc_QPainterPath_addEllipse1 :: Ptr (TQPainterPath a) -> CDouble -> CDouble -> CDouble -> CDouble -> IO ()

instance QqaddEllipse (QPainterPath a) ((QRectF t1)) (IO ()) where
 qaddEllipse x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPainterPath_addEllipse cobj_x0 cobj_x1

foreign import ccall "qtc_QPainterPath_addEllipse" qtc_QPainterPath_addEllipse :: Ptr (TQPainterPath a) -> Ptr (TQRectF t1) -> IO ()

instance QaddEllipse (QPainterPath a) ((RectF)) (IO ()) where
 addEllipse x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRectF x1 $ \crectf_x1_x crectf_x1_y  crectf_x1_w crectf_x1_h -> 
    qtc_QPainterPath_addEllipse_qth cobj_x0 crectf_x1_x crectf_x1_y crectf_x1_w crectf_x1_h 

foreign import ccall "qtc_QPainterPath_addEllipse_qth" qtc_QPainterPath_addEllipse_qth :: Ptr (TQPainterPath a) -> CDouble -> CDouble -> CDouble -> CDouble -> IO ()

instance QaddPath (QPainterPath a) ((QPainterPath t1)) (IO ()) where
 addPath x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPainterPath_addPath cobj_x0 cobj_x1

foreign import ccall "qtc_QPainterPath_addPath" qtc_QPainterPath_addPath :: Ptr (TQPainterPath a) -> Ptr (TQPainterPath t1) -> IO ()

instance QaddPolygon (QPainterPath a) ((QPolygonF t1)) (IO ()) where
 addPolygon x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPainterPath_addPolygon cobj_x0 cobj_x1

foreign import ccall "qtc_QPainterPath_addPolygon" qtc_QPainterPath_addPolygon :: Ptr (TQPainterPath a) -> Ptr (TQPolygonF t1) -> IO ()

instance QaddRect (QPainterPath a) ((Double, Double, Double, Double)) (IO ()) where
 addRect x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPainterPath_addRect1 cobj_x0 (toCDouble x1) (toCDouble x2) (toCDouble x3) (toCDouble x4)

foreign import ccall "qtc_QPainterPath_addRect1" qtc_QPainterPath_addRect1 :: Ptr (TQPainterPath a) -> CDouble -> CDouble -> CDouble -> CDouble -> IO ()

instance QqaddRect (QPainterPath a) ((QRectF t1)) (IO ()) where
 qaddRect x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPainterPath_addRect cobj_x0 cobj_x1

foreign import ccall "qtc_QPainterPath_addRect" qtc_QPainterPath_addRect :: Ptr (TQPainterPath a) -> Ptr (TQRectF t1) -> IO ()

instance QaddRect (QPainterPath a) ((RectF)) (IO ()) where
 addRect x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRectF x1 $ \crectf_x1_x crectf_x1_y  crectf_x1_w crectf_x1_h -> 
    qtc_QPainterPath_addRect_qth cobj_x0 crectf_x1_x crectf_x1_y crectf_x1_w crectf_x1_h 

foreign import ccall "qtc_QPainterPath_addRect_qth" qtc_QPainterPath_addRect_qth :: Ptr (TQPainterPath a) -> CDouble -> CDouble -> CDouble -> CDouble -> IO ()

addRegion :: QPainterPath a -> ((QRegion t1)) -> IO ()
addRegion x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPainterPath_addRegion cobj_x0 cobj_x1

foreign import ccall "qtc_QPainterPath_addRegion" qtc_QPainterPath_addRegion :: Ptr (TQPainterPath a) -> Ptr (TQRegion t1) -> IO ()

class QaddRoundRect x1 where
 addRoundRect :: QPainterPath a -> x1 -> IO ()

class QqaddRoundRect x1 where
 qaddRoundRect :: QPainterPath a -> x1 -> IO ()

instance QaddRoundRect ((Double, Double, Double, Double, Int)) where
 addRoundRect x0 (x1, x2, x3, x4, x5)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPainterPath_addRoundRect2 cobj_x0 (toCDouble x1) (toCDouble x2) (toCDouble x3) (toCDouble x4) (toCInt x5)

foreign import ccall "qtc_QPainterPath_addRoundRect2" qtc_QPainterPath_addRoundRect2 :: Ptr (TQPainterPath a) -> CDouble -> CDouble -> CDouble -> CDouble -> CInt -> IO ()

instance QaddRoundRect ((Double, Double, Double, Double, Int, Int)) where
 addRoundRect x0 (x1, x2, x3, x4, x5, x6)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPainterPath_addRoundRect3 cobj_x0 (toCDouble x1) (toCDouble x2) (toCDouble x3) (toCDouble x4) (toCInt x5) (toCInt x6)

foreign import ccall "qtc_QPainterPath_addRoundRect3" qtc_QPainterPath_addRoundRect3 :: Ptr (TQPainterPath a) -> CDouble -> CDouble -> CDouble -> CDouble -> CInt -> CInt -> IO ()

instance QqaddRoundRect ((QRectF t1, Int)) where
 qaddRoundRect x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPainterPath_addRoundRect cobj_x0 cobj_x1 (toCInt x2)

foreign import ccall "qtc_QPainterPath_addRoundRect" qtc_QPainterPath_addRoundRect :: Ptr (TQPainterPath a) -> Ptr (TQRectF t1) -> CInt -> IO ()

instance QqaddRoundRect ((QRectF t1, Int, Int)) where
 qaddRoundRect x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPainterPath_addRoundRect1 cobj_x0 cobj_x1 (toCInt x2) (toCInt x3)

foreign import ccall "qtc_QPainterPath_addRoundRect1" qtc_QPainterPath_addRoundRect1 :: Ptr (TQPainterPath a) -> Ptr (TQRectF t1) -> CInt -> CInt -> IO ()

instance QaddRoundRect ((RectF, Int)) where
 addRoundRect x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRectF x1 $ \crectf_x1_x crectf_x1_y  crectf_x1_w crectf_x1_h -> 
    qtc_QPainterPath_addRoundRect_qth cobj_x0 crectf_x1_x crectf_x1_y crectf_x1_w crectf_x1_h  (toCInt x2)

foreign import ccall "qtc_QPainterPath_addRoundRect_qth" qtc_QPainterPath_addRoundRect_qth :: Ptr (TQPainterPath a) -> CDouble -> CDouble -> CDouble -> CDouble -> CInt -> IO ()

instance QaddRoundRect ((RectF, Int, Int)) where
 addRoundRect x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRectF x1 $ \crectf_x1_x crectf_x1_y  crectf_x1_w crectf_x1_h -> 
    qtc_QPainterPath_addRoundRect1_qth cobj_x0 crectf_x1_x crectf_x1_y crectf_x1_w crectf_x1_h  (toCInt x2) (toCInt x3)

foreign import ccall "qtc_QPainterPath_addRoundRect1_qth" qtc_QPainterPath_addRoundRect1_qth :: Ptr (TQPainterPath a) -> CDouble -> CDouble -> CDouble -> CDouble -> CInt -> CInt -> IO ()

instance QaddText (QPainterPath a) ((Double, Double, QFont t3, String)) (IO ()) where
 addText x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    withCWString x4 $ \cstr_x4 ->
    qtc_QPainterPath_addText1 cobj_x0 (toCDouble x1) (toCDouble x2) cobj_x3 cstr_x4

foreign import ccall "qtc_QPainterPath_addText1" qtc_QPainterPath_addText1 :: Ptr (TQPainterPath a) -> CDouble -> CDouble -> Ptr (TQFont t3) -> CWString -> IO ()

instance QaddText (QPainterPath a) ((PointF, QFont t2, String)) (IO ()) where
 addText x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPointF x1 $ \cpointf_x1_x cpointf_x1_y -> 
    withObjectPtr x2 $ \cobj_x2 ->
    withCWString x3 $ \cstr_x3 ->
    qtc_QPainterPath_addText_qth cobj_x0 cpointf_x1_x cpointf_x1_y  cobj_x2 cstr_x3

foreign import ccall "qtc_QPainterPath_addText_qth" qtc_QPainterPath_addText_qth :: Ptr (TQPainterPath a) -> CDouble -> CDouble -> Ptr (TQFont t2) -> CWString -> IO ()

qaddText :: QPainterPath a -> ((QPointF t1, QFont t2, String)) -> IO ()
qaddText x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withCWString x3 $ \cstr_x3 ->
    qtc_QPainterPath_addText cobj_x0 cobj_x1 cobj_x2 cstr_x3

foreign import ccall "qtc_QPainterPath_addText" qtc_QPainterPath_addText :: Ptr (TQPainterPath a) -> Ptr (TQPointF t1) -> Ptr (TQFont t2) -> CWString -> IO ()

angleAtPercent :: QPainterPath a -> ((Double)) -> IO (Double)
angleAtPercent x0 (x1)
  = withDoubleResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPainterPath_angleAtPercent cobj_x0 (toCDouble x1)

foreign import ccall "qtc_QPainterPath_angleAtPercent" qtc_QPainterPath_angleAtPercent :: Ptr (TQPainterPath a) -> CDouble -> IO CDouble

class QarcMoveTo x1 where
 arcMoveTo :: QPainterPath a -> x1 -> IO ()

instance QarcMoveTo ((Double, Double, Double, Double, Double)) where
 arcMoveTo x0 (x1, x2, x3, x4, x5)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPainterPath_arcMoveTo1 cobj_x0 (toCDouble x1) (toCDouble x2) (toCDouble x3) (toCDouble x4) (toCDouble x5)

foreign import ccall "qtc_QPainterPath_arcMoveTo1" qtc_QPainterPath_arcMoveTo1 :: Ptr (TQPainterPath a) -> CDouble -> CDouble -> CDouble -> CDouble -> CDouble -> IO ()

qarcMoveTo :: QPainterPath a -> ((QRectF t1, Double)) -> IO ()
qarcMoveTo x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPainterPath_arcMoveTo cobj_x0 cobj_x1 (toCDouble x2)

foreign import ccall "qtc_QPainterPath_arcMoveTo" qtc_QPainterPath_arcMoveTo :: Ptr (TQPainterPath a) -> Ptr (TQRectF t1) -> CDouble -> IO ()

instance QarcMoveTo ((RectF, Double)) where
 arcMoveTo x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRectF x1 $ \crectf_x1_x crectf_x1_y  crectf_x1_w crectf_x1_h -> 
    qtc_QPainterPath_arcMoveTo_qth cobj_x0 crectf_x1_x crectf_x1_y crectf_x1_w crectf_x1_h  (toCDouble x2)

foreign import ccall "qtc_QPainterPath_arcMoveTo_qth" qtc_QPainterPath_arcMoveTo_qth :: Ptr (TQPainterPath a) -> CDouble -> CDouble -> CDouble -> CDouble -> CDouble -> IO ()

class QarcTo x1 where
 arcTo :: QPainterPath a -> x1 -> IO ()

instance QarcTo ((Double, Double, Double, Double, Double, Double)) where
 arcTo x0 (x1, x2, x3, x4, x5, x6)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPainterPath_arcTo1 cobj_x0 (toCDouble x1) (toCDouble x2) (toCDouble x3) (toCDouble x4) (toCDouble x5) (toCDouble x6)

foreign import ccall "qtc_QPainterPath_arcTo1" qtc_QPainterPath_arcTo1 :: Ptr (TQPainterPath a) -> CDouble -> CDouble -> CDouble -> CDouble -> CDouble -> CDouble -> IO ()

qarcTo :: QPainterPath a -> ((QRectF t1, Double, Double)) -> IO ()
qarcTo x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPainterPath_arcTo cobj_x0 cobj_x1 (toCDouble x2) (toCDouble x3)

foreign import ccall "qtc_QPainterPath_arcTo" qtc_QPainterPath_arcTo :: Ptr (TQPainterPath a) -> Ptr (TQRectF t1) -> CDouble -> CDouble -> IO ()

instance QarcTo ((RectF, Double, Double)) where
 arcTo x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRectF x1 $ \crectf_x1_x crectf_x1_y  crectf_x1_w crectf_x1_h -> 
    qtc_QPainterPath_arcTo_qth cobj_x0 crectf_x1_x crectf_x1_y crectf_x1_w crectf_x1_h  (toCDouble x2) (toCDouble x3)

foreign import ccall "qtc_QPainterPath_arcTo_qth" qtc_QPainterPath_arcTo_qth :: Ptr (TQPainterPath a) -> CDouble -> CDouble -> CDouble -> CDouble -> CDouble -> CDouble -> IO ()

instance QqqboundingRect (QPainterPath a) (()) (IO (QRectF ())) where
 qqboundingRect x0 ()
  = withQRectFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPainterPath_boundingRect cobj_x0

foreign import ccall "qtc_QPainterPath_boundingRect" qtc_QPainterPath_boundingRect :: Ptr (TQPainterPath a) -> IO (Ptr (TQRectF ()))

instance QqboundingRect (QPainterPath a) (()) (IO (RectF)) where
 qboundingRect x0 ()
  = withRectFResult $ \crectf_ret_x crectf_ret_y crectf_ret_w crectf_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPainterPath_boundingRect_qth cobj_x0 crectf_ret_x crectf_ret_y crectf_ret_w crectf_ret_h

foreign import ccall "qtc_QPainterPath_boundingRect_qth" qtc_QPainterPath_boundingRect_qth :: Ptr (TQPainterPath a) -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> IO ()

closeSubpath :: QPainterPath a -> (()) -> IO ()
closeSubpath x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPainterPath_closeSubpath cobj_x0

foreign import ccall "qtc_QPainterPath_closeSubpath" qtc_QPainterPath_closeSubpath :: Ptr (TQPainterPath a) -> IO ()

connectPath :: QPainterPath a -> ((QPainterPath t1)) -> IO ()
connectPath x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPainterPath_connectPath cobj_x0 cobj_x1

foreign import ccall "qtc_QPainterPath_connectPath" qtc_QPainterPath_connectPath :: Ptr (TQPainterPath a) -> Ptr (TQPainterPath t1) -> IO ()

instance Qqcontains (QPainterPath a) ((PointF)) where
 qcontains x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCPointF x1 $ \cpointf_x1_x cpointf_x1_y -> 
    qtc_QPainterPath_contains1_qth cobj_x0 cpointf_x1_x cpointf_x1_y 

foreign import ccall "qtc_QPainterPath_contains1_qth" qtc_QPainterPath_contains1_qth :: Ptr (TQPainterPath a) -> CDouble -> CDouble -> IO CBool

instance Qqcontains (QPainterPath a) ((QPainterPath t1)) where
 qcontains x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPainterPath_contains cobj_x0 cobj_x1

foreign import ccall "qtc_QPainterPath_contains" qtc_QPainterPath_contains :: Ptr (TQPainterPath a) -> Ptr (TQPainterPath t1) -> IO CBool

instance Qqqcontains (QPainterPath a) ((QPointF t1)) where
 qqcontains x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPainterPath_contains1 cobj_x0 cobj_x1

foreign import ccall "qtc_QPainterPath_contains1" qtc_QPainterPath_contains1 :: Ptr (TQPainterPath a) -> Ptr (TQPointF t1) -> IO CBool

instance Qqqcontains (QPainterPath a) ((QRectF t1)) where
 qqcontains x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPainterPath_contains2 cobj_x0 cobj_x1

foreign import ccall "qtc_QPainterPath_contains2" qtc_QPainterPath_contains2 :: Ptr (TQPainterPath a) -> Ptr (TQRectF t1) -> IO CBool

instance Qqcontains (QPainterPath a) ((RectF)) where
 qcontains x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCRectF x1 $ \crectf_x1_x crectf_x1_y  crectf_x1_w crectf_x1_h -> 
    qtc_QPainterPath_contains2_qth cobj_x0 crectf_x1_x crectf_x1_y crectf_x1_w crectf_x1_h 

foreign import ccall "qtc_QPainterPath_contains2_qth" qtc_QPainterPath_contains2_qth :: Ptr (TQPainterPath a) -> CDouble -> CDouble -> CDouble -> CDouble -> IO CBool

qcontrolPointRect :: QPainterPath a -> (()) -> IO (QRectF ())
qcontrolPointRect x0 ()
  = withQRectFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPainterPath_controlPointRect cobj_x0

foreign import ccall "qtc_QPainterPath_controlPointRect" qtc_QPainterPath_controlPointRect :: Ptr (TQPainterPath a) -> IO (Ptr (TQRectF ()))

controlPointRect :: QPainterPath a -> (()) -> IO (RectF)
controlPointRect x0 ()
  = withRectFResult $ \crectf_ret_x crectf_ret_y crectf_ret_w crectf_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPainterPath_controlPointRect_qth cobj_x0 crectf_ret_x crectf_ret_y crectf_ret_w crectf_ret_h

foreign import ccall "qtc_QPainterPath_controlPointRect_qth" qtc_QPainterPath_controlPointRect_qth :: Ptr (TQPainterPath a) -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> IO ()

class QcubicTo x1 where
 cubicTo :: QPainterPath a -> x1 -> IO ()

instance QcubicTo ((Double, Double, Double, Double, Double, Double)) where
 cubicTo x0 (x1, x2, x3, x4, x5, x6)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPainterPath_cubicTo1 cobj_x0 (toCDouble x1) (toCDouble x2) (toCDouble x3) (toCDouble x4) (toCDouble x5) (toCDouble x6)

foreign import ccall "qtc_QPainterPath_cubicTo1" qtc_QPainterPath_cubicTo1 :: Ptr (TQPainterPath a) -> CDouble -> CDouble -> CDouble -> CDouble -> CDouble -> CDouble -> IO ()

instance QcubicTo ((PointF, PointF, PointF)) where
 cubicTo x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPointF x1 $ \cpointf_x1_x cpointf_x1_y -> 
    withCPointF x2 $ \cpointf_x2_x cpointf_x2_y -> 
    withCPointF x3 $ \cpointf_x3_x cpointf_x3_y -> 
    qtc_QPainterPath_cubicTo_qth cobj_x0 cpointf_x1_x cpointf_x1_y  cpointf_x2_x cpointf_x2_y  cpointf_x3_x cpointf_x3_y 

foreign import ccall "qtc_QPainterPath_cubicTo_qth" qtc_QPainterPath_cubicTo_qth :: Ptr (TQPainterPath a) -> CDouble -> CDouble -> CDouble -> CDouble -> CDouble -> CDouble -> IO ()

qcubicTo :: QPainterPath a -> ((QPointF t1, QPointF t2, QPointF t3)) -> IO ()
qcubicTo x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QPainterPath_cubicTo cobj_x0 cobj_x1 cobj_x2 cobj_x3

foreign import ccall "qtc_QPainterPath_cubicTo" qtc_QPainterPath_cubicTo :: Ptr (TQPainterPath a) -> Ptr (TQPointF t1) -> Ptr (TQPointF t2) -> Ptr (TQPointF t3) -> IO ()

currentPosition :: QPainterPath a -> (()) -> IO (PointF)
currentPosition x0 ()
  = withPointFResult $ \cpointf_ret_x cpointf_ret_y ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPainterPath_currentPosition_qth cobj_x0 cpointf_ret_x cpointf_ret_y

foreign import ccall "qtc_QPainterPath_currentPosition_qth" qtc_QPainterPath_currentPosition_qth :: Ptr (TQPainterPath a) -> Ptr CDouble -> Ptr CDouble -> IO ()

qcurrentPosition :: QPainterPath a -> (()) -> IO (QPointF ())
qcurrentPosition x0 ()
  = withQPointFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPainterPath_currentPosition cobj_x0

foreign import ccall "qtc_QPainterPath_currentPosition" qtc_QPainterPath_currentPosition :: Ptr (TQPainterPath a) -> IO (Ptr (TQPointF ()))

elementCount :: QPainterPath a -> (()) -> IO (Int)
elementCount x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPainterPath_elementCount cobj_x0

foreign import ccall "qtc_QPainterPath_elementCount" qtc_QPainterPath_elementCount :: Ptr (TQPainterPath a) -> IO CInt

instance QfillRule (QPainterPath a) (()) where
 fillRule x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPainterPath_fillRule cobj_x0

foreign import ccall "qtc_QPainterPath_fillRule" qtc_QPainterPath_fillRule :: Ptr (TQPainterPath a) -> IO CLong

instance Qqintersected (QPainterPath a) ((QPainterPath t1)) (IO (QPainterPath ())) where
 qintersected x0 (x1)
  = withQPainterPathResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPainterPath_intersected cobj_x0 cobj_x1

foreign import ccall "qtc_QPainterPath_intersected" qtc_QPainterPath_intersected :: Ptr (TQPainterPath a) -> Ptr (TQPainterPath t1) -> IO (Ptr (TQPainterPath ()))

instance Qqintersects (QPainterPath a) ((QPainterPath t1)) where
 qintersects x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPainterPath_intersects cobj_x0 cobj_x1

foreign import ccall "qtc_QPainterPath_intersects" qtc_QPainterPath_intersects :: Ptr (TQPainterPath a) -> Ptr (TQPainterPath t1) -> IO CBool

instance Qqqintersects (QPainterPath a) ((QRectF t1)) where
 qqintersects x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPainterPath_intersects1 cobj_x0 cobj_x1

foreign import ccall "qtc_QPainterPath_intersects1" qtc_QPainterPath_intersects1 :: Ptr (TQPainterPath a) -> Ptr (TQRectF t1) -> IO CBool

instance Qqintersects (QPainterPath a) ((RectF)) where
 qintersects x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCRectF x1 $ \crectf_x1_x crectf_x1_y  crectf_x1_w crectf_x1_h -> 
    qtc_QPainterPath_intersects1_qth cobj_x0 crectf_x1_x crectf_x1_y crectf_x1_w crectf_x1_h 

foreign import ccall "qtc_QPainterPath_intersects1_qth" qtc_QPainterPath_intersects1_qth :: Ptr (TQPainterPath a) -> CDouble -> CDouble -> CDouble -> CDouble -> IO CBool

instance QqisEmpty (QPainterPath a) (()) where
 qisEmpty x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPainterPath_isEmpty cobj_x0

foreign import ccall "qtc_QPainterPath_isEmpty" qtc_QPainterPath_isEmpty :: Ptr (TQPainterPath a) -> IO CBool

instance Qqlength (QPainterPath a) (()) (IO (Double)) where
 qlength x0 ()
  = withDoubleResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPainterPath_length cobj_x0

foreign import ccall "qtc_QPainterPath_length" qtc_QPainterPath_length :: Ptr (TQPainterPath a) -> IO CDouble

class QlineTo x1 where
 lineTo :: QPainterPath a -> x1 -> IO ()

instance QlineTo ((Double, Double)) where
 lineTo x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPainterPath_lineTo1 cobj_x0 (toCDouble x1) (toCDouble x2)

foreign import ccall "qtc_QPainterPath_lineTo1" qtc_QPainterPath_lineTo1 :: Ptr (TQPainterPath a) -> CDouble -> CDouble -> IO ()

instance QlineTo ((PointF)) where
 lineTo x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPointF x1 $ \cpointf_x1_x cpointf_x1_y -> 
    qtc_QPainterPath_lineTo_qth cobj_x0 cpointf_x1_x cpointf_x1_y 

foreign import ccall "qtc_QPainterPath_lineTo_qth" qtc_QPainterPath_lineTo_qth :: Ptr (TQPainterPath a) -> CDouble -> CDouble -> IO ()

qlineTo :: QPainterPath a -> ((QPointF t1)) -> IO ()
qlineTo x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPainterPath_lineTo cobj_x0 cobj_x1

foreign import ccall "qtc_QPainterPath_lineTo" qtc_QPainterPath_lineTo :: Ptr (TQPainterPath a) -> Ptr (TQPointF t1) -> IO ()

instance QqmoveTo (QPainterPath a) ((Double, Double)) where
 qmoveTo x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPainterPath_moveTo1 cobj_x0 (toCDouble x1) (toCDouble x2)

foreign import ccall "qtc_QPainterPath_moveTo1" qtc_QPainterPath_moveTo1 :: Ptr (TQPainterPath a) -> CDouble -> CDouble -> IO ()

instance QqmoveTo (QPainterPath a) ((PointF)) where
 qmoveTo x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPointF x1 $ \cpointf_x1_x cpointf_x1_y -> 
    qtc_QPainterPath_moveTo_qth cobj_x0 cpointf_x1_x cpointf_x1_y 

foreign import ccall "qtc_QPainterPath_moveTo_qth" qtc_QPainterPath_moveTo_qth :: Ptr (TQPainterPath a) -> CDouble -> CDouble -> IO ()

instance QqqmoveTo (QPainterPath a) ((QPointF t1)) where
 qqmoveTo x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPainterPath_moveTo cobj_x0 cobj_x1

foreign import ccall "qtc_QPainterPath_moveTo" qtc_QPainterPath_moveTo :: Ptr (TQPainterPath a) -> Ptr (TQPointF t1) -> IO ()

percentAtLength :: QPainterPath a -> ((Double)) -> IO (Double)
percentAtLength x0 (x1)
  = withDoubleResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPainterPath_percentAtLength cobj_x0 (toCDouble x1)

foreign import ccall "qtc_QPainterPath_percentAtLength" qtc_QPainterPath_percentAtLength :: Ptr (TQPainterPath a) -> CDouble -> IO CDouble

pointAtPercent :: QPainterPath a -> ((Double)) -> IO (PointF)
pointAtPercent x0 (x1)
  = withPointFResult $ \cpointf_ret_x cpointf_ret_y ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPainterPath_pointAtPercent_qth cobj_x0 (toCDouble x1) cpointf_ret_x cpointf_ret_y

foreign import ccall "qtc_QPainterPath_pointAtPercent_qth" qtc_QPainterPath_pointAtPercent_qth :: Ptr (TQPainterPath a) -> CDouble -> Ptr CDouble -> Ptr CDouble -> IO ()

qpointAtPercent :: QPainterPath a -> ((Double)) -> IO (QPointF ())
qpointAtPercent x0 (x1)
  = withQPointFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPainterPath_pointAtPercent cobj_x0 (toCDouble x1)

foreign import ccall "qtc_QPainterPath_pointAtPercent" qtc_QPainterPath_pointAtPercent :: Ptr (TQPainterPath a) -> CDouble -> IO (Ptr (TQPointF ()))

class QquadTo x1 where
 quadTo :: QPainterPath a -> x1 -> IO ()

instance QquadTo ((Double, Double, Double, Double)) where
 quadTo x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPainterPath_quadTo1 cobj_x0 (toCDouble x1) (toCDouble x2) (toCDouble x3) (toCDouble x4)

foreign import ccall "qtc_QPainterPath_quadTo1" qtc_QPainterPath_quadTo1 :: Ptr (TQPainterPath a) -> CDouble -> CDouble -> CDouble -> CDouble -> IO ()

instance QquadTo ((PointF, PointF)) where
 quadTo x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPointF x1 $ \cpointf_x1_x cpointf_x1_y -> 
    withCPointF x2 $ \cpointf_x2_x cpointf_x2_y -> 
    qtc_QPainterPath_quadTo_qth cobj_x0 cpointf_x1_x cpointf_x1_y  cpointf_x2_x cpointf_x2_y 

foreign import ccall "qtc_QPainterPath_quadTo_qth" qtc_QPainterPath_quadTo_qth :: Ptr (TQPainterPath a) -> CDouble -> CDouble -> CDouble -> CDouble -> IO ()

qquadTo :: QPainterPath a -> ((QPointF t1, QPointF t2)) -> IO ()
qquadTo x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QPainterPath_quadTo cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QPainterPath_quadTo" qtc_QPainterPath_quadTo :: Ptr (TQPainterPath a) -> Ptr (TQPointF t1) -> Ptr (TQPointF t2) -> IO ()

setElementPositionAt :: QPainterPath a -> ((Int, Double, Double)) -> IO ()
setElementPositionAt x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPainterPath_setElementPositionAt cobj_x0 (toCInt x1) (toCDouble x2) (toCDouble x3)

foreign import ccall "qtc_QPainterPath_setElementPositionAt" qtc_QPainterPath_setElementPositionAt :: Ptr (TQPainterPath a) -> CInt -> CDouble -> CDouble -> IO ()

instance QsetFillRule (QPainterPath a) ((FillRule)) where
 setFillRule x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPainterPath_setFillRule cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QPainterPath_setFillRule" qtc_QPainterPath_setFillRule :: Ptr (TQPainterPath a) -> CLong -> IO ()

slopeAtPercent :: QPainterPath a -> ((Double)) -> IO (Double)
slopeAtPercent x0 (x1)
  = withDoubleResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPainterPath_slopeAtPercent cobj_x0 (toCDouble x1)

foreign import ccall "qtc_QPainterPath_slopeAtPercent" qtc_QPainterPath_slopeAtPercent :: Ptr (TQPainterPath a) -> CDouble -> IO CDouble

instance Qqsubtracted (QPainterPath a) ((QPainterPath t1)) (IO (QPainterPath ())) where
 qsubtracted x0 (x1)
  = withQPainterPathResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPainterPath_subtracted cobj_x0 cobj_x1

foreign import ccall "qtc_QPainterPath_subtracted" qtc_QPainterPath_subtracted :: Ptr (TQPainterPath a) -> Ptr (TQPainterPath t1) -> IO (Ptr (TQPainterPath ()))

subtractedInverted :: QPainterPath a -> ((QPainterPath t1)) -> IO (QPainterPath ())
subtractedInverted x0 (x1)
  = withQPainterPathResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPainterPath_subtractedInverted cobj_x0 cobj_x1

foreign import ccall "qtc_QPainterPath_subtractedInverted" qtc_QPainterPath_subtractedInverted :: Ptr (TQPainterPath a) -> Ptr (TQPainterPath t1) -> IO (Ptr (TQPainterPath ()))

class QtoFillPolygon x1 where
 toFillPolygon :: QPainterPath a -> x1 -> IO (QPolygonF ())

instance QtoFillPolygon (()) where
 toFillPolygon x0 ()
  = withQPolygonFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPainterPath_toFillPolygon cobj_x0

foreign import ccall "qtc_QPainterPath_toFillPolygon" qtc_QPainterPath_toFillPolygon :: Ptr (TQPainterPath a) -> IO (Ptr (TQPolygonF ()))

instance QtoFillPolygon ((QMatrix t1)) where
 toFillPolygon x0 (x1)
  = withQPolygonFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPainterPath_toFillPolygon1 cobj_x0 cobj_x1

foreign import ccall "qtc_QPainterPath_toFillPolygon1" qtc_QPainterPath_toFillPolygon1 :: Ptr (TQPainterPath a) -> Ptr (TQMatrix t1) -> IO (Ptr (TQPolygonF ()))

instance QtoFillPolygon ((QTransform t1)) where
 toFillPolygon x0 (x1)
  = withQPolygonFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPainterPath_toFillPolygon2 cobj_x0 cobj_x1

foreign import ccall "qtc_QPainterPath_toFillPolygon2" qtc_QPainterPath_toFillPolygon2 :: Ptr (TQPainterPath a) -> Ptr (TQTransform t1) -> IO (Ptr (TQPolygonF ()))

class QtoFillPolygons x1 where
 toFillPolygons :: QPainterPath a -> x1 -> IO ([QPolygonF ()])

instance QtoFillPolygons (()) where
 toFillPolygons x0 ()
  = withQListObjectRefResult $ \arr ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPainterPath_toFillPolygons cobj_x0 arr

foreign import ccall "qtc_QPainterPath_toFillPolygons" qtc_QPainterPath_toFillPolygons :: Ptr (TQPainterPath a) -> Ptr (Ptr (TQPolygonF ())) -> IO CInt

instance QtoFillPolygons ((QMatrix t1)) where
 toFillPolygons x0 (x1)
  = withQListObjectRefResult $ \arr ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPainterPath_toFillPolygons2 cobj_x0 cobj_x1 arr

foreign import ccall "qtc_QPainterPath_toFillPolygons2" qtc_QPainterPath_toFillPolygons2 :: Ptr (TQPainterPath a) -> Ptr (TQMatrix t1) -> Ptr (Ptr (TQPolygonF ())) -> IO CInt

instance QtoFillPolygons ((QTransform t1)) where
 toFillPolygons x0 (x1)
  = withQListObjectRefResult $ \arr ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPainterPath_toFillPolygons1 cobj_x0 cobj_x1 arr

foreign import ccall "qtc_QPainterPath_toFillPolygons1" qtc_QPainterPath_toFillPolygons1 :: Ptr (TQPainterPath a) -> Ptr (TQTransform t1) -> Ptr (Ptr (TQPolygonF ())) -> IO CInt

toReversed :: QPainterPath a -> (()) -> IO (QPainterPath ())
toReversed x0 ()
  = withQPainterPathResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPainterPath_toReversed cobj_x0

foreign import ccall "qtc_QPainterPath_toReversed" qtc_QPainterPath_toReversed :: Ptr (TQPainterPath a) -> IO (Ptr (TQPainterPath ()))

class QtoSubpathPolygons x1 where
 toSubpathPolygons :: QPainterPath a -> x1 -> IO ([QPolygonF ()])

instance QtoSubpathPolygons (()) where
 toSubpathPolygons x0 ()
  = withQListObjectRefResult $ \arr ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPainterPath_toSubpathPolygons cobj_x0 arr

foreign import ccall "qtc_QPainterPath_toSubpathPolygons" qtc_QPainterPath_toSubpathPolygons :: Ptr (TQPainterPath a) -> Ptr (Ptr (TQPolygonF ())) -> IO CInt

instance QtoSubpathPolygons ((QMatrix t1)) where
 toSubpathPolygons x0 (x1)
  = withQListObjectRefResult $ \arr ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPainterPath_toSubpathPolygons1 cobj_x0 cobj_x1 arr

foreign import ccall "qtc_QPainterPath_toSubpathPolygons1" qtc_QPainterPath_toSubpathPolygons1 :: Ptr (TQPainterPath a) -> Ptr (TQMatrix t1) -> Ptr (Ptr (TQPolygonF ())) -> IO CInt

instance QtoSubpathPolygons ((QTransform t1)) where
 toSubpathPolygons x0 (x1)
  = withQListObjectRefResult $ \arr ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPainterPath_toSubpathPolygons2 cobj_x0 cobj_x1 arr

foreign import ccall "qtc_QPainterPath_toSubpathPolygons2" qtc_QPainterPath_toSubpathPolygons2 :: Ptr (TQPainterPath a) -> Ptr (TQTransform t1) -> Ptr (Ptr (TQPolygonF ())) -> IO CInt

instance Qqunited (QPainterPath a) ((QPainterPath t1)) (IO (QPainterPath ())) where
 qunited x0 (x1)
  = withQPainterPathResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPainterPath_united cobj_x0 cobj_x1

foreign import ccall "qtc_QPainterPath_united" qtc_QPainterPath_united :: Ptr (TQPainterPath a) -> Ptr (TQPainterPath t1) -> IO (Ptr (TQPainterPath ()))

qPainterPath_delete :: QPainterPath a -> IO ()
qPainterPath_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPainterPath_delete cobj_x0

foreign import ccall "qtc_QPainterPath_delete" qtc_QPainterPath_delete :: Ptr (TQPainterPath a) -> IO ()

