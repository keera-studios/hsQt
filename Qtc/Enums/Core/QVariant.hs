{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QVariant.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:36
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Enums.Core.QVariant (
 QVariantType, eBool, eInt, eUInt, eLongLong, eULongLong, eDouble, eChar, eMap, eString, eStringList, eByteArray, eBitArray, eDate, eDateTime, eUrl, eLocale, eRect, eRectF, eSizeF, eLineF, ePoint, ePointF, eLastCoreType, ePixmap, eBrush, ePalette, eIcon, eImage, ePolygon, eRegion, eBitmap, eSizePolicy, eKeySequence, eTextLength, eMatrix, eTransform, eLastGuiType, eLastType
 )
 where

import Foreign.C.Types
import Qtc.Classes.Base
import Qtc.ClassTypes.Core (QObject, TQObject, qObjectFromPtr)
import Qtc.Core.Base (Qcs, connectSlot, qtc_connectSlot_int, wrapSlotHandler_int)
import Qtc.Enums.Base
import Qtc.Enums.Classes.Core

data CQVariantType a = CQVariantType a
type QVariantType = QEnum(CQVariantType Int)

ieQVariantType :: Int -> QVariantType
ieQVariantType x = QEnum (CQVariantType x)

instance QEnumC (CQVariantType Int) where
 qEnum_toInt (QEnum (CQVariantType x)) = x
 qEnum_fromInt x = QEnum (CQVariantType x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> QVariantType -> IO ()) where
 connectSlot _qsig_obj _qsig_nam _qslt_obj _qslt_nam _handler
  = do
    funptr  <- wrapSlotHandler_int slotHandlerWrapper_int
    stptr   <- newStablePtr (Wrap _handler)
    withObjectPtr _qsig_obj $ \cobj_sig ->
      withCWString _qsig_nam $ \cstr_sig ->
      withObjectPtr _qslt_obj $ \cobj_slt ->
      withCWString _qslt_nam $ \cstr_slt ->
      qtc_connectSlot_int cobj_sig cstr_sig cobj_slt cstr_slt (toCFunPtr funptr) (castStablePtrToPtr stptr)
    return ()
  where
    slotHandlerWrapper_int :: Ptr fun -> Ptr () -> Ptr (TQObject c) -> CInt -> IO ()
    slotHandlerWrapper_int funptr stptr qobjptr cint
      = do qobj <- qObjectFromPtr qobjptr
           let hint = fromCInt cint
           if (objectIsNull qobj)
            then do when (stptr/=ptrNull)
                      (freeStablePtr (castPtrToStablePtr stptr))
                    when (funptr/=ptrNull)
                      (freeHaskellFunPtr (castPtrToFunPtr funptr))
            else _handler qobj (qEnum_fromInt hint)
           return ()

instance QeInvalid QVariantType where
 eInvalid
  = ieQVariantType $ 0
eBool :: QVariantType
eBool
  = ieQVariantType $ 1
eInt :: QVariantType
eInt
  = ieQVariantType $ 2
eUInt :: QVariantType
eUInt
  = ieQVariantType $ 3
eLongLong :: QVariantType
eLongLong
  = ieQVariantType $ 4
eULongLong :: QVariantType
eULongLong
  = ieQVariantType $ 5
eDouble :: QVariantType
eDouble
  = ieQVariantType $ 6
eChar :: QVariantType
eChar
  = ieQVariantType $ 7
eMap :: QVariantType
eMap
  = ieQVariantType $ 8
instance QeList QVariantType where
 eList
  = ieQVariantType $ 9
eString :: QVariantType
eString
  = ieQVariantType $ 10
eStringList :: QVariantType
eStringList
  = ieQVariantType $ 11
eByteArray :: QVariantType
eByteArray
  = ieQVariantType $ 12
eBitArray :: QVariantType
eBitArray
  = ieQVariantType $ 13
eDate :: QVariantType
eDate
  = ieQVariantType $ 14
instance QeTime QVariantType where
 eTime
  = ieQVariantType $ 15
eDateTime :: QVariantType
eDateTime
  = ieQVariantType $ 16
eUrl :: QVariantType
eUrl
  = ieQVariantType $ 17
eLocale :: QVariantType
eLocale
  = ieQVariantType $ 18
eRect :: QVariantType
eRect
  = ieQVariantType $ 19
eRectF :: QVariantType
eRectF
  = ieQVariantType $ 20
instance QeSize QVariantType where
 eSize
  = ieQVariantType $ 21
eSizeF :: QVariantType
eSizeF
  = ieQVariantType $ 22
instance QeLine QVariantType where
 eLine
  = ieQVariantType $ 23
eLineF :: QVariantType
eLineF
  = ieQVariantType $ 24
ePoint :: QVariantType
ePoint
  = ieQVariantType $ 25
ePointF :: QVariantType
ePointF
  = ieQVariantType $ 26
instance QeRegExp QVariantType where
 eRegExp
  = ieQVariantType $ 27
eLastCoreType :: QVariantType
eLastCoreType
  = ieQVariantType $ 27
instance QeFont QVariantType where
 eFont
  = ieQVariantType $ 64
ePixmap :: QVariantType
ePixmap
  = ieQVariantType $ 65
eBrush :: QVariantType
eBrush
  = ieQVariantType $ 66
instance QeColor QVariantType where
 eColor
  = ieQVariantType $ 67
ePalette :: QVariantType
ePalette
  = ieQVariantType $ 68
eIcon :: QVariantType
eIcon
  = ieQVariantType $ 69
eImage :: QVariantType
eImage
  = ieQVariantType $ 70
ePolygon :: QVariantType
ePolygon
  = ieQVariantType $ 71
eRegion :: QVariantType
eRegion
  = ieQVariantType $ 72
eBitmap :: QVariantType
eBitmap
  = ieQVariantType $ 73
instance QeCursor QVariantType where
 eCursor
  = ieQVariantType $ 74
eSizePolicy :: QVariantType
eSizePolicy
  = ieQVariantType $ 75
eKeySequence :: QVariantType
eKeySequence
  = ieQVariantType $ 76
instance QePen QVariantType where
 ePen
  = ieQVariantType $ 77
eTextLength :: QVariantType
eTextLength
  = ieQVariantType $ 78
instance QeTextFormat QVariantType where
 eTextFormat
  = ieQVariantType $ 79
eMatrix :: QVariantType
eMatrix
  = ieQVariantType $ 80
eTransform :: QVariantType
eTransform
  = ieQVariantType $ 81
eLastGuiType :: QVariantType
eLastGuiType
  = ieQVariantType $ 81
instance QeUserType QVariantType where
 eUserType
  = ieQVariantType $ 127
eLastType :: QVariantType
eLastType
  = ieQVariantType $ -1

