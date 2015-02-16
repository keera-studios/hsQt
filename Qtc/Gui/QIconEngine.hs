{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QIconEngine.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:21
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QIconEngine (
  QqIconEngine(..)
  ,QqIconEngine_nf(..)
  ,qIconEngine_delete, qIconEngine_delete1
  )
  where

import Foreign.C.Types
import Qth.ClassTypes.Core
import Qtc.Enums.Base
import Qtc.Enums.Gui.QIcon

import Qtc.Classes.Base
import Qtc.Classes.Qccs
import Qtc.Classes.Core
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core
import Qtc.Classes.Gui
import Qtc.ClassTypes.Gui

instance QuserMethod (QIconEngine ()) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QIconEngine_userMethod cobj_qobj (toCInt evid)

foreign import ccall "qtc_QIconEngine_userMethod" qtc_QIconEngine_userMethod :: Ptr (TQIconEngine a) -> CInt -> IO ()

instance QuserMethod (QIconEngineSc a) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QIconEngine_userMethod cobj_qobj (toCInt evid)

instance QuserMethod (QIconEngine ()) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QIconEngine_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

foreign import ccall "qtc_QIconEngine_userMethodVariant" qtc_QIconEngine_userMethodVariant :: Ptr (TQIconEngine a) -> CInt -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))

instance QuserMethod (QIconEngineSc a) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QIconEngine_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

class QqIconEngine x1 where
  qIconEngine :: x1 -> IO (QIconEngine ())

instance QqIconEngine (()) where
 qIconEngine ()
  = withQIconEngineResult $
    qtc_QIconEngine

foreign import ccall "qtc_QIconEngine" qtc_QIconEngine :: IO (Ptr (TQIconEngine ()))

instance QqIconEngine ((QIconEngine t1)) where
 qIconEngine (x1)
  = withQIconEngineResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QIconEngine1 cobj_x1

foreign import ccall "qtc_QIconEngine1" qtc_QIconEngine1 :: Ptr (TQIconEngine t1) -> IO (Ptr (TQIconEngine ()))

class QqIconEngine_nf x1 where
  qIconEngine_nf :: x1 -> IO (QIconEngine ())

instance QqIconEngine_nf (()) where
 qIconEngine_nf ()
  = withObjectRefResult $
    qtc_QIconEngine

instance QqIconEngine_nf ((QIconEngine t1)) where
 qIconEngine_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QIconEngine1 cobj_x1

instance QqactualSize (QIconEngine ()) ((QSize t1, QIconMode, QIconState)) where
 qactualSize x0 (x1, x2, x3)
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QIconEngine_actualSize_h cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2) (toCLong $ qEnum_toInt x3)

foreign import ccall "qtc_QIconEngine_actualSize_h" qtc_QIconEngine_actualSize_h :: Ptr (TQIconEngine a) -> Ptr (TQSize t1) -> CLong -> CLong -> IO (Ptr (TQSize ()))

instance QqactualSize (QIconEngineSc a) ((QSize t1, QIconMode, QIconState)) where
 qactualSize x0 (x1, x2, x3)
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QIconEngine_actualSize_h cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2) (toCLong $ qEnum_toInt x3)

instance QactualSize (QIconEngine ()) ((Size, QIconMode, QIconState)) where
 actualSize x0 (x1, x2, x3)
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QIconEngine_actualSize_qth_h cobj_x0 csize_x1_w csize_x1_h  (toCLong $ qEnum_toInt x2) (toCLong $ qEnum_toInt x3) csize_ret_w csize_ret_h

foreign import ccall "qtc_QIconEngine_actualSize_qth_h" qtc_QIconEngine_actualSize_qth_h :: Ptr (TQIconEngine a) -> CInt -> CInt -> CLong -> CLong -> Ptr CInt -> Ptr CInt -> IO ()

instance QactualSize (QIconEngineSc a) ((Size, QIconMode, QIconState)) where
 actualSize x0 (x1, x2, x3)
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QIconEngine_actualSize_qth_h cobj_x0 csize_x1_w csize_x1_h  (toCLong $ qEnum_toInt x2) (toCLong $ qEnum_toInt x3) csize_ret_w csize_ret_h

instance QqaddFile (QIconEngine ()) ((String, QSize t2, QIconMode, QIconState)) where
 qaddFile x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QIconEngine_addFile_h cobj_x0 cstr_x1 cobj_x2 (toCLong $ qEnum_toInt x3) (toCLong $ qEnum_toInt x4)

foreign import ccall "qtc_QIconEngine_addFile_h" qtc_QIconEngine_addFile_h :: Ptr (TQIconEngine a) -> CWString -> Ptr (TQSize t2) -> CLong -> CLong -> IO ()

instance QqaddFile (QIconEngineSc a) ((String, QSize t2, QIconMode, QIconState)) where
 qaddFile x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QIconEngine_addFile_h cobj_x0 cstr_x1 cobj_x2 (toCLong $ qEnum_toInt x3) (toCLong $ qEnum_toInt x4)

instance QaddFile (QIconEngine ()) ((String, Size, QIconMode, QIconState)) where
 addFile x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    withCSize x2 $ \csize_x2_w csize_x2_h -> 
    qtc_QIconEngine_addFile_qth_h cobj_x0 cstr_x1 csize_x2_w csize_x2_h  (toCLong $ qEnum_toInt x3) (toCLong $ qEnum_toInt x4)

foreign import ccall "qtc_QIconEngine_addFile_qth_h" qtc_QIconEngine_addFile_qth_h :: Ptr (TQIconEngine a) -> CWString -> CInt -> CInt -> CLong -> CLong -> IO ()

instance QaddFile (QIconEngineSc a) ((String, Size, QIconMode, QIconState)) where
 addFile x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    withCSize x2 $ \csize_x2_w csize_x2_h -> 
    qtc_QIconEngine_addFile_qth_h cobj_x0 cstr_x1 csize_x2_w csize_x2_h  (toCLong $ qEnum_toInt x3) (toCLong $ qEnum_toInt x4)

instance QaddPixmap (QIconEngine ()) ((QPixmap t1, QIconMode, QIconState)) (IO ()) where
 addPixmap x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QIconEngine_addPixmap_h cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2) (toCLong $ qEnum_toInt x3)

foreign import ccall "qtc_QIconEngine_addPixmap_h" qtc_QIconEngine_addPixmap_h :: Ptr (TQIconEngine a) -> Ptr (TQPixmap t1) -> CLong -> CLong -> IO ()

instance QaddPixmap (QIconEngineSc a) ((QPixmap t1, QIconMode, QIconState)) (IO ()) where
 addPixmap x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QIconEngine_addPixmap_h cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2) (toCLong $ qEnum_toInt x3)

instance Qqpaint (QIconEngine ()) ((QPainter t1, QRect t2, QIconMode, QIconState)) where
 qpaint x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QIconEngine_paint_h cobj_x0 cobj_x1 cobj_x2 (toCLong $ qEnum_toInt x3) (toCLong $ qEnum_toInt x4)

foreign import ccall "qtc_QIconEngine_paint_h" qtc_QIconEngine_paint_h :: Ptr (TQIconEngine a) -> Ptr (TQPainter t1) -> Ptr (TQRect t2) -> CLong -> CLong -> IO ()

instance Qqpaint (QIconEngineSc a) ((QPainter t1, QRect t2, QIconMode, QIconState)) where
 qpaint x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QIconEngine_paint_h cobj_x0 cobj_x1 cobj_x2 (toCLong $ qEnum_toInt x3) (toCLong $ qEnum_toInt x4)

instance Qpaint (QIconEngine ()) ((QPainter t1, Rect, QIconMode, QIconState)) where
 paint x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCRect x2 $ \crect_x2_x crect_x2_y  crect_x2_w crect_x2_h -> 
    qtc_QIconEngine_paint_qth_h cobj_x0 cobj_x1 crect_x2_x crect_x2_y crect_x2_w crect_x2_h  (toCLong $ qEnum_toInt x3) (toCLong $ qEnum_toInt x4)

foreign import ccall "qtc_QIconEngine_paint_qth_h" qtc_QIconEngine_paint_qth_h :: Ptr (TQIconEngine a) -> Ptr (TQPainter t1) -> CInt -> CInt -> CInt -> CInt -> CLong -> CLong -> IO ()

instance Qpaint (QIconEngineSc a) ((QPainter t1, Rect, QIconMode, QIconState)) where
 paint x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCRect x2 $ \crect_x2_x crect_x2_y  crect_x2_w crect_x2_h -> 
    qtc_QIconEngine_paint_qth_h cobj_x0 cobj_x1 crect_x2_x crect_x2_y crect_x2_w crect_x2_h  (toCLong $ qEnum_toInt x3) (toCLong $ qEnum_toInt x4)

instance Qqpixmap (QIconEngine ()) ((QSize t1, QIconMode, QIconState)) where
 qpixmap x0 (x1, x2, x3)
  = withQPixmapResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QIconEngine_pixmap_h cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2) (toCLong $ qEnum_toInt x3)

foreign import ccall "qtc_QIconEngine_pixmap_h" qtc_QIconEngine_pixmap_h :: Ptr (TQIconEngine a) -> Ptr (TQSize t1) -> CLong -> CLong -> IO (Ptr (TQPixmap ()))

instance Qqpixmap (QIconEngineSc a) ((QSize t1, QIconMode, QIconState)) where
 qpixmap x0 (x1, x2, x3)
  = withQPixmapResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QIconEngine_pixmap_h cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2) (toCLong $ qEnum_toInt x3)

instance Qqpixmap_nf (QIconEngine ()) ((QSize t1, QIconMode, QIconState)) where
 qpixmap_nf x0 (x1, x2, x3)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QIconEngine_pixmap_h cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2) (toCLong $ qEnum_toInt x3)

instance Qqpixmap_nf (QIconEngineSc a) ((QSize t1, QIconMode, QIconState)) where
 qpixmap_nf x0 (x1, x2, x3)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QIconEngine_pixmap_h cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2) (toCLong $ qEnum_toInt x3)

instance Qpixmap (QIconEngine ()) ((Size, QIconMode, QIconState)) where
 pixmap x0 (x1, x2, x3)
  = withQPixmapResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QIconEngine_pixmap_qth_h cobj_x0 csize_x1_w csize_x1_h  (toCLong $ qEnum_toInt x2) (toCLong $ qEnum_toInt x3)

foreign import ccall "qtc_QIconEngine_pixmap_qth_h" qtc_QIconEngine_pixmap_qth_h :: Ptr (TQIconEngine a) -> CInt -> CInt -> CLong -> CLong -> IO (Ptr (TQPixmap ()))

instance Qpixmap (QIconEngineSc a) ((Size, QIconMode, QIconState)) where
 pixmap x0 (x1, x2, x3)
  = withQPixmapResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QIconEngine_pixmap_qth_h cobj_x0 csize_x1_w csize_x1_h  (toCLong $ qEnum_toInt x2) (toCLong $ qEnum_toInt x3)

instance Qpixmap_nf (QIconEngine ()) ((Size, QIconMode, QIconState)) where
 pixmap_nf x0 (x1, x2, x3)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QIconEngine_pixmap_qth_h cobj_x0 csize_x1_w csize_x1_h  (toCLong $ qEnum_toInt x2) (toCLong $ qEnum_toInt x3)

instance Qpixmap_nf (QIconEngineSc a) ((Size, QIconMode, QIconState)) where
 pixmap_nf x0 (x1, x2, x3)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QIconEngine_pixmap_qth_h cobj_x0 csize_x1_w csize_x1_h  (toCLong $ qEnum_toInt x2) (toCLong $ qEnum_toInt x3)

qIconEngine_delete :: QIconEngine a -> IO ()
qIconEngine_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QIconEngine_delete cobj_x0

foreign import ccall "qtc_QIconEngine_delete" qtc_QIconEngine_delete :: Ptr (TQIconEngine a) -> IO ()

qIconEngine_delete1 :: QIconEngine a -> IO ()
qIconEngine_delete1 x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QIconEngine_delete1 cobj_x0

foreign import ccall "qtc_QIconEngine_delete1" qtc_QIconEngine_delete1 :: Ptr (TQIconEngine a) -> IO ()

