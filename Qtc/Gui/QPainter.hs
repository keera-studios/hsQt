{-# OPTIONS -fglasgow-exts -#include "../include/gui/qtc_hs_QPainter.h" #-}
-----------------------------------------------------------------------------
{-| Module    : QPainter.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:20
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QPainter (
  QqPainter(..)
  ,QqPainter_nf(..)
  ,backgroundMode
  ,brushOrigin, qbrushOrigin
  ,clipPath
  ,clipRegion
  ,combinedMatrix
  ,combinedTransform
  ,compositionMode
  ,deviceMatrix
  ,QdrawArc(..), QqdrawArc(..)
  ,QdrawChord(..), QqdrawChord(..)
  ,QdrawConvexPolygon(..)
  ,QdrawEllipse(..), QqdrawEllipse(..)
  ,QdrawImage(..), QqdrawImage(..)
  ,QdrawLine(..), QqdrawLine(..)
  ,QdrawLines(..)
  ,drawPath
  ,QdrawPicture(..), QqdrawPicture(..)
  ,QdrawPie(..), QqdrawPie(..)
  ,QdrawPixmap(..), QqdrawPixmap(..)
  ,QdrawPoint(..), QqdrawPoint(..)
  ,QdrawPoints(..)
  ,QdrawPolygon(..)
  ,QdrawPolyline(..)
  ,QdrawRect(..), QqdrawRect(..)
  ,QdrawRects(..)
  ,QdrawRoundRect(..), QqdrawRoundRect(..)
  ,QdrawText(..), QqdrawText(..)
  ,QdrawTiledPixmap(..), QqdrawTiledPixmap(..)
  ,QeraseRect(..), QqeraseRect(..)
  ,fillPath
  ,QfillRect(..), QqfillRect(..)
  ,matrixEnabled
  ,opacity
  ,QqPainterRedirected(..)
  ,restore
  ,QqPainterRestoreRedirected(..)
  ,setBackgroundMode
  ,QsetBrushOrigin(..), QqsetBrushOrigin(..)
  ,QsetClipPath(..)
  ,QsetClipRect(..), QqsetClipRect(..)
  ,QsetClipRegion(..)
  ,setCompositionMode
  ,setMatrixEnabled
  ,setOpacity
  ,QqPainterSetRedirected(..), QqqPainterSetRedirected(..)
  ,setViewTransformEnabled
  ,qsetViewport
  ,QsetWindow(..), qsetWindow
  ,QsetWorldMatrix(..)
  ,setWorldMatrixEnabled
  ,QsetWorldTransform(..)
  ,strokePath
  ,testRenderHint
  ,viewTransformEnabled
  ,qviewport
  ,qwindow
  ,worldMatrix
  ,worldMatrixEnabled
  ,worldTransform
  ,qPainter_delete
  )
  where

import Foreign.C.Types
import Qth.ClassTypes.Core
import Qtc.Enums.Base
import Qtc.Enums.Core.Qt
import Qtc.Enums.Gui.QPainter

import Qtc.Classes.Base
import Qtc.Classes.Qccs
import Qtc.Classes.Core
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core
import Qtc.Classes.Gui
import Qtc.ClassTypes.Gui

class QqPainter x1 where
  qPainter :: x1 -> IO (QPainter ())

instance QqPainter (()) where
 qPainter ()
  = withQPainterResult $
    qtc_QPainter

foreign import ccall "qtc_QPainter" qtc_QPainter :: IO (Ptr (TQPainter ()))

instance QqPainter ((QPaintDevice t1)) where
 qPainter (x1)
  = withQPainterResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPainter1 cobj_x1

foreign import ccall "qtc_QPainter1" qtc_QPainter1 :: Ptr (TQPaintDevice t1) -> IO (Ptr (TQPainter ()))

instance QqPainter ((QWidget t1)) where
 qPainter (x1)
  = withQPainterResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPainter1_widget cobj_x1

foreign import ccall "qtc_QPainter1_widget" qtc_QPainter1_widget :: Ptr (TQWidget t1) -> IO (Ptr (TQPainter ()))

class QqPainter_nf x1 where
  qPainter_nf :: x1 -> IO (QPainter ())

instance QqPainter_nf (()) where
 qPainter_nf ()
  = withObjectRefResult $
    qtc_QPainter

instance QqPainter_nf ((QPaintDevice t1)) where
 qPainter_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPainter1 cobj_x1

instance QqPainter_nf ((QWidget t1)) where
 qPainter_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPainter1_widget cobj_x1

instance Qbackground (QPainter a) (()) where
 background x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPainter_background cobj_x0

foreign import ccall "qtc_QPainter_background" qtc_QPainter_background :: Ptr (TQPainter a) -> IO (Ptr (TQBrush ()))

backgroundMode :: QPainter a -> (()) -> IO (BGMode)
backgroundMode x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPainter_backgroundMode cobj_x0

foreign import ccall "qtc_QPainter_backgroundMode" qtc_QPainter_backgroundMode :: Ptr (TQPainter a) -> IO CLong

instance Qbegin (QPainter a) ((QPaintDevice t1)) (IO (Bool)) where
 begin x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPainter_begin cobj_x0 cobj_x1

foreign import ccall "qtc_QPainter_begin" qtc_QPainter_begin :: Ptr (TQPainter a) -> Ptr (TQPaintDevice t1) -> IO CBool

instance Qbegin (QPainter a) ((QWidget t1)) (IO (Bool)) where
 begin x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPainter_begin_widget cobj_x0 cobj_x1

foreign import ccall "qtc_QPainter_begin_widget" qtc_QPainter_begin_widget :: Ptr (TQPainter a) -> Ptr (TQWidget t1) -> IO CBool

instance QqqboundingRect (QPainter a) ((Int, Int, Int, Int, Int, String)) (IO (QRect ())) where
 qqboundingRect x0 (x1, x2, x3, x4, x5, x6)
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x6 $ \cstr_x6 ->
    qtc_QPainter_boundingRect4 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4) (toCInt x5) cstr_x6

foreign import ccall "qtc_QPainter_boundingRect4" qtc_QPainter_boundingRect4 :: Ptr (TQPainter a) -> CInt -> CInt -> CInt -> CInt -> CInt -> CWString -> IO (Ptr (TQRect ()))

instance QqqboundingRect (QPainter a) ((QRect t1, Int, String)) (IO (QRect ())) where
 qqboundingRect x0 (x1, x2, x3)
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCWString x3 $ \cstr_x3 ->
    qtc_QPainter_boundingRect3 cobj_x0 cobj_x1 (toCInt x2) cstr_x3

foreign import ccall "qtc_QPainter_boundingRect3" qtc_QPainter_boundingRect3 :: Ptr (TQPainter a) -> Ptr (TQRect t1) -> CInt -> CWString -> IO (Ptr (TQRect ()))

instance QqqboundingRect (QPainter a) ((QRectF t1, Int, String)) (IO (QRectF ())) where
 qqboundingRect x0 (x1, x2, x3)
  = withQRectFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCWString x3 $ \cstr_x3 ->
    qtc_QPainter_boundingRect1 cobj_x0 cobj_x1 (toCInt x2) cstr_x3

foreign import ccall "qtc_QPainter_boundingRect1" qtc_QPainter_boundingRect1 :: Ptr (TQPainter a) -> Ptr (TQRectF t1) -> CInt -> CWString -> IO (Ptr (TQRectF ()))

instance QqqboundingRect (QPainter a) ((QRectF t1, String)) (IO (QRectF ())) where
 qqboundingRect x0 (x1, x2)
  = withQRectFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QPainter_boundingRect cobj_x0 cobj_x1 cstr_x2

foreign import ccall "qtc_QPainter_boundingRect" qtc_QPainter_boundingRect :: Ptr (TQPainter a) -> Ptr (TQRectF t1) -> CWString -> IO (Ptr (TQRectF ()))

instance QqqboundingRect (QPainter a) ((QRectF t1, String, QTextOption t3)) (IO (QRectF ())) where
 qqboundingRect x0 (x1, x2, x3)
  = withQRectFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCWString x2 $ \cstr_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QPainter_boundingRect2 cobj_x0 cobj_x1 cstr_x2 cobj_x3

foreign import ccall "qtc_QPainter_boundingRect2" qtc_QPainter_boundingRect2 :: Ptr (TQPainter a) -> Ptr (TQRectF t1) -> CWString -> Ptr (TQTextOption t3) -> IO (Ptr (TQRectF ()))

instance QqboundingRect (QPainter a) ((Int, Int, Int, Int, Int, String)) (IO (Rect)) where
 qboundingRect x0 (x1, x2, x3, x4, x5, x6)
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x6 $ \cstr_x6 ->
    qtc_QPainter_boundingRect4_qth cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4) (toCInt x5) cstr_x6 crect_ret_x crect_ret_y crect_ret_w crect_ret_h

foreign import ccall "qtc_QPainter_boundingRect4_qth" qtc_QPainter_boundingRect4_qth :: Ptr (TQPainter a) -> CInt -> CInt -> CInt -> CInt -> CInt -> CWString -> Ptr CInt -> Ptr CInt -> Ptr CInt -> Ptr CInt -> IO ()

instance QqboundingRect (QPainter a) ((Rect, Int, String)) (IO (Rect)) where
 qboundingRect x0 (x1, x2, x3)
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    withCWString x3 $ \cstr_x3 ->
    qtc_QPainter_boundingRect3_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h  (toCInt x2) cstr_x3 crect_ret_x crect_ret_y crect_ret_w crect_ret_h

foreign import ccall "qtc_QPainter_boundingRect3_qth" qtc_QPainter_boundingRect3_qth :: Ptr (TQPainter a) -> CInt -> CInt -> CInt -> CInt -> CInt -> CWString -> Ptr CInt -> Ptr CInt -> Ptr CInt -> Ptr CInt -> IO ()

instance QqboundingRect (QPainter a) ((RectF, Int, String)) (IO (RectF)) where
 qboundingRect x0 (x1, x2, x3)
  = withRectFResult $ \crectf_ret_x crectf_ret_y crectf_ret_w crectf_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withCRectF x1 $ \crectf_x1_x crectf_x1_y  crectf_x1_w crectf_x1_h -> 
    withCWString x3 $ \cstr_x3 ->
    qtc_QPainter_boundingRect1_qth cobj_x0 crectf_x1_x crectf_x1_y crectf_x1_w crectf_x1_h  (toCInt x2) cstr_x3 crectf_ret_x crectf_ret_y crectf_ret_w crectf_ret_h

foreign import ccall "qtc_QPainter_boundingRect1_qth" qtc_QPainter_boundingRect1_qth :: Ptr (TQPainter a) -> CDouble -> CDouble -> CDouble -> CDouble -> CInt -> CWString -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> IO ()

instance QqboundingRect (QPainter a) ((RectF, String)) (IO (RectF)) where
 qboundingRect x0 (x1, x2)
  = withRectFResult $ \crectf_ret_x crectf_ret_y crectf_ret_w crectf_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withCRectF x1 $ \crectf_x1_x crectf_x1_y  crectf_x1_w crectf_x1_h -> 
    withCWString x2 $ \cstr_x2 ->
    qtc_QPainter_boundingRect_qth cobj_x0 crectf_x1_x crectf_x1_y crectf_x1_w crectf_x1_h  cstr_x2 crectf_ret_x crectf_ret_y crectf_ret_w crectf_ret_h

foreign import ccall "qtc_QPainter_boundingRect_qth" qtc_QPainter_boundingRect_qth :: Ptr (TQPainter a) -> CDouble -> CDouble -> CDouble -> CDouble -> CWString -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> IO ()

instance QqboundingRect (QPainter a) ((RectF, String, QTextOption t3)) (IO (RectF)) where
 qboundingRect x0 (x1, x2, x3)
  = withRectFResult $ \crectf_ret_x crectf_ret_y crectf_ret_w crectf_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withCRectF x1 $ \crectf_x1_x crectf_x1_y  crectf_x1_w crectf_x1_h -> 
    withCWString x2 $ \cstr_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QPainter_boundingRect2_qth cobj_x0 crectf_x1_x crectf_x1_y crectf_x1_w crectf_x1_h  cstr_x2 cobj_x3 crectf_ret_x crectf_ret_y crectf_ret_w crectf_ret_h

foreign import ccall "qtc_QPainter_boundingRect2_qth" qtc_QPainter_boundingRect2_qth :: Ptr (TQPainter a) -> CDouble -> CDouble -> CDouble -> CDouble -> CWString -> Ptr (TQTextOption t3) -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> IO ()

instance Qbrush (QPainter a) (()) where
 brush x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPainter_brush cobj_x0

foreign import ccall "qtc_QPainter_brush" qtc_QPainter_brush :: Ptr (TQPainter a) -> IO (Ptr (TQBrush ()))

brushOrigin :: QPainter a -> (()) -> IO (Point)
brushOrigin x0 ()
  = withPointResult $ \cpoint_ret_x cpoint_ret_y ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPainter_brushOrigin_qth cobj_x0 cpoint_ret_x cpoint_ret_y

foreign import ccall "qtc_QPainter_brushOrigin_qth" qtc_QPainter_brushOrigin_qth :: Ptr (TQPainter a) -> Ptr CInt -> Ptr CInt -> IO ()

qbrushOrigin :: QPainter a -> (()) -> IO (QPoint ())
qbrushOrigin x0 ()
  = withQPointResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPainter_brushOrigin cobj_x0

foreign import ccall "qtc_QPainter_brushOrigin" qtc_QPainter_brushOrigin :: Ptr (TQPainter a) -> IO (Ptr (TQPoint ()))

clipPath :: QPainter a -> (()) -> IO (QPainterPath ())
clipPath x0 ()
  = withQPainterPathResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPainter_clipPath cobj_x0

foreign import ccall "qtc_QPainter_clipPath" qtc_QPainter_clipPath :: Ptr (TQPainter a) -> IO (Ptr (TQPainterPath ()))

clipRegion :: QPainter a -> (()) -> IO (QRegion ())
clipRegion x0 ()
  = withQRegionResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPainter_clipRegion cobj_x0

foreign import ccall "qtc_QPainter_clipRegion" qtc_QPainter_clipRegion :: Ptr (TQPainter a) -> IO (Ptr (TQRegion ()))

combinedMatrix :: QPainter a -> (()) -> IO (QMatrix ())
combinedMatrix x0 ()
  = withQMatrixResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPainter_combinedMatrix cobj_x0

foreign import ccall "qtc_QPainter_combinedMatrix" qtc_QPainter_combinedMatrix :: Ptr (TQPainter a) -> IO (Ptr (TQMatrix ()))

combinedTransform :: QPainter a -> (()) -> IO (QTransform ())
combinedTransform x0 ()
  = withQTransformResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPainter_combinedTransform cobj_x0

foreign import ccall "qtc_QPainter_combinedTransform" qtc_QPainter_combinedTransform :: Ptr (TQPainter a) -> IO (Ptr (TQTransform ()))

compositionMode :: QPainter a -> (()) -> IO (CompositionMode)
compositionMode x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPainter_compositionMode cobj_x0

foreign import ccall "qtc_QPainter_compositionMode" qtc_QPainter_compositionMode :: Ptr (TQPainter a) -> IO CLong

instance Qdevice (QPainter a) (()) (IO (QPaintDevice ())) where
 device x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPainter_device cobj_x0

foreign import ccall "qtc_QPainter_device" qtc_QPainter_device :: Ptr (TQPainter a) -> IO (Ptr (TQPaintDevice ()))

deviceMatrix :: QPainter a -> (()) -> IO (QMatrix ())
deviceMatrix x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPainter_deviceMatrix cobj_x0

foreign import ccall "qtc_QPainter_deviceMatrix" qtc_QPainter_deviceMatrix :: Ptr (TQPainter a) -> IO (Ptr (TQMatrix ()))

instance QdeviceTransform (QPainter a) (()) where
 deviceTransform x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPainter_deviceTransform cobj_x0

foreign import ccall "qtc_QPainter_deviceTransform" qtc_QPainter_deviceTransform :: Ptr (TQPainter a) -> IO (Ptr (TQTransform ()))

class QdrawArc x1 where
 drawArc :: QPainter a -> x1 -> IO ()

class QqdrawArc x1 where
 qdrawArc :: QPainter a -> x1 -> IO ()

instance QdrawArc ((Int, Int, Int, Int, Int, Int)) where
 drawArc x0 (x1, x2, x3, x4, x5, x6)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPainter_drawArc2 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4) (toCInt x5) (toCInt x6)

foreign import ccall "qtc_QPainter_drawArc2" qtc_QPainter_drawArc2 :: Ptr (TQPainter a) -> CInt -> CInt -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QqdrawArc ((QRect t1, Int, Int)) where
 qdrawArc x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPainter_drawArc cobj_x0 cobj_x1 (toCInt x2) (toCInt x3)

foreign import ccall "qtc_QPainter_drawArc" qtc_QPainter_drawArc :: Ptr (TQPainter a) -> Ptr (TQRect t1) -> CInt -> CInt -> IO ()

instance QqdrawArc ((QRectF t1, Int, Int)) where
 qdrawArc x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPainter_drawArc1 cobj_x0 cobj_x1 (toCInt x2) (toCInt x3)

foreign import ccall "qtc_QPainter_drawArc1" qtc_QPainter_drawArc1 :: Ptr (TQPainter a) -> Ptr (TQRectF t1) -> CInt -> CInt -> IO ()

instance QdrawArc ((Rect, Int, Int)) where
 drawArc x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QPainter_drawArc_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h  (toCInt x2) (toCInt x3)

foreign import ccall "qtc_QPainter_drawArc_qth" qtc_QPainter_drawArc_qth :: Ptr (TQPainter a) -> CInt -> CInt -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QdrawArc ((RectF, Int, Int)) where
 drawArc x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRectF x1 $ \crectf_x1_x crectf_x1_y  crectf_x1_w crectf_x1_h -> 
    qtc_QPainter_drawArc1_qth cobj_x0 crectf_x1_x crectf_x1_y crectf_x1_w crectf_x1_h  (toCInt x2) (toCInt x3)

foreign import ccall "qtc_QPainter_drawArc1_qth" qtc_QPainter_drawArc1_qth :: Ptr (TQPainter a) -> CDouble -> CDouble -> CDouble -> CDouble -> CInt -> CInt -> IO ()

class QdrawChord x1 where
 drawChord :: QPainter a -> x1 -> IO ()

class QqdrawChord x1 where
 qdrawChord :: QPainter a -> x1 -> IO ()

instance QdrawChord ((Int, Int, Int, Int, Int, Int)) where
 drawChord x0 (x1, x2, x3, x4, x5, x6)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPainter_drawChord2 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4) (toCInt x5) (toCInt x6)

foreign import ccall "qtc_QPainter_drawChord2" qtc_QPainter_drawChord2 :: Ptr (TQPainter a) -> CInt -> CInt -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QqdrawChord ((QRect t1, Int, Int)) where
 qdrawChord x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPainter_drawChord cobj_x0 cobj_x1 (toCInt x2) (toCInt x3)

foreign import ccall "qtc_QPainter_drawChord" qtc_QPainter_drawChord :: Ptr (TQPainter a) -> Ptr (TQRect t1) -> CInt -> CInt -> IO ()

instance QqdrawChord ((QRectF t1, Int, Int)) where
 qdrawChord x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPainter_drawChord1 cobj_x0 cobj_x1 (toCInt x2) (toCInt x3)

foreign import ccall "qtc_QPainter_drawChord1" qtc_QPainter_drawChord1 :: Ptr (TQPainter a) -> Ptr (TQRectF t1) -> CInt -> CInt -> IO ()

instance QdrawChord ((Rect, Int, Int)) where
 drawChord x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QPainter_drawChord_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h  (toCInt x2) (toCInt x3)

foreign import ccall "qtc_QPainter_drawChord_qth" qtc_QPainter_drawChord_qth :: Ptr (TQPainter a) -> CInt -> CInt -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QdrawChord ((RectF, Int, Int)) where
 drawChord x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRectF x1 $ \crectf_x1_x crectf_x1_y  crectf_x1_w crectf_x1_h -> 
    qtc_QPainter_drawChord1_qth cobj_x0 crectf_x1_x crectf_x1_y crectf_x1_w crectf_x1_h  (toCInt x2) (toCInt x3)

foreign import ccall "qtc_QPainter_drawChord1_qth" qtc_QPainter_drawChord1_qth :: Ptr (TQPainter a) -> CDouble -> CDouble -> CDouble -> CDouble -> CInt -> CInt -> IO ()

class QdrawConvexPolygon x1 where
 drawConvexPolygon :: QPainter a -> x1 -> IO ()

instance QdrawConvexPolygon ((QPoint t1, Int)) where
 drawConvexPolygon x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPainter_drawConvexPolygon3 cobj_x0 cobj_x1 (toCInt x2)

foreign import ccall "qtc_QPainter_drawConvexPolygon3" qtc_QPainter_drawConvexPolygon3 :: Ptr (TQPainter a) -> Ptr (TQPoint t1) -> CInt -> IO ()

instance QdrawConvexPolygon ((QPointF t1, Int)) where
 drawConvexPolygon x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPainter_drawConvexPolygon2 cobj_x0 cobj_x1 (toCInt x2)

foreign import ccall "qtc_QPainter_drawConvexPolygon2" qtc_QPainter_drawConvexPolygon2 :: Ptr (TQPainter a) -> Ptr (TQPointF t1) -> CInt -> IO ()

instance QdrawConvexPolygon ((QPolygon t1)) where
 drawConvexPolygon x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPainter_drawConvexPolygon1 cobj_x0 cobj_x1

foreign import ccall "qtc_QPainter_drawConvexPolygon1" qtc_QPainter_drawConvexPolygon1 :: Ptr (TQPainter a) -> Ptr (TQPolygon t1) -> IO ()

instance QdrawConvexPolygon ((QPolygonF t1)) where
 drawConvexPolygon x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPainter_drawConvexPolygon cobj_x0 cobj_x1

foreign import ccall "qtc_QPainter_drawConvexPolygon" qtc_QPainter_drawConvexPolygon :: Ptr (TQPainter a) -> Ptr (TQPolygonF t1) -> IO ()

class QdrawEllipse x1 where
 drawEllipse :: QPainter a -> x1 -> IO ()

class QqdrawEllipse x1 where
 qdrawEllipse :: QPainter a -> x1 -> IO ()

instance QdrawEllipse ((Int, Int, Int, Int)) where
 drawEllipse x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPainter_drawEllipse2 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QPainter_drawEllipse2" qtc_QPainter_drawEllipse2 :: Ptr (TQPainter a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QqdrawEllipse ((QRect t1)) where
 qdrawEllipse x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPainter_drawEllipse cobj_x0 cobj_x1

foreign import ccall "qtc_QPainter_drawEllipse" qtc_QPainter_drawEllipse :: Ptr (TQPainter a) -> Ptr (TQRect t1) -> IO ()

instance QqdrawEllipse ((QRectF t1)) where
 qdrawEllipse x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPainter_drawEllipse1 cobj_x0 cobj_x1

foreign import ccall "qtc_QPainter_drawEllipse1" qtc_QPainter_drawEllipse1 :: Ptr (TQPainter a) -> Ptr (TQRectF t1) -> IO ()

instance QdrawEllipse ((Rect)) where
 drawEllipse x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QPainter_drawEllipse_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

foreign import ccall "qtc_QPainter_drawEllipse_qth" qtc_QPainter_drawEllipse_qth :: Ptr (TQPainter a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QdrawEllipse ((RectF)) where
 drawEllipse x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRectF x1 $ \crectf_x1_x crectf_x1_y  crectf_x1_w crectf_x1_h -> 
    qtc_QPainter_drawEllipse1_qth cobj_x0 crectf_x1_x crectf_x1_y crectf_x1_w crectf_x1_h 

foreign import ccall "qtc_QPainter_drawEllipse1_qth" qtc_QPainter_drawEllipse1_qth :: Ptr (TQPainter a) -> CDouble -> CDouble -> CDouble -> CDouble -> IO ()

class QdrawImage x1 where
 drawImage :: QPainter a -> x1 -> IO ()

class QqdrawImage x1 where
 qdrawImage :: QPainter a -> x1 -> IO ()

instance QdrawImage ((Int, Int, QImage t3)) where
 drawImage x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QPainter_drawImage5 cobj_x0 (toCInt x1) (toCInt x2) cobj_x3

foreign import ccall "qtc_QPainter_drawImage5" qtc_QPainter_drawImage5 :: Ptr (TQPainter a) -> CInt -> CInt -> Ptr (TQImage t3) -> IO ()

instance QdrawImage ((Int, Int, QImage t3, Int)) where
 drawImage x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QPainter_drawImage9 cobj_x0 (toCInt x1) (toCInt x2) cobj_x3 (toCInt x4)

foreign import ccall "qtc_QPainter_drawImage9" qtc_QPainter_drawImage9 :: Ptr (TQPainter a) -> CInt -> CInt -> Ptr (TQImage t3) -> CInt -> IO ()

instance QdrawImage ((Int, Int, QImage t3, Int, Int)) where
 drawImage x0 (x1, x2, x3, x4, x5)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QPainter_drawImage14 cobj_x0 (toCInt x1) (toCInt x2) cobj_x3 (toCInt x4) (toCInt x5)

foreign import ccall "qtc_QPainter_drawImage14" qtc_QPainter_drawImage14 :: Ptr (TQPainter a) -> CInt -> CInt -> Ptr (TQImage t3) -> CInt -> CInt -> IO ()

instance QdrawImage ((Int, Int, QImage t3, Int, Int, Int)) where
 drawImage x0 (x1, x2, x3, x4, x5, x6)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QPainter_drawImage15 cobj_x0 (toCInt x1) (toCInt x2) cobj_x3 (toCInt x4) (toCInt x5) (toCInt x6)

foreign import ccall "qtc_QPainter_drawImage15" qtc_QPainter_drawImage15 :: Ptr (TQPainter a) -> CInt -> CInt -> Ptr (TQImage t3) -> CInt -> CInt -> CInt -> IO ()

instance QdrawImage ((Int, Int, QImage t3, Int, Int, Int, Int)) where
 drawImage x0 (x1, x2, x3, x4, x5, x6, x7)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QPainter_drawImage16 cobj_x0 (toCInt x1) (toCInt x2) cobj_x3 (toCInt x4) (toCInt x5) (toCInt x6) (toCInt x7)

foreign import ccall "qtc_QPainter_drawImage16" qtc_QPainter_drawImage16 :: Ptr (TQPainter a) -> CInt -> CInt -> Ptr (TQImage t3) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QdrawImage ((Int, Int, QImage t3, Int, Int, Int, Int, ImageConversionFlags)) where
 drawImage x0 (x1, x2, x3, x4, x5, x6, x7, x8)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QPainter_drawImage17 cobj_x0 (toCInt x1) (toCInt x2) cobj_x3 (toCInt x4) (toCInt x5) (toCInt x6) (toCInt x7) (toCLong $ qFlags_toInt x8)

foreign import ccall "qtc_QPainter_drawImage17" qtc_QPainter_drawImage17 :: Ptr (TQPainter a) -> CInt -> CInt -> Ptr (TQImage t3) -> CInt -> CInt -> CInt -> CInt -> CLong -> IO ()

instance QdrawImage ((Point, QImage t2)) where
 drawImage x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QPainter_drawImage3_qth cobj_x0 cpoint_x1_x cpoint_x1_y  cobj_x2

foreign import ccall "qtc_QPainter_drawImage3_qth" qtc_QPainter_drawImage3_qth :: Ptr (TQPainter a) -> CInt -> CInt -> Ptr (TQImage t2) -> IO ()

instance QdrawImage ((Point, QImage t2, Rect)) where
 drawImage x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    withObjectPtr x2 $ \cobj_x2 ->
    withCRect x3 $ \crect_x3_x crect_x3_y  crect_x3_w crect_x3_h -> 
    qtc_QPainter_drawImage6_qth cobj_x0 cpoint_x1_x cpoint_x1_y  cobj_x2 crect_x3_x crect_x3_y crect_x3_w crect_x3_h 

foreign import ccall "qtc_QPainter_drawImage6_qth" qtc_QPainter_drawImage6_qth :: Ptr (TQPainter a) -> CInt -> CInt -> Ptr (TQImage t2) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QdrawImage ((Point, QImage t2, Rect, ImageConversionFlags)) where
 drawImage x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    withObjectPtr x2 $ \cobj_x2 ->
    withCRect x3 $ \crect_x3_x crect_x3_y  crect_x3_w crect_x3_h -> 
    qtc_QPainter_drawImage13_qth cobj_x0 cpoint_x1_x cpoint_x1_y  cobj_x2 crect_x3_x crect_x3_y crect_x3_w crect_x3_h  (toCLong $ qFlags_toInt x4)

foreign import ccall "qtc_QPainter_drawImage13_qth" qtc_QPainter_drawImage13_qth :: Ptr (TQPainter a) -> CInt -> CInt -> Ptr (TQImage t2) -> CInt -> CInt -> CInt -> CInt -> CLong -> IO ()

instance QdrawImage ((PointF, QImage t2)) where
 drawImage x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPointF x1 $ \cpointf_x1_x cpointf_x1_y -> 
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QPainter_drawImage2_qth cobj_x0 cpointf_x1_x cpointf_x1_y  cobj_x2

foreign import ccall "qtc_QPainter_drawImage2_qth" qtc_QPainter_drawImage2_qth :: Ptr (TQPainter a) -> CDouble -> CDouble -> Ptr (TQImage t2) -> IO ()

instance QdrawImage ((PointF, QImage t2, RectF)) where
 drawImage x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPointF x1 $ \cpointf_x1_x cpointf_x1_y -> 
    withObjectPtr x2 $ \cobj_x2 ->
    withCRectF x3 $ \crectf_x3_x crectf_x3_y  crectf_x3_w crectf_x3_h -> 
    qtc_QPainter_drawImage4_qth cobj_x0 cpointf_x1_x cpointf_x1_y  cobj_x2 crectf_x3_x crectf_x3_y crectf_x3_w crectf_x3_h 

foreign import ccall "qtc_QPainter_drawImage4_qth" qtc_QPainter_drawImage4_qth :: Ptr (TQPainter a) -> CDouble -> CDouble -> Ptr (TQImage t2) -> CDouble -> CDouble -> CDouble -> CDouble -> IO ()

instance QdrawImage ((PointF, QImage t2, RectF, ImageConversionFlags)) where
 drawImage x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPointF x1 $ \cpointf_x1_x cpointf_x1_y -> 
    withObjectPtr x2 $ \cobj_x2 ->
    withCRectF x3 $ \crectf_x3_x crectf_x3_y  crectf_x3_w crectf_x3_h -> 
    qtc_QPainter_drawImage12_qth cobj_x0 cpointf_x1_x cpointf_x1_y  cobj_x2 crectf_x3_x crectf_x3_y crectf_x3_w crectf_x3_h  (toCLong $ qFlags_toInt x4)

foreign import ccall "qtc_QPainter_drawImage12_qth" qtc_QPainter_drawImage12_qth :: Ptr (TQPainter a) -> CDouble -> CDouble -> Ptr (TQImage t2) -> CDouble -> CDouble -> CDouble -> CDouble -> CLong -> IO ()

instance QqdrawImage ((QPoint t1, QImage t2)) where
 qdrawImage x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QPainter_drawImage3 cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QPainter_drawImage3" qtc_QPainter_drawImage3 :: Ptr (TQPainter a) -> Ptr (TQPoint t1) -> Ptr (TQImage t2) -> IO ()

instance QqdrawImage ((QPoint t1, QImage t2, QRect t3)) where
 qdrawImage x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QPainter_drawImage6 cobj_x0 cobj_x1 cobj_x2 cobj_x3

foreign import ccall "qtc_QPainter_drawImage6" qtc_QPainter_drawImage6 :: Ptr (TQPainter a) -> Ptr (TQPoint t1) -> Ptr (TQImage t2) -> Ptr (TQRect t3) -> IO ()

instance QqdrawImage ((QPoint t1, QImage t2, QRect t3, ImageConversionFlags)) where
 qdrawImage x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QPainter_drawImage13 cobj_x0 cobj_x1 cobj_x2 cobj_x3 (toCLong $ qFlags_toInt x4)

foreign import ccall "qtc_QPainter_drawImage13" qtc_QPainter_drawImage13 :: Ptr (TQPainter a) -> Ptr (TQPoint t1) -> Ptr (TQImage t2) -> Ptr (TQRect t3) -> CLong -> IO ()

instance QqdrawImage ((QPointF t1, QImage t2)) where
 qdrawImage x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QPainter_drawImage2 cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QPainter_drawImage2" qtc_QPainter_drawImage2 :: Ptr (TQPainter a) -> Ptr (TQPointF t1) -> Ptr (TQImage t2) -> IO ()

instance QqdrawImage ((QPointF t1, QImage t2, QRectF t3)) where
 qdrawImage x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QPainter_drawImage4 cobj_x0 cobj_x1 cobj_x2 cobj_x3

foreign import ccall "qtc_QPainter_drawImage4" qtc_QPainter_drawImage4 :: Ptr (TQPainter a) -> Ptr (TQPointF t1) -> Ptr (TQImage t2) -> Ptr (TQRectF t3) -> IO ()

instance QqdrawImage ((QPointF t1, QImage t2, QRectF t3, ImageConversionFlags)) where
 qdrawImage x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QPainter_drawImage12 cobj_x0 cobj_x1 cobj_x2 cobj_x3 (toCLong $ qFlags_toInt x4)

foreign import ccall "qtc_QPainter_drawImage12" qtc_QPainter_drawImage12 :: Ptr (TQPainter a) -> Ptr (TQPointF t1) -> Ptr (TQImage t2) -> Ptr (TQRectF t3) -> CLong -> IO ()

instance QqdrawImage ((QRect t1, QImage t2)) where
 qdrawImage x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QPainter_drawImage1 cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QPainter_drawImage1" qtc_QPainter_drawImage1 :: Ptr (TQPainter a) -> Ptr (TQRect t1) -> Ptr (TQImage t2) -> IO ()

instance QqdrawImage ((QRect t1, QImage t2, QRect t3)) where
 qdrawImage x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QPainter_drawImage7 cobj_x0 cobj_x1 cobj_x2 cobj_x3

foreign import ccall "qtc_QPainter_drawImage7" qtc_QPainter_drawImage7 :: Ptr (TQPainter a) -> Ptr (TQRect t1) -> Ptr (TQImage t2) -> Ptr (TQRect t3) -> IO ()

instance QqdrawImage ((QRect t1, QImage t2, QRect t3, ImageConversionFlags)) where
 qdrawImage x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QPainter_drawImage11 cobj_x0 cobj_x1 cobj_x2 cobj_x3 (toCLong $ qFlags_toInt x4)

foreign import ccall "qtc_QPainter_drawImage11" qtc_QPainter_drawImage11 :: Ptr (TQPainter a) -> Ptr (TQRect t1) -> Ptr (TQImage t2) -> Ptr (TQRect t3) -> CLong -> IO ()

instance QqdrawImage ((QRectF t1, QImage t2)) where
 qdrawImage x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QPainter_drawImage cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QPainter_drawImage" qtc_QPainter_drawImage :: Ptr (TQPainter a) -> Ptr (TQRectF t1) -> Ptr (TQImage t2) -> IO ()

instance QqdrawImage ((QRectF t1, QImage t2, QRectF t3)) where
 qdrawImage x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QPainter_drawImage8 cobj_x0 cobj_x1 cobj_x2 cobj_x3

foreign import ccall "qtc_QPainter_drawImage8" qtc_QPainter_drawImage8 :: Ptr (TQPainter a) -> Ptr (TQRectF t1) -> Ptr (TQImage t2) -> Ptr (TQRectF t3) -> IO ()

instance QqdrawImage ((QRectF t1, QImage t2, QRectF t3, ImageConversionFlags)) where
 qdrawImage x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QPainter_drawImage10 cobj_x0 cobj_x1 cobj_x2 cobj_x3 (toCLong $ qFlags_toInt x4)

foreign import ccall "qtc_QPainter_drawImage10" qtc_QPainter_drawImage10 :: Ptr (TQPainter a) -> Ptr (TQRectF t1) -> Ptr (TQImage t2) -> Ptr (TQRectF t3) -> CLong -> IO ()

instance QdrawImage ((Rect, QImage t2)) where
 drawImage x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QPainter_drawImage1_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h  cobj_x2

foreign import ccall "qtc_QPainter_drawImage1_qth" qtc_QPainter_drawImage1_qth :: Ptr (TQPainter a) -> CInt -> CInt -> CInt -> CInt -> Ptr (TQImage t2) -> IO ()

instance QdrawImage ((Rect, QImage t2, Rect)) where
 drawImage x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    withObjectPtr x2 $ \cobj_x2 ->
    withCRect x3 $ \crect_x3_x crect_x3_y  crect_x3_w crect_x3_h -> 
    qtc_QPainter_drawImage7_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h  cobj_x2 crect_x3_x crect_x3_y crect_x3_w crect_x3_h 

foreign import ccall "qtc_QPainter_drawImage7_qth" qtc_QPainter_drawImage7_qth :: Ptr (TQPainter a) -> CInt -> CInt -> CInt -> CInt -> Ptr (TQImage t2) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QdrawImage ((Rect, QImage t2, Rect, ImageConversionFlags)) where
 drawImage x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    withObjectPtr x2 $ \cobj_x2 ->
    withCRect x3 $ \crect_x3_x crect_x3_y  crect_x3_w crect_x3_h -> 
    qtc_QPainter_drawImage11_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h  cobj_x2 crect_x3_x crect_x3_y crect_x3_w crect_x3_h  (toCLong $ qFlags_toInt x4)

foreign import ccall "qtc_QPainter_drawImage11_qth" qtc_QPainter_drawImage11_qth :: Ptr (TQPainter a) -> CInt -> CInt -> CInt -> CInt -> Ptr (TQImage t2) -> CInt -> CInt -> CInt -> CInt -> CLong -> IO ()

instance QdrawImage ((RectF, QImage t2)) where
 drawImage x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRectF x1 $ \crectf_x1_x crectf_x1_y  crectf_x1_w crectf_x1_h -> 
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QPainter_drawImage_qth cobj_x0 crectf_x1_x crectf_x1_y crectf_x1_w crectf_x1_h  cobj_x2

foreign import ccall "qtc_QPainter_drawImage_qth" qtc_QPainter_drawImage_qth :: Ptr (TQPainter a) -> CDouble -> CDouble -> CDouble -> CDouble -> Ptr (TQImage t2) -> IO ()

instance QdrawImage ((RectF, QImage t2, RectF)) where
 drawImage x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRectF x1 $ \crectf_x1_x crectf_x1_y  crectf_x1_w crectf_x1_h -> 
    withObjectPtr x2 $ \cobj_x2 ->
    withCRectF x3 $ \crectf_x3_x crectf_x3_y  crectf_x3_w crectf_x3_h -> 
    qtc_QPainter_drawImage8_qth cobj_x0 crectf_x1_x crectf_x1_y crectf_x1_w crectf_x1_h  cobj_x2 crectf_x3_x crectf_x3_y crectf_x3_w crectf_x3_h 

foreign import ccall "qtc_QPainter_drawImage8_qth" qtc_QPainter_drawImage8_qth :: Ptr (TQPainter a) -> CDouble -> CDouble -> CDouble -> CDouble -> Ptr (TQImage t2) -> CDouble -> CDouble -> CDouble -> CDouble -> IO ()

instance QdrawImage ((RectF, QImage t2, RectF, ImageConversionFlags)) where
 drawImage x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRectF x1 $ \crectf_x1_x crectf_x1_y  crectf_x1_w crectf_x1_h -> 
    withObjectPtr x2 $ \cobj_x2 ->
    withCRectF x3 $ \crectf_x3_x crectf_x3_y  crectf_x3_w crectf_x3_h -> 
    qtc_QPainter_drawImage10_qth cobj_x0 crectf_x1_x crectf_x1_y crectf_x1_w crectf_x1_h  cobj_x2 crectf_x3_x crectf_x3_y crectf_x3_w crectf_x3_h  (toCLong $ qFlags_toInt x4)

foreign import ccall "qtc_QPainter_drawImage10_qth" qtc_QPainter_drawImage10_qth :: Ptr (TQPainter a) -> CDouble -> CDouble -> CDouble -> CDouble -> Ptr (TQImage t2) -> CDouble -> CDouble -> CDouble -> CDouble -> CLong -> IO ()

class QdrawLine x1 where
 drawLine :: QPainter a -> x1 -> IO ()

class QqdrawLine x1 where
 qdrawLine :: QPainter a -> x1 -> IO ()

instance QdrawLine ((Int, Int, Int, Int)) where
 drawLine x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPainter_drawLine4 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QPainter_drawLine4" qtc_QPainter_drawLine4 :: Ptr (TQPainter a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QdrawLine ((Line)) where
 drawLine x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCLine x1 $ \cline_x1_x1 cline_x1_y1  cline_x1_x2 cline_x1_y2 -> 
    qtc_QPainter_drawLine1_qth cobj_x0 cline_x1_x1 cline_x1_y1 cline_x1_x2 cline_x1_y2 

foreign import ccall "qtc_QPainter_drawLine1_qth" qtc_QPainter_drawLine1_qth :: Ptr (TQPainter a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QdrawLine ((LineF)) where
 drawLine x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCLineF x1 $ \clinef_x1_x1 clinef_x1_y1  clinef_x1_x2 clinef_x1_y2 -> 
    qtc_QPainter_drawLine_qth cobj_x0 clinef_x1_x1 clinef_x1_y1 clinef_x1_x2 clinef_x1_y2 

foreign import ccall "qtc_QPainter_drawLine_qth" qtc_QPainter_drawLine_qth :: Ptr (TQPainter a) -> CDouble -> CDouble -> CDouble -> CDouble -> IO ()

instance QdrawLine ((Point, Point)) where
 drawLine x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    withCPoint x2 $ \cpoint_x2_x cpoint_x2_y -> 
    qtc_QPainter_drawLine2_qth cobj_x0 cpoint_x1_x cpoint_x1_y  cpoint_x2_x cpoint_x2_y 

foreign import ccall "qtc_QPainter_drawLine2_qth" qtc_QPainter_drawLine2_qth :: Ptr (TQPainter a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QdrawLine ((PointF, PointF)) where
 drawLine x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPointF x1 $ \cpointf_x1_x cpointf_x1_y -> 
    withCPointF x2 $ \cpointf_x2_x cpointf_x2_y -> 
    qtc_QPainter_drawLine3_qth cobj_x0 cpointf_x1_x cpointf_x1_y  cpointf_x2_x cpointf_x2_y 

foreign import ccall "qtc_QPainter_drawLine3_qth" qtc_QPainter_drawLine3_qth :: Ptr (TQPainter a) -> CDouble -> CDouble -> CDouble -> CDouble -> IO ()

instance QqdrawLine ((QLine t1)) where
 qdrawLine x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPainter_drawLine1 cobj_x0 cobj_x1

foreign import ccall "qtc_QPainter_drawLine1" qtc_QPainter_drawLine1 :: Ptr (TQPainter a) -> Ptr (TQLine t1) -> IO ()

instance QqdrawLine ((QLineF t1)) where
 qdrawLine x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPainter_drawLine cobj_x0 cobj_x1

foreign import ccall "qtc_QPainter_drawLine" qtc_QPainter_drawLine :: Ptr (TQPainter a) -> Ptr (TQLineF t1) -> IO ()

instance QqdrawLine ((QPoint t1, QPoint t2)) where
 qdrawLine x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QPainter_drawLine2 cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QPainter_drawLine2" qtc_QPainter_drawLine2 :: Ptr (TQPainter a) -> Ptr (TQPoint t1) -> Ptr (TQPoint t2) -> IO ()

instance QqdrawLine ((QPointF t1, QPointF t2)) where
 qdrawLine x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QPainter_drawLine3 cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QPainter_drawLine3" qtc_QPainter_drawLine3 :: Ptr (TQPainter a) -> Ptr (TQPointF t1) -> Ptr (TQPointF t2) -> IO ()

class QdrawLines x1 where
 drawLines :: QPainter a -> x1 -> IO ()

instance QdrawLines ((QLine t1, Int)) where
 drawLines x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPainter_drawLines3 cobj_x0 cobj_x1 (toCInt x2)

foreign import ccall "qtc_QPainter_drawLines3" qtc_QPainter_drawLines3 :: Ptr (TQPainter a) -> Ptr (TQLine t1) -> CInt -> IO ()

instance QdrawLines ((QLineF t1, Int)) where
 drawLines x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPainter_drawLines2 cobj_x0 cobj_x1 (toCInt x2)

foreign import ccall "qtc_QPainter_drawLines2" qtc_QPainter_drawLines2 :: Ptr (TQPainter a) -> Ptr (TQLineF t1) -> CInt -> IO ()

instance QdrawLines ((QPoint t1, Int)) where
 drawLines x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPainter_drawLines1 cobj_x0 cobj_x1 (toCInt x2)

foreign import ccall "qtc_QPainter_drawLines1" qtc_QPainter_drawLines1 :: Ptr (TQPainter a) -> Ptr (TQPoint t1) -> CInt -> IO ()

instance QdrawLines ((QPointF t1, Int)) where
 drawLines x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPainter_drawLines cobj_x0 cobj_x1 (toCInt x2)

foreign import ccall "qtc_QPainter_drawLines" qtc_QPainter_drawLines :: Ptr (TQPainter a) -> Ptr (TQPointF t1) -> CInt -> IO ()

drawPath :: QPainter a -> ((QPainterPath t1)) -> IO ()
drawPath x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPainter_drawPath cobj_x0 cobj_x1

foreign import ccall "qtc_QPainter_drawPath" qtc_QPainter_drawPath :: Ptr (TQPainter a) -> Ptr (TQPainterPath t1) -> IO ()

class QdrawPicture x1 where
 drawPicture :: QPainter a -> x1 -> IO ()

class QqdrawPicture x1 where
 qdrawPicture :: QPainter a -> x1 -> IO ()

instance QdrawPicture ((Int, Int, QPicture t3)) where
 drawPicture x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QPainter_drawPicture2 cobj_x0 (toCInt x1) (toCInt x2) cobj_x3

foreign import ccall "qtc_QPainter_drawPicture2" qtc_QPainter_drawPicture2 :: Ptr (TQPainter a) -> CInt -> CInt -> Ptr (TQPicture t3) -> IO ()

instance QdrawPicture ((Point, QPicture t2)) where
 drawPicture x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QPainter_drawPicture1_qth cobj_x0 cpoint_x1_x cpoint_x1_y  cobj_x2

foreign import ccall "qtc_QPainter_drawPicture1_qth" qtc_QPainter_drawPicture1_qth :: Ptr (TQPainter a) -> CInt -> CInt -> Ptr (TQPicture t2) -> IO ()

instance QdrawPicture ((PointF, QPicture t2)) where
 drawPicture x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPointF x1 $ \cpointf_x1_x cpointf_x1_y -> 
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QPainter_drawPicture_qth cobj_x0 cpointf_x1_x cpointf_x1_y  cobj_x2

foreign import ccall "qtc_QPainter_drawPicture_qth" qtc_QPainter_drawPicture_qth :: Ptr (TQPainter a) -> CDouble -> CDouble -> Ptr (TQPicture t2) -> IO ()

instance QqdrawPicture ((QPoint t1, QPicture t2)) where
 qdrawPicture x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QPainter_drawPicture1 cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QPainter_drawPicture1" qtc_QPainter_drawPicture1 :: Ptr (TQPainter a) -> Ptr (TQPoint t1) -> Ptr (TQPicture t2) -> IO ()

instance QqdrawPicture ((QPointF t1, QPicture t2)) where
 qdrawPicture x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QPainter_drawPicture cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QPainter_drawPicture" qtc_QPainter_drawPicture :: Ptr (TQPainter a) -> Ptr (TQPointF t1) -> Ptr (TQPicture t2) -> IO ()

class QdrawPie x1 where
 drawPie :: QPainter a -> x1 -> IO ()

class QqdrawPie x1 where
 qdrawPie :: QPainter a -> x1 -> IO ()

instance QdrawPie ((Int, Int, Int, Int, Int, Int)) where
 drawPie x0 (x1, x2, x3, x4, x5, x6)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPainter_drawPie2 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4) (toCInt x5) (toCInt x6)

foreign import ccall "qtc_QPainter_drawPie2" qtc_QPainter_drawPie2 :: Ptr (TQPainter a) -> CInt -> CInt -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QqdrawPie ((QRect t1, Int, Int)) where
 qdrawPie x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPainter_drawPie cobj_x0 cobj_x1 (toCInt x2) (toCInt x3)

foreign import ccall "qtc_QPainter_drawPie" qtc_QPainter_drawPie :: Ptr (TQPainter a) -> Ptr (TQRect t1) -> CInt -> CInt -> IO ()

instance QqdrawPie ((QRectF t1, Int, Int)) where
 qdrawPie x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPainter_drawPie1 cobj_x0 cobj_x1 (toCInt x2) (toCInt x3)

foreign import ccall "qtc_QPainter_drawPie1" qtc_QPainter_drawPie1 :: Ptr (TQPainter a) -> Ptr (TQRectF t1) -> CInt -> CInt -> IO ()

instance QdrawPie ((Rect, Int, Int)) where
 drawPie x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QPainter_drawPie_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h  (toCInt x2) (toCInt x3)

foreign import ccall "qtc_QPainter_drawPie_qth" qtc_QPainter_drawPie_qth :: Ptr (TQPainter a) -> CInt -> CInt -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QdrawPie ((RectF, Int, Int)) where
 drawPie x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRectF x1 $ \crectf_x1_x crectf_x1_y  crectf_x1_w crectf_x1_h -> 
    qtc_QPainter_drawPie1_qth cobj_x0 crectf_x1_x crectf_x1_y crectf_x1_w crectf_x1_h  (toCInt x2) (toCInt x3)

foreign import ccall "qtc_QPainter_drawPie1_qth" qtc_QPainter_drawPie1_qth :: Ptr (TQPainter a) -> CDouble -> CDouble -> CDouble -> CDouble -> CInt -> CInt -> IO ()

class QdrawPixmap x1 where
 drawPixmap :: QPainter a -> x1 -> IO ()

class QqdrawPixmap x1 where
 qdrawPixmap :: QPainter a -> x1 -> IO ()

instance QdrawPixmap ((Int, Int, Int, Int, QPixmap t5)) where
 drawPixmap x0 (x1, x2, x3, x4, x5)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x5 $ \cobj_x5 ->
    qtc_QPainter_drawPixmap8 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4) cobj_x5

foreign import ccall "qtc_QPainter_drawPixmap8" qtc_QPainter_drawPixmap8 :: Ptr (TQPainter a) -> CInt -> CInt -> CInt -> CInt -> Ptr (TQPixmap t5) -> IO ()

instance QdrawPixmap ((Int, Int, Int, Int, QPixmap t5, Int, Int, Int, Int)) where
 drawPixmap x0 (x1, x2, x3, x4, x5, x6, x7, x8, x9)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x5 $ \cobj_x5 ->
    qtc_QPainter_drawPixmap10 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4) cobj_x5 (toCInt x6) (toCInt x7) (toCInt x8) (toCInt x9)

foreign import ccall "qtc_QPainter_drawPixmap10" qtc_QPainter_drawPixmap10 :: Ptr (TQPainter a) -> CInt -> CInt -> CInt -> CInt -> Ptr (TQPixmap t5) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QdrawPixmap ((Int, Int, QPixmap t3)) where
 drawPixmap x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QPainter_drawPixmap7 cobj_x0 (toCInt x1) (toCInt x2) cobj_x3

foreign import ccall "qtc_QPainter_drawPixmap7" qtc_QPainter_drawPixmap7 :: Ptr (TQPainter a) -> CInt -> CInt -> Ptr (TQPixmap t3) -> IO ()

instance QdrawPixmap ((Int, Int, QPixmap t3, Int, Int, Int, Int)) where
 drawPixmap x0 (x1, x2, x3, x4, x5, x6, x7)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QPainter_drawPixmap9 cobj_x0 (toCInt x1) (toCInt x2) cobj_x3 (toCInt x4) (toCInt x5) (toCInt x6) (toCInt x7)

foreign import ccall "qtc_QPainter_drawPixmap9" qtc_QPainter_drawPixmap9 :: Ptr (TQPainter a) -> CInt -> CInt -> Ptr (TQPixmap t3) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QdrawPixmap ((Point, QPixmap t2)) where
 drawPixmap x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QPainter_drawPixmap2_qth cobj_x0 cpoint_x1_x cpoint_x1_y  cobj_x2

foreign import ccall "qtc_QPainter_drawPixmap2_qth" qtc_QPainter_drawPixmap2_qth :: Ptr (TQPainter a) -> CInt -> CInt -> Ptr (TQPixmap t2) -> IO ()

instance QdrawPixmap ((Point, QPixmap t2, Rect)) where
 drawPixmap x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    withObjectPtr x2 $ \cobj_x2 ->
    withCRect x3 $ \crect_x3_x crect_x3_y  crect_x3_w crect_x3_h -> 
    qtc_QPainter_drawPixmap3_qth cobj_x0 cpoint_x1_x cpoint_x1_y  cobj_x2 crect_x3_x crect_x3_y crect_x3_w crect_x3_h 

foreign import ccall "qtc_QPainter_drawPixmap3_qth" qtc_QPainter_drawPixmap3_qth :: Ptr (TQPainter a) -> CInt -> CInt -> Ptr (TQPixmap t2) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QdrawPixmap ((PointF, QPixmap t2)) where
 drawPixmap x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPointF x1 $ \cpointf_x1_x cpointf_x1_y -> 
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QPainter_drawPixmap1_qth cobj_x0 cpointf_x1_x cpointf_x1_y  cobj_x2

foreign import ccall "qtc_QPainter_drawPixmap1_qth" qtc_QPainter_drawPixmap1_qth :: Ptr (TQPainter a) -> CDouble -> CDouble -> Ptr (TQPixmap t2) -> IO ()

instance QdrawPixmap ((PointF, QPixmap t2, RectF)) where
 drawPixmap x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPointF x1 $ \cpointf_x1_x cpointf_x1_y -> 
    withObjectPtr x2 $ \cobj_x2 ->
    withCRectF x3 $ \crectf_x3_x crectf_x3_y  crectf_x3_w crectf_x3_h -> 
    qtc_QPainter_drawPixmap4_qth cobj_x0 cpointf_x1_x cpointf_x1_y  cobj_x2 crectf_x3_x crectf_x3_y crectf_x3_w crectf_x3_h 

foreign import ccall "qtc_QPainter_drawPixmap4_qth" qtc_QPainter_drawPixmap4_qth :: Ptr (TQPainter a) -> CDouble -> CDouble -> Ptr (TQPixmap t2) -> CDouble -> CDouble -> CDouble -> CDouble -> IO ()

instance QqdrawPixmap ((QPoint t1, QPixmap t2)) where
 qdrawPixmap x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QPainter_drawPixmap2 cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QPainter_drawPixmap2" qtc_QPainter_drawPixmap2 :: Ptr (TQPainter a) -> Ptr (TQPoint t1) -> Ptr (TQPixmap t2) -> IO ()

instance QqdrawPixmap ((QPoint t1, QPixmap t2, QRect t3)) where
 qdrawPixmap x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QPainter_drawPixmap3 cobj_x0 cobj_x1 cobj_x2 cobj_x3

foreign import ccall "qtc_QPainter_drawPixmap3" qtc_QPainter_drawPixmap3 :: Ptr (TQPainter a) -> Ptr (TQPoint t1) -> Ptr (TQPixmap t2) -> Ptr (TQRect t3) -> IO ()

instance QqdrawPixmap ((QPointF t1, QPixmap t2)) where
 qdrawPixmap x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QPainter_drawPixmap1 cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QPainter_drawPixmap1" qtc_QPainter_drawPixmap1 :: Ptr (TQPainter a) -> Ptr (TQPointF t1) -> Ptr (TQPixmap t2) -> IO ()

instance QqdrawPixmap ((QPointF t1, QPixmap t2, QRectF t3)) where
 qdrawPixmap x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QPainter_drawPixmap4 cobj_x0 cobj_x1 cobj_x2 cobj_x3

foreign import ccall "qtc_QPainter_drawPixmap4" qtc_QPainter_drawPixmap4 :: Ptr (TQPainter a) -> Ptr (TQPointF t1) -> Ptr (TQPixmap t2) -> Ptr (TQRectF t3) -> IO ()

instance QqdrawPixmap ((QRect t1, QPixmap t2)) where
 qdrawPixmap x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QPainter_drawPixmap cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QPainter_drawPixmap" qtc_QPainter_drawPixmap :: Ptr (TQPainter a) -> Ptr (TQRect t1) -> Ptr (TQPixmap t2) -> IO ()

instance QqdrawPixmap ((QRect t1, QPixmap t2, QRect t3)) where
 qdrawPixmap x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QPainter_drawPixmap5 cobj_x0 cobj_x1 cobj_x2 cobj_x3

foreign import ccall "qtc_QPainter_drawPixmap5" qtc_QPainter_drawPixmap5 :: Ptr (TQPainter a) -> Ptr (TQRect t1) -> Ptr (TQPixmap t2) -> Ptr (TQRect t3) -> IO ()

instance QqdrawPixmap ((QRectF t1, QPixmap t2, QRectF t3)) where
 qdrawPixmap x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QPainter_drawPixmap6 cobj_x0 cobj_x1 cobj_x2 cobj_x3

foreign import ccall "qtc_QPainter_drawPixmap6" qtc_QPainter_drawPixmap6 :: Ptr (TQPainter a) -> Ptr (TQRectF t1) -> Ptr (TQPixmap t2) -> Ptr (TQRectF t3) -> IO ()

instance QdrawPixmap ((Rect, QPixmap t2)) where
 drawPixmap x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QPainter_drawPixmap_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h  cobj_x2

foreign import ccall "qtc_QPainter_drawPixmap_qth" qtc_QPainter_drawPixmap_qth :: Ptr (TQPainter a) -> CInt -> CInt -> CInt -> CInt -> Ptr (TQPixmap t2) -> IO ()

instance QdrawPixmap ((Rect, QPixmap t2, Rect)) where
 drawPixmap x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    withObjectPtr x2 $ \cobj_x2 ->
    withCRect x3 $ \crect_x3_x crect_x3_y  crect_x3_w crect_x3_h -> 
    qtc_QPainter_drawPixmap5_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h  cobj_x2 crect_x3_x crect_x3_y crect_x3_w crect_x3_h 

foreign import ccall "qtc_QPainter_drawPixmap5_qth" qtc_QPainter_drawPixmap5_qth :: Ptr (TQPainter a) -> CInt -> CInt -> CInt -> CInt -> Ptr (TQPixmap t2) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QdrawPixmap ((RectF, QPixmap t2, RectF)) where
 drawPixmap x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRectF x1 $ \crectf_x1_x crectf_x1_y  crectf_x1_w crectf_x1_h -> 
    withObjectPtr x2 $ \cobj_x2 ->
    withCRectF x3 $ \crectf_x3_x crectf_x3_y  crectf_x3_w crectf_x3_h -> 
    qtc_QPainter_drawPixmap6_qth cobj_x0 crectf_x1_x crectf_x1_y crectf_x1_w crectf_x1_h  cobj_x2 crectf_x3_x crectf_x3_y crectf_x3_w crectf_x3_h 

foreign import ccall "qtc_QPainter_drawPixmap6_qth" qtc_QPainter_drawPixmap6_qth :: Ptr (TQPainter a) -> CDouble -> CDouble -> CDouble -> CDouble -> Ptr (TQPixmap t2) -> CDouble -> CDouble -> CDouble -> CDouble -> IO ()

class QdrawPoint x1 where
 drawPoint :: QPainter a -> x1 -> IO ()

class QqdrawPoint x1 where
 qdrawPoint :: QPainter a -> x1 -> IO ()

instance QdrawPoint ((Int, Int)) where
 drawPoint x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPainter_drawPoint2 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QPainter_drawPoint2" qtc_QPainter_drawPoint2 :: Ptr (TQPainter a) -> CInt -> CInt -> IO ()

instance QdrawPoint ((Point)) where
 drawPoint x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QPainter_drawPoint_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

foreign import ccall "qtc_QPainter_drawPoint_qth" qtc_QPainter_drawPoint_qth :: Ptr (TQPainter a) -> CInt -> CInt -> IO ()

instance QdrawPoint ((PointF)) where
 drawPoint x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPointF x1 $ \cpointf_x1_x cpointf_x1_y -> 
    qtc_QPainter_drawPoint1_qth cobj_x0 cpointf_x1_x cpointf_x1_y 

foreign import ccall "qtc_QPainter_drawPoint1_qth" qtc_QPainter_drawPoint1_qth :: Ptr (TQPainter a) -> CDouble -> CDouble -> IO ()

instance QqdrawPoint ((QPoint t1)) where
 qdrawPoint x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPainter_drawPoint cobj_x0 cobj_x1

foreign import ccall "qtc_QPainter_drawPoint" qtc_QPainter_drawPoint :: Ptr (TQPainter a) -> Ptr (TQPoint t1) -> IO ()

instance QqdrawPoint ((QPointF t1)) where
 qdrawPoint x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPainter_drawPoint1 cobj_x0 cobj_x1

foreign import ccall "qtc_QPainter_drawPoint1" qtc_QPainter_drawPoint1 :: Ptr (TQPainter a) -> Ptr (TQPointF t1) -> IO ()

class QdrawPoints x1 where
 drawPoints :: QPainter a -> x1 -> IO ()

instance QdrawPoints ((QPoint t1, Int)) where
 drawPoints x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPainter_drawPoints3 cobj_x0 cobj_x1 (toCInt x2)

foreign import ccall "qtc_QPainter_drawPoints3" qtc_QPainter_drawPoints3 :: Ptr (TQPainter a) -> Ptr (TQPoint t1) -> CInt -> IO ()

instance QdrawPoints ((QPointF t1, Int)) where
 drawPoints x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPainter_drawPoints2 cobj_x0 cobj_x1 (toCInt x2)

foreign import ccall "qtc_QPainter_drawPoints2" qtc_QPainter_drawPoints2 :: Ptr (TQPainter a) -> Ptr (TQPointF t1) -> CInt -> IO ()

instance QdrawPoints ((QPolygon t1)) where
 drawPoints x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPainter_drawPoints1 cobj_x0 cobj_x1

foreign import ccall "qtc_QPainter_drawPoints1" qtc_QPainter_drawPoints1 :: Ptr (TQPainter a) -> Ptr (TQPolygon t1) -> IO ()

instance QdrawPoints ((QPolygonF t1)) where
 drawPoints x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPainter_drawPoints cobj_x0 cobj_x1

foreign import ccall "qtc_QPainter_drawPoints" qtc_QPainter_drawPoints :: Ptr (TQPainter a) -> Ptr (TQPolygonF t1) -> IO ()

class QdrawPolygon x1 where
 drawPolygon :: QPainter a -> x1 -> IO ()

instance QdrawPolygon ((QPoint t1, Int)) where
 drawPolygon x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPainter_drawPolygon4 cobj_x0 cobj_x1 (toCInt x2)

foreign import ccall "qtc_QPainter_drawPolygon4" qtc_QPainter_drawPolygon4 :: Ptr (TQPainter a) -> Ptr (TQPoint t1) -> CInt -> IO ()

instance QdrawPolygon ((QPoint t1, Int, FillRule)) where
 drawPolygon x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPainter_drawPolygon7 cobj_x0 cobj_x1 (toCInt x2) (toCLong $ qEnum_toInt x3)

foreign import ccall "qtc_QPainter_drawPolygon7" qtc_QPainter_drawPolygon7 :: Ptr (TQPainter a) -> Ptr (TQPoint t1) -> CInt -> CLong -> IO ()

instance QdrawPolygon ((QPointF t1, Int)) where
 drawPolygon x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPainter_drawPolygon2 cobj_x0 cobj_x1 (toCInt x2)

foreign import ccall "qtc_QPainter_drawPolygon2" qtc_QPainter_drawPolygon2 :: Ptr (TQPainter a) -> Ptr (TQPointF t1) -> CInt -> IO ()

instance QdrawPolygon ((QPointF t1, Int, FillRule)) where
 drawPolygon x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPainter_drawPolygon6 cobj_x0 cobj_x1 (toCInt x2) (toCLong $ qEnum_toInt x3)

foreign import ccall "qtc_QPainter_drawPolygon6" qtc_QPainter_drawPolygon6 :: Ptr (TQPainter a) -> Ptr (TQPointF t1) -> CInt -> CLong -> IO ()

instance QdrawPolygon ((QPolygon t1)) where
 drawPolygon x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPainter_drawPolygon1 cobj_x0 cobj_x1

foreign import ccall "qtc_QPainter_drawPolygon1" qtc_QPainter_drawPolygon1 :: Ptr (TQPainter a) -> Ptr (TQPolygon t1) -> IO ()

instance QdrawPolygon ((QPolygon t1, FillRule)) where
 drawPolygon x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPainter_drawPolygon3 cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QPainter_drawPolygon3" qtc_QPainter_drawPolygon3 :: Ptr (TQPainter a) -> Ptr (TQPolygon t1) -> CLong -> IO ()

instance QdrawPolygon ((QPolygonF t1)) where
 drawPolygon x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPainter_drawPolygon cobj_x0 cobj_x1

foreign import ccall "qtc_QPainter_drawPolygon" qtc_QPainter_drawPolygon :: Ptr (TQPainter a) -> Ptr (TQPolygonF t1) -> IO ()

instance QdrawPolygon ((QPolygonF t1, FillRule)) where
 drawPolygon x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPainter_drawPolygon5 cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QPainter_drawPolygon5" qtc_QPainter_drawPolygon5 :: Ptr (TQPainter a) -> Ptr (TQPolygonF t1) -> CLong -> IO ()

class QdrawPolyline x1 where
 drawPolyline :: QPainter a -> x1 -> IO ()

instance QdrawPolyline ((QPoint t1, Int)) where
 drawPolyline x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPainter_drawPolyline3 cobj_x0 cobj_x1 (toCInt x2)

foreign import ccall "qtc_QPainter_drawPolyline3" qtc_QPainter_drawPolyline3 :: Ptr (TQPainter a) -> Ptr (TQPoint t1) -> CInt -> IO ()

instance QdrawPolyline ((QPointF t1, Int)) where
 drawPolyline x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPainter_drawPolyline2 cobj_x0 cobj_x1 (toCInt x2)

foreign import ccall "qtc_QPainter_drawPolyline2" qtc_QPainter_drawPolyline2 :: Ptr (TQPainter a) -> Ptr (TQPointF t1) -> CInt -> IO ()

instance QdrawPolyline ((QPolygon t1)) where
 drawPolyline x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPainter_drawPolyline1 cobj_x0 cobj_x1

foreign import ccall "qtc_QPainter_drawPolyline1" qtc_QPainter_drawPolyline1 :: Ptr (TQPainter a) -> Ptr (TQPolygon t1) -> IO ()

instance QdrawPolyline ((QPolygonF t1)) where
 drawPolyline x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPainter_drawPolyline cobj_x0 cobj_x1

foreign import ccall "qtc_QPainter_drawPolyline" qtc_QPainter_drawPolyline :: Ptr (TQPainter a) -> Ptr (TQPolygonF t1) -> IO ()

class QdrawRect x1 where
 drawRect :: QPainter a -> x1 -> IO ()

class QqdrawRect x1 where
 qdrawRect :: QPainter a -> x1 -> IO ()

instance QdrawRect ((Int, Int, Int, Int)) where
 drawRect x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPainter_drawRect2 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QPainter_drawRect2" qtc_QPainter_drawRect2 :: Ptr (TQPainter a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QqdrawRect ((QRect t1)) where
 qdrawRect x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPainter_drawRect cobj_x0 cobj_x1

foreign import ccall "qtc_QPainter_drawRect" qtc_QPainter_drawRect :: Ptr (TQPainter a) -> Ptr (TQRect t1) -> IO ()

instance QqdrawRect ((QRectF t1)) where
 qdrawRect x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPainter_drawRect1 cobj_x0 cobj_x1

foreign import ccall "qtc_QPainter_drawRect1" qtc_QPainter_drawRect1 :: Ptr (TQPainter a) -> Ptr (TQRectF t1) -> IO ()

instance QdrawRect ((Rect)) where
 drawRect x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QPainter_drawRect_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

foreign import ccall "qtc_QPainter_drawRect_qth" qtc_QPainter_drawRect_qth :: Ptr (TQPainter a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QdrawRect ((RectF)) where
 drawRect x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRectF x1 $ \crectf_x1_x crectf_x1_y  crectf_x1_w crectf_x1_h -> 
    qtc_QPainter_drawRect1_qth cobj_x0 crectf_x1_x crectf_x1_y crectf_x1_w crectf_x1_h 

foreign import ccall "qtc_QPainter_drawRect1_qth" qtc_QPainter_drawRect1_qth :: Ptr (TQPainter a) -> CDouble -> CDouble -> CDouble -> CDouble -> IO ()

class QdrawRects x1 where
 drawRects :: QPainter a -> x1 -> IO ()

instance QdrawRects ((QRect t1, Int)) where
 drawRects x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPainter_drawRects1 cobj_x0 cobj_x1 (toCInt x2)

foreign import ccall "qtc_QPainter_drawRects1" qtc_QPainter_drawRects1 :: Ptr (TQPainter a) -> Ptr (TQRect t1) -> CInt -> IO ()

instance QdrawRects ((QRectF t1, Int)) where
 drawRects x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPainter_drawRects cobj_x0 cobj_x1 (toCInt x2)

foreign import ccall "qtc_QPainter_drawRects" qtc_QPainter_drawRects :: Ptr (TQPainter a) -> Ptr (TQRectF t1) -> CInt -> IO ()

class QdrawRoundRect x1 where
 drawRoundRect :: QPainter a -> x1 -> IO ()

class QqdrawRoundRect x1 where
 qdrawRoundRect :: QPainter a -> x1 -> IO ()

instance QdrawRoundRect ((Int, Int, Int, Int)) where
 drawRoundRect x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPainter_drawRoundRect6 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QPainter_drawRoundRect6" qtc_QPainter_drawRoundRect6 :: Ptr (TQPainter a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QdrawRoundRect ((Int, Int, Int, Int, Int)) where
 drawRoundRect x0 (x1, x2, x3, x4, x5)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPainter_drawRoundRect7 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4) (toCInt x5)

foreign import ccall "qtc_QPainter_drawRoundRect7" qtc_QPainter_drawRoundRect7 :: Ptr (TQPainter a) -> CInt -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QdrawRoundRect ((Int, Int, Int, Int, Int, Int)) where
 drawRoundRect x0 (x1, x2, x3, x4, x5, x6)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPainter_drawRoundRect8 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4) (toCInt x5) (toCInt x6)

foreign import ccall "qtc_QPainter_drawRoundRect8" qtc_QPainter_drawRoundRect8 :: Ptr (TQPainter a) -> CInt -> CInt -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QqdrawRoundRect ((QRect t1)) where
 qdrawRoundRect x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPainter_drawRoundRect cobj_x0 cobj_x1

foreign import ccall "qtc_QPainter_drawRoundRect" qtc_QPainter_drawRoundRect :: Ptr (TQPainter a) -> Ptr (TQRect t1) -> IO ()

instance QqdrawRoundRect ((QRect t1, Int)) where
 qdrawRoundRect x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPainter_drawRoundRect2 cobj_x0 cobj_x1 (toCInt x2)

foreign import ccall "qtc_QPainter_drawRoundRect2" qtc_QPainter_drawRoundRect2 :: Ptr (TQPainter a) -> Ptr (TQRect t1) -> CInt -> IO ()

instance QqdrawRoundRect ((QRect t1, Int, Int)) where
 qdrawRoundRect x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPainter_drawRoundRect4 cobj_x0 cobj_x1 (toCInt x2) (toCInt x3)

foreign import ccall "qtc_QPainter_drawRoundRect4" qtc_QPainter_drawRoundRect4 :: Ptr (TQPainter a) -> Ptr (TQRect t1) -> CInt -> CInt -> IO ()

instance QqdrawRoundRect ((QRectF t1)) where
 qdrawRoundRect x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPainter_drawRoundRect1 cobj_x0 cobj_x1

foreign import ccall "qtc_QPainter_drawRoundRect1" qtc_QPainter_drawRoundRect1 :: Ptr (TQPainter a) -> Ptr (TQRectF t1) -> IO ()

instance QqdrawRoundRect ((QRectF t1, Int)) where
 qdrawRoundRect x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPainter_drawRoundRect3 cobj_x0 cobj_x1 (toCInt x2)

foreign import ccall "qtc_QPainter_drawRoundRect3" qtc_QPainter_drawRoundRect3 :: Ptr (TQPainter a) -> Ptr (TQRectF t1) -> CInt -> IO ()

instance QqdrawRoundRect ((QRectF t1, Int, Int)) where
 qdrawRoundRect x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPainter_drawRoundRect5 cobj_x0 cobj_x1 (toCInt x2) (toCInt x3)

foreign import ccall "qtc_QPainter_drawRoundRect5" qtc_QPainter_drawRoundRect5 :: Ptr (TQPainter a) -> Ptr (TQRectF t1) -> CInt -> CInt -> IO ()

instance QdrawRoundRect ((Rect)) where
 drawRoundRect x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QPainter_drawRoundRect_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

foreign import ccall "qtc_QPainter_drawRoundRect_qth" qtc_QPainter_drawRoundRect_qth :: Ptr (TQPainter a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QdrawRoundRect ((Rect, Int)) where
 drawRoundRect x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QPainter_drawRoundRect2_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h  (toCInt x2)

foreign import ccall "qtc_QPainter_drawRoundRect2_qth" qtc_QPainter_drawRoundRect2_qth :: Ptr (TQPainter a) -> CInt -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QdrawRoundRect ((Rect, Int, Int)) where
 drawRoundRect x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QPainter_drawRoundRect4_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h  (toCInt x2) (toCInt x3)

foreign import ccall "qtc_QPainter_drawRoundRect4_qth" qtc_QPainter_drawRoundRect4_qth :: Ptr (TQPainter a) -> CInt -> CInt -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QdrawRoundRect ((RectF)) where
 drawRoundRect x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRectF x1 $ \crectf_x1_x crectf_x1_y  crectf_x1_w crectf_x1_h -> 
    qtc_QPainter_drawRoundRect1_qth cobj_x0 crectf_x1_x crectf_x1_y crectf_x1_w crectf_x1_h 

foreign import ccall "qtc_QPainter_drawRoundRect1_qth" qtc_QPainter_drawRoundRect1_qth :: Ptr (TQPainter a) -> CDouble -> CDouble -> CDouble -> CDouble -> IO ()

instance QdrawRoundRect ((RectF, Int)) where
 drawRoundRect x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRectF x1 $ \crectf_x1_x crectf_x1_y  crectf_x1_w crectf_x1_h -> 
    qtc_QPainter_drawRoundRect3_qth cobj_x0 crectf_x1_x crectf_x1_y crectf_x1_w crectf_x1_h  (toCInt x2)

foreign import ccall "qtc_QPainter_drawRoundRect3_qth" qtc_QPainter_drawRoundRect3_qth :: Ptr (TQPainter a) -> CDouble -> CDouble -> CDouble -> CDouble -> CInt -> IO ()

instance QdrawRoundRect ((RectF, Int, Int)) where
 drawRoundRect x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRectF x1 $ \crectf_x1_x crectf_x1_y  crectf_x1_w crectf_x1_h -> 
    qtc_QPainter_drawRoundRect5_qth cobj_x0 crectf_x1_x crectf_x1_y crectf_x1_w crectf_x1_h  (toCInt x2) (toCInt x3)

foreign import ccall "qtc_QPainter_drawRoundRect5_qth" qtc_QPainter_drawRoundRect5_qth :: Ptr (TQPainter a) -> CDouble -> CDouble -> CDouble -> CDouble -> CInt -> CInt -> IO ()

class QdrawText x1 where
 drawText :: QPainter a -> x1 -> IO ()

class QqdrawText x1 where
 qdrawText :: QPainter a -> x1 -> IO ()

instance QdrawText ((Int, Int, Int, Int, Int, String)) where
 drawText x0 (x1, x2, x3, x4, x5, x6)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x6 $ \cstr_x6 ->
    qtc_QPainter_drawText9 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4) (toCInt x5) cstr_x6

foreign import ccall "qtc_QPainter_drawText9" qtc_QPainter_drawText9 :: Ptr (TQPainter a) -> CInt -> CInt -> CInt -> CInt -> CInt -> CWString -> IO ()

instance QdrawText ((Int, Int, Int, Int, Int, String, QRect t7)) where
 drawText x0 (x1, x2, x3, x4, x5, x6, x7)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x6 $ \cstr_x6 ->
    withObjectPtr x7 $ \cobj_x7 ->
    qtc_QPainter_drawText10 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4) (toCInt x5) cstr_x6 cobj_x7

foreign import ccall "qtc_QPainter_drawText10" qtc_QPainter_drawText10 :: Ptr (TQPainter a) -> CInt -> CInt -> CInt -> CInt -> CInt -> CWString -> Ptr (TQRect t7) -> IO ()

instance QdrawText ((Int, Int, String)) where
 drawText x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x3 $ \cstr_x3 ->
    qtc_QPainter_drawText3 cobj_x0 (toCInt x1) (toCInt x2) cstr_x3

foreign import ccall "qtc_QPainter_drawText3" qtc_QPainter_drawText3 :: Ptr (TQPainter a) -> CInt -> CInt -> CWString -> IO ()

instance QdrawText ((Point, String)) where
 drawText x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    withCWString x2 $ \cstr_x2 ->
    qtc_QPainter_drawText_qth cobj_x0 cpoint_x1_x cpoint_x1_y  cstr_x2

foreign import ccall "qtc_QPainter_drawText_qth" qtc_QPainter_drawText_qth :: Ptr (TQPainter a) -> CInt -> CInt -> CWString -> IO ()

instance QdrawText ((PointF, String)) where
 drawText x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPointF x1 $ \cpointf_x1_x cpointf_x1_y -> 
    withCWString x2 $ \cstr_x2 ->
    qtc_QPainter_drawText1_qth cobj_x0 cpointf_x1_x cpointf_x1_y  cstr_x2

foreign import ccall "qtc_QPainter_drawText1_qth" qtc_QPainter_drawText1_qth :: Ptr (TQPainter a) -> CDouble -> CDouble -> CWString -> IO ()

instance QqdrawText ((QPoint t1, String)) where
 qdrawText x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QPainter_drawText cobj_x0 cobj_x1 cstr_x2

foreign import ccall "qtc_QPainter_drawText" qtc_QPainter_drawText :: Ptr (TQPainter a) -> Ptr (TQPoint t1) -> CWString -> IO ()

instance QqdrawText ((QPointF t1, String)) where
 qdrawText x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QPainter_drawText1 cobj_x0 cobj_x1 cstr_x2

foreign import ccall "qtc_QPainter_drawText1" qtc_QPainter_drawText1 :: Ptr (TQPainter a) -> Ptr (TQPointF t1) -> CWString -> IO ()

instance QqdrawText ((QRect t1, Int, String)) where
 qdrawText x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCWString x3 $ \cstr_x3 ->
    qtc_QPainter_drawText6 cobj_x0 cobj_x1 (toCInt x2) cstr_x3

foreign import ccall "qtc_QPainter_drawText6" qtc_QPainter_drawText6 :: Ptr (TQPainter a) -> Ptr (TQRect t1) -> CInt -> CWString -> IO ()

instance QqdrawText ((QRect t1, Int, String, QRect t4)) where
 qdrawText x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCWString x3 $ \cstr_x3 ->
    withObjectPtr x4 $ \cobj_x4 ->
    qtc_QPainter_drawText7 cobj_x0 cobj_x1 (toCInt x2) cstr_x3 cobj_x4

foreign import ccall "qtc_QPainter_drawText7" qtc_QPainter_drawText7 :: Ptr (TQPainter a) -> Ptr (TQRect t1) -> CInt -> CWString -> Ptr (TQRect t4) -> IO ()

instance QqdrawText ((QRectF t1, Int, String)) where
 qdrawText x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCWString x3 $ \cstr_x3 ->
    qtc_QPainter_drawText4 cobj_x0 cobj_x1 (toCInt x2) cstr_x3

foreign import ccall "qtc_QPainter_drawText4" qtc_QPainter_drawText4 :: Ptr (TQPainter a) -> Ptr (TQRectF t1) -> CInt -> CWString -> IO ()

instance QqdrawText ((QRectF t1, Int, String, QRectF t4)) where
 qdrawText x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCWString x3 $ \cstr_x3 ->
    withObjectPtr x4 $ \cobj_x4 ->
    qtc_QPainter_drawText8 cobj_x0 cobj_x1 (toCInt x2) cstr_x3 cobj_x4

foreign import ccall "qtc_QPainter_drawText8" qtc_QPainter_drawText8 :: Ptr (TQPainter a) -> Ptr (TQRectF t1) -> CInt -> CWString -> Ptr (TQRectF t4) -> IO ()

instance QqdrawText ((QRectF t1, String)) where
 qdrawText x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QPainter_drawText2 cobj_x0 cobj_x1 cstr_x2

foreign import ccall "qtc_QPainter_drawText2" qtc_QPainter_drawText2 :: Ptr (TQPainter a) -> Ptr (TQRectF t1) -> CWString -> IO ()

instance QqdrawText ((QRectF t1, String, QTextOption t3)) where
 qdrawText x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCWString x2 $ \cstr_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QPainter_drawText5 cobj_x0 cobj_x1 cstr_x2 cobj_x3

foreign import ccall "qtc_QPainter_drawText5" qtc_QPainter_drawText5 :: Ptr (TQPainter a) -> Ptr (TQRectF t1) -> CWString -> Ptr (TQTextOption t3) -> IO ()

instance QdrawText ((Rect, Int, String)) where
 drawText x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    withCWString x3 $ \cstr_x3 ->
    qtc_QPainter_drawText6_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h  (toCInt x2) cstr_x3

foreign import ccall "qtc_QPainter_drawText6_qth" qtc_QPainter_drawText6_qth :: Ptr (TQPainter a) -> CInt -> CInt -> CInt -> CInt -> CInt -> CWString -> IO ()

instance QdrawText ((Rect, Int, String, QRect t4)) where
 drawText x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    withCWString x3 $ \cstr_x3 ->
    withObjectPtr x4 $ \cobj_x4 ->
    qtc_QPainter_drawText7_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h  (toCInt x2) cstr_x3 cobj_x4

foreign import ccall "qtc_QPainter_drawText7_qth" qtc_QPainter_drawText7_qth :: Ptr (TQPainter a) -> CInt -> CInt -> CInt -> CInt -> CInt -> CWString -> Ptr (TQRect t4) -> IO ()

instance QdrawText ((RectF, Int, String)) where
 drawText x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRectF x1 $ \crectf_x1_x crectf_x1_y  crectf_x1_w crectf_x1_h -> 
    withCWString x3 $ \cstr_x3 ->
    qtc_QPainter_drawText4_qth cobj_x0 crectf_x1_x crectf_x1_y crectf_x1_w crectf_x1_h  (toCInt x2) cstr_x3

foreign import ccall "qtc_QPainter_drawText4_qth" qtc_QPainter_drawText4_qth :: Ptr (TQPainter a) -> CDouble -> CDouble -> CDouble -> CDouble -> CInt -> CWString -> IO ()

instance QdrawText ((RectF, Int, String, QRectF t4)) where
 drawText x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRectF x1 $ \crectf_x1_x crectf_x1_y  crectf_x1_w crectf_x1_h -> 
    withCWString x3 $ \cstr_x3 ->
    withObjectPtr x4 $ \cobj_x4 ->
    qtc_QPainter_drawText8_qth cobj_x0 crectf_x1_x crectf_x1_y crectf_x1_w crectf_x1_h  (toCInt x2) cstr_x3 cobj_x4

foreign import ccall "qtc_QPainter_drawText8_qth" qtc_QPainter_drawText8_qth :: Ptr (TQPainter a) -> CDouble -> CDouble -> CDouble -> CDouble -> CInt -> CWString -> Ptr (TQRectF t4) -> IO ()

instance QdrawText ((RectF, String)) where
 drawText x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRectF x1 $ \crectf_x1_x crectf_x1_y  crectf_x1_w crectf_x1_h -> 
    withCWString x2 $ \cstr_x2 ->
    qtc_QPainter_drawText2_qth cobj_x0 crectf_x1_x crectf_x1_y crectf_x1_w crectf_x1_h  cstr_x2

foreign import ccall "qtc_QPainter_drawText2_qth" qtc_QPainter_drawText2_qth :: Ptr (TQPainter a) -> CDouble -> CDouble -> CDouble -> CDouble -> CWString -> IO ()

instance QdrawText ((RectF, String, QTextOption t3)) where
 drawText x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRectF x1 $ \crectf_x1_x crectf_x1_y  crectf_x1_w crectf_x1_h -> 
    withCWString x2 $ \cstr_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QPainter_drawText5_qth cobj_x0 crectf_x1_x crectf_x1_y crectf_x1_w crectf_x1_h  cstr_x2 cobj_x3

foreign import ccall "qtc_QPainter_drawText5_qth" qtc_QPainter_drawText5_qth :: Ptr (TQPainter a) -> CDouble -> CDouble -> CDouble -> CDouble -> CWString -> Ptr (TQTextOption t3) -> IO ()

class QdrawTiledPixmap x1 where
 drawTiledPixmap :: QPainter a -> x1 -> IO ()

class QqdrawTiledPixmap x1 where
 qdrawTiledPixmap :: QPainter a -> x1 -> IO ()

instance QdrawTiledPixmap ((Int, Int, Int, Int, QPixmap t5)) where
 drawTiledPixmap x0 (x1, x2, x3, x4, x5)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x5 $ \cobj_x5 ->
    qtc_QPainter_drawTiledPixmap4 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4) cobj_x5

foreign import ccall "qtc_QPainter_drawTiledPixmap4" qtc_QPainter_drawTiledPixmap4 :: Ptr (TQPainter a) -> CInt -> CInt -> CInt -> CInt -> Ptr (TQPixmap t5) -> IO ()

instance QdrawTiledPixmap ((Int, Int, Int, Int, QPixmap t5, Int)) where
 drawTiledPixmap x0 (x1, x2, x3, x4, x5, x6)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x5 $ \cobj_x5 ->
    qtc_QPainter_drawTiledPixmap5 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4) cobj_x5 (toCInt x6)

foreign import ccall "qtc_QPainter_drawTiledPixmap5" qtc_QPainter_drawTiledPixmap5 :: Ptr (TQPainter a) -> CInt -> CInt -> CInt -> CInt -> Ptr (TQPixmap t5) -> CInt -> IO ()

instance QdrawTiledPixmap ((Int, Int, Int, Int, QPixmap t5, Int, Int)) where
 drawTiledPixmap x0 (x1, x2, x3, x4, x5, x6, x7)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x5 $ \cobj_x5 ->
    qtc_QPainter_drawTiledPixmap6 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4) cobj_x5 (toCInt x6) (toCInt x7)

foreign import ccall "qtc_QPainter_drawTiledPixmap6" qtc_QPainter_drawTiledPixmap6 :: Ptr (TQPainter a) -> CInt -> CInt -> CInt -> CInt -> Ptr (TQPixmap t5) -> CInt -> CInt -> IO ()

instance QqdrawTiledPixmap ((QRect t1, QPixmap t2)) where
 qdrawTiledPixmap x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QPainter_drawTiledPixmap1 cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QPainter_drawTiledPixmap1" qtc_QPainter_drawTiledPixmap1 :: Ptr (TQPainter a) -> Ptr (TQRect t1) -> Ptr (TQPixmap t2) -> IO ()

instance QqdrawTiledPixmap ((QRect t1, QPixmap t2, QPoint t3)) where
 qdrawTiledPixmap x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QPainter_drawTiledPixmap2 cobj_x0 cobj_x1 cobj_x2 cobj_x3

foreign import ccall "qtc_QPainter_drawTiledPixmap2" qtc_QPainter_drawTiledPixmap2 :: Ptr (TQPainter a) -> Ptr (TQRect t1) -> Ptr (TQPixmap t2) -> Ptr (TQPoint t3) -> IO ()

instance QqdrawTiledPixmap ((QRectF t1, QPixmap t2)) where
 qdrawTiledPixmap x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QPainter_drawTiledPixmap cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QPainter_drawTiledPixmap" qtc_QPainter_drawTiledPixmap :: Ptr (TQPainter a) -> Ptr (TQRectF t1) -> Ptr (TQPixmap t2) -> IO ()

instance QqdrawTiledPixmap ((QRectF t1, QPixmap t2, QPointF t3)) where
 qdrawTiledPixmap x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QPainter_drawTiledPixmap3 cobj_x0 cobj_x1 cobj_x2 cobj_x3

foreign import ccall "qtc_QPainter_drawTiledPixmap3" qtc_QPainter_drawTiledPixmap3 :: Ptr (TQPainter a) -> Ptr (TQRectF t1) -> Ptr (TQPixmap t2) -> Ptr (TQPointF t3) -> IO ()

instance QdrawTiledPixmap ((Rect, QPixmap t2)) where
 drawTiledPixmap x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QPainter_drawTiledPixmap1_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h  cobj_x2

foreign import ccall "qtc_QPainter_drawTiledPixmap1_qth" qtc_QPainter_drawTiledPixmap1_qth :: Ptr (TQPainter a) -> CInt -> CInt -> CInt -> CInt -> Ptr (TQPixmap t2) -> IO ()

instance QdrawTiledPixmap ((Rect, QPixmap t2, Point)) where
 drawTiledPixmap x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    withObjectPtr x2 $ \cobj_x2 ->
    withCPoint x3 $ \cpoint_x3_x cpoint_x3_y -> 
    qtc_QPainter_drawTiledPixmap2_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h  cobj_x2 cpoint_x3_x cpoint_x3_y 

foreign import ccall "qtc_QPainter_drawTiledPixmap2_qth" qtc_QPainter_drawTiledPixmap2_qth :: Ptr (TQPainter a) -> CInt -> CInt -> CInt -> CInt -> Ptr (TQPixmap t2) -> CInt -> CInt -> IO ()

instance QdrawTiledPixmap ((RectF, QPixmap t2)) where
 drawTiledPixmap x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRectF x1 $ \crectf_x1_x crectf_x1_y  crectf_x1_w crectf_x1_h -> 
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QPainter_drawTiledPixmap_qth cobj_x0 crectf_x1_x crectf_x1_y crectf_x1_w crectf_x1_h  cobj_x2

foreign import ccall "qtc_QPainter_drawTiledPixmap_qth" qtc_QPainter_drawTiledPixmap_qth :: Ptr (TQPainter a) -> CDouble -> CDouble -> CDouble -> CDouble -> Ptr (TQPixmap t2) -> IO ()

instance QdrawTiledPixmap ((RectF, QPixmap t2, PointF)) where
 drawTiledPixmap x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRectF x1 $ \crectf_x1_x crectf_x1_y  crectf_x1_w crectf_x1_h -> 
    withObjectPtr x2 $ \cobj_x2 ->
    withCPointF x3 $ \cpointf_x3_x cpointf_x3_y -> 
    qtc_QPainter_drawTiledPixmap3_qth cobj_x0 crectf_x1_x crectf_x1_y crectf_x1_w crectf_x1_h  cobj_x2 cpointf_x3_x cpointf_x3_y 

foreign import ccall "qtc_QPainter_drawTiledPixmap3_qth" qtc_QPainter_drawTiledPixmap3_qth :: Ptr (TQPainter a) -> CDouble -> CDouble -> CDouble -> CDouble -> Ptr (TQPixmap t2) -> CDouble -> CDouble -> IO ()

instance Qend (QPainter a) (()) (IO (Bool)) where
 end x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPainter_end cobj_x0

foreign import ccall "qtc_QPainter_end" qtc_QPainter_end :: Ptr (TQPainter a) -> IO CBool

class QeraseRect x1 where
 eraseRect :: QPainter a -> x1 -> IO ()

class QqeraseRect x1 where
 qeraseRect :: QPainter a -> x1 -> IO ()

instance QeraseRect ((Int, Int, Int, Int)) where
 eraseRect x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPainter_eraseRect2 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QPainter_eraseRect2" qtc_QPainter_eraseRect2 :: Ptr (TQPainter a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QqeraseRect ((QRect t1)) where
 qeraseRect x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPainter_eraseRect1 cobj_x0 cobj_x1

foreign import ccall "qtc_QPainter_eraseRect1" qtc_QPainter_eraseRect1 :: Ptr (TQPainter a) -> Ptr (TQRect t1) -> IO ()

instance QqeraseRect ((QRectF t1)) where
 qeraseRect x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPainter_eraseRect cobj_x0 cobj_x1

foreign import ccall "qtc_QPainter_eraseRect" qtc_QPainter_eraseRect :: Ptr (TQPainter a) -> Ptr (TQRectF t1) -> IO ()

instance QeraseRect ((Rect)) where
 eraseRect x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QPainter_eraseRect1_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

foreign import ccall "qtc_QPainter_eraseRect1_qth" qtc_QPainter_eraseRect1_qth :: Ptr (TQPainter a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QeraseRect ((RectF)) where
 eraseRect x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRectF x1 $ \crectf_x1_x crectf_x1_y  crectf_x1_w crectf_x1_h -> 
    qtc_QPainter_eraseRect_qth cobj_x0 crectf_x1_x crectf_x1_y crectf_x1_w crectf_x1_h 

foreign import ccall "qtc_QPainter_eraseRect_qth" qtc_QPainter_eraseRect_qth :: Ptr (TQPainter a) -> CDouble -> CDouble -> CDouble -> CDouble -> IO ()

fillPath :: QPainter a -> ((QPainterPath t1, QBrush t2)) -> IO ()
fillPath x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QPainter_fillPath cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QPainter_fillPath" qtc_QPainter_fillPath :: Ptr (TQPainter a) -> Ptr (TQPainterPath t1) -> Ptr (TQBrush t2) -> IO ()

class QfillRect x1 where
 fillRect :: QPainter a -> x1 -> IO ()

class QqfillRect x1 where
 qfillRect :: QPainter a -> x1 -> IO ()

instance QfillRect ((Int, Int, Int, Int, QBrush t5)) where
 fillRect x0 (x1, x2, x3, x4, x5)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x5 $ \cobj_x5 ->
    qtc_QPainter_fillRect2 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4) cobj_x5

foreign import ccall "qtc_QPainter_fillRect2" qtc_QPainter_fillRect2 :: Ptr (TQPainter a) -> CInt -> CInt -> CInt -> CInt -> Ptr (TQBrush t5) -> IO ()

instance QqfillRect ((QRect t1, QBrush t2)) where
 qfillRect x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QPainter_fillRect cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QPainter_fillRect" qtc_QPainter_fillRect :: Ptr (TQPainter a) -> Ptr (TQRect t1) -> Ptr (TQBrush t2) -> IO ()

instance QqfillRect ((QRectF t1, QBrush t2)) where
 qfillRect x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QPainter_fillRect1 cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QPainter_fillRect1" qtc_QPainter_fillRect1 :: Ptr (TQPainter a) -> Ptr (TQRectF t1) -> Ptr (TQBrush t2) -> IO ()

instance QfillRect ((Rect, QBrush t2)) where
 fillRect x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QPainter_fillRect_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h  cobj_x2

foreign import ccall "qtc_QPainter_fillRect_qth" qtc_QPainter_fillRect_qth :: Ptr (TQPainter a) -> CInt -> CInt -> CInt -> CInt -> Ptr (TQBrush t2) -> IO ()

instance QfillRect ((RectF, QBrush t2)) where
 fillRect x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRectF x1 $ \crectf_x1_x crectf_x1_y  crectf_x1_w crectf_x1_h -> 
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QPainter_fillRect1_qth cobj_x0 crectf_x1_x crectf_x1_y crectf_x1_w crectf_x1_h  cobj_x2

foreign import ccall "qtc_QPainter_fillRect1_qth" qtc_QPainter_fillRect1_qth :: Ptr (TQPainter a) -> CDouble -> CDouble -> CDouble -> CDouble -> Ptr (TQBrush t2) -> IO ()

instance Qfont (QPainter a) (()) where
 font x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPainter_font cobj_x0

foreign import ccall "qtc_QPainter_font" qtc_QPainter_font :: Ptr (TQPainter a) -> IO (Ptr (TQFont ()))

instance QfontInfo (QPainter a) (()) where
 fontInfo x0 ()
  = withQFontInfoResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPainter_fontInfo cobj_x0

foreign import ccall "qtc_QPainter_fontInfo" qtc_QPainter_fontInfo :: Ptr (TQPainter a) -> IO (Ptr (TQFontInfo ()))

instance QfontMetrics (QPainter a) (()) where
 fontMetrics x0 ()
  = withQFontMetricsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPainter_fontMetrics cobj_x0

foreign import ccall "qtc_QPainter_fontMetrics" qtc_QPainter_fontMetrics :: Ptr (TQPainter a) -> IO (Ptr (TQFontMetrics ()))

instance QhasClipping (QPainter a) (()) where
 hasClipping x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPainter_hasClipping cobj_x0

foreign import ccall "qtc_QPainter_hasClipping" qtc_QPainter_hasClipping :: Ptr (TQPainter a) -> IO CBool

instance QinitFrom (QPainter a) ((QWidget t1)) where
 initFrom x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPainter_initFrom cobj_x0 cobj_x1

foreign import ccall "qtc_QPainter_initFrom" qtc_QPainter_initFrom :: Ptr (TQPainter a) -> Ptr (TQWidget t1) -> IO ()

instance QisActive (QPainter a) (()) where
 isActive x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPainter_isActive cobj_x0

foreign import ccall "qtc_QPainter_isActive" qtc_QPainter_isActive :: Ptr (TQPainter a) -> IO CBool

instance QlayoutDirection (QPainter a) (()) where
 layoutDirection x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPainter_layoutDirection cobj_x0

foreign import ccall "qtc_QPainter_layoutDirection" qtc_QPainter_layoutDirection :: Ptr (TQPainter a) -> IO CLong

instance Qmatrix (QPainter a) (()) where
 matrix x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPainter_matrix cobj_x0

foreign import ccall "qtc_QPainter_matrix" qtc_QPainter_matrix :: Ptr (TQPainter a) -> IO (Ptr (TQMatrix ()))

matrixEnabled :: QPainter a -> (()) -> IO (Bool)
matrixEnabled x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPainter_matrixEnabled cobj_x0

foreign import ccall "qtc_QPainter_matrixEnabled" qtc_QPainter_matrixEnabled :: Ptr (TQPainter a) -> IO CBool

opacity :: QPainter a -> (()) -> IO (Double)
opacity x0 ()
  = withDoubleResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPainter_opacity cobj_x0

foreign import ccall "qtc_QPainter_opacity" qtc_QPainter_opacity :: Ptr (TQPainter a) -> IO CDouble

instance QpaintEngine (QPainter a) (()) where
 paintEngine x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPainter_paintEngine cobj_x0

foreign import ccall "qtc_QPainter_paintEngine" qtc_QPainter_paintEngine :: Ptr (TQPainter a) -> IO (Ptr (TQPaintEngine ()))

instance Qpen (QPainter a) (()) where
 pen x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPainter_pen cobj_x0

foreign import ccall "qtc_QPainter_pen" qtc_QPainter_pen :: Ptr (TQPainter a) -> IO (Ptr (TQPen ()))

class QqPainterRedirected x1 where
 qPainterRedirected :: x1 -> IO (QPaintDevice ())

instance QqPainterRedirected ((QPaintDevice t1)) where
 qPainterRedirected (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPainter_redirected cobj_x1

foreign import ccall "qtc_QPainter_redirected" qtc_QPainter_redirected :: Ptr (TQPaintDevice t1) -> IO (Ptr (TQPaintDevice ()))

instance QqPainterRedirected ((QPaintDevice t1, QPoint t2)) where
 qPainterRedirected (x1, x2)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QPainter_redirected1 cobj_x1 cobj_x2

foreign import ccall "qtc_QPainter_redirected1" qtc_QPainter_redirected1 :: Ptr (TQPaintDevice t1) -> Ptr (TQPoint t2) -> IO (Ptr (TQPaintDevice ()))

instance QqPainterRedirected ((QWidget t1)) where
 qPainterRedirected (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPainter_redirected_widget cobj_x1

foreign import ccall "qtc_QPainter_redirected_widget" qtc_QPainter_redirected_widget :: Ptr (TQWidget t1) -> IO (Ptr (TQPaintDevice ()))

instance QqPainterRedirected ((QWidget t1, QPoint t2)) where
 qPainterRedirected (x1, x2)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QPainter_redirected1_widget cobj_x1 cobj_x2

foreign import ccall "qtc_QPainter_redirected1_widget" qtc_QPainter_redirected1_widget :: Ptr (TQWidget t1) -> Ptr (TQPoint t2) -> IO (Ptr (TQPaintDevice ()))

instance QrenderHints (QPainter a) (()) where
 renderHints x0 ()
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPainter_renderHints cobj_x0

foreign import ccall "qtc_QPainter_renderHints" qtc_QPainter_renderHints :: Ptr (TQPainter a) -> IO CLong

instance QresetMatrix (QPainter a) (()) where
 resetMatrix x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPainter_resetMatrix cobj_x0

foreign import ccall "qtc_QPainter_resetMatrix" qtc_QPainter_resetMatrix :: Ptr (TQPainter a) -> IO ()

instance QresetTransform (QPainter a) (()) where
 resetTransform x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPainter_resetTransform cobj_x0

foreign import ccall "qtc_QPainter_resetTransform" qtc_QPainter_resetTransform :: Ptr (TQPainter a) -> IO ()

restore :: QPainter a -> (()) -> IO ()
restore x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPainter_restore cobj_x0

foreign import ccall "qtc_QPainter_restore" qtc_QPainter_restore :: Ptr (TQPainter a) -> IO ()

class QqPainterRestoreRedirected x1 where
 qPainterRestoreRedirected :: x1 -> IO ()

instance QqPainterRestoreRedirected ((QPaintDevice t1)) where
 qPainterRestoreRedirected (x1)
  = withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPainter_restoreRedirected cobj_x1

foreign import ccall "qtc_QPainter_restoreRedirected" qtc_QPainter_restoreRedirected :: Ptr (TQPaintDevice t1) -> IO ()

instance QqPainterRestoreRedirected ((QWidget t1)) where
 qPainterRestoreRedirected (x1)
  = withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPainter_restoreRedirected_widget cobj_x1

foreign import ccall "qtc_QPainter_restoreRedirected_widget" qtc_QPainter_restoreRedirected_widget :: Ptr (TQWidget t1) -> IO ()

instance Qrotate (QPainter a) ((Double)) where
 rotate x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPainter_rotate cobj_x0 (toCDouble x1)

foreign import ccall "qtc_QPainter_rotate" qtc_QPainter_rotate :: Ptr (TQPainter a) -> CDouble -> IO ()

instance Qsave (QPainter a) (()) (IO ()) where
 save x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPainter_save cobj_x0

foreign import ccall "qtc_QPainter_save" qtc_QPainter_save :: Ptr (TQPainter a) -> IO ()

instance Qqscale (QPainter a) ((Double, Double)) where
 qscale x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPainter_scale cobj_x0 (toCDouble x1) (toCDouble x2)

foreign import ccall "qtc_QPainter_scale" qtc_QPainter_scale :: Ptr (TQPainter a) -> CDouble -> CDouble -> IO ()

instance QsetBackground (QPainter a) ((QBrush t1)) where
 setBackground x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPainter_setBackground cobj_x0 cobj_x1

foreign import ccall "qtc_QPainter_setBackground" qtc_QPainter_setBackground :: Ptr (TQPainter a) -> Ptr (TQBrush t1) -> IO ()

setBackgroundMode :: QPainter a -> ((BGMode)) -> IO ()
setBackgroundMode x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPainter_setBackgroundMode cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QPainter_setBackgroundMode" qtc_QPainter_setBackgroundMode :: Ptr (TQPainter a) -> CLong -> IO ()

instance QsetBrush (QPainter a) ((BrushStyle)) where
 setBrush x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPainter_setBrush cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QPainter_setBrush" qtc_QPainter_setBrush :: Ptr (TQPainter a) -> CLong -> IO ()

instance QsetBrush (QPainter a) ((QBrush t1)) where
 setBrush x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPainter_setBrush1 cobj_x0 cobj_x1

foreign import ccall "qtc_QPainter_setBrush1" qtc_QPainter_setBrush1 :: Ptr (TQPainter a) -> Ptr (TQBrush t1) -> IO ()

class QsetBrushOrigin x1 where
 setBrushOrigin :: QPainter a -> x1 -> IO ()

class QqsetBrushOrigin x1 where
 qsetBrushOrigin :: QPainter a -> x1 -> IO ()

instance QsetBrushOrigin ((Int, Int)) where
 setBrushOrigin x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPainter_setBrushOrigin2 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QPainter_setBrushOrigin2" qtc_QPainter_setBrushOrigin2 :: Ptr (TQPainter a) -> CInt -> CInt -> IO ()

instance QsetBrushOrigin ((Point)) where
 setBrushOrigin x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QPainter_setBrushOrigin1_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

foreign import ccall "qtc_QPainter_setBrushOrigin1_qth" qtc_QPainter_setBrushOrigin1_qth :: Ptr (TQPainter a) -> CInt -> CInt -> IO ()

instance QsetBrushOrigin ((PointF)) where
 setBrushOrigin x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPointF x1 $ \cpointf_x1_x cpointf_x1_y -> 
    qtc_QPainter_setBrushOrigin_qth cobj_x0 cpointf_x1_x cpointf_x1_y 

foreign import ccall "qtc_QPainter_setBrushOrigin_qth" qtc_QPainter_setBrushOrigin_qth :: Ptr (TQPainter a) -> CDouble -> CDouble -> IO ()

instance QqsetBrushOrigin ((QPoint t1)) where
 qsetBrushOrigin x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPainter_setBrushOrigin1 cobj_x0 cobj_x1

foreign import ccall "qtc_QPainter_setBrushOrigin1" qtc_QPainter_setBrushOrigin1 :: Ptr (TQPainter a) -> Ptr (TQPoint t1) -> IO ()

instance QqsetBrushOrigin ((QPointF t1)) where
 qsetBrushOrigin x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPainter_setBrushOrigin cobj_x0 cobj_x1

foreign import ccall "qtc_QPainter_setBrushOrigin" qtc_QPainter_setBrushOrigin :: Ptr (TQPainter a) -> Ptr (TQPointF t1) -> IO ()

class QsetClipPath x1 where
 setClipPath :: QPainter a -> x1 -> IO ()

instance QsetClipPath ((QPainterPath t1)) where
 setClipPath x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPainter_setClipPath cobj_x0 cobj_x1

foreign import ccall "qtc_QPainter_setClipPath" qtc_QPainter_setClipPath :: Ptr (TQPainter a) -> Ptr (TQPainterPath t1) -> IO ()

instance QsetClipPath ((QPainterPath t1, ClipOperation)) where
 setClipPath x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPainter_setClipPath1 cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QPainter_setClipPath1" qtc_QPainter_setClipPath1 :: Ptr (TQPainter a) -> Ptr (TQPainterPath t1) -> CLong -> IO ()

class QsetClipRect x1 where
 setClipRect :: QPainter a -> x1 -> IO ()

class QqsetClipRect x1 where
 qsetClipRect :: QPainter a -> x1 -> IO ()

instance QsetClipRect ((Int, Int, Int, Int)) where
 setClipRect x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPainter_setClipRect4 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QPainter_setClipRect4" qtc_QPainter_setClipRect4 :: Ptr (TQPainter a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QsetClipRect ((Int, Int, Int, Int, ClipOperation)) where
 setClipRect x0 (x1, x2, x3, x4, x5)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPainter_setClipRect5 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4) (toCLong $ qEnum_toInt x5)

foreign import ccall "qtc_QPainter_setClipRect5" qtc_QPainter_setClipRect5 :: Ptr (TQPainter a) -> CInt -> CInt -> CInt -> CInt -> CLong -> IO ()

instance QqsetClipRect ((QRect t1)) where
 qsetClipRect x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPainter_setClipRect cobj_x0 cobj_x1

foreign import ccall "qtc_QPainter_setClipRect" qtc_QPainter_setClipRect :: Ptr (TQPainter a) -> Ptr (TQRect t1) -> IO ()

instance QqsetClipRect ((QRect t1, ClipOperation)) where
 qsetClipRect x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPainter_setClipRect2 cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QPainter_setClipRect2" qtc_QPainter_setClipRect2 :: Ptr (TQPainter a) -> Ptr (TQRect t1) -> CLong -> IO ()

instance QqsetClipRect ((QRectF t1)) where
 qsetClipRect x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPainter_setClipRect1 cobj_x0 cobj_x1

foreign import ccall "qtc_QPainter_setClipRect1" qtc_QPainter_setClipRect1 :: Ptr (TQPainter a) -> Ptr (TQRectF t1) -> IO ()

instance QqsetClipRect ((QRectF t1, ClipOperation)) where
 qsetClipRect x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPainter_setClipRect3 cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QPainter_setClipRect3" qtc_QPainter_setClipRect3 :: Ptr (TQPainter a) -> Ptr (TQRectF t1) -> CLong -> IO ()

instance QsetClipRect ((Rect)) where
 setClipRect x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QPainter_setClipRect_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

foreign import ccall "qtc_QPainter_setClipRect_qth" qtc_QPainter_setClipRect_qth :: Ptr (TQPainter a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QsetClipRect ((Rect, ClipOperation)) where
 setClipRect x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QPainter_setClipRect2_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h  (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QPainter_setClipRect2_qth" qtc_QPainter_setClipRect2_qth :: Ptr (TQPainter a) -> CInt -> CInt -> CInt -> CInt -> CLong -> IO ()

instance QsetClipRect ((RectF)) where
 setClipRect x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRectF x1 $ \crectf_x1_x crectf_x1_y  crectf_x1_w crectf_x1_h -> 
    qtc_QPainter_setClipRect1_qth cobj_x0 crectf_x1_x crectf_x1_y crectf_x1_w crectf_x1_h 

foreign import ccall "qtc_QPainter_setClipRect1_qth" qtc_QPainter_setClipRect1_qth :: Ptr (TQPainter a) -> CDouble -> CDouble -> CDouble -> CDouble -> IO ()

instance QsetClipRect ((RectF, ClipOperation)) where
 setClipRect x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRectF x1 $ \crectf_x1_x crectf_x1_y  crectf_x1_w crectf_x1_h -> 
    qtc_QPainter_setClipRect3_qth cobj_x0 crectf_x1_x crectf_x1_y crectf_x1_w crectf_x1_h  (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QPainter_setClipRect3_qth" qtc_QPainter_setClipRect3_qth :: Ptr (TQPainter a) -> CDouble -> CDouble -> CDouble -> CDouble -> CLong -> IO ()

class QsetClipRegion x1 where
 setClipRegion :: QPainter a -> x1 -> IO ()

instance QsetClipRegion ((QRegion t1)) where
 setClipRegion x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPainter_setClipRegion cobj_x0 cobj_x1

foreign import ccall "qtc_QPainter_setClipRegion" qtc_QPainter_setClipRegion :: Ptr (TQPainter a) -> Ptr (TQRegion t1) -> IO ()

instance QsetClipRegion ((QRegion t1, ClipOperation)) where
 setClipRegion x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPainter_setClipRegion1 cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QPainter_setClipRegion1" qtc_QPainter_setClipRegion1 :: Ptr (TQPainter a) -> Ptr (TQRegion t1) -> CLong -> IO ()

instance QsetClipping (QPainter a) ((Bool)) where
 setClipping x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPainter_setClipping cobj_x0 (toCBool x1)

foreign import ccall "qtc_QPainter_setClipping" qtc_QPainter_setClipping :: Ptr (TQPainter a) -> CBool -> IO ()

setCompositionMode :: QPainter a -> ((CompositionMode)) -> IO ()
setCompositionMode x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPainter_setCompositionMode cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QPainter_setCompositionMode" qtc_QPainter_setCompositionMode :: Ptr (TQPainter a) -> CLong -> IO ()

instance QsetFont (QPainter a) ((QFont t1)) where
 setFont x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPainter_setFont cobj_x0 cobj_x1

foreign import ccall "qtc_QPainter_setFont" qtc_QPainter_setFont :: Ptr (TQPainter a) -> Ptr (TQFont t1) -> IO ()

instance QsetLayoutDirection (QPainter a) ((LayoutDirection)) where
 setLayoutDirection x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPainter_setLayoutDirection cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QPainter_setLayoutDirection" qtc_QPainter_setLayoutDirection :: Ptr (TQPainter a) -> CLong -> IO ()

instance QsetMatrix (QPainter a) ((QMatrix t1)) where
 setMatrix x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPainter_setMatrix cobj_x0 cobj_x1

foreign import ccall "qtc_QPainter_setMatrix" qtc_QPainter_setMatrix :: Ptr (TQPainter a) -> Ptr (TQMatrix t1) -> IO ()

instance QsetMatrix (QPainter a) ((QMatrix t1, Bool)) where
 setMatrix x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPainter_setMatrix1 cobj_x0 cobj_x1 (toCBool x2)

foreign import ccall "qtc_QPainter_setMatrix1" qtc_QPainter_setMatrix1 :: Ptr (TQPainter a) -> Ptr (TQMatrix t1) -> CBool -> IO ()

setMatrixEnabled :: QPainter a -> ((Bool)) -> IO ()
setMatrixEnabled x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPainter_setMatrixEnabled cobj_x0 (toCBool x1)

foreign import ccall "qtc_QPainter_setMatrixEnabled" qtc_QPainter_setMatrixEnabled :: Ptr (TQPainter a) -> CBool -> IO ()

setOpacity :: QPainter a -> ((Double)) -> IO ()
setOpacity x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPainter_setOpacity cobj_x0 (toCDouble x1)

foreign import ccall "qtc_QPainter_setOpacity" qtc_QPainter_setOpacity :: Ptr (TQPainter a) -> CDouble -> IO ()

instance QsetPen (QPainter a) ((PenStyle)) where
 setPen x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPainter_setPen cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QPainter_setPen" qtc_QPainter_setPen :: Ptr (TQPainter a) -> CLong -> IO ()

instance QsetPen (QPainter a) ((QColor t1)) where
 setPen x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPainter_setPen1 cobj_x0 cobj_x1

foreign import ccall "qtc_QPainter_setPen1" qtc_QPainter_setPen1 :: Ptr (TQPainter a) -> Ptr (TQColor t1) -> IO ()

instance QsetPen (QPainter a) ((QPen t1)) where
 setPen x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPainter_setPen2 cobj_x0 cobj_x1

foreign import ccall "qtc_QPainter_setPen2" qtc_QPainter_setPen2 :: Ptr (TQPainter a) -> Ptr (TQPen t1) -> IO ()

class QqPainterSetRedirected x1 where
 qPainterSetRedirected :: x1 -> IO ()

class QqqPainterSetRedirected x1 where
 qqPainterSetRedirected :: x1 -> IO ()

instance QqPainterSetRedirected ((QPaintDevice t1, QPaintDevice t2)) where
 qPainterSetRedirected (x1, x2)
  = withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QPainter_setRedirected cobj_x1 cobj_x2

foreign import ccall "qtc_QPainter_setRedirected" qtc_QPainter_setRedirected :: Ptr (TQPaintDevice t1) -> Ptr (TQPaintDevice t2) -> IO ()

instance QqPainterSetRedirected ((QPaintDevice t1, QPaintDevice t2, Point)) where
 qPainterSetRedirected (x1, x2, x3)
  = withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withCPoint x3 $ \cpoint_x3_x cpoint_x3_y ->
    qtc_QPainter_setRedirected1_qth cobj_x1 cobj_x2 cpoint_x3_x cpoint_x3_y 

foreign import ccall "qtc_QPainter_setRedirected1_qth" qtc_QPainter_setRedirected1_qth :: Ptr (TQPaintDevice t1) -> Ptr (TQPaintDevice t2) -> CInt -> CInt -> IO ()

instance QqqPainterSetRedirected ((QPaintDevice t1, QPaintDevice t2, QPoint t3)) where
 qqPainterSetRedirected (x1, x2, x3)
  = withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QPainter_setRedirected1 cobj_x1 cobj_x2 cobj_x3

foreign import ccall "qtc_QPainter_setRedirected1" qtc_QPainter_setRedirected1 :: Ptr (TQPaintDevice t1) -> Ptr (TQPaintDevice t2) -> Ptr (TQPoint t3) -> IO ()

instance QqPainterSetRedirected ((QWidget t1, QWidget t2)) where
 qPainterSetRedirected (x1, x2)
  = withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QPainter_setRedirected_widget cobj_x1 cobj_x2

foreign import ccall "qtc_QPainter_setRedirected_widget" qtc_QPainter_setRedirected_widget :: Ptr (TQWidget t1) -> Ptr (TQWidget t2) -> IO ()

instance QqPainterSetRedirected ((QWidget t1, QWidget t2, Point)) where
 qPainterSetRedirected (x1, x2, x3)
  = withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withCPoint x3 $ \cpoint_x3_x cpoint_x3_y ->
    qtc_QPainter_setRedirected1_widget_qth cobj_x1 cobj_x2 cpoint_x3_x cpoint_x3_y 

foreign import ccall "qtc_QPainter_setRedirected1_widget_qth" qtc_QPainter_setRedirected1_widget_qth :: Ptr (TQWidget t1) -> Ptr (TQWidget t2) -> CInt -> CInt -> IO ()

instance QqqPainterSetRedirected ((QWidget t1, QWidget t2, QPoint t3)) where
 qqPainterSetRedirected (x1, x2, x3)
  = withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QPainter_setRedirected1_widget cobj_x1 cobj_x2 cobj_x3

foreign import ccall "qtc_QPainter_setRedirected1_widget" qtc_QPainter_setRedirected1_widget :: Ptr (TQWidget t1) -> Ptr (TQWidget t2) -> Ptr (TQPoint t3) -> IO ()

instance QsetRenderHint (QPainter a) ((RenderHint)) where
 setRenderHint x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPainter_setRenderHint cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QPainter_setRenderHint" qtc_QPainter_setRenderHint :: Ptr (TQPainter a) -> CLong -> IO ()

instance QsetRenderHint (QPainter a) ((RenderHint, Bool)) where
 setRenderHint x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPainter_setRenderHint1 cobj_x0 (toCLong $ qEnum_toInt x1) (toCBool x2)

foreign import ccall "qtc_QPainter_setRenderHint1" qtc_QPainter_setRenderHint1 :: Ptr (TQPainter a) -> CLong -> CBool -> IO ()

instance QsetRenderHints (QPainter a) ((RenderHints)) where
 setRenderHints x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPainter_setRenderHints cobj_x0 (toCLong $ qFlags_toInt x1)

foreign import ccall "qtc_QPainter_setRenderHints" qtc_QPainter_setRenderHints :: Ptr (TQPainter a) -> CLong -> IO ()

instance QsetRenderHints (QPainter a) ((RenderHints, Bool)) where
 setRenderHints x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPainter_setRenderHints1 cobj_x0 (toCLong $ qFlags_toInt x1) (toCBool x2)

foreign import ccall "qtc_QPainter_setRenderHints1" qtc_QPainter_setRenderHints1 :: Ptr (TQPainter a) -> CLong -> CBool -> IO ()

instance QsetTransform (QPainter a) ((QTransform t1)) where
 setTransform x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPainter_setTransform cobj_x0 cobj_x1

foreign import ccall "qtc_QPainter_setTransform" qtc_QPainter_setTransform :: Ptr (TQPainter a) -> Ptr (TQTransform t1) -> IO ()

instance QsetTransform (QPainter a) ((QTransform t1, Bool)) where
 setTransform x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPainter_setTransform1 cobj_x0 cobj_x1 (toCBool x2)

foreign import ccall "qtc_QPainter_setTransform1" qtc_QPainter_setTransform1 :: Ptr (TQPainter a) -> Ptr (TQTransform t1) -> CBool -> IO ()

setViewTransformEnabled :: QPainter a -> ((Bool)) -> IO ()
setViewTransformEnabled x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPainter_setViewTransformEnabled cobj_x0 (toCBool x1)

foreign import ccall "qtc_QPainter_setViewTransformEnabled" qtc_QPainter_setViewTransformEnabled :: Ptr (TQPainter a) -> CBool -> IO ()

instance QsetViewport (QPainter a) ((Int, Int, Int, Int)) where
 setViewport x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPainter_setViewport1 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QPainter_setViewport1" qtc_QPainter_setViewport1 :: Ptr (TQPainter a) -> CInt -> CInt -> CInt -> CInt -> IO ()

qsetViewport :: QPainter a -> ((QRect t1)) -> IO ()
qsetViewport x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPainter_setViewport cobj_x0 cobj_x1

foreign import ccall "qtc_QPainter_setViewport" qtc_QPainter_setViewport :: Ptr (TQPainter a) -> Ptr (TQRect t1) -> IO ()

instance QsetViewport (QPainter a) ((Rect)) where
 setViewport x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QPainter_setViewport_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

foreign import ccall "qtc_QPainter_setViewport_qth" qtc_QPainter_setViewport_qth :: Ptr (TQPainter a) -> CInt -> CInt -> CInt -> CInt -> IO ()

class QsetWindow x1 where
 setWindow :: QPainter a -> x1 -> IO ()

instance QsetWindow ((Int, Int, Int, Int)) where
 setWindow x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPainter_setWindow1 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QPainter_setWindow1" qtc_QPainter_setWindow1 :: Ptr (TQPainter a) -> CInt -> CInt -> CInt -> CInt -> IO ()

qsetWindow :: QPainter a -> ((QRect t1)) -> IO ()
qsetWindow x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPainter_setWindow cobj_x0 cobj_x1

foreign import ccall "qtc_QPainter_setWindow" qtc_QPainter_setWindow :: Ptr (TQPainter a) -> Ptr (TQRect t1) -> IO ()

instance QsetWindow ((Rect)) where
 setWindow x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QPainter_setWindow_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

foreign import ccall "qtc_QPainter_setWindow_qth" qtc_QPainter_setWindow_qth :: Ptr (TQPainter a) -> CInt -> CInt -> CInt -> CInt -> IO ()

class QsetWorldMatrix x1 where
 setWorldMatrix :: QPainter a -> x1 -> IO ()

instance QsetWorldMatrix ((QMatrix t1)) where
 setWorldMatrix x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPainter_setWorldMatrix cobj_x0 cobj_x1

foreign import ccall "qtc_QPainter_setWorldMatrix" qtc_QPainter_setWorldMatrix :: Ptr (TQPainter a) -> Ptr (TQMatrix t1) -> IO ()

instance QsetWorldMatrix ((QMatrix t1, Bool)) where
 setWorldMatrix x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPainter_setWorldMatrix1 cobj_x0 cobj_x1 (toCBool x2)

foreign import ccall "qtc_QPainter_setWorldMatrix1" qtc_QPainter_setWorldMatrix1 :: Ptr (TQPainter a) -> Ptr (TQMatrix t1) -> CBool -> IO ()

setWorldMatrixEnabled :: QPainter a -> ((Bool)) -> IO ()
setWorldMatrixEnabled x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPainter_setWorldMatrixEnabled cobj_x0 (toCBool x1)

foreign import ccall "qtc_QPainter_setWorldMatrixEnabled" qtc_QPainter_setWorldMatrixEnabled :: Ptr (TQPainter a) -> CBool -> IO ()

class QsetWorldTransform x1 where
 setWorldTransform :: QPainter a -> x1 -> IO ()

instance QsetWorldTransform ((QTransform t1)) where
 setWorldTransform x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPainter_setWorldTransform cobj_x0 cobj_x1

foreign import ccall "qtc_QPainter_setWorldTransform" qtc_QPainter_setWorldTransform :: Ptr (TQPainter a) -> Ptr (TQTransform t1) -> IO ()

instance QsetWorldTransform ((QTransform t1, Bool)) where
 setWorldTransform x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPainter_setWorldTransform1 cobj_x0 cobj_x1 (toCBool x2)

foreign import ccall "qtc_QPainter_setWorldTransform1" qtc_QPainter_setWorldTransform1 :: Ptr (TQPainter a) -> Ptr (TQTransform t1) -> CBool -> IO ()

instance Qshear (QPainter a) ((Double, Double)) where
 shear x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPainter_shear cobj_x0 (toCDouble x1) (toCDouble x2)

foreign import ccall "qtc_QPainter_shear" qtc_QPainter_shear :: Ptr (TQPainter a) -> CDouble -> CDouble -> IO ()

strokePath :: QPainter a -> ((QPainterPath t1, QPen t2)) -> IO ()
strokePath x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QPainter_strokePath cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QPainter_strokePath" qtc_QPainter_strokePath :: Ptr (TQPainter a) -> Ptr (TQPainterPath t1) -> Ptr (TQPen t2) -> IO ()

testRenderHint :: QPainter a -> ((RenderHint)) -> IO (Bool)
testRenderHint x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPainter_testRenderHint cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QPainter_testRenderHint" qtc_QPainter_testRenderHint :: Ptr (TQPainter a) -> CLong -> IO CBool

instance Qtransform (QPainter a) (()) where
 transform x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPainter_transform cobj_x0

foreign import ccall "qtc_QPainter_transform" qtc_QPainter_transform :: Ptr (TQPainter a) -> IO (Ptr (TQTransform ()))

instance Qqtranslate (QPainter a) ((Double, Double)) (IO ()) where
 qtranslate x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPainter_translate2 cobj_x0 (toCDouble x1) (toCDouble x2)

foreign import ccall "qtc_QPainter_translate2" qtc_QPainter_translate2 :: Ptr (TQPainter a) -> CDouble -> CDouble -> IO ()

instance Qqtranslate (QPainter a) ((Point)) (IO ()) where
 qtranslate x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QPainter_translate_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

foreign import ccall "qtc_QPainter_translate_qth" qtc_QPainter_translate_qth :: Ptr (TQPainter a) -> CInt -> CInt -> IO ()

instance Qqtranslate (QPainter a) ((PointF)) (IO ()) where
 qtranslate x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPointF x1 $ \cpointf_x1_x cpointf_x1_y -> 
    qtc_QPainter_translate1_qth cobj_x0 cpointf_x1_x cpointf_x1_y 

foreign import ccall "qtc_QPainter_translate1_qth" qtc_QPainter_translate1_qth :: Ptr (TQPainter a) -> CDouble -> CDouble -> IO ()

instance Qqqtranslate (QPainter a) ((QPoint t1)) where
 qqtranslate x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPainter_translate cobj_x0 cobj_x1

foreign import ccall "qtc_QPainter_translate" qtc_QPainter_translate :: Ptr (TQPainter a) -> Ptr (TQPoint t1) -> IO ()

instance Qqqtranslate (QPainter a) ((QPointF t1)) where
 qqtranslate x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPainter_translate1 cobj_x0 cobj_x1

foreign import ccall "qtc_QPainter_translate1" qtc_QPainter_translate1 :: Ptr (TQPainter a) -> Ptr (TQPointF t1) -> IO ()

viewTransformEnabled :: QPainter a -> (()) -> IO (Bool)
viewTransformEnabled x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPainter_viewTransformEnabled cobj_x0

foreign import ccall "qtc_QPainter_viewTransformEnabled" qtc_QPainter_viewTransformEnabled :: Ptr (TQPainter a) -> IO CBool

qviewport :: QPainter a -> (()) -> IO (QRect ())
qviewport x0 ()
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPainter_viewport cobj_x0

foreign import ccall "qtc_QPainter_viewport" qtc_QPainter_viewport :: Ptr (TQPainter a) -> IO (Ptr (TQRect ()))

instance Qviewport (QPainter a) (()) (IO (Rect)) where
 viewport x0 ()
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPainter_viewport_qth cobj_x0 crect_ret_x crect_ret_y crect_ret_w crect_ret_h

foreign import ccall "qtc_QPainter_viewport_qth" qtc_QPainter_viewport_qth :: Ptr (TQPainter a) -> Ptr CInt -> Ptr CInt -> Ptr CInt -> Ptr CInt -> IO ()

qwindow :: QPainter a -> (()) -> IO (QRect ())
qwindow x0 ()
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPainter_window cobj_x0

foreign import ccall "qtc_QPainter_window" qtc_QPainter_window :: Ptr (TQPainter a) -> IO (Ptr (TQRect ()))

instance Qwindow (QPainter a) (()) (IO (Rect)) where
 window x0 ()
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPainter_window_qth cobj_x0 crect_ret_x crect_ret_y crect_ret_w crect_ret_h

foreign import ccall "qtc_QPainter_window_qth" qtc_QPainter_window_qth :: Ptr (TQPainter a) -> Ptr CInt -> Ptr CInt -> Ptr CInt -> Ptr CInt -> IO ()

worldMatrix :: QPainter a -> (()) -> IO (QMatrix ())
worldMatrix x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPainter_worldMatrix cobj_x0

foreign import ccall "qtc_QPainter_worldMatrix" qtc_QPainter_worldMatrix :: Ptr (TQPainter a) -> IO (Ptr (TQMatrix ()))

worldMatrixEnabled :: QPainter a -> (()) -> IO (Bool)
worldMatrixEnabled x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPainter_worldMatrixEnabled cobj_x0

foreign import ccall "qtc_QPainter_worldMatrixEnabled" qtc_QPainter_worldMatrixEnabled :: Ptr (TQPainter a) -> IO CBool

worldTransform :: QPainter a -> (()) -> IO (QTransform ())
worldTransform x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPainter_worldTransform cobj_x0

foreign import ccall "qtc_QPainter_worldTransform" qtc_QPainter_worldTransform :: Ptr (TQPainter a) -> IO (Ptr (TQTransform ()))

qPainter_delete :: QPainter a -> IO ()
qPainter_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPainter_delete cobj_x0

foreign import ccall "qtc_QPainter_delete" qtc_QPainter_delete :: Ptr (TQPainter a) -> IO ()

