{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QFont.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:20
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QFont (
  QqFont(..)
  ,QqFont_nf(..)
  ,qFontCacheStatistics
  ,qFontCleanup
  ,defaultFamily
  ,fromString
  ,qFontInitialize
  ,qFontInsertSubstitution
  ,qFontInsertSubstitutions
  ,kerning
  ,lastResortFamily
  ,lastResortFont
  ,rawName
  ,qFontRemoveSubstitution
  ,setBold
  ,setFamily
  ,setFixedPitch
  ,setItalic
  ,setKerning
  ,setOverline
  ,setPixelSize
  ,setPointSize
  ,setPointSizeF
  ,setRawMode
  ,setRawName
  ,setStretch
  ,setStrikeOut
  ,QsetStyleHint(..)
  ,setStyleStrategy
  ,setUnderline
  ,setWeight
  ,stretch
  ,styleStrategy
  ,qFontSubstitute
  ,qFontSubstitutes
  ,qFontSubstitutions
  ,qFont_delete
  )
  where

import Foreign.C.Types
import Qth.ClassTypes.Core
import Qtc.Enums.Base
import Qtc.Enums.Gui.QFont

import Qtc.Classes.Base
import Qtc.Classes.Qccs
import Qtc.Classes.Core
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core
import Qtc.Classes.Gui
import Qtc.ClassTypes.Gui

class QqFont x1 where
  qFont :: x1 -> IO (QFont ())

instance QqFont (()) where
 qFont ()
  = withQFontResult $
    qtc_QFont

foreign import ccall "qtc_QFont" qtc_QFont :: IO (Ptr (TQFont ()))

instance QqFont ((QFont t1)) where
 qFont (x1)
  = withQFontResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFont1 cobj_x1

foreign import ccall "qtc_QFont1" qtc_QFont1 :: Ptr (TQFont t1) -> IO (Ptr (TQFont ()))

instance QqFont ((String)) where
 qFont (x1)
  = withQFontResult $
    withCWString x1 $ \cstr_x1 ->
    qtc_QFont2 cstr_x1

foreign import ccall "qtc_QFont2" qtc_QFont2 :: CWString -> IO (Ptr (TQFont ()))

instance QqFont ((String, Int)) where
 qFont (x1, x2)
  = withQFontResult $
    withCWString x1 $ \cstr_x1 ->
    qtc_QFont3 cstr_x1 (toCInt x2)

foreign import ccall "qtc_QFont3" qtc_QFont3 :: CWString -> CInt -> IO (Ptr (TQFont ()))

instance QqFont ((QFont t1, QPaintDevice t2)) where
 qFont (x1, x2)
  = withQFontResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QFont4 cobj_x1 cobj_x2

foreign import ccall "qtc_QFont4" qtc_QFont4 :: Ptr (TQFont t1) -> Ptr (TQPaintDevice t2) -> IO (Ptr (TQFont ()))

instance QqFont ((QFont t1, QWidget t2)) where
 qFont (x1, x2)
  = withQFontResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QFont4_widget cobj_x1 cobj_x2

foreign import ccall "qtc_QFont4_widget" qtc_QFont4_widget :: Ptr (TQFont t1) -> Ptr (TQWidget t2) -> IO (Ptr (TQFont ()))

instance QqFont ((String, Int, Int)) where
 qFont (x1, x2, x3)
  = withQFontResult $
    withCWString x1 $ \cstr_x1 ->
    qtc_QFont5 cstr_x1 (toCInt x2) (toCInt x3)

foreign import ccall "qtc_QFont5" qtc_QFont5 :: CWString -> CInt -> CInt -> IO (Ptr (TQFont ()))

instance QqFont ((String, Int, Int, Bool)) where
 qFont (x1, x2, x3, x4)
  = withQFontResult $
    withCWString x1 $ \cstr_x1 ->
    qtc_QFont6 cstr_x1 (toCInt x2) (toCInt x3) (toCBool x4)

foreign import ccall "qtc_QFont6" qtc_QFont6 :: CWString -> CInt -> CInt -> CBool -> IO (Ptr (TQFont ()))

class QqFont_nf x1 where
  qFont_nf :: x1 -> IO (QFont ())

instance QqFont_nf (()) where
 qFont_nf ()
  = withObjectRefResult $
    qtc_QFont

instance QqFont_nf ((QFont t1)) where
 qFont_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFont1 cobj_x1

instance QqFont_nf ((String)) where
 qFont_nf (x1)
  = withObjectRefResult $
    withCWString x1 $ \cstr_x1 ->
    qtc_QFont2 cstr_x1

instance QqFont_nf ((String, Int)) where
 qFont_nf (x1, x2)
  = withObjectRefResult $
    withCWString x1 $ \cstr_x1 ->
    qtc_QFont3 cstr_x1 (toCInt x2)

instance QqFont_nf ((QFont t1, QPaintDevice t2)) where
 qFont_nf (x1, x2)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QFont4 cobj_x1 cobj_x2

instance QqFont_nf ((QFont t1, QWidget t2)) where
 qFont_nf (x1, x2)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QFont4_widget cobj_x1 cobj_x2

instance QqFont_nf ((String, Int, Int)) where
 qFont_nf (x1, x2, x3)
  = withObjectRefResult $
    withCWString x1 $ \cstr_x1 ->
    qtc_QFont5 cstr_x1 (toCInt x2) (toCInt x3)

instance QqFont_nf ((String, Int, Int, Bool)) where
 qFont_nf (x1, x2, x3, x4)
  = withObjectRefResult $
    withCWString x1 $ \cstr_x1 ->
    qtc_QFont6 cstr_x1 (toCInt x2) (toCInt x3) (toCBool x4)

instance Qbold (QFont a) (()) where
 bold x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFont_bold cobj_x0

foreign import ccall "qtc_QFont_bold" qtc_QFont_bold :: Ptr (TQFont a) -> IO CBool

qFontCacheStatistics :: (()) -> IO ()
qFontCacheStatistics ()
  = qtc_QFont_cacheStatistics

foreign import ccall "qtc_QFont_cacheStatistics" qtc_QFont_cacheStatistics :: IO ()

qFontCleanup :: (()) -> IO ()
qFontCleanup ()
  = qtc_QFont_cleanup

foreign import ccall "qtc_QFont_cleanup" qtc_QFont_cleanup :: IO ()

defaultFamily :: QFont a -> (()) -> IO (String)
defaultFamily x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFont_defaultFamily cobj_x0

foreign import ccall "qtc_QFont_defaultFamily" qtc_QFont_defaultFamily :: Ptr (TQFont a) -> IO (Ptr (TQString ()))

instance QexactMatch (QFont a) (()) where
 exactMatch x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFont_exactMatch cobj_x0

foreign import ccall "qtc_QFont_exactMatch" qtc_QFont_exactMatch :: Ptr (TQFont a) -> IO CBool

instance Qfamily (QFont a) (()) where
 family x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFont_family cobj_x0

foreign import ccall "qtc_QFont_family" qtc_QFont_family :: Ptr (TQFont a) -> IO (Ptr (TQString ()))

instance QfixedPitch (QFont a) (()) where
 fixedPitch x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFont_fixedPitch cobj_x0

foreign import ccall "qtc_QFont_fixedPitch" qtc_QFont_fixedPitch :: Ptr (TQFont a) -> IO CBool

fromString :: QFont a -> ((String)) -> IO (Bool)
fromString x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QFont_fromString cobj_x0 cstr_x1

foreign import ccall "qtc_QFont_fromString" qtc_QFont_fromString :: Ptr (TQFont a) -> CWString -> IO CBool

qFontInitialize :: (()) -> IO ()
qFontInitialize ()
  = qtc_QFont_initialize

foreign import ccall "qtc_QFont_initialize" qtc_QFont_initialize :: IO ()

qFontInsertSubstitution :: ((String, String)) -> IO ()
qFontInsertSubstitution (x1, x2)
  = withCWString x1 $ \cstr_x1 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QFont_insertSubstitution cstr_x1 cstr_x2

foreign import ccall "qtc_QFont_insertSubstitution" qtc_QFont_insertSubstitution :: CWString -> CWString -> IO ()

qFontInsertSubstitutions :: ((String, [String])) -> IO ()
qFontInsertSubstitutions (x1, x2)
  = withCWString x1 $ \cstr_x1 ->
    withQListString x2 $ \cqlistlen_x2 cqliststr_x2 ->
    qtc_QFont_insertSubstitutions cstr_x1 cqlistlen_x2 cqliststr_x2

foreign import ccall "qtc_QFont_insertSubstitutions" qtc_QFont_insertSubstitutions :: CWString -> CInt -> Ptr (Ptr CWchar) -> IO ()

instance QisCopyOf (QFont a) ((QFont t1)) where
 isCopyOf x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFont_isCopyOf cobj_x0 cobj_x1

foreign import ccall "qtc_QFont_isCopyOf" qtc_QFont_isCopyOf :: Ptr (TQFont a) -> Ptr (TQFont t1) -> IO CBool

instance Qitalic (QFont a) (()) where
 italic x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFont_italic cobj_x0

foreign import ccall "qtc_QFont_italic" qtc_QFont_italic :: Ptr (TQFont a) -> IO CBool

kerning :: QFont a -> (()) -> IO (Bool)
kerning x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFont_kerning cobj_x0

foreign import ccall "qtc_QFont_kerning" qtc_QFont_kerning :: Ptr (TQFont a) -> IO CBool

instance Qkey (QFont a) (()) (IO (String)) where
 key x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFont_key cobj_x0

foreign import ccall "qtc_QFont_key" qtc_QFont_key :: Ptr (TQFont a) -> IO (Ptr (TQString ()))

lastResortFamily :: QFont a -> (()) -> IO (String)
lastResortFamily x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFont_lastResortFamily cobj_x0

foreign import ccall "qtc_QFont_lastResortFamily" qtc_QFont_lastResortFamily :: Ptr (TQFont a) -> IO (Ptr (TQString ()))

lastResortFont :: QFont a -> (()) -> IO (String)
lastResortFont x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFont_lastResortFont cobj_x0

foreign import ccall "qtc_QFont_lastResortFont" qtc_QFont_lastResortFont :: Ptr (TQFont a) -> IO (Ptr (TQString ()))

instance Qoverline (QFont a) (()) where
 overline x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFont_overline cobj_x0

foreign import ccall "qtc_QFont_overline" qtc_QFont_overline :: Ptr (TQFont a) -> IO CBool

instance QpixelSize (QFont a) (()) where
 pixelSize x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFont_pixelSize cobj_x0

foreign import ccall "qtc_QFont_pixelSize" qtc_QFont_pixelSize :: Ptr (TQFont a) -> IO CInt

instance QpointSize (QFont a) (()) where
 pointSize x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFont_pointSize cobj_x0

foreign import ccall "qtc_QFont_pointSize" qtc_QFont_pointSize :: Ptr (TQFont a) -> IO CInt

instance QpointSizeF (QFont a) (()) where
 pointSizeF x0 ()
  = withDoubleResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFont_pointSizeF cobj_x0

foreign import ccall "qtc_QFont_pointSizeF" qtc_QFont_pointSizeF :: Ptr (TQFont a) -> IO CDouble

instance QrawMode (QFont a) (()) where
 rawMode x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFont_rawMode cobj_x0

foreign import ccall "qtc_QFont_rawMode" qtc_QFont_rawMode :: Ptr (TQFont a) -> IO CBool

rawName :: QFont a -> (()) -> IO (String)
rawName x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFont_rawName cobj_x0

foreign import ccall "qtc_QFont_rawName" qtc_QFont_rawName :: Ptr (TQFont a) -> IO (Ptr (TQString ()))

qFontRemoveSubstitution :: ((String)) -> IO ()
qFontRemoveSubstitution (x1)
  = withCWString x1 $ \cstr_x1 ->
    qtc_QFont_removeSubstitution cstr_x1

foreign import ccall "qtc_QFont_removeSubstitution" qtc_QFont_removeSubstitution :: CWString -> IO ()

instance Qresolve (QFont a) ((Int)) (IO ()) where
 resolve x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFont_resolve1 cobj_x0 (toCUInt x1)

foreign import ccall "qtc_QFont_resolve1" qtc_QFont_resolve1 :: Ptr (TQFont a) -> CUInt -> IO ()

instance Qresolve (QFont a) (()) (IO (Int)) where
 resolve x0 ()
  = withUnsignedIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFont_resolve cobj_x0

foreign import ccall "qtc_QFont_resolve" qtc_QFont_resolve :: Ptr (TQFont a) -> IO CUInt

instance Qresolve (QFont a) ((QFont t1)) (IO (QFont ())) where
 resolve x0 (x1)
  = withQFontResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFont_resolve2 cobj_x0 cobj_x1

foreign import ccall "qtc_QFont_resolve2" qtc_QFont_resolve2 :: Ptr (TQFont a) -> Ptr (TQFont t1) -> IO (Ptr (TQFont ()))

setBold :: QFont a -> ((Bool)) -> IO ()
setBold x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFont_setBold cobj_x0 (toCBool x1)

foreign import ccall "qtc_QFont_setBold" qtc_QFont_setBold :: Ptr (TQFont a) -> CBool -> IO ()

setFamily :: QFont a -> ((String)) -> IO ()
setFamily x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QFont_setFamily cobj_x0 cstr_x1

foreign import ccall "qtc_QFont_setFamily" qtc_QFont_setFamily :: Ptr (TQFont a) -> CWString -> IO ()

setFixedPitch :: QFont a -> ((Bool)) -> IO ()
setFixedPitch x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFont_setFixedPitch cobj_x0 (toCBool x1)

foreign import ccall "qtc_QFont_setFixedPitch" qtc_QFont_setFixedPitch :: Ptr (TQFont a) -> CBool -> IO ()

setItalic :: QFont a -> ((Bool)) -> IO ()
setItalic x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFont_setItalic cobj_x0 (toCBool x1)

foreign import ccall "qtc_QFont_setItalic" qtc_QFont_setItalic :: Ptr (TQFont a) -> CBool -> IO ()

setKerning :: QFont a -> ((Bool)) -> IO ()
setKerning x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFont_setKerning cobj_x0 (toCBool x1)

foreign import ccall "qtc_QFont_setKerning" qtc_QFont_setKerning :: Ptr (TQFont a) -> CBool -> IO ()

setOverline :: QFont a -> ((Bool)) -> IO ()
setOverline x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFont_setOverline cobj_x0 (toCBool x1)

foreign import ccall "qtc_QFont_setOverline" qtc_QFont_setOverline :: Ptr (TQFont a) -> CBool -> IO ()

setPixelSize :: QFont a -> ((Int)) -> IO ()
setPixelSize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFont_setPixelSize cobj_x0 (toCInt x1)

foreign import ccall "qtc_QFont_setPixelSize" qtc_QFont_setPixelSize :: Ptr (TQFont a) -> CInt -> IO ()

setPointSize :: QFont a -> ((Int)) -> IO ()
setPointSize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFont_setPointSize cobj_x0 (toCInt x1)

foreign import ccall "qtc_QFont_setPointSize" qtc_QFont_setPointSize :: Ptr (TQFont a) -> CInt -> IO ()

setPointSizeF :: QFont a -> ((Double)) -> IO ()
setPointSizeF x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFont_setPointSizeF cobj_x0 (toCDouble x1)

foreign import ccall "qtc_QFont_setPointSizeF" qtc_QFont_setPointSizeF :: Ptr (TQFont a) -> CDouble -> IO ()

setRawMode :: QFont a -> ((Bool)) -> IO ()
setRawMode x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFont_setRawMode cobj_x0 (toCBool x1)

foreign import ccall "qtc_QFont_setRawMode" qtc_QFont_setRawMode :: Ptr (TQFont a) -> CBool -> IO ()

setRawName :: QFont a -> ((String)) -> IO ()
setRawName x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QFont_setRawName cobj_x0 cstr_x1

foreign import ccall "qtc_QFont_setRawName" qtc_QFont_setRawName :: Ptr (TQFont a) -> CWString -> IO ()

setStretch :: QFont a -> ((Int)) -> IO ()
setStretch x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFont_setStretch cobj_x0 (toCInt x1)

foreign import ccall "qtc_QFont_setStretch" qtc_QFont_setStretch :: Ptr (TQFont a) -> CInt -> IO ()

setStrikeOut :: QFont a -> ((Bool)) -> IO ()
setStrikeOut x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFont_setStrikeOut cobj_x0 (toCBool x1)

foreign import ccall "qtc_QFont_setStrikeOut" qtc_QFont_setStrikeOut :: Ptr (TQFont a) -> CBool -> IO ()

instance QsetStyle (QFont a) ((QFontStyle)) where
 setStyle x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFont_setStyle cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QFont_setStyle" qtc_QFont_setStyle :: Ptr (TQFont a) -> CLong -> IO ()

class QsetStyleHint x1 where
 setStyleHint :: QFont a -> x1 -> IO ()

instance QsetStyleHint ((QFontStyleHint)) where
 setStyleHint x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFont_setStyleHint cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QFont_setStyleHint" qtc_QFont_setStyleHint :: Ptr (TQFont a) -> CLong -> IO ()

instance QsetStyleHint ((QFontStyleHint, StyleStrategy)) where
 setStyleHint x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFont_setStyleHint1 cobj_x0 (toCLong $ qEnum_toInt x1) (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QFont_setStyleHint1" qtc_QFont_setStyleHint1 :: Ptr (TQFont a) -> CLong -> CLong -> IO ()

setStyleStrategy :: QFont a -> ((StyleStrategy)) -> IO ()
setStyleStrategy x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFont_setStyleStrategy cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QFont_setStyleStrategy" qtc_QFont_setStyleStrategy :: Ptr (TQFont a) -> CLong -> IO ()

setUnderline :: QFont a -> ((Bool)) -> IO ()
setUnderline x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFont_setUnderline cobj_x0 (toCBool x1)

foreign import ccall "qtc_QFont_setUnderline" qtc_QFont_setUnderline :: Ptr (TQFont a) -> CBool -> IO ()

setWeight :: QFont a -> ((Int)) -> IO ()
setWeight x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFont_setWeight cobj_x0 (toCInt x1)

foreign import ccall "qtc_QFont_setWeight" qtc_QFont_setWeight :: Ptr (TQFont a) -> CInt -> IO ()

stretch :: QFont a -> (()) -> IO (Int)
stretch x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFont_stretch cobj_x0

foreign import ccall "qtc_QFont_stretch" qtc_QFont_stretch :: Ptr (TQFont a) -> IO CInt

instance QstrikeOut (QFont a) (()) where
 strikeOut x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFont_strikeOut cobj_x0

foreign import ccall "qtc_QFont_strikeOut" qtc_QFont_strikeOut :: Ptr (TQFont a) -> IO CBool

instance Qstyle (QFont a) (()) (IO (QFontStyle)) where
 style x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFont_style cobj_x0

foreign import ccall "qtc_QFont_style" qtc_QFont_style :: Ptr (TQFont a) -> IO CLong

instance QstyleHint (QFont a) (()) (IO (QFontStyleHint)) where
 styleHint x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFont_styleHint cobj_x0

foreign import ccall "qtc_QFont_styleHint" qtc_QFont_styleHint :: Ptr (TQFont a) -> IO CLong

styleStrategy :: QFont a -> (()) -> IO (StyleStrategy)
styleStrategy x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFont_styleStrategy cobj_x0

foreign import ccall "qtc_QFont_styleStrategy" qtc_QFont_styleStrategy :: Ptr (TQFont a) -> IO CLong

qFontSubstitute :: ((String)) -> IO (String)
qFontSubstitute (x1)
  = withStringResult $
    withCWString x1 $ \cstr_x1 ->
    qtc_QFont_substitute cstr_x1

foreign import ccall "qtc_QFont_substitute" qtc_QFont_substitute :: CWString -> IO (Ptr (TQString ()))

qFontSubstitutes :: ((String)) -> IO ([String])
qFontSubstitutes (x1)
  = withQListStringResult $ \arr ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QFont_substitutes cstr_x1 arr

foreign import ccall "qtc_QFont_substitutes" qtc_QFont_substitutes :: CWString -> Ptr (Ptr (TQString ())) -> IO CInt

qFontSubstitutions :: (()) -> IO ([String])
qFontSubstitutions ()
  = withQListStringResult $ \arr ->
    qtc_QFont_substitutions arr

foreign import ccall "qtc_QFont_substitutions" qtc_QFont_substitutions :: Ptr (Ptr (TQString ())) -> IO CInt

instance QtoString (QFont a) (()) where
 toString x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFont_toString cobj_x0

foreign import ccall "qtc_QFont_toString" qtc_QFont_toString :: Ptr (TQFont a) -> IO (Ptr (TQString ()))

instance Qunderline (QFont a) (()) where
 underline x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFont_underline cobj_x0

foreign import ccall "qtc_QFont_underline" qtc_QFont_underline :: Ptr (TQFont a) -> IO CBool

instance Qweight (QFont a) (()) where
 weight x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFont_weight cobj_x0

foreign import ccall "qtc_QFont_weight" qtc_QFont_weight :: Ptr (TQFont a) -> IO CInt

qFont_delete :: QFont a -> IO ()
qFont_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFont_delete cobj_x0

foreign import ccall "qtc_QFont_delete" qtc_QFont_delete :: Ptr (TQFont a) -> IO ()

