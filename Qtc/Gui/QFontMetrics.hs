{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QFontMetrics.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:15
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QFontMetrics (
  QqFontMetrics(..)
  ,QqFontMetrics_nf(..)
  ,charWidth
  ,qFontMetrics_delete
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

class QqFontMetrics x1 where
  qFontMetrics :: x1 -> IO (QFontMetrics ())

instance QqFontMetrics ((QFont t1)) where
 qFontMetrics (x1)
  = withQFontMetricsResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFontMetrics cobj_x1

foreign import ccall "qtc_QFontMetrics" qtc_QFontMetrics :: Ptr (TQFont t1) -> IO (Ptr (TQFontMetrics ()))

instance QqFontMetrics ((QFontMetrics t1)) where
 qFontMetrics (x1)
  = withQFontMetricsResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFontMetrics1 cobj_x1

foreign import ccall "qtc_QFontMetrics1" qtc_QFontMetrics1 :: Ptr (TQFontMetrics t1) -> IO (Ptr (TQFontMetrics ()))

instance QqFontMetrics ((QFont t1, QPaintDevice t2)) where
 qFontMetrics (x1, x2)
  = withQFontMetricsResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QFontMetrics2 cobj_x1 cobj_x2

foreign import ccall "qtc_QFontMetrics2" qtc_QFontMetrics2 :: Ptr (TQFont t1) -> Ptr (TQPaintDevice t2) -> IO (Ptr (TQFontMetrics ()))

instance QqFontMetrics ((QFont t1, QWidget t2)) where
 qFontMetrics (x1, x2)
  = withQFontMetricsResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QFontMetrics2_widget cobj_x1 cobj_x2

foreign import ccall "qtc_QFontMetrics2_widget" qtc_QFontMetrics2_widget :: Ptr (TQFont t1) -> Ptr (TQWidget t2) -> IO (Ptr (TQFontMetrics ()))

class QqFontMetrics_nf x1 where
  qFontMetrics_nf :: x1 -> IO (QFontMetrics ())

instance QqFontMetrics_nf ((QFont t1)) where
 qFontMetrics_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFontMetrics cobj_x1

instance QqFontMetrics_nf ((QFontMetrics t1)) where
 qFontMetrics_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFontMetrics1 cobj_x1

instance QqFontMetrics_nf ((QFont t1, QPaintDevice t2)) where
 qFontMetrics_nf (x1, x2)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QFontMetrics2 cobj_x1 cobj_x2

instance QqFontMetrics_nf ((QFont t1, QWidget t2)) where
 qFontMetrics_nf (x1, x2)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QFontMetrics2_widget cobj_x1 cobj_x2

instance Qascent (QFontMetrics a) (()) (IO (Int)) where
 ascent x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFontMetrics_ascent cobj_x0

foreign import ccall "qtc_QFontMetrics_ascent" qtc_QFontMetrics_ascent :: Ptr (TQFontMetrics a) -> IO CInt

instance QaverageCharWidth (QFontMetrics a) (()) (IO (Int)) where
 averageCharWidth x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFontMetrics_averageCharWidth cobj_x0

foreign import ccall "qtc_QFontMetrics_averageCharWidth" qtc_QFontMetrics_averageCharWidth :: Ptr (TQFontMetrics a) -> IO CInt

instance QqqboundingRect (QFontMetrics a) ((Int, Int, Int, Int, Int, String)) (IO (QRect ())) where
 qqboundingRect x0 (x1, x2, x3, x4, x5, x6)
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x6 $ \cstr_x6 ->
    qtc_QFontMetrics_boundingRect4 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4) (toCInt x5) cstr_x6

foreign import ccall "qtc_QFontMetrics_boundingRect4" qtc_QFontMetrics_boundingRect4 :: Ptr (TQFontMetrics a) -> CInt -> CInt -> CInt -> CInt -> CInt -> CWString -> IO (Ptr (TQRect ()))

instance QqqboundingRect (QFontMetrics a) ((Int, Int, Int, Int, Int, String, Int)) (IO (QRect ())) where
 qqboundingRect x0 (x1, x2, x3, x4, x5, x6, x7)
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x6 $ \cstr_x6 ->
    qtc_QFontMetrics_boundingRect5 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4) (toCInt x5) cstr_x6 (toCInt x7)

foreign import ccall "qtc_QFontMetrics_boundingRect5" qtc_QFontMetrics_boundingRect5 :: Ptr (TQFontMetrics a) -> CInt -> CInt -> CInt -> CInt -> CInt -> CWString -> CInt -> IO (Ptr (TQRect ()))

instance QqqboundingRect (QFontMetrics a) ((QChar t1)) (IO (QRect ())) where
 qqboundingRect x0 (x1)
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFontMetrics_boundingRect cobj_x0 cobj_x1

foreign import ccall "qtc_QFontMetrics_boundingRect" qtc_QFontMetrics_boundingRect :: Ptr (TQFontMetrics a) -> Ptr (TQChar t1) -> IO (Ptr (TQRect ()))

instance QqqboundingRect (QFontMetrics a) ((QRect t1, Int, String)) (IO (QRect ())) where
 qqboundingRect x0 (x1, x2, x3)
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCWString x3 $ \cstr_x3 ->
    qtc_QFontMetrics_boundingRect2 cobj_x0 cobj_x1 (toCInt x2) cstr_x3

foreign import ccall "qtc_QFontMetrics_boundingRect2" qtc_QFontMetrics_boundingRect2 :: Ptr (TQFontMetrics a) -> Ptr (TQRect t1) -> CInt -> CWString -> IO (Ptr (TQRect ()))

instance QqqboundingRect (QFontMetrics a) ((QRect t1, Int, String, Int)) (IO (QRect ())) where
 qqboundingRect x0 (x1, x2, x3, x4)
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCWString x3 $ \cstr_x3 ->
    qtc_QFontMetrics_boundingRect3 cobj_x0 cobj_x1 (toCInt x2) cstr_x3 (toCInt x4)

foreign import ccall "qtc_QFontMetrics_boundingRect3" qtc_QFontMetrics_boundingRect3 :: Ptr (TQFontMetrics a) -> Ptr (TQRect t1) -> CInt -> CWString -> CInt -> IO (Ptr (TQRect ()))

instance QqqboundingRect (QFontMetrics a) ((String)) (IO (QRect ())) where
 qqboundingRect x0 (x1)
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QFontMetrics_boundingRect1 cobj_x0 cstr_x1

foreign import ccall "qtc_QFontMetrics_boundingRect1" qtc_QFontMetrics_boundingRect1 :: Ptr (TQFontMetrics a) -> CWString -> IO (Ptr (TQRect ()))

instance QqboundingRect (QFontMetrics a) ((Int, Int, Int, Int, Int, String)) (IO (Rect)) where
 qboundingRect x0 (x1, x2, x3, x4, x5, x6)
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x6 $ \cstr_x6 ->
    qtc_QFontMetrics_boundingRect4_qth cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4) (toCInt x5) cstr_x6 crect_ret_x crect_ret_y crect_ret_w crect_ret_h

foreign import ccall "qtc_QFontMetrics_boundingRect4_qth" qtc_QFontMetrics_boundingRect4_qth :: Ptr (TQFontMetrics a) -> CInt -> CInt -> CInt -> CInt -> CInt -> CWString -> Ptr CInt -> Ptr CInt -> Ptr CInt -> Ptr CInt -> IO ()

instance QqboundingRect (QFontMetrics a) ((Int, Int, Int, Int, Int, String, Int)) (IO (Rect)) where
 qboundingRect x0 (x1, x2, x3, x4, x5, x6, x7)
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x6 $ \cstr_x6 ->
    qtc_QFontMetrics_boundingRect5_qth cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4) (toCInt x5) cstr_x6 (toCInt x7) crect_ret_x crect_ret_y crect_ret_w crect_ret_h

foreign import ccall "qtc_QFontMetrics_boundingRect5_qth" qtc_QFontMetrics_boundingRect5_qth :: Ptr (TQFontMetrics a) -> CInt -> CInt -> CInt -> CInt -> CInt -> CWString -> CInt -> Ptr CInt -> Ptr CInt -> Ptr CInt -> Ptr CInt -> IO ()

instance QqboundingRect (QFontMetrics a) ((QChar t1)) (IO (Rect)) where
 qboundingRect x0 (x1)
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFontMetrics_boundingRect_qth cobj_x0 cobj_x1 crect_ret_x crect_ret_y crect_ret_w crect_ret_h

foreign import ccall "qtc_QFontMetrics_boundingRect_qth" qtc_QFontMetrics_boundingRect_qth :: Ptr (TQFontMetrics a) -> Ptr (TQChar t1) -> Ptr CInt -> Ptr CInt -> Ptr CInt -> Ptr CInt -> IO ()

instance QqboundingRect (QFontMetrics a) ((Rect, Int, String)) (IO (Rect)) where
 qboundingRect x0 (x1, x2, x3)
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    withCWString x3 $ \cstr_x3 ->
    qtc_QFontMetrics_boundingRect2_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h  (toCInt x2) cstr_x3 crect_ret_x crect_ret_y crect_ret_w crect_ret_h

foreign import ccall "qtc_QFontMetrics_boundingRect2_qth" qtc_QFontMetrics_boundingRect2_qth :: Ptr (TQFontMetrics a) -> CInt -> CInt -> CInt -> CInt -> CInt -> CWString -> Ptr CInt -> Ptr CInt -> Ptr CInt -> Ptr CInt -> IO ()

instance QqboundingRect (QFontMetrics a) ((Rect, Int, String, Int)) (IO (Rect)) where
 qboundingRect x0 (x1, x2, x3, x4)
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    withCWString x3 $ \cstr_x3 ->
    qtc_QFontMetrics_boundingRect3_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h  (toCInt x2) cstr_x3 (toCInt x4) crect_ret_x crect_ret_y crect_ret_w crect_ret_h

foreign import ccall "qtc_QFontMetrics_boundingRect3_qth" qtc_QFontMetrics_boundingRect3_qth :: Ptr (TQFontMetrics a) -> CInt -> CInt -> CInt -> CInt -> CInt -> CWString -> CInt -> Ptr CInt -> Ptr CInt -> Ptr CInt -> Ptr CInt -> IO ()

instance QqboundingRect (QFontMetrics a) ((String)) (IO (Rect)) where
 qboundingRect x0 (x1)
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QFontMetrics_boundingRect1_qth cobj_x0 cstr_x1 crect_ret_x crect_ret_y crect_ret_w crect_ret_h

foreign import ccall "qtc_QFontMetrics_boundingRect1_qth" qtc_QFontMetrics_boundingRect1_qth :: Ptr (TQFontMetrics a) -> CWString -> Ptr CInt -> Ptr CInt -> Ptr CInt -> Ptr CInt -> IO ()

charWidth :: QFontMetrics a -> ((String, Int)) -> IO (Int)
charWidth x0 (x1, x2)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QFontMetrics_charWidth cobj_x0 cstr_x1 (toCInt x2)

foreign import ccall "qtc_QFontMetrics_charWidth" qtc_QFontMetrics_charWidth :: Ptr (TQFontMetrics a) -> CWString -> CInt -> IO CInt

instance Qdescent (QFontMetrics a) (()) (IO (Int)) where
 descent x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFontMetrics_descent cobj_x0

foreign import ccall "qtc_QFontMetrics_descent" qtc_QFontMetrics_descent :: Ptr (TQFontMetrics a) -> IO CInt

instance QelidedText (QFontMetrics a) ((String, TextElideMode, Int)) where
 elidedText x0 (x1, x2, x3)
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QFontMetrics_elidedText cobj_x0 cstr_x1 (toCLong $ qEnum_toInt x2) (toCInt x3)

foreign import ccall "qtc_QFontMetrics_elidedText" qtc_QFontMetrics_elidedText :: Ptr (TQFontMetrics a) -> CWString -> CLong -> CInt -> IO (Ptr (TQString ()))

instance QelidedText (QFontMetrics a) ((String, TextElideMode, Int, Int)) where
 elidedText x0 (x1, x2, x3, x4)
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QFontMetrics_elidedText1 cobj_x0 cstr_x1 (toCLong $ qEnum_toInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QFontMetrics_elidedText1" qtc_QFontMetrics_elidedText1 :: Ptr (TQFontMetrics a) -> CWString -> CLong -> CInt -> CInt -> IO (Ptr (TQString ()))

instance Qqheight (QFontMetrics a) (()) (IO (Int)) where
 qheight x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFontMetrics_height cobj_x0

foreign import ccall "qtc_QFontMetrics_height" qtc_QFontMetrics_height :: Ptr (TQFontMetrics a) -> IO CInt

instance QinFont (QFontMetrics a) ((QChar t1)) where
 inFont x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFontMetrics_inFont cobj_x0 cobj_x1

foreign import ccall "qtc_QFontMetrics_inFont" qtc_QFontMetrics_inFont :: Ptr (TQFontMetrics a) -> Ptr (TQChar t1) -> IO CBool

instance Qleading (QFontMetrics a) (()) (IO (Int)) where
 leading x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFontMetrics_leading cobj_x0

foreign import ccall "qtc_QFontMetrics_leading" qtc_QFontMetrics_leading :: Ptr (TQFontMetrics a) -> IO CInt

instance QleftBearing (QFontMetrics a) ((QChar t1)) (IO (Int)) where
 leftBearing x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFontMetrics_leftBearing cobj_x0 cobj_x1

foreign import ccall "qtc_QFontMetrics_leftBearing" qtc_QFontMetrics_leftBearing :: Ptr (TQFontMetrics a) -> Ptr (TQChar t1) -> IO CInt

instance QlineSpacing (QFontMetrics a) (()) (IO (Int)) where
 lineSpacing x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFontMetrics_lineSpacing cobj_x0

foreign import ccall "qtc_QFontMetrics_lineSpacing" qtc_QFontMetrics_lineSpacing :: Ptr (TQFontMetrics a) -> IO CInt

instance QlineWidth (QFontMetrics a) (()) (IO (Int)) where
 lineWidth x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFontMetrics_lineWidth cobj_x0

foreign import ccall "qtc_QFontMetrics_lineWidth" qtc_QFontMetrics_lineWidth :: Ptr (TQFontMetrics a) -> IO CInt

instance QmaxWidth (QFontMetrics a) (()) (IO (Int)) where
 maxWidth x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFontMetrics_maxWidth cobj_x0

foreign import ccall "qtc_QFontMetrics_maxWidth" qtc_QFontMetrics_maxWidth :: Ptr (TQFontMetrics a) -> IO CInt

instance QminLeftBearing (QFontMetrics a) (()) (IO (Int)) where
 minLeftBearing x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFontMetrics_minLeftBearing cobj_x0

foreign import ccall "qtc_QFontMetrics_minLeftBearing" qtc_QFontMetrics_minLeftBearing :: Ptr (TQFontMetrics a) -> IO CInt

instance QminRightBearing (QFontMetrics a) (()) (IO (Int)) where
 minRightBearing x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFontMetrics_minRightBearing cobj_x0

foreign import ccall "qtc_QFontMetrics_minRightBearing" qtc_QFontMetrics_minRightBearing :: Ptr (TQFontMetrics a) -> IO CInt

instance QoverlinePos (QFontMetrics a) (()) (IO (Int)) where
 overlinePos x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFontMetrics_overlinePos cobj_x0

foreign import ccall "qtc_QFontMetrics_overlinePos" qtc_QFontMetrics_overlinePos :: Ptr (TQFontMetrics a) -> IO CInt

instance QrightBearing (QFontMetrics a) ((QChar t1)) (IO (Int)) where
 rightBearing x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFontMetrics_rightBearing cobj_x0 cobj_x1

foreign import ccall "qtc_QFontMetrics_rightBearing" qtc_QFontMetrics_rightBearing :: Ptr (TQFontMetrics a) -> Ptr (TQChar t1) -> IO CInt

instance Qqqsize (QFontMetrics a) ((Int, String)) (IO (QSize ())) where
 qqsize x0 (x1, x2)
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QFontMetrics_size cobj_x0 (toCInt x1) cstr_x2

foreign import ccall "qtc_QFontMetrics_size" qtc_QFontMetrics_size :: Ptr (TQFontMetrics a) -> CInt -> CWString -> IO (Ptr (TQSize ()))

instance Qqqsize (QFontMetrics a) ((Int, String, Int)) (IO (QSize ())) where
 qqsize x0 (x1, x2, x3)
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QFontMetrics_size1 cobj_x0 (toCInt x1) cstr_x2 (toCInt x3)

foreign import ccall "qtc_QFontMetrics_size1" qtc_QFontMetrics_size1 :: Ptr (TQFontMetrics a) -> CInt -> CWString -> CInt -> IO (Ptr (TQSize ()))

instance Qqsize (QFontMetrics a) ((Int, String)) (IO (Size)) where
 qsize x0 (x1, x2)
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QFontMetrics_size_qth cobj_x0 (toCInt x1) cstr_x2 csize_ret_w csize_ret_h

foreign import ccall "qtc_QFontMetrics_size_qth" qtc_QFontMetrics_size_qth :: Ptr (TQFontMetrics a) -> CInt -> CWString -> Ptr CInt -> Ptr CInt -> IO ()

instance Qqsize (QFontMetrics a) ((Int, String, Int)) (IO (Size)) where
 qsize x0 (x1, x2, x3)
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QFontMetrics_size1_qth cobj_x0 (toCInt x1) cstr_x2 (toCInt x3) csize_ret_w csize_ret_h

foreign import ccall "qtc_QFontMetrics_size1_qth" qtc_QFontMetrics_size1_qth :: Ptr (TQFontMetrics a) -> CInt -> CWString -> CInt -> Ptr CInt -> Ptr CInt -> IO ()

instance QstrikeOutPos (QFontMetrics a) (()) (IO (Int)) where
 strikeOutPos x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFontMetrics_strikeOutPos cobj_x0

foreign import ccall "qtc_QFontMetrics_strikeOutPos" qtc_QFontMetrics_strikeOutPos :: Ptr (TQFontMetrics a) -> IO CInt

instance QqtightBoundingRect (QFontMetrics a) ((String)) (IO (QRect ())) where
 qtightBoundingRect x0 (x1)
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QFontMetrics_tightBoundingRect cobj_x0 cstr_x1

foreign import ccall "qtc_QFontMetrics_tightBoundingRect" qtc_QFontMetrics_tightBoundingRect :: Ptr (TQFontMetrics a) -> CWString -> IO (Ptr (TQRect ()))

instance QtightBoundingRect (QFontMetrics a) ((String)) (IO (Rect)) where
 tightBoundingRect x0 (x1)
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QFontMetrics_tightBoundingRect_qth cobj_x0 cstr_x1 crect_ret_x crect_ret_y crect_ret_w crect_ret_h

foreign import ccall "qtc_QFontMetrics_tightBoundingRect_qth" qtc_QFontMetrics_tightBoundingRect_qth :: Ptr (TQFontMetrics a) -> CWString -> Ptr CInt -> Ptr CInt -> Ptr CInt -> Ptr CInt -> IO ()

instance QunderlinePos (QFontMetrics a) (()) (IO (Int)) where
 underlinePos x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFontMetrics_underlinePos cobj_x0

foreign import ccall "qtc_QFontMetrics_underlinePos" qtc_QFontMetrics_underlinePos :: Ptr (TQFontMetrics a) -> IO CInt

instance Qqwidth (QFontMetrics a) ((QChar t1)) (IO (Int)) where
 qwidth x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFontMetrics_width cobj_x0 cobj_x1

foreign import ccall "qtc_QFontMetrics_width" qtc_QFontMetrics_width :: Ptr (TQFontMetrics a) -> Ptr (TQChar t1) -> IO CInt

instance Qqwidth (QFontMetrics a) ((String)) (IO (Int)) where
 qwidth x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QFontMetrics_width1 cobj_x0 cstr_x1

foreign import ccall "qtc_QFontMetrics_width1" qtc_QFontMetrics_width1 :: Ptr (TQFontMetrics a) -> CWString -> IO CInt

instance Qqwidth (QFontMetrics a) ((String, Int)) (IO (Int)) where
 qwidth x0 (x1, x2)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QFontMetrics_width2 cobj_x0 cstr_x1 (toCInt x2)

foreign import ccall "qtc_QFontMetrics_width2" qtc_QFontMetrics_width2 :: Ptr (TQFontMetrics a) -> CWString -> CInt -> IO CInt

instance QxHeight (QFontMetrics a) (()) (IO (Int)) where
 xHeight x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFontMetrics_xHeight cobj_x0

foreign import ccall "qtc_QFontMetrics_xHeight" qtc_QFontMetrics_xHeight :: Ptr (TQFontMetrics a) -> IO CInt

qFontMetrics_delete :: QFontMetrics a -> IO ()
qFontMetrics_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFontMetrics_delete cobj_x0

foreign import ccall "qtc_QFontMetrics_delete" qtc_QFontMetrics_delete :: Ptr (TQFontMetrics a) -> IO ()

