{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QPixmap.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:26
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QPixmap (
  QqqPixmap(..), QqPixmap(..)
  ,QqqPixmap_nf(..), QqPixmap_nf(..)
  ,qPixmapDefaultDepth
  ,qfill
  ,QqPixmapFromImage(..), QqPixmapFromImage_nf(..)
  ,QqPixmapGrabWidget(..), QqPixmapGrabWidget_nf(..), qqPixmapGrabWidget, qqPixmapGrabWidget_nf
  ,QqPixmapGrabWindow(..), QqPixmapGrabWindow_nf(..)
  ,hasAlpha
  ,isQBitmap
  ,QqPixmapTrueMatrix(..)
  ,qPixmap_delete, qPixmap_delete1
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

instance QuserMethod (QPixmap ()) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QPixmap_userMethod cobj_qobj (toCInt evid)

foreign import ccall "qtc_QPixmap_userMethod" qtc_QPixmap_userMethod :: Ptr (TQPixmap a) -> CInt -> IO ()

instance QuserMethod (QPixmapSc a) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QPixmap_userMethod cobj_qobj (toCInt evid)

instance QuserMethod (QPixmap ()) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QPixmap_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

foreign import ccall "qtc_QPixmap_userMethodVariant" qtc_QPixmap_userMethodVariant :: Ptr (TQPixmap a) -> CInt -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))

instance QuserMethod (QPixmapSc a) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QPixmap_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

class QqqPixmap x1 where
  qqPixmap :: x1 -> IO (QPixmap ())

class QqPixmap x1 where
  qPixmap :: x1 -> IO (QPixmap ())

instance QqPixmap (()) where
 qPixmap ()
  = withQPixmapResult $
    qtc_QPixmap

foreign import ccall "qtc_QPixmap" qtc_QPixmap :: IO (Ptr (TQPixmap ()))

instance QqPixmap ((QPixmap t1)) where
 qPixmap (x1)
  = withQPixmapResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPixmap1 cobj_x1

foreign import ccall "qtc_QPixmap1" qtc_QPixmap1 :: Ptr (TQPixmap t1) -> IO (Ptr (TQPixmap ()))

instance QqqPixmap ((QSize t1)) where
 qqPixmap (x1)
  = withQPixmapResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPixmap2 cobj_x1

foreign import ccall "qtc_QPixmap2" qtc_QPixmap2 :: Ptr (TQSize t1) -> IO (Ptr (TQPixmap ()))

instance QqPixmap ((Size)) where
 qPixmap (x1)
  = withQPixmapResult $
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QPixmap3 csize_x1_w csize_x1_h 

foreign import ccall "qtc_QPixmap3" qtc_QPixmap3 :: CInt -> CInt -> IO (Ptr (TQPixmap ()))

instance QqPixmap ((String)) where
 qPixmap (x1)
  = withQPixmapResult $
    withCWString x1 $ \cstr_x1 ->
    qtc_QPixmap4 cstr_x1

foreign import ccall "qtc_QPixmap4" qtc_QPixmap4 :: CWString -> IO (Ptr (TQPixmap ()))

instance QqPixmap ((String, String)) where
 qPixmap (x1, x2)
  = withQPixmapResult $
    withCWString x1 $ \cstr_x1 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QPixmap5 cstr_x1 cstr_x2

foreign import ccall "qtc_QPixmap5" qtc_QPixmap5 :: CWString -> CWString -> IO (Ptr (TQPixmap ()))

instance QqPixmap ((Int, Int)) where
 qPixmap (x1, x2)
  = withQPixmapResult $
    qtc_QPixmap6 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QPixmap6" qtc_QPixmap6 :: CInt -> CInt -> IO (Ptr (TQPixmap ()))

instance QqPixmap ((String, String, ImageConversionFlags)) where
 qPixmap (x1, x2, x3)
  = withQPixmapResult $
    withCWString x1 $ \cstr_x1 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QPixmap7 cstr_x1 cstr_x2 (toCLong $ qFlags_toInt x3)

foreign import ccall "qtc_QPixmap7" qtc_QPixmap7 :: CWString -> CWString -> CLong -> IO (Ptr (TQPixmap ()))

class QqqPixmap_nf x1 where
  qqPixmap_nf :: x1 -> IO (QPixmap ())

class QqPixmap_nf x1 where
  qPixmap_nf :: x1 -> IO (QPixmap ())

instance QqPixmap_nf (()) where
 qPixmap_nf ()
  = withObjectRefResult $
    qtc_QPixmap

instance QqPixmap_nf ((QPixmap t1)) where
 qPixmap_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPixmap1 cobj_x1

instance QqqPixmap_nf ((QSize t1)) where
 qqPixmap_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPixmap2 cobj_x1

instance QqPixmap_nf ((Size)) where
 qPixmap_nf (x1)
  = withObjectRefResult $
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QPixmap3 csize_x1_w csize_x1_h 

instance QqPixmap_nf ((String)) where
 qPixmap_nf (x1)
  = withObjectRefResult $
    withCWString x1 $ \cstr_x1 ->
    qtc_QPixmap4 cstr_x1

instance QqPixmap_nf ((String, String)) where
 qPixmap_nf (x1, x2)
  = withObjectRefResult $
    withCWString x1 $ \cstr_x1 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QPixmap5 cstr_x1 cstr_x2

instance QqPixmap_nf ((Int, Int)) where
 qPixmap_nf (x1, x2)
  = withObjectRefResult $
    qtc_QPixmap6 (toCInt x1) (toCInt x2)

instance QqPixmap_nf ((String, String, ImageConversionFlags)) where
 qPixmap_nf (x1, x2, x3)
  = withObjectRefResult $
    withCWString x1 $ \cstr_x1 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QPixmap7 cstr_x1 cstr_x2 (toCLong $ qFlags_toInt x3)

instance QalphaChannel (QPixmap ()) (()) (IO (QPixmap ())) where
 alphaChannel x0 ()
  = withQPixmapResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPixmap_alphaChannel cobj_x0

foreign import ccall "qtc_QPixmap_alphaChannel" qtc_QPixmap_alphaChannel :: Ptr (TQPixmap a) -> IO (Ptr (TQPixmap ()))

instance QalphaChannel (QPixmapSc a) (()) (IO (QPixmap ())) where
 alphaChannel x0 ()
  = withQPixmapResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPixmap_alphaChannel cobj_x0

instance QalphaChannel_nf (QPixmap ()) (()) (IO (QPixmap ())) where
 alphaChannel_nf x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPixmap_alphaChannel cobj_x0

instance QalphaChannel_nf (QPixmapSc a) (()) (IO (QPixmap ())) where
 alphaChannel_nf x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPixmap_alphaChannel cobj_x0

instance QcacheKey (QPixmap a) (()) where
 cacheKey x0 ()
  = withLongLongResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPixmap_cacheKey cobj_x0

foreign import ccall "qtc_QPixmap_cacheKey" qtc_QPixmap_cacheKey :: Ptr (TQPixmap a) -> IO CLLong

instance Qcopy (QPixmap ()) (()) (IO (QPixmap ())) where
 copy x0 ()
  = withQPixmapResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPixmap_copy cobj_x0

foreign import ccall "qtc_QPixmap_copy" qtc_QPixmap_copy :: Ptr (TQPixmap a) -> IO (Ptr (TQPixmap ()))

instance Qcopy (QPixmapSc a) (()) (IO (QPixmap ())) where
 copy x0 ()
  = withQPixmapResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPixmap_copy cobj_x0

instance Qcopy_nf (QPixmap ()) (()) (IO (QPixmap ())) where
 copy_nf x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPixmap_copy cobj_x0

instance Qcopy_nf (QPixmapSc a) (()) (IO (QPixmap ())) where
 copy_nf x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPixmap_copy cobj_x0

instance Qcopy (QPixmap ()) ((Int, Int, Int, Int)) (IO (QPixmap ())) where
 copy x0 (x1, x2, x3, x4)
  = withQPixmapResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPixmap_copy2 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QPixmap_copy2" qtc_QPixmap_copy2 :: Ptr (TQPixmap a) -> CInt -> CInt -> CInt -> CInt -> IO (Ptr (TQPixmap ()))

instance Qcopy (QPixmapSc a) ((Int, Int, Int, Int)) (IO (QPixmap ())) where
 copy x0 (x1, x2, x3, x4)
  = withQPixmapResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPixmap_copy2 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

instance Qcopy_nf (QPixmap ()) ((Int, Int, Int, Int)) (IO (QPixmap ())) where
 copy_nf x0 (x1, x2, x3, x4)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPixmap_copy2 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

instance Qcopy_nf (QPixmapSc a) ((Int, Int, Int, Int)) (IO (QPixmap ())) where
 copy_nf x0 (x1, x2, x3, x4)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPixmap_copy2 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

instance Qqcopy (QPixmap ()) ((QRect t1)) (IO (QPixmap ())) where
 qcopy x0 (x1)
  = withQPixmapResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPixmap_copy1 cobj_x0 cobj_x1

foreign import ccall "qtc_QPixmap_copy1" qtc_QPixmap_copy1 :: Ptr (TQPixmap a) -> Ptr (TQRect t1) -> IO (Ptr (TQPixmap ()))

instance Qqcopy (QPixmapSc a) ((QRect t1)) (IO (QPixmap ())) where
 qcopy x0 (x1)
  = withQPixmapResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPixmap_copy1 cobj_x0 cobj_x1

instance Qqcopy_nf (QPixmap ()) ((QRect t1)) (IO (QPixmap ())) where
 qcopy_nf x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPixmap_copy1 cobj_x0 cobj_x1

instance Qqcopy_nf (QPixmapSc a) ((QRect t1)) (IO (QPixmap ())) where
 qcopy_nf x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPixmap_copy1 cobj_x0 cobj_x1

instance Qcopy (QPixmap ()) ((Rect)) (IO (QPixmap ())) where
 copy x0 (x1)
  = withQPixmapResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QPixmap_copy1_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

foreign import ccall "qtc_QPixmap_copy1_qth" qtc_QPixmap_copy1_qth :: Ptr (TQPixmap a) -> CInt -> CInt -> CInt -> CInt -> IO (Ptr (TQPixmap ()))

instance Qcopy (QPixmapSc a) ((Rect)) (IO (QPixmap ())) where
 copy x0 (x1)
  = withQPixmapResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QPixmap_copy1_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

instance Qcopy_nf (QPixmap ()) ((Rect)) (IO (QPixmap ())) where
 copy_nf x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QPixmap_copy1_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

instance Qcopy_nf (QPixmapSc a) ((Rect)) (IO (QPixmap ())) where
 copy_nf x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QPixmap_copy1_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

instance QcreateHeuristicMask (QPixmap ()) (()) (IO (QBitmap ())) where
 createHeuristicMask x0 ()
  = withQBitmapResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPixmap_createHeuristicMask cobj_x0

foreign import ccall "qtc_QPixmap_createHeuristicMask" qtc_QPixmap_createHeuristicMask :: Ptr (TQPixmap a) -> IO (Ptr (TQBitmap ()))

instance QcreateHeuristicMask (QPixmapSc a) (()) (IO (QBitmap ())) where
 createHeuristicMask x0 ()
  = withQBitmapResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPixmap_createHeuristicMask cobj_x0

instance QcreateHeuristicMask_nf (QPixmap ()) (()) (IO (QBitmap ())) where
 createHeuristicMask_nf x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPixmap_createHeuristicMask cobj_x0

instance QcreateHeuristicMask_nf (QPixmapSc a) (()) (IO (QBitmap ())) where
 createHeuristicMask_nf x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPixmap_createHeuristicMask cobj_x0

instance QcreateHeuristicMask (QPixmap ()) ((Bool)) (IO (QBitmap ())) where
 createHeuristicMask x0 (x1)
  = withQBitmapResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPixmap_createHeuristicMask1 cobj_x0 (toCBool x1)

foreign import ccall "qtc_QPixmap_createHeuristicMask1" qtc_QPixmap_createHeuristicMask1 :: Ptr (TQPixmap a) -> CBool -> IO (Ptr (TQBitmap ()))

instance QcreateHeuristicMask (QPixmapSc a) ((Bool)) (IO (QBitmap ())) where
 createHeuristicMask x0 (x1)
  = withQBitmapResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPixmap_createHeuristicMask1 cobj_x0 (toCBool x1)

instance QcreateHeuristicMask_nf (QPixmap ()) ((Bool)) (IO (QBitmap ())) where
 createHeuristicMask_nf x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPixmap_createHeuristicMask1 cobj_x0 (toCBool x1)

instance QcreateHeuristicMask_nf (QPixmapSc a) ((Bool)) (IO (QBitmap ())) where
 createHeuristicMask_nf x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPixmap_createHeuristicMask1 cobj_x0 (toCBool x1)

instance QcreateMaskFromColor (QPixmap ()) ((QColor t1)) (IO (QBitmap ())) where
 createMaskFromColor x0 (x1)
  = withQBitmapResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPixmap_createMaskFromColor cobj_x0 cobj_x1

foreign import ccall "qtc_QPixmap_createMaskFromColor" qtc_QPixmap_createMaskFromColor :: Ptr (TQPixmap a) -> Ptr (TQColor t1) -> IO (Ptr (TQBitmap ()))

instance QcreateMaskFromColor (QPixmapSc a) ((QColor t1)) (IO (QBitmap ())) where
 createMaskFromColor x0 (x1)
  = withQBitmapResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPixmap_createMaskFromColor cobj_x0 cobj_x1

instance QcreateMaskFromColor_nf (QPixmap ()) ((QColor t1)) (IO (QBitmap ())) where
 createMaskFromColor_nf x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPixmap_createMaskFromColor cobj_x0 cobj_x1

instance QcreateMaskFromColor_nf (QPixmapSc a) ((QColor t1)) (IO (QBitmap ())) where
 createMaskFromColor_nf x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPixmap_createMaskFromColor cobj_x0 cobj_x1

instance QcreateMaskFromColor (QPixmap ()) ((QColor t1, MaskMode)) (IO (QBitmap ())) where
 createMaskFromColor x0 (x1, x2)
  = withQBitmapResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPixmap_createMaskFromColor1 cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QPixmap_createMaskFromColor1" qtc_QPixmap_createMaskFromColor1 :: Ptr (TQPixmap a) -> Ptr (TQColor t1) -> CLong -> IO (Ptr (TQBitmap ()))

instance QcreateMaskFromColor (QPixmapSc a) ((QColor t1, MaskMode)) (IO (QBitmap ())) where
 createMaskFromColor x0 (x1, x2)
  = withQBitmapResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPixmap_createMaskFromColor1 cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

instance QcreateMaskFromColor_nf (QPixmap ()) ((QColor t1, MaskMode)) (IO (QBitmap ())) where
 createMaskFromColor_nf x0 (x1, x2)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPixmap_createMaskFromColor1 cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

instance QcreateMaskFromColor_nf (QPixmapSc a) ((QColor t1, MaskMode)) (IO (QBitmap ())) where
 createMaskFromColor_nf x0 (x1, x2)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPixmap_createMaskFromColor1 cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

qPixmapDefaultDepth :: (()) -> IO (Int)
qPixmapDefaultDepth ()
  = withIntResult $
    qtc_QPixmap_defaultDepth

foreign import ccall "qtc_QPixmap_defaultDepth" qtc_QPixmap_defaultDepth :: IO CInt

instance Qdepth (QPixmap a) (()) (IO (Int)) where
 depth x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPixmap_depth cobj_x0

foreign import ccall "qtc_QPixmap_depth" qtc_QPixmap_depth :: Ptr (TQPixmap a) -> IO CInt

instance Qdetach (QPixmap a) (()) where
 detach x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPixmap_detach cobj_x0

foreign import ccall "qtc_QPixmap_detach" qtc_QPixmap_detach :: Ptr (TQPixmap a) -> IO ()

instance QdevType (QPixmap ()) (()) where
 devType x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPixmap_devType_h cobj_x0

foreign import ccall "qtc_QPixmap_devType_h" qtc_QPixmap_devType_h :: Ptr (TQPixmap a) -> IO CInt

instance QdevType (QPixmapSc a) (()) where
 devType x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPixmap_devType_h cobj_x0

instance Qfill (QPixmap a) (()) where
 fill x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPixmap_fill cobj_x0

foreign import ccall "qtc_QPixmap_fill" qtc_QPixmap_fill :: Ptr (TQPixmap a) -> IO ()

instance Qfill (QPixmap a) ((QColor t1)) where
 fill x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPixmap_fill1 cobj_x0 cobj_x1

foreign import ccall "qtc_QPixmap_fill1" qtc_QPixmap_fill1 :: Ptr (TQPixmap a) -> Ptr (TQColor t1) -> IO ()

instance Qfill (QPixmap a) ((QWidget t1, Int, Int)) where
 fill x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPixmap_fill3 cobj_x0 cobj_x1 (toCInt x2) (toCInt x3)

foreign import ccall "qtc_QPixmap_fill3" qtc_QPixmap_fill3 :: Ptr (TQPixmap a) -> Ptr (TQWidget t1) -> CInt -> CInt -> IO ()

instance Qfill (QPixmap a) ((QWidget t1, Point)) where
 fill x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCPoint x2 $ \cpoint_x2_x cpoint_x2_y -> 
    qtc_QPixmap_fill2_qth cobj_x0 cobj_x1 cpoint_x2_x cpoint_x2_y 

foreign import ccall "qtc_QPixmap_fill2_qth" qtc_QPixmap_fill2_qth :: Ptr (TQPixmap a) -> Ptr (TQWidget t1) -> CInt -> CInt -> IO ()

qfill :: QPixmap a -> ((QWidget t1, QPoint t2)) -> IO ()
qfill x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QPixmap_fill2 cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QPixmap_fill2" qtc_QPixmap_fill2 :: Ptr (TQPixmap a) -> Ptr (TQWidget t1) -> Ptr (TQPoint t2) -> IO ()

class QqPixmapFromImage x1 where
 qPixmapFromImage :: x1 -> IO (QPixmap ())

class QqPixmapFromImage_nf x1 where
 qPixmapFromImage_nf :: x1 -> IO (QPixmap ())

instance QqPixmapFromImage ((QImage t1)) where
 qPixmapFromImage (x1)
  = withQPixmapResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPixmap_fromImage cobj_x1

foreign import ccall "qtc_QPixmap_fromImage" qtc_QPixmap_fromImage :: Ptr (TQImage t1) -> IO (Ptr (TQPixmap ()))

instance QqPixmapFromImage_nf ((QImage t1)) where
 qPixmapFromImage_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPixmap_fromImage cobj_x1

instance QqPixmapFromImage ((QImage t1, ImageConversionFlags)) where
 qPixmapFromImage (x1, x2)
  = withQPixmapResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPixmap_fromImage1 cobj_x1 (toCLong $ qFlags_toInt x2)

foreign import ccall "qtc_QPixmap_fromImage1" qtc_QPixmap_fromImage1 :: Ptr (TQImage t1) -> CLong -> IO (Ptr (TQPixmap ()))

instance QqPixmapFromImage_nf ((QImage t1, ImageConversionFlags)) where
 qPixmapFromImage_nf (x1, x2)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPixmap_fromImage1 cobj_x1 (toCLong $ qFlags_toInt x2)

class QqPixmapGrabWidget x1 where
 qPixmapGrabWidget :: x1 -> IO (QPixmap ())

class QqPixmapGrabWidget_nf x1 where
 qPixmapGrabWidget_nf :: x1 -> IO (QPixmap ())

instance QqPixmapGrabWidget ((QWidget t1)) where
 qPixmapGrabWidget (x1)
  = withQPixmapResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPixmap_grabWidget cobj_x1

foreign import ccall "qtc_QPixmap_grabWidget" qtc_QPixmap_grabWidget :: Ptr (TQWidget t1) -> IO (Ptr (TQPixmap ()))

instance QqPixmapGrabWidget_nf ((QWidget t1)) where
 qPixmapGrabWidget_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPixmap_grabWidget cobj_x1

instance QqPixmapGrabWidget ((QWidget t1, Int)) where
 qPixmapGrabWidget (x1, x2)
  = withQPixmapResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPixmap_grabWidget2 cobj_x1 (toCInt x2)

foreign import ccall "qtc_QPixmap_grabWidget2" qtc_QPixmap_grabWidget2 :: Ptr (TQWidget t1) -> CInt -> IO (Ptr (TQPixmap ()))

instance QqPixmapGrabWidget_nf ((QWidget t1, Int)) where
 qPixmapGrabWidget_nf (x1, x2)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPixmap_grabWidget2 cobj_x1 (toCInt x2)

instance QqPixmapGrabWidget ((QWidget t1, Int, Int)) where
 qPixmapGrabWidget (x1, x2, x3)
  = withQPixmapResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPixmap_grabWidget3 cobj_x1 (toCInt x2) (toCInt x3)

foreign import ccall "qtc_QPixmap_grabWidget3" qtc_QPixmap_grabWidget3 :: Ptr (TQWidget t1) -> CInt -> CInt -> IO (Ptr (TQPixmap ()))

instance QqPixmapGrabWidget_nf ((QWidget t1, Int, Int)) where
 qPixmapGrabWidget_nf (x1, x2, x3)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPixmap_grabWidget3 cobj_x1 (toCInt x2) (toCInt x3)

instance QqPixmapGrabWidget ((QWidget t1, Int, Int, Int)) where
 qPixmapGrabWidget (x1, x2, x3, x4)
  = withQPixmapResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPixmap_grabWidget4 cobj_x1 (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QPixmap_grabWidget4" qtc_QPixmap_grabWidget4 :: Ptr (TQWidget t1) -> CInt -> CInt -> CInt -> IO (Ptr (TQPixmap ()))

instance QqPixmapGrabWidget_nf ((QWidget t1, Int, Int, Int)) where
 qPixmapGrabWidget_nf (x1, x2, x3, x4)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPixmap_grabWidget4 cobj_x1 (toCInt x2) (toCInt x3) (toCInt x4)

instance QqPixmapGrabWidget ((QWidget t1, Int, Int, Int, Int)) where
 qPixmapGrabWidget (x1, x2, x3, x4, x5)
  = withQPixmapResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPixmap_grabWidget5 cobj_x1 (toCInt x2) (toCInt x3) (toCInt x4) (toCInt x5)

foreign import ccall "qtc_QPixmap_grabWidget5" qtc_QPixmap_grabWidget5 :: Ptr (TQWidget t1) -> CInt -> CInt -> CInt -> CInt -> IO (Ptr (TQPixmap ()))

instance QqPixmapGrabWidget_nf ((QWidget t1, Int, Int, Int, Int)) where
 qPixmapGrabWidget_nf (x1, x2, x3, x4, x5)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPixmap_grabWidget5 cobj_x1 (toCInt x2) (toCInt x3) (toCInt x4) (toCInt x5)

qqPixmapGrabWidget :: ((QWidget t1, QRect t2)) -> IO (QPixmap ())
qqPixmapGrabWidget (x1, x2)
  = withQPixmapResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QPixmap_grabWidget1 cobj_x1 cobj_x2

foreign import ccall "qtc_QPixmap_grabWidget1" qtc_QPixmap_grabWidget1 :: Ptr (TQWidget t1) -> Ptr (TQRect t2) -> IO (Ptr (TQPixmap ()))

qqPixmapGrabWidget_nf :: ((QWidget t1, QRect t2)) -> IO (QPixmap ())
qqPixmapGrabWidget_nf (x1, x2)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QPixmap_grabWidget1 cobj_x1 cobj_x2

instance QqPixmapGrabWidget ((QWidget t1, Rect)) where
 qPixmapGrabWidget (x1, x2)
  = withQPixmapResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withCRect x2 $ \crect_x2_x crect_x2_y  crect_x2_w crect_x2_h ->
    qtc_QPixmap_grabWidget1_qth cobj_x1 crect_x2_x crect_x2_y crect_x2_w crect_x2_h 

foreign import ccall "qtc_QPixmap_grabWidget1_qth" qtc_QPixmap_grabWidget1_qth :: Ptr (TQWidget t1) -> CInt -> CInt -> CInt -> CInt -> IO (Ptr (TQPixmap ()))

instance QqPixmapGrabWidget_nf ((QWidget t1, Rect)) where
 qPixmapGrabWidget_nf (x1, x2)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withCRect x2 $ \crect_x2_x crect_x2_y  crect_x2_w crect_x2_h ->
    qtc_QPixmap_grabWidget1_qth cobj_x1 crect_x2_x crect_x2_y crect_x2_w crect_x2_h 

class QqPixmapGrabWindow x1 where
 qPixmapGrabWindow :: x1 -> IO (QPixmap ())

class QqPixmapGrabWindow_nf x1 where
 qPixmapGrabWindow_nf :: x1 -> IO (QPixmap ())

instance QqPixmapGrabWindow ((QVoid t1)) where
 qPixmapGrabWindow (x1)
  = withQPixmapResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPixmap_grabWindow cobj_x1

foreign import ccall "qtc_QPixmap_grabWindow" qtc_QPixmap_grabWindow :: Ptr (TQVoid t1) -> IO (Ptr (TQPixmap ()))

instance QqPixmapGrabWindow_nf ((QVoid t1)) where
 qPixmapGrabWindow_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPixmap_grabWindow cobj_x1

instance QqPixmapGrabWindow ((QVoid t1, Int)) where
 qPixmapGrabWindow (x1, x2)
  = withQPixmapResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPixmap_grabWindow1 cobj_x1 (toCInt x2)

foreign import ccall "qtc_QPixmap_grabWindow1" qtc_QPixmap_grabWindow1 :: Ptr (TQVoid t1) -> CInt -> IO (Ptr (TQPixmap ()))

instance QqPixmapGrabWindow_nf ((QVoid t1, Int)) where
 qPixmapGrabWindow_nf (x1, x2)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPixmap_grabWindow1 cobj_x1 (toCInt x2)

instance QqPixmapGrabWindow ((QVoid t1, Int, Int)) where
 qPixmapGrabWindow (x1, x2, x3)
  = withQPixmapResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPixmap_grabWindow2 cobj_x1 (toCInt x2) (toCInt x3)

foreign import ccall "qtc_QPixmap_grabWindow2" qtc_QPixmap_grabWindow2 :: Ptr (TQVoid t1) -> CInt -> CInt -> IO (Ptr (TQPixmap ()))

instance QqPixmapGrabWindow_nf ((QVoid t1, Int, Int)) where
 qPixmapGrabWindow_nf (x1, x2, x3)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPixmap_grabWindow2 cobj_x1 (toCInt x2) (toCInt x3)

instance QqPixmapGrabWindow ((QVoid t1, Int, Int, Int)) where
 qPixmapGrabWindow (x1, x2, x3, x4)
  = withQPixmapResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPixmap_grabWindow3 cobj_x1 (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QPixmap_grabWindow3" qtc_QPixmap_grabWindow3 :: Ptr (TQVoid t1) -> CInt -> CInt -> CInt -> IO (Ptr (TQPixmap ()))

instance QqPixmapGrabWindow_nf ((QVoid t1, Int, Int, Int)) where
 qPixmapGrabWindow_nf (x1, x2, x3, x4)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPixmap_grabWindow3 cobj_x1 (toCInt x2) (toCInt x3) (toCInt x4)

instance QqPixmapGrabWindow ((QVoid t1, Int, Int, Int, Int)) where
 qPixmapGrabWindow (x1, x2, x3, x4, x5)
  = withQPixmapResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPixmap_grabWindow4 cobj_x1 (toCInt x2) (toCInt x3) (toCInt x4) (toCInt x5)

foreign import ccall "qtc_QPixmap_grabWindow4" qtc_QPixmap_grabWindow4 :: Ptr (TQVoid t1) -> CInt -> CInt -> CInt -> CInt -> IO (Ptr (TQPixmap ()))

instance QqPixmapGrabWindow_nf ((QVoid t1, Int, Int, Int, Int)) where
 qPixmapGrabWindow_nf (x1, x2, x3, x4, x5)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPixmap_grabWindow4 cobj_x1 (toCInt x2) (toCInt x3) (toCInt x4) (toCInt x5)

hasAlpha :: QPixmap a -> (()) -> IO (Bool)
hasAlpha x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPixmap_hasAlpha cobj_x0

foreign import ccall "qtc_QPixmap_hasAlpha" qtc_QPixmap_hasAlpha :: Ptr (TQPixmap a) -> IO CBool

instance QhasAlphaChannel (QPixmap a) (()) where
 hasAlphaChannel x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPixmap_hasAlphaChannel cobj_x0

foreign import ccall "qtc_QPixmap_hasAlphaChannel" qtc_QPixmap_hasAlphaChannel :: Ptr (TQPixmap a) -> IO CBool

instance Qqheight (QPixmap a) (()) (IO (Int)) where
 qheight x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPixmap_height cobj_x0

foreign import ccall "qtc_QPixmap_height" qtc_QPixmap_height :: Ptr (TQPixmap a) -> IO CInt

instance QisDetached (QPixmap a) (()) where
 isDetached x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPixmap_isDetached cobj_x0

foreign import ccall "qtc_QPixmap_isDetached" qtc_QPixmap_isDetached :: Ptr (TQPixmap a) -> IO CBool

instance QqisNull (QPixmap a) (()) where
 qisNull x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPixmap_isNull cobj_x0

foreign import ccall "qtc_QPixmap_isNull" qtc_QPixmap_isNull :: Ptr (TQPixmap a) -> IO CBool

isQBitmap :: QPixmap a -> (()) -> IO (Bool)
isQBitmap x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPixmap_isQBitmap cobj_x0

foreign import ccall "qtc_QPixmap_isQBitmap" qtc_QPixmap_isQBitmap :: Ptr (TQPixmap a) -> IO CBool

instance Qload (QPixmap a) ((String)) (IO (Bool)) where
 load x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QPixmap_load cobj_x0 cstr_x1

foreign import ccall "qtc_QPixmap_load" qtc_QPixmap_load :: Ptr (TQPixmap a) -> CWString -> IO CBool

instance Qload (QPixmap a) ((String, String)) (IO (Bool)) where
 load x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QPixmap_load1 cobj_x0 cstr_x1 cstr_x2

foreign import ccall "qtc_QPixmap_load1" qtc_QPixmap_load1 :: Ptr (TQPixmap a) -> CWString -> CWString -> IO CBool

instance Qload (QPixmap a) ((String, String, ImageConversionFlags)) (IO (Bool)) where
 load x0 (x1, x2, x3)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QPixmap_load2 cobj_x0 cstr_x1 cstr_x2 (toCLong $ qFlags_toInt x3)

foreign import ccall "qtc_QPixmap_load2" qtc_QPixmap_load2 :: Ptr (TQPixmap a) -> CWString -> CWString -> CLong -> IO CBool

instance QloadFromData (QPixmap a) ((String)) where
 loadFromData x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QPixmap_loadFromData cobj_x0 cstr_x1

foreign import ccall "qtc_QPixmap_loadFromData" qtc_QPixmap_loadFromData :: Ptr (TQPixmap a) -> CWString -> IO CBool

instance QloadFromData (QPixmap a) ((String, String)) where
 loadFromData x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QPixmap_loadFromData1 cobj_x0 cstr_x1 cstr_x2

foreign import ccall "qtc_QPixmap_loadFromData1" qtc_QPixmap_loadFromData1 :: Ptr (TQPixmap a) -> CWString -> CWString -> IO CBool

instance QloadFromData (QPixmap a) ((String, String, ImageConversionFlags)) where
 loadFromData x0 (x1, x2, x3)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QPixmap_loadFromData2 cobj_x0 cstr_x1 cstr_x2 (toCLong $ qFlags_toInt x3)

foreign import ccall "qtc_QPixmap_loadFromData2" qtc_QPixmap_loadFromData2 :: Ptr (TQPixmap a) -> CWString -> CWString -> CLong -> IO CBool

instance Qmask (QPixmap ()) (()) (IO (QBitmap ())) where
 mask x0 ()
  = withQBitmapResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPixmap_mask cobj_x0

foreign import ccall "qtc_QPixmap_mask" qtc_QPixmap_mask :: Ptr (TQPixmap a) -> IO (Ptr (TQBitmap ()))

instance Qmask (QPixmapSc a) (()) (IO (QBitmap ())) where
 mask x0 ()
  = withQBitmapResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPixmap_mask cobj_x0

instance Qmask_nf (QPixmap ()) (()) (IO (QBitmap ())) where
 mask_nf x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPixmap_mask cobj_x0

instance Qmask_nf (QPixmapSc a) (()) (IO (QBitmap ())) where
 mask_nf x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPixmap_mask cobj_x0

instance Qmetric (QPixmap ()) ((PaintDeviceMetric)) where
 metric x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPixmap_metric cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QPixmap_metric" qtc_QPixmap_metric :: Ptr (TQPixmap a) -> CLong -> IO CInt

instance Qmetric (QPixmapSc a) ((PaintDeviceMetric)) where
 metric x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPixmap_metric cobj_x0 (toCLong $ qEnum_toInt x1)

instance QpaintEngine (QPixmap ()) (()) where
 paintEngine x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPixmap_paintEngine_h cobj_x0

foreign import ccall "qtc_QPixmap_paintEngine_h" qtc_QPixmap_paintEngine_h :: Ptr (TQPixmap a) -> IO (Ptr (TQPaintEngine ()))

instance QpaintEngine (QPixmapSc a) (()) where
 paintEngine x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPixmap_paintEngine_h cobj_x0

instance Qqqrect (QPixmap a) (()) (IO (QRect ())) where
 qqrect x0 ()
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPixmap_rect cobj_x0

foreign import ccall "qtc_QPixmap_rect" qtc_QPixmap_rect :: Ptr (TQPixmap a) -> IO (Ptr (TQRect ()))

instance Qqrect (QPixmap a) (()) (IO (Rect)) where
 qrect x0 ()
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPixmap_rect_qth cobj_x0 crect_ret_x crect_ret_y crect_ret_w crect_ret_h

foreign import ccall "qtc_QPixmap_rect_qth" qtc_QPixmap_rect_qth :: Ptr (TQPixmap a) -> Ptr CInt -> Ptr CInt -> Ptr CInt -> Ptr CInt -> IO ()

instance Qsave (QPixmap a) ((QIODevice t1)) (IO (Bool)) where
 save x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPixmap_save1 cobj_x0 cobj_x1

foreign import ccall "qtc_QPixmap_save1" qtc_QPixmap_save1 :: Ptr (TQPixmap a) -> Ptr (TQIODevice t1) -> IO CBool

instance Qsave (QPixmap a) ((QIODevice t1, String)) (IO (Bool)) where
 save x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QPixmap_save3 cobj_x0 cobj_x1 cstr_x2

foreign import ccall "qtc_QPixmap_save3" qtc_QPixmap_save3 :: Ptr (TQPixmap a) -> Ptr (TQIODevice t1) -> CWString -> IO CBool

instance Qsave (QPixmap a) ((QIODevice t1, String, Int)) (IO (Bool)) where
 save x0 (x1, x2, x3)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QPixmap_save4 cobj_x0 cobj_x1 cstr_x2 (toCInt x3)

foreign import ccall "qtc_QPixmap_save4" qtc_QPixmap_save4 :: Ptr (TQPixmap a) -> Ptr (TQIODevice t1) -> CWString -> CInt -> IO CBool

instance Qsave (QPixmap a) ((String)) (IO (Bool)) where
 save x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QPixmap_save cobj_x0 cstr_x1

foreign import ccall "qtc_QPixmap_save" qtc_QPixmap_save :: Ptr (TQPixmap a) -> CWString -> IO CBool

instance Qsave (QPixmap a) ((String, String)) (IO (Bool)) where
 save x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QPixmap_save2 cobj_x0 cstr_x1 cstr_x2

foreign import ccall "qtc_QPixmap_save2" qtc_QPixmap_save2 :: Ptr (TQPixmap a) -> CWString -> CWString -> IO CBool

instance Qsave (QPixmap a) ((String, String, Int)) (IO (Bool)) where
 save x0 (x1, x2, x3)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QPixmap_save5 cobj_x0 cstr_x1 cstr_x2 (toCInt x3)

foreign import ccall "qtc_QPixmap_save5" qtc_QPixmap_save5 :: Ptr (TQPixmap a) -> CWString -> CWString -> CInt -> IO CBool

instance Qscaled (QPixmap ()) ((Int, Int)) (IO (QPixmap ())) where
 scaled x0 (x1, x2)
  = withQPixmapResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPixmap_scaled1 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QPixmap_scaled1" qtc_QPixmap_scaled1 :: Ptr (TQPixmap a) -> CInt -> CInt -> IO (Ptr (TQPixmap ()))

instance Qscaled (QPixmapSc a) ((Int, Int)) (IO (QPixmap ())) where
 scaled x0 (x1, x2)
  = withQPixmapResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPixmap_scaled1 cobj_x0 (toCInt x1) (toCInt x2)

instance Qscaled_nf (QPixmap ()) ((Int, Int)) (IO (QPixmap ())) where
 scaled_nf x0 (x1, x2)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPixmap_scaled1 cobj_x0 (toCInt x1) (toCInt x2)

instance Qscaled_nf (QPixmapSc a) ((Int, Int)) (IO (QPixmap ())) where
 scaled_nf x0 (x1, x2)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPixmap_scaled1 cobj_x0 (toCInt x1) (toCInt x2)

instance Qscaled (QPixmap ()) ((Int, Int, AspectRatioMode)) (IO (QPixmap ())) where
 scaled x0 (x1, x2, x3)
  = withQPixmapResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPixmap_scaled4 cobj_x0 (toCInt x1) (toCInt x2) (toCLong $ qEnum_toInt x3)

foreign import ccall "qtc_QPixmap_scaled4" qtc_QPixmap_scaled4 :: Ptr (TQPixmap a) -> CInt -> CInt -> CLong -> IO (Ptr (TQPixmap ()))

instance Qscaled (QPixmapSc a) ((Int, Int, AspectRatioMode)) (IO (QPixmap ())) where
 scaled x0 (x1, x2, x3)
  = withQPixmapResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPixmap_scaled4 cobj_x0 (toCInt x1) (toCInt x2) (toCLong $ qEnum_toInt x3)

instance Qscaled_nf (QPixmap ()) ((Int, Int, AspectRatioMode)) (IO (QPixmap ())) where
 scaled_nf x0 (x1, x2, x3)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPixmap_scaled4 cobj_x0 (toCInt x1) (toCInt x2) (toCLong $ qEnum_toInt x3)

instance Qscaled_nf (QPixmapSc a) ((Int, Int, AspectRatioMode)) (IO (QPixmap ())) where
 scaled_nf x0 (x1, x2, x3)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPixmap_scaled4 cobj_x0 (toCInt x1) (toCInt x2) (toCLong $ qEnum_toInt x3)

instance Qscaled (QPixmap ()) ((Int, Int, AspectRatioMode, TransformationMode)) (IO (QPixmap ())) where
 scaled x0 (x1, x2, x3, x4)
  = withQPixmapResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPixmap_scaled5 cobj_x0 (toCInt x1) (toCInt x2) (toCLong $ qEnum_toInt x3) (toCLong $ qEnum_toInt x4)

foreign import ccall "qtc_QPixmap_scaled5" qtc_QPixmap_scaled5 :: Ptr (TQPixmap a) -> CInt -> CInt -> CLong -> CLong -> IO (Ptr (TQPixmap ()))

instance Qscaled (QPixmapSc a) ((Int, Int, AspectRatioMode, TransformationMode)) (IO (QPixmap ())) where
 scaled x0 (x1, x2, x3, x4)
  = withQPixmapResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPixmap_scaled5 cobj_x0 (toCInt x1) (toCInt x2) (toCLong $ qEnum_toInt x3) (toCLong $ qEnum_toInt x4)

instance Qscaled_nf (QPixmap ()) ((Int, Int, AspectRatioMode, TransformationMode)) (IO (QPixmap ())) where
 scaled_nf x0 (x1, x2, x3, x4)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPixmap_scaled5 cobj_x0 (toCInt x1) (toCInt x2) (toCLong $ qEnum_toInt x3) (toCLong $ qEnum_toInt x4)

instance Qscaled_nf (QPixmapSc a) ((Int, Int, AspectRatioMode, TransformationMode)) (IO (QPixmap ())) where
 scaled_nf x0 (x1, x2, x3, x4)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPixmap_scaled5 cobj_x0 (toCInt x1) (toCInt x2) (toCLong $ qEnum_toInt x3) (toCLong $ qEnum_toInt x4)

instance Qqscaled (QPixmap ()) ((QSize t1)) (IO (QPixmap ())) where
 qscaled x0 (x1)
  = withQPixmapResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPixmap_scaled cobj_x0 cobj_x1

foreign import ccall "qtc_QPixmap_scaled" qtc_QPixmap_scaled :: Ptr (TQPixmap a) -> Ptr (TQSize t1) -> IO (Ptr (TQPixmap ()))

instance Qqscaled (QPixmapSc a) ((QSize t1)) (IO (QPixmap ())) where
 qscaled x0 (x1)
  = withQPixmapResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPixmap_scaled cobj_x0 cobj_x1

instance Qqscaled_nf (QPixmap ()) ((QSize t1)) (IO (QPixmap ())) where
 qscaled_nf x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPixmap_scaled cobj_x0 cobj_x1

instance Qqscaled_nf (QPixmapSc a) ((QSize t1)) (IO (QPixmap ())) where
 qscaled_nf x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPixmap_scaled cobj_x0 cobj_x1

instance Qqscaled (QPixmap ()) ((QSize t1, AspectRatioMode)) (IO (QPixmap ())) where
 qscaled x0 (x1, x2)
  = withQPixmapResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPixmap_scaled2 cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QPixmap_scaled2" qtc_QPixmap_scaled2 :: Ptr (TQPixmap a) -> Ptr (TQSize t1) -> CLong -> IO (Ptr (TQPixmap ()))

instance Qqscaled (QPixmapSc a) ((QSize t1, AspectRatioMode)) (IO (QPixmap ())) where
 qscaled x0 (x1, x2)
  = withQPixmapResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPixmap_scaled2 cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

instance Qqscaled_nf (QPixmap ()) ((QSize t1, AspectRatioMode)) (IO (QPixmap ())) where
 qscaled_nf x0 (x1, x2)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPixmap_scaled2 cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

instance Qqscaled_nf (QPixmapSc a) ((QSize t1, AspectRatioMode)) (IO (QPixmap ())) where
 qscaled_nf x0 (x1, x2)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPixmap_scaled2 cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

instance Qqscaled (QPixmap ()) ((QSize t1, AspectRatioMode, TransformationMode)) (IO (QPixmap ())) where
 qscaled x0 (x1, x2, x3)
  = withQPixmapResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPixmap_scaled3 cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2) (toCLong $ qEnum_toInt x3)

foreign import ccall "qtc_QPixmap_scaled3" qtc_QPixmap_scaled3 :: Ptr (TQPixmap a) -> Ptr (TQSize t1) -> CLong -> CLong -> IO (Ptr (TQPixmap ()))

instance Qqscaled (QPixmapSc a) ((QSize t1, AspectRatioMode, TransformationMode)) (IO (QPixmap ())) where
 qscaled x0 (x1, x2, x3)
  = withQPixmapResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPixmap_scaled3 cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2) (toCLong $ qEnum_toInt x3)

instance Qqscaled_nf (QPixmap ()) ((QSize t1, AspectRatioMode, TransformationMode)) (IO (QPixmap ())) where
 qscaled_nf x0 (x1, x2, x3)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPixmap_scaled3 cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2) (toCLong $ qEnum_toInt x3)

instance Qqscaled_nf (QPixmapSc a) ((QSize t1, AspectRatioMode, TransformationMode)) (IO (QPixmap ())) where
 qscaled_nf x0 (x1, x2, x3)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPixmap_scaled3 cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2) (toCLong $ qEnum_toInt x3)

instance Qscaled (QPixmap ()) ((Size)) (IO (QPixmap ())) where
 scaled x0 (x1)
  = withQPixmapResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QPixmap_scaled_qth cobj_x0 csize_x1_w csize_x1_h 

foreign import ccall "qtc_QPixmap_scaled_qth" qtc_QPixmap_scaled_qth :: Ptr (TQPixmap a) -> CInt -> CInt -> IO (Ptr (TQPixmap ()))

instance Qscaled (QPixmapSc a) ((Size)) (IO (QPixmap ())) where
 scaled x0 (x1)
  = withQPixmapResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QPixmap_scaled_qth cobj_x0 csize_x1_w csize_x1_h 

instance Qscaled_nf (QPixmap ()) ((Size)) (IO (QPixmap ())) where
 scaled_nf x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QPixmap_scaled_qth cobj_x0 csize_x1_w csize_x1_h 

instance Qscaled_nf (QPixmapSc a) ((Size)) (IO (QPixmap ())) where
 scaled_nf x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QPixmap_scaled_qth cobj_x0 csize_x1_w csize_x1_h 

instance Qscaled (QPixmap ()) ((Size, AspectRatioMode)) (IO (QPixmap ())) where
 scaled x0 (x1, x2)
  = withQPixmapResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QPixmap_scaled2_qth cobj_x0 csize_x1_w csize_x1_h  (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QPixmap_scaled2_qth" qtc_QPixmap_scaled2_qth :: Ptr (TQPixmap a) -> CInt -> CInt -> CLong -> IO (Ptr (TQPixmap ()))

instance Qscaled (QPixmapSc a) ((Size, AspectRatioMode)) (IO (QPixmap ())) where
 scaled x0 (x1, x2)
  = withQPixmapResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QPixmap_scaled2_qth cobj_x0 csize_x1_w csize_x1_h  (toCLong $ qEnum_toInt x2)

instance Qscaled_nf (QPixmap ()) ((Size, AspectRatioMode)) (IO (QPixmap ())) where
 scaled_nf x0 (x1, x2)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QPixmap_scaled2_qth cobj_x0 csize_x1_w csize_x1_h  (toCLong $ qEnum_toInt x2)

instance Qscaled_nf (QPixmapSc a) ((Size, AspectRatioMode)) (IO (QPixmap ())) where
 scaled_nf x0 (x1, x2)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QPixmap_scaled2_qth cobj_x0 csize_x1_w csize_x1_h  (toCLong $ qEnum_toInt x2)

instance Qscaled (QPixmap ()) ((Size, AspectRatioMode, TransformationMode)) (IO (QPixmap ())) where
 scaled x0 (x1, x2, x3)
  = withQPixmapResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QPixmap_scaled3_qth cobj_x0 csize_x1_w csize_x1_h  (toCLong $ qEnum_toInt x2) (toCLong $ qEnum_toInt x3)

foreign import ccall "qtc_QPixmap_scaled3_qth" qtc_QPixmap_scaled3_qth :: Ptr (TQPixmap a) -> CInt -> CInt -> CLong -> CLong -> IO (Ptr (TQPixmap ()))

instance Qscaled (QPixmapSc a) ((Size, AspectRatioMode, TransformationMode)) (IO (QPixmap ())) where
 scaled x0 (x1, x2, x3)
  = withQPixmapResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QPixmap_scaled3_qth cobj_x0 csize_x1_w csize_x1_h  (toCLong $ qEnum_toInt x2) (toCLong $ qEnum_toInt x3)

instance Qscaled_nf (QPixmap ()) ((Size, AspectRatioMode, TransformationMode)) (IO (QPixmap ())) where
 scaled_nf x0 (x1, x2, x3)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QPixmap_scaled3_qth cobj_x0 csize_x1_w csize_x1_h  (toCLong $ qEnum_toInt x2) (toCLong $ qEnum_toInt x3)

instance Qscaled_nf (QPixmapSc a) ((Size, AspectRatioMode, TransformationMode)) (IO (QPixmap ())) where
 scaled_nf x0 (x1, x2, x3)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QPixmap_scaled3_qth cobj_x0 csize_x1_w csize_x1_h  (toCLong $ qEnum_toInt x2) (toCLong $ qEnum_toInt x3)

instance QscaledToHeight (QPixmap ()) ((Int)) (IO (QPixmap ())) where
 scaledToHeight x0 (x1)
  = withQPixmapResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPixmap_scaledToHeight cobj_x0 (toCInt x1)

foreign import ccall "qtc_QPixmap_scaledToHeight" qtc_QPixmap_scaledToHeight :: Ptr (TQPixmap a) -> CInt -> IO (Ptr (TQPixmap ()))

instance QscaledToHeight (QPixmapSc a) ((Int)) (IO (QPixmap ())) where
 scaledToHeight x0 (x1)
  = withQPixmapResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPixmap_scaledToHeight cobj_x0 (toCInt x1)

instance QscaledToHeight_nf (QPixmap ()) ((Int)) (IO (QPixmap ())) where
 scaledToHeight_nf x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPixmap_scaledToHeight cobj_x0 (toCInt x1)

instance QscaledToHeight_nf (QPixmapSc a) ((Int)) (IO (QPixmap ())) where
 scaledToHeight_nf x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPixmap_scaledToHeight cobj_x0 (toCInt x1)

instance QscaledToHeight (QPixmap ()) ((Int, TransformationMode)) (IO (QPixmap ())) where
 scaledToHeight x0 (x1, x2)
  = withQPixmapResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPixmap_scaledToHeight1 cobj_x0 (toCInt x1) (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QPixmap_scaledToHeight1" qtc_QPixmap_scaledToHeight1 :: Ptr (TQPixmap a) -> CInt -> CLong -> IO (Ptr (TQPixmap ()))

instance QscaledToHeight (QPixmapSc a) ((Int, TransformationMode)) (IO (QPixmap ())) where
 scaledToHeight x0 (x1, x2)
  = withQPixmapResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPixmap_scaledToHeight1 cobj_x0 (toCInt x1) (toCLong $ qEnum_toInt x2)

instance QscaledToHeight_nf (QPixmap ()) ((Int, TransformationMode)) (IO (QPixmap ())) where
 scaledToHeight_nf x0 (x1, x2)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPixmap_scaledToHeight1 cobj_x0 (toCInt x1) (toCLong $ qEnum_toInt x2)

instance QscaledToHeight_nf (QPixmapSc a) ((Int, TransformationMode)) (IO (QPixmap ())) where
 scaledToHeight_nf x0 (x1, x2)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPixmap_scaledToHeight1 cobj_x0 (toCInt x1) (toCLong $ qEnum_toInt x2)

instance QscaledToWidth (QPixmap ()) ((Int)) (IO (QPixmap ())) where
 scaledToWidth x0 (x1)
  = withQPixmapResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPixmap_scaledToWidth cobj_x0 (toCInt x1)

foreign import ccall "qtc_QPixmap_scaledToWidth" qtc_QPixmap_scaledToWidth :: Ptr (TQPixmap a) -> CInt -> IO (Ptr (TQPixmap ()))

instance QscaledToWidth (QPixmapSc a) ((Int)) (IO (QPixmap ())) where
 scaledToWidth x0 (x1)
  = withQPixmapResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPixmap_scaledToWidth cobj_x0 (toCInt x1)

instance QscaledToWidth_nf (QPixmap ()) ((Int)) (IO (QPixmap ())) where
 scaledToWidth_nf x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPixmap_scaledToWidth cobj_x0 (toCInt x1)

instance QscaledToWidth_nf (QPixmapSc a) ((Int)) (IO (QPixmap ())) where
 scaledToWidth_nf x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPixmap_scaledToWidth cobj_x0 (toCInt x1)

instance QscaledToWidth (QPixmap ()) ((Int, TransformationMode)) (IO (QPixmap ())) where
 scaledToWidth x0 (x1, x2)
  = withQPixmapResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPixmap_scaledToWidth1 cobj_x0 (toCInt x1) (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QPixmap_scaledToWidth1" qtc_QPixmap_scaledToWidth1 :: Ptr (TQPixmap a) -> CInt -> CLong -> IO (Ptr (TQPixmap ()))

instance QscaledToWidth (QPixmapSc a) ((Int, TransformationMode)) (IO (QPixmap ())) where
 scaledToWidth x0 (x1, x2)
  = withQPixmapResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPixmap_scaledToWidth1 cobj_x0 (toCInt x1) (toCLong $ qEnum_toInt x2)

instance QscaledToWidth_nf (QPixmap ()) ((Int, TransformationMode)) (IO (QPixmap ())) where
 scaledToWidth_nf x0 (x1, x2)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPixmap_scaledToWidth1 cobj_x0 (toCInt x1) (toCLong $ qEnum_toInt x2)

instance QscaledToWidth_nf (QPixmapSc a) ((Int, TransformationMode)) (IO (QPixmap ())) where
 scaledToWidth_nf x0 (x1, x2)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPixmap_scaledToWidth1 cobj_x0 (toCInt x1) (toCLong $ qEnum_toInt x2)

instance QserialNumber (QPixmap a) (()) where
 serialNumber x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPixmap_serialNumber cobj_x0

foreign import ccall "qtc_QPixmap_serialNumber" qtc_QPixmap_serialNumber :: Ptr (TQPixmap a) -> IO CInt

instance QsetAlphaChannel (QPixmap a) ((QPixmap t1)) where
 setAlphaChannel x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPixmap_setAlphaChannel cobj_x0 cobj_x1

foreign import ccall "qtc_QPixmap_setAlphaChannel" qtc_QPixmap_setAlphaChannel :: Ptr (TQPixmap a) -> Ptr (TQPixmap t1) -> IO ()

instance QsetMask (QPixmap a) ((QBitmap t1)) where
 setMask x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPixmap_setMask cobj_x0 cobj_x1

foreign import ccall "qtc_QPixmap_setMask" qtc_QPixmap_setMask :: Ptr (TQPixmap a) -> Ptr (TQBitmap t1) -> IO ()

instance Qqqsize (QPixmap a) (()) (IO (QSize ())) where
 qqsize x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPixmap_size cobj_x0

foreign import ccall "qtc_QPixmap_size" qtc_QPixmap_size :: Ptr (TQPixmap a) -> IO (Ptr (TQSize ()))

instance Qqsize (QPixmap a) (()) (IO (Size)) where
 qsize x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPixmap_size_qth cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QPixmap_size_qth" qtc_QPixmap_size_qth :: Ptr (TQPixmap a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QtoImage (QPixmap ()) (()) where
 toImage x0 ()
  = withQImageResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPixmap_toImage cobj_x0

foreign import ccall "qtc_QPixmap_toImage" qtc_QPixmap_toImage :: Ptr (TQPixmap a) -> IO (Ptr (TQImage ()))

instance QtoImage (QPixmapSc a) (()) where
 toImage x0 ()
  = withQImageResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPixmap_toImage cobj_x0

instance QtoImage_nf (QPixmap ()) (()) where
 toImage_nf x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPixmap_toImage cobj_x0

instance QtoImage_nf (QPixmapSc a) (()) where
 toImage_nf x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPixmap_toImage cobj_x0

instance Qtransformed (QPixmap ()) ((QMatrix t1)) (IO (QPixmap ())) where
 transformed x0 (x1)
  = withQPixmapResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPixmap_transformed cobj_x0 cobj_x1

foreign import ccall "qtc_QPixmap_transformed" qtc_QPixmap_transformed :: Ptr (TQPixmap a) -> Ptr (TQMatrix t1) -> IO (Ptr (TQPixmap ()))

instance Qtransformed (QPixmapSc a) ((QMatrix t1)) (IO (QPixmap ())) where
 transformed x0 (x1)
  = withQPixmapResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPixmap_transformed cobj_x0 cobj_x1

instance Qtransformed_nf (QPixmap ()) ((QMatrix t1)) (IO (QPixmap ())) where
 transformed_nf x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPixmap_transformed cobj_x0 cobj_x1

instance Qtransformed_nf (QPixmapSc a) ((QMatrix t1)) (IO (QPixmap ())) where
 transformed_nf x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPixmap_transformed cobj_x0 cobj_x1

instance Qtransformed (QPixmap ()) ((QMatrix t1, TransformationMode)) (IO (QPixmap ())) where
 transformed x0 (x1, x2)
  = withQPixmapResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPixmap_transformed3 cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QPixmap_transformed3" qtc_QPixmap_transformed3 :: Ptr (TQPixmap a) -> Ptr (TQMatrix t1) -> CLong -> IO (Ptr (TQPixmap ()))

instance Qtransformed (QPixmapSc a) ((QMatrix t1, TransformationMode)) (IO (QPixmap ())) where
 transformed x0 (x1, x2)
  = withQPixmapResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPixmap_transformed3 cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

instance Qtransformed_nf (QPixmap ()) ((QMatrix t1, TransformationMode)) (IO (QPixmap ())) where
 transformed_nf x0 (x1, x2)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPixmap_transformed3 cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

instance Qtransformed_nf (QPixmapSc a) ((QMatrix t1, TransformationMode)) (IO (QPixmap ())) where
 transformed_nf x0 (x1, x2)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPixmap_transformed3 cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

instance Qtransformed (QPixmap ()) ((QTransform t1)) (IO (QPixmap ())) where
 transformed x0 (x1)
  = withQPixmapResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPixmap_transformed1 cobj_x0 cobj_x1

foreign import ccall "qtc_QPixmap_transformed1" qtc_QPixmap_transformed1 :: Ptr (TQPixmap a) -> Ptr (TQTransform t1) -> IO (Ptr (TQPixmap ()))

instance Qtransformed (QPixmapSc a) ((QTransform t1)) (IO (QPixmap ())) where
 transformed x0 (x1)
  = withQPixmapResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPixmap_transformed1 cobj_x0 cobj_x1

instance Qtransformed_nf (QPixmap ()) ((QTransform t1)) (IO (QPixmap ())) where
 transformed_nf x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPixmap_transformed1 cobj_x0 cobj_x1

instance Qtransformed_nf (QPixmapSc a) ((QTransform t1)) (IO (QPixmap ())) where
 transformed_nf x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPixmap_transformed1 cobj_x0 cobj_x1

instance Qtransformed (QPixmap ()) ((QTransform t1, TransformationMode)) (IO (QPixmap ())) where
 transformed x0 (x1, x2)
  = withQPixmapResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPixmap_transformed2 cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QPixmap_transformed2" qtc_QPixmap_transformed2 :: Ptr (TQPixmap a) -> Ptr (TQTransform t1) -> CLong -> IO (Ptr (TQPixmap ()))

instance Qtransformed (QPixmapSc a) ((QTransform t1, TransformationMode)) (IO (QPixmap ())) where
 transformed x0 (x1, x2)
  = withQPixmapResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPixmap_transformed2 cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

instance Qtransformed_nf (QPixmap ()) ((QTransform t1, TransformationMode)) (IO (QPixmap ())) where
 transformed_nf x0 (x1, x2)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPixmap_transformed2 cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

instance Qtransformed_nf (QPixmapSc a) ((QTransform t1, TransformationMode)) (IO (QPixmap ())) where
 transformed_nf x0 (x1, x2)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPixmap_transformed2 cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

class QqPixmapTrueMatrix x1 xr where
 qPixmapTrueMatrix :: x1 -> xr

instance QqPixmapTrueMatrix ((QMatrix t1, Int, Int)) (IO (QMatrix ())) where
 qPixmapTrueMatrix (x1, x2, x3)
  = withQMatrixResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPixmap_trueMatrix cobj_x1 (toCInt x2) (toCInt x3)

foreign import ccall "qtc_QPixmap_trueMatrix" qtc_QPixmap_trueMatrix :: Ptr (TQMatrix t1) -> CInt -> CInt -> IO (Ptr (TQMatrix ()))

instance QqPixmapTrueMatrix ((QTransform t1, Int, Int)) (IO (QTransform ())) where
 qPixmapTrueMatrix (x1, x2, x3)
  = withQTransformResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPixmap_trueMatrix1 cobj_x1 (toCInt x2) (toCInt x3)

foreign import ccall "qtc_QPixmap_trueMatrix1" qtc_QPixmap_trueMatrix1 :: Ptr (TQTransform t1) -> CInt -> CInt -> IO (Ptr (TQTransform ()))

instance Qqwidth (QPixmap a) (()) (IO (Int)) where
 qwidth x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPixmap_width cobj_x0

foreign import ccall "qtc_QPixmap_width" qtc_QPixmap_width :: Ptr (TQPixmap a) -> IO CInt

qPixmap_delete :: QPixmap a -> IO ()
qPixmap_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPixmap_delete cobj_x0

foreign import ccall "qtc_QPixmap_delete" qtc_QPixmap_delete :: Ptr (TQPixmap a) -> IO ()

qPixmap_delete1 :: QPixmap a -> IO ()
qPixmap_delete1 x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPixmap_delete1 cobj_x0

foreign import ccall "qtc_QPixmap_delete1" qtc_QPixmap_delete1 :: Ptr (TQPixmap a) -> IO ()

