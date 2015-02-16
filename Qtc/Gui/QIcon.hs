{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QIcon.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:25
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QIcon (
  QqIcon(..)
  ,QqIcon_nf(..)
  ,qIcon_delete
  )
  where

import Foreign.C.Types
import Qth.ClassTypes.Core
import Qtc.Enums.Base
import Qtc.Enums.Core.Qt
import Qtc.Enums.Gui.QIcon

import Qtc.Classes.Base
import Qtc.Classes.Qccs
import Qtc.Classes.Core
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core
import Qtc.Classes.Gui
import Qtc.ClassTypes.Gui

class QqIcon x1 where
  qIcon :: x1 -> IO (QIcon ())

instance QqIcon (()) where
 qIcon ()
  = withQIconResult $
    qtc_QIcon

foreign import ccall "qtc_QIcon" qtc_QIcon :: IO (Ptr (TQIcon ()))

instance QqIcon ((QIconEngineV2 t1)) where
 qIcon (x1)
  = withQIconResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QIcon1 cobj_x1

foreign import ccall "qtc_QIcon1" qtc_QIcon1 :: Ptr (TQIconEngineV2 t1) -> IO (Ptr (TQIcon ()))

instance QqIcon ((QIconEngine t1)) where
 qIcon (x1)
  = withQIconResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QIcon2 cobj_x1

foreign import ccall "qtc_QIcon2" qtc_QIcon2 :: Ptr (TQIconEngine t1) -> IO (Ptr (TQIcon ()))

instance QqIcon ((String)) where
 qIcon (x1)
  = withQIconResult $
    withCWString x1 $ \cstr_x1 ->
    qtc_QIcon3 cstr_x1

foreign import ccall "qtc_QIcon3" qtc_QIcon3 :: CWString -> IO (Ptr (TQIcon ()))

instance QqIcon ((QPixmap t1)) where
 qIcon (x1)
  = withQIconResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QIcon4 cobj_x1

foreign import ccall "qtc_QIcon4" qtc_QIcon4 :: Ptr (TQPixmap t1) -> IO (Ptr (TQIcon ()))

instance QqIcon ((QIcon t1)) where
 qIcon (x1)
  = withQIconResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QIcon5 cobj_x1

foreign import ccall "qtc_QIcon5" qtc_QIcon5 :: Ptr (TQIcon t1) -> IO (Ptr (TQIcon ()))

class QqIcon_nf x1 where
  qIcon_nf :: x1 -> IO (QIcon ())

instance QqIcon_nf (()) where
 qIcon_nf ()
  = withObjectRefResult $
    qtc_QIcon

instance QqIcon_nf ((QIconEngineV2 t1)) where
 qIcon_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QIcon1 cobj_x1

instance QqIcon_nf ((QIconEngine t1)) where
 qIcon_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QIcon2 cobj_x1

instance QqIcon_nf ((String)) where
 qIcon_nf (x1)
  = withObjectRefResult $
    withCWString x1 $ \cstr_x1 ->
    qtc_QIcon3 cstr_x1

instance QqIcon_nf ((QPixmap t1)) where
 qIcon_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QIcon4 cobj_x1

instance QqIcon_nf ((QIcon t1)) where
 qIcon_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QIcon5 cobj_x1

instance QqactualSize (QIcon a) ((QSize t1)) where
 qactualSize x0 (x1)
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QIcon_actualSize cobj_x0 cobj_x1

foreign import ccall "qtc_QIcon_actualSize" qtc_QIcon_actualSize :: Ptr (TQIcon a) -> Ptr (TQSize t1) -> IO (Ptr (TQSize ()))

instance QqactualSize (QIcon a) ((QSize t1, QIconMode)) where
 qactualSize x0 (x1, x2)
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QIcon_actualSize1 cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QIcon_actualSize1" qtc_QIcon_actualSize1 :: Ptr (TQIcon a) -> Ptr (TQSize t1) -> CLong -> IO (Ptr (TQSize ()))

instance QqactualSize (QIcon a) ((QSize t1, QIconMode, QIconState)) where
 qactualSize x0 (x1, x2, x3)
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QIcon_actualSize2 cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2) (toCLong $ qEnum_toInt x3)

foreign import ccall "qtc_QIcon_actualSize2" qtc_QIcon_actualSize2 :: Ptr (TQIcon a) -> Ptr (TQSize t1) -> CLong -> CLong -> IO (Ptr (TQSize ()))

instance QactualSize (QIcon a) ((Size)) where
 actualSize x0 (x1)
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QIcon_actualSize_qth cobj_x0 csize_x1_w csize_x1_h  csize_ret_w csize_ret_h

foreign import ccall "qtc_QIcon_actualSize_qth" qtc_QIcon_actualSize_qth :: Ptr (TQIcon a) -> CInt -> CInt -> Ptr CInt -> Ptr CInt -> IO ()

instance QactualSize (QIcon a) ((Size, QIconMode)) where
 actualSize x0 (x1, x2)
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QIcon_actualSize1_qth cobj_x0 csize_x1_w csize_x1_h  (toCLong $ qEnum_toInt x2) csize_ret_w csize_ret_h

foreign import ccall "qtc_QIcon_actualSize1_qth" qtc_QIcon_actualSize1_qth :: Ptr (TQIcon a) -> CInt -> CInt -> CLong -> Ptr CInt -> Ptr CInt -> IO ()

instance QactualSize (QIcon a) ((Size, QIconMode, QIconState)) where
 actualSize x0 (x1, x2, x3)
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QIcon_actualSize2_qth cobj_x0 csize_x1_w csize_x1_h  (toCLong $ qEnum_toInt x2) (toCLong $ qEnum_toInt x3) csize_ret_w csize_ret_h

foreign import ccall "qtc_QIcon_actualSize2_qth" qtc_QIcon_actualSize2_qth :: Ptr (TQIcon a) -> CInt -> CInt -> CLong -> CLong -> Ptr CInt -> Ptr CInt -> IO ()

instance QaddFile (QIcon a) ((String)) where
 addFile x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QIcon_addFile cobj_x0 cstr_x1

foreign import ccall "qtc_QIcon_addFile" qtc_QIcon_addFile :: Ptr (TQIcon a) -> CWString -> IO ()

instance QqaddFile (QIcon a) ((String, QSize t2)) where
 qaddFile x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QIcon_addFile1 cobj_x0 cstr_x1 cobj_x2

foreign import ccall "qtc_QIcon_addFile1" qtc_QIcon_addFile1 :: Ptr (TQIcon a) -> CWString -> Ptr (TQSize t2) -> IO ()

instance QqaddFile (QIcon a) ((String, QSize t2, QIconMode)) where
 qaddFile x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QIcon_addFile2 cobj_x0 cstr_x1 cobj_x2 (toCLong $ qEnum_toInt x3)

foreign import ccall "qtc_QIcon_addFile2" qtc_QIcon_addFile2 :: Ptr (TQIcon a) -> CWString -> Ptr (TQSize t2) -> CLong -> IO ()

instance QqaddFile (QIcon a) ((String, QSize t2, QIconMode, QIconState)) where
 qaddFile x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QIcon_addFile3 cobj_x0 cstr_x1 cobj_x2 (toCLong $ qEnum_toInt x3) (toCLong $ qEnum_toInt x4)

foreign import ccall "qtc_QIcon_addFile3" qtc_QIcon_addFile3 :: Ptr (TQIcon a) -> CWString -> Ptr (TQSize t2) -> CLong -> CLong -> IO ()

instance QaddFile (QIcon a) ((String, Size)) where
 addFile x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    withCSize x2 $ \csize_x2_w csize_x2_h -> 
    qtc_QIcon_addFile1_qth cobj_x0 cstr_x1 csize_x2_w csize_x2_h 

foreign import ccall "qtc_QIcon_addFile1_qth" qtc_QIcon_addFile1_qth :: Ptr (TQIcon a) -> CWString -> CInt -> CInt -> IO ()

instance QaddFile (QIcon a) ((String, Size, QIconMode)) where
 addFile x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    withCSize x2 $ \csize_x2_w csize_x2_h -> 
    qtc_QIcon_addFile2_qth cobj_x0 cstr_x1 csize_x2_w csize_x2_h  (toCLong $ qEnum_toInt x3)

foreign import ccall "qtc_QIcon_addFile2_qth" qtc_QIcon_addFile2_qth :: Ptr (TQIcon a) -> CWString -> CInt -> CInt -> CLong -> IO ()

instance QaddFile (QIcon a) ((String, Size, QIconMode, QIconState)) where
 addFile x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    withCSize x2 $ \csize_x2_w csize_x2_h -> 
    qtc_QIcon_addFile3_qth cobj_x0 cstr_x1 csize_x2_w csize_x2_h  (toCLong $ qEnum_toInt x3) (toCLong $ qEnum_toInt x4)

foreign import ccall "qtc_QIcon_addFile3_qth" qtc_QIcon_addFile3_qth :: Ptr (TQIcon a) -> CWString -> CInt -> CInt -> CLong -> CLong -> IO ()

instance QaddPixmap (QIcon a) ((QPixmap t1)) (IO ()) where
 addPixmap x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QIcon_addPixmap cobj_x0 cobj_x1

foreign import ccall "qtc_QIcon_addPixmap" qtc_QIcon_addPixmap :: Ptr (TQIcon a) -> Ptr (TQPixmap t1) -> IO ()

instance QaddPixmap (QIcon a) ((QPixmap t1, QIconMode)) (IO ()) where
 addPixmap x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QIcon_addPixmap1 cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QIcon_addPixmap1" qtc_QIcon_addPixmap1 :: Ptr (TQIcon a) -> Ptr (TQPixmap t1) -> CLong -> IO ()

instance QaddPixmap (QIcon a) ((QPixmap t1, QIconMode, QIconState)) (IO ()) where
 addPixmap x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QIcon_addPixmap2 cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2) (toCLong $ qEnum_toInt x3)

foreign import ccall "qtc_QIcon_addPixmap2" qtc_QIcon_addPixmap2 :: Ptr (TQIcon a) -> Ptr (TQPixmap t1) -> CLong -> CLong -> IO ()

instance QcacheKey (QIcon a) (()) where
 cacheKey x0 ()
  = withLongLongResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QIcon_cacheKey cobj_x0

foreign import ccall "qtc_QIcon_cacheKey" qtc_QIcon_cacheKey :: Ptr (TQIcon a) -> IO CLLong

instance Qdetach (QIcon a) (()) where
 detach x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QIcon_detach cobj_x0

foreign import ccall "qtc_QIcon_detach" qtc_QIcon_detach :: Ptr (TQIcon a) -> IO ()

instance QisDetached (QIcon a) (()) where
 isDetached x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QIcon_isDetached cobj_x0

foreign import ccall "qtc_QIcon_isDetached" qtc_QIcon_isDetached :: Ptr (TQIcon a) -> IO CBool

instance QqisNull (QIcon a) (()) where
 qisNull x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QIcon_isNull cobj_x0

foreign import ccall "qtc_QIcon_isNull" qtc_QIcon_isNull :: Ptr (TQIcon a) -> IO CBool

instance Qpaint (QIcon a) ((QPainter t1, Int, Int, Int, Int)) where
 paint x0 (x1, x2, x3, x4, x5)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QIcon_paint4 cobj_x0 cobj_x1 (toCInt x2) (toCInt x3) (toCInt x4) (toCInt x5)

foreign import ccall "qtc_QIcon_paint4" qtc_QIcon_paint4 :: Ptr (TQIcon a) -> Ptr (TQPainter t1) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance Qpaint (QIcon a) ((QPainter t1, Int, Int, Int, Int, Alignment)) where
 paint x0 (x1, x2, x3, x4, x5, x6)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QIcon_paint5 cobj_x0 cobj_x1 (toCInt x2) (toCInt x3) (toCInt x4) (toCInt x5) (toCLong $ qFlags_toInt x6)

foreign import ccall "qtc_QIcon_paint5" qtc_QIcon_paint5 :: Ptr (TQIcon a) -> Ptr (TQPainter t1) -> CInt -> CInt -> CInt -> CInt -> CLong -> IO ()

instance Qpaint (QIcon a) ((QPainter t1, Int, Int, Int, Int, Alignment, QIconMode)) where
 paint x0 (x1, x2, x3, x4, x5, x6, x7)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QIcon_paint6 cobj_x0 cobj_x1 (toCInt x2) (toCInt x3) (toCInt x4) (toCInt x5) (toCLong $ qFlags_toInt x6) (toCLong $ qEnum_toInt x7)

foreign import ccall "qtc_QIcon_paint6" qtc_QIcon_paint6 :: Ptr (TQIcon a) -> Ptr (TQPainter t1) -> CInt -> CInt -> CInt -> CInt -> CLong -> CLong -> IO ()

instance Qpaint (QIcon a) ((QPainter t1, Int, Int, Int, Int, Alignment, QIconMode, QIconState)) where
 paint x0 (x1, x2, x3, x4, x5, x6, x7, x8)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QIcon_paint7 cobj_x0 cobj_x1 (toCInt x2) (toCInt x3) (toCInt x4) (toCInt x5) (toCLong $ qFlags_toInt x6) (toCLong $ qEnum_toInt x7) (toCLong $ qEnum_toInt x8)

foreign import ccall "qtc_QIcon_paint7" qtc_QIcon_paint7 :: Ptr (TQIcon a) -> Ptr (TQPainter t1) -> CInt -> CInt -> CInt -> CInt -> CLong -> CLong -> CLong -> IO ()

instance Qqpaint (QIcon a) ((QPainter t1, QRect t2)) where
 qpaint x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QIcon_paint cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QIcon_paint" qtc_QIcon_paint :: Ptr (TQIcon a) -> Ptr (TQPainter t1) -> Ptr (TQRect t2) -> IO ()

instance Qqpaint (QIcon a) ((QPainter t1, QRect t2, Alignment)) where
 qpaint x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QIcon_paint1 cobj_x0 cobj_x1 cobj_x2 (toCLong $ qFlags_toInt x3)

foreign import ccall "qtc_QIcon_paint1" qtc_QIcon_paint1 :: Ptr (TQIcon a) -> Ptr (TQPainter t1) -> Ptr (TQRect t2) -> CLong -> IO ()

instance Qqpaint (QIcon a) ((QPainter t1, QRect t2, Alignment, QIconMode)) where
 qpaint x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QIcon_paint2 cobj_x0 cobj_x1 cobj_x2 (toCLong $ qFlags_toInt x3) (toCLong $ qEnum_toInt x4)

foreign import ccall "qtc_QIcon_paint2" qtc_QIcon_paint2 :: Ptr (TQIcon a) -> Ptr (TQPainter t1) -> Ptr (TQRect t2) -> CLong -> CLong -> IO ()

instance Qqpaint (QIcon a) ((QPainter t1, QRect t2, Alignment, QIconMode, QIconState)) where
 qpaint x0 (x1, x2, x3, x4, x5)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QIcon_paint3 cobj_x0 cobj_x1 cobj_x2 (toCLong $ qFlags_toInt x3) (toCLong $ qEnum_toInt x4) (toCLong $ qEnum_toInt x5)

foreign import ccall "qtc_QIcon_paint3" qtc_QIcon_paint3 :: Ptr (TQIcon a) -> Ptr (TQPainter t1) -> Ptr (TQRect t2) -> CLong -> CLong -> CLong -> IO ()

instance Qpaint (QIcon a) ((QPainter t1, Rect)) where
 paint x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCRect x2 $ \crect_x2_x crect_x2_y  crect_x2_w crect_x2_h -> 
    qtc_QIcon_paint_qth cobj_x0 cobj_x1 crect_x2_x crect_x2_y crect_x2_w crect_x2_h 

foreign import ccall "qtc_QIcon_paint_qth" qtc_QIcon_paint_qth :: Ptr (TQIcon a) -> Ptr (TQPainter t1) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance Qpaint (QIcon a) ((QPainter t1, Rect, Alignment)) where
 paint x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCRect x2 $ \crect_x2_x crect_x2_y  crect_x2_w crect_x2_h -> 
    qtc_QIcon_paint1_qth cobj_x0 cobj_x1 crect_x2_x crect_x2_y crect_x2_w crect_x2_h  (toCLong $ qFlags_toInt x3)

foreign import ccall "qtc_QIcon_paint1_qth" qtc_QIcon_paint1_qth :: Ptr (TQIcon a) -> Ptr (TQPainter t1) -> CInt -> CInt -> CInt -> CInt -> CLong -> IO ()

instance Qpaint (QIcon a) ((QPainter t1, Rect, Alignment, QIconMode)) where
 paint x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCRect x2 $ \crect_x2_x crect_x2_y  crect_x2_w crect_x2_h -> 
    qtc_QIcon_paint2_qth cobj_x0 cobj_x1 crect_x2_x crect_x2_y crect_x2_w crect_x2_h  (toCLong $ qFlags_toInt x3) (toCLong $ qEnum_toInt x4)

foreign import ccall "qtc_QIcon_paint2_qth" qtc_QIcon_paint2_qth :: Ptr (TQIcon a) -> Ptr (TQPainter t1) -> CInt -> CInt -> CInt -> CInt -> CLong -> CLong -> IO ()

instance Qpaint (QIcon a) ((QPainter t1, Rect, Alignment, QIconMode, QIconState)) where
 paint x0 (x1, x2, x3, x4, x5)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCRect x2 $ \crect_x2_x crect_x2_y  crect_x2_w crect_x2_h -> 
    qtc_QIcon_paint3_qth cobj_x0 cobj_x1 crect_x2_x crect_x2_y crect_x2_w crect_x2_h  (toCLong $ qFlags_toInt x3) (toCLong $ qEnum_toInt x4) (toCLong $ qEnum_toInt x5)

foreign import ccall "qtc_QIcon_paint3_qth" qtc_QIcon_paint3_qth :: Ptr (TQIcon a) -> Ptr (TQPainter t1) -> CInt -> CInt -> CInt -> CInt -> CLong -> CLong -> CLong -> IO ()

instance Qpixmap (QIcon ()) ((Int)) where
 pixmap x0 (x1)
  = withQPixmapResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QIcon_pixmap1 cobj_x0 (toCInt x1)

foreign import ccall "qtc_QIcon_pixmap1" qtc_QIcon_pixmap1 :: Ptr (TQIcon a) -> CInt -> IO (Ptr (TQPixmap ()))

instance Qpixmap (QIconSc a) ((Int)) where
 pixmap x0 (x1)
  = withQPixmapResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QIcon_pixmap1 cobj_x0 (toCInt x1)

instance Qpixmap_nf (QIcon ()) ((Int)) where
 pixmap_nf x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QIcon_pixmap1 cobj_x0 (toCInt x1)

instance Qpixmap_nf (QIconSc a) ((Int)) where
 pixmap_nf x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QIcon_pixmap1 cobj_x0 (toCInt x1)

instance Qpixmap (QIcon ()) ((Int, Int)) where
 pixmap x0 (x1, x2)
  = withQPixmapResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QIcon_pixmap3 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QIcon_pixmap3" qtc_QIcon_pixmap3 :: Ptr (TQIcon a) -> CInt -> CInt -> IO (Ptr (TQPixmap ()))

instance Qpixmap (QIconSc a) ((Int, Int)) where
 pixmap x0 (x1, x2)
  = withQPixmapResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QIcon_pixmap3 cobj_x0 (toCInt x1) (toCInt x2)

instance Qpixmap_nf (QIcon ()) ((Int, Int)) where
 pixmap_nf x0 (x1, x2)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QIcon_pixmap3 cobj_x0 (toCInt x1) (toCInt x2)

instance Qpixmap_nf (QIconSc a) ((Int, Int)) where
 pixmap_nf x0 (x1, x2)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QIcon_pixmap3 cobj_x0 (toCInt x1) (toCInt x2)

instance Qpixmap (QIcon ()) ((Int, Int, QIconMode)) where
 pixmap x0 (x1, x2, x3)
  = withQPixmapResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QIcon_pixmap6 cobj_x0 (toCInt x1) (toCInt x2) (toCLong $ qEnum_toInt x3)

foreign import ccall "qtc_QIcon_pixmap6" qtc_QIcon_pixmap6 :: Ptr (TQIcon a) -> CInt -> CInt -> CLong -> IO (Ptr (TQPixmap ()))

instance Qpixmap (QIconSc a) ((Int, Int, QIconMode)) where
 pixmap x0 (x1, x2, x3)
  = withQPixmapResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QIcon_pixmap6 cobj_x0 (toCInt x1) (toCInt x2) (toCLong $ qEnum_toInt x3)

instance Qpixmap_nf (QIcon ()) ((Int, Int, QIconMode)) where
 pixmap_nf x0 (x1, x2, x3)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QIcon_pixmap6 cobj_x0 (toCInt x1) (toCInt x2) (toCLong $ qEnum_toInt x3)

instance Qpixmap_nf (QIconSc a) ((Int, Int, QIconMode)) where
 pixmap_nf x0 (x1, x2, x3)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QIcon_pixmap6 cobj_x0 (toCInt x1) (toCInt x2) (toCLong $ qEnum_toInt x3)

instance Qpixmap (QIcon ()) ((Int, Int, QIconMode, QIconState)) where
 pixmap x0 (x1, x2, x3, x4)
  = withQPixmapResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QIcon_pixmap8 cobj_x0 (toCInt x1) (toCInt x2) (toCLong $ qEnum_toInt x3) (toCLong $ qEnum_toInt x4)

foreign import ccall "qtc_QIcon_pixmap8" qtc_QIcon_pixmap8 :: Ptr (TQIcon a) -> CInt -> CInt -> CLong -> CLong -> IO (Ptr (TQPixmap ()))

instance Qpixmap (QIconSc a) ((Int, Int, QIconMode, QIconState)) where
 pixmap x0 (x1, x2, x3, x4)
  = withQPixmapResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QIcon_pixmap8 cobj_x0 (toCInt x1) (toCInt x2) (toCLong $ qEnum_toInt x3) (toCLong $ qEnum_toInt x4)

instance Qpixmap_nf (QIcon ()) ((Int, Int, QIconMode, QIconState)) where
 pixmap_nf x0 (x1, x2, x3, x4)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QIcon_pixmap8 cobj_x0 (toCInt x1) (toCInt x2) (toCLong $ qEnum_toInt x3) (toCLong $ qEnum_toInt x4)

instance Qpixmap_nf (QIconSc a) ((Int, Int, QIconMode, QIconState)) where
 pixmap_nf x0 (x1, x2, x3, x4)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QIcon_pixmap8 cobj_x0 (toCInt x1) (toCInt x2) (toCLong $ qEnum_toInt x3) (toCLong $ qEnum_toInt x4)

instance Qpixmap (QIcon ()) ((Int, QIconMode)) where
 pixmap x0 (x1, x2)
  = withQPixmapResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QIcon_pixmap4 cobj_x0 (toCInt x1) (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QIcon_pixmap4" qtc_QIcon_pixmap4 :: Ptr (TQIcon a) -> CInt -> CLong -> IO (Ptr (TQPixmap ()))

instance Qpixmap (QIconSc a) ((Int, QIconMode)) where
 pixmap x0 (x1, x2)
  = withQPixmapResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QIcon_pixmap4 cobj_x0 (toCInt x1) (toCLong $ qEnum_toInt x2)

instance Qpixmap_nf (QIcon ()) ((Int, QIconMode)) where
 pixmap_nf x0 (x1, x2)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QIcon_pixmap4 cobj_x0 (toCInt x1) (toCLong $ qEnum_toInt x2)

instance Qpixmap_nf (QIconSc a) ((Int, QIconMode)) where
 pixmap_nf x0 (x1, x2)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QIcon_pixmap4 cobj_x0 (toCInt x1) (toCLong $ qEnum_toInt x2)

instance Qpixmap (QIcon ()) ((Int, QIconMode, QIconState)) where
 pixmap x0 (x1, x2, x3)
  = withQPixmapResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QIcon_pixmap5 cobj_x0 (toCInt x1) (toCLong $ qEnum_toInt x2) (toCLong $ qEnum_toInt x3)

foreign import ccall "qtc_QIcon_pixmap5" qtc_QIcon_pixmap5 :: Ptr (TQIcon a) -> CInt -> CLong -> CLong -> IO (Ptr (TQPixmap ()))

instance Qpixmap (QIconSc a) ((Int, QIconMode, QIconState)) where
 pixmap x0 (x1, x2, x3)
  = withQPixmapResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QIcon_pixmap5 cobj_x0 (toCInt x1) (toCLong $ qEnum_toInt x2) (toCLong $ qEnum_toInt x3)

instance Qpixmap_nf (QIcon ()) ((Int, QIconMode, QIconState)) where
 pixmap_nf x0 (x1, x2, x3)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QIcon_pixmap5 cobj_x0 (toCInt x1) (toCLong $ qEnum_toInt x2) (toCLong $ qEnum_toInt x3)

instance Qpixmap_nf (QIconSc a) ((Int, QIconMode, QIconState)) where
 pixmap_nf x0 (x1, x2, x3)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QIcon_pixmap5 cobj_x0 (toCInt x1) (toCLong $ qEnum_toInt x2) (toCLong $ qEnum_toInt x3)

instance Qqpixmap (QIcon ()) ((QSize t1)) where
 qpixmap x0 (x1)
  = withQPixmapResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QIcon_pixmap cobj_x0 cobj_x1

foreign import ccall "qtc_QIcon_pixmap" qtc_QIcon_pixmap :: Ptr (TQIcon a) -> Ptr (TQSize t1) -> IO (Ptr (TQPixmap ()))

instance Qqpixmap (QIconSc a) ((QSize t1)) where
 qpixmap x0 (x1)
  = withQPixmapResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QIcon_pixmap cobj_x0 cobj_x1

instance Qqpixmap_nf (QIcon ()) ((QSize t1)) where
 qpixmap_nf x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QIcon_pixmap cobj_x0 cobj_x1

instance Qqpixmap_nf (QIconSc a) ((QSize t1)) where
 qpixmap_nf x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QIcon_pixmap cobj_x0 cobj_x1

instance Qqpixmap (QIcon ()) ((QSize t1, QIconMode)) where
 qpixmap x0 (x1, x2)
  = withQPixmapResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QIcon_pixmap2 cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QIcon_pixmap2" qtc_QIcon_pixmap2 :: Ptr (TQIcon a) -> Ptr (TQSize t1) -> CLong -> IO (Ptr (TQPixmap ()))

instance Qqpixmap (QIconSc a) ((QSize t1, QIconMode)) where
 qpixmap x0 (x1, x2)
  = withQPixmapResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QIcon_pixmap2 cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

instance Qqpixmap_nf (QIcon ()) ((QSize t1, QIconMode)) where
 qpixmap_nf x0 (x1, x2)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QIcon_pixmap2 cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

instance Qqpixmap_nf (QIconSc a) ((QSize t1, QIconMode)) where
 qpixmap_nf x0 (x1, x2)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QIcon_pixmap2 cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

instance Qqpixmap (QIcon ()) ((QSize t1, QIconMode, QIconState)) where
 qpixmap x0 (x1, x2, x3)
  = withQPixmapResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QIcon_pixmap7 cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2) (toCLong $ qEnum_toInt x3)

foreign import ccall "qtc_QIcon_pixmap7" qtc_QIcon_pixmap7 :: Ptr (TQIcon a) -> Ptr (TQSize t1) -> CLong -> CLong -> IO (Ptr (TQPixmap ()))

instance Qqpixmap (QIconSc a) ((QSize t1, QIconMode, QIconState)) where
 qpixmap x0 (x1, x2, x3)
  = withQPixmapResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QIcon_pixmap7 cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2) (toCLong $ qEnum_toInt x3)

instance Qqpixmap_nf (QIcon ()) ((QSize t1, QIconMode, QIconState)) where
 qpixmap_nf x0 (x1, x2, x3)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QIcon_pixmap7 cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2) (toCLong $ qEnum_toInt x3)

instance Qqpixmap_nf (QIconSc a) ((QSize t1, QIconMode, QIconState)) where
 qpixmap_nf x0 (x1, x2, x3)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QIcon_pixmap7 cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2) (toCLong $ qEnum_toInt x3)

instance Qpixmap (QIcon ()) ((Size)) where
 pixmap x0 (x1)
  = withQPixmapResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QIcon_pixmap_qth cobj_x0 csize_x1_w csize_x1_h 

foreign import ccall "qtc_QIcon_pixmap_qth" qtc_QIcon_pixmap_qth :: Ptr (TQIcon a) -> CInt -> CInt -> IO (Ptr (TQPixmap ()))

instance Qpixmap (QIconSc a) ((Size)) where
 pixmap x0 (x1)
  = withQPixmapResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QIcon_pixmap_qth cobj_x0 csize_x1_w csize_x1_h 

instance Qpixmap_nf (QIcon ()) ((Size)) where
 pixmap_nf x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QIcon_pixmap_qth cobj_x0 csize_x1_w csize_x1_h 

instance Qpixmap_nf (QIconSc a) ((Size)) where
 pixmap_nf x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QIcon_pixmap_qth cobj_x0 csize_x1_w csize_x1_h 

instance Qpixmap (QIcon ()) ((Size, QIconMode)) where
 pixmap x0 (x1, x2)
  = withQPixmapResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QIcon_pixmap2_qth cobj_x0 csize_x1_w csize_x1_h  (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QIcon_pixmap2_qth" qtc_QIcon_pixmap2_qth :: Ptr (TQIcon a) -> CInt -> CInt -> CLong -> IO (Ptr (TQPixmap ()))

instance Qpixmap (QIconSc a) ((Size, QIconMode)) where
 pixmap x0 (x1, x2)
  = withQPixmapResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QIcon_pixmap2_qth cobj_x0 csize_x1_w csize_x1_h  (toCLong $ qEnum_toInt x2)

instance Qpixmap_nf (QIcon ()) ((Size, QIconMode)) where
 pixmap_nf x0 (x1, x2)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QIcon_pixmap2_qth cobj_x0 csize_x1_w csize_x1_h  (toCLong $ qEnum_toInt x2)

instance Qpixmap_nf (QIconSc a) ((Size, QIconMode)) where
 pixmap_nf x0 (x1, x2)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QIcon_pixmap2_qth cobj_x0 csize_x1_w csize_x1_h  (toCLong $ qEnum_toInt x2)

instance Qpixmap (QIcon ()) ((Size, QIconMode, QIconState)) where
 pixmap x0 (x1, x2, x3)
  = withQPixmapResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QIcon_pixmap7_qth cobj_x0 csize_x1_w csize_x1_h  (toCLong $ qEnum_toInt x2) (toCLong $ qEnum_toInt x3)

foreign import ccall "qtc_QIcon_pixmap7_qth" qtc_QIcon_pixmap7_qth :: Ptr (TQIcon a) -> CInt -> CInt -> CLong -> CLong -> IO (Ptr (TQPixmap ()))

instance Qpixmap (QIconSc a) ((Size, QIconMode, QIconState)) where
 pixmap x0 (x1, x2, x3)
  = withQPixmapResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QIcon_pixmap7_qth cobj_x0 csize_x1_w csize_x1_h  (toCLong $ qEnum_toInt x2) (toCLong $ qEnum_toInt x3)

instance Qpixmap_nf (QIcon ()) ((Size, QIconMode, QIconState)) where
 pixmap_nf x0 (x1, x2, x3)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QIcon_pixmap7_qth cobj_x0 csize_x1_w csize_x1_h  (toCLong $ qEnum_toInt x2) (toCLong $ qEnum_toInt x3)

instance Qpixmap_nf (QIconSc a) ((Size, QIconMode, QIconState)) where
 pixmap_nf x0 (x1, x2, x3)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QIcon_pixmap7_qth cobj_x0 csize_x1_w csize_x1_h  (toCLong $ qEnum_toInt x2) (toCLong $ qEnum_toInt x3)

instance QserialNumber (QIcon a) (()) where
 serialNumber x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QIcon_serialNumber cobj_x0

foreign import ccall "qtc_QIcon_serialNumber" qtc_QIcon_serialNumber :: Ptr (TQIcon a) -> IO CInt

qIcon_delete :: QIcon a -> IO ()
qIcon_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QIcon_delete cobj_x0

foreign import ccall "qtc_QIcon_delete" qtc_QIcon_delete :: Ptr (TQIcon a) -> IO ()

