{-# OPTIONS -fglasgow-exts -#include "../include/gui/qtc_hs_QTextFormat.h" #-}
-----------------------------------------------------------------------------
{-| Module    : QTextFormat.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:17
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QTextFormat (
  QqTextFormat(..)
  ,QqTextFormat_nf(..)
  ,boolProperty
  ,brushProperty
  ,clearBackground
  ,clearForeground
  ,clearProperty
  ,colorProperty
  ,doubleProperty
  ,hasProperty
  ,intProperty
  ,isBlockFormat
  ,isCharFormat
  ,isFrameFormat
  ,isImageFormat
  ,isListFormat
  ,isTableFormat
  ,lengthProperty
  ,objectIndex
  ,objectType
  ,penProperty
  ,Qproperty(..), Qproperty_nf(..)
  ,propertyCount
  ,setObjectIndex
  ,setObjectType
  ,setProperty
  ,stringProperty
  ,toBlockFormat
  ,toCharFormat
  ,toFrameFormat
  ,toImageFormat
  ,toListFormat
  ,toTableFormat
  ,qTextFormat_delete
  )
  where

import Foreign.C.Types
import Qth.ClassTypes.Core
import Qtc.Enums.Base
import Qtc.Enums.Core.Qt

import Qtc.Classes.Base
import Qtc.Classes.Qccs
import Qtc.Classes.Core
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core
import Qtc.Classes.Gui
import Qtc.ClassTypes.Gui

class QqTextFormat x1 where
  qTextFormat :: x1 -> IO (QTextFormat ())

instance QqTextFormat (()) where
 qTextFormat ()
  = withQTextFormatResult $
    qtc_QTextFormat

foreign import ccall "qtc_QTextFormat" qtc_QTextFormat :: IO (Ptr (TQTextFormat ()))

instance QqTextFormat ((QTextFormat t1)) where
 qTextFormat (x1)
  = withQTextFormatResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextFormat1 cobj_x1

foreign import ccall "qtc_QTextFormat1" qtc_QTextFormat1 :: Ptr (TQTextFormat t1) -> IO (Ptr (TQTextFormat ()))

instance QqTextFormat ((Int)) where
 qTextFormat (x1)
  = withQTextFormatResult $
    qtc_QTextFormat2 (toCInt x1)

foreign import ccall "qtc_QTextFormat2" qtc_QTextFormat2 :: CInt -> IO (Ptr (TQTextFormat ()))

class QqTextFormat_nf x1 where
  qTextFormat_nf :: x1 -> IO (QTextFormat ())

instance QqTextFormat_nf (()) where
 qTextFormat_nf ()
  = withObjectRefResult $
    qtc_QTextFormat

instance QqTextFormat_nf ((QTextFormat t1)) where
 qTextFormat_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextFormat1 cobj_x1

instance QqTextFormat_nf ((Int)) where
 qTextFormat_nf (x1)
  = withObjectRefResult $
    qtc_QTextFormat2 (toCInt x1)

instance Qbackground (QTextFormat a) (()) where
 background x0 ()
  = withQBrushResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextFormat_background cobj_x0

foreign import ccall "qtc_QTextFormat_background" qtc_QTextFormat_background :: Ptr (TQTextFormat a) -> IO (Ptr (TQBrush ()))

boolProperty :: QTextFormat a -> ((Int)) -> IO (Bool)
boolProperty x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextFormat_boolProperty cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTextFormat_boolProperty" qtc_QTextFormat_boolProperty :: Ptr (TQTextFormat a) -> CInt -> IO CBool

brushProperty :: QTextFormat a -> ((Int)) -> IO (QBrush ())
brushProperty x0 (x1)
  = withQBrushResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextFormat_brushProperty cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTextFormat_brushProperty" qtc_QTextFormat_brushProperty :: Ptr (TQTextFormat a) -> CInt -> IO (Ptr (TQBrush ()))

clearBackground :: QTextFormat a -> (()) -> IO ()
clearBackground x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextFormat_clearBackground cobj_x0

foreign import ccall "qtc_QTextFormat_clearBackground" qtc_QTextFormat_clearBackground :: Ptr (TQTextFormat a) -> IO ()

clearForeground :: QTextFormat a -> (()) -> IO ()
clearForeground x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextFormat_clearForeground cobj_x0

foreign import ccall "qtc_QTextFormat_clearForeground" qtc_QTextFormat_clearForeground :: Ptr (TQTextFormat a) -> IO ()

clearProperty :: QTextFormat a -> ((Int)) -> IO ()
clearProperty x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextFormat_clearProperty cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTextFormat_clearProperty" qtc_QTextFormat_clearProperty :: Ptr (TQTextFormat a) -> CInt -> IO ()

colorProperty :: QTextFormat a -> ((Int)) -> IO (QColor ())
colorProperty x0 (x1)
  = withQColorResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextFormat_colorProperty cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTextFormat_colorProperty" qtc_QTextFormat_colorProperty :: Ptr (TQTextFormat a) -> CInt -> IO (Ptr (TQColor ()))

doubleProperty :: QTextFormat a -> ((Int)) -> IO (Double)
doubleProperty x0 (x1)
  = withDoubleResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextFormat_doubleProperty cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTextFormat_doubleProperty" qtc_QTextFormat_doubleProperty :: Ptr (TQTextFormat a) -> CInt -> IO CDouble

instance Qforeground (QTextFormat a) (()) where
 foreground x0 ()
  = withQBrushResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextFormat_foreground cobj_x0

foreign import ccall "qtc_QTextFormat_foreground" qtc_QTextFormat_foreground :: Ptr (TQTextFormat a) -> IO (Ptr (TQBrush ()))

hasProperty :: QTextFormat a -> ((Int)) -> IO (Bool)
hasProperty x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextFormat_hasProperty cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTextFormat_hasProperty" qtc_QTextFormat_hasProperty :: Ptr (TQTextFormat a) -> CInt -> IO CBool

intProperty :: QTextFormat a -> ((Int)) -> IO (Int)
intProperty x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextFormat_intProperty cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTextFormat_intProperty" qtc_QTextFormat_intProperty :: Ptr (TQTextFormat a) -> CInt -> IO CInt

isBlockFormat :: QTextFormat a -> (()) -> IO (Bool)
isBlockFormat x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextFormat_isBlockFormat cobj_x0

foreign import ccall "qtc_QTextFormat_isBlockFormat" qtc_QTextFormat_isBlockFormat :: Ptr (TQTextFormat a) -> IO CBool

isCharFormat :: QTextFormat a -> (()) -> IO (Bool)
isCharFormat x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextFormat_isCharFormat cobj_x0

foreign import ccall "qtc_QTextFormat_isCharFormat" qtc_QTextFormat_isCharFormat :: Ptr (TQTextFormat a) -> IO CBool

isFrameFormat :: QTextFormat a -> (()) -> IO (Bool)
isFrameFormat x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextFormat_isFrameFormat cobj_x0

foreign import ccall "qtc_QTextFormat_isFrameFormat" qtc_QTextFormat_isFrameFormat :: Ptr (TQTextFormat a) -> IO CBool

isImageFormat :: QTextFormat a -> (()) -> IO (Bool)
isImageFormat x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextFormat_isImageFormat cobj_x0

foreign import ccall "qtc_QTextFormat_isImageFormat" qtc_QTextFormat_isImageFormat :: Ptr (TQTextFormat a) -> IO CBool

isListFormat :: QTextFormat a -> (()) -> IO (Bool)
isListFormat x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextFormat_isListFormat cobj_x0

foreign import ccall "qtc_QTextFormat_isListFormat" qtc_QTextFormat_isListFormat :: Ptr (TQTextFormat a) -> IO CBool

isTableFormat :: QTextFormat a -> (()) -> IO (Bool)
isTableFormat x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextFormat_isTableFormat cobj_x0

foreign import ccall "qtc_QTextFormat_isTableFormat" qtc_QTextFormat_isTableFormat :: Ptr (TQTextFormat a) -> IO CBool

instance QqisValid (QTextFormat ()) (()) where
 qisValid x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextFormat_isValid cobj_x0

foreign import ccall "qtc_QTextFormat_isValid" qtc_QTextFormat_isValid :: Ptr (TQTextFormat a) -> IO CBool

instance QqisValid (QTextFormatSc a) (()) where
 qisValid x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextFormat_isValid cobj_x0

instance QlayoutDirection (QTextFormat a) (()) where
 layoutDirection x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextFormat_layoutDirection cobj_x0

foreign import ccall "qtc_QTextFormat_layoutDirection" qtc_QTextFormat_layoutDirection :: Ptr (TQTextFormat a) -> IO CLong

lengthProperty :: QTextFormat a -> ((Int)) -> IO (QTextLength ())
lengthProperty x0 (x1)
  = withQTextLengthResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextFormat_lengthProperty cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTextFormat_lengthProperty" qtc_QTextFormat_lengthProperty :: Ptr (TQTextFormat a) -> CInt -> IO (Ptr (TQTextLength ()))

instance Qmerge (QTextFormat a) ((QTextFormat t1)) where
 merge x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextFormat_merge cobj_x0 cobj_x1

foreign import ccall "qtc_QTextFormat_merge" qtc_QTextFormat_merge :: Ptr (TQTextFormat a) -> Ptr (TQTextFormat t1) -> IO ()

objectIndex :: QTextFormat a -> (()) -> IO (Int)
objectIndex x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextFormat_objectIndex cobj_x0

foreign import ccall "qtc_QTextFormat_objectIndex" qtc_QTextFormat_objectIndex :: Ptr (TQTextFormat a) -> IO CInt

objectType :: QTextFormat a -> (()) -> IO (Int)
objectType x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextFormat_objectType cobj_x0

foreign import ccall "qtc_QTextFormat_objectType" qtc_QTextFormat_objectType :: Ptr (TQTextFormat a) -> IO CInt

penProperty :: QTextFormat a -> ((Int)) -> IO (QPen ())
penProperty x0 (x1)
  = withQPenResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextFormat_penProperty cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTextFormat_penProperty" qtc_QTextFormat_penProperty :: Ptr (TQTextFormat a) -> CInt -> IO (Ptr (TQPen ()))

class Qproperty x0 x1 where
 property :: x0 -> x1 -> IO (QVariant ())

class Qproperty_nf x0 x1 where
 property_nf :: x0 -> x1 -> IO (QVariant ())

instance Qproperty (QTextFormat ()) ((Int)) where
 property x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextFormat_property cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTextFormat_property" qtc_QTextFormat_property :: Ptr (TQTextFormat a) -> CInt -> IO (Ptr (TQVariant ()))

instance Qproperty (QTextFormatSc a) ((Int)) where
 property x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextFormat_property cobj_x0 (toCInt x1)

instance Qproperty_nf (QTextFormat ()) ((Int)) where
 property_nf x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextFormat_property cobj_x0 (toCInt x1)

instance Qproperty_nf (QTextFormatSc a) ((Int)) where
 property_nf x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextFormat_property cobj_x0 (toCInt x1)

propertyCount :: QTextFormat a -> (()) -> IO (Int)
propertyCount x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextFormat_propertyCount cobj_x0

foreign import ccall "qtc_QTextFormat_propertyCount" qtc_QTextFormat_propertyCount :: Ptr (TQTextFormat a) -> IO CInt

instance QsetBackground (QTextFormat a) ((QBrush t1)) where
 setBackground x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextFormat_setBackground cobj_x0 cobj_x1

foreign import ccall "qtc_QTextFormat_setBackground" qtc_QTextFormat_setBackground :: Ptr (TQTextFormat a) -> Ptr (TQBrush t1) -> IO ()

instance QsetForeground (QTextFormat a) ((QBrush t1)) where
 setForeground x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextFormat_setForeground cobj_x0 cobj_x1

foreign import ccall "qtc_QTextFormat_setForeground" qtc_QTextFormat_setForeground :: Ptr (TQTextFormat a) -> Ptr (TQBrush t1) -> IO ()

instance QsetLayoutDirection (QTextFormat a) ((LayoutDirection)) where
 setLayoutDirection x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextFormat_setLayoutDirection cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QTextFormat_setLayoutDirection" qtc_QTextFormat_setLayoutDirection :: Ptr (TQTextFormat a) -> CLong -> IO ()

setObjectIndex :: QTextFormat a -> ((Int)) -> IO ()
setObjectIndex x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextFormat_setObjectIndex cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTextFormat_setObjectIndex" qtc_QTextFormat_setObjectIndex :: Ptr (TQTextFormat a) -> CInt -> IO ()

setObjectType :: QTextFormat a -> ((Int)) -> IO ()
setObjectType x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextFormat_setObjectType cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTextFormat_setObjectType" qtc_QTextFormat_setObjectType :: Ptr (TQTextFormat a) -> CInt -> IO ()

setProperty :: QTextFormat a -> ((Int, QVariant t2)) -> IO ()
setProperty x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QTextFormat_setProperty cobj_x0 (toCInt x1) cobj_x2

foreign import ccall "qtc_QTextFormat_setProperty" qtc_QTextFormat_setProperty :: Ptr (TQTextFormat a) -> CInt -> Ptr (TQVariant t2) -> IO ()

stringProperty :: QTextFormat a -> ((Int)) -> IO (String)
stringProperty x0 (x1)
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextFormat_stringProperty cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTextFormat_stringProperty" qtc_QTextFormat_stringProperty :: Ptr (TQTextFormat a) -> CInt -> IO (Ptr (TQString ()))

toBlockFormat :: QTextFormat a -> (()) -> IO (QTextBlockFormat ())
toBlockFormat x0 ()
  = withQTextBlockFormatResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextFormat_toBlockFormat cobj_x0

foreign import ccall "qtc_QTextFormat_toBlockFormat" qtc_QTextFormat_toBlockFormat :: Ptr (TQTextFormat a) -> IO (Ptr (TQTextBlockFormat ()))

toCharFormat :: QTextFormat a -> (()) -> IO (QTextCharFormat ())
toCharFormat x0 ()
  = withQTextCharFormatResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextFormat_toCharFormat cobj_x0

foreign import ccall "qtc_QTextFormat_toCharFormat" qtc_QTextFormat_toCharFormat :: Ptr (TQTextFormat a) -> IO (Ptr (TQTextCharFormat ()))

toFrameFormat :: QTextFormat a -> (()) -> IO (QTextFrameFormat ())
toFrameFormat x0 ()
  = withQTextFrameFormatResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextFormat_toFrameFormat cobj_x0

foreign import ccall "qtc_QTextFormat_toFrameFormat" qtc_QTextFormat_toFrameFormat :: Ptr (TQTextFormat a) -> IO (Ptr (TQTextFrameFormat ()))

toImageFormat :: QTextFormat a -> (()) -> IO (QTextImageFormat ())
toImageFormat x0 ()
  = withQTextImageFormatResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextFormat_toImageFormat cobj_x0

foreign import ccall "qtc_QTextFormat_toImageFormat" qtc_QTextFormat_toImageFormat :: Ptr (TQTextFormat a) -> IO (Ptr (TQTextImageFormat ()))

toListFormat :: QTextFormat a -> (()) -> IO (QTextListFormat ())
toListFormat x0 ()
  = withQTextListFormatResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextFormat_toListFormat cobj_x0

foreign import ccall "qtc_QTextFormat_toListFormat" qtc_QTextFormat_toListFormat :: Ptr (TQTextFormat a) -> IO (Ptr (TQTextListFormat ()))

toTableFormat :: QTextFormat a -> (()) -> IO (QTextTableFormat ())
toTableFormat x0 ()
  = withQTextTableFormatResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextFormat_toTableFormat cobj_x0

foreign import ccall "qtc_QTextFormat_toTableFormat" qtc_QTextFormat_toTableFormat :: Ptr (TQTextFormat a) -> IO (Ptr (TQTextTableFormat ()))

instance Qqtype (QTextFormat a) (()) (IO (Int)) where
 qtype x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextFormat_type cobj_x0

foreign import ccall "qtc_QTextFormat_type" qtc_QTextFormat_type :: Ptr (TQTextFormat a) -> IO CInt

qTextFormat_delete :: QTextFormat a -> IO ()
qTextFormat_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextFormat_delete cobj_x0

foreign import ccall "qtc_QTextFormat_delete" qtc_QTextFormat_delete :: Ptr (TQTextFormat a) -> IO ()

