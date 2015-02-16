{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QImage.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:22
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QImage (
  QqqImage(..), QqImage(..)
  ,QqqImage_nf(..), QqImage_nf(..)
  ,allGray
  ,bytesPerLine
  ,QconvertToFormat(..), QconvertToFormat_nf(..)
  ,QcreateAlphaMask(..), QcreateAlphaMask_nf(..)
  ,dotsPerMeterX
  ,dotsPerMeterY
  ,QqImageFromData(..), QqImageFromData_nf(..)
  ,QinvertPixels(..)
  ,isGrayscale
  ,Qmirrored(..), Qmirrored_nf(..)
  ,numBytes
  ,numColors
  ,qpixel
  ,QpixelIndex(..), qpixelIndex
  ,QrgbSwapped(..), QrgbSwapped_nf(..)
  ,setDotsPerMeterX
  ,setDotsPerMeterY
  ,setNumColors
  ,QsetPixel(..), qsetPixel
  ,textKeys
  ,textLanguages
  ,QqImageTrueMatrix(..)
  ,Qvalid(..), qvalid
  ,qImage_delete, qImage_delete1
  )
  where

import Foreign.C.Types
import Qth.ClassTypes.Core
import Qtc.Enums.Base
import Qtc.Enums.Gui.QPaintDevice
import Qtc.Enums.Core.Qt
import Qtc.Enums.Gui.QImage

import Qtc.Classes.Base
import Qtc.Classes.Qccs
import Qtc.Classes.Core
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core
import Qtc.Classes.Gui
import Qtc.ClassTypes.Gui

instance QuserMethod (QImage ()) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QImage_userMethod cobj_qobj (toCInt evid)

foreign import ccall "qtc_QImage_userMethod" qtc_QImage_userMethod :: Ptr (TQImage a) -> CInt -> IO ()

instance QuserMethod (QImageSc a) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QImage_userMethod cobj_qobj (toCInt evid)

instance QuserMethod (QImage ()) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QImage_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

foreign import ccall "qtc_QImage_userMethodVariant" qtc_QImage_userMethodVariant :: Ptr (TQImage a) -> CInt -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))

instance QuserMethod (QImageSc a) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QImage_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

class QqqImage x1 where
  qqImage :: x1 -> IO (QImage ())

class QqImage x1 where
  qImage :: x1 -> IO (QImage ())

instance QqImage (()) where
 qImage ()
  = withQImageResult $
    qtc_QImage

foreign import ccall "qtc_QImage" qtc_QImage :: IO (Ptr (TQImage ()))

instance QqImage ((String)) where
 qImage (x1)
  = withQImageResult $
    withCWString x1 $ \cstr_x1 ->
    qtc_QImage2 cstr_x1

foreign import ccall "qtc_QImage2" qtc_QImage2 :: CWString -> IO (Ptr (TQImage ()))

instance QqImage ((QImage t1)) where
 qImage (x1)
  = withQImageResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QImage3 cobj_x1

foreign import ccall "qtc_QImage3" qtc_QImage3 :: Ptr (TQImage t1) -> IO (Ptr (TQImage ()))

instance QqImage ((String, String)) where
 qImage (x1, x2)
  = withQImageResult $
    withCWString x1 $ \cstr_x1 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QImage4 cstr_x1 cstr_x2

foreign import ccall "qtc_QImage4" qtc_QImage4 :: CWString -> CWString -> IO (Ptr (TQImage ()))

instance QqqImage ((QSize t1, QImageFormat)) where
 qqImage (x1, x2)
  = withQImageResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QImage5 cobj_x1 (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QImage5" qtc_QImage5 :: Ptr (TQSize t1) -> CLong -> IO (Ptr (TQImage ()))

instance QqImage ((Size, QImageFormat)) where
 qImage (x1, x2)
  = withQImageResult $
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QImage6 csize_x1_w csize_x1_h  (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QImage6" qtc_QImage6 :: CInt -> CInt -> CLong -> IO (Ptr (TQImage ()))

instance QqImage ((Int, Int, QImageFormat)) where
 qImage (x1, x2, x3)
  = withQImageResult $
    qtc_QImage8 (toCInt x1) (toCInt x2) (toCLong $ qEnum_toInt x3)

foreign import ccall "qtc_QImage8" qtc_QImage8 :: CInt -> CInt -> CLong -> IO (Ptr (TQImage ()))

class QqqImage_nf x1 where
  qqImage_nf :: x1 -> IO (QImage ())

class QqImage_nf x1 where
  qImage_nf :: x1 -> IO (QImage ())

instance QqImage_nf (()) where
 qImage_nf ()
  = withObjectRefResult $
    qtc_QImage

instance QqImage_nf ((String)) where
 qImage_nf (x1)
  = withObjectRefResult $
    withCWString x1 $ \cstr_x1 ->
    qtc_QImage2 cstr_x1

instance QqImage_nf ((QImage t1)) where
 qImage_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QImage3 cobj_x1

instance QqImage_nf ((String, String)) where
 qImage_nf (x1, x2)
  = withObjectRefResult $
    withCWString x1 $ \cstr_x1 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QImage4 cstr_x1 cstr_x2

instance QqqImage_nf ((QSize t1, QImageFormat)) where
 qqImage_nf (x1, x2)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QImage5 cobj_x1 (toCLong $ qEnum_toInt x2)

instance QqImage_nf ((Size, QImageFormat)) where
 qImage_nf (x1, x2)
  = withObjectRefResult $
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QImage6 csize_x1_w csize_x1_h  (toCLong $ qEnum_toInt x2)

instance QqImage_nf ((Int, Int, QImageFormat)) where
 qImage_nf (x1, x2, x3)
  = withObjectRefResult $
    qtc_QImage8 (toCInt x1) (toCInt x2) (toCLong $ qEnum_toInt x3)

allGray :: QImage a -> (()) -> IO (Bool)
allGray x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QImage_allGray cobj_x0

foreign import ccall "qtc_QImage_allGray" qtc_QImage_allGray :: Ptr (TQImage a) -> IO CBool

instance QalphaChannel (QImage ()) (()) (IO (QImage ())) where
 alphaChannel x0 ()
  = withQImageResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QImage_alphaChannel cobj_x0

foreign import ccall "qtc_QImage_alphaChannel" qtc_QImage_alphaChannel :: Ptr (TQImage a) -> IO (Ptr (TQImage ()))

instance QalphaChannel (QImageSc a) (()) (IO (QImage ())) where
 alphaChannel x0 ()
  = withQImageResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QImage_alphaChannel cobj_x0

instance QalphaChannel_nf (QImage ()) (()) (IO (QImage ())) where
 alphaChannel_nf x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QImage_alphaChannel cobj_x0

instance QalphaChannel_nf (QImageSc a) (()) (IO (QImage ())) where
 alphaChannel_nf x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QImage_alphaChannel cobj_x0

bytesPerLine :: QImage a -> (()) -> IO (Int)
bytesPerLine x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QImage_bytesPerLine cobj_x0

foreign import ccall "qtc_QImage_bytesPerLine" qtc_QImage_bytesPerLine :: Ptr (TQImage a) -> IO CInt

instance QcacheKey (QImage a) (()) where
 cacheKey x0 ()
  = withLongLongResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QImage_cacheKey cobj_x0

foreign import ccall "qtc_QImage_cacheKey" qtc_QImage_cacheKey :: Ptr (TQImage a) -> IO CLLong

instance Qcolor (QImage a) ((Int)) (IO (Int)) where
 color x0 (x1)
  = withUnsignedIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QImage_color cobj_x0 (toCInt x1)

foreign import ccall "qtc_QImage_color" qtc_QImage_color :: Ptr (TQImage a) -> CInt -> IO CUInt

class QconvertToFormat x0 x1 where
 convertToFormat :: x0 -> x1 -> IO (QImage ())

class QconvertToFormat_nf x0 x1 where
 convertToFormat_nf :: x0 -> x1 -> IO (QImage ())

instance QconvertToFormat (QImage ()) ((QImageFormat)) where
 convertToFormat x0 (x1)
  = withQImageResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QImage_convertToFormat cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QImage_convertToFormat" qtc_QImage_convertToFormat :: Ptr (TQImage a) -> CLong -> IO (Ptr (TQImage ()))

instance QconvertToFormat (QImageSc a) ((QImageFormat)) where
 convertToFormat x0 (x1)
  = withQImageResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QImage_convertToFormat cobj_x0 (toCLong $ qEnum_toInt x1)

instance QconvertToFormat_nf (QImage ()) ((QImageFormat)) where
 convertToFormat_nf x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QImage_convertToFormat cobj_x0 (toCLong $ qEnum_toInt x1)

instance QconvertToFormat_nf (QImageSc a) ((QImageFormat)) where
 convertToFormat_nf x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QImage_convertToFormat cobj_x0 (toCLong $ qEnum_toInt x1)

instance QconvertToFormat (QImage ()) ((QImageFormat, ImageConversionFlags)) where
 convertToFormat x0 (x1, x2)
  = withQImageResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QImage_convertToFormat1 cobj_x0 (toCLong $ qEnum_toInt x1) (toCLong $ qFlags_toInt x2)

foreign import ccall "qtc_QImage_convertToFormat1" qtc_QImage_convertToFormat1 :: Ptr (TQImage a) -> CLong -> CLong -> IO (Ptr (TQImage ()))

instance QconvertToFormat (QImageSc a) ((QImageFormat, ImageConversionFlags)) where
 convertToFormat x0 (x1, x2)
  = withQImageResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QImage_convertToFormat1 cobj_x0 (toCLong $ qEnum_toInt x1) (toCLong $ qFlags_toInt x2)

instance QconvertToFormat_nf (QImage ()) ((QImageFormat, ImageConversionFlags)) where
 convertToFormat_nf x0 (x1, x2)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QImage_convertToFormat1 cobj_x0 (toCLong $ qEnum_toInt x1) (toCLong $ qFlags_toInt x2)

instance QconvertToFormat_nf (QImageSc a) ((QImageFormat, ImageConversionFlags)) where
 convertToFormat_nf x0 (x1, x2)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QImage_convertToFormat1 cobj_x0 (toCLong $ qEnum_toInt x1) (toCLong $ qFlags_toInt x2)

instance Qcopy (QImage ()) (()) (IO (QImage ())) where
 copy x0 ()
  = withQImageResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QImage_copy cobj_x0

foreign import ccall "qtc_QImage_copy" qtc_QImage_copy :: Ptr (TQImage a) -> IO (Ptr (TQImage ()))

instance Qcopy (QImageSc a) (()) (IO (QImage ())) where
 copy x0 ()
  = withQImageResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QImage_copy cobj_x0

instance Qcopy_nf (QImage ()) (()) (IO (QImage ())) where
 copy_nf x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QImage_copy cobj_x0

instance Qcopy_nf (QImageSc a) (()) (IO (QImage ())) where
 copy_nf x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QImage_copy cobj_x0

instance Qcopy (QImage ()) ((Int, Int, Int, Int)) (IO (QImage ())) where
 copy x0 (x1, x2, x3, x4)
  = withQImageResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QImage_copy2 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QImage_copy2" qtc_QImage_copy2 :: Ptr (TQImage a) -> CInt -> CInt -> CInt -> CInt -> IO (Ptr (TQImage ()))

instance Qcopy (QImageSc a) ((Int, Int, Int, Int)) (IO (QImage ())) where
 copy x0 (x1, x2, x3, x4)
  = withQImageResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QImage_copy2 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

instance Qcopy_nf (QImage ()) ((Int, Int, Int, Int)) (IO (QImage ())) where
 copy_nf x0 (x1, x2, x3, x4)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QImage_copy2 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

instance Qcopy_nf (QImageSc a) ((Int, Int, Int, Int)) (IO (QImage ())) where
 copy_nf x0 (x1, x2, x3, x4)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QImage_copy2 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

instance Qqcopy (QImage ()) ((QRect t1)) (IO (QImage ())) where
 qcopy x0 (x1)
  = withQImageResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QImage_copy1 cobj_x0 cobj_x1

foreign import ccall "qtc_QImage_copy1" qtc_QImage_copy1 :: Ptr (TQImage a) -> Ptr (TQRect t1) -> IO (Ptr (TQImage ()))

instance Qqcopy (QImageSc a) ((QRect t1)) (IO (QImage ())) where
 qcopy x0 (x1)
  = withQImageResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QImage_copy1 cobj_x0 cobj_x1

instance Qqcopy_nf (QImage ()) ((QRect t1)) (IO (QImage ())) where
 qcopy_nf x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QImage_copy1 cobj_x0 cobj_x1

instance Qqcopy_nf (QImageSc a) ((QRect t1)) (IO (QImage ())) where
 qcopy_nf x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QImage_copy1 cobj_x0 cobj_x1

instance Qcopy (QImage ()) ((Rect)) (IO (QImage ())) where
 copy x0 (x1)
  = withQImageResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QImage_copy1_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

foreign import ccall "qtc_QImage_copy1_qth" qtc_QImage_copy1_qth :: Ptr (TQImage a) -> CInt -> CInt -> CInt -> CInt -> IO (Ptr (TQImage ()))

instance Qcopy (QImageSc a) ((Rect)) (IO (QImage ())) where
 copy x0 (x1)
  = withQImageResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QImage_copy1_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

instance Qcopy_nf (QImage ()) ((Rect)) (IO (QImage ())) where
 copy_nf x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QImage_copy1_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

instance Qcopy_nf (QImageSc a) ((Rect)) (IO (QImage ())) where
 copy_nf x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QImage_copy1_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

class QcreateAlphaMask x0 x1 where
 createAlphaMask :: x0 -> x1 -> IO (QImage ())

class QcreateAlphaMask_nf x0 x1 where
 createAlphaMask_nf :: x0 -> x1 -> IO (QImage ())

instance QcreateAlphaMask (QImage ()) (()) where
 createAlphaMask x0 ()
  = withQImageResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QImage_createAlphaMask cobj_x0

foreign import ccall "qtc_QImage_createAlphaMask" qtc_QImage_createAlphaMask :: Ptr (TQImage a) -> IO (Ptr (TQImage ()))

instance QcreateAlphaMask (QImageSc a) (()) where
 createAlphaMask x0 ()
  = withQImageResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QImage_createAlphaMask cobj_x0

instance QcreateAlphaMask_nf (QImage ()) (()) where
 createAlphaMask_nf x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QImage_createAlphaMask cobj_x0

instance QcreateAlphaMask_nf (QImageSc a) (()) where
 createAlphaMask_nf x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QImage_createAlphaMask cobj_x0

instance QcreateAlphaMask (QImage ()) ((ImageConversionFlags)) where
 createAlphaMask x0 (x1)
  = withQImageResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QImage_createAlphaMask1 cobj_x0 (toCLong $ qFlags_toInt x1)

foreign import ccall "qtc_QImage_createAlphaMask1" qtc_QImage_createAlphaMask1 :: Ptr (TQImage a) -> CLong -> IO (Ptr (TQImage ()))

instance QcreateAlphaMask (QImageSc a) ((ImageConversionFlags)) where
 createAlphaMask x0 (x1)
  = withQImageResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QImage_createAlphaMask1 cobj_x0 (toCLong $ qFlags_toInt x1)

instance QcreateAlphaMask_nf (QImage ()) ((ImageConversionFlags)) where
 createAlphaMask_nf x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QImage_createAlphaMask1 cobj_x0 (toCLong $ qFlags_toInt x1)

instance QcreateAlphaMask_nf (QImageSc a) ((ImageConversionFlags)) where
 createAlphaMask_nf x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QImage_createAlphaMask1 cobj_x0 (toCLong $ qFlags_toInt x1)

instance QcreateHeuristicMask (QImage ()) (()) (IO (QImage ())) where
 createHeuristicMask x0 ()
  = withQImageResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QImage_createHeuristicMask cobj_x0

foreign import ccall "qtc_QImage_createHeuristicMask" qtc_QImage_createHeuristicMask :: Ptr (TQImage a) -> IO (Ptr (TQImage ()))

instance QcreateHeuristicMask (QImageSc a) (()) (IO (QImage ())) where
 createHeuristicMask x0 ()
  = withQImageResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QImage_createHeuristicMask cobj_x0

instance QcreateHeuristicMask_nf (QImage ()) (()) (IO (QImage ())) where
 createHeuristicMask_nf x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QImage_createHeuristicMask cobj_x0

instance QcreateHeuristicMask_nf (QImageSc a) (()) (IO (QImage ())) where
 createHeuristicMask_nf x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QImage_createHeuristicMask cobj_x0

instance QcreateHeuristicMask (QImage ()) ((Bool)) (IO (QImage ())) where
 createHeuristicMask x0 (x1)
  = withQImageResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QImage_createHeuristicMask1 cobj_x0 (toCBool x1)

foreign import ccall "qtc_QImage_createHeuristicMask1" qtc_QImage_createHeuristicMask1 :: Ptr (TQImage a) -> CBool -> IO (Ptr (TQImage ()))

instance QcreateHeuristicMask (QImageSc a) ((Bool)) (IO (QImage ())) where
 createHeuristicMask x0 (x1)
  = withQImageResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QImage_createHeuristicMask1 cobj_x0 (toCBool x1)

instance QcreateHeuristicMask_nf (QImage ()) ((Bool)) (IO (QImage ())) where
 createHeuristicMask_nf x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QImage_createHeuristicMask1 cobj_x0 (toCBool x1)

instance QcreateHeuristicMask_nf (QImageSc a) ((Bool)) (IO (QImage ())) where
 createHeuristicMask_nf x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QImage_createHeuristicMask1 cobj_x0 (toCBool x1)

instance QcreateMaskFromColor (QImage ()) ((Int)) (IO (QImage ())) where
 createMaskFromColor x0 (x1)
  = withQImageResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QImage_createMaskFromColor cobj_x0 (toCUInt x1)

foreign import ccall "qtc_QImage_createMaskFromColor" qtc_QImage_createMaskFromColor :: Ptr (TQImage a) -> CUInt -> IO (Ptr (TQImage ()))

instance QcreateMaskFromColor (QImageSc a) ((Int)) (IO (QImage ())) where
 createMaskFromColor x0 (x1)
  = withQImageResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QImage_createMaskFromColor cobj_x0 (toCUInt x1)

instance QcreateMaskFromColor_nf (QImage ()) ((Int)) (IO (QImage ())) where
 createMaskFromColor_nf x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QImage_createMaskFromColor cobj_x0 (toCUInt x1)

instance QcreateMaskFromColor_nf (QImageSc a) ((Int)) (IO (QImage ())) where
 createMaskFromColor_nf x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QImage_createMaskFromColor cobj_x0 (toCUInt x1)

instance QcreateMaskFromColor (QImage ()) ((Int, MaskMode)) (IO (QImage ())) where
 createMaskFromColor x0 (x1, x2)
  = withQImageResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QImage_createMaskFromColor1 cobj_x0 (toCUInt x1) (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QImage_createMaskFromColor1" qtc_QImage_createMaskFromColor1 :: Ptr (TQImage a) -> CUInt -> CLong -> IO (Ptr (TQImage ()))

instance QcreateMaskFromColor (QImageSc a) ((Int, MaskMode)) (IO (QImage ())) where
 createMaskFromColor x0 (x1, x2)
  = withQImageResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QImage_createMaskFromColor1 cobj_x0 (toCUInt x1) (toCLong $ qEnum_toInt x2)

instance QcreateMaskFromColor_nf (QImage ()) ((Int, MaskMode)) (IO (QImage ())) where
 createMaskFromColor_nf x0 (x1, x2)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QImage_createMaskFromColor1 cobj_x0 (toCUInt x1) (toCLong $ qEnum_toInt x2)

instance QcreateMaskFromColor_nf (QImageSc a) ((Int, MaskMode)) (IO (QImage ())) where
 createMaskFromColor_nf x0 (x1, x2)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QImage_createMaskFromColor1 cobj_x0 (toCUInt x1) (toCLong $ qEnum_toInt x2)

instance Qdepth (QImage a) (()) (IO (Int)) where
 depth x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QImage_depth cobj_x0

foreign import ccall "qtc_QImage_depth" qtc_QImage_depth :: Ptr (TQImage a) -> IO CInt

instance Qdetach (QImage a) (()) where
 detach x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QImage_detach cobj_x0

foreign import ccall "qtc_QImage_detach" qtc_QImage_detach :: Ptr (TQImage a) -> IO ()

instance QdevType (QImage ()) (()) where
 devType x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QImage_devType_h cobj_x0

foreign import ccall "qtc_QImage_devType_h" qtc_QImage_devType_h :: Ptr (TQImage a) -> IO CInt

instance QdevType (QImageSc a) (()) where
 devType x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QImage_devType_h cobj_x0

dotsPerMeterX :: QImage a -> (()) -> IO (Int)
dotsPerMeterX x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QImage_dotsPerMeterX cobj_x0

foreign import ccall "qtc_QImage_dotsPerMeterX" qtc_QImage_dotsPerMeterX :: Ptr (TQImage a) -> IO CInt

dotsPerMeterY :: QImage a -> (()) -> IO (Int)
dotsPerMeterY x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QImage_dotsPerMeterY cobj_x0

foreign import ccall "qtc_QImage_dotsPerMeterY" qtc_QImage_dotsPerMeterY :: Ptr (TQImage a) -> IO CInt

instance Qfill (QImage a) ((Int)) where
 fill x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QImage_fill cobj_x0 (toCUInt x1)

foreign import ccall "qtc_QImage_fill" qtc_QImage_fill :: Ptr (TQImage a) -> CUInt -> IO ()

instance Qformat (QImage a) (()) (IO (QImageFormat)) where
 format x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QImage_format cobj_x0

foreign import ccall "qtc_QImage_format" qtc_QImage_format :: Ptr (TQImage a) -> IO CLong

class QqImageFromData x1 where
 qImageFromData :: x1 -> IO (QImage ())

class QqImageFromData_nf x1 where
 qImageFromData_nf :: x1 -> IO (QImage ())

instance QqImageFromData ((String)) where
 qImageFromData (x1)
  = withQImageResult $
    withCWString x1 $ \cstr_x1 ->
    qtc_QImage_fromData cstr_x1

foreign import ccall "qtc_QImage_fromData" qtc_QImage_fromData :: CWString -> IO (Ptr (TQImage ()))

instance QqImageFromData_nf ((String)) where
 qImageFromData_nf (x1)
  = withObjectRefResult $
    withCWString x1 $ \cstr_x1 ->
    qtc_QImage_fromData cstr_x1

instance QqImageFromData ((String, String)) where
 qImageFromData (x1, x2)
  = withQImageResult $
    withCWString x1 $ \cstr_x1 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QImage_fromData1 cstr_x1 cstr_x2

foreign import ccall "qtc_QImage_fromData1" qtc_QImage_fromData1 :: CWString -> CWString -> IO (Ptr (TQImage ()))

instance QqImageFromData_nf ((String, String)) where
 qImageFromData_nf (x1, x2)
  = withObjectRefResult $
    withCWString x1 $ \cstr_x1 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QImage_fromData1 cstr_x1 cstr_x2

instance QhasAlphaChannel (QImage a) (()) where
 hasAlphaChannel x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QImage_hasAlphaChannel cobj_x0

foreign import ccall "qtc_QImage_hasAlphaChannel" qtc_QImage_hasAlphaChannel :: Ptr (TQImage a) -> IO CBool

instance Qqheight (QImage a) (()) (IO (Int)) where
 qheight x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QImage_height cobj_x0

foreign import ccall "qtc_QImage_height" qtc_QImage_height :: Ptr (TQImage a) -> IO CInt

class QinvertPixels x1 where
 invertPixels :: QImage a -> x1 -> IO ()

instance QinvertPixels (()) where
 invertPixels x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QImage_invertPixels cobj_x0

foreign import ccall "qtc_QImage_invertPixels" qtc_QImage_invertPixels :: Ptr (TQImage a) -> IO ()

instance QinvertPixels ((InvertMode)) where
 invertPixels x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QImage_invertPixels1 cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QImage_invertPixels1" qtc_QImage_invertPixels1 :: Ptr (TQImage a) -> CLong -> IO ()

instance QisDetached (QImage a) (()) where
 isDetached x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QImage_isDetached cobj_x0

foreign import ccall "qtc_QImage_isDetached" qtc_QImage_isDetached :: Ptr (TQImage a) -> IO CBool

isGrayscale :: QImage a -> (()) -> IO (Bool)
isGrayscale x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QImage_isGrayscale cobj_x0

foreign import ccall "qtc_QImage_isGrayscale" qtc_QImage_isGrayscale :: Ptr (TQImage a) -> IO CBool

instance QqisNull (QImage a) (()) where
 qisNull x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QImage_isNull cobj_x0

foreign import ccall "qtc_QImage_isNull" qtc_QImage_isNull :: Ptr (TQImage a) -> IO CBool

instance Qload (QImage a) ((QIODevice t1, String)) (IO (Bool)) where
 load x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QImage_load2 cobj_x0 cobj_x1 cstr_x2

foreign import ccall "qtc_QImage_load2" qtc_QImage_load2 :: Ptr (TQImage a) -> Ptr (TQIODevice t1) -> CWString -> IO CBool

instance Qload (QImage a) ((String)) (IO (Bool)) where
 load x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QImage_load cobj_x0 cstr_x1

foreign import ccall "qtc_QImage_load" qtc_QImage_load :: Ptr (TQImage a) -> CWString -> IO CBool

instance Qload (QImage a) ((String, String)) (IO (Bool)) where
 load x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QImage_load1 cobj_x0 cstr_x1 cstr_x2

foreign import ccall "qtc_QImage_load1" qtc_QImage_load1 :: Ptr (TQImage a) -> CWString -> CWString -> IO CBool

instance QloadFromData (QImage a) ((String)) where
 loadFromData x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QImage_loadFromData cobj_x0 cstr_x1

foreign import ccall "qtc_QImage_loadFromData" qtc_QImage_loadFromData :: Ptr (TQImage a) -> CWString -> IO CBool

instance QloadFromData (QImage a) ((String, String)) where
 loadFromData x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QImage_loadFromData1 cobj_x0 cstr_x1 cstr_x2

foreign import ccall "qtc_QImage_loadFromData1" qtc_QImage_loadFromData1 :: Ptr (TQImage a) -> CWString -> CWString -> IO CBool

instance Qmetric (QImage ()) ((PaintDeviceMetric)) where
 metric x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QImage_metric cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QImage_metric" qtc_QImage_metric :: Ptr (TQImage a) -> CLong -> IO CInt

instance Qmetric (QImageSc a) ((PaintDeviceMetric)) where
 metric x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QImage_metric cobj_x0 (toCLong $ qEnum_toInt x1)

class Qmirrored x0 x1 where
 mirrored :: x0 -> x1 -> IO (QImage ())

class Qmirrored_nf x0 x1 where
 mirrored_nf :: x0 -> x1 -> IO (QImage ())

instance Qmirrored (QImage ()) (()) where
 mirrored x0 ()
  = withQImageResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QImage_mirrored cobj_x0

foreign import ccall "qtc_QImage_mirrored" qtc_QImage_mirrored :: Ptr (TQImage a) -> IO (Ptr (TQImage ()))

instance Qmirrored (QImageSc a) (()) where
 mirrored x0 ()
  = withQImageResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QImage_mirrored cobj_x0

instance Qmirrored_nf (QImage ()) (()) where
 mirrored_nf x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QImage_mirrored cobj_x0

instance Qmirrored_nf (QImageSc a) (()) where
 mirrored_nf x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QImage_mirrored cobj_x0

instance Qmirrored (QImage ()) ((Bool)) where
 mirrored x0 (x1)
  = withQImageResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QImage_mirrored1 cobj_x0 (toCBool x1)

foreign import ccall "qtc_QImage_mirrored1" qtc_QImage_mirrored1 :: Ptr (TQImage a) -> CBool -> IO (Ptr (TQImage ()))

instance Qmirrored (QImageSc a) ((Bool)) where
 mirrored x0 (x1)
  = withQImageResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QImage_mirrored1 cobj_x0 (toCBool x1)

instance Qmirrored_nf (QImage ()) ((Bool)) where
 mirrored_nf x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QImage_mirrored1 cobj_x0 (toCBool x1)

instance Qmirrored_nf (QImageSc a) ((Bool)) where
 mirrored_nf x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QImage_mirrored1 cobj_x0 (toCBool x1)

instance Qmirrored (QImage ()) ((Bool, Bool)) where
 mirrored x0 (x1, x2)
  = withQImageResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QImage_mirrored2 cobj_x0 (toCBool x1) (toCBool x2)

foreign import ccall "qtc_QImage_mirrored2" qtc_QImage_mirrored2 :: Ptr (TQImage a) -> CBool -> CBool -> IO (Ptr (TQImage ()))

instance Qmirrored (QImageSc a) ((Bool, Bool)) where
 mirrored x0 (x1, x2)
  = withQImageResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QImage_mirrored2 cobj_x0 (toCBool x1) (toCBool x2)

instance Qmirrored_nf (QImage ()) ((Bool, Bool)) where
 mirrored_nf x0 (x1, x2)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QImage_mirrored2 cobj_x0 (toCBool x1) (toCBool x2)

instance Qmirrored_nf (QImageSc a) ((Bool, Bool)) where
 mirrored_nf x0 (x1, x2)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QImage_mirrored2 cobj_x0 (toCBool x1) (toCBool x2)

numBytes :: QImage a -> (()) -> IO (Int)
numBytes x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QImage_numBytes cobj_x0

foreign import ccall "qtc_QImage_numBytes" qtc_QImage_numBytes :: Ptr (TQImage a) -> IO CInt

numColors :: QImage a -> (()) -> IO (Int)
numColors x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QImage_numColors cobj_x0

foreign import ccall "qtc_QImage_numColors" qtc_QImage_numColors :: Ptr (TQImage a) -> IO CInt

instance Qoffset (QImage a) (()) (IO (Point)) where
 offset x0 ()
  = withPointResult $ \cpoint_ret_x cpoint_ret_y ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QImage_offset_qth cobj_x0 cpoint_ret_x cpoint_ret_y

foreign import ccall "qtc_QImage_offset_qth" qtc_QImage_offset_qth :: Ptr (TQImage a) -> Ptr CInt -> Ptr CInt -> IO ()

instance Qqoffset (QImage a) (()) (IO (QPoint ())) where
 qoffset x0 ()
  = withQPointResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QImage_offset cobj_x0

foreign import ccall "qtc_QImage_offset" qtc_QImage_offset :: Ptr (TQImage a) -> IO (Ptr (TQPoint ()))

instance QpaintEngine (QImage ()) (()) where
 paintEngine x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QImage_paintEngine_h cobj_x0

foreign import ccall "qtc_QImage_paintEngine_h" qtc_QImage_paintEngine_h :: Ptr (TQImage a) -> IO (Ptr (TQPaintEngine ()))

instance QpaintEngine (QImageSc a) (()) where
 paintEngine x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QImage_paintEngine_h cobj_x0

instance Qpixel (QImage a) ((Int, Int)) where
 pixel x0 (x1, x2)
  = withUnsignedIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QImage_pixel1 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QImage_pixel1" qtc_QImage_pixel1 :: Ptr (TQImage a) -> CInt -> CInt -> IO CUInt

instance Qpixel (QImage a) ((Point)) where
 pixel x0 (x1)
  = withUnsignedIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QImage_pixel_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

foreign import ccall "qtc_QImage_pixel_qth" qtc_QImage_pixel_qth :: Ptr (TQImage a) -> CInt -> CInt -> IO CUInt

qpixel :: QImage a -> ((QPoint t1)) -> IO (Int)
qpixel x0 (x1)
  = withUnsignedIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QImage_pixel cobj_x0 cobj_x1

foreign import ccall "qtc_QImage_pixel" qtc_QImage_pixel :: Ptr (TQImage a) -> Ptr (TQPoint t1) -> IO CUInt

class QpixelIndex x1 where
 pixelIndex :: QImage a -> x1 -> IO (Int)

instance QpixelIndex ((Int, Int)) where
 pixelIndex x0 (x1, x2)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QImage_pixelIndex1 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QImage_pixelIndex1" qtc_QImage_pixelIndex1 :: Ptr (TQImage a) -> CInt -> CInt -> IO CInt

instance QpixelIndex ((Point)) where
 pixelIndex x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QImage_pixelIndex_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

foreign import ccall "qtc_QImage_pixelIndex_qth" qtc_QImage_pixelIndex_qth :: Ptr (TQImage a) -> CInt -> CInt -> IO CInt

qpixelIndex :: QImage a -> ((QPoint t1)) -> IO (Int)
qpixelIndex x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QImage_pixelIndex cobj_x0 cobj_x1

foreign import ccall "qtc_QImage_pixelIndex" qtc_QImage_pixelIndex :: Ptr (TQImage a) -> Ptr (TQPoint t1) -> IO CInt

instance Qqqrect (QImage a) (()) (IO (QRect ())) where
 qqrect x0 ()
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QImage_rect cobj_x0

foreign import ccall "qtc_QImage_rect" qtc_QImage_rect :: Ptr (TQImage a) -> IO (Ptr (TQRect ()))

instance Qqrect (QImage a) (()) (IO (Rect)) where
 qrect x0 ()
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QImage_rect_qth cobj_x0 crect_ret_x crect_ret_y crect_ret_w crect_ret_h

foreign import ccall "qtc_QImage_rect_qth" qtc_QImage_rect_qth :: Ptr (TQImage a) -> Ptr CInt -> Ptr CInt -> Ptr CInt -> Ptr CInt -> IO ()

class QrgbSwapped x0 x1 where
 rgbSwapped :: x0 -> x1 -> IO (QImage ())

class QrgbSwapped_nf x0 x1 where
 rgbSwapped_nf :: x0 -> x1 -> IO (QImage ())

instance QrgbSwapped (QImage ()) (()) where
 rgbSwapped x0 ()
  = withQImageResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QImage_rgbSwapped cobj_x0

foreign import ccall "qtc_QImage_rgbSwapped" qtc_QImage_rgbSwapped :: Ptr (TQImage a) -> IO (Ptr (TQImage ()))

instance QrgbSwapped (QImageSc a) (()) where
 rgbSwapped x0 ()
  = withQImageResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QImage_rgbSwapped cobj_x0

instance QrgbSwapped_nf (QImage ()) (()) where
 rgbSwapped_nf x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QImage_rgbSwapped cobj_x0

instance QrgbSwapped_nf (QImageSc a) (()) where
 rgbSwapped_nf x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QImage_rgbSwapped cobj_x0

instance Qsave (QImage a) ((QIODevice t1)) (IO (Bool)) where
 save x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QImage_save1 cobj_x0 cobj_x1

foreign import ccall "qtc_QImage_save1" qtc_QImage_save1 :: Ptr (TQImage a) -> Ptr (TQIODevice t1) -> IO CBool

instance Qsave (QImage a) ((QIODevice t1, String)) (IO (Bool)) where
 save x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QImage_save3 cobj_x0 cobj_x1 cstr_x2

foreign import ccall "qtc_QImage_save3" qtc_QImage_save3 :: Ptr (TQImage a) -> Ptr (TQIODevice t1) -> CWString -> IO CBool

instance Qsave (QImage a) ((QIODevice t1, String, Int)) (IO (Bool)) where
 save x0 (x1, x2, x3)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QImage_save4 cobj_x0 cobj_x1 cstr_x2 (toCInt x3)

foreign import ccall "qtc_QImage_save4" qtc_QImage_save4 :: Ptr (TQImage a) -> Ptr (TQIODevice t1) -> CWString -> CInt -> IO CBool

instance Qsave (QImage a) ((String)) (IO (Bool)) where
 save x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QImage_save cobj_x0 cstr_x1

foreign import ccall "qtc_QImage_save" qtc_QImage_save :: Ptr (TQImage a) -> CWString -> IO CBool

instance Qsave (QImage a) ((String, String)) (IO (Bool)) where
 save x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QImage_save2 cobj_x0 cstr_x1 cstr_x2

foreign import ccall "qtc_QImage_save2" qtc_QImage_save2 :: Ptr (TQImage a) -> CWString -> CWString -> IO CBool

instance Qsave (QImage a) ((String, String, Int)) (IO (Bool)) where
 save x0 (x1, x2, x3)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QImage_save5 cobj_x0 cstr_x1 cstr_x2 (toCInt x3)

foreign import ccall "qtc_QImage_save5" qtc_QImage_save5 :: Ptr (TQImage a) -> CWString -> CWString -> CInt -> IO CBool

instance Qscaled (QImage ()) ((Int, Int)) (IO (QImage ())) where
 scaled x0 (x1, x2)
  = withQImageResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QImage_scaled2 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QImage_scaled2" qtc_QImage_scaled2 :: Ptr (TQImage a) -> CInt -> CInt -> IO (Ptr (TQImage ()))

instance Qscaled (QImageSc a) ((Int, Int)) (IO (QImage ())) where
 scaled x0 (x1, x2)
  = withQImageResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QImage_scaled2 cobj_x0 (toCInt x1) (toCInt x2)

instance Qscaled_nf (QImage ()) ((Int, Int)) (IO (QImage ())) where
 scaled_nf x0 (x1, x2)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QImage_scaled2 cobj_x0 (toCInt x1) (toCInt x2)

instance Qscaled_nf (QImageSc a) ((Int, Int)) (IO (QImage ())) where
 scaled_nf x0 (x1, x2)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QImage_scaled2 cobj_x0 (toCInt x1) (toCInt x2)

instance Qscaled (QImage ()) ((Int, Int, AspectRatioMode)) (IO (QImage ())) where
 scaled x0 (x1, x2, x3)
  = withQImageResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QImage_scaled4 cobj_x0 (toCInt x1) (toCInt x2) (toCLong $ qEnum_toInt x3)

foreign import ccall "qtc_QImage_scaled4" qtc_QImage_scaled4 :: Ptr (TQImage a) -> CInt -> CInt -> CLong -> IO (Ptr (TQImage ()))

instance Qscaled (QImageSc a) ((Int, Int, AspectRatioMode)) (IO (QImage ())) where
 scaled x0 (x1, x2, x3)
  = withQImageResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QImage_scaled4 cobj_x0 (toCInt x1) (toCInt x2) (toCLong $ qEnum_toInt x3)

instance Qscaled_nf (QImage ()) ((Int, Int, AspectRatioMode)) (IO (QImage ())) where
 scaled_nf x0 (x1, x2, x3)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QImage_scaled4 cobj_x0 (toCInt x1) (toCInt x2) (toCLong $ qEnum_toInt x3)

instance Qscaled_nf (QImageSc a) ((Int, Int, AspectRatioMode)) (IO (QImage ())) where
 scaled_nf x0 (x1, x2, x3)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QImage_scaled4 cobj_x0 (toCInt x1) (toCInt x2) (toCLong $ qEnum_toInt x3)

instance Qscaled (QImage ()) ((Int, Int, AspectRatioMode, TransformationMode)) (IO (QImage ())) where
 scaled x0 (x1, x2, x3, x4)
  = withQImageResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QImage_scaled5 cobj_x0 (toCInt x1) (toCInt x2) (toCLong $ qEnum_toInt x3) (toCLong $ qEnum_toInt x4)

foreign import ccall "qtc_QImage_scaled5" qtc_QImage_scaled5 :: Ptr (TQImage a) -> CInt -> CInt -> CLong -> CLong -> IO (Ptr (TQImage ()))

instance Qscaled (QImageSc a) ((Int, Int, AspectRatioMode, TransformationMode)) (IO (QImage ())) where
 scaled x0 (x1, x2, x3, x4)
  = withQImageResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QImage_scaled5 cobj_x0 (toCInt x1) (toCInt x2) (toCLong $ qEnum_toInt x3) (toCLong $ qEnum_toInt x4)

instance Qscaled_nf (QImage ()) ((Int, Int, AspectRatioMode, TransformationMode)) (IO (QImage ())) where
 scaled_nf x0 (x1, x2, x3, x4)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QImage_scaled5 cobj_x0 (toCInt x1) (toCInt x2) (toCLong $ qEnum_toInt x3) (toCLong $ qEnum_toInt x4)

instance Qscaled_nf (QImageSc a) ((Int, Int, AspectRatioMode, TransformationMode)) (IO (QImage ())) where
 scaled_nf x0 (x1, x2, x3, x4)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QImage_scaled5 cobj_x0 (toCInt x1) (toCInt x2) (toCLong $ qEnum_toInt x3) (toCLong $ qEnum_toInt x4)

instance Qqscaled (QImage ()) ((QSize t1)) (IO (QImage ())) where
 qscaled x0 (x1)
  = withQImageResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QImage_scaled cobj_x0 cobj_x1

foreign import ccall "qtc_QImage_scaled" qtc_QImage_scaled :: Ptr (TQImage a) -> Ptr (TQSize t1) -> IO (Ptr (TQImage ()))

instance Qqscaled (QImageSc a) ((QSize t1)) (IO (QImage ())) where
 qscaled x0 (x1)
  = withQImageResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QImage_scaled cobj_x0 cobj_x1

instance Qqscaled_nf (QImage ()) ((QSize t1)) (IO (QImage ())) where
 qscaled_nf x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QImage_scaled cobj_x0 cobj_x1

instance Qqscaled_nf (QImageSc a) ((QSize t1)) (IO (QImage ())) where
 qscaled_nf x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QImage_scaled cobj_x0 cobj_x1

instance Qqscaled (QImage ()) ((QSize t1, AspectRatioMode)) (IO (QImage ())) where
 qscaled x0 (x1, x2)
  = withQImageResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QImage_scaled1 cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QImage_scaled1" qtc_QImage_scaled1 :: Ptr (TQImage a) -> Ptr (TQSize t1) -> CLong -> IO (Ptr (TQImage ()))

instance Qqscaled (QImageSc a) ((QSize t1, AspectRatioMode)) (IO (QImage ())) where
 qscaled x0 (x1, x2)
  = withQImageResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QImage_scaled1 cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

instance Qqscaled_nf (QImage ()) ((QSize t1, AspectRatioMode)) (IO (QImage ())) where
 qscaled_nf x0 (x1, x2)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QImage_scaled1 cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

instance Qqscaled_nf (QImageSc a) ((QSize t1, AspectRatioMode)) (IO (QImage ())) where
 qscaled_nf x0 (x1, x2)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QImage_scaled1 cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

instance Qqscaled (QImage ()) ((QSize t1, AspectRatioMode, TransformationMode)) (IO (QImage ())) where
 qscaled x0 (x1, x2, x3)
  = withQImageResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QImage_scaled3 cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2) (toCLong $ qEnum_toInt x3)

foreign import ccall "qtc_QImage_scaled3" qtc_QImage_scaled3 :: Ptr (TQImage a) -> Ptr (TQSize t1) -> CLong -> CLong -> IO (Ptr (TQImage ()))

instance Qqscaled (QImageSc a) ((QSize t1, AspectRatioMode, TransformationMode)) (IO (QImage ())) where
 qscaled x0 (x1, x2, x3)
  = withQImageResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QImage_scaled3 cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2) (toCLong $ qEnum_toInt x3)

instance Qqscaled_nf (QImage ()) ((QSize t1, AspectRatioMode, TransformationMode)) (IO (QImage ())) where
 qscaled_nf x0 (x1, x2, x3)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QImage_scaled3 cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2) (toCLong $ qEnum_toInt x3)

instance Qqscaled_nf (QImageSc a) ((QSize t1, AspectRatioMode, TransformationMode)) (IO (QImage ())) where
 qscaled_nf x0 (x1, x2, x3)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QImage_scaled3 cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2) (toCLong $ qEnum_toInt x3)

instance Qscaled (QImage ()) ((Size)) (IO (QImage ())) where
 scaled x0 (x1)
  = withQImageResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QImage_scaled_qth cobj_x0 csize_x1_w csize_x1_h 

foreign import ccall "qtc_QImage_scaled_qth" qtc_QImage_scaled_qth :: Ptr (TQImage a) -> CInt -> CInt -> IO (Ptr (TQImage ()))

instance Qscaled (QImageSc a) ((Size)) (IO (QImage ())) where
 scaled x0 (x1)
  = withQImageResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QImage_scaled_qth cobj_x0 csize_x1_w csize_x1_h 

instance Qscaled_nf (QImage ()) ((Size)) (IO (QImage ())) where
 scaled_nf x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QImage_scaled_qth cobj_x0 csize_x1_w csize_x1_h 

instance Qscaled_nf (QImageSc a) ((Size)) (IO (QImage ())) where
 scaled_nf x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QImage_scaled_qth cobj_x0 csize_x1_w csize_x1_h 

instance Qscaled (QImage ()) ((Size, AspectRatioMode)) (IO (QImage ())) where
 scaled x0 (x1, x2)
  = withQImageResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QImage_scaled1_qth cobj_x0 csize_x1_w csize_x1_h  (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QImage_scaled1_qth" qtc_QImage_scaled1_qth :: Ptr (TQImage a) -> CInt -> CInt -> CLong -> IO (Ptr (TQImage ()))

instance Qscaled (QImageSc a) ((Size, AspectRatioMode)) (IO (QImage ())) where
 scaled x0 (x1, x2)
  = withQImageResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QImage_scaled1_qth cobj_x0 csize_x1_w csize_x1_h  (toCLong $ qEnum_toInt x2)

instance Qscaled_nf (QImage ()) ((Size, AspectRatioMode)) (IO (QImage ())) where
 scaled_nf x0 (x1, x2)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QImage_scaled1_qth cobj_x0 csize_x1_w csize_x1_h  (toCLong $ qEnum_toInt x2)

instance Qscaled_nf (QImageSc a) ((Size, AspectRatioMode)) (IO (QImage ())) where
 scaled_nf x0 (x1, x2)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QImage_scaled1_qth cobj_x0 csize_x1_w csize_x1_h  (toCLong $ qEnum_toInt x2)

instance Qscaled (QImage ()) ((Size, AspectRatioMode, TransformationMode)) (IO (QImage ())) where
 scaled x0 (x1, x2, x3)
  = withQImageResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QImage_scaled3_qth cobj_x0 csize_x1_w csize_x1_h  (toCLong $ qEnum_toInt x2) (toCLong $ qEnum_toInt x3)

foreign import ccall "qtc_QImage_scaled3_qth" qtc_QImage_scaled3_qth :: Ptr (TQImage a) -> CInt -> CInt -> CLong -> CLong -> IO (Ptr (TQImage ()))

instance Qscaled (QImageSc a) ((Size, AspectRatioMode, TransformationMode)) (IO (QImage ())) where
 scaled x0 (x1, x2, x3)
  = withQImageResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QImage_scaled3_qth cobj_x0 csize_x1_w csize_x1_h  (toCLong $ qEnum_toInt x2) (toCLong $ qEnum_toInt x3)

instance Qscaled_nf (QImage ()) ((Size, AspectRatioMode, TransformationMode)) (IO (QImage ())) where
 scaled_nf x0 (x1, x2, x3)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QImage_scaled3_qth cobj_x0 csize_x1_w csize_x1_h  (toCLong $ qEnum_toInt x2) (toCLong $ qEnum_toInt x3)

instance Qscaled_nf (QImageSc a) ((Size, AspectRatioMode, TransformationMode)) (IO (QImage ())) where
 scaled_nf x0 (x1, x2, x3)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QImage_scaled3_qth cobj_x0 csize_x1_w csize_x1_h  (toCLong $ qEnum_toInt x2) (toCLong $ qEnum_toInt x3)

instance QscaledToHeight (QImage ()) ((Int)) (IO (QImage ())) where
 scaledToHeight x0 (x1)
  = withQImageResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QImage_scaledToHeight cobj_x0 (toCInt x1)

foreign import ccall "qtc_QImage_scaledToHeight" qtc_QImage_scaledToHeight :: Ptr (TQImage a) -> CInt -> IO (Ptr (TQImage ()))

instance QscaledToHeight (QImageSc a) ((Int)) (IO (QImage ())) where
 scaledToHeight x0 (x1)
  = withQImageResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QImage_scaledToHeight cobj_x0 (toCInt x1)

instance QscaledToHeight_nf (QImage ()) ((Int)) (IO (QImage ())) where
 scaledToHeight_nf x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QImage_scaledToHeight cobj_x0 (toCInt x1)

instance QscaledToHeight_nf (QImageSc a) ((Int)) (IO (QImage ())) where
 scaledToHeight_nf x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QImage_scaledToHeight cobj_x0 (toCInt x1)

instance QscaledToHeight (QImage ()) ((Int, TransformationMode)) (IO (QImage ())) where
 scaledToHeight x0 (x1, x2)
  = withQImageResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QImage_scaledToHeight1 cobj_x0 (toCInt x1) (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QImage_scaledToHeight1" qtc_QImage_scaledToHeight1 :: Ptr (TQImage a) -> CInt -> CLong -> IO (Ptr (TQImage ()))

instance QscaledToHeight (QImageSc a) ((Int, TransformationMode)) (IO (QImage ())) where
 scaledToHeight x0 (x1, x2)
  = withQImageResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QImage_scaledToHeight1 cobj_x0 (toCInt x1) (toCLong $ qEnum_toInt x2)

instance QscaledToHeight_nf (QImage ()) ((Int, TransformationMode)) (IO (QImage ())) where
 scaledToHeight_nf x0 (x1, x2)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QImage_scaledToHeight1 cobj_x0 (toCInt x1) (toCLong $ qEnum_toInt x2)

instance QscaledToHeight_nf (QImageSc a) ((Int, TransformationMode)) (IO (QImage ())) where
 scaledToHeight_nf x0 (x1, x2)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QImage_scaledToHeight1 cobj_x0 (toCInt x1) (toCLong $ qEnum_toInt x2)

instance QscaledToWidth (QImage ()) ((Int)) (IO (QImage ())) where
 scaledToWidth x0 (x1)
  = withQImageResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QImage_scaledToWidth cobj_x0 (toCInt x1)

foreign import ccall "qtc_QImage_scaledToWidth" qtc_QImage_scaledToWidth :: Ptr (TQImage a) -> CInt -> IO (Ptr (TQImage ()))

instance QscaledToWidth (QImageSc a) ((Int)) (IO (QImage ())) where
 scaledToWidth x0 (x1)
  = withQImageResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QImage_scaledToWidth cobj_x0 (toCInt x1)

instance QscaledToWidth_nf (QImage ()) ((Int)) (IO (QImage ())) where
 scaledToWidth_nf x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QImage_scaledToWidth cobj_x0 (toCInt x1)

instance QscaledToWidth_nf (QImageSc a) ((Int)) (IO (QImage ())) where
 scaledToWidth_nf x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QImage_scaledToWidth cobj_x0 (toCInt x1)

instance QscaledToWidth (QImage ()) ((Int, TransformationMode)) (IO (QImage ())) where
 scaledToWidth x0 (x1, x2)
  = withQImageResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QImage_scaledToWidth1 cobj_x0 (toCInt x1) (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QImage_scaledToWidth1" qtc_QImage_scaledToWidth1 :: Ptr (TQImage a) -> CInt -> CLong -> IO (Ptr (TQImage ()))

instance QscaledToWidth (QImageSc a) ((Int, TransformationMode)) (IO (QImage ())) where
 scaledToWidth x0 (x1, x2)
  = withQImageResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QImage_scaledToWidth1 cobj_x0 (toCInt x1) (toCLong $ qEnum_toInt x2)

instance QscaledToWidth_nf (QImage ()) ((Int, TransformationMode)) (IO (QImage ())) where
 scaledToWidth_nf x0 (x1, x2)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QImage_scaledToWidth1 cobj_x0 (toCInt x1) (toCLong $ qEnum_toInt x2)

instance QscaledToWidth_nf (QImageSc a) ((Int, TransformationMode)) (IO (QImage ())) where
 scaledToWidth_nf x0 (x1, x2)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QImage_scaledToWidth1 cobj_x0 (toCInt x1) (toCLong $ qEnum_toInt x2)

instance QserialNumber (QImage a) (()) where
 serialNumber x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QImage_serialNumber cobj_x0

foreign import ccall "qtc_QImage_serialNumber" qtc_QImage_serialNumber :: Ptr (TQImage a) -> IO CInt

instance QsetAlphaChannel (QImage a) ((QImage t1)) where
 setAlphaChannel x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QImage_setAlphaChannel cobj_x0 cobj_x1

foreign import ccall "qtc_QImage_setAlphaChannel" qtc_QImage_setAlphaChannel :: Ptr (TQImage a) -> Ptr (TQImage t1) -> IO ()

instance QsetColor (QImage a) ((Int, Int)) where
 setColor x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QImage_setColor cobj_x0 (toCInt x1) (toCUInt x2)

foreign import ccall "qtc_QImage_setColor" qtc_QImage_setColor :: Ptr (TQImage a) -> CInt -> CUInt -> IO ()

setDotsPerMeterX :: QImage a -> ((Int)) -> IO ()
setDotsPerMeterX x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QImage_setDotsPerMeterX cobj_x0 (toCInt x1)

foreign import ccall "qtc_QImage_setDotsPerMeterX" qtc_QImage_setDotsPerMeterX :: Ptr (TQImage a) -> CInt -> IO ()

setDotsPerMeterY :: QImage a -> ((Int)) -> IO ()
setDotsPerMeterY x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QImage_setDotsPerMeterY cobj_x0 (toCInt x1)

foreign import ccall "qtc_QImage_setDotsPerMeterY" qtc_QImage_setDotsPerMeterY :: Ptr (TQImage a) -> CInt -> IO ()

setNumColors :: QImage a -> ((Int)) -> IO ()
setNumColors x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QImage_setNumColors cobj_x0 (toCInt x1)

foreign import ccall "qtc_QImage_setNumColors" qtc_QImage_setNumColors :: Ptr (TQImage a) -> CInt -> IO ()

instance QsetOffset (QImage a) ((Point)) where
 setOffset x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QImage_setOffset_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

foreign import ccall "qtc_QImage_setOffset_qth" qtc_QImage_setOffset_qth :: Ptr (TQImage a) -> CInt -> CInt -> IO ()

instance QqsetOffset (QImage a) ((QPoint t1)) where
 qsetOffset x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QImage_setOffset cobj_x0 cobj_x1

foreign import ccall "qtc_QImage_setOffset" qtc_QImage_setOffset :: Ptr (TQImage a) -> Ptr (TQPoint t1) -> IO ()

class QsetPixel x1 where
 setPixel :: QImage a -> x1 -> IO ()

instance QsetPixel ((Int, Int, Int)) where
 setPixel x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QImage_setPixel1 cobj_x0 (toCInt x1) (toCInt x2) (toCUInt x3)

foreign import ccall "qtc_QImage_setPixel1" qtc_QImage_setPixel1 :: Ptr (TQImage a) -> CInt -> CInt -> CUInt -> IO ()

instance QsetPixel ((Point, Int)) where
 setPixel x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QImage_setPixel_qth cobj_x0 cpoint_x1_x cpoint_x1_y  (toCUInt x2)

foreign import ccall "qtc_QImage_setPixel_qth" qtc_QImage_setPixel_qth :: Ptr (TQImage a) -> CInt -> CInt -> CUInt -> IO ()

qsetPixel :: QImage a -> ((QPoint t1, Int)) -> IO ()
qsetPixel x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QImage_setPixel cobj_x0 cobj_x1 (toCUInt x2)

foreign import ccall "qtc_QImage_setPixel" qtc_QImage_setPixel :: Ptr (TQImage a) -> Ptr (TQPoint t1) -> CUInt -> IO ()

instance QsetText (QImage a) ((String, String)) where
 setText x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QImage_setText cobj_x0 cstr_x1 cstr_x2

foreign import ccall "qtc_QImage_setText" qtc_QImage_setText :: Ptr (TQImage a) -> CWString -> CWString -> IO ()

instance QsetText (QImage a) ((String, String, String)) where
 setText x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    withCWString x2 $ \cstr_x2 ->
    withCWString x3 $ \cstr_x3 ->
    qtc_QImage_setText1 cobj_x0 cstr_x1 cstr_x2 cstr_x3

foreign import ccall "qtc_QImage_setText1" qtc_QImage_setText1 :: Ptr (TQImage a) -> CWString -> CWString -> CWString -> IO ()

instance Qqqsize (QImage a) (()) (IO (QSize ())) where
 qqsize x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QImage_size cobj_x0

foreign import ccall "qtc_QImage_size" qtc_QImage_size :: Ptr (TQImage a) -> IO (Ptr (TQSize ()))

instance Qqsize (QImage a) (()) (IO (Size)) where
 qsize x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QImage_size_qth cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QImage_size_qth" qtc_QImage_size_qth :: Ptr (TQImage a) -> Ptr CInt -> Ptr CInt -> IO ()

instance Qtext (QImage a) (()) (IO (String)) where
 text x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QImage_text cobj_x0

foreign import ccall "qtc_QImage_text" qtc_QImage_text :: Ptr (TQImage a) -> IO (Ptr (TQString ()))

instance Qtext (QImage a) ((QImageTextKeyLang t1)) (IO (String)) where
 text x0 (x1)
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QImage_text1 cobj_x0 cobj_x1

foreign import ccall "qtc_QImage_text1" qtc_QImage_text1 :: Ptr (TQImage a) -> Ptr (TQImageTextKeyLang t1) -> IO (Ptr (TQString ()))

instance Qtext (QImage a) ((String)) (IO (String)) where
 text x0 (x1)
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QImage_text2 cobj_x0 cstr_x1

foreign import ccall "qtc_QImage_text2" qtc_QImage_text2 :: Ptr (TQImage a) -> CWString -> IO (Ptr (TQString ()))

instance Qtext (QImage a) ((String, String)) (IO (String)) where
 text x0 (x1, x2)
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QImage_text4 cobj_x0 cstr_x1 cstr_x2

foreign import ccall "qtc_QImage_text4" qtc_QImage_text4 :: Ptr (TQImage a) -> CWString -> CWString -> IO (Ptr (TQString ()))

textKeys :: QImage a -> (()) -> IO ([String])
textKeys x0 ()
  = withQListStringResult $ \arr ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QImage_textKeys cobj_x0 arr

foreign import ccall "qtc_QImage_textKeys" qtc_QImage_textKeys :: Ptr (TQImage a) -> Ptr (Ptr (TQString ())) -> IO CInt

textLanguages :: QImage a -> (()) -> IO ([String])
textLanguages x0 ()
  = withQListStringResult $ \arr ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QImage_textLanguages cobj_x0 arr

foreign import ccall "qtc_QImage_textLanguages" qtc_QImage_textLanguages :: Ptr (TQImage a) -> Ptr (Ptr (TQString ())) -> IO CInt

instance QtextList (QImage a) (()) (IO ([QImageTextKeyLang ()])) where
 textList x0 ()
  = withQListObjectRefResult $ \arr ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QImage_textList cobj_x0 arr

foreign import ccall "qtc_QImage_textList" qtc_QImage_textList :: Ptr (TQImage a) -> Ptr (Ptr (TQImageTextKeyLang ())) -> IO CInt

instance Qtransformed (QImage ()) ((QMatrix t1)) (IO (QImage ())) where
 transformed x0 (x1)
  = withQImageResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QImage_transformed1 cobj_x0 cobj_x1

foreign import ccall "qtc_QImage_transformed1" qtc_QImage_transformed1 :: Ptr (TQImage a) -> Ptr (TQMatrix t1) -> IO (Ptr (TQImage ()))

instance Qtransformed (QImageSc a) ((QMatrix t1)) (IO (QImage ())) where
 transformed x0 (x1)
  = withQImageResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QImage_transformed1 cobj_x0 cobj_x1

instance Qtransformed_nf (QImage ()) ((QMatrix t1)) (IO (QImage ())) where
 transformed_nf x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QImage_transformed1 cobj_x0 cobj_x1

instance Qtransformed_nf (QImageSc a) ((QMatrix t1)) (IO (QImage ())) where
 transformed_nf x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QImage_transformed1 cobj_x0 cobj_x1

instance Qtransformed (QImage ()) ((QMatrix t1, TransformationMode)) (IO (QImage ())) where
 transformed x0 (x1, x2)
  = withQImageResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QImage_transformed2 cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QImage_transformed2" qtc_QImage_transformed2 :: Ptr (TQImage a) -> Ptr (TQMatrix t1) -> CLong -> IO (Ptr (TQImage ()))

instance Qtransformed (QImageSc a) ((QMatrix t1, TransformationMode)) (IO (QImage ())) where
 transformed x0 (x1, x2)
  = withQImageResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QImage_transformed2 cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

instance Qtransformed_nf (QImage ()) ((QMatrix t1, TransformationMode)) (IO (QImage ())) where
 transformed_nf x0 (x1, x2)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QImage_transformed2 cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

instance Qtransformed_nf (QImageSc a) ((QMatrix t1, TransformationMode)) (IO (QImage ())) where
 transformed_nf x0 (x1, x2)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QImage_transformed2 cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

instance Qtransformed (QImage ()) ((QTransform t1)) (IO (QImage ())) where
 transformed x0 (x1)
  = withQImageResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QImage_transformed cobj_x0 cobj_x1

foreign import ccall "qtc_QImage_transformed" qtc_QImage_transformed :: Ptr (TQImage a) -> Ptr (TQTransform t1) -> IO (Ptr (TQImage ()))

instance Qtransformed (QImageSc a) ((QTransform t1)) (IO (QImage ())) where
 transformed x0 (x1)
  = withQImageResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QImage_transformed cobj_x0 cobj_x1

instance Qtransformed_nf (QImage ()) ((QTransform t1)) (IO (QImage ())) where
 transformed_nf x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QImage_transformed cobj_x0 cobj_x1

instance Qtransformed_nf (QImageSc a) ((QTransform t1)) (IO (QImage ())) where
 transformed_nf x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QImage_transformed cobj_x0 cobj_x1

instance Qtransformed (QImage ()) ((QTransform t1, TransformationMode)) (IO (QImage ())) where
 transformed x0 (x1, x2)
  = withQImageResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QImage_transformed3 cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QImage_transformed3" qtc_QImage_transformed3 :: Ptr (TQImage a) -> Ptr (TQTransform t1) -> CLong -> IO (Ptr (TQImage ()))

instance Qtransformed (QImageSc a) ((QTransform t1, TransformationMode)) (IO (QImage ())) where
 transformed x0 (x1, x2)
  = withQImageResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QImage_transformed3 cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

instance Qtransformed_nf (QImage ()) ((QTransform t1, TransformationMode)) (IO (QImage ())) where
 transformed_nf x0 (x1, x2)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QImage_transformed3 cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

instance Qtransformed_nf (QImageSc a) ((QTransform t1, TransformationMode)) (IO (QImage ())) where
 transformed_nf x0 (x1, x2)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QImage_transformed3 cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

class QqImageTrueMatrix x1 xr where
 qImageTrueMatrix :: x1 -> xr

instance QqImageTrueMatrix ((QMatrix t1, Int, Int)) (IO (QMatrix ())) where
 qImageTrueMatrix (x1, x2, x3)
  = withQMatrixResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QImage_trueMatrix cobj_x1 (toCInt x2) (toCInt x3)

foreign import ccall "qtc_QImage_trueMatrix" qtc_QImage_trueMatrix :: Ptr (TQMatrix t1) -> CInt -> CInt -> IO (Ptr (TQMatrix ()))

instance QqImageTrueMatrix ((QTransform t1, Int, Int)) (IO (QTransform ())) where
 qImageTrueMatrix (x1, x2, x3)
  = withQTransformResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QImage_trueMatrix1 cobj_x1 (toCInt x2) (toCInt x3)

foreign import ccall "qtc_QImage_trueMatrix1" qtc_QImage_trueMatrix1 :: Ptr (TQTransform t1) -> CInt -> CInt -> IO (Ptr (TQTransform ()))

class Qvalid x1 where
 valid :: QImage a -> x1 -> IO (Bool)

instance Qvalid ((Int, Int)) where
 valid x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QImage_valid1 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QImage_valid1" qtc_QImage_valid1 :: Ptr (TQImage a) -> CInt -> CInt -> IO CBool

instance Qvalid ((Point)) where
 valid x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QImage_valid_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

foreign import ccall "qtc_QImage_valid_qth" qtc_QImage_valid_qth :: Ptr (TQImage a) -> CInt -> CInt -> IO CBool

qvalid :: QImage a -> ((QPoint t1)) -> IO (Bool)
qvalid x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QImage_valid cobj_x0 cobj_x1

foreign import ccall "qtc_QImage_valid" qtc_QImage_valid :: Ptr (TQImage a) -> Ptr (TQPoint t1) -> IO CBool

instance Qqwidth (QImage a) (()) (IO (Int)) where
 qwidth x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QImage_width cobj_x0

foreign import ccall "qtc_QImage_width" qtc_QImage_width :: Ptr (TQImage a) -> IO CInt

qImage_delete :: QImage a -> IO ()
qImage_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QImage_delete cobj_x0

foreign import ccall "qtc_QImage_delete" qtc_QImage_delete :: Ptr (TQImage a) -> IO ()

qImage_delete1 :: QImage a -> IO ()
qImage_delete1 x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QImage_delete1 cobj_x0

foreign import ccall "qtc_QImage_delete1" qtc_QImage_delete1 :: Ptr (TQImage a) -> IO ()

