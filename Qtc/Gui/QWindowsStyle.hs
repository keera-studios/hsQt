{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QWindowsStyle.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:16
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QWindowsStyle (
  qWindowsStyle
  ,qWindowsStyle_delete
  ,qWindowsStyle_deleteLater
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

instance QuserMethod (QWindowsStyle ()) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QWindowsStyle_userMethod cobj_qobj (toCInt evid)

foreign import ccall "qtc_QWindowsStyle_userMethod" qtc_QWindowsStyle_userMethod :: Ptr (TQWindowsStyle a) -> CInt -> IO ()

instance QuserMethod (QWindowsStyleSc a) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QWindowsStyle_userMethod cobj_qobj (toCInt evid)

instance QuserMethod (QWindowsStyle ()) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QWindowsStyle_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

foreign import ccall "qtc_QWindowsStyle_userMethodVariant" qtc_QWindowsStyle_userMethodVariant :: Ptr (TQWindowsStyle a) -> CInt -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))

instance QuserMethod (QWindowsStyleSc a) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QWindowsStyle_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

qWindowsStyle :: () -> IO (QWindowsStyle ())
qWindowsStyle ()
  = withQWindowsStyleResult $
    qtc_QWindowsStyle

foreign import ccall "qtc_QWindowsStyle" qtc_QWindowsStyle :: IO (Ptr (TQWindowsStyle ()))

qWindowsStyle_delete :: QWindowsStyle a -> IO ()
qWindowsStyle_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWindowsStyle_delete cobj_x0

foreign import ccall "qtc_QWindowsStyle_delete" qtc_QWindowsStyle_delete :: Ptr (TQWindowsStyle a) -> IO ()

qWindowsStyle_deleteLater :: QWindowsStyle a -> IO ()
qWindowsStyle_deleteLater x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWindowsStyle_deleteLater cobj_x0

foreign import ccall "qtc_QWindowsStyle_deleteLater" qtc_QWindowsStyle_deleteLater :: Ptr (TQWindowsStyle a) -> IO ()

instance QdrawComplexControl (QWindowsStyle ()) ((ComplexControl, QStyleOptionComplex t2, QPainter t3, QWidget t4)) where
 drawComplexControl x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    withObjectPtr x4 $ \cobj_x4 ->
    qtc_QWindowsStyle_drawComplexControl_h cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 cobj_x3 cobj_x4

foreign import ccall "qtc_QWindowsStyle_drawComplexControl_h" qtc_QWindowsStyle_drawComplexControl_h :: Ptr (TQWindowsStyle a) -> CLong -> Ptr (TQStyleOptionComplex t2) -> Ptr (TQPainter t3) -> Ptr (TQWidget t4) -> IO ()

instance QdrawComplexControl (QWindowsStyleSc a) ((ComplexControl, QStyleOptionComplex t2, QPainter t3, QWidget t4)) where
 drawComplexControl x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    withObjectPtr x4 $ \cobj_x4 ->
    qtc_QWindowsStyle_drawComplexControl_h cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 cobj_x3 cobj_x4

instance QdrawControl (QWindowsStyle ()) ((ControlElement, QStyleOption t2, QPainter t3, QWidget t4)) where
 drawControl x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    withObjectPtr x4 $ \cobj_x4 ->
    qtc_QWindowsStyle_drawControl_h cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 cobj_x3 cobj_x4

foreign import ccall "qtc_QWindowsStyle_drawControl_h" qtc_QWindowsStyle_drawControl_h :: Ptr (TQWindowsStyle a) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQPainter t3) -> Ptr (TQWidget t4) -> IO ()

instance QdrawControl (QWindowsStyleSc a) ((ControlElement, QStyleOption t2, QPainter t3, QWidget t4)) where
 drawControl x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    withObjectPtr x4 $ \cobj_x4 ->
    qtc_QWindowsStyle_drawControl_h cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 cobj_x3 cobj_x4

instance QdrawPrimitive (QWindowsStyle ()) ((PrimitiveElement, QStyleOption t2, QPainter t3, QWidget t4)) where
 drawPrimitive x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    withObjectPtr x4 $ \cobj_x4 ->
    qtc_QWindowsStyle_drawPrimitive_h cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 cobj_x3 cobj_x4

foreign import ccall "qtc_QWindowsStyle_drawPrimitive_h" qtc_QWindowsStyle_drawPrimitive_h :: Ptr (TQWindowsStyle a) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQPainter t3) -> Ptr (TQWidget t4) -> IO ()

instance QdrawPrimitive (QWindowsStyleSc a) ((PrimitiveElement, QStyleOption t2, QPainter t3, QWidget t4)) where
 drawPrimitive x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    withObjectPtr x4 $ \cobj_x4 ->
    qtc_QWindowsStyle_drawPrimitive_h cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 cobj_x3 cobj_x4

instance QgeneratedIconPixmap (QWindowsStyle ()) ((QIconMode, QPixmap t2, QStyleOption t3)) where
 generatedIconPixmap x0 (x1, x2, x3)
  = withQPixmapResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QWindowsStyle_generatedIconPixmap_h cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 cobj_x3

foreign import ccall "qtc_QWindowsStyle_generatedIconPixmap_h" qtc_QWindowsStyle_generatedIconPixmap_h :: Ptr (TQWindowsStyle a) -> CLong -> Ptr (TQPixmap t2) -> Ptr (TQStyleOption t3) -> IO (Ptr (TQPixmap ()))

instance QgeneratedIconPixmap (QWindowsStyleSc a) ((QIconMode, QPixmap t2, QStyleOption t3)) where
 generatedIconPixmap x0 (x1, x2, x3)
  = withQPixmapResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QWindowsStyle_generatedIconPixmap_h cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 cobj_x3

instance QhitTestComplexControl (QWindowsStyle ()) ((ComplexControl, QStyleOptionComplex t2, Point, QWidget t4)) where
 hitTestComplexControl x0 (x1, x2, x3, x4)
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withCPoint x3 $ \cpoint_x3_x cpoint_x3_y -> 
    withObjectPtr x4 $ \cobj_x4 ->
    qtc_QWindowsStyle_hitTestComplexControl_qth_h cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 cpoint_x3_x cpoint_x3_y  cobj_x4

foreign import ccall "qtc_QWindowsStyle_hitTestComplexControl_qth_h" qtc_QWindowsStyle_hitTestComplexControl_qth_h :: Ptr (TQWindowsStyle a) -> CLong -> Ptr (TQStyleOptionComplex t2) -> CInt -> CInt -> Ptr (TQWidget t4) -> IO CLong

instance QhitTestComplexControl (QWindowsStyleSc a) ((ComplexControl, QStyleOptionComplex t2, Point, QWidget t4)) where
 hitTestComplexControl x0 (x1, x2, x3, x4)
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withCPoint x3 $ \cpoint_x3_x cpoint_x3_y -> 
    withObjectPtr x4 $ \cobj_x4 ->
    qtc_QWindowsStyle_hitTestComplexControl_qth_h cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 cpoint_x3_x cpoint_x3_y  cobj_x4

instance QqhitTestComplexControl (QWindowsStyle ()) ((ComplexControl, QStyleOptionComplex t2, QPoint t3, QWidget t4)) where
 qhitTestComplexControl x0 (x1, x2, x3, x4)
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    withObjectPtr x4 $ \cobj_x4 ->
    qtc_QWindowsStyle_hitTestComplexControl_h cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 cobj_x3 cobj_x4

foreign import ccall "qtc_QWindowsStyle_hitTestComplexControl_h" qtc_QWindowsStyle_hitTestComplexControl_h :: Ptr (TQWindowsStyle a) -> CLong -> Ptr (TQStyleOptionComplex t2) -> Ptr (TQPoint t3) -> Ptr (TQWidget t4) -> IO CLong

instance QqhitTestComplexControl (QWindowsStyleSc a) ((ComplexControl, QStyleOptionComplex t2, QPoint t3, QWidget t4)) where
 qhitTestComplexControl x0 (x1, x2, x3, x4)
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    withObjectPtr x4 $ \cobj_x4 ->
    qtc_QWindowsStyle_hitTestComplexControl_h cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 cobj_x3 cobj_x4

instance QpixelMetric (QWindowsStyle ()) ((PixelMetric, QStyleOption t2, QWidget t3)) where
 pixelMetric x0 (x1, x2, x3)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QWindowsStyle_pixelMetric_h cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 cobj_x3

foreign import ccall "qtc_QWindowsStyle_pixelMetric_h" qtc_QWindowsStyle_pixelMetric_h :: Ptr (TQWindowsStyle a) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQWidget t3) -> IO CInt

instance QpixelMetric (QWindowsStyleSc a) ((PixelMetric, QStyleOption t2, QWidget t3)) where
 pixelMetric x0 (x1, x2, x3)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QWindowsStyle_pixelMetric_h cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 cobj_x3

instance QqsizeFromContents (QWindowsStyle ()) ((ContentsType, QStyleOption t2, QSize t3, QWidget t4)) where
 qsizeFromContents x0 (x1, x2, x3, x4)
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    withObjectPtr x4 $ \cobj_x4 ->
    qtc_QWindowsStyle_sizeFromContents_h cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 cobj_x3 cobj_x4

foreign import ccall "qtc_QWindowsStyle_sizeFromContents_h" qtc_QWindowsStyle_sizeFromContents_h :: Ptr (TQWindowsStyle a) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQSize t3) -> Ptr (TQWidget t4) -> IO (Ptr (TQSize ()))

instance QqsizeFromContents (QWindowsStyleSc a) ((ContentsType, QStyleOption t2, QSize t3, QWidget t4)) where
 qsizeFromContents x0 (x1, x2, x3, x4)
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    withObjectPtr x4 $ \cobj_x4 ->
    qtc_QWindowsStyle_sizeFromContents_h cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 cobj_x3 cobj_x4

instance QsizeFromContents (QWindowsStyle ()) ((ContentsType, QStyleOption t2, Size, QWidget t4)) where
 sizeFromContents x0 (x1, x2, x3, x4)
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withCSize x3 $ \csize_x3_w csize_x3_h -> 
    withObjectPtr x4 $ \cobj_x4 ->
    qtc_QWindowsStyle_sizeFromContents_qth_h cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 csize_x3_w csize_x3_h  cobj_x4 csize_ret_w csize_ret_h

foreign import ccall "qtc_QWindowsStyle_sizeFromContents_qth_h" qtc_QWindowsStyle_sizeFromContents_qth_h :: Ptr (TQWindowsStyle a) -> CLong -> Ptr (TQStyleOption t2) -> CInt -> CInt -> Ptr (TQWidget t4) -> Ptr CInt -> Ptr CInt -> IO ()

instance QsizeFromContents (QWindowsStyleSc a) ((ContentsType, QStyleOption t2, Size, QWidget t4)) where
 sizeFromContents x0 (x1, x2, x3, x4)
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withCSize x3 $ \csize_x3_w csize_x3_h -> 
    withObjectPtr x4 $ \cobj_x4 ->
    qtc_QWindowsStyle_sizeFromContents_qth_h cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 csize_x3_w csize_x3_h  cobj_x4 csize_ret_w csize_ret_h

instance QstandardIconImplementation (QWindowsStyle ()) ((StandardPixmap)) where
 standardIconImplementation x0 (x1)
  = withQIconResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWindowsStyle_standardIconImplementation cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QWindowsStyle_standardIconImplementation" qtc_QWindowsStyle_standardIconImplementation :: Ptr (TQWindowsStyle a) -> CLong -> IO (Ptr (TQIcon ()))

instance QstandardIconImplementation (QWindowsStyleSc a) ((StandardPixmap)) where
 standardIconImplementation x0 (x1)
  = withQIconResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWindowsStyle_standardIconImplementation cobj_x0 (toCLong $ qEnum_toInt x1)

instance QstandardIconImplementation (QWindowsStyle ()) ((StandardPixmap, QStyleOption t2)) where
 standardIconImplementation x0 (x1, x2)
  = withQIconResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QWindowsStyle_standardIconImplementation1 cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2

foreign import ccall "qtc_QWindowsStyle_standardIconImplementation1" qtc_QWindowsStyle_standardIconImplementation1 :: Ptr (TQWindowsStyle a) -> CLong -> Ptr (TQStyleOption t2) -> IO (Ptr (TQIcon ()))

instance QstandardIconImplementation (QWindowsStyleSc a) ((StandardPixmap, QStyleOption t2)) where
 standardIconImplementation x0 (x1, x2)
  = withQIconResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QWindowsStyle_standardIconImplementation1 cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2

instance QstandardIconImplementation (QWindowsStyle ()) ((StandardPixmap, QStyleOption t2, QWidget t3)) where
 standardIconImplementation x0 (x1, x2, x3)
  = withQIconResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QWindowsStyle_standardIconImplementation2 cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 cobj_x3

foreign import ccall "qtc_QWindowsStyle_standardIconImplementation2" qtc_QWindowsStyle_standardIconImplementation2 :: Ptr (TQWindowsStyle a) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQWidget t3) -> IO (Ptr (TQIcon ()))

instance QstandardIconImplementation (QWindowsStyleSc a) ((StandardPixmap, QStyleOption t2, QWidget t3)) where
 standardIconImplementation x0 (x1, x2, x3)
  = withQIconResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QWindowsStyle_standardIconImplementation2 cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 cobj_x3

instance QstandardPixmap (QWindowsStyle ()) ((StandardPixmap)) where
 standardPixmap x0 (x1)
  = withQPixmapResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWindowsStyle_standardPixmap_h cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QWindowsStyle_standardPixmap_h" qtc_QWindowsStyle_standardPixmap_h :: Ptr (TQWindowsStyle a) -> CLong -> IO (Ptr (TQPixmap ()))

instance QstandardPixmap (QWindowsStyleSc a) ((StandardPixmap)) where
 standardPixmap x0 (x1)
  = withQPixmapResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWindowsStyle_standardPixmap_h cobj_x0 (toCLong $ qEnum_toInt x1)

instance QstandardPixmap (QWindowsStyle ()) ((StandardPixmap, QStyleOption t2)) where
 standardPixmap x0 (x1, x2)
  = withQPixmapResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QWindowsStyle_standardPixmap1_h cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2

foreign import ccall "qtc_QWindowsStyle_standardPixmap1_h" qtc_QWindowsStyle_standardPixmap1_h :: Ptr (TQWindowsStyle a) -> CLong -> Ptr (TQStyleOption t2) -> IO (Ptr (TQPixmap ()))

instance QstandardPixmap (QWindowsStyleSc a) ((StandardPixmap, QStyleOption t2)) where
 standardPixmap x0 (x1, x2)
  = withQPixmapResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QWindowsStyle_standardPixmap1_h cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2

instance QstandardPixmap (QWindowsStyle ()) ((StandardPixmap, QStyleOption t2, QWidget t3)) where
 standardPixmap x0 (x1, x2, x3)
  = withQPixmapResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QWindowsStyle_standardPixmap2_h cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 cobj_x3

foreign import ccall "qtc_QWindowsStyle_standardPixmap2_h" qtc_QWindowsStyle_standardPixmap2_h :: Ptr (TQWindowsStyle a) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQWidget t3) -> IO (Ptr (TQPixmap ()))

instance QstandardPixmap (QWindowsStyleSc a) ((StandardPixmap, QStyleOption t2, QWidget t3)) where
 standardPixmap x0 (x1, x2, x3)
  = withQPixmapResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QWindowsStyle_standardPixmap2_h cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 cobj_x3

instance QstyleHint (QWindowsStyle ()) ((QStyleStyleHint, QStyleOption t2, QWidget t3, QStyleHintReturn t4)) (IO (Int)) where
 styleHint x0 (x1, x2, x3, x4)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    withObjectPtr x4 $ \cobj_x4 ->
    qtc_QWindowsStyle_styleHint_h cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 cobj_x3 cobj_x4

foreign import ccall "qtc_QWindowsStyle_styleHint_h" qtc_QWindowsStyle_styleHint_h :: Ptr (TQWindowsStyle a) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQWidget t3) -> Ptr (TQStyleHintReturn t4) -> IO CInt

instance QstyleHint (QWindowsStyleSc a) ((QStyleStyleHint, QStyleOption t2, QWidget t3, QStyleHintReturn t4)) (IO (Int)) where
 styleHint x0 (x1, x2, x3, x4)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    withObjectPtr x4 $ \cobj_x4 ->
    qtc_QWindowsStyle_styleHint_h cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 cobj_x3 cobj_x4

instance QqsubControlRect (QWindowsStyle ()) ((ComplexControl, QStyleOptionComplex t2, SubControl, QWidget t4)) where
 qsubControlRect x0 (x1, x2, x3, x4)
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x4 $ \cobj_x4 ->
    qtc_QWindowsStyle_subControlRect_h cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 (toCLong $ qEnum_toInt x3) cobj_x4

foreign import ccall "qtc_QWindowsStyle_subControlRect_h" qtc_QWindowsStyle_subControlRect_h :: Ptr (TQWindowsStyle a) -> CLong -> Ptr (TQStyleOptionComplex t2) -> CLong -> Ptr (TQWidget t4) -> IO (Ptr (TQRect ()))

instance QqsubControlRect (QWindowsStyleSc a) ((ComplexControl, QStyleOptionComplex t2, SubControl, QWidget t4)) where
 qsubControlRect x0 (x1, x2, x3, x4)
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x4 $ \cobj_x4 ->
    qtc_QWindowsStyle_subControlRect_h cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 (toCLong $ qEnum_toInt x3) cobj_x4

instance QsubControlRect (QWindowsStyle ()) ((ComplexControl, QStyleOptionComplex t2, SubControl, QWidget t4)) where
 subControlRect x0 (x1, x2, x3, x4)
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x4 $ \cobj_x4 ->
    qtc_QWindowsStyle_subControlRect_qth_h cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 (toCLong $ qEnum_toInt x3) cobj_x4 crect_ret_x crect_ret_y crect_ret_w crect_ret_h

foreign import ccall "qtc_QWindowsStyle_subControlRect_qth_h" qtc_QWindowsStyle_subControlRect_qth_h :: Ptr (TQWindowsStyle a) -> CLong -> Ptr (TQStyleOptionComplex t2) -> CLong -> Ptr (TQWidget t4) -> Ptr CInt -> Ptr CInt -> Ptr CInt -> Ptr CInt -> IO ()

instance QsubControlRect (QWindowsStyleSc a) ((ComplexControl, QStyleOptionComplex t2, SubControl, QWidget t4)) where
 subControlRect x0 (x1, x2, x3, x4)
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x4 $ \cobj_x4 ->
    qtc_QWindowsStyle_subControlRect_qth_h cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 (toCLong $ qEnum_toInt x3) cobj_x4 crect_ret_x crect_ret_y crect_ret_w crect_ret_h

instance QqsubElementRect (QWindowsStyle ()) ((SubElement, QStyleOption t2, QWidget t3)) where
 qsubElementRect x0 (x1, x2, x3)
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QWindowsStyle_subElementRect_h cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 cobj_x3

foreign import ccall "qtc_QWindowsStyle_subElementRect_h" qtc_QWindowsStyle_subElementRect_h :: Ptr (TQWindowsStyle a) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQWidget t3) -> IO (Ptr (TQRect ()))

instance QqsubElementRect (QWindowsStyleSc a) ((SubElement, QStyleOption t2, QWidget t3)) where
 qsubElementRect x0 (x1, x2, x3)
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QWindowsStyle_subElementRect_h cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 cobj_x3

instance QsubElementRect (QWindowsStyle ()) ((SubElement, QStyleOption t2, QWidget t3)) where
 subElementRect x0 (x1, x2, x3)
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QWindowsStyle_subElementRect_qth_h cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 cobj_x3 crect_ret_x crect_ret_y crect_ret_w crect_ret_h

foreign import ccall "qtc_QWindowsStyle_subElementRect_qth_h" qtc_QWindowsStyle_subElementRect_qth_h :: Ptr (TQWindowsStyle a) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQWidget t3) -> Ptr CInt -> Ptr CInt -> Ptr CInt -> Ptr CInt -> IO ()

instance QsubElementRect (QWindowsStyleSc a) ((SubElement, QStyleOption t2, QWidget t3)) where
 subElementRect x0 (x1, x2, x3)
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QWindowsStyle_subElementRect_qth_h cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 cobj_x3 crect_ret_x crect_ret_y crect_ret_w crect_ret_h

instance QqdrawItemPixmap (QWindowsStyle ()) ((QPainter t1, QRect t2, Int, QPixmap t4)) where
 qdrawItemPixmap x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x4 $ \cobj_x4 ->
    qtc_QWindowsStyle_drawItemPixmap_h cobj_x0 cobj_x1 cobj_x2 (toCInt x3) cobj_x4

foreign import ccall "qtc_QWindowsStyle_drawItemPixmap_h" qtc_QWindowsStyle_drawItemPixmap_h :: Ptr (TQWindowsStyle a) -> Ptr (TQPainter t1) -> Ptr (TQRect t2) -> CInt -> Ptr (TQPixmap t4) -> IO ()

instance QqdrawItemPixmap (QWindowsStyleSc a) ((QPainter t1, QRect t2, Int, QPixmap t4)) where
 qdrawItemPixmap x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x4 $ \cobj_x4 ->
    qtc_QWindowsStyle_drawItemPixmap_h cobj_x0 cobj_x1 cobj_x2 (toCInt x3) cobj_x4

instance QdrawItemPixmap (QWindowsStyle ()) ((QPainter t1, Rect, Int, QPixmap t4)) where
 drawItemPixmap x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCRect x2 $ \crect_x2_x crect_x2_y  crect_x2_w crect_x2_h -> 
    withObjectPtr x4 $ \cobj_x4 ->
    qtc_QWindowsStyle_drawItemPixmap_qth_h cobj_x0 cobj_x1 crect_x2_x crect_x2_y crect_x2_w crect_x2_h  (toCInt x3) cobj_x4

foreign import ccall "qtc_QWindowsStyle_drawItemPixmap_qth_h" qtc_QWindowsStyle_drawItemPixmap_qth_h :: Ptr (TQWindowsStyle a) -> Ptr (TQPainter t1) -> CInt -> CInt -> CInt -> CInt -> CInt -> Ptr (TQPixmap t4) -> IO ()

instance QdrawItemPixmap (QWindowsStyleSc a) ((QPainter t1, Rect, Int, QPixmap t4)) where
 drawItemPixmap x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCRect x2 $ \crect_x2_x crect_x2_y  crect_x2_w crect_x2_h -> 
    withObjectPtr x4 $ \cobj_x4 ->
    qtc_QWindowsStyle_drawItemPixmap_qth_h cobj_x0 cobj_x1 crect_x2_x crect_x2_y crect_x2_w crect_x2_h  (toCInt x3) cobj_x4

instance QqdrawItemText (QWindowsStyle ()) ((QPainter t1, QRect t2, Int, QPalette t4, Bool, String)) where
 qdrawItemText x0 (x1, x2, x3, x4, x5, x6)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x4 $ \cobj_x4 ->
    withCWString x6 $ \cstr_x6 ->
    qtc_QWindowsStyle_drawItemText_h cobj_x0 cobj_x1 cobj_x2 (toCInt x3) cobj_x4 (toCBool x5) cstr_x6

foreign import ccall "qtc_QWindowsStyle_drawItemText_h" qtc_QWindowsStyle_drawItemText_h :: Ptr (TQWindowsStyle a) -> Ptr (TQPainter t1) -> Ptr (TQRect t2) -> CInt -> Ptr (TQPalette t4) -> CBool -> CWString -> IO ()

instance QqdrawItemText (QWindowsStyleSc a) ((QPainter t1, QRect t2, Int, QPalette t4, Bool, String)) where
 qdrawItemText x0 (x1, x2, x3, x4, x5, x6)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x4 $ \cobj_x4 ->
    withCWString x6 $ \cstr_x6 ->
    qtc_QWindowsStyle_drawItemText_h cobj_x0 cobj_x1 cobj_x2 (toCInt x3) cobj_x4 (toCBool x5) cstr_x6

instance QqdrawItemText (QWindowsStyle ()) ((QPainter t1, QRect t2, Int, QPalette t4, Bool, String, ColorRole)) where
 qdrawItemText x0 (x1, x2, x3, x4, x5, x6, x7)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x4 $ \cobj_x4 ->
    withCWString x6 $ \cstr_x6 ->
    qtc_QWindowsStyle_drawItemText1_h cobj_x0 cobj_x1 cobj_x2 (toCInt x3) cobj_x4 (toCBool x5) cstr_x6 (toCLong $ qEnum_toInt x7)

foreign import ccall "qtc_QWindowsStyle_drawItemText1_h" qtc_QWindowsStyle_drawItemText1_h :: Ptr (TQWindowsStyle a) -> Ptr (TQPainter t1) -> Ptr (TQRect t2) -> CInt -> Ptr (TQPalette t4) -> CBool -> CWString -> CLong -> IO ()

instance QqdrawItemText (QWindowsStyleSc a) ((QPainter t1, QRect t2, Int, QPalette t4, Bool, String, ColorRole)) where
 qdrawItemText x0 (x1, x2, x3, x4, x5, x6, x7)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x4 $ \cobj_x4 ->
    withCWString x6 $ \cstr_x6 ->
    qtc_QWindowsStyle_drawItemText1_h cobj_x0 cobj_x1 cobj_x2 (toCInt x3) cobj_x4 (toCBool x5) cstr_x6 (toCLong $ qEnum_toInt x7)

instance QdrawItemText (QWindowsStyle ()) ((QPainter t1, Rect, Int, QPalette t4, Bool, String)) where
 drawItemText x0 (x1, x2, x3, x4, x5, x6)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCRect x2 $ \crect_x2_x crect_x2_y  crect_x2_w crect_x2_h -> 
    withObjectPtr x4 $ \cobj_x4 ->
    withCWString x6 $ \cstr_x6 ->
    qtc_QWindowsStyle_drawItemText_qth_h cobj_x0 cobj_x1 crect_x2_x crect_x2_y crect_x2_w crect_x2_h  (toCInt x3) cobj_x4 (toCBool x5) cstr_x6

foreign import ccall "qtc_QWindowsStyle_drawItemText_qth_h" qtc_QWindowsStyle_drawItemText_qth_h :: Ptr (TQWindowsStyle a) -> Ptr (TQPainter t1) -> CInt -> CInt -> CInt -> CInt -> CInt -> Ptr (TQPalette t4) -> CBool -> CWString -> IO ()

instance QdrawItemText (QWindowsStyleSc a) ((QPainter t1, Rect, Int, QPalette t4, Bool, String)) where
 drawItemText x0 (x1, x2, x3, x4, x5, x6)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCRect x2 $ \crect_x2_x crect_x2_y  crect_x2_w crect_x2_h -> 
    withObjectPtr x4 $ \cobj_x4 ->
    withCWString x6 $ \cstr_x6 ->
    qtc_QWindowsStyle_drawItemText_qth_h cobj_x0 cobj_x1 crect_x2_x crect_x2_y crect_x2_w crect_x2_h  (toCInt x3) cobj_x4 (toCBool x5) cstr_x6

instance QdrawItemText (QWindowsStyle ()) ((QPainter t1, Rect, Int, QPalette t4, Bool, String, ColorRole)) where
 drawItemText x0 (x1, x2, x3, x4, x5, x6, x7)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCRect x2 $ \crect_x2_x crect_x2_y  crect_x2_w crect_x2_h -> 
    withObjectPtr x4 $ \cobj_x4 ->
    withCWString x6 $ \cstr_x6 ->
    qtc_QWindowsStyle_drawItemText1_qth_h cobj_x0 cobj_x1 crect_x2_x crect_x2_y crect_x2_w crect_x2_h  (toCInt x3) cobj_x4 (toCBool x5) cstr_x6 (toCLong $ qEnum_toInt x7)

foreign import ccall "qtc_QWindowsStyle_drawItemText1_qth_h" qtc_QWindowsStyle_drawItemText1_qth_h :: Ptr (TQWindowsStyle a) -> Ptr (TQPainter t1) -> CInt -> CInt -> CInt -> CInt -> CInt -> Ptr (TQPalette t4) -> CBool -> CWString -> CLong -> IO ()

instance QdrawItemText (QWindowsStyleSc a) ((QPainter t1, Rect, Int, QPalette t4, Bool, String, ColorRole)) where
 drawItemText x0 (x1, x2, x3, x4, x5, x6, x7)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCRect x2 $ \crect_x2_x crect_x2_y  crect_x2_w crect_x2_h -> 
    withObjectPtr x4 $ \cobj_x4 ->
    withCWString x6 $ \cstr_x6 ->
    qtc_QWindowsStyle_drawItemText1_qth_h cobj_x0 cobj_x1 crect_x2_x crect_x2_y crect_x2_w crect_x2_h  (toCInt x3) cobj_x4 (toCBool x5) cstr_x6 (toCLong $ qEnum_toInt x7)

instance QqitemPixmapRect (QWindowsStyle ()) ((QRect t1, Int, QPixmap t3)) where
 qitemPixmapRect x0 (x1, x2, x3)
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QWindowsStyle_itemPixmapRect_h cobj_x0 cobj_x1 (toCInt x2) cobj_x3

foreign import ccall "qtc_QWindowsStyle_itemPixmapRect_h" qtc_QWindowsStyle_itemPixmapRect_h :: Ptr (TQWindowsStyle a) -> Ptr (TQRect t1) -> CInt -> Ptr (TQPixmap t3) -> IO (Ptr (TQRect ()))

instance QqitemPixmapRect (QWindowsStyleSc a) ((QRect t1, Int, QPixmap t3)) where
 qitemPixmapRect x0 (x1, x2, x3)
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QWindowsStyle_itemPixmapRect_h cobj_x0 cobj_x1 (toCInt x2) cobj_x3

instance QitemPixmapRect (QWindowsStyle ()) ((Rect, Int, QPixmap t3)) where
 itemPixmapRect x0 (x1, x2, x3)
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QWindowsStyle_itemPixmapRect_qth_h cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h  (toCInt x2) cobj_x3 crect_ret_x crect_ret_y crect_ret_w crect_ret_h

foreign import ccall "qtc_QWindowsStyle_itemPixmapRect_qth_h" qtc_QWindowsStyle_itemPixmapRect_qth_h :: Ptr (TQWindowsStyle a) -> CInt -> CInt -> CInt -> CInt -> CInt -> Ptr (TQPixmap t3) -> Ptr CInt -> Ptr CInt -> Ptr CInt -> Ptr CInt -> IO ()

instance QitemPixmapRect (QWindowsStyleSc a) ((Rect, Int, QPixmap t3)) where
 itemPixmapRect x0 (x1, x2, x3)
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QWindowsStyle_itemPixmapRect_qth_h cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h  (toCInt x2) cobj_x3 crect_ret_x crect_ret_y crect_ret_w crect_ret_h

instance QqitemTextRect (QWindowsStyle ()) ((QFontMetrics t1, QRect t2, Int, Bool, String)) where
 qitemTextRect x0 (x1, x2, x3, x4, x5)
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withCWString x5 $ \cstr_x5 ->
    qtc_QWindowsStyle_itemTextRect_h cobj_x0 cobj_x1 cobj_x2 (toCInt x3) (toCBool x4) cstr_x5

foreign import ccall "qtc_QWindowsStyle_itemTextRect_h" qtc_QWindowsStyle_itemTextRect_h :: Ptr (TQWindowsStyle a) -> Ptr (TQFontMetrics t1) -> Ptr (TQRect t2) -> CInt -> CBool -> CWString -> IO (Ptr (TQRect ()))

instance QqitemTextRect (QWindowsStyleSc a) ((QFontMetrics t1, QRect t2, Int, Bool, String)) where
 qitemTextRect x0 (x1, x2, x3, x4, x5)
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withCWString x5 $ \cstr_x5 ->
    qtc_QWindowsStyle_itemTextRect_h cobj_x0 cobj_x1 cobj_x2 (toCInt x3) (toCBool x4) cstr_x5

instance QitemTextRect (QWindowsStyle ()) ((QFontMetrics t1, Rect, Int, Bool, String)) where
 itemTextRect x0 (x1, x2, x3, x4, x5)
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCRect x2 $ \crect_x2_x crect_x2_y  crect_x2_w crect_x2_h -> 
    withCWString x5 $ \cstr_x5 ->
    qtc_QWindowsStyle_itemTextRect_qth_h cobj_x0 cobj_x1 crect_x2_x crect_x2_y crect_x2_w crect_x2_h  (toCInt x3) (toCBool x4) cstr_x5 crect_ret_x crect_ret_y crect_ret_w crect_ret_h

foreign import ccall "qtc_QWindowsStyle_itemTextRect_qth_h" qtc_QWindowsStyle_itemTextRect_qth_h :: Ptr (TQWindowsStyle a) -> Ptr (TQFontMetrics t1) -> CInt -> CInt -> CInt -> CInt -> CInt -> CBool -> CWString -> Ptr CInt -> Ptr CInt -> Ptr CInt -> Ptr CInt -> IO ()

instance QitemTextRect (QWindowsStyleSc a) ((QFontMetrics t1, Rect, Int, Bool, String)) where
 itemTextRect x0 (x1, x2, x3, x4, x5)
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCRect x2 $ \crect_x2_x crect_x2_y  crect_x2_w crect_x2_h -> 
    withCWString x5 $ \cstr_x5 ->
    qtc_QWindowsStyle_itemTextRect_qth_h cobj_x0 cobj_x1 crect_x2_x crect_x2_y crect_x2_w crect_x2_h  (toCInt x3) (toCBool x4) cstr_x5 crect_ret_x crect_ret_y crect_ret_w crect_ret_h

instance QlayoutSpacingImplementation (QWindowsStyle ()) ((ControlType, ControlType, QtOrientation)) where
 layoutSpacingImplementation x0 (x1, x2, x3)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWindowsStyle_layoutSpacingImplementation cobj_x0 (toCLong $ qEnum_toInt x1) (toCLong $ qEnum_toInt x2) (toCLong $ qEnum_toInt x3)

foreign import ccall "qtc_QWindowsStyle_layoutSpacingImplementation" qtc_QWindowsStyle_layoutSpacingImplementation :: Ptr (TQWindowsStyle a) -> CLong -> CLong -> CLong -> IO CInt

instance QlayoutSpacingImplementation (QWindowsStyleSc a) ((ControlType, ControlType, QtOrientation)) where
 layoutSpacingImplementation x0 (x1, x2, x3)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWindowsStyle_layoutSpacingImplementation cobj_x0 (toCLong $ qEnum_toInt x1) (toCLong $ qEnum_toInt x2) (toCLong $ qEnum_toInt x3)

instance QlayoutSpacingImplementation (QWindowsStyle ()) ((ControlType, ControlType, QtOrientation, QStyleOption t4)) where
 layoutSpacingImplementation x0 (x1, x2, x3, x4)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x4 $ \cobj_x4 ->
    qtc_QWindowsStyle_layoutSpacingImplementation1 cobj_x0 (toCLong $ qEnum_toInt x1) (toCLong $ qEnum_toInt x2) (toCLong $ qEnum_toInt x3) cobj_x4

foreign import ccall "qtc_QWindowsStyle_layoutSpacingImplementation1" qtc_QWindowsStyle_layoutSpacingImplementation1 :: Ptr (TQWindowsStyle a) -> CLong -> CLong -> CLong -> Ptr (TQStyleOption t4) -> IO CInt

instance QlayoutSpacingImplementation (QWindowsStyleSc a) ((ControlType, ControlType, QtOrientation, QStyleOption t4)) where
 layoutSpacingImplementation x0 (x1, x2, x3, x4)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x4 $ \cobj_x4 ->
    qtc_QWindowsStyle_layoutSpacingImplementation1 cobj_x0 (toCLong $ qEnum_toInt x1) (toCLong $ qEnum_toInt x2) (toCLong $ qEnum_toInt x3) cobj_x4

instance QlayoutSpacingImplementation (QWindowsStyle ()) ((ControlType, ControlType, QtOrientation, QStyleOption t4, QWidget t5)) where
 layoutSpacingImplementation x0 (x1, x2, x3, x4, x5)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x4 $ \cobj_x4 ->
    withObjectPtr x5 $ \cobj_x5 ->
    qtc_QWindowsStyle_layoutSpacingImplementation2 cobj_x0 (toCLong $ qEnum_toInt x1) (toCLong $ qEnum_toInt x2) (toCLong $ qEnum_toInt x3) cobj_x4 cobj_x5

foreign import ccall "qtc_QWindowsStyle_layoutSpacingImplementation2" qtc_QWindowsStyle_layoutSpacingImplementation2 :: Ptr (TQWindowsStyle a) -> CLong -> CLong -> CLong -> Ptr (TQStyleOption t4) -> Ptr (TQWidget t5) -> IO CInt

instance QlayoutSpacingImplementation (QWindowsStyleSc a) ((ControlType, ControlType, QtOrientation, QStyleOption t4, QWidget t5)) where
 layoutSpacingImplementation x0 (x1, x2, x3, x4, x5)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x4 $ \cobj_x4 ->
    withObjectPtr x5 $ \cobj_x5 ->
    qtc_QWindowsStyle_layoutSpacingImplementation2 cobj_x0 (toCLong $ qEnum_toInt x1) (toCLong $ qEnum_toInt x2) (toCLong $ qEnum_toInt x3) cobj_x4 cobj_x5

instance Qpolish (QWindowsStyle ()) ((QApplication t1)) where
 polish x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWindowsStyle_polish1_h cobj_x0 cobj_x1

foreign import ccall "qtc_QWindowsStyle_polish1_h" qtc_QWindowsStyle_polish1_h :: Ptr (TQWindowsStyle a) -> Ptr (TQApplication t1) -> IO ()

instance Qpolish (QWindowsStyleSc a) ((QApplication t1)) where
 polish x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWindowsStyle_polish1_h cobj_x0 cobj_x1

instance Qpolish (QWindowsStyle ()) ((QWidget t1)) where
 polish x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWindowsStyle_polish_h cobj_x0 cobj_x1

foreign import ccall "qtc_QWindowsStyle_polish_h" qtc_QWindowsStyle_polish_h :: Ptr (TQWindowsStyle a) -> Ptr (TQWidget t1) -> IO ()

instance Qpolish (QWindowsStyleSc a) ((QWidget t1)) where
 polish x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWindowsStyle_polish_h cobj_x0 cobj_x1

instance QstandardPalette (QWindowsStyle ()) (()) where
 standardPalette x0 ()
  = withQPaletteResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWindowsStyle_standardPalette_h cobj_x0

foreign import ccall "qtc_QWindowsStyle_standardPalette_h" qtc_QWindowsStyle_standardPalette_h :: Ptr (TQWindowsStyle a) -> IO (Ptr (TQPalette ()))

instance QstandardPalette (QWindowsStyleSc a) (()) where
 standardPalette x0 ()
  = withQPaletteResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWindowsStyle_standardPalette_h cobj_x0

instance Qunpolish (QWindowsStyle ()) ((QApplication t1)) where
 unpolish x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWindowsStyle_unpolish_h cobj_x0 cobj_x1

foreign import ccall "qtc_QWindowsStyle_unpolish_h" qtc_QWindowsStyle_unpolish_h :: Ptr (TQWindowsStyle a) -> Ptr (TQApplication t1) -> IO ()

instance Qunpolish (QWindowsStyleSc a) ((QApplication t1)) where
 unpolish x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWindowsStyle_unpolish_h cobj_x0 cobj_x1

instance Qunpolish (QWindowsStyle ()) ((QWidget t1)) where
 unpolish x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWindowsStyle_unpolish1_h cobj_x0 cobj_x1

foreign import ccall "qtc_QWindowsStyle_unpolish1_h" qtc_QWindowsStyle_unpolish1_h :: Ptr (TQWindowsStyle a) -> Ptr (TQWidget t1) -> IO ()

instance Qunpolish (QWindowsStyleSc a) ((QWidget t1)) where
 unpolish x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWindowsStyle_unpolish1_h cobj_x0 cobj_x1

instance QchildEvent (QWindowsStyle ()) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWindowsStyle_childEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QWindowsStyle_childEvent" qtc_QWindowsStyle_childEvent :: Ptr (TQWindowsStyle a) -> Ptr (TQChildEvent t1) -> IO ()

instance QchildEvent (QWindowsStyleSc a) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWindowsStyle_childEvent cobj_x0 cobj_x1

instance QconnectNotify (QWindowsStyle ()) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QWindowsStyle_connectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QWindowsStyle_connectNotify" qtc_QWindowsStyle_connectNotify :: Ptr (TQWindowsStyle a) -> CWString -> IO ()

instance QconnectNotify (QWindowsStyleSc a) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QWindowsStyle_connectNotify cobj_x0 cstr_x1

instance QcustomEvent (QWindowsStyle ()) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWindowsStyle_customEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QWindowsStyle_customEvent" qtc_QWindowsStyle_customEvent :: Ptr (TQWindowsStyle a) -> Ptr (TQEvent t1) -> IO ()

instance QcustomEvent (QWindowsStyleSc a) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWindowsStyle_customEvent cobj_x0 cobj_x1

instance QdisconnectNotify (QWindowsStyle ()) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QWindowsStyle_disconnectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QWindowsStyle_disconnectNotify" qtc_QWindowsStyle_disconnectNotify :: Ptr (TQWindowsStyle a) -> CWString -> IO ()

instance QdisconnectNotify (QWindowsStyleSc a) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QWindowsStyle_disconnectNotify cobj_x0 cstr_x1

instance Qevent (QWindowsStyle ()) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWindowsStyle_event_h cobj_x0 cobj_x1

foreign import ccall "qtc_QWindowsStyle_event_h" qtc_QWindowsStyle_event_h :: Ptr (TQWindowsStyle a) -> Ptr (TQEvent t1) -> IO CBool

instance Qevent (QWindowsStyleSc a) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWindowsStyle_event_h cobj_x0 cobj_x1

instance QeventFilter (QWindowsStyle ()) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QWindowsStyle_eventFilter_h cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QWindowsStyle_eventFilter_h" qtc_QWindowsStyle_eventFilter_h :: Ptr (TQWindowsStyle a) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO CBool

instance QeventFilter (QWindowsStyleSc a) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QWindowsStyle_eventFilter_h cobj_x0 cobj_x1 cobj_x2

instance Qreceivers (QWindowsStyle ()) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QWindowsStyle_receivers cobj_x0 cstr_x1

foreign import ccall "qtc_QWindowsStyle_receivers" qtc_QWindowsStyle_receivers :: Ptr (TQWindowsStyle a) -> CWString -> IO CInt

instance Qreceivers (QWindowsStyleSc a) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QWindowsStyle_receivers cobj_x0 cstr_x1

instance Qsender (QWindowsStyle ()) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWindowsStyle_sender cobj_x0

foreign import ccall "qtc_QWindowsStyle_sender" qtc_QWindowsStyle_sender :: Ptr (TQWindowsStyle a) -> IO (Ptr (TQObject ()))

instance Qsender (QWindowsStyleSc a) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWindowsStyle_sender cobj_x0

instance QtimerEvent (QWindowsStyle ()) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWindowsStyle_timerEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QWindowsStyle_timerEvent" qtc_QWindowsStyle_timerEvent :: Ptr (TQWindowsStyle a) -> Ptr (TQTimerEvent t1) -> IO ()

instance QtimerEvent (QWindowsStyleSc a) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWindowsStyle_timerEvent cobj_x0 cobj_x1

