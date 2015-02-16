{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QStyle.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:24
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QStyle (
  qStyle
  ,qqStyleAlignedRect, qStyleAlignedRect
  ,QcombinedLayoutSpacing(..)
  ,QlayoutSpacing(..)
  ,QqStyleSliderPositionFromValue(..)
  ,QqStyleSliderValueFromPosition(..)
  ,QstandardIcon(..)
  ,qStyleVisualAlignment
  ,qStyleVisualPos, qqStyleVisualPos
  ,qqStyleVisualRect, qStyleVisualRect
  ,qStyle_delete
  ,qStyle_deleteLater
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

instance QuserMethod (QStyle ()) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QStyle_userMethod cobj_qobj (toCInt evid)

foreign import ccall "qtc_QStyle_userMethod" qtc_QStyle_userMethod :: Ptr (TQStyle a) -> CInt -> IO ()

instance QuserMethod (QStyleSc a) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QStyle_userMethod cobj_qobj (toCInt evid)

instance QuserMethod (QStyle ()) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QStyle_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

foreign import ccall "qtc_QStyle_userMethodVariant" qtc_QStyle_userMethodVariant :: Ptr (TQStyle a) -> CInt -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))

instance QuserMethod (QStyleSc a) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QStyle_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

qStyle :: () -> IO (QStyle ())
qStyle ()
  = withQStyleResult $
    qtc_QStyle

foreign import ccall "qtc_QStyle" qtc_QStyle :: IO (Ptr (TQStyle ()))

qqStyleAlignedRect :: ((LayoutDirection, Alignment, QSize t3, QRect t4)) -> IO (QRect ())
qqStyleAlignedRect (x1, x2, x3, x4)
  = withQRectResult $
    withObjectPtr x3 $ \cobj_x3 ->
    withObjectPtr x4 $ \cobj_x4 ->
    qtc_QStyle_alignedRect (toCLong $ qEnum_toInt x1) (toCLong $ qFlags_toInt x2) cobj_x3 cobj_x4

foreign import ccall "qtc_QStyle_alignedRect" qtc_QStyle_alignedRect :: CLong -> CLong -> Ptr (TQSize t3) -> Ptr (TQRect t4) -> IO (Ptr (TQRect ()))

qStyleAlignedRect :: ((LayoutDirection, Alignment, Size, Rect)) -> IO (Rect)
qStyleAlignedRect (x1, x2, x3, x4)
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withCSize x3 $ \csize_x3_w csize_x3_h ->
    withCRect x4 $ \crect_x4_x crect_x4_y  crect_x4_w crect_x4_h ->
    qtc_QStyle_alignedRect_qth (toCLong $ qEnum_toInt x1) (toCLong $ qFlags_toInt x2) csize_x3_w csize_x3_h  crect_x4_x crect_x4_y crect_x4_w crect_x4_h  crect_ret_x crect_ret_y crect_ret_w crect_ret_h

foreign import ccall "qtc_QStyle_alignedRect_qth" qtc_QStyle_alignedRect_qth :: CLong -> CLong -> CInt -> CInt -> CInt -> CInt -> CInt -> CInt -> Ptr CInt -> Ptr CInt -> Ptr CInt -> Ptr CInt -> IO ()

class QcombinedLayoutSpacing x1 where
 combinedLayoutSpacing :: QStyle a -> x1 -> IO (Int)

instance QcombinedLayoutSpacing ((ControlTypes, ControlTypes, QtOrientation)) where
 combinedLayoutSpacing x0 (x1, x2, x3)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyle_combinedLayoutSpacing cobj_x0 (toCLong $ qFlags_toInt x1) (toCLong $ qFlags_toInt x2) (toCLong $ qEnum_toInt x3)

foreign import ccall "qtc_QStyle_combinedLayoutSpacing" qtc_QStyle_combinedLayoutSpacing :: Ptr (TQStyle a) -> CLong -> CLong -> CLong -> IO CInt

instance QcombinedLayoutSpacing ((ControlTypes, ControlTypes, QtOrientation, QStyleOption t4)) where
 combinedLayoutSpacing x0 (x1, x2, x3, x4)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x4 $ \cobj_x4 ->
    qtc_QStyle_combinedLayoutSpacing1 cobj_x0 (toCLong $ qFlags_toInt x1) (toCLong $ qFlags_toInt x2) (toCLong $ qEnum_toInt x3) cobj_x4

foreign import ccall "qtc_QStyle_combinedLayoutSpacing1" qtc_QStyle_combinedLayoutSpacing1 :: Ptr (TQStyle a) -> CLong -> CLong -> CLong -> Ptr (TQStyleOption t4) -> IO CInt

instance QcombinedLayoutSpacing ((ControlTypes, ControlTypes, QtOrientation, QStyleOption t4, QWidget t5)) where
 combinedLayoutSpacing x0 (x1, x2, x3, x4, x5)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x4 $ \cobj_x4 ->
    withObjectPtr x5 $ \cobj_x5 ->
    qtc_QStyle_combinedLayoutSpacing2 cobj_x0 (toCLong $ qFlags_toInt x1) (toCLong $ qFlags_toInt x2) (toCLong $ qEnum_toInt x3) cobj_x4 cobj_x5

foreign import ccall "qtc_QStyle_combinedLayoutSpacing2" qtc_QStyle_combinedLayoutSpacing2 :: Ptr (TQStyle a) -> CLong -> CLong -> CLong -> Ptr (TQStyleOption t4) -> Ptr (TQWidget t5) -> IO CInt

instance QdrawComplexControl (QStyle ()) ((ComplexControl, QStyleOptionComplex t2, QPainter t3)) where
 drawComplexControl x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QStyle_drawComplexControl_h cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 cobj_x3

foreign import ccall "qtc_QStyle_drawComplexControl_h" qtc_QStyle_drawComplexControl_h :: Ptr (TQStyle a) -> CLong -> Ptr (TQStyleOptionComplex t2) -> Ptr (TQPainter t3) -> IO ()

instance QdrawComplexControl (QStyleSc a) ((ComplexControl, QStyleOptionComplex t2, QPainter t3)) where
 drawComplexControl x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QStyle_drawComplexControl_h cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 cobj_x3

instance QdrawComplexControl (QStyle ()) ((ComplexControl, QStyleOptionComplex t2, QPainter t3, QWidget t4)) where
 drawComplexControl x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    withObjectPtr x4 $ \cobj_x4 ->
    qtc_QStyle_drawComplexControl1_h cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 cobj_x3 cobj_x4

foreign import ccall "qtc_QStyle_drawComplexControl1_h" qtc_QStyle_drawComplexControl1_h :: Ptr (TQStyle a) -> CLong -> Ptr (TQStyleOptionComplex t2) -> Ptr (TQPainter t3) -> Ptr (TQWidget t4) -> IO ()

instance QdrawComplexControl (QStyleSc a) ((ComplexControl, QStyleOptionComplex t2, QPainter t3, QWidget t4)) where
 drawComplexControl x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    withObjectPtr x4 $ \cobj_x4 ->
    qtc_QStyle_drawComplexControl1_h cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 cobj_x3 cobj_x4

instance QdrawControl (QStyle ()) ((ControlElement, QStyleOption t2, QPainter t3)) where
 drawControl x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QStyle_drawControl_h cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 cobj_x3

foreign import ccall "qtc_QStyle_drawControl_h" qtc_QStyle_drawControl_h :: Ptr (TQStyle a) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQPainter t3) -> IO ()

instance QdrawControl (QStyleSc a) ((ControlElement, QStyleOption t2, QPainter t3)) where
 drawControl x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QStyle_drawControl_h cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 cobj_x3

instance QdrawControl (QStyle ()) ((ControlElement, QStyleOption t2, QPainter t3, QWidget t4)) where
 drawControl x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    withObjectPtr x4 $ \cobj_x4 ->
    qtc_QStyle_drawControl1_h cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 cobj_x3 cobj_x4

foreign import ccall "qtc_QStyle_drawControl1_h" qtc_QStyle_drawControl1_h :: Ptr (TQStyle a) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQPainter t3) -> Ptr (TQWidget t4) -> IO ()

instance QdrawControl (QStyleSc a) ((ControlElement, QStyleOption t2, QPainter t3, QWidget t4)) where
 drawControl x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    withObjectPtr x4 $ \cobj_x4 ->
    qtc_QStyle_drawControl1_h cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 cobj_x3 cobj_x4

instance QqdrawItemPixmap (QStyle ()) ((QPainter t1, QRect t2, Int, QPixmap t4)) where
 qdrawItemPixmap x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x4 $ \cobj_x4 ->
    qtc_QStyle_drawItemPixmap_h cobj_x0 cobj_x1 cobj_x2 (toCInt x3) cobj_x4

foreign import ccall "qtc_QStyle_drawItemPixmap_h" qtc_QStyle_drawItemPixmap_h :: Ptr (TQStyle a) -> Ptr (TQPainter t1) -> Ptr (TQRect t2) -> CInt -> Ptr (TQPixmap t4) -> IO ()

instance QqdrawItemPixmap (QStyleSc a) ((QPainter t1, QRect t2, Int, QPixmap t4)) where
 qdrawItemPixmap x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x4 $ \cobj_x4 ->
    qtc_QStyle_drawItemPixmap_h cobj_x0 cobj_x1 cobj_x2 (toCInt x3) cobj_x4

instance QdrawItemPixmap (QStyle ()) ((QPainter t1, Rect, Int, QPixmap t4)) where
 drawItemPixmap x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCRect x2 $ \crect_x2_x crect_x2_y  crect_x2_w crect_x2_h -> 
    withObjectPtr x4 $ \cobj_x4 ->
    qtc_QStyle_drawItemPixmap_qth_h cobj_x0 cobj_x1 crect_x2_x crect_x2_y crect_x2_w crect_x2_h  (toCInt x3) cobj_x4

foreign import ccall "qtc_QStyle_drawItemPixmap_qth_h" qtc_QStyle_drawItemPixmap_qth_h :: Ptr (TQStyle a) -> Ptr (TQPainter t1) -> CInt -> CInt -> CInt -> CInt -> CInt -> Ptr (TQPixmap t4) -> IO ()

instance QdrawItemPixmap (QStyleSc a) ((QPainter t1, Rect, Int, QPixmap t4)) where
 drawItemPixmap x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCRect x2 $ \crect_x2_x crect_x2_y  crect_x2_w crect_x2_h -> 
    withObjectPtr x4 $ \cobj_x4 ->
    qtc_QStyle_drawItemPixmap_qth_h cobj_x0 cobj_x1 crect_x2_x crect_x2_y crect_x2_w crect_x2_h  (toCInt x3) cobj_x4

instance QqdrawItemText (QStyle ()) ((QPainter t1, QRect t2, Int, QPalette t4, Bool, String)) where
 qdrawItemText x0 (x1, x2, x3, x4, x5, x6)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x4 $ \cobj_x4 ->
    withCWString x6 $ \cstr_x6 ->
    qtc_QStyle_drawItemText_h cobj_x0 cobj_x1 cobj_x2 (toCInt x3) cobj_x4 (toCBool x5) cstr_x6

foreign import ccall "qtc_QStyle_drawItemText_h" qtc_QStyle_drawItemText_h :: Ptr (TQStyle a) -> Ptr (TQPainter t1) -> Ptr (TQRect t2) -> CInt -> Ptr (TQPalette t4) -> CBool -> CWString -> IO ()

instance QqdrawItemText (QStyleSc a) ((QPainter t1, QRect t2, Int, QPalette t4, Bool, String)) where
 qdrawItemText x0 (x1, x2, x3, x4, x5, x6)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x4 $ \cobj_x4 ->
    withCWString x6 $ \cstr_x6 ->
    qtc_QStyle_drawItemText_h cobj_x0 cobj_x1 cobj_x2 (toCInt x3) cobj_x4 (toCBool x5) cstr_x6

instance QqdrawItemText (QStyle ()) ((QPainter t1, QRect t2, Int, QPalette t4, Bool, String, ColorRole)) where
 qdrawItemText x0 (x1, x2, x3, x4, x5, x6, x7)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x4 $ \cobj_x4 ->
    withCWString x6 $ \cstr_x6 ->
    qtc_QStyle_drawItemText1_h cobj_x0 cobj_x1 cobj_x2 (toCInt x3) cobj_x4 (toCBool x5) cstr_x6 (toCLong $ qEnum_toInt x7)

foreign import ccall "qtc_QStyle_drawItemText1_h" qtc_QStyle_drawItemText1_h :: Ptr (TQStyle a) -> Ptr (TQPainter t1) -> Ptr (TQRect t2) -> CInt -> Ptr (TQPalette t4) -> CBool -> CWString -> CLong -> IO ()

instance QqdrawItemText (QStyleSc a) ((QPainter t1, QRect t2, Int, QPalette t4, Bool, String, ColorRole)) where
 qdrawItemText x0 (x1, x2, x3, x4, x5, x6, x7)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x4 $ \cobj_x4 ->
    withCWString x6 $ \cstr_x6 ->
    qtc_QStyle_drawItemText1_h cobj_x0 cobj_x1 cobj_x2 (toCInt x3) cobj_x4 (toCBool x5) cstr_x6 (toCLong $ qEnum_toInt x7)

instance QdrawItemText (QStyle ()) ((QPainter t1, Rect, Int, QPalette t4, Bool, String)) where
 drawItemText x0 (x1, x2, x3, x4, x5, x6)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCRect x2 $ \crect_x2_x crect_x2_y  crect_x2_w crect_x2_h -> 
    withObjectPtr x4 $ \cobj_x4 ->
    withCWString x6 $ \cstr_x6 ->
    qtc_QStyle_drawItemText_qth_h cobj_x0 cobj_x1 crect_x2_x crect_x2_y crect_x2_w crect_x2_h  (toCInt x3) cobj_x4 (toCBool x5) cstr_x6

foreign import ccall "qtc_QStyle_drawItemText_qth_h" qtc_QStyle_drawItemText_qth_h :: Ptr (TQStyle a) -> Ptr (TQPainter t1) -> CInt -> CInt -> CInt -> CInt -> CInt -> Ptr (TQPalette t4) -> CBool -> CWString -> IO ()

instance QdrawItemText (QStyleSc a) ((QPainter t1, Rect, Int, QPalette t4, Bool, String)) where
 drawItemText x0 (x1, x2, x3, x4, x5, x6)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCRect x2 $ \crect_x2_x crect_x2_y  crect_x2_w crect_x2_h -> 
    withObjectPtr x4 $ \cobj_x4 ->
    withCWString x6 $ \cstr_x6 ->
    qtc_QStyle_drawItemText_qth_h cobj_x0 cobj_x1 crect_x2_x crect_x2_y crect_x2_w crect_x2_h  (toCInt x3) cobj_x4 (toCBool x5) cstr_x6

instance QdrawItemText (QStyle ()) ((QPainter t1, Rect, Int, QPalette t4, Bool, String, ColorRole)) where
 drawItemText x0 (x1, x2, x3, x4, x5, x6, x7)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCRect x2 $ \crect_x2_x crect_x2_y  crect_x2_w crect_x2_h -> 
    withObjectPtr x4 $ \cobj_x4 ->
    withCWString x6 $ \cstr_x6 ->
    qtc_QStyle_drawItemText1_qth_h cobj_x0 cobj_x1 crect_x2_x crect_x2_y crect_x2_w crect_x2_h  (toCInt x3) cobj_x4 (toCBool x5) cstr_x6 (toCLong $ qEnum_toInt x7)

foreign import ccall "qtc_QStyle_drawItemText1_qth_h" qtc_QStyle_drawItemText1_qth_h :: Ptr (TQStyle a) -> Ptr (TQPainter t1) -> CInt -> CInt -> CInt -> CInt -> CInt -> Ptr (TQPalette t4) -> CBool -> CWString -> CLong -> IO ()

instance QdrawItemText (QStyleSc a) ((QPainter t1, Rect, Int, QPalette t4, Bool, String, ColorRole)) where
 drawItemText x0 (x1, x2, x3, x4, x5, x6, x7)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCRect x2 $ \crect_x2_x crect_x2_y  crect_x2_w crect_x2_h -> 
    withObjectPtr x4 $ \cobj_x4 ->
    withCWString x6 $ \cstr_x6 ->
    qtc_QStyle_drawItemText1_qth_h cobj_x0 cobj_x1 crect_x2_x crect_x2_y crect_x2_w crect_x2_h  (toCInt x3) cobj_x4 (toCBool x5) cstr_x6 (toCLong $ qEnum_toInt x7)

instance QdrawPrimitive (QStyle ()) ((PrimitiveElement, QStyleOption t2, QPainter t3)) where
 drawPrimitive x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QStyle_drawPrimitive_h cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 cobj_x3

foreign import ccall "qtc_QStyle_drawPrimitive_h" qtc_QStyle_drawPrimitive_h :: Ptr (TQStyle a) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQPainter t3) -> IO ()

instance QdrawPrimitive (QStyleSc a) ((PrimitiveElement, QStyleOption t2, QPainter t3)) where
 drawPrimitive x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QStyle_drawPrimitive_h cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 cobj_x3

instance QdrawPrimitive (QStyle ()) ((PrimitiveElement, QStyleOption t2, QPainter t3, QWidget t4)) where
 drawPrimitive x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    withObjectPtr x4 $ \cobj_x4 ->
    qtc_QStyle_drawPrimitive1_h cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 cobj_x3 cobj_x4

foreign import ccall "qtc_QStyle_drawPrimitive1_h" qtc_QStyle_drawPrimitive1_h :: Ptr (TQStyle a) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQPainter t3) -> Ptr (TQWidget t4) -> IO ()

instance QdrawPrimitive (QStyleSc a) ((PrimitiveElement, QStyleOption t2, QPainter t3, QWidget t4)) where
 drawPrimitive x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    withObjectPtr x4 $ \cobj_x4 ->
    qtc_QStyle_drawPrimitive1_h cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 cobj_x3 cobj_x4

instance QgeneratedIconPixmap (QStyle ()) ((QIconMode, QPixmap t2, QStyleOption t3)) where
 generatedIconPixmap x0 (x1, x2, x3)
  = withQPixmapResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QStyle_generatedIconPixmap_h cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 cobj_x3

foreign import ccall "qtc_QStyle_generatedIconPixmap_h" qtc_QStyle_generatedIconPixmap_h :: Ptr (TQStyle a) -> CLong -> Ptr (TQPixmap t2) -> Ptr (TQStyleOption t3) -> IO (Ptr (TQPixmap ()))

instance QgeneratedIconPixmap (QStyleSc a) ((QIconMode, QPixmap t2, QStyleOption t3)) where
 generatedIconPixmap x0 (x1, x2, x3)
  = withQPixmapResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QStyle_generatedIconPixmap_h cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 cobj_x3

instance QhitTestComplexControl (QStyle ()) ((ComplexControl, QStyleOptionComplex t2, Point)) where
 hitTestComplexControl x0 (x1, x2, x3)
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withCPoint x3 $ \cpoint_x3_x cpoint_x3_y -> 
    qtc_QStyle_hitTestComplexControl_qth_h cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 cpoint_x3_x cpoint_x3_y 

foreign import ccall "qtc_QStyle_hitTestComplexControl_qth_h" qtc_QStyle_hitTestComplexControl_qth_h :: Ptr (TQStyle a) -> CLong -> Ptr (TQStyleOptionComplex t2) -> CInt -> CInt -> IO CLong

instance QhitTestComplexControl (QStyleSc a) ((ComplexControl, QStyleOptionComplex t2, Point)) where
 hitTestComplexControl x0 (x1, x2, x3)
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withCPoint x3 $ \cpoint_x3_x cpoint_x3_y -> 
    qtc_QStyle_hitTestComplexControl_qth_h cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 cpoint_x3_x cpoint_x3_y 

instance QhitTestComplexControl (QStyle ()) ((ComplexControl, QStyleOptionComplex t2, Point, QWidget t4)) where
 hitTestComplexControl x0 (x1, x2, x3, x4)
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withCPoint x3 $ \cpoint_x3_x cpoint_x3_y -> 
    withObjectPtr x4 $ \cobj_x4 ->
    qtc_QStyle_hitTestComplexControl1_qth_h cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 cpoint_x3_x cpoint_x3_y  cobj_x4

foreign import ccall "qtc_QStyle_hitTestComplexControl1_qth_h" qtc_QStyle_hitTestComplexControl1_qth_h :: Ptr (TQStyle a) -> CLong -> Ptr (TQStyleOptionComplex t2) -> CInt -> CInt -> Ptr (TQWidget t4) -> IO CLong

instance QhitTestComplexControl (QStyleSc a) ((ComplexControl, QStyleOptionComplex t2, Point, QWidget t4)) where
 hitTestComplexControl x0 (x1, x2, x3, x4)
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withCPoint x3 $ \cpoint_x3_x cpoint_x3_y -> 
    withObjectPtr x4 $ \cobj_x4 ->
    qtc_QStyle_hitTestComplexControl1_qth_h cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 cpoint_x3_x cpoint_x3_y  cobj_x4

instance QqhitTestComplexControl (QStyle ()) ((ComplexControl, QStyleOptionComplex t2, QPoint t3)) where
 qhitTestComplexControl x0 (x1, x2, x3)
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QStyle_hitTestComplexControl_h cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 cobj_x3

foreign import ccall "qtc_QStyle_hitTestComplexControl_h" qtc_QStyle_hitTestComplexControl_h :: Ptr (TQStyle a) -> CLong -> Ptr (TQStyleOptionComplex t2) -> Ptr (TQPoint t3) -> IO CLong

instance QqhitTestComplexControl (QStyleSc a) ((ComplexControl, QStyleOptionComplex t2, QPoint t3)) where
 qhitTestComplexControl x0 (x1, x2, x3)
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QStyle_hitTestComplexControl_h cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 cobj_x3

instance QqhitTestComplexControl (QStyle ()) ((ComplexControl, QStyleOptionComplex t2, QPoint t3, QWidget t4)) where
 qhitTestComplexControl x0 (x1, x2, x3, x4)
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    withObjectPtr x4 $ \cobj_x4 ->
    qtc_QStyle_hitTestComplexControl1_h cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 cobj_x3 cobj_x4

foreign import ccall "qtc_QStyle_hitTestComplexControl1_h" qtc_QStyle_hitTestComplexControl1_h :: Ptr (TQStyle a) -> CLong -> Ptr (TQStyleOptionComplex t2) -> Ptr (TQPoint t3) -> Ptr (TQWidget t4) -> IO CLong

instance QqhitTestComplexControl (QStyleSc a) ((ComplexControl, QStyleOptionComplex t2, QPoint t3, QWidget t4)) where
 qhitTestComplexControl x0 (x1, x2, x3, x4)
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    withObjectPtr x4 $ \cobj_x4 ->
    qtc_QStyle_hitTestComplexControl1_h cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 cobj_x3 cobj_x4

instance QqitemPixmapRect (QStyle ()) ((QRect t1, Int, QPixmap t3)) where
 qitemPixmapRect x0 (x1, x2, x3)
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QStyle_itemPixmapRect_h cobj_x0 cobj_x1 (toCInt x2) cobj_x3

foreign import ccall "qtc_QStyle_itemPixmapRect_h" qtc_QStyle_itemPixmapRect_h :: Ptr (TQStyle a) -> Ptr (TQRect t1) -> CInt -> Ptr (TQPixmap t3) -> IO (Ptr (TQRect ()))

instance QqitemPixmapRect (QStyleSc a) ((QRect t1, Int, QPixmap t3)) where
 qitemPixmapRect x0 (x1, x2, x3)
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QStyle_itemPixmapRect_h cobj_x0 cobj_x1 (toCInt x2) cobj_x3

instance QitemPixmapRect (QStyle ()) ((Rect, Int, QPixmap t3)) where
 itemPixmapRect x0 (x1, x2, x3)
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QStyle_itemPixmapRect_qth_h cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h  (toCInt x2) cobj_x3 crect_ret_x crect_ret_y crect_ret_w crect_ret_h

foreign import ccall "qtc_QStyle_itemPixmapRect_qth_h" qtc_QStyle_itemPixmapRect_qth_h :: Ptr (TQStyle a) -> CInt -> CInt -> CInt -> CInt -> CInt -> Ptr (TQPixmap t3) -> Ptr CInt -> Ptr CInt -> Ptr CInt -> Ptr CInt -> IO ()

instance QitemPixmapRect (QStyleSc a) ((Rect, Int, QPixmap t3)) where
 itemPixmapRect x0 (x1, x2, x3)
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QStyle_itemPixmapRect_qth_h cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h  (toCInt x2) cobj_x3 crect_ret_x crect_ret_y crect_ret_w crect_ret_h

instance QqitemTextRect (QStyle ()) ((QFontMetrics t1, QRect t2, Int, Bool, String)) where
 qitemTextRect x0 (x1, x2, x3, x4, x5)
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withCWString x5 $ \cstr_x5 ->
    qtc_QStyle_itemTextRect_h cobj_x0 cobj_x1 cobj_x2 (toCInt x3) (toCBool x4) cstr_x5

foreign import ccall "qtc_QStyle_itemTextRect_h" qtc_QStyle_itemTextRect_h :: Ptr (TQStyle a) -> Ptr (TQFontMetrics t1) -> Ptr (TQRect t2) -> CInt -> CBool -> CWString -> IO (Ptr (TQRect ()))

instance QqitemTextRect (QStyleSc a) ((QFontMetrics t1, QRect t2, Int, Bool, String)) where
 qitemTextRect x0 (x1, x2, x3, x4, x5)
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withCWString x5 $ \cstr_x5 ->
    qtc_QStyle_itemTextRect_h cobj_x0 cobj_x1 cobj_x2 (toCInt x3) (toCBool x4) cstr_x5

instance QitemTextRect (QStyle ()) ((QFontMetrics t1, Rect, Int, Bool, String)) where
 itemTextRect x0 (x1, x2, x3, x4, x5)
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCRect x2 $ \crect_x2_x crect_x2_y  crect_x2_w crect_x2_h -> 
    withCWString x5 $ \cstr_x5 ->
    qtc_QStyle_itemTextRect_qth_h cobj_x0 cobj_x1 crect_x2_x crect_x2_y crect_x2_w crect_x2_h  (toCInt x3) (toCBool x4) cstr_x5 crect_ret_x crect_ret_y crect_ret_w crect_ret_h

foreign import ccall "qtc_QStyle_itemTextRect_qth_h" qtc_QStyle_itemTextRect_qth_h :: Ptr (TQStyle a) -> Ptr (TQFontMetrics t1) -> CInt -> CInt -> CInt -> CInt -> CInt -> CBool -> CWString -> Ptr CInt -> Ptr CInt -> Ptr CInt -> Ptr CInt -> IO ()

instance QitemTextRect (QStyleSc a) ((QFontMetrics t1, Rect, Int, Bool, String)) where
 itemTextRect x0 (x1, x2, x3, x4, x5)
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCRect x2 $ \crect_x2_x crect_x2_y  crect_x2_w crect_x2_h -> 
    withCWString x5 $ \cstr_x5 ->
    qtc_QStyle_itemTextRect_qth_h cobj_x0 cobj_x1 crect_x2_x crect_x2_y crect_x2_w crect_x2_h  (toCInt x3) (toCBool x4) cstr_x5 crect_ret_x crect_ret_y crect_ret_w crect_ret_h

class QlayoutSpacing x1 where
 layoutSpacing :: QStyle a -> x1 -> IO (Int)

instance QlayoutSpacing ((ControlType, ControlType, QtOrientation)) where
 layoutSpacing x0 (x1, x2, x3)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyle_layoutSpacing cobj_x0 (toCLong $ qEnum_toInt x1) (toCLong $ qEnum_toInt x2) (toCLong $ qEnum_toInt x3)

foreign import ccall "qtc_QStyle_layoutSpacing" qtc_QStyle_layoutSpacing :: Ptr (TQStyle a) -> CLong -> CLong -> CLong -> IO CInt

instance QlayoutSpacing ((ControlType, ControlType, QtOrientation, QStyleOption t4)) where
 layoutSpacing x0 (x1, x2, x3, x4)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x4 $ \cobj_x4 ->
    qtc_QStyle_layoutSpacing1 cobj_x0 (toCLong $ qEnum_toInt x1) (toCLong $ qEnum_toInt x2) (toCLong $ qEnum_toInt x3) cobj_x4

foreign import ccall "qtc_QStyle_layoutSpacing1" qtc_QStyle_layoutSpacing1 :: Ptr (TQStyle a) -> CLong -> CLong -> CLong -> Ptr (TQStyleOption t4) -> IO CInt

instance QlayoutSpacing ((ControlType, ControlType, QtOrientation, QStyleOption t4, QWidget t5)) where
 layoutSpacing x0 (x1, x2, x3, x4, x5)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x4 $ \cobj_x4 ->
    withObjectPtr x5 $ \cobj_x5 ->
    qtc_QStyle_layoutSpacing2 cobj_x0 (toCLong $ qEnum_toInt x1) (toCLong $ qEnum_toInt x2) (toCLong $ qEnum_toInt x3) cobj_x4 cobj_x5

foreign import ccall "qtc_QStyle_layoutSpacing2" qtc_QStyle_layoutSpacing2 :: Ptr (TQStyle a) -> CLong -> CLong -> CLong -> Ptr (TQStyleOption t4) -> Ptr (TQWidget t5) -> IO CInt

instance QlayoutSpacingImplementation (QStyle ()) ((ControlType, ControlType, QtOrientation)) where
 layoutSpacingImplementation x0 (x1, x2, x3)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyle_layoutSpacingImplementation cobj_x0 (toCLong $ qEnum_toInt x1) (toCLong $ qEnum_toInt x2) (toCLong $ qEnum_toInt x3)

foreign import ccall "qtc_QStyle_layoutSpacingImplementation" qtc_QStyle_layoutSpacingImplementation :: Ptr (TQStyle a) -> CLong -> CLong -> CLong -> IO CInt

instance QlayoutSpacingImplementation (QStyleSc a) ((ControlType, ControlType, QtOrientation)) where
 layoutSpacingImplementation x0 (x1, x2, x3)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyle_layoutSpacingImplementation cobj_x0 (toCLong $ qEnum_toInt x1) (toCLong $ qEnum_toInt x2) (toCLong $ qEnum_toInt x3)

instance QlayoutSpacingImplementation (QStyle ()) ((ControlType, ControlType, QtOrientation, QStyleOption t4)) where
 layoutSpacingImplementation x0 (x1, x2, x3, x4)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x4 $ \cobj_x4 ->
    qtc_QStyle_layoutSpacingImplementation1 cobj_x0 (toCLong $ qEnum_toInt x1) (toCLong $ qEnum_toInt x2) (toCLong $ qEnum_toInt x3) cobj_x4

foreign import ccall "qtc_QStyle_layoutSpacingImplementation1" qtc_QStyle_layoutSpacingImplementation1 :: Ptr (TQStyle a) -> CLong -> CLong -> CLong -> Ptr (TQStyleOption t4) -> IO CInt

instance QlayoutSpacingImplementation (QStyleSc a) ((ControlType, ControlType, QtOrientation, QStyleOption t4)) where
 layoutSpacingImplementation x0 (x1, x2, x3, x4)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x4 $ \cobj_x4 ->
    qtc_QStyle_layoutSpacingImplementation1 cobj_x0 (toCLong $ qEnum_toInt x1) (toCLong $ qEnum_toInt x2) (toCLong $ qEnum_toInt x3) cobj_x4

instance QlayoutSpacingImplementation (QStyle ()) ((ControlType, ControlType, QtOrientation, QStyleOption t4, QWidget t5)) where
 layoutSpacingImplementation x0 (x1, x2, x3, x4, x5)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x4 $ \cobj_x4 ->
    withObjectPtr x5 $ \cobj_x5 ->
    qtc_QStyle_layoutSpacingImplementation2 cobj_x0 (toCLong $ qEnum_toInt x1) (toCLong $ qEnum_toInt x2) (toCLong $ qEnum_toInt x3) cobj_x4 cobj_x5

foreign import ccall "qtc_QStyle_layoutSpacingImplementation2" qtc_QStyle_layoutSpacingImplementation2 :: Ptr (TQStyle a) -> CLong -> CLong -> CLong -> Ptr (TQStyleOption t4) -> Ptr (TQWidget t5) -> IO CInt

instance QlayoutSpacingImplementation (QStyleSc a) ((ControlType, ControlType, QtOrientation, QStyleOption t4, QWidget t5)) where
 layoutSpacingImplementation x0 (x1, x2, x3, x4, x5)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x4 $ \cobj_x4 ->
    withObjectPtr x5 $ \cobj_x5 ->
    qtc_QStyle_layoutSpacingImplementation2 cobj_x0 (toCLong $ qEnum_toInt x1) (toCLong $ qEnum_toInt x2) (toCLong $ qEnum_toInt x3) cobj_x4 cobj_x5

instance QpixelMetric (QStyle ()) ((PixelMetric)) where
 pixelMetric x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyle_pixelMetric_h cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QStyle_pixelMetric_h" qtc_QStyle_pixelMetric_h :: Ptr (TQStyle a) -> CLong -> IO CInt

instance QpixelMetric (QStyleSc a) ((PixelMetric)) where
 pixelMetric x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyle_pixelMetric_h cobj_x0 (toCLong $ qEnum_toInt x1)

instance QpixelMetric (QStyle ()) ((PixelMetric, QStyleOption t2)) where
 pixelMetric x0 (x1, x2)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QStyle_pixelMetric1_h cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2

foreign import ccall "qtc_QStyle_pixelMetric1_h" qtc_QStyle_pixelMetric1_h :: Ptr (TQStyle a) -> CLong -> Ptr (TQStyleOption t2) -> IO CInt

instance QpixelMetric (QStyleSc a) ((PixelMetric, QStyleOption t2)) where
 pixelMetric x0 (x1, x2)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QStyle_pixelMetric1_h cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2

instance QpixelMetric (QStyle ()) ((PixelMetric, QStyleOption t2, QWidget t3)) where
 pixelMetric x0 (x1, x2, x3)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QStyle_pixelMetric2_h cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 cobj_x3

foreign import ccall "qtc_QStyle_pixelMetric2_h" qtc_QStyle_pixelMetric2_h :: Ptr (TQStyle a) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQWidget t3) -> IO CInt

instance QpixelMetric (QStyleSc a) ((PixelMetric, QStyleOption t2, QWidget t3)) where
 pixelMetric x0 (x1, x2, x3)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QStyle_pixelMetric2_h cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 cobj_x3

instance Qpolish (QStyle ()) ((QApplication t1)) where
 polish x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStyle_polish1_h cobj_x0 cobj_x1

foreign import ccall "qtc_QStyle_polish1_h" qtc_QStyle_polish1_h :: Ptr (TQStyle a) -> Ptr (TQApplication t1) -> IO ()

instance Qpolish (QStyleSc a) ((QApplication t1)) where
 polish x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStyle_polish1_h cobj_x0 cobj_x1

instance Qpolish (QStyle ()) ((QWidget t1)) where
 polish x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStyle_polish_h cobj_x0 cobj_x1

foreign import ccall "qtc_QStyle_polish_h" qtc_QStyle_polish_h :: Ptr (TQStyle a) -> Ptr (TQWidget t1) -> IO ()

instance Qpolish (QStyleSc a) ((QWidget t1)) where
 polish x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStyle_polish_h cobj_x0 cobj_x1

instance QqsizeFromContents (QStyle ()) ((ContentsType, QStyleOption t2, QSize t3)) where
 qsizeFromContents x0 (x1, x2, x3)
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QStyle_sizeFromContents_h cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 cobj_x3

foreign import ccall "qtc_QStyle_sizeFromContents_h" qtc_QStyle_sizeFromContents_h :: Ptr (TQStyle a) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQSize t3) -> IO (Ptr (TQSize ()))

instance QqsizeFromContents (QStyleSc a) ((ContentsType, QStyleOption t2, QSize t3)) where
 qsizeFromContents x0 (x1, x2, x3)
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QStyle_sizeFromContents_h cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 cobj_x3

instance QqsizeFromContents (QStyle ()) ((ContentsType, QStyleOption t2, QSize t3, QWidget t4)) where
 qsizeFromContents x0 (x1, x2, x3, x4)
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    withObjectPtr x4 $ \cobj_x4 ->
    qtc_QStyle_sizeFromContents1_h cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 cobj_x3 cobj_x4

foreign import ccall "qtc_QStyle_sizeFromContents1_h" qtc_QStyle_sizeFromContents1_h :: Ptr (TQStyle a) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQSize t3) -> Ptr (TQWidget t4) -> IO (Ptr (TQSize ()))

instance QqsizeFromContents (QStyleSc a) ((ContentsType, QStyleOption t2, QSize t3, QWidget t4)) where
 qsizeFromContents x0 (x1, x2, x3, x4)
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    withObjectPtr x4 $ \cobj_x4 ->
    qtc_QStyle_sizeFromContents1_h cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 cobj_x3 cobj_x4

instance QsizeFromContents (QStyle ()) ((ContentsType, QStyleOption t2, Size)) where
 sizeFromContents x0 (x1, x2, x3)
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withCSize x3 $ \csize_x3_w csize_x3_h -> 
    qtc_QStyle_sizeFromContents_qth_h cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 csize_x3_w csize_x3_h  csize_ret_w csize_ret_h

foreign import ccall "qtc_QStyle_sizeFromContents_qth_h" qtc_QStyle_sizeFromContents_qth_h :: Ptr (TQStyle a) -> CLong -> Ptr (TQStyleOption t2) -> CInt -> CInt -> Ptr CInt -> Ptr CInt -> IO ()

instance QsizeFromContents (QStyleSc a) ((ContentsType, QStyleOption t2, Size)) where
 sizeFromContents x0 (x1, x2, x3)
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withCSize x3 $ \csize_x3_w csize_x3_h -> 
    qtc_QStyle_sizeFromContents_qth_h cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 csize_x3_w csize_x3_h  csize_ret_w csize_ret_h

instance QsizeFromContents (QStyle ()) ((ContentsType, QStyleOption t2, Size, QWidget t4)) where
 sizeFromContents x0 (x1, x2, x3, x4)
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withCSize x3 $ \csize_x3_w csize_x3_h -> 
    withObjectPtr x4 $ \cobj_x4 ->
    qtc_QStyle_sizeFromContents1_qth_h cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 csize_x3_w csize_x3_h  cobj_x4 csize_ret_w csize_ret_h

foreign import ccall "qtc_QStyle_sizeFromContents1_qth_h" qtc_QStyle_sizeFromContents1_qth_h :: Ptr (TQStyle a) -> CLong -> Ptr (TQStyleOption t2) -> CInt -> CInt -> Ptr (TQWidget t4) -> Ptr CInt -> Ptr CInt -> IO ()

instance QsizeFromContents (QStyleSc a) ((ContentsType, QStyleOption t2, Size, QWidget t4)) where
 sizeFromContents x0 (x1, x2, x3, x4)
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withCSize x3 $ \csize_x3_w csize_x3_h -> 
    withObjectPtr x4 $ \cobj_x4 ->
    qtc_QStyle_sizeFromContents1_qth_h cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 csize_x3_w csize_x3_h  cobj_x4 csize_ret_w csize_ret_h

class QqStyleSliderPositionFromValue x1 where
 qStyleSliderPositionFromValue :: x1 -> IO (Int)

instance QqStyleSliderPositionFromValue ((Int, Int, Int, Int)) where
 qStyleSliderPositionFromValue (x1, x2, x3, x4)
  = withIntResult $
    qtc_QStyle_sliderPositionFromValue (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QStyle_sliderPositionFromValue" qtc_QStyle_sliderPositionFromValue :: CInt -> CInt -> CInt -> CInt -> IO CInt

instance QqStyleSliderPositionFromValue ((Int, Int, Int, Int, Bool)) where
 qStyleSliderPositionFromValue (x1, x2, x3, x4, x5)
  = withIntResult $
    qtc_QStyle_sliderPositionFromValue1 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4) (toCBool x5)

foreign import ccall "qtc_QStyle_sliderPositionFromValue1" qtc_QStyle_sliderPositionFromValue1 :: CInt -> CInt -> CInt -> CInt -> CBool -> IO CInt

class QqStyleSliderValueFromPosition x1 where
 qStyleSliderValueFromPosition :: x1 -> IO (Int)

instance QqStyleSliderValueFromPosition ((Int, Int, Int, Int)) where
 qStyleSliderValueFromPosition (x1, x2, x3, x4)
  = withIntResult $
    qtc_QStyle_sliderValueFromPosition (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QStyle_sliderValueFromPosition" qtc_QStyle_sliderValueFromPosition :: CInt -> CInt -> CInt -> CInt -> IO CInt

instance QqStyleSliderValueFromPosition ((Int, Int, Int, Int, Bool)) where
 qStyleSliderValueFromPosition (x1, x2, x3, x4, x5)
  = withIntResult $
    qtc_QStyle_sliderValueFromPosition1 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4) (toCBool x5)

foreign import ccall "qtc_QStyle_sliderValueFromPosition1" qtc_QStyle_sliderValueFromPosition1 :: CInt -> CInt -> CInt -> CInt -> CBool -> IO CInt

class QstandardIcon x1 where
 standardIcon :: QStyle a -> x1 -> IO (QIcon ())

instance QstandardIcon ((StandardPixmap)) where
 standardIcon x0 (x1)
  = withQIconResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyle_standardIcon cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QStyle_standardIcon" qtc_QStyle_standardIcon :: Ptr (TQStyle a) -> CLong -> IO (Ptr (TQIcon ()))

instance QstandardIcon ((StandardPixmap, QStyleOption t2)) where
 standardIcon x0 (x1, x2)
  = withQIconResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QStyle_standardIcon1 cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2

foreign import ccall "qtc_QStyle_standardIcon1" qtc_QStyle_standardIcon1 :: Ptr (TQStyle a) -> CLong -> Ptr (TQStyleOption t2) -> IO (Ptr (TQIcon ()))

instance QstandardIcon ((StandardPixmap, QStyleOption t2, QWidget t3)) where
 standardIcon x0 (x1, x2, x3)
  = withQIconResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QStyle_standardIcon2 cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 cobj_x3

foreign import ccall "qtc_QStyle_standardIcon2" qtc_QStyle_standardIcon2 :: Ptr (TQStyle a) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQWidget t3) -> IO (Ptr (TQIcon ()))

instance QstandardIconImplementation (QStyle ()) ((StandardPixmap)) where
 standardIconImplementation x0 (x1)
  = withQIconResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyle_standardIconImplementation cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QStyle_standardIconImplementation" qtc_QStyle_standardIconImplementation :: Ptr (TQStyle a) -> CLong -> IO (Ptr (TQIcon ()))

instance QstandardIconImplementation (QStyleSc a) ((StandardPixmap)) where
 standardIconImplementation x0 (x1)
  = withQIconResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyle_standardIconImplementation cobj_x0 (toCLong $ qEnum_toInt x1)

instance QstandardIconImplementation (QStyle ()) ((StandardPixmap, QStyleOption t2)) where
 standardIconImplementation x0 (x1, x2)
  = withQIconResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QStyle_standardIconImplementation1 cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2

foreign import ccall "qtc_QStyle_standardIconImplementation1" qtc_QStyle_standardIconImplementation1 :: Ptr (TQStyle a) -> CLong -> Ptr (TQStyleOption t2) -> IO (Ptr (TQIcon ()))

instance QstandardIconImplementation (QStyleSc a) ((StandardPixmap, QStyleOption t2)) where
 standardIconImplementation x0 (x1, x2)
  = withQIconResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QStyle_standardIconImplementation1 cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2

instance QstandardIconImplementation (QStyle ()) ((StandardPixmap, QStyleOption t2, QWidget t3)) where
 standardIconImplementation x0 (x1, x2, x3)
  = withQIconResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QStyle_standardIconImplementation2 cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 cobj_x3

foreign import ccall "qtc_QStyle_standardIconImplementation2" qtc_QStyle_standardIconImplementation2 :: Ptr (TQStyle a) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQWidget t3) -> IO (Ptr (TQIcon ()))

instance QstandardIconImplementation (QStyleSc a) ((StandardPixmap, QStyleOption t2, QWidget t3)) where
 standardIconImplementation x0 (x1, x2, x3)
  = withQIconResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QStyle_standardIconImplementation2 cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 cobj_x3

instance QstandardPalette (QStyle ()) (()) where
 standardPalette x0 ()
  = withQPaletteResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyle_standardPalette_h cobj_x0

foreign import ccall "qtc_QStyle_standardPalette_h" qtc_QStyle_standardPalette_h :: Ptr (TQStyle a) -> IO (Ptr (TQPalette ()))

instance QstandardPalette (QStyleSc a) (()) where
 standardPalette x0 ()
  = withQPaletteResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyle_standardPalette_h cobj_x0

instance QstandardPixmap (QStyle ()) ((StandardPixmap)) where
 standardPixmap x0 (x1)
  = withQPixmapResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyle_standardPixmap_h cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QStyle_standardPixmap_h" qtc_QStyle_standardPixmap_h :: Ptr (TQStyle a) -> CLong -> IO (Ptr (TQPixmap ()))

instance QstandardPixmap (QStyleSc a) ((StandardPixmap)) where
 standardPixmap x0 (x1)
  = withQPixmapResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyle_standardPixmap_h cobj_x0 (toCLong $ qEnum_toInt x1)

instance QstandardPixmap (QStyle ()) ((StandardPixmap, QStyleOption t2)) where
 standardPixmap x0 (x1, x2)
  = withQPixmapResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QStyle_standardPixmap1_h cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2

foreign import ccall "qtc_QStyle_standardPixmap1_h" qtc_QStyle_standardPixmap1_h :: Ptr (TQStyle a) -> CLong -> Ptr (TQStyleOption t2) -> IO (Ptr (TQPixmap ()))

instance QstandardPixmap (QStyleSc a) ((StandardPixmap, QStyleOption t2)) where
 standardPixmap x0 (x1, x2)
  = withQPixmapResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QStyle_standardPixmap1_h cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2

instance QstandardPixmap (QStyle ()) ((StandardPixmap, QStyleOption t2, QWidget t3)) where
 standardPixmap x0 (x1, x2, x3)
  = withQPixmapResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QStyle_standardPixmap2_h cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 cobj_x3

foreign import ccall "qtc_QStyle_standardPixmap2_h" qtc_QStyle_standardPixmap2_h :: Ptr (TQStyle a) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQWidget t3) -> IO (Ptr (TQPixmap ()))

instance QstandardPixmap (QStyleSc a) ((StandardPixmap, QStyleOption t2, QWidget t3)) where
 standardPixmap x0 (x1, x2, x3)
  = withQPixmapResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QStyle_standardPixmap2_h cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 cobj_x3

instance QstyleHint (QStyle ()) ((QStyleStyleHint)) (IO (Int)) where
 styleHint x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyle_styleHint_h cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QStyle_styleHint_h" qtc_QStyle_styleHint_h :: Ptr (TQStyle a) -> CLong -> IO CInt

instance QstyleHint (QStyleSc a) ((QStyleStyleHint)) (IO (Int)) where
 styleHint x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyle_styleHint_h cobj_x0 (toCLong $ qEnum_toInt x1)

instance QstyleHint (QStyle ()) ((QStyleStyleHint, QStyleOption t2)) (IO (Int)) where
 styleHint x0 (x1, x2)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QStyle_styleHint1_h cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2

foreign import ccall "qtc_QStyle_styleHint1_h" qtc_QStyle_styleHint1_h :: Ptr (TQStyle a) -> CLong -> Ptr (TQStyleOption t2) -> IO CInt

instance QstyleHint (QStyleSc a) ((QStyleStyleHint, QStyleOption t2)) (IO (Int)) where
 styleHint x0 (x1, x2)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QStyle_styleHint1_h cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2

instance QstyleHint (QStyle ()) ((QStyleStyleHint, QStyleOption t2, QWidget t3)) (IO (Int)) where
 styleHint x0 (x1, x2, x3)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QStyle_styleHint2_h cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 cobj_x3

foreign import ccall "qtc_QStyle_styleHint2_h" qtc_QStyle_styleHint2_h :: Ptr (TQStyle a) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQWidget t3) -> IO CInt

instance QstyleHint (QStyleSc a) ((QStyleStyleHint, QStyleOption t2, QWidget t3)) (IO (Int)) where
 styleHint x0 (x1, x2, x3)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QStyle_styleHint2_h cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 cobj_x3

instance QstyleHint (QStyle ()) ((QStyleStyleHint, QStyleOption t2, QWidget t3, QStyleHintReturn t4)) (IO (Int)) where
 styleHint x0 (x1, x2, x3, x4)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    withObjectPtr x4 $ \cobj_x4 ->
    qtc_QStyle_styleHint3_h cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 cobj_x3 cobj_x4

foreign import ccall "qtc_QStyle_styleHint3_h" qtc_QStyle_styleHint3_h :: Ptr (TQStyle a) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQWidget t3) -> Ptr (TQStyleHintReturn t4) -> IO CInt

instance QstyleHint (QStyleSc a) ((QStyleStyleHint, QStyleOption t2, QWidget t3, QStyleHintReturn t4)) (IO (Int)) where
 styleHint x0 (x1, x2, x3, x4)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    withObjectPtr x4 $ \cobj_x4 ->
    qtc_QStyle_styleHint3_h cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 cobj_x3 cobj_x4

instance QqsubControlRect (QStyle ()) ((ComplexControl, QStyleOptionComplex t2, SubControl)) where
 qsubControlRect x0 (x1, x2, x3)
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QStyle_subControlRect_h cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 (toCLong $ qEnum_toInt x3)

foreign import ccall "qtc_QStyle_subControlRect_h" qtc_QStyle_subControlRect_h :: Ptr (TQStyle a) -> CLong -> Ptr (TQStyleOptionComplex t2) -> CLong -> IO (Ptr (TQRect ()))

instance QqsubControlRect (QStyleSc a) ((ComplexControl, QStyleOptionComplex t2, SubControl)) where
 qsubControlRect x0 (x1, x2, x3)
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QStyle_subControlRect_h cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 (toCLong $ qEnum_toInt x3)

instance QqsubControlRect (QStyle ()) ((ComplexControl, QStyleOptionComplex t2, SubControl, QWidget t4)) where
 qsubControlRect x0 (x1, x2, x3, x4)
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x4 $ \cobj_x4 ->
    qtc_QStyle_subControlRect1_h cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 (toCLong $ qEnum_toInt x3) cobj_x4

foreign import ccall "qtc_QStyle_subControlRect1_h" qtc_QStyle_subControlRect1_h :: Ptr (TQStyle a) -> CLong -> Ptr (TQStyleOptionComplex t2) -> CLong -> Ptr (TQWidget t4) -> IO (Ptr (TQRect ()))

instance QqsubControlRect (QStyleSc a) ((ComplexControl, QStyleOptionComplex t2, SubControl, QWidget t4)) where
 qsubControlRect x0 (x1, x2, x3, x4)
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x4 $ \cobj_x4 ->
    qtc_QStyle_subControlRect1_h cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 (toCLong $ qEnum_toInt x3) cobj_x4

instance QsubControlRect (QStyle ()) ((ComplexControl, QStyleOptionComplex t2, SubControl)) where
 subControlRect x0 (x1, x2, x3)
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QStyle_subControlRect_qth_h cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 (toCLong $ qEnum_toInt x3) crect_ret_x crect_ret_y crect_ret_w crect_ret_h

foreign import ccall "qtc_QStyle_subControlRect_qth_h" qtc_QStyle_subControlRect_qth_h :: Ptr (TQStyle a) -> CLong -> Ptr (TQStyleOptionComplex t2) -> CLong -> Ptr CInt -> Ptr CInt -> Ptr CInt -> Ptr CInt -> IO ()

instance QsubControlRect (QStyleSc a) ((ComplexControl, QStyleOptionComplex t2, SubControl)) where
 subControlRect x0 (x1, x2, x3)
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QStyle_subControlRect_qth_h cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 (toCLong $ qEnum_toInt x3) crect_ret_x crect_ret_y crect_ret_w crect_ret_h

instance QsubControlRect (QStyle ()) ((ComplexControl, QStyleOptionComplex t2, SubControl, QWidget t4)) where
 subControlRect x0 (x1, x2, x3, x4)
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x4 $ \cobj_x4 ->
    qtc_QStyle_subControlRect1_qth_h cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 (toCLong $ qEnum_toInt x3) cobj_x4 crect_ret_x crect_ret_y crect_ret_w crect_ret_h

foreign import ccall "qtc_QStyle_subControlRect1_qth_h" qtc_QStyle_subControlRect1_qth_h :: Ptr (TQStyle a) -> CLong -> Ptr (TQStyleOptionComplex t2) -> CLong -> Ptr (TQWidget t4) -> Ptr CInt -> Ptr CInt -> Ptr CInt -> Ptr CInt -> IO ()

instance QsubControlRect (QStyleSc a) ((ComplexControl, QStyleOptionComplex t2, SubControl, QWidget t4)) where
 subControlRect x0 (x1, x2, x3, x4)
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x4 $ \cobj_x4 ->
    qtc_QStyle_subControlRect1_qth_h cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 (toCLong $ qEnum_toInt x3) cobj_x4 crect_ret_x crect_ret_y crect_ret_w crect_ret_h

instance QqsubElementRect (QStyle ()) ((SubElement, QStyleOption t2)) where
 qsubElementRect x0 (x1, x2)
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QStyle_subElementRect_h cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2

foreign import ccall "qtc_QStyle_subElementRect_h" qtc_QStyle_subElementRect_h :: Ptr (TQStyle a) -> CLong -> Ptr (TQStyleOption t2) -> IO (Ptr (TQRect ()))

instance QqsubElementRect (QStyleSc a) ((SubElement, QStyleOption t2)) where
 qsubElementRect x0 (x1, x2)
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QStyle_subElementRect_h cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2

instance QqsubElementRect (QStyle ()) ((SubElement, QStyleOption t2, QWidget t3)) where
 qsubElementRect x0 (x1, x2, x3)
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QStyle_subElementRect1_h cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 cobj_x3

foreign import ccall "qtc_QStyle_subElementRect1_h" qtc_QStyle_subElementRect1_h :: Ptr (TQStyle a) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQWidget t3) -> IO (Ptr (TQRect ()))

instance QqsubElementRect (QStyleSc a) ((SubElement, QStyleOption t2, QWidget t3)) where
 qsubElementRect x0 (x1, x2, x3)
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QStyle_subElementRect1_h cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 cobj_x3

instance QsubElementRect (QStyle ()) ((SubElement, QStyleOption t2)) where
 subElementRect x0 (x1, x2)
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QStyle_subElementRect_qth_h cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 crect_ret_x crect_ret_y crect_ret_w crect_ret_h

foreign import ccall "qtc_QStyle_subElementRect_qth_h" qtc_QStyle_subElementRect_qth_h :: Ptr (TQStyle a) -> CLong -> Ptr (TQStyleOption t2) -> Ptr CInt -> Ptr CInt -> Ptr CInt -> Ptr CInt -> IO ()

instance QsubElementRect (QStyleSc a) ((SubElement, QStyleOption t2)) where
 subElementRect x0 (x1, x2)
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QStyle_subElementRect_qth_h cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 crect_ret_x crect_ret_y crect_ret_w crect_ret_h

instance QsubElementRect (QStyle ()) ((SubElement, QStyleOption t2, QWidget t3)) where
 subElementRect x0 (x1, x2, x3)
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QStyle_subElementRect1_qth_h cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 cobj_x3 crect_ret_x crect_ret_y crect_ret_w crect_ret_h

foreign import ccall "qtc_QStyle_subElementRect1_qth_h" qtc_QStyle_subElementRect1_qth_h :: Ptr (TQStyle a) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQWidget t3) -> Ptr CInt -> Ptr CInt -> Ptr CInt -> Ptr CInt -> IO ()

instance QsubElementRect (QStyleSc a) ((SubElement, QStyleOption t2, QWidget t3)) where
 subElementRect x0 (x1, x2, x3)
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QStyle_subElementRect1_qth_h cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 cobj_x3 crect_ret_x crect_ret_y crect_ret_w crect_ret_h

instance Qunpolish (QStyle ()) ((QApplication t1)) where
 unpolish x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStyle_unpolish_h cobj_x0 cobj_x1

foreign import ccall "qtc_QStyle_unpolish_h" qtc_QStyle_unpolish_h :: Ptr (TQStyle a) -> Ptr (TQApplication t1) -> IO ()

instance Qunpolish (QStyleSc a) ((QApplication t1)) where
 unpolish x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStyle_unpolish_h cobj_x0 cobj_x1

instance Qunpolish (QStyle ()) ((QWidget t1)) where
 unpolish x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStyle_unpolish1_h cobj_x0 cobj_x1

foreign import ccall "qtc_QStyle_unpolish1_h" qtc_QStyle_unpolish1_h :: Ptr (TQStyle a) -> Ptr (TQWidget t1) -> IO ()

instance Qunpolish (QStyleSc a) ((QWidget t1)) where
 unpolish x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStyle_unpolish1_h cobj_x0 cobj_x1

qStyleVisualAlignment :: ((LayoutDirection, Alignment)) -> IO (Alignment)
qStyleVisualAlignment (x1, x2)
  = withQFlagsResult $
    qtc_QStyle_visualAlignment (toCLong $ qEnum_toInt x1) (toCLong $ qFlags_toInt x2)

foreign import ccall "qtc_QStyle_visualAlignment" qtc_QStyle_visualAlignment :: CLong -> CLong -> IO CLong

qStyleVisualPos :: ((LayoutDirection, Rect, Point)) -> IO (Point)
qStyleVisualPos (x1, x2, x3)
  = withPointResult $ \cpoint_ret_x cpoint_ret_y ->
    withCRect x2 $ \crect_x2_x crect_x2_y  crect_x2_w crect_x2_h ->
    withCPoint x3 $ \cpoint_x3_x cpoint_x3_y ->
    qtc_QStyle_visualPos_qth (toCLong $ qEnum_toInt x1) crect_x2_x crect_x2_y crect_x2_w crect_x2_h  cpoint_x3_x cpoint_x3_y  cpoint_ret_x cpoint_ret_y

foreign import ccall "qtc_QStyle_visualPos_qth" qtc_QStyle_visualPos_qth :: CLong -> CInt -> CInt -> CInt -> CInt -> CInt -> CInt -> Ptr CInt -> Ptr CInt -> IO ()

qqStyleVisualPos :: ((LayoutDirection, QRect t2, QPoint t3)) -> IO (QPoint ())
qqStyleVisualPos (x1, x2, x3)
  = withQPointResult $
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QStyle_visualPos (toCLong $ qEnum_toInt x1) cobj_x2 cobj_x3

foreign import ccall "qtc_QStyle_visualPos" qtc_QStyle_visualPos :: CLong -> Ptr (TQRect t2) -> Ptr (TQPoint t3) -> IO (Ptr (TQPoint ()))

qqStyleVisualRect :: ((LayoutDirection, QRect t2, QRect t3)) -> IO (QRect ())
qqStyleVisualRect (x1, x2, x3)
  = withQRectResult $
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QStyle_visualRect (toCLong $ qEnum_toInt x1) cobj_x2 cobj_x3

foreign import ccall "qtc_QStyle_visualRect" qtc_QStyle_visualRect :: CLong -> Ptr (TQRect t2) -> Ptr (TQRect t3) -> IO (Ptr (TQRect ()))

qStyleVisualRect :: ((LayoutDirection, Rect, Rect)) -> IO (Rect)
qStyleVisualRect (x1, x2, x3)
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withCRect x2 $ \crect_x2_x crect_x2_y  crect_x2_w crect_x2_h ->
    withCRect x3 $ \crect_x3_x crect_x3_y  crect_x3_w crect_x3_h ->
    qtc_QStyle_visualRect_qth (toCLong $ qEnum_toInt x1) crect_x2_x crect_x2_y crect_x2_w crect_x2_h  crect_x3_x crect_x3_y crect_x3_w crect_x3_h  crect_ret_x crect_ret_y crect_ret_w crect_ret_h

foreign import ccall "qtc_QStyle_visualRect_qth" qtc_QStyle_visualRect_qth :: CLong -> CInt -> CInt -> CInt -> CInt -> CInt -> CInt -> CInt -> CInt -> Ptr CInt -> Ptr CInt -> Ptr CInt -> Ptr CInt -> IO ()

qStyle_delete :: QStyle a -> IO ()
qStyle_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyle_delete cobj_x0

foreign import ccall "qtc_QStyle_delete" qtc_QStyle_delete :: Ptr (TQStyle a) -> IO ()

qStyle_deleteLater :: QStyle a -> IO ()
qStyle_deleteLater x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyle_deleteLater cobj_x0

foreign import ccall "qtc_QStyle_deleteLater" qtc_QStyle_deleteLater :: Ptr (TQStyle a) -> IO ()

instance QchildEvent (QStyle ()) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStyle_childEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QStyle_childEvent" qtc_QStyle_childEvent :: Ptr (TQStyle a) -> Ptr (TQChildEvent t1) -> IO ()

instance QchildEvent (QStyleSc a) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStyle_childEvent cobj_x0 cobj_x1

instance QconnectNotify (QStyle ()) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QStyle_connectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QStyle_connectNotify" qtc_QStyle_connectNotify :: Ptr (TQStyle a) -> CWString -> IO ()

instance QconnectNotify (QStyleSc a) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QStyle_connectNotify cobj_x0 cstr_x1

instance QcustomEvent (QStyle ()) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStyle_customEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QStyle_customEvent" qtc_QStyle_customEvent :: Ptr (TQStyle a) -> Ptr (TQEvent t1) -> IO ()

instance QcustomEvent (QStyleSc a) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStyle_customEvent cobj_x0 cobj_x1

instance QdisconnectNotify (QStyle ()) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QStyle_disconnectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QStyle_disconnectNotify" qtc_QStyle_disconnectNotify :: Ptr (TQStyle a) -> CWString -> IO ()

instance QdisconnectNotify (QStyleSc a) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QStyle_disconnectNotify cobj_x0 cstr_x1

instance Qevent (QStyle ()) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStyle_event_h cobj_x0 cobj_x1

foreign import ccall "qtc_QStyle_event_h" qtc_QStyle_event_h :: Ptr (TQStyle a) -> Ptr (TQEvent t1) -> IO CBool

instance Qevent (QStyleSc a) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStyle_event_h cobj_x0 cobj_x1

instance QeventFilter (QStyle ()) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QStyle_eventFilter_h cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QStyle_eventFilter_h" qtc_QStyle_eventFilter_h :: Ptr (TQStyle a) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO CBool

instance QeventFilter (QStyleSc a) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QStyle_eventFilter_h cobj_x0 cobj_x1 cobj_x2

instance Qreceivers (QStyle ()) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QStyle_receivers cobj_x0 cstr_x1

foreign import ccall "qtc_QStyle_receivers" qtc_QStyle_receivers :: Ptr (TQStyle a) -> CWString -> IO CInt

instance Qreceivers (QStyleSc a) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QStyle_receivers cobj_x0 cstr_x1

instance Qsender (QStyle ()) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyle_sender cobj_x0

foreign import ccall "qtc_QStyle_sender" qtc_QStyle_sender :: Ptr (TQStyle a) -> IO (Ptr (TQObject ()))

instance Qsender (QStyleSc a) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyle_sender cobj_x0

instance QtimerEvent (QStyle ()) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStyle_timerEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QStyle_timerEvent" qtc_QStyle_timerEvent :: Ptr (TQStyle a) -> Ptr (TQTimerEvent t1) -> IO ()

instance QtimerEvent (QStyleSc a) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStyle_timerEvent cobj_x0 cobj_x1

