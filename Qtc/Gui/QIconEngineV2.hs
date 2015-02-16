{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QIconEngineV2.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:15
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QIconEngineV2 (
  QqIconEngineV2(..)
  ,QqIconEngineV2_nf(..)
  ,qIconEngineV2_delete, qIconEngineV2_delete1
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

instance QuserMethod (QIconEngineV2 ()) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QIconEngineV2_userMethod cobj_qobj (toCInt evid)

foreign import ccall "qtc_QIconEngineV2_userMethod" qtc_QIconEngineV2_userMethod :: Ptr (TQIconEngineV2 a) -> CInt -> IO ()

instance QuserMethod (QIconEngineV2Sc a) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QIconEngineV2_userMethod cobj_qobj (toCInt evid)

instance QuserMethod (QIconEngineV2 ()) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QIconEngineV2_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

foreign import ccall "qtc_QIconEngineV2_userMethodVariant" qtc_QIconEngineV2_userMethodVariant :: Ptr (TQIconEngineV2 a) -> CInt -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))

instance QuserMethod (QIconEngineV2Sc a) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QIconEngineV2_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

class QqIconEngineV2 x1 where
  qIconEngineV2 :: x1 -> IO (QIconEngineV2 ())

instance QqIconEngineV2 (()) where
 qIconEngineV2 ()
  = withQIconEngineV2Result $
    qtc_QIconEngineV2

foreign import ccall "qtc_QIconEngineV2" qtc_QIconEngineV2 :: IO (Ptr (TQIconEngineV2 ()))

instance QqIconEngineV2 ((QIconEngineV2 t1)) where
 qIconEngineV2 (x1)
  = withQIconEngineV2Result $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QIconEngineV21 cobj_x1

foreign import ccall "qtc_QIconEngineV21" qtc_QIconEngineV21 :: Ptr (TQIconEngineV2 t1) -> IO (Ptr (TQIconEngineV2 ()))

class QqIconEngineV2_nf x1 where
  qIconEngineV2_nf :: x1 -> IO (QIconEngineV2 ())

instance QqIconEngineV2_nf (()) where
 qIconEngineV2_nf ()
  = withObjectRefResult $
    qtc_QIconEngineV2

instance QqIconEngineV2_nf ((QIconEngineV2 t1)) where
 qIconEngineV2_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QIconEngineV21 cobj_x1

instance Qclone (QIconEngineV2 ()) (()) (IO (QIconEngineV2 ())) where
 clone x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QIconEngineV2_clone_h cobj_x0

foreign import ccall "qtc_QIconEngineV2_clone_h" qtc_QIconEngineV2_clone_h :: Ptr (TQIconEngineV2 a) -> IO (Ptr (TQIconEngineV2 ()))

instance Qclone (QIconEngineV2Sc a) (()) (IO (QIconEngineV2 ())) where
 clone x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QIconEngineV2_clone_h cobj_x0

instance Qkey (QIconEngineV2 ()) (()) (IO (String)) where
 key x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QIconEngineV2_key_h cobj_x0

foreign import ccall "qtc_QIconEngineV2_key_h" qtc_QIconEngineV2_key_h :: Ptr (TQIconEngineV2 a) -> IO (Ptr (TQString ()))

instance Qkey (QIconEngineV2Sc a) (()) (IO (String)) where
 key x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QIconEngineV2_key_h cobj_x0

qIconEngineV2_delete :: QIconEngineV2 a -> IO ()
qIconEngineV2_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QIconEngineV2_delete cobj_x0

foreign import ccall "qtc_QIconEngineV2_delete" qtc_QIconEngineV2_delete :: Ptr (TQIconEngineV2 a) -> IO ()

qIconEngineV2_delete1 :: QIconEngineV2 a -> IO ()
qIconEngineV2_delete1 x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QIconEngineV2_delete1 cobj_x0

foreign import ccall "qtc_QIconEngineV2_delete1" qtc_QIconEngineV2_delete1 :: Ptr (TQIconEngineV2 a) -> IO ()

instance QqactualSize (QIconEngineV2 ()) ((QSize t1, QIconMode, QIconState)) where
 qactualSize x0 (x1, x2, x3)
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QIconEngineV2_actualSize_h cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2) (toCLong $ qEnum_toInt x3)

foreign import ccall "qtc_QIconEngineV2_actualSize_h" qtc_QIconEngineV2_actualSize_h :: Ptr (TQIconEngineV2 a) -> Ptr (TQSize t1) -> CLong -> CLong -> IO (Ptr (TQSize ()))

instance QqactualSize (QIconEngineV2Sc a) ((QSize t1, QIconMode, QIconState)) where
 qactualSize x0 (x1, x2, x3)
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QIconEngineV2_actualSize_h cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2) (toCLong $ qEnum_toInt x3)

instance QactualSize (QIconEngineV2 ()) ((Size, QIconMode, QIconState)) where
 actualSize x0 (x1, x2, x3)
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QIconEngineV2_actualSize_qth_h cobj_x0 csize_x1_w csize_x1_h  (toCLong $ qEnum_toInt x2) (toCLong $ qEnum_toInt x3) csize_ret_w csize_ret_h

foreign import ccall "qtc_QIconEngineV2_actualSize_qth_h" qtc_QIconEngineV2_actualSize_qth_h :: Ptr (TQIconEngineV2 a) -> CInt -> CInt -> CLong -> CLong -> Ptr CInt -> Ptr CInt -> IO ()

instance QactualSize (QIconEngineV2Sc a) ((Size, QIconMode, QIconState)) where
 actualSize x0 (x1, x2, x3)
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QIconEngineV2_actualSize_qth_h cobj_x0 csize_x1_w csize_x1_h  (toCLong $ qEnum_toInt x2) (toCLong $ qEnum_toInt x3) csize_ret_w csize_ret_h

instance QqaddFile (QIconEngineV2 ()) ((String, QSize t2, QIconMode, QIconState)) where
 qaddFile x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QIconEngineV2_addFile_h cobj_x0 cstr_x1 cobj_x2 (toCLong $ qEnum_toInt x3) (toCLong $ qEnum_toInt x4)

foreign import ccall "qtc_QIconEngineV2_addFile_h" qtc_QIconEngineV2_addFile_h :: Ptr (TQIconEngineV2 a) -> CWString -> Ptr (TQSize t2) -> CLong -> CLong -> IO ()

instance QqaddFile (QIconEngineV2Sc a) ((String, QSize t2, QIconMode, QIconState)) where
 qaddFile x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QIconEngineV2_addFile_h cobj_x0 cstr_x1 cobj_x2 (toCLong $ qEnum_toInt x3) (toCLong $ qEnum_toInt x4)

instance QaddFile (QIconEngineV2 ()) ((String, Size, QIconMode, QIconState)) where
 addFile x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    withCSize x2 $ \csize_x2_w csize_x2_h -> 
    qtc_QIconEngineV2_addFile_qth_h cobj_x0 cstr_x1 csize_x2_w csize_x2_h  (toCLong $ qEnum_toInt x3) (toCLong $ qEnum_toInt x4)

foreign import ccall "qtc_QIconEngineV2_addFile_qth_h" qtc_QIconEngineV2_addFile_qth_h :: Ptr (TQIconEngineV2 a) -> CWString -> CInt -> CInt -> CLong -> CLong -> IO ()

instance QaddFile (QIconEngineV2Sc a) ((String, Size, QIconMode, QIconState)) where
 addFile x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    withCSize x2 $ \csize_x2_w csize_x2_h -> 
    qtc_QIconEngineV2_addFile_qth_h cobj_x0 cstr_x1 csize_x2_w csize_x2_h  (toCLong $ qEnum_toInt x3) (toCLong $ qEnum_toInt x4)

instance QaddPixmap (QIconEngineV2 ()) ((QPixmap t1, QIconMode, QIconState)) (IO ()) where
 addPixmap x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QIconEngineV2_addPixmap_h cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2) (toCLong $ qEnum_toInt x3)

foreign import ccall "qtc_QIconEngineV2_addPixmap_h" qtc_QIconEngineV2_addPixmap_h :: Ptr (TQIconEngineV2 a) -> Ptr (TQPixmap t1) -> CLong -> CLong -> IO ()

instance QaddPixmap (QIconEngineV2Sc a) ((QPixmap t1, QIconMode, QIconState)) (IO ()) where
 addPixmap x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QIconEngineV2_addPixmap_h cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2) (toCLong $ qEnum_toInt x3)

instance Qqpaint (QIconEngineV2 ()) ((QPainter t1, QRect t2, QIconMode, QIconState)) where
 qpaint x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QIconEngineV2_paint_h cobj_x0 cobj_x1 cobj_x2 (toCLong $ qEnum_toInt x3) (toCLong $ qEnum_toInt x4)

foreign import ccall "qtc_QIconEngineV2_paint_h" qtc_QIconEngineV2_paint_h :: Ptr (TQIconEngineV2 a) -> Ptr (TQPainter t1) -> Ptr (TQRect t2) -> CLong -> CLong -> IO ()

instance Qqpaint (QIconEngineV2Sc a) ((QPainter t1, QRect t2, QIconMode, QIconState)) where
 qpaint x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QIconEngineV2_paint_h cobj_x0 cobj_x1 cobj_x2 (toCLong $ qEnum_toInt x3) (toCLong $ qEnum_toInt x4)

instance Qpaint (QIconEngineV2 ()) ((QPainter t1, Rect, QIconMode, QIconState)) where
 paint x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCRect x2 $ \crect_x2_x crect_x2_y  crect_x2_w crect_x2_h -> 
    qtc_QIconEngineV2_paint_qth_h cobj_x0 cobj_x1 crect_x2_x crect_x2_y crect_x2_w crect_x2_h  (toCLong $ qEnum_toInt x3) (toCLong $ qEnum_toInt x4)

foreign import ccall "qtc_QIconEngineV2_paint_qth_h" qtc_QIconEngineV2_paint_qth_h :: Ptr (TQIconEngineV2 a) -> Ptr (TQPainter t1) -> CInt -> CInt -> CInt -> CInt -> CLong -> CLong -> IO ()

instance Qpaint (QIconEngineV2Sc a) ((QPainter t1, Rect, QIconMode, QIconState)) where
 paint x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCRect x2 $ \crect_x2_x crect_x2_y  crect_x2_w crect_x2_h -> 
    qtc_QIconEngineV2_paint_qth_h cobj_x0 cobj_x1 crect_x2_x crect_x2_y crect_x2_w crect_x2_h  (toCLong $ qEnum_toInt x3) (toCLong $ qEnum_toInt x4)

instance Qqpixmap (QIconEngineV2 ()) ((QSize t1, QIconMode, QIconState)) where
 qpixmap x0 (x1, x2, x3)
  = withQPixmapResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QIconEngineV2_pixmap_h cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2) (toCLong $ qEnum_toInt x3)

foreign import ccall "qtc_QIconEngineV2_pixmap_h" qtc_QIconEngineV2_pixmap_h :: Ptr (TQIconEngineV2 a) -> Ptr (TQSize t1) -> CLong -> CLong -> IO (Ptr (TQPixmap ()))

instance Qqpixmap (QIconEngineV2Sc a) ((QSize t1, QIconMode, QIconState)) where
 qpixmap x0 (x1, x2, x3)
  = withQPixmapResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QIconEngineV2_pixmap_h cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2) (toCLong $ qEnum_toInt x3)

instance Qqpixmap_nf (QIconEngineV2 ()) ((QSize t1, QIconMode, QIconState)) where
 qpixmap_nf x0 (x1, x2, x3)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QIconEngineV2_pixmap_h cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2) (toCLong $ qEnum_toInt x3)

instance Qqpixmap_nf (QIconEngineV2Sc a) ((QSize t1, QIconMode, QIconState)) where
 qpixmap_nf x0 (x1, x2, x3)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QIconEngineV2_pixmap_h cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2) (toCLong $ qEnum_toInt x3)

instance Qpixmap (QIconEngineV2 ()) ((Size, QIconMode, QIconState)) where
 pixmap x0 (x1, x2, x3)
  = withQPixmapResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QIconEngineV2_pixmap_qth_h cobj_x0 csize_x1_w csize_x1_h  (toCLong $ qEnum_toInt x2) (toCLong $ qEnum_toInt x3)

foreign import ccall "qtc_QIconEngineV2_pixmap_qth_h" qtc_QIconEngineV2_pixmap_qth_h :: Ptr (TQIconEngineV2 a) -> CInt -> CInt -> CLong -> CLong -> IO (Ptr (TQPixmap ()))

instance Qpixmap (QIconEngineV2Sc a) ((Size, QIconMode, QIconState)) where
 pixmap x0 (x1, x2, x3)
  = withQPixmapResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QIconEngineV2_pixmap_qth_h cobj_x0 csize_x1_w csize_x1_h  (toCLong $ qEnum_toInt x2) (toCLong $ qEnum_toInt x3)

instance Qpixmap_nf (QIconEngineV2 ()) ((Size, QIconMode, QIconState)) where
 pixmap_nf x0 (x1, x2, x3)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QIconEngineV2_pixmap_qth_h cobj_x0 csize_x1_w csize_x1_h  (toCLong $ qEnum_toInt x2) (toCLong $ qEnum_toInt x3)

instance Qpixmap_nf (QIconEngineV2Sc a) ((Size, QIconMode, QIconState)) where
 pixmap_nf x0 (x1, x2, x3)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QIconEngineV2_pixmap_qth_h cobj_x0 csize_x1_w csize_x1_h  (toCLong $ qEnum_toInt x2) (toCLong $ qEnum_toInt x3)

