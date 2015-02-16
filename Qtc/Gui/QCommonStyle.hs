{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QCommonStyle.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:17
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QCommonStyle (
  qCommonStyle
  ,qCommonStyle_delete
  ,qCommonStyle_deleteLater
  )
  where

import Foreign.C.Types
import Qth.ClassTypes.Core
import Qtc.Enums.Base
import Qtc.Enums.Gui.QPalette
import Qtc.Enums.Core.Qt
import Qtc.Enums.Gui.QIcon
import Qtc.Enums.Gui.QStyle
import Qtc.Enums.Gui.QSizePolicy

import Qtc.Classes.Base
import Qtc.Classes.Qccs
import Qtc.Classes.Core
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core
import Qtc.Classes.Gui
import Qtc.ClassTypes.Gui

instance QuserMethod (QCommonStyle ()) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QCommonStyle_userMethod cobj_qobj (toCInt evid)

foreign import ccall "qtc_QCommonStyle_userMethod" qtc_QCommonStyle_userMethod :: Ptr (TQCommonStyle a) -> CInt -> IO ()

instance QuserMethod (QCommonStyleSc a) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QCommonStyle_userMethod cobj_qobj (toCInt evid)

instance QuserMethod (QCommonStyle ()) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QCommonStyle_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

foreign import ccall "qtc_QCommonStyle_userMethodVariant" qtc_QCommonStyle_userMethodVariant :: Ptr (TQCommonStyle a) -> CInt -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))

instance QuserMethod (QCommonStyleSc a) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QCommonStyle_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

qCommonStyle :: () -> IO (QCommonStyle ())
qCommonStyle ()
  = withQCommonStyleResult $
    qtc_QCommonStyle

foreign import ccall "qtc_QCommonStyle" qtc_QCommonStyle :: IO (Ptr (TQCommonStyle ()))

instance QdrawComplexControl (QCommonStyle a) ((ComplexControl, QStyleOptionComplex t2, QPainter t3)) where
 drawComplexControl x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QCommonStyle_drawComplexControl cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 cobj_x3

foreign import ccall "qtc_QCommonStyle_drawComplexControl" qtc_QCommonStyle_drawComplexControl :: Ptr (TQCommonStyle a) -> CLong -> Ptr (TQStyleOptionComplex t2) -> Ptr (TQPainter t3) -> IO ()

instance QdrawComplexControl (QCommonStyle ()) ((ComplexControl, QStyleOptionComplex t2, QPainter t3, QWidget t4)) where
 drawComplexControl x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    withObjectPtr x4 $ \cobj_x4 ->
    qtc_QCommonStyle_drawComplexControl1_h cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 cobj_x3 cobj_x4

foreign import ccall "qtc_QCommonStyle_drawComplexControl1_h" qtc_QCommonStyle_drawComplexControl1_h :: Ptr (TQCommonStyle a) -> CLong -> Ptr (TQStyleOptionComplex t2) -> Ptr (TQPainter t3) -> Ptr (TQWidget t4) -> IO ()

instance QdrawComplexControl (QCommonStyleSc a) ((ComplexControl, QStyleOptionComplex t2, QPainter t3, QWidget t4)) where
 drawComplexControl x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    withObjectPtr x4 $ \cobj_x4 ->
    qtc_QCommonStyle_drawComplexControl1_h cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 cobj_x3 cobj_x4

instance QdrawControl (QCommonStyle a) ((ControlElement, QStyleOption t2, QPainter t3)) where
 drawControl x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QCommonStyle_drawControl cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 cobj_x3

foreign import ccall "qtc_QCommonStyle_drawControl" qtc_QCommonStyle_drawControl :: Ptr (TQCommonStyle a) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQPainter t3) -> IO ()

instance QdrawControl (QCommonStyle ()) ((ControlElement, QStyleOption t2, QPainter t3, QWidget t4)) where
 drawControl x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    withObjectPtr x4 $ \cobj_x4 ->
    qtc_QCommonStyle_drawControl1_h cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 cobj_x3 cobj_x4

foreign import ccall "qtc_QCommonStyle_drawControl1_h" qtc_QCommonStyle_drawControl1_h :: Ptr (TQCommonStyle a) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQPainter t3) -> Ptr (TQWidget t4) -> IO ()

instance QdrawControl (QCommonStyleSc a) ((ControlElement, QStyleOption t2, QPainter t3, QWidget t4)) where
 drawControl x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    withObjectPtr x4 $ \cobj_x4 ->
    qtc_QCommonStyle_drawControl1_h cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 cobj_x3 cobj_x4

instance QdrawPrimitive (QCommonStyle a) ((PrimitiveElement, QStyleOption t2, QPainter t3)) where
 drawPrimitive x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QCommonStyle_drawPrimitive cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 cobj_x3

foreign import ccall "qtc_QCommonStyle_drawPrimitive" qtc_QCommonStyle_drawPrimitive :: Ptr (TQCommonStyle a) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQPainter t3) -> IO ()

instance QdrawPrimitive (QCommonStyle ()) ((PrimitiveElement, QStyleOption t2, QPainter t3, QWidget t4)) where
 drawPrimitive x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    withObjectPtr x4 $ \cobj_x4 ->
    qtc_QCommonStyle_drawPrimitive1_h cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 cobj_x3 cobj_x4

foreign import ccall "qtc_QCommonStyle_drawPrimitive1_h" qtc_QCommonStyle_drawPrimitive1_h :: Ptr (TQCommonStyle a) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQPainter t3) -> Ptr (TQWidget t4) -> IO ()

instance QdrawPrimitive (QCommonStyleSc a) ((PrimitiveElement, QStyleOption t2, QPainter t3, QWidget t4)) where
 drawPrimitive x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    withObjectPtr x4 $ \cobj_x4 ->
    qtc_QCommonStyle_drawPrimitive1_h cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 cobj_x3 cobj_x4

instance QgeneratedIconPixmap (QCommonStyle ()) ((QIconMode, QPixmap t2, QStyleOption t3)) where
 generatedIconPixmap x0 (x1, x2, x3)
  = withQPixmapResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QCommonStyle_generatedIconPixmap_h cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 cobj_x3

foreign import ccall "qtc_QCommonStyle_generatedIconPixmap_h" qtc_QCommonStyle_generatedIconPixmap_h :: Ptr (TQCommonStyle a) -> CLong -> Ptr (TQPixmap t2) -> Ptr (TQStyleOption t3) -> IO (Ptr (TQPixmap ()))

instance QgeneratedIconPixmap (QCommonStyleSc a) ((QIconMode, QPixmap t2, QStyleOption t3)) where
 generatedIconPixmap x0 (x1, x2, x3)
  = withQPixmapResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QCommonStyle_generatedIconPixmap_h cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 cobj_x3

instance QhitTestComplexControl (QCommonStyle a) ((ComplexControl, QStyleOptionComplex t2, Point)) where
 hitTestComplexControl x0 (x1, x2, x3)
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withCPoint x3 $ \cpoint_x3_x cpoint_x3_y -> 
    qtc_QCommonStyle_hitTestComplexControl_qth cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 cpoint_x3_x cpoint_x3_y 

foreign import ccall "qtc_QCommonStyle_hitTestComplexControl_qth" qtc_QCommonStyle_hitTestComplexControl_qth :: Ptr (TQCommonStyle a) -> CLong -> Ptr (TQStyleOptionComplex t2) -> CInt -> CInt -> IO CLong

instance QhitTestComplexControl (QCommonStyle ()) ((ComplexControl, QStyleOptionComplex t2, Point, QWidget t4)) where
 hitTestComplexControl x0 (x1, x2, x3, x4)
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withCPoint x3 $ \cpoint_x3_x cpoint_x3_y -> 
    withObjectPtr x4 $ \cobj_x4 ->
    qtc_QCommonStyle_hitTestComplexControl1_qth_h cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 cpoint_x3_x cpoint_x3_y  cobj_x4

foreign import ccall "qtc_QCommonStyle_hitTestComplexControl1_qth_h" qtc_QCommonStyle_hitTestComplexControl1_qth_h :: Ptr (TQCommonStyle a) -> CLong -> Ptr (TQStyleOptionComplex t2) -> CInt -> CInt -> Ptr (TQWidget t4) -> IO CLong

instance QhitTestComplexControl (QCommonStyleSc a) ((ComplexControl, QStyleOptionComplex t2, Point, QWidget t4)) where
 hitTestComplexControl x0 (x1, x2, x3, x4)
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withCPoint x3 $ \cpoint_x3_x cpoint_x3_y -> 
    withObjectPtr x4 $ \cobj_x4 ->
    qtc_QCommonStyle_hitTestComplexControl1_qth_h cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 cpoint_x3_x cpoint_x3_y  cobj_x4

instance QqhitTestComplexControl (QCommonStyle a) ((ComplexControl, QStyleOptionComplex t2, QPoint t3)) where
 qhitTestComplexControl x0 (x1, x2, x3)
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QCommonStyle_hitTestComplexControl cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 cobj_x3

foreign import ccall "qtc_QCommonStyle_hitTestComplexControl" qtc_QCommonStyle_hitTestComplexControl :: Ptr (TQCommonStyle a) -> CLong -> Ptr (TQStyleOptionComplex t2) -> Ptr (TQPoint t3) -> IO CLong

instance QqhitTestComplexControl (QCommonStyle ()) ((ComplexControl, QStyleOptionComplex t2, QPoint t3, QWidget t4)) where
 qhitTestComplexControl x0 (x1, x2, x3, x4)
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    withObjectPtr x4 $ \cobj_x4 ->
    qtc_QCommonStyle_hitTestComplexControl1_h cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 cobj_x3 cobj_x4

foreign import ccall "qtc_QCommonStyle_hitTestComplexControl1_h" qtc_QCommonStyle_hitTestComplexControl1_h :: Ptr (TQCommonStyle a) -> CLong -> Ptr (TQStyleOptionComplex t2) -> Ptr (TQPoint t3) -> Ptr (TQWidget t4) -> IO CLong

instance QqhitTestComplexControl (QCommonStyleSc a) ((ComplexControl, QStyleOptionComplex t2, QPoint t3, QWidget t4)) where
 qhitTestComplexControl x0 (x1, x2, x3, x4)
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    withObjectPtr x4 $ \cobj_x4 ->
    qtc_QCommonStyle_hitTestComplexControl1_h cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 cobj_x3 cobj_x4

instance QpixelMetric (QCommonStyle a) ((PixelMetric)) where
 pixelMetric x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCommonStyle_pixelMetric cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QCommonStyle_pixelMetric" qtc_QCommonStyle_pixelMetric :: Ptr (TQCommonStyle a) -> CLong -> IO CInt

instance QpixelMetric (QCommonStyle a) ((PixelMetric, QStyleOption t2)) where
 pixelMetric x0 (x1, x2)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QCommonStyle_pixelMetric1 cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2

foreign import ccall "qtc_QCommonStyle_pixelMetric1" qtc_QCommonStyle_pixelMetric1 :: Ptr (TQCommonStyle a) -> CLong -> Ptr (TQStyleOption t2) -> IO CInt

instance QpixelMetric (QCommonStyle ()) ((PixelMetric, QStyleOption t2, QWidget t3)) where
 pixelMetric x0 (x1, x2, x3)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QCommonStyle_pixelMetric2_h cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 cobj_x3

foreign import ccall "qtc_QCommonStyle_pixelMetric2_h" qtc_QCommonStyle_pixelMetric2_h :: Ptr (TQCommonStyle a) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQWidget t3) -> IO CInt

instance QpixelMetric (QCommonStyleSc a) ((PixelMetric, QStyleOption t2, QWidget t3)) where
 pixelMetric x0 (x1, x2, x3)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QCommonStyle_pixelMetric2_h cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 cobj_x3

instance QqsizeFromContents (QCommonStyle a) ((ContentsType, QStyleOption t2, QSize t3)) where
 qsizeFromContents x0 (x1, x2, x3)
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QCommonStyle_sizeFromContents cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 cobj_x3

foreign import ccall "qtc_QCommonStyle_sizeFromContents" qtc_QCommonStyle_sizeFromContents :: Ptr (TQCommonStyle a) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQSize t3) -> IO (Ptr (TQSize ()))

instance QqsizeFromContents (QCommonStyle ()) ((ContentsType, QStyleOption t2, QSize t3, QWidget t4)) where
 qsizeFromContents x0 (x1, x2, x3, x4)
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    withObjectPtr x4 $ \cobj_x4 ->
    qtc_QCommonStyle_sizeFromContents1_h cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 cobj_x3 cobj_x4

foreign import ccall "qtc_QCommonStyle_sizeFromContents1_h" qtc_QCommonStyle_sizeFromContents1_h :: Ptr (TQCommonStyle a) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQSize t3) -> Ptr (TQWidget t4) -> IO (Ptr (TQSize ()))

instance QqsizeFromContents (QCommonStyleSc a) ((ContentsType, QStyleOption t2, QSize t3, QWidget t4)) where
 qsizeFromContents x0 (x1, x2, x3, x4)
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    withObjectPtr x4 $ \cobj_x4 ->
    qtc_QCommonStyle_sizeFromContents1_h cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 cobj_x3 cobj_x4

instance QsizeFromContents (QCommonStyle a) ((ContentsType, QStyleOption t2, Size)) where
 sizeFromContents x0 (x1, x2, x3)
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withCSize x3 $ \csize_x3_w csize_x3_h -> 
    qtc_QCommonStyle_sizeFromContents_qth cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 csize_x3_w csize_x3_h  csize_ret_w csize_ret_h

foreign import ccall "qtc_QCommonStyle_sizeFromContents_qth" qtc_QCommonStyle_sizeFromContents_qth :: Ptr (TQCommonStyle a) -> CLong -> Ptr (TQStyleOption t2) -> CInt -> CInt -> Ptr CInt -> Ptr CInt -> IO ()

instance QsizeFromContents (QCommonStyle ()) ((ContentsType, QStyleOption t2, Size, QWidget t4)) where
 sizeFromContents x0 (x1, x2, x3, x4)
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withCSize x3 $ \csize_x3_w csize_x3_h -> 
    withObjectPtr x4 $ \cobj_x4 ->
    qtc_QCommonStyle_sizeFromContents1_qth_h cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 csize_x3_w csize_x3_h  cobj_x4 csize_ret_w csize_ret_h

foreign import ccall "qtc_QCommonStyle_sizeFromContents1_qth_h" qtc_QCommonStyle_sizeFromContents1_qth_h :: Ptr (TQCommonStyle a) -> CLong -> Ptr (TQStyleOption t2) -> CInt -> CInt -> Ptr (TQWidget t4) -> Ptr CInt -> Ptr CInt -> IO ()

instance QsizeFromContents (QCommonStyleSc a) ((ContentsType, QStyleOption t2, Size, QWidget t4)) where
 sizeFromContents x0 (x1, x2, x3, x4)
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withCSize x3 $ \csize_x3_w csize_x3_h -> 
    withObjectPtr x4 $ \cobj_x4 ->
    qtc_QCommonStyle_sizeFromContents1_qth_h cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 csize_x3_w csize_x3_h  cobj_x4 csize_ret_w csize_ret_h

instance QstandardIconImplementation (QCommonStyle ()) ((StandardPixmap)) where
 standardIconImplementation x0 (x1)
  = withQIconResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCommonStyle_standardIconImplementation cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QCommonStyle_standardIconImplementation" qtc_QCommonStyle_standardIconImplementation :: Ptr (TQCommonStyle a) -> CLong -> IO (Ptr (TQIcon ()))

instance QstandardIconImplementation (QCommonStyleSc a) ((StandardPixmap)) where
 standardIconImplementation x0 (x1)
  = withQIconResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCommonStyle_standardIconImplementation cobj_x0 (toCLong $ qEnum_toInt x1)

instance QstandardIconImplementation (QCommonStyle ()) ((StandardPixmap, QStyleOption t2)) where
 standardIconImplementation x0 (x1, x2)
  = withQIconResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QCommonStyle_standardIconImplementation1 cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2

foreign import ccall "qtc_QCommonStyle_standardIconImplementation1" qtc_QCommonStyle_standardIconImplementation1 :: Ptr (TQCommonStyle a) -> CLong -> Ptr (TQStyleOption t2) -> IO (Ptr (TQIcon ()))

instance QstandardIconImplementation (QCommonStyleSc a) ((StandardPixmap, QStyleOption t2)) where
 standardIconImplementation x0 (x1, x2)
  = withQIconResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QCommonStyle_standardIconImplementation1 cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2

instance QstandardIconImplementation (QCommonStyle ()) ((StandardPixmap, QStyleOption t2, QWidget t3)) where
 standardIconImplementation x0 (x1, x2, x3)
  = withQIconResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QCommonStyle_standardIconImplementation2 cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 cobj_x3

foreign import ccall "qtc_QCommonStyle_standardIconImplementation2" qtc_QCommonStyle_standardIconImplementation2 :: Ptr (TQCommonStyle a) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQWidget t3) -> IO (Ptr (TQIcon ()))

instance QstandardIconImplementation (QCommonStyleSc a) ((StandardPixmap, QStyleOption t2, QWidget t3)) where
 standardIconImplementation x0 (x1, x2, x3)
  = withQIconResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QCommonStyle_standardIconImplementation2 cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 cobj_x3

instance QstandardPixmap (QCommonStyle ()) ((StandardPixmap)) where
 standardPixmap x0 (x1)
  = withQPixmapResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCommonStyle_standardPixmap_h cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QCommonStyle_standardPixmap_h" qtc_QCommonStyle_standardPixmap_h :: Ptr (TQCommonStyle a) -> CLong -> IO (Ptr (TQPixmap ()))

instance QstandardPixmap (QCommonStyleSc a) ((StandardPixmap)) where
 standardPixmap x0 (x1)
  = withQPixmapResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCommonStyle_standardPixmap_h cobj_x0 (toCLong $ qEnum_toInt x1)

instance QstandardPixmap (QCommonStyle ()) ((StandardPixmap, QStyleOption t2)) where
 standardPixmap x0 (x1, x2)
  = withQPixmapResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QCommonStyle_standardPixmap1_h cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2

foreign import ccall "qtc_QCommonStyle_standardPixmap1_h" qtc_QCommonStyle_standardPixmap1_h :: Ptr (TQCommonStyle a) -> CLong -> Ptr (TQStyleOption t2) -> IO (Ptr (TQPixmap ()))

instance QstandardPixmap (QCommonStyleSc a) ((StandardPixmap, QStyleOption t2)) where
 standardPixmap x0 (x1, x2)
  = withQPixmapResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QCommonStyle_standardPixmap1_h cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2

instance QstandardPixmap (QCommonStyle ()) ((StandardPixmap, QStyleOption t2, QWidget t3)) where
 standardPixmap x0 (x1, x2, x3)
  = withQPixmapResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QCommonStyle_standardPixmap2_h cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 cobj_x3

foreign import ccall "qtc_QCommonStyle_standardPixmap2_h" qtc_QCommonStyle_standardPixmap2_h :: Ptr (TQCommonStyle a) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQWidget t3) -> IO (Ptr (TQPixmap ()))

instance QstandardPixmap (QCommonStyleSc a) ((StandardPixmap, QStyleOption t2, QWidget t3)) where
 standardPixmap x0 (x1, x2, x3)
  = withQPixmapResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QCommonStyle_standardPixmap2_h cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 cobj_x3

instance QstyleHint (QCommonStyle a) ((QStyleStyleHint)) (IO (Int)) where
 styleHint x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCommonStyle_styleHint cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QCommonStyle_styleHint" qtc_QCommonStyle_styleHint :: Ptr (TQCommonStyle a) -> CLong -> IO CInt

instance QstyleHint (QCommonStyle a) ((QStyleStyleHint, QStyleOption t2)) (IO (Int)) where
 styleHint x0 (x1, x2)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QCommonStyle_styleHint1 cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2

foreign import ccall "qtc_QCommonStyle_styleHint1" qtc_QCommonStyle_styleHint1 :: Ptr (TQCommonStyle a) -> CLong -> Ptr (TQStyleOption t2) -> IO CInt

instance QstyleHint (QCommonStyle a) ((QStyleStyleHint, QStyleOption t2, QWidget t3)) (IO (Int)) where
 styleHint x0 (x1, x2, x3)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QCommonStyle_styleHint2 cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 cobj_x3

foreign import ccall "qtc_QCommonStyle_styleHint2" qtc_QCommonStyle_styleHint2 :: Ptr (TQCommonStyle a) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQWidget t3) -> IO CInt

instance QstyleHint (QCommonStyle ()) ((QStyleStyleHint, QStyleOption t2, QWidget t3, QStyleHintReturn t4)) (IO (Int)) where
 styleHint x0 (x1, x2, x3, x4)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    withObjectPtr x4 $ \cobj_x4 ->
    qtc_QCommonStyle_styleHint3_h cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 cobj_x3 cobj_x4

foreign import ccall "qtc_QCommonStyle_styleHint3_h" qtc_QCommonStyle_styleHint3_h :: Ptr (TQCommonStyle a) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQWidget t3) -> Ptr (TQStyleHintReturn t4) -> IO CInt

instance QstyleHint (QCommonStyleSc a) ((QStyleStyleHint, QStyleOption t2, QWidget t3, QStyleHintReturn t4)) (IO (Int)) where
 styleHint x0 (x1, x2, x3, x4)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    withObjectPtr x4 $ \cobj_x4 ->
    qtc_QCommonStyle_styleHint3_h cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 cobj_x3 cobj_x4

instance QqsubControlRect (QCommonStyle a) ((ComplexControl, QStyleOptionComplex t2, SubControl)) where
 qsubControlRect x0 (x1, x2, x3)
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QCommonStyle_subControlRect cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 (toCLong $ qEnum_toInt x3)

foreign import ccall "qtc_QCommonStyle_subControlRect" qtc_QCommonStyle_subControlRect :: Ptr (TQCommonStyle a) -> CLong -> Ptr (TQStyleOptionComplex t2) -> CLong -> IO (Ptr (TQRect ()))

instance QqsubControlRect (QCommonStyle ()) ((ComplexControl, QStyleOptionComplex t2, SubControl, QWidget t4)) where
 qsubControlRect x0 (x1, x2, x3, x4)
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x4 $ \cobj_x4 ->
    qtc_QCommonStyle_subControlRect1_h cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 (toCLong $ qEnum_toInt x3) cobj_x4

foreign import ccall "qtc_QCommonStyle_subControlRect1_h" qtc_QCommonStyle_subControlRect1_h :: Ptr (TQCommonStyle a) -> CLong -> Ptr (TQStyleOptionComplex t2) -> CLong -> Ptr (TQWidget t4) -> IO (Ptr (TQRect ()))

instance QqsubControlRect (QCommonStyleSc a) ((ComplexControl, QStyleOptionComplex t2, SubControl, QWidget t4)) where
 qsubControlRect x0 (x1, x2, x3, x4)
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x4 $ \cobj_x4 ->
    qtc_QCommonStyle_subControlRect1_h cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 (toCLong $ qEnum_toInt x3) cobj_x4

instance QsubControlRect (QCommonStyle a) ((ComplexControl, QStyleOptionComplex t2, SubControl)) where
 subControlRect x0 (x1, x2, x3)
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QCommonStyle_subControlRect_qth cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 (toCLong $ qEnum_toInt x3) crect_ret_x crect_ret_y crect_ret_w crect_ret_h

foreign import ccall "qtc_QCommonStyle_subControlRect_qth" qtc_QCommonStyle_subControlRect_qth :: Ptr (TQCommonStyle a) -> CLong -> Ptr (TQStyleOptionComplex t2) -> CLong -> Ptr CInt -> Ptr CInt -> Ptr CInt -> Ptr CInt -> IO ()

instance QsubControlRect (QCommonStyle ()) ((ComplexControl, QStyleOptionComplex t2, SubControl, QWidget t4)) where
 subControlRect x0 (x1, x2, x3, x4)
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x4 $ \cobj_x4 ->
    qtc_QCommonStyle_subControlRect1_qth_h cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 (toCLong $ qEnum_toInt x3) cobj_x4 crect_ret_x crect_ret_y crect_ret_w crect_ret_h

foreign import ccall "qtc_QCommonStyle_subControlRect1_qth_h" qtc_QCommonStyle_subControlRect1_qth_h :: Ptr (TQCommonStyle a) -> CLong -> Ptr (TQStyleOptionComplex t2) -> CLong -> Ptr (TQWidget t4) -> Ptr CInt -> Ptr CInt -> Ptr CInt -> Ptr CInt -> IO ()

instance QsubControlRect (QCommonStyleSc a) ((ComplexControl, QStyleOptionComplex t2, SubControl, QWidget t4)) where
 subControlRect x0 (x1, x2, x3, x4)
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x4 $ \cobj_x4 ->
    qtc_QCommonStyle_subControlRect1_qth_h cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 (toCLong $ qEnum_toInt x3) cobj_x4 crect_ret_x crect_ret_y crect_ret_w crect_ret_h

instance QqsubElementRect (QCommonStyle a) ((SubElement, QStyleOption t2)) where
 qsubElementRect x0 (x1, x2)
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QCommonStyle_subElementRect cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2

foreign import ccall "qtc_QCommonStyle_subElementRect" qtc_QCommonStyle_subElementRect :: Ptr (TQCommonStyle a) -> CLong -> Ptr (TQStyleOption t2) -> IO (Ptr (TQRect ()))

instance QqsubElementRect (QCommonStyle ()) ((SubElement, QStyleOption t2, QWidget t3)) where
 qsubElementRect x0 (x1, x2, x3)
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QCommonStyle_subElementRect1_h cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 cobj_x3

foreign import ccall "qtc_QCommonStyle_subElementRect1_h" qtc_QCommonStyle_subElementRect1_h :: Ptr (TQCommonStyle a) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQWidget t3) -> IO (Ptr (TQRect ()))

instance QqsubElementRect (QCommonStyleSc a) ((SubElement, QStyleOption t2, QWidget t3)) where
 qsubElementRect x0 (x1, x2, x3)
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QCommonStyle_subElementRect1_h cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 cobj_x3

instance QsubElementRect (QCommonStyle a) ((SubElement, QStyleOption t2)) where
 subElementRect x0 (x1, x2)
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QCommonStyle_subElementRect_qth cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 crect_ret_x crect_ret_y crect_ret_w crect_ret_h

foreign import ccall "qtc_QCommonStyle_subElementRect_qth" qtc_QCommonStyle_subElementRect_qth :: Ptr (TQCommonStyle a) -> CLong -> Ptr (TQStyleOption t2) -> Ptr CInt -> Ptr CInt -> Ptr CInt -> Ptr CInt -> IO ()

instance QsubElementRect (QCommonStyle ()) ((SubElement, QStyleOption t2, QWidget t3)) where
 subElementRect x0 (x1, x2, x3)
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QCommonStyle_subElementRect1_qth_h cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 cobj_x3 crect_ret_x crect_ret_y crect_ret_w crect_ret_h

foreign import ccall "qtc_QCommonStyle_subElementRect1_qth_h" qtc_QCommonStyle_subElementRect1_qth_h :: Ptr (TQCommonStyle a) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQWidget t3) -> Ptr CInt -> Ptr CInt -> Ptr CInt -> Ptr CInt -> IO ()

instance QsubElementRect (QCommonStyleSc a) ((SubElement, QStyleOption t2, QWidget t3)) where
 subElementRect x0 (x1, x2, x3)
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QCommonStyle_subElementRect1_qth_h cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 cobj_x3 crect_ret_x crect_ret_y crect_ret_w crect_ret_h

qCommonStyle_delete :: QCommonStyle a -> IO ()
qCommonStyle_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCommonStyle_delete cobj_x0

foreign import ccall "qtc_QCommonStyle_delete" qtc_QCommonStyle_delete :: Ptr (TQCommonStyle a) -> IO ()

qCommonStyle_deleteLater :: QCommonStyle a -> IO ()
qCommonStyle_deleteLater x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCommonStyle_deleteLater cobj_x0

foreign import ccall "qtc_QCommonStyle_deleteLater" qtc_QCommonStyle_deleteLater :: Ptr (TQCommonStyle a) -> IO ()

instance QqdrawItemPixmap (QCommonStyle ()) ((QPainter t1, QRect t2, Int, QPixmap t4)) where
 qdrawItemPixmap x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x4 $ \cobj_x4 ->
    qtc_QCommonStyle_drawItemPixmap_h cobj_x0 cobj_x1 cobj_x2 (toCInt x3) cobj_x4

foreign import ccall "qtc_QCommonStyle_drawItemPixmap_h" qtc_QCommonStyle_drawItemPixmap_h :: Ptr (TQCommonStyle a) -> Ptr (TQPainter t1) -> Ptr (TQRect t2) -> CInt -> Ptr (TQPixmap t4) -> IO ()

instance QqdrawItemPixmap (QCommonStyleSc a) ((QPainter t1, QRect t2, Int, QPixmap t4)) where
 qdrawItemPixmap x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x4 $ \cobj_x4 ->
    qtc_QCommonStyle_drawItemPixmap_h cobj_x0 cobj_x1 cobj_x2 (toCInt x3) cobj_x4

instance QdrawItemPixmap (QCommonStyle ()) ((QPainter t1, Rect, Int, QPixmap t4)) where
 drawItemPixmap x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCRect x2 $ \crect_x2_x crect_x2_y  crect_x2_w crect_x2_h -> 
    withObjectPtr x4 $ \cobj_x4 ->
    qtc_QCommonStyle_drawItemPixmap_qth_h cobj_x0 cobj_x1 crect_x2_x crect_x2_y crect_x2_w crect_x2_h  (toCInt x3) cobj_x4

foreign import ccall "qtc_QCommonStyle_drawItemPixmap_qth_h" qtc_QCommonStyle_drawItemPixmap_qth_h :: Ptr (TQCommonStyle a) -> Ptr (TQPainter t1) -> CInt -> CInt -> CInt -> CInt -> CInt -> Ptr (TQPixmap t4) -> IO ()

instance QdrawItemPixmap (QCommonStyleSc a) ((QPainter t1, Rect, Int, QPixmap t4)) where
 drawItemPixmap x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCRect x2 $ \crect_x2_x crect_x2_y  crect_x2_w crect_x2_h -> 
    withObjectPtr x4 $ \cobj_x4 ->
    qtc_QCommonStyle_drawItemPixmap_qth_h cobj_x0 cobj_x1 crect_x2_x crect_x2_y crect_x2_w crect_x2_h  (toCInt x3) cobj_x4

instance QqdrawItemText (QCommonStyle ()) ((QPainter t1, QRect t2, Int, QPalette t4, Bool, String)) where
 qdrawItemText x0 (x1, x2, x3, x4, x5, x6)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x4 $ \cobj_x4 ->
    withCWString x6 $ \cstr_x6 ->
    qtc_QCommonStyle_drawItemText_h cobj_x0 cobj_x1 cobj_x2 (toCInt x3) cobj_x4 (toCBool x5) cstr_x6

foreign import ccall "qtc_QCommonStyle_drawItemText_h" qtc_QCommonStyle_drawItemText_h :: Ptr (TQCommonStyle a) -> Ptr (TQPainter t1) -> Ptr (TQRect t2) -> CInt -> Ptr (TQPalette t4) -> CBool -> CWString -> IO ()

instance QqdrawItemText (QCommonStyleSc a) ((QPainter t1, QRect t2, Int, QPalette t4, Bool, String)) where
 qdrawItemText x0 (x1, x2, x3, x4, x5, x6)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x4 $ \cobj_x4 ->
    withCWString x6 $ \cstr_x6 ->
    qtc_QCommonStyle_drawItemText_h cobj_x0 cobj_x1 cobj_x2 (toCInt x3) cobj_x4 (toCBool x5) cstr_x6

instance QqdrawItemText (QCommonStyle ()) ((QPainter t1, QRect t2, Int, QPalette t4, Bool, String, ColorRole)) where
 qdrawItemText x0 (x1, x2, x3, x4, x5, x6, x7)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x4 $ \cobj_x4 ->
    withCWString x6 $ \cstr_x6 ->
    qtc_QCommonStyle_drawItemText1_h cobj_x0 cobj_x1 cobj_x2 (toCInt x3) cobj_x4 (toCBool x5) cstr_x6 (toCLong $ qEnum_toInt x7)

foreign import ccall "qtc_QCommonStyle_drawItemText1_h" qtc_QCommonStyle_drawItemText1_h :: Ptr (TQCommonStyle a) -> Ptr (TQPainter t1) -> Ptr (TQRect t2) -> CInt -> Ptr (TQPalette t4) -> CBool -> CWString -> CLong -> IO ()

instance QqdrawItemText (QCommonStyleSc a) ((QPainter t1, QRect t2, Int, QPalette t4, Bool, String, ColorRole)) where
 qdrawItemText x0 (x1, x2, x3, x4, x5, x6, x7)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x4 $ \cobj_x4 ->
    withCWString x6 $ \cstr_x6 ->
    qtc_QCommonStyle_drawItemText1_h cobj_x0 cobj_x1 cobj_x2 (toCInt x3) cobj_x4 (toCBool x5) cstr_x6 (toCLong $ qEnum_toInt x7)

instance QdrawItemText (QCommonStyle ()) ((QPainter t1, Rect, Int, QPalette t4, Bool, String)) where
 drawItemText x0 (x1, x2, x3, x4, x5, x6)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCRect x2 $ \crect_x2_x crect_x2_y  crect_x2_w crect_x2_h -> 
    withObjectPtr x4 $ \cobj_x4 ->
    withCWString x6 $ \cstr_x6 ->
    qtc_QCommonStyle_drawItemText_qth_h cobj_x0 cobj_x1 crect_x2_x crect_x2_y crect_x2_w crect_x2_h  (toCInt x3) cobj_x4 (toCBool x5) cstr_x6

foreign import ccall "qtc_QCommonStyle_drawItemText_qth_h" qtc_QCommonStyle_drawItemText_qth_h :: Ptr (TQCommonStyle a) -> Ptr (TQPainter t1) -> CInt -> CInt -> CInt -> CInt -> CInt -> Ptr (TQPalette t4) -> CBool -> CWString -> IO ()

instance QdrawItemText (QCommonStyleSc a) ((QPainter t1, Rect, Int, QPalette t4, Bool, String)) where
 drawItemText x0 (x1, x2, x3, x4, x5, x6)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCRect x2 $ \crect_x2_x crect_x2_y  crect_x2_w crect_x2_h -> 
    withObjectPtr x4 $ \cobj_x4 ->
    withCWString x6 $ \cstr_x6 ->
    qtc_QCommonStyle_drawItemText_qth_h cobj_x0 cobj_x1 crect_x2_x crect_x2_y crect_x2_w crect_x2_h  (toCInt x3) cobj_x4 (toCBool x5) cstr_x6

instance QdrawItemText (QCommonStyle ()) ((QPainter t1, Rect, Int, QPalette t4, Bool, String, ColorRole)) where
 drawItemText x0 (x1, x2, x3, x4, x5, x6, x7)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCRect x2 $ \crect_x2_x crect_x2_y  crect_x2_w crect_x2_h -> 
    withObjectPtr x4 $ \cobj_x4 ->
    withCWString x6 $ \cstr_x6 ->
    qtc_QCommonStyle_drawItemText1_qth_h cobj_x0 cobj_x1 crect_x2_x crect_x2_y crect_x2_w crect_x2_h  (toCInt x3) cobj_x4 (toCBool x5) cstr_x6 (toCLong $ qEnum_toInt x7)

foreign import ccall "qtc_QCommonStyle_drawItemText1_qth_h" qtc_QCommonStyle_drawItemText1_qth_h :: Ptr (TQCommonStyle a) -> Ptr (TQPainter t1) -> CInt -> CInt -> CInt -> CInt -> CInt -> Ptr (TQPalette t4) -> CBool -> CWString -> CLong -> IO ()

instance QdrawItemText (QCommonStyleSc a) ((QPainter t1, Rect, Int, QPalette t4, Bool, String, ColorRole)) where
 drawItemText x0 (x1, x2, x3, x4, x5, x6, x7)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCRect x2 $ \crect_x2_x crect_x2_y  crect_x2_w crect_x2_h -> 
    withObjectPtr x4 $ \cobj_x4 ->
    withCWString x6 $ \cstr_x6 ->
    qtc_QCommonStyle_drawItemText1_qth_h cobj_x0 cobj_x1 crect_x2_x crect_x2_y crect_x2_w crect_x2_h  (toCInt x3) cobj_x4 (toCBool x5) cstr_x6 (toCLong $ qEnum_toInt x7)

instance QqitemPixmapRect (QCommonStyle ()) ((QRect t1, Int, QPixmap t3)) where
 qitemPixmapRect x0 (x1, x2, x3)
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QCommonStyle_itemPixmapRect_h cobj_x0 cobj_x1 (toCInt x2) cobj_x3

foreign import ccall "qtc_QCommonStyle_itemPixmapRect_h" qtc_QCommonStyle_itemPixmapRect_h :: Ptr (TQCommonStyle a) -> Ptr (TQRect t1) -> CInt -> Ptr (TQPixmap t3) -> IO (Ptr (TQRect ()))

instance QqitemPixmapRect (QCommonStyleSc a) ((QRect t1, Int, QPixmap t3)) where
 qitemPixmapRect x0 (x1, x2, x3)
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QCommonStyle_itemPixmapRect_h cobj_x0 cobj_x1 (toCInt x2) cobj_x3

instance QitemPixmapRect (QCommonStyle ()) ((Rect, Int, QPixmap t3)) where
 itemPixmapRect x0 (x1, x2, x3)
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QCommonStyle_itemPixmapRect_qth_h cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h  (toCInt x2) cobj_x3 crect_ret_x crect_ret_y crect_ret_w crect_ret_h

foreign import ccall "qtc_QCommonStyle_itemPixmapRect_qth_h" qtc_QCommonStyle_itemPixmapRect_qth_h :: Ptr (TQCommonStyle a) -> CInt -> CInt -> CInt -> CInt -> CInt -> Ptr (TQPixmap t3) -> Ptr CInt -> Ptr CInt -> Ptr CInt -> Ptr CInt -> IO ()

instance QitemPixmapRect (QCommonStyleSc a) ((Rect, Int, QPixmap t3)) where
 itemPixmapRect x0 (x1, x2, x3)
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QCommonStyle_itemPixmapRect_qth_h cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h  (toCInt x2) cobj_x3 crect_ret_x crect_ret_y crect_ret_w crect_ret_h

instance QqitemTextRect (QCommonStyle ()) ((QFontMetrics t1, QRect t2, Int, Bool, String)) where
 qitemTextRect x0 (x1, x2, x3, x4, x5)
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withCWString x5 $ \cstr_x5 ->
    qtc_QCommonStyle_itemTextRect_h cobj_x0 cobj_x1 cobj_x2 (toCInt x3) (toCBool x4) cstr_x5

foreign import ccall "qtc_QCommonStyle_itemTextRect_h" qtc_QCommonStyle_itemTextRect_h :: Ptr (TQCommonStyle a) -> Ptr (TQFontMetrics t1) -> Ptr (TQRect t2) -> CInt -> CBool -> CWString -> IO (Ptr (TQRect ()))

instance QqitemTextRect (QCommonStyleSc a) ((QFontMetrics t1, QRect t2, Int, Bool, String)) where
 qitemTextRect x0 (x1, x2, x3, x4, x5)
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withCWString x5 $ \cstr_x5 ->
    qtc_QCommonStyle_itemTextRect_h cobj_x0 cobj_x1 cobj_x2 (toCInt x3) (toCBool x4) cstr_x5

instance QitemTextRect (QCommonStyle ()) ((QFontMetrics t1, Rect, Int, Bool, String)) where
 itemTextRect x0 (x1, x2, x3, x4, x5)
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCRect x2 $ \crect_x2_x crect_x2_y  crect_x2_w crect_x2_h -> 
    withCWString x5 $ \cstr_x5 ->
    qtc_QCommonStyle_itemTextRect_qth_h cobj_x0 cobj_x1 crect_x2_x crect_x2_y crect_x2_w crect_x2_h  (toCInt x3) (toCBool x4) cstr_x5 crect_ret_x crect_ret_y crect_ret_w crect_ret_h

foreign import ccall "qtc_QCommonStyle_itemTextRect_qth_h" qtc_QCommonStyle_itemTextRect_qth_h :: Ptr (TQCommonStyle a) -> Ptr (TQFontMetrics t1) -> CInt -> CInt -> CInt -> CInt -> CInt -> CBool -> CWString -> Ptr CInt -> Ptr CInt -> Ptr CInt -> Ptr CInt -> IO ()

instance QitemTextRect (QCommonStyleSc a) ((QFontMetrics t1, Rect, Int, Bool, String)) where
 itemTextRect x0 (x1, x2, x3, x4, x5)
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCRect x2 $ \crect_x2_x crect_x2_y  crect_x2_w crect_x2_h -> 
    withCWString x5 $ \cstr_x5 ->
    qtc_QCommonStyle_itemTextRect_qth_h cobj_x0 cobj_x1 crect_x2_x crect_x2_y crect_x2_w crect_x2_h  (toCInt x3) (toCBool x4) cstr_x5 crect_ret_x crect_ret_y crect_ret_w crect_ret_h

instance QlayoutSpacingImplementation (QCommonStyle ()) ((ControlType, ControlType, QtOrientation)) where
 layoutSpacingImplementation x0 (x1, x2, x3)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCommonStyle_layoutSpacingImplementation cobj_x0 (toCLong $ qEnum_toInt x1) (toCLong $ qEnum_toInt x2) (toCLong $ qEnum_toInt x3)

foreign import ccall "qtc_QCommonStyle_layoutSpacingImplementation" qtc_QCommonStyle_layoutSpacingImplementation :: Ptr (TQCommonStyle a) -> CLong -> CLong -> CLong -> IO CInt

instance QlayoutSpacingImplementation (QCommonStyleSc a) ((ControlType, ControlType, QtOrientation)) where
 layoutSpacingImplementation x0 (x1, x2, x3)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCommonStyle_layoutSpacingImplementation cobj_x0 (toCLong $ qEnum_toInt x1) (toCLong $ qEnum_toInt x2) (toCLong $ qEnum_toInt x3)

instance QlayoutSpacingImplementation (QCommonStyle ()) ((ControlType, ControlType, QtOrientation, QStyleOption t4)) where
 layoutSpacingImplementation x0 (x1, x2, x3, x4)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x4 $ \cobj_x4 ->
    qtc_QCommonStyle_layoutSpacingImplementation1 cobj_x0 (toCLong $ qEnum_toInt x1) (toCLong $ qEnum_toInt x2) (toCLong $ qEnum_toInt x3) cobj_x4

foreign import ccall "qtc_QCommonStyle_layoutSpacingImplementation1" qtc_QCommonStyle_layoutSpacingImplementation1 :: Ptr (TQCommonStyle a) -> CLong -> CLong -> CLong -> Ptr (TQStyleOption t4) -> IO CInt

instance QlayoutSpacingImplementation (QCommonStyleSc a) ((ControlType, ControlType, QtOrientation, QStyleOption t4)) where
 layoutSpacingImplementation x0 (x1, x2, x3, x4)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x4 $ \cobj_x4 ->
    qtc_QCommonStyle_layoutSpacingImplementation1 cobj_x0 (toCLong $ qEnum_toInt x1) (toCLong $ qEnum_toInt x2) (toCLong $ qEnum_toInt x3) cobj_x4

instance QlayoutSpacingImplementation (QCommonStyle ()) ((ControlType, ControlType, QtOrientation, QStyleOption t4, QWidget t5)) where
 layoutSpacingImplementation x0 (x1, x2, x3, x4, x5)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x4 $ \cobj_x4 ->
    withObjectPtr x5 $ \cobj_x5 ->
    qtc_QCommonStyle_layoutSpacingImplementation2 cobj_x0 (toCLong $ qEnum_toInt x1) (toCLong $ qEnum_toInt x2) (toCLong $ qEnum_toInt x3) cobj_x4 cobj_x5

foreign import ccall "qtc_QCommonStyle_layoutSpacingImplementation2" qtc_QCommonStyle_layoutSpacingImplementation2 :: Ptr (TQCommonStyle a) -> CLong -> CLong -> CLong -> Ptr (TQStyleOption t4) -> Ptr (TQWidget t5) -> IO CInt

instance QlayoutSpacingImplementation (QCommonStyleSc a) ((ControlType, ControlType, QtOrientation, QStyleOption t4, QWidget t5)) where
 layoutSpacingImplementation x0 (x1, x2, x3, x4, x5)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x4 $ \cobj_x4 ->
    withObjectPtr x5 $ \cobj_x5 ->
    qtc_QCommonStyle_layoutSpacingImplementation2 cobj_x0 (toCLong $ qEnum_toInt x1) (toCLong $ qEnum_toInt x2) (toCLong $ qEnum_toInt x3) cobj_x4 cobj_x5

instance Qpolish (QCommonStyle ()) ((QApplication t1)) where
 polish x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCommonStyle_polish1_h cobj_x0 cobj_x1

foreign import ccall "qtc_QCommonStyle_polish1_h" qtc_QCommonStyle_polish1_h :: Ptr (TQCommonStyle a) -> Ptr (TQApplication t1) -> IO ()

instance Qpolish (QCommonStyleSc a) ((QApplication t1)) where
 polish x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCommonStyle_polish1_h cobj_x0 cobj_x1

instance Qpolish (QCommonStyle ()) ((QWidget t1)) where
 polish x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCommonStyle_polish_h cobj_x0 cobj_x1

foreign import ccall "qtc_QCommonStyle_polish_h" qtc_QCommonStyle_polish_h :: Ptr (TQCommonStyle a) -> Ptr (TQWidget t1) -> IO ()

instance Qpolish (QCommonStyleSc a) ((QWidget t1)) where
 polish x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCommonStyle_polish_h cobj_x0 cobj_x1

instance QstandardPalette (QCommonStyle ()) (()) where
 standardPalette x0 ()
  = withQPaletteResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCommonStyle_standardPalette_h cobj_x0

foreign import ccall "qtc_QCommonStyle_standardPalette_h" qtc_QCommonStyle_standardPalette_h :: Ptr (TQCommonStyle a) -> IO (Ptr (TQPalette ()))

instance QstandardPalette (QCommonStyleSc a) (()) where
 standardPalette x0 ()
  = withQPaletteResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCommonStyle_standardPalette_h cobj_x0

instance Qunpolish (QCommonStyle ()) ((QApplication t1)) where
 unpolish x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCommonStyle_unpolish_h cobj_x0 cobj_x1

foreign import ccall "qtc_QCommonStyle_unpolish_h" qtc_QCommonStyle_unpolish_h :: Ptr (TQCommonStyle a) -> Ptr (TQApplication t1) -> IO ()

instance Qunpolish (QCommonStyleSc a) ((QApplication t1)) where
 unpolish x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCommonStyle_unpolish_h cobj_x0 cobj_x1

instance Qunpolish (QCommonStyle ()) ((QWidget t1)) where
 unpolish x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCommonStyle_unpolish1_h cobj_x0 cobj_x1

foreign import ccall "qtc_QCommonStyle_unpolish1_h" qtc_QCommonStyle_unpolish1_h :: Ptr (TQCommonStyle a) -> Ptr (TQWidget t1) -> IO ()

instance Qunpolish (QCommonStyleSc a) ((QWidget t1)) where
 unpolish x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCommonStyle_unpolish1_h cobj_x0 cobj_x1

instance QchildEvent (QCommonStyle ()) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCommonStyle_childEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QCommonStyle_childEvent" qtc_QCommonStyle_childEvent :: Ptr (TQCommonStyle a) -> Ptr (TQChildEvent t1) -> IO ()

instance QchildEvent (QCommonStyleSc a) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCommonStyle_childEvent cobj_x0 cobj_x1

instance QconnectNotify (QCommonStyle ()) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QCommonStyle_connectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QCommonStyle_connectNotify" qtc_QCommonStyle_connectNotify :: Ptr (TQCommonStyle a) -> CWString -> IO ()

instance QconnectNotify (QCommonStyleSc a) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QCommonStyle_connectNotify cobj_x0 cstr_x1

instance QcustomEvent (QCommonStyle ()) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCommonStyle_customEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QCommonStyle_customEvent" qtc_QCommonStyle_customEvent :: Ptr (TQCommonStyle a) -> Ptr (TQEvent t1) -> IO ()

instance QcustomEvent (QCommonStyleSc a) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCommonStyle_customEvent cobj_x0 cobj_x1

instance QdisconnectNotify (QCommonStyle ()) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QCommonStyle_disconnectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QCommonStyle_disconnectNotify" qtc_QCommonStyle_disconnectNotify :: Ptr (TQCommonStyle a) -> CWString -> IO ()

instance QdisconnectNotify (QCommonStyleSc a) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QCommonStyle_disconnectNotify cobj_x0 cstr_x1

instance Qevent (QCommonStyle ()) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCommonStyle_event_h cobj_x0 cobj_x1

foreign import ccall "qtc_QCommonStyle_event_h" qtc_QCommonStyle_event_h :: Ptr (TQCommonStyle a) -> Ptr (TQEvent t1) -> IO CBool

instance Qevent (QCommonStyleSc a) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCommonStyle_event_h cobj_x0 cobj_x1

instance QeventFilter (QCommonStyle ()) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QCommonStyle_eventFilter_h cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QCommonStyle_eventFilter_h" qtc_QCommonStyle_eventFilter_h :: Ptr (TQCommonStyle a) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO CBool

instance QeventFilter (QCommonStyleSc a) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QCommonStyle_eventFilter_h cobj_x0 cobj_x1 cobj_x2

instance Qreceivers (QCommonStyle ()) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QCommonStyle_receivers cobj_x0 cstr_x1

foreign import ccall "qtc_QCommonStyle_receivers" qtc_QCommonStyle_receivers :: Ptr (TQCommonStyle a) -> CWString -> IO CInt

instance Qreceivers (QCommonStyleSc a) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QCommonStyle_receivers cobj_x0 cstr_x1

instance Qsender (QCommonStyle ()) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCommonStyle_sender cobj_x0

foreign import ccall "qtc_QCommonStyle_sender" qtc_QCommonStyle_sender :: Ptr (TQCommonStyle a) -> IO (Ptr (TQObject ()))

instance Qsender (QCommonStyleSc a) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCommonStyle_sender cobj_x0

instance QtimerEvent (QCommonStyle ()) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCommonStyle_timerEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QCommonStyle_timerEvent" qtc_QCommonStyle_timerEvent :: Ptr (TQCommonStyle a) -> Ptr (TQTimerEvent t1) -> IO ()

instance QtimerEvent (QCommonStyleSc a) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCommonStyle_timerEvent cobj_x0 cobj_x1

