{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QBitmap.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:16
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QBitmap (
  QqqBitmap(..), QqBitmap(..)
  ,QqqBitmap_nf(..), QqBitmap_nf(..)
  ,QqBitmapFromImage(..), QqBitmapFromImage_nf(..)
  ,qBitmap_delete, qBitmap_delete1
  )
  where

import Foreign.C.Types
import Qth.ClassTypes.Core
import Qtc.Enums.Base
import Qtc.Enums.Gui.QPaintDevice
import Qtc.Enums.Core.Qt

import Qtc.Classes.Base
import Qtc.Classes.Qccs
import Qtc.Classes.Core
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core
import Qtc.Classes.Gui
import Qtc.ClassTypes.Gui

instance QuserMethod (QBitmap ()) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QBitmap_userMethod cobj_qobj (toCInt evid)

foreign import ccall "qtc_QBitmap_userMethod" qtc_QBitmap_userMethod :: Ptr (TQBitmap a) -> CInt -> IO ()

instance QuserMethod (QBitmapSc a) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QBitmap_userMethod cobj_qobj (toCInt evid)

instance QuserMethod (QBitmap ()) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QBitmap_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

foreign import ccall "qtc_QBitmap_userMethodVariant" qtc_QBitmap_userMethodVariant :: Ptr (TQBitmap a) -> CInt -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))

instance QuserMethod (QBitmapSc a) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QBitmap_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

class QqqBitmap x1 where
  qqBitmap :: x1 -> IO (QBitmap ())

class QqBitmap x1 where
  qBitmap :: x1 -> IO (QBitmap ())

instance QqBitmap (()) where
 qBitmap ()
  = withQBitmapResult $
    qtc_QBitmap

foreign import ccall "qtc_QBitmap" qtc_QBitmap :: IO (Ptr (TQBitmap ()))

instance QqBitmap ((QPixmap t1)) where
 qBitmap (x1)
  = withQBitmapResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QBitmap1 cobj_x1

foreign import ccall "qtc_QBitmap1" qtc_QBitmap1 :: Ptr (TQPixmap t1) -> IO (Ptr (TQBitmap ()))

instance QqqBitmap ((QSize t1)) where
 qqBitmap (x1)
  = withQBitmapResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QBitmap2 cobj_x1

foreign import ccall "qtc_QBitmap2" qtc_QBitmap2 :: Ptr (TQSize t1) -> IO (Ptr (TQBitmap ()))

instance QqBitmap ((Size)) where
 qBitmap (x1)
  = withQBitmapResult $
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QBitmap3 csize_x1_w csize_x1_h 

foreign import ccall "qtc_QBitmap3" qtc_QBitmap3 :: CInt -> CInt -> IO (Ptr (TQBitmap ()))

instance QqBitmap ((String)) where
 qBitmap (x1)
  = withQBitmapResult $
    withCWString x1 $ \cstr_x1 ->
    qtc_QBitmap4 cstr_x1

foreign import ccall "qtc_QBitmap4" qtc_QBitmap4 :: CWString -> IO (Ptr (TQBitmap ()))

instance QqBitmap ((String, String)) where
 qBitmap (x1, x2)
  = withQBitmapResult $
    withCWString x1 $ \cstr_x1 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QBitmap5 cstr_x1 cstr_x2

foreign import ccall "qtc_QBitmap5" qtc_QBitmap5 :: CWString -> CWString -> IO (Ptr (TQBitmap ()))

instance QqBitmap ((Int, Int)) where
 qBitmap (x1, x2)
  = withQBitmapResult $
    qtc_QBitmap6 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QBitmap6" qtc_QBitmap6 :: CInt -> CInt -> IO (Ptr (TQBitmap ()))

class QqqBitmap_nf x1 where
  qqBitmap_nf :: x1 -> IO (QBitmap ())

class QqBitmap_nf x1 where
  qBitmap_nf :: x1 -> IO (QBitmap ())

instance QqBitmap_nf (()) where
 qBitmap_nf ()
  = withObjectRefResult $
    qtc_QBitmap

instance QqBitmap_nf ((QPixmap t1)) where
 qBitmap_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QBitmap1 cobj_x1

instance QqqBitmap_nf ((QSize t1)) where
 qqBitmap_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QBitmap2 cobj_x1

instance QqBitmap_nf ((Size)) where
 qBitmap_nf (x1)
  = withObjectRefResult $
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QBitmap3 csize_x1_w csize_x1_h 

instance QqBitmap_nf ((String)) where
 qBitmap_nf (x1)
  = withObjectRefResult $
    withCWString x1 $ \cstr_x1 ->
    qtc_QBitmap4 cstr_x1

instance QqBitmap_nf ((String, String)) where
 qBitmap_nf (x1, x2)
  = withObjectRefResult $
    withCWString x1 $ \cstr_x1 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QBitmap5 cstr_x1 cstr_x2

instance QqBitmap_nf ((Int, Int)) where
 qBitmap_nf (x1, x2)
  = withObjectRefResult $
    qtc_QBitmap6 (toCInt x1) (toCInt x2)

instance Qclear (QBitmap a) (()) where
 clear x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QBitmap_clear cobj_x0

foreign import ccall "qtc_QBitmap_clear" qtc_QBitmap_clear :: Ptr (TQBitmap a) -> IO ()

class QqBitmapFromImage x1 where
 qBitmapFromImage :: x1 -> IO (QBitmap ())

class QqBitmapFromImage_nf x1 where
 qBitmapFromImage_nf :: x1 -> IO (QBitmap ())

instance QqBitmapFromImage ((QImage t1)) where
 qBitmapFromImage (x1)
  = withQBitmapResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QBitmap_fromImage cobj_x1

foreign import ccall "qtc_QBitmap_fromImage" qtc_QBitmap_fromImage :: Ptr (TQImage t1) -> IO (Ptr (TQBitmap ()))

instance QqBitmapFromImage_nf ((QImage t1)) where
 qBitmapFromImage_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QBitmap_fromImage cobj_x1

instance QqBitmapFromImage ((QImage t1, ImageConversionFlags)) where
 qBitmapFromImage (x1, x2)
  = withQBitmapResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QBitmap_fromImage1 cobj_x1 (toCLong $ qFlags_toInt x2)

foreign import ccall "qtc_QBitmap_fromImage1" qtc_QBitmap_fromImage1 :: Ptr (TQImage t1) -> CLong -> IO (Ptr (TQBitmap ()))

instance QqBitmapFromImage_nf ((QImage t1, ImageConversionFlags)) where
 qBitmapFromImage_nf (x1, x2)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QBitmap_fromImage1 cobj_x1 (toCLong $ qFlags_toInt x2)

instance Qtransformed (QBitmap ()) ((QMatrix t1)) (IO (QBitmap ())) where
 transformed x0 (x1)
  = withQBitmapResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QBitmap_transformed cobj_x0 cobj_x1

foreign import ccall "qtc_QBitmap_transformed" qtc_QBitmap_transformed :: Ptr (TQBitmap a) -> Ptr (TQMatrix t1) -> IO (Ptr (TQBitmap ()))

instance Qtransformed (QBitmapSc a) ((QMatrix t1)) (IO (QBitmap ())) where
 transformed x0 (x1)
  = withQBitmapResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QBitmap_transformed cobj_x0 cobj_x1

instance Qtransformed_nf (QBitmap ()) ((QMatrix t1)) (IO (QBitmap ())) where
 transformed_nf x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QBitmap_transformed cobj_x0 cobj_x1

instance Qtransformed_nf (QBitmapSc a) ((QMatrix t1)) (IO (QBitmap ())) where
 transformed_nf x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QBitmap_transformed cobj_x0 cobj_x1

instance Qtransformed (QBitmap ()) ((QTransform t1)) (IO (QBitmap ())) where
 transformed x0 (x1)
  = withQBitmapResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QBitmap_transformed1 cobj_x0 cobj_x1

foreign import ccall "qtc_QBitmap_transformed1" qtc_QBitmap_transformed1 :: Ptr (TQBitmap a) -> Ptr (TQTransform t1) -> IO (Ptr (TQBitmap ()))

instance Qtransformed (QBitmapSc a) ((QTransform t1)) (IO (QBitmap ())) where
 transformed x0 (x1)
  = withQBitmapResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QBitmap_transformed1 cobj_x0 cobj_x1

instance Qtransformed_nf (QBitmap ()) ((QTransform t1)) (IO (QBitmap ())) where
 transformed_nf x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QBitmap_transformed1 cobj_x0 cobj_x1

instance Qtransformed_nf (QBitmapSc a) ((QTransform t1)) (IO (QBitmap ())) where
 transformed_nf x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QBitmap_transformed1 cobj_x0 cobj_x1

qBitmap_delete :: QBitmap a -> IO ()
qBitmap_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QBitmap_delete cobj_x0

foreign import ccall "qtc_QBitmap_delete" qtc_QBitmap_delete :: Ptr (TQBitmap a) -> IO ()

qBitmap_delete1 :: QBitmap a -> IO ()
qBitmap_delete1 x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QBitmap_delete1 cobj_x0

foreign import ccall "qtc_QBitmap_delete1" qtc_QBitmap_delete1 :: Ptr (TQBitmap a) -> IO ()

instance QdevType (QBitmap ()) (()) where
 devType x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QBitmap_devType_h cobj_x0

foreign import ccall "qtc_QBitmap_devType_h" qtc_QBitmap_devType_h :: Ptr (TQBitmap a) -> IO CInt

instance QdevType (QBitmapSc a) (()) where
 devType x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QBitmap_devType_h cobj_x0

instance Qmetric (QBitmap ()) ((PaintDeviceMetric)) where
 metric x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QBitmap_metric cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QBitmap_metric" qtc_QBitmap_metric :: Ptr (TQBitmap a) -> CLong -> IO CInt

instance Qmetric (QBitmapSc a) ((PaintDeviceMetric)) where
 metric x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QBitmap_metric cobj_x0 (toCLong $ qEnum_toInt x1)

instance QpaintEngine (QBitmap ()) (()) where
 paintEngine x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QBitmap_paintEngine_h cobj_x0

foreign import ccall "qtc_QBitmap_paintEngine_h" qtc_QBitmap_paintEngine_h :: Ptr (TQBitmap a) -> IO (Ptr (TQPaintEngine ()))

instance QpaintEngine (QBitmapSc a) (()) where
 paintEngine x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QBitmap_paintEngine_h cobj_x0

