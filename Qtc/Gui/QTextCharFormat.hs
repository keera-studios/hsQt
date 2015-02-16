{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QTextCharFormat.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:21
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QTextCharFormat (
  QqTextCharFormat(..)
  ,QqTextCharFormat_nf(..)
  ,anchorHref
  ,anchorName
  ,anchorNames
  ,fontFixedPitch
  ,fontOverline
  ,fontStrikeOut
  ,isAnchor
  ,setAnchor
  ,setAnchorHref
  ,setAnchorName
  ,setAnchorNames
  ,setFontFixedPitch
  ,setFontOverline
  ,setFontStrikeOut
  ,setTableCellColumnSpan
  ,setTableCellRowSpan
  ,setTextOutline
  ,setUnderlineColor
  ,setUnderlineStyle
  ,setVerticalAlignment
  ,tableCellColumnSpan
  ,tableCellRowSpan
  ,textOutline
  ,underlineColor
  ,underlineStyle
  ,verticalAlignment
  ,qTextCharFormat_delete
  )
  where

import Foreign.C.Types
import Qth.ClassTypes.Core
import Qtc.Enums.Base
import Qtc.Enums.Gui.QTextCharFormat

import Qtc.Classes.Base
import Qtc.Classes.Qccs
import Qtc.Classes.Core
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core
import Qtc.Classes.Gui
import Qtc.ClassTypes.Gui

class QqTextCharFormat x1 where
  qTextCharFormat :: x1 -> IO (QTextCharFormat ())

instance QqTextCharFormat (()) where
 qTextCharFormat ()
  = withQTextCharFormatResult $
    qtc_QTextCharFormat

foreign import ccall "qtc_QTextCharFormat" qtc_QTextCharFormat :: IO (Ptr (TQTextCharFormat ()))

instance QqTextCharFormat ((QTextCharFormat t1)) where
 qTextCharFormat (x1)
  = withQTextCharFormatResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextCharFormat1 cobj_x1

foreign import ccall "qtc_QTextCharFormat1" qtc_QTextCharFormat1 :: Ptr (TQTextCharFormat t1) -> IO (Ptr (TQTextCharFormat ()))

class QqTextCharFormat_nf x1 where
  qTextCharFormat_nf :: x1 -> IO (QTextCharFormat ())

instance QqTextCharFormat_nf (()) where
 qTextCharFormat_nf ()
  = withObjectRefResult $
    qtc_QTextCharFormat

instance QqTextCharFormat_nf ((QTextCharFormat t1)) where
 qTextCharFormat_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextCharFormat1 cobj_x1

anchorHref :: QTextCharFormat a -> (()) -> IO (String)
anchorHref x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextCharFormat_anchorHref cobj_x0

foreign import ccall "qtc_QTextCharFormat_anchorHref" qtc_QTextCharFormat_anchorHref :: Ptr (TQTextCharFormat a) -> IO (Ptr (TQString ()))

anchorName :: QTextCharFormat a -> (()) -> IO (String)
anchorName x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextCharFormat_anchorName cobj_x0

foreign import ccall "qtc_QTextCharFormat_anchorName" qtc_QTextCharFormat_anchorName :: Ptr (TQTextCharFormat a) -> IO (Ptr (TQString ()))

anchorNames :: QTextCharFormat a -> (()) -> IO ([String])
anchorNames x0 ()
  = withQListStringResult $ \arr ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextCharFormat_anchorNames cobj_x0 arr

foreign import ccall "qtc_QTextCharFormat_anchorNames" qtc_QTextCharFormat_anchorNames :: Ptr (TQTextCharFormat a) -> Ptr (Ptr (TQString ())) -> IO CInt

instance Qfont (QTextCharFormat a) (()) where
 font x0 ()
  = withQFontResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextCharFormat_font cobj_x0

foreign import ccall "qtc_QTextCharFormat_font" qtc_QTextCharFormat_font :: Ptr (TQTextCharFormat a) -> IO (Ptr (TQFont ()))

instance QfontFamily (QTextCharFormat a) (()) where
 fontFamily x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextCharFormat_fontFamily cobj_x0

foreign import ccall "qtc_QTextCharFormat_fontFamily" qtc_QTextCharFormat_fontFamily :: Ptr (TQTextCharFormat a) -> IO (Ptr (TQString ()))

fontFixedPitch :: QTextCharFormat a -> (()) -> IO (Bool)
fontFixedPitch x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextCharFormat_fontFixedPitch cobj_x0

foreign import ccall "qtc_QTextCharFormat_fontFixedPitch" qtc_QTextCharFormat_fontFixedPitch :: Ptr (TQTextCharFormat a) -> IO CBool

instance QfontItalic (QTextCharFormat a) (()) where
 fontItalic x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextCharFormat_fontItalic cobj_x0

foreign import ccall "qtc_QTextCharFormat_fontItalic" qtc_QTextCharFormat_fontItalic :: Ptr (TQTextCharFormat a) -> IO CBool

fontOverline :: QTextCharFormat a -> (()) -> IO (Bool)
fontOverline x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextCharFormat_fontOverline cobj_x0

foreign import ccall "qtc_QTextCharFormat_fontOverline" qtc_QTextCharFormat_fontOverline :: Ptr (TQTextCharFormat a) -> IO CBool

instance QfontPointSize (QTextCharFormat a) (()) where
 fontPointSize x0 ()
  = withDoubleResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextCharFormat_fontPointSize cobj_x0

foreign import ccall "qtc_QTextCharFormat_fontPointSize" qtc_QTextCharFormat_fontPointSize :: Ptr (TQTextCharFormat a) -> IO CDouble

fontStrikeOut :: QTextCharFormat a -> (()) -> IO (Bool)
fontStrikeOut x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextCharFormat_fontStrikeOut cobj_x0

foreign import ccall "qtc_QTextCharFormat_fontStrikeOut" qtc_QTextCharFormat_fontStrikeOut :: Ptr (TQTextCharFormat a) -> IO CBool

instance QfontUnderline (QTextCharFormat a) (()) where
 fontUnderline x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextCharFormat_fontUnderline cobj_x0

foreign import ccall "qtc_QTextCharFormat_fontUnderline" qtc_QTextCharFormat_fontUnderline :: Ptr (TQTextCharFormat a) -> IO CBool

instance QfontWeight (QTextCharFormat a) (()) where
 fontWeight x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextCharFormat_fontWeight cobj_x0

foreign import ccall "qtc_QTextCharFormat_fontWeight" qtc_QTextCharFormat_fontWeight :: Ptr (TQTextCharFormat a) -> IO CInt

isAnchor :: QTextCharFormat a -> (()) -> IO (Bool)
isAnchor x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextCharFormat_isAnchor cobj_x0

foreign import ccall "qtc_QTextCharFormat_isAnchor" qtc_QTextCharFormat_isAnchor :: Ptr (TQTextCharFormat a) -> IO CBool

instance QqisValid (QTextCharFormat ()) (()) where
 qisValid x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextCharFormat_isValid cobj_x0

foreign import ccall "qtc_QTextCharFormat_isValid" qtc_QTextCharFormat_isValid :: Ptr (TQTextCharFormat a) -> IO CBool

instance QqisValid (QTextCharFormatSc a) (()) where
 qisValid x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextCharFormat_isValid cobj_x0

setAnchor :: QTextCharFormat a -> ((Bool)) -> IO ()
setAnchor x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextCharFormat_setAnchor cobj_x0 (toCBool x1)

foreign import ccall "qtc_QTextCharFormat_setAnchor" qtc_QTextCharFormat_setAnchor :: Ptr (TQTextCharFormat a) -> CBool -> IO ()

setAnchorHref :: QTextCharFormat a -> ((String)) -> IO ()
setAnchorHref x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTextCharFormat_setAnchorHref cobj_x0 cstr_x1

foreign import ccall "qtc_QTextCharFormat_setAnchorHref" qtc_QTextCharFormat_setAnchorHref :: Ptr (TQTextCharFormat a) -> CWString -> IO ()

setAnchorName :: QTextCharFormat a -> ((String)) -> IO ()
setAnchorName x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTextCharFormat_setAnchorName cobj_x0 cstr_x1

foreign import ccall "qtc_QTextCharFormat_setAnchorName" qtc_QTextCharFormat_setAnchorName :: Ptr (TQTextCharFormat a) -> CWString -> IO ()

setAnchorNames :: QTextCharFormat a -> (([String])) -> IO ()
setAnchorNames x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withQListString x1 $ \cqlistlen_x1 cqliststr_x1 ->
    qtc_QTextCharFormat_setAnchorNames cobj_x0 cqlistlen_x1 cqliststr_x1

foreign import ccall "qtc_QTextCharFormat_setAnchorNames" qtc_QTextCharFormat_setAnchorNames :: Ptr (TQTextCharFormat a) -> CInt -> Ptr (Ptr CWchar) -> IO ()

instance QsetFont (QTextCharFormat a) ((QFont t1)) where
 setFont x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextCharFormat_setFont cobj_x0 cobj_x1

foreign import ccall "qtc_QTextCharFormat_setFont" qtc_QTextCharFormat_setFont :: Ptr (TQTextCharFormat a) -> Ptr (TQFont t1) -> IO ()

instance QsetFontFamily (QTextCharFormat a) ((String)) where
 setFontFamily x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTextCharFormat_setFontFamily cobj_x0 cstr_x1

foreign import ccall "qtc_QTextCharFormat_setFontFamily" qtc_QTextCharFormat_setFontFamily :: Ptr (TQTextCharFormat a) -> CWString -> IO ()

setFontFixedPitch :: QTextCharFormat a -> ((Bool)) -> IO ()
setFontFixedPitch x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextCharFormat_setFontFixedPitch cobj_x0 (toCBool x1)

foreign import ccall "qtc_QTextCharFormat_setFontFixedPitch" qtc_QTextCharFormat_setFontFixedPitch :: Ptr (TQTextCharFormat a) -> CBool -> IO ()

instance QsetFontItalic (QTextCharFormat a) ((Bool)) where
 setFontItalic x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextCharFormat_setFontItalic cobj_x0 (toCBool x1)

foreign import ccall "qtc_QTextCharFormat_setFontItalic" qtc_QTextCharFormat_setFontItalic :: Ptr (TQTextCharFormat a) -> CBool -> IO ()

setFontOverline :: QTextCharFormat a -> ((Bool)) -> IO ()
setFontOverline x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextCharFormat_setFontOverline cobj_x0 (toCBool x1)

foreign import ccall "qtc_QTextCharFormat_setFontOverline" qtc_QTextCharFormat_setFontOverline :: Ptr (TQTextCharFormat a) -> CBool -> IO ()

instance QsetFontPointSize (QTextCharFormat a) ((Double)) where
 setFontPointSize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextCharFormat_setFontPointSize cobj_x0 (toCDouble x1)

foreign import ccall "qtc_QTextCharFormat_setFontPointSize" qtc_QTextCharFormat_setFontPointSize :: Ptr (TQTextCharFormat a) -> CDouble -> IO ()

setFontStrikeOut :: QTextCharFormat a -> ((Bool)) -> IO ()
setFontStrikeOut x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextCharFormat_setFontStrikeOut cobj_x0 (toCBool x1)

foreign import ccall "qtc_QTextCharFormat_setFontStrikeOut" qtc_QTextCharFormat_setFontStrikeOut :: Ptr (TQTextCharFormat a) -> CBool -> IO ()

instance QsetFontUnderline (QTextCharFormat a) ((Bool)) where
 setFontUnderline x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextCharFormat_setFontUnderline cobj_x0 (toCBool x1)

foreign import ccall "qtc_QTextCharFormat_setFontUnderline" qtc_QTextCharFormat_setFontUnderline :: Ptr (TQTextCharFormat a) -> CBool -> IO ()

instance QsetFontWeight (QTextCharFormat a) ((Int)) where
 setFontWeight x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextCharFormat_setFontWeight cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTextCharFormat_setFontWeight" qtc_QTextCharFormat_setFontWeight :: Ptr (TQTextCharFormat a) -> CInt -> IO ()

setTableCellColumnSpan :: QTextCharFormat a -> ((Int)) -> IO ()
setTableCellColumnSpan x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextCharFormat_setTableCellColumnSpan cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTextCharFormat_setTableCellColumnSpan" qtc_QTextCharFormat_setTableCellColumnSpan :: Ptr (TQTextCharFormat a) -> CInt -> IO ()

setTableCellRowSpan :: QTextCharFormat a -> ((Int)) -> IO ()
setTableCellRowSpan x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextCharFormat_setTableCellRowSpan cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTextCharFormat_setTableCellRowSpan" qtc_QTextCharFormat_setTableCellRowSpan :: Ptr (TQTextCharFormat a) -> CInt -> IO ()

setTextOutline :: QTextCharFormat a -> ((QPen t1)) -> IO ()
setTextOutline x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextCharFormat_setTextOutline cobj_x0 cobj_x1

foreign import ccall "qtc_QTextCharFormat_setTextOutline" qtc_QTextCharFormat_setTextOutline :: Ptr (TQTextCharFormat a) -> Ptr (TQPen t1) -> IO ()

instance QsetToolTip (QTextCharFormat a) ((String)) where
 setToolTip x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTextCharFormat_setToolTip cobj_x0 cstr_x1

foreign import ccall "qtc_QTextCharFormat_setToolTip" qtc_QTextCharFormat_setToolTip :: Ptr (TQTextCharFormat a) -> CWString -> IO ()

setUnderlineColor :: QTextCharFormat a -> ((QColor t1)) -> IO ()
setUnderlineColor x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextCharFormat_setUnderlineColor cobj_x0 cobj_x1

foreign import ccall "qtc_QTextCharFormat_setUnderlineColor" qtc_QTextCharFormat_setUnderlineColor :: Ptr (TQTextCharFormat a) -> Ptr (TQColor t1) -> IO ()

setUnderlineStyle :: QTextCharFormat a -> ((UnderlineStyle)) -> IO ()
setUnderlineStyle x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextCharFormat_setUnderlineStyle cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QTextCharFormat_setUnderlineStyle" qtc_QTextCharFormat_setUnderlineStyle :: Ptr (TQTextCharFormat a) -> CLong -> IO ()

setVerticalAlignment :: QTextCharFormat a -> ((VerticalAlignment)) -> IO ()
setVerticalAlignment x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextCharFormat_setVerticalAlignment cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QTextCharFormat_setVerticalAlignment" qtc_QTextCharFormat_setVerticalAlignment :: Ptr (TQTextCharFormat a) -> CLong -> IO ()

tableCellColumnSpan :: QTextCharFormat a -> (()) -> IO (Int)
tableCellColumnSpan x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextCharFormat_tableCellColumnSpan cobj_x0

foreign import ccall "qtc_QTextCharFormat_tableCellColumnSpan" qtc_QTextCharFormat_tableCellColumnSpan :: Ptr (TQTextCharFormat a) -> IO CInt

tableCellRowSpan :: QTextCharFormat a -> (()) -> IO (Int)
tableCellRowSpan x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextCharFormat_tableCellRowSpan cobj_x0

foreign import ccall "qtc_QTextCharFormat_tableCellRowSpan" qtc_QTextCharFormat_tableCellRowSpan :: Ptr (TQTextCharFormat a) -> IO CInt

textOutline :: QTextCharFormat a -> (()) -> IO (QPen ())
textOutline x0 ()
  = withQPenResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextCharFormat_textOutline cobj_x0

foreign import ccall "qtc_QTextCharFormat_textOutline" qtc_QTextCharFormat_textOutline :: Ptr (TQTextCharFormat a) -> IO (Ptr (TQPen ()))

instance QtoolTip (QTextCharFormat a) (()) where
 toolTip x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextCharFormat_toolTip cobj_x0

foreign import ccall "qtc_QTextCharFormat_toolTip" qtc_QTextCharFormat_toolTip :: Ptr (TQTextCharFormat a) -> IO (Ptr (TQString ()))

underlineColor :: QTextCharFormat a -> (()) -> IO (QColor ())
underlineColor x0 ()
  = withQColorResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextCharFormat_underlineColor cobj_x0

foreign import ccall "qtc_QTextCharFormat_underlineColor" qtc_QTextCharFormat_underlineColor :: Ptr (TQTextCharFormat a) -> IO (Ptr (TQColor ()))

underlineStyle :: QTextCharFormat a -> (()) -> IO (UnderlineStyle)
underlineStyle x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextCharFormat_underlineStyle cobj_x0

foreign import ccall "qtc_QTextCharFormat_underlineStyle" qtc_QTextCharFormat_underlineStyle :: Ptr (TQTextCharFormat a) -> IO CLong

verticalAlignment :: QTextCharFormat a -> (()) -> IO (VerticalAlignment)
verticalAlignment x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextCharFormat_verticalAlignment cobj_x0

foreign import ccall "qtc_QTextCharFormat_verticalAlignment" qtc_QTextCharFormat_verticalAlignment :: Ptr (TQTextCharFormat a) -> IO CLong

qTextCharFormat_delete :: QTextCharFormat a -> IO ()
qTextCharFormat_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextCharFormat_delete cobj_x0

foreign import ccall "qtc_QTextCharFormat_delete" qtc_QTextCharFormat_delete :: Ptr (TQTextCharFormat a) -> IO ()

