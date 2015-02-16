{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QFontDatabase.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:14
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QFontDatabase (
  QqFontDatabase(..)
  ,QqFontDatabase_nf(..)
  ,qFontDatabaseAddApplicationFont
  ,qFontDatabaseAddApplicationFontFromData
  ,qFontDatabaseApplicationFontFamilies
  ,Qfamilies(..)
  ,QisBitmapScalable(..)
  ,QisFixedPitch(..)
  ,QisScalable(..)
  ,QisSmoothlyScalable(..)
  ,QpointSizes(..)
  ,qFontDatabaseRemoveAllApplicationFonts
  ,qFontDatabaseRemoveApplicationFont
  ,smoothSizes
  ,qFontDatabaseStandardSizes
  ,QstyleString(..)
  ,styles
  ,qFontDatabaseWritingSystemName
  ,qFontDatabaseWritingSystemSample
  ,QwritingSystems(..)
  ,qFontDatabase_delete
  )
  where

import Foreign.C.Types
import Qth.ClassTypes.Core
import Qtc.Enums.Base
import Qtc.Enums.Gui.QFontDatabase

import Qtc.Classes.Base
import Qtc.Classes.Qccs
import Qtc.Classes.Core
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core
import Qtc.Classes.Gui
import Qtc.ClassTypes.Gui

class QqFontDatabase x1 where
  qFontDatabase :: x1 -> IO (QFontDatabase ())

instance QqFontDatabase (()) where
 qFontDatabase ()
  = withQFontDatabaseResult $
    qtc_QFontDatabase

foreign import ccall "qtc_QFontDatabase" qtc_QFontDatabase :: IO (Ptr (TQFontDatabase ()))

instance QqFontDatabase ((QFontDatabase t1)) where
 qFontDatabase (x1)
  = withQFontDatabaseResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFontDatabase1 cobj_x1

foreign import ccall "qtc_QFontDatabase1" qtc_QFontDatabase1 :: Ptr (TQFontDatabase t1) -> IO (Ptr (TQFontDatabase ()))

class QqFontDatabase_nf x1 where
  qFontDatabase_nf :: x1 -> IO (QFontDatabase ())

instance QqFontDatabase_nf (()) where
 qFontDatabase_nf ()
  = withObjectRefResult $
    qtc_QFontDatabase

instance QqFontDatabase_nf ((QFontDatabase t1)) where
 qFontDatabase_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFontDatabase1 cobj_x1

qFontDatabaseAddApplicationFont :: ((String)) -> IO (Int)
qFontDatabaseAddApplicationFont (x1)
  = withIntResult $
    withCWString x1 $ \cstr_x1 ->
    qtc_QFontDatabase_addApplicationFont cstr_x1

foreign import ccall "qtc_QFontDatabase_addApplicationFont" qtc_QFontDatabase_addApplicationFont :: CWString -> IO CInt

qFontDatabaseAddApplicationFontFromData :: ((String)) -> IO (Int)
qFontDatabaseAddApplicationFontFromData (x1)
  = withIntResult $
    withCWString x1 $ \cstr_x1 ->
    qtc_QFontDatabase_addApplicationFontFromData cstr_x1

foreign import ccall "qtc_QFontDatabase_addApplicationFontFromData" qtc_QFontDatabase_addApplicationFontFromData :: CWString -> IO CInt

qFontDatabaseApplicationFontFamilies :: ((Int)) -> IO ([String])
qFontDatabaseApplicationFontFamilies (x1)
  = withQListStringResult $ \arr ->
    qtc_QFontDatabase_applicationFontFamilies (toCInt x1) arr

foreign import ccall "qtc_QFontDatabase_applicationFontFamilies" qtc_QFontDatabase_applicationFontFamilies :: CInt -> Ptr (Ptr (TQString ())) -> IO CInt

instance Qbold (QFontDatabase a) ((String, String)) where
 bold x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QFontDatabase_bold cobj_x0 cstr_x1 cstr_x2

foreign import ccall "qtc_QFontDatabase_bold" qtc_QFontDatabase_bold :: Ptr (TQFontDatabase a) -> CWString -> CWString -> IO CBool

class Qfamilies x1 where
 families :: QFontDatabase a -> x1 -> IO ([String])

instance Qfamilies (()) where
 families x0 ()
  = withQListStringResult $ \arr ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFontDatabase_families cobj_x0 arr

foreign import ccall "qtc_QFontDatabase_families" qtc_QFontDatabase_families :: Ptr (TQFontDatabase a) -> Ptr (Ptr (TQString ())) -> IO CInt

instance Qfamilies ((WritingSystem)) where
 families x0 (x1)
  = withQListStringResult $ \arr ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFontDatabase_families1 cobj_x0 (toCLong $ qEnum_toInt x1) arr

foreign import ccall "qtc_QFontDatabase_families1" qtc_QFontDatabase_families1 :: Ptr (TQFontDatabase a) -> CLong -> Ptr (Ptr (TQString ())) -> IO CInt

instance Qfont (QFontDatabase a) ((String, String, Int)) where
 font x0 (x1, x2, x3)
  = withQFontResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QFontDatabase_font cobj_x0 cstr_x1 cstr_x2 (toCInt x3)

foreign import ccall "qtc_QFontDatabase_font" qtc_QFontDatabase_font :: Ptr (TQFontDatabase a) -> CWString -> CWString -> CInt -> IO (Ptr (TQFont ()))

class QisBitmapScalable x1 where
 isBitmapScalable :: QFontDatabase a -> x1 -> IO (Bool)

instance QisBitmapScalable ((String)) where
 isBitmapScalable x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QFontDatabase_isBitmapScalable cobj_x0 cstr_x1

foreign import ccall "qtc_QFontDatabase_isBitmapScalable" qtc_QFontDatabase_isBitmapScalable :: Ptr (TQFontDatabase a) -> CWString -> IO CBool

instance QisBitmapScalable ((String, String)) where
 isBitmapScalable x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QFontDatabase_isBitmapScalable1 cobj_x0 cstr_x1 cstr_x2

foreign import ccall "qtc_QFontDatabase_isBitmapScalable1" qtc_QFontDatabase_isBitmapScalable1 :: Ptr (TQFontDatabase a) -> CWString -> CWString -> IO CBool

class QisFixedPitch x1 where
 isFixedPitch :: QFontDatabase a -> x1 -> IO (Bool)

instance QisFixedPitch ((String)) where
 isFixedPitch x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QFontDatabase_isFixedPitch cobj_x0 cstr_x1

foreign import ccall "qtc_QFontDatabase_isFixedPitch" qtc_QFontDatabase_isFixedPitch :: Ptr (TQFontDatabase a) -> CWString -> IO CBool

instance QisFixedPitch ((String, String)) where
 isFixedPitch x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QFontDatabase_isFixedPitch1 cobj_x0 cstr_x1 cstr_x2

foreign import ccall "qtc_QFontDatabase_isFixedPitch1" qtc_QFontDatabase_isFixedPitch1 :: Ptr (TQFontDatabase a) -> CWString -> CWString -> IO CBool

class QisScalable x1 where
 isScalable :: QFontDatabase a -> x1 -> IO (Bool)

instance QisScalable ((String)) where
 isScalable x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QFontDatabase_isScalable cobj_x0 cstr_x1

foreign import ccall "qtc_QFontDatabase_isScalable" qtc_QFontDatabase_isScalable :: Ptr (TQFontDatabase a) -> CWString -> IO CBool

instance QisScalable ((String, String)) where
 isScalable x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QFontDatabase_isScalable1 cobj_x0 cstr_x1 cstr_x2

foreign import ccall "qtc_QFontDatabase_isScalable1" qtc_QFontDatabase_isScalable1 :: Ptr (TQFontDatabase a) -> CWString -> CWString -> IO CBool

class QisSmoothlyScalable x1 where
 isSmoothlyScalable :: QFontDatabase a -> x1 -> IO (Bool)

instance QisSmoothlyScalable ((String)) where
 isSmoothlyScalable x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QFontDatabase_isSmoothlyScalable cobj_x0 cstr_x1

foreign import ccall "qtc_QFontDatabase_isSmoothlyScalable" qtc_QFontDatabase_isSmoothlyScalable :: Ptr (TQFontDatabase a) -> CWString -> IO CBool

instance QisSmoothlyScalable ((String, String)) where
 isSmoothlyScalable x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QFontDatabase_isSmoothlyScalable1 cobj_x0 cstr_x1 cstr_x2

foreign import ccall "qtc_QFontDatabase_isSmoothlyScalable1" qtc_QFontDatabase_isSmoothlyScalable1 :: Ptr (TQFontDatabase a) -> CWString -> CWString -> IO CBool

instance Qitalic (QFontDatabase a) ((String, String)) where
 italic x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QFontDatabase_italic cobj_x0 cstr_x1 cstr_x2

foreign import ccall "qtc_QFontDatabase_italic" qtc_QFontDatabase_italic :: Ptr (TQFontDatabase a) -> CWString -> CWString -> IO CBool

class QpointSizes x1 where
 pointSizes :: QFontDatabase a -> x1 -> IO ([Int])

instance QpointSizes ((String)) where
 pointSizes x0 (x1)
  = withQListIntResult $ \arr ->
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QFontDatabase_pointSizes cobj_x0 cstr_x1 arr

foreign import ccall "qtc_QFontDatabase_pointSizes" qtc_QFontDatabase_pointSizes :: Ptr (TQFontDatabase a) -> CWString -> Ptr CInt -> IO CInt

instance QpointSizes ((String, String)) where
 pointSizes x0 (x1, x2)
  = withQListIntResult $ \arr ->
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QFontDatabase_pointSizes1 cobj_x0 cstr_x1 cstr_x2 arr

foreign import ccall "qtc_QFontDatabase_pointSizes1" qtc_QFontDatabase_pointSizes1 :: Ptr (TQFontDatabase a) -> CWString -> CWString -> Ptr CInt -> IO CInt

qFontDatabaseRemoveAllApplicationFonts :: (()) -> IO (Bool)
qFontDatabaseRemoveAllApplicationFonts ()
  = withBoolResult $
    qtc_QFontDatabase_removeAllApplicationFonts

foreign import ccall "qtc_QFontDatabase_removeAllApplicationFonts" qtc_QFontDatabase_removeAllApplicationFonts :: IO CBool

qFontDatabaseRemoveApplicationFont :: ((Int)) -> IO (Bool)
qFontDatabaseRemoveApplicationFont (x1)
  = withBoolResult $
    qtc_QFontDatabase_removeApplicationFont (toCInt x1)

foreign import ccall "qtc_QFontDatabase_removeApplicationFont" qtc_QFontDatabase_removeApplicationFont :: CInt -> IO CBool

smoothSizes :: QFontDatabase a -> ((String, String)) -> IO ([Int])
smoothSizes x0 (x1, x2)
  = withQListIntResult $ \arr ->
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QFontDatabase_smoothSizes cobj_x0 cstr_x1 cstr_x2 arr

foreign import ccall "qtc_QFontDatabase_smoothSizes" qtc_QFontDatabase_smoothSizes :: Ptr (TQFontDatabase a) -> CWString -> CWString -> Ptr CInt -> IO CInt

qFontDatabaseStandardSizes :: (()) -> IO ([Int])
qFontDatabaseStandardSizes ()
  = withQListIntResult $ \arr ->
    qtc_QFontDatabase_standardSizes arr

foreign import ccall "qtc_QFontDatabase_standardSizes" qtc_QFontDatabase_standardSizes :: Ptr CInt -> IO CInt

class QstyleString x1 where
 styleString :: QFontDatabase a -> x1 -> IO (String)

instance QstyleString ((QFont t1)) where
 styleString x0 (x1)
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFontDatabase_styleString1 cobj_x0 cobj_x1

foreign import ccall "qtc_QFontDatabase_styleString1" qtc_QFontDatabase_styleString1 :: Ptr (TQFontDatabase a) -> Ptr (TQFont t1) -> IO (Ptr (TQString ()))

instance QstyleString ((QFontInfo t1)) where
 styleString x0 (x1)
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFontDatabase_styleString cobj_x0 cobj_x1

foreign import ccall "qtc_QFontDatabase_styleString" qtc_QFontDatabase_styleString :: Ptr (TQFontDatabase a) -> Ptr (TQFontInfo t1) -> IO (Ptr (TQString ()))

styles :: QFontDatabase a -> ((String)) -> IO ([String])
styles x0 (x1)
  = withQListStringResult $ \arr ->
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QFontDatabase_styles cobj_x0 cstr_x1 arr

foreign import ccall "qtc_QFontDatabase_styles" qtc_QFontDatabase_styles :: Ptr (TQFontDatabase a) -> CWString -> Ptr (Ptr (TQString ())) -> IO CInt

instance Qweight (QFontDatabase a) ((String, String)) where
 weight x0 (x1, x2)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QFontDatabase_weight cobj_x0 cstr_x1 cstr_x2

foreign import ccall "qtc_QFontDatabase_weight" qtc_QFontDatabase_weight :: Ptr (TQFontDatabase a) -> CWString -> CWString -> IO CInt

qFontDatabaseWritingSystemName :: ((WritingSystem)) -> IO (String)
qFontDatabaseWritingSystemName (x1)
  = withStringResult $
    qtc_QFontDatabase_writingSystemName (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QFontDatabase_writingSystemName" qtc_QFontDatabase_writingSystemName :: CLong -> IO (Ptr (TQString ()))

qFontDatabaseWritingSystemSample :: ((WritingSystem)) -> IO (String)
qFontDatabaseWritingSystemSample (x1)
  = withStringResult $
    qtc_QFontDatabase_writingSystemSample (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QFontDatabase_writingSystemSample" qtc_QFontDatabase_writingSystemSample :: CLong -> IO (Ptr (TQString ()))

class QwritingSystems x1 where
 writingSystems :: QFontDatabase a -> x1 -> IO ([WritingSystem])

instance QwritingSystems (()) where
 writingSystems x0 ()
  = withQEnumListResult $
    withQListLongResult $ \arr ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFontDatabase_writingSystems cobj_x0 arr

foreign import ccall "qtc_QFontDatabase_writingSystems" qtc_QFontDatabase_writingSystems :: Ptr (TQFontDatabase a) -> Ptr CLong -> IO CInt

instance QwritingSystems ((String)) where
 writingSystems x0 (x1)
  = withQEnumListResult $
    withQListLongResult $ \arr ->
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QFontDatabase_writingSystems1 cobj_x0 cstr_x1 arr

foreign import ccall "qtc_QFontDatabase_writingSystems1" qtc_QFontDatabase_writingSystems1 :: Ptr (TQFontDatabase a) -> CWString -> Ptr CLong -> IO CInt

qFontDatabase_delete :: QFontDatabase a -> IO ()
qFontDatabase_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFontDatabase_delete cobj_x0

foreign import ccall "qtc_QFontDatabase_delete" qtc_QFontDatabase_delete :: Ptr (TQFontDatabase a) -> IO ()

