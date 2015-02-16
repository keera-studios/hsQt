{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QFontMetricsF.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:20
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QFontMetricsF (
  QqFontMetricsF(..)
  ,QqFontMetricsF_nf(..)
  ,qFontMetricsF_delete
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

class QqFontMetricsF x1 where
  qFontMetricsF :: x1 -> IO (QFontMetricsF ())

instance QqFontMetricsF ((QFont t1)) where
 qFontMetricsF (x1)
  = withQFontMetricsFResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFontMetricsF cobj_x1

foreign import ccall "qtc_QFontMetricsF" qtc_QFontMetricsF :: Ptr (TQFont t1) -> IO (Ptr (TQFontMetricsF ()))

instance QqFontMetricsF ((QFontMetricsF t1)) where
 qFontMetricsF (x1)
  = withQFontMetricsFResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFontMetricsF1 cobj_x1

foreign import ccall "qtc_QFontMetricsF1" qtc_QFontMetricsF1 :: Ptr (TQFontMetricsF t1) -> IO (Ptr (TQFontMetricsF ()))

instance QqFontMetricsF ((QFont t1, QPaintDevice t2)) where
 qFontMetricsF (x1, x2)
  = withQFontMetricsFResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QFontMetricsF2 cobj_x1 cobj_x2

foreign import ccall "qtc_QFontMetricsF2" qtc_QFontMetricsF2 :: Ptr (TQFont t1) -> Ptr (TQPaintDevice t2) -> IO (Ptr (TQFontMetricsF ()))

instance QqFontMetricsF ((QFont t1, QWidget t2)) where
 qFontMetricsF (x1, x2)
  = withQFontMetricsFResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QFontMetricsF2_widget cobj_x1 cobj_x2

foreign import ccall "qtc_QFontMetricsF2_widget" qtc_QFontMetricsF2_widget :: Ptr (TQFont t1) -> Ptr (TQWidget t2) -> IO (Ptr (TQFontMetricsF ()))

class QqFontMetricsF_nf x1 where
  qFontMetricsF_nf :: x1 -> IO (QFontMetricsF ())

instance QqFontMetricsF_nf ((QFont t1)) where
 qFontMetricsF_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFontMetricsF cobj_x1

instance QqFontMetricsF_nf ((QFontMetricsF t1)) where
 qFontMetricsF_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFontMetricsF1 cobj_x1

instance QqFontMetricsF_nf ((QFont t1, QPaintDevice t2)) where
 qFontMetricsF_nf (x1, x2)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QFontMetricsF2 cobj_x1 cobj_x2

instance QqFontMetricsF_nf ((QFont t1, QWidget t2)) where
 qFontMetricsF_nf (x1, x2)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QFontMetricsF2_widget cobj_x1 cobj_x2

instance Qascent (QFontMetricsF a) (()) (IO (Double)) where
 ascent x0 ()
  = withDoubleResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFontMetricsF_ascent cobj_x0

foreign import ccall "qtc_QFontMetricsF_ascent" qtc_QFontMetricsF_ascent :: Ptr (TQFontMetricsF a) -> IO CDouble

instance QaverageCharWidth (QFontMetricsF a) (()) (IO (Double)) where
 averageCharWidth x0 ()
  = withDoubleResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFontMetricsF_averageCharWidth cobj_x0

foreign import ccall "qtc_QFontMetricsF_averageCharWidth" qtc_QFontMetricsF_averageCharWidth :: Ptr (TQFontMetricsF a) -> IO CDouble

instance QqqboundingRect (QFontMetricsF a) ((QChar t1)) (IO (QRectF ())) where
 qqboundingRect x0 (x1)
  = withQRectFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFontMetricsF_boundingRect1 cobj_x0 cobj_x1

foreign import ccall "qtc_QFontMetricsF_boundingRect1" qtc_QFontMetricsF_boundingRect1 :: Ptr (TQFontMetricsF a) -> Ptr (TQChar t1) -> IO (Ptr (TQRectF ()))

instance QqqboundingRect (QFontMetricsF a) ((QRectF t1, Int, String)) (IO (QRectF ())) where
 qqboundingRect x0 (x1, x2, x3)
  = withQRectFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCWString x3 $ \cstr_x3 ->
    qtc_QFontMetricsF_boundingRect2 cobj_x0 cobj_x1 (toCInt x2) cstr_x3

foreign import ccall "qtc_QFontMetricsF_boundingRect2" qtc_QFontMetricsF_boundingRect2 :: Ptr (TQFontMetricsF a) -> Ptr (TQRectF t1) -> CInt -> CWString -> IO (Ptr (TQRectF ()))

instance QqqboundingRect (QFontMetricsF a) ((QRectF t1, Int, String, Int)) (IO (QRectF ())) where
 qqboundingRect x0 (x1, x2, x3, x4)
  = withQRectFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCWString x3 $ \cstr_x3 ->
    qtc_QFontMetricsF_boundingRect3 cobj_x0 cobj_x1 (toCInt x2) cstr_x3 (toCInt x4)

foreign import ccall "qtc_QFontMetricsF_boundingRect3" qtc_QFontMetricsF_boundingRect3 :: Ptr (TQFontMetricsF a) -> Ptr (TQRectF t1) -> CInt -> CWString -> CInt -> IO (Ptr (TQRectF ()))

instance QqqboundingRect (QFontMetricsF a) ((String)) (IO (QRectF ())) where
 qqboundingRect x0 (x1)
  = withQRectFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QFontMetricsF_boundingRect cobj_x0 cstr_x1

foreign import ccall "qtc_QFontMetricsF_boundingRect" qtc_QFontMetricsF_boundingRect :: Ptr (TQFontMetricsF a) -> CWString -> IO (Ptr (TQRectF ()))

instance QqboundingRect (QFontMetricsF a) ((QChar t1)) (IO (RectF)) where
 qboundingRect x0 (x1)
  = withRectFResult $ \crectf_ret_x crectf_ret_y crectf_ret_w crectf_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFontMetricsF_boundingRect1_qth cobj_x0 cobj_x1 crectf_ret_x crectf_ret_y crectf_ret_w crectf_ret_h

foreign import ccall "qtc_QFontMetricsF_boundingRect1_qth" qtc_QFontMetricsF_boundingRect1_qth :: Ptr (TQFontMetricsF a) -> Ptr (TQChar t1) -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> IO ()

instance QqboundingRect (QFontMetricsF a) ((RectF, Int, String)) (IO (RectF)) where
 qboundingRect x0 (x1, x2, x3)
  = withRectFResult $ \crectf_ret_x crectf_ret_y crectf_ret_w crectf_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withCRectF x1 $ \crectf_x1_x crectf_x1_y  crectf_x1_w crectf_x1_h -> 
    withCWString x3 $ \cstr_x3 ->
    qtc_QFontMetricsF_boundingRect2_qth cobj_x0 crectf_x1_x crectf_x1_y crectf_x1_w crectf_x1_h  (toCInt x2) cstr_x3 crectf_ret_x crectf_ret_y crectf_ret_w crectf_ret_h

foreign import ccall "qtc_QFontMetricsF_boundingRect2_qth" qtc_QFontMetricsF_boundingRect2_qth :: Ptr (TQFontMetricsF a) -> CDouble -> CDouble -> CDouble -> CDouble -> CInt -> CWString -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> IO ()

instance QqboundingRect (QFontMetricsF a) ((RectF, Int, String, Int)) (IO (RectF)) where
 qboundingRect x0 (x1, x2, x3, x4)
  = withRectFResult $ \crectf_ret_x crectf_ret_y crectf_ret_w crectf_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withCRectF x1 $ \crectf_x1_x crectf_x1_y  crectf_x1_w crectf_x1_h -> 
    withCWString x3 $ \cstr_x3 ->
    qtc_QFontMetricsF_boundingRect3_qth cobj_x0 crectf_x1_x crectf_x1_y crectf_x1_w crectf_x1_h  (toCInt x2) cstr_x3 (toCInt x4) crectf_ret_x crectf_ret_y crectf_ret_w crectf_ret_h

foreign import ccall "qtc_QFontMetricsF_boundingRect3_qth" qtc_QFontMetricsF_boundingRect3_qth :: Ptr (TQFontMetricsF a) -> CDouble -> CDouble -> CDouble -> CDouble -> CInt -> CWString -> CInt -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> IO ()

instance QqboundingRect (QFontMetricsF a) ((String)) (IO (RectF)) where
 qboundingRect x0 (x1)
  = withRectFResult $ \crectf_ret_x crectf_ret_y crectf_ret_w crectf_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QFontMetricsF_boundingRect_qth cobj_x0 cstr_x1 crectf_ret_x crectf_ret_y crectf_ret_w crectf_ret_h

foreign import ccall "qtc_QFontMetricsF_boundingRect_qth" qtc_QFontMetricsF_boundingRect_qth :: Ptr (TQFontMetricsF a) -> CWString -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> IO ()

instance Qdescent (QFontMetricsF a) (()) (IO (Double)) where
 descent x0 ()
  = withDoubleResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFontMetricsF_descent cobj_x0

foreign import ccall "qtc_QFontMetricsF_descent" qtc_QFontMetricsF_descent :: Ptr (TQFontMetricsF a) -> IO CDouble

instance QelidedText (QFontMetricsF a) ((String, TextElideMode, Double)) where
 elidedText x0 (x1, x2, x3)
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QFontMetricsF_elidedText cobj_x0 cstr_x1 (toCLong $ qEnum_toInt x2) (toCDouble x3)

foreign import ccall "qtc_QFontMetricsF_elidedText" qtc_QFontMetricsF_elidedText :: Ptr (TQFontMetricsF a) -> CWString -> CLong -> CDouble -> IO (Ptr (TQString ()))

instance QelidedText (QFontMetricsF a) ((String, TextElideMode, Double, Int)) where
 elidedText x0 (x1, x2, x3, x4)
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QFontMetricsF_elidedText1 cobj_x0 cstr_x1 (toCLong $ qEnum_toInt x2) (toCDouble x3) (toCInt x4)

foreign import ccall "qtc_QFontMetricsF_elidedText1" qtc_QFontMetricsF_elidedText1 :: Ptr (TQFontMetricsF a) -> CWString -> CLong -> CDouble -> CInt -> IO (Ptr (TQString ()))

instance Qqheight (QFontMetricsF a) (()) (IO (Double)) where
 qheight x0 ()
  = withDoubleResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFontMetricsF_height cobj_x0

foreign import ccall "qtc_QFontMetricsF_height" qtc_QFontMetricsF_height :: Ptr (TQFontMetricsF a) -> IO CDouble

instance QinFont (QFontMetricsF a) ((QChar t1)) where
 inFont x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFontMetricsF_inFont cobj_x0 cobj_x1

foreign import ccall "qtc_QFontMetricsF_inFont" qtc_QFontMetricsF_inFont :: Ptr (TQFontMetricsF a) -> Ptr (TQChar t1) -> IO CBool

instance Qleading (QFontMetricsF a) (()) (IO (Double)) where
 leading x0 ()
  = withDoubleResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFontMetricsF_leading cobj_x0

foreign import ccall "qtc_QFontMetricsF_leading" qtc_QFontMetricsF_leading :: Ptr (TQFontMetricsF a) -> IO CDouble

instance QleftBearing (QFontMetricsF a) ((QChar t1)) (IO (Double)) where
 leftBearing x0 (x1)
  = withDoubleResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFontMetricsF_leftBearing cobj_x0 cobj_x1

foreign import ccall "qtc_QFontMetricsF_leftBearing" qtc_QFontMetricsF_leftBearing :: Ptr (TQFontMetricsF a) -> Ptr (TQChar t1) -> IO CDouble

instance QlineSpacing (QFontMetricsF a) (()) (IO (Double)) where
 lineSpacing x0 ()
  = withDoubleResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFontMetricsF_lineSpacing cobj_x0

foreign import ccall "qtc_QFontMetricsF_lineSpacing" qtc_QFontMetricsF_lineSpacing :: Ptr (TQFontMetricsF a) -> IO CDouble

instance QlineWidth (QFontMetricsF a) (()) (IO (Double)) where
 lineWidth x0 ()
  = withDoubleResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFontMetricsF_lineWidth cobj_x0

foreign import ccall "qtc_QFontMetricsF_lineWidth" qtc_QFontMetricsF_lineWidth :: Ptr (TQFontMetricsF a) -> IO CDouble

instance QmaxWidth (QFontMetricsF a) (()) (IO (Double)) where
 maxWidth x0 ()
  = withDoubleResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFontMetricsF_maxWidth cobj_x0

foreign import ccall "qtc_QFontMetricsF_maxWidth" qtc_QFontMetricsF_maxWidth :: Ptr (TQFontMetricsF a) -> IO CDouble

instance QminLeftBearing (QFontMetricsF a) (()) (IO (Double)) where
 minLeftBearing x0 ()
  = withDoubleResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFontMetricsF_minLeftBearing cobj_x0

foreign import ccall "qtc_QFontMetricsF_minLeftBearing" qtc_QFontMetricsF_minLeftBearing :: Ptr (TQFontMetricsF a) -> IO CDouble

instance QminRightBearing (QFontMetricsF a) (()) (IO (Double)) where
 minRightBearing x0 ()
  = withDoubleResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFontMetricsF_minRightBearing cobj_x0

foreign import ccall "qtc_QFontMetricsF_minRightBearing" qtc_QFontMetricsF_minRightBearing :: Ptr (TQFontMetricsF a) -> IO CDouble

instance QoverlinePos (QFontMetricsF a) (()) (IO (Double)) where
 overlinePos x0 ()
  = withDoubleResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFontMetricsF_overlinePos cobj_x0

foreign import ccall "qtc_QFontMetricsF_overlinePos" qtc_QFontMetricsF_overlinePos :: Ptr (TQFontMetricsF a) -> IO CDouble

instance QrightBearing (QFontMetricsF a) ((QChar t1)) (IO (Double)) where
 rightBearing x0 (x1)
  = withDoubleResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFontMetricsF_rightBearing cobj_x0 cobj_x1

foreign import ccall "qtc_QFontMetricsF_rightBearing" qtc_QFontMetricsF_rightBearing :: Ptr (TQFontMetricsF a) -> Ptr (TQChar t1) -> IO CDouble

instance Qqqsize (QFontMetricsF a) ((Int, String)) (IO (QSizeF ())) where
 qqsize x0 (x1, x2)
  = withQSizeFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QFontMetricsF_size cobj_x0 (toCInt x1) cstr_x2

foreign import ccall "qtc_QFontMetricsF_size" qtc_QFontMetricsF_size :: Ptr (TQFontMetricsF a) -> CInt -> CWString -> IO (Ptr (TQSizeF ()))

instance Qqqsize (QFontMetricsF a) ((Int, String, Int)) (IO (QSizeF ())) where
 qqsize x0 (x1, x2, x3)
  = withQSizeFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QFontMetricsF_size1 cobj_x0 (toCInt x1) cstr_x2 (toCInt x3)

foreign import ccall "qtc_QFontMetricsF_size1" qtc_QFontMetricsF_size1 :: Ptr (TQFontMetricsF a) -> CInt -> CWString -> CInt -> IO (Ptr (TQSizeF ()))

instance Qqsize (QFontMetricsF a) ((Int, String)) (IO (SizeF)) where
 qsize x0 (x1, x2)
  = withSizeFResult $ \csizef_ret_w csizef_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QFontMetricsF_size_qth cobj_x0 (toCInt x1) cstr_x2 csizef_ret_w csizef_ret_h

foreign import ccall "qtc_QFontMetricsF_size_qth" qtc_QFontMetricsF_size_qth :: Ptr (TQFontMetricsF a) -> CInt -> CWString -> Ptr CDouble -> Ptr CDouble -> IO ()

instance Qqsize (QFontMetricsF a) ((Int, String, Int)) (IO (SizeF)) where
 qsize x0 (x1, x2, x3)
  = withSizeFResult $ \csizef_ret_w csizef_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QFontMetricsF_size1_qth cobj_x0 (toCInt x1) cstr_x2 (toCInt x3) csizef_ret_w csizef_ret_h

foreign import ccall "qtc_QFontMetricsF_size1_qth" qtc_QFontMetricsF_size1_qth :: Ptr (TQFontMetricsF a) -> CInt -> CWString -> CInt -> Ptr CDouble -> Ptr CDouble -> IO ()

instance QstrikeOutPos (QFontMetricsF a) (()) (IO (Double)) where
 strikeOutPos x0 ()
  = withDoubleResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFontMetricsF_strikeOutPos cobj_x0

foreign import ccall "qtc_QFontMetricsF_strikeOutPos" qtc_QFontMetricsF_strikeOutPos :: Ptr (TQFontMetricsF a) -> IO CDouble

instance QqtightBoundingRect (QFontMetricsF a) ((String)) (IO (QRectF ())) where
 qtightBoundingRect x0 (x1)
  = withQRectFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QFontMetricsF_tightBoundingRect cobj_x0 cstr_x1

foreign import ccall "qtc_QFontMetricsF_tightBoundingRect" qtc_QFontMetricsF_tightBoundingRect :: Ptr (TQFontMetricsF a) -> CWString -> IO (Ptr (TQRectF ()))

instance QtightBoundingRect (QFontMetricsF a) ((String)) (IO (RectF)) where
 tightBoundingRect x0 (x1)
  = withRectFResult $ \crectf_ret_x crectf_ret_y crectf_ret_w crectf_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QFontMetricsF_tightBoundingRect_qth cobj_x0 cstr_x1 crectf_ret_x crectf_ret_y crectf_ret_w crectf_ret_h

foreign import ccall "qtc_QFontMetricsF_tightBoundingRect_qth" qtc_QFontMetricsF_tightBoundingRect_qth :: Ptr (TQFontMetricsF a) -> CWString -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> IO ()

instance QunderlinePos (QFontMetricsF a) (()) (IO (Double)) where
 underlinePos x0 ()
  = withDoubleResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFontMetricsF_underlinePos cobj_x0

foreign import ccall "qtc_QFontMetricsF_underlinePos" qtc_QFontMetricsF_underlinePos :: Ptr (TQFontMetricsF a) -> IO CDouble

instance Qqwidth (QFontMetricsF a) ((QChar t1)) (IO (Double)) where
 qwidth x0 (x1)
  = withDoubleResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFontMetricsF_width cobj_x0 cobj_x1

foreign import ccall "qtc_QFontMetricsF_width" qtc_QFontMetricsF_width :: Ptr (TQFontMetricsF a) -> Ptr (TQChar t1) -> IO CDouble

instance Qqwidth (QFontMetricsF a) ((String)) (IO (Double)) where
 qwidth x0 (x1)
  = withDoubleResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QFontMetricsF_width1 cobj_x0 cstr_x1

foreign import ccall "qtc_QFontMetricsF_width1" qtc_QFontMetricsF_width1 :: Ptr (TQFontMetricsF a) -> CWString -> IO CDouble

instance QxHeight (QFontMetricsF a) (()) (IO (Double)) where
 xHeight x0 ()
  = withDoubleResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFontMetricsF_xHeight cobj_x0

foreign import ccall "qtc_QFontMetricsF_xHeight" qtc_QFontMetricsF_xHeight :: Ptr (TQFontMetricsF a) -> IO CDouble

qFontMetricsF_delete :: QFontMetricsF a -> IO ()
qFontMetricsF_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFontMetricsF_delete cobj_x0

foreign import ccall "qtc_QFontMetricsF_delete" qtc_QFontMetricsF_delete :: Ptr (TQFontMetricsF a) -> IO ()

