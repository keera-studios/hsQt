{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QTextFormat.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:35
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Enums.Gui.QTextFormat (
 QTextFormatFormatType, eBlockFormat, eCharFormat, eListFormat, eTableFormat, eFrameFormat, eUserFormat
 , Property, eObjectIndex, eCssFloat, eLayoutDirection, eOutlinePen, eBackgroundBrush, eForegroundBrush, eBlockAlignment, eBlockTopMargin, eBlockBottomMargin, eBlockLeftMargin, eBlockRightMargin, eTextIndent, eBlockIndent, eBlockNonBreakableLines, eBlockTrailingHorizontalRulerWidth, eFontFamily, eFontPointSize, eFontSizeAdjustment, eFontSizeIncrement, eFontWeight, eFontItalic, eFontUnderline, eFontOverline, eFontStrikeOut, eFontFixedPitch, eFontPixelSize, eTextUnderlineColor, eTextVerticalAlignment, eTextOutline, eTextUnderlineStyle, eTextToolTip, eIsAnchor, eObjectType, eListStyle, eListIndent, eFrameBorder, eFrameMargin, eFramePadding, eFrameWidth, eFrameHeight, eFrameTopMargin, eFrameBottomMargin, eFrameLeftMargin, eFrameRightMargin, eFrameBorderBrush, eFrameBorderStyle, eTableColumns, eTableColumnWidthConstraints, eTableCellSpacing, eTableCellPadding, eTableHeaderRowCount, eTableCellRowSpan, eTableCellColumnSpan, eImageName, eImageWidth, eImageHeight, eFullWidthSelection, ePageBreakPolicy, eUserProperty
 , ObjectTypes, eNoObject, eImageObject, eTableObject, eUserObject
 , PageBreakFlag, PageBreakFlags, ePageBreak_Auto, fPageBreak_Auto, ePageBreak_AlwaysBefore, fPageBreak_AlwaysBefore, ePageBreak_AlwaysAfter, fPageBreak_AlwaysAfter
 )
 where

import Foreign.C.Types
import Qtc.Classes.Base
import Qtc.ClassTypes.Core (QObject, TQObject, qObjectFromPtr)
import Qtc.Core.Base (Qcs, connectSlot, qtc_connectSlot_int, wrapSlotHandler_int)
import Qtc.Enums.Base
import Qtc.Enums.Classes.Core

data CQTextFormatFormatType a = CQTextFormatFormatType a
type QTextFormatFormatType = QEnum(CQTextFormatFormatType Int)

ieQTextFormatFormatType :: Int -> QTextFormatFormatType
ieQTextFormatFormatType x = QEnum (CQTextFormatFormatType x)

instance QEnumC (CQTextFormatFormatType Int) where
 qEnum_toInt (QEnum (CQTextFormatFormatType x)) = x
 qEnum_fromInt x = QEnum (CQTextFormatFormatType x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> QTextFormatFormatType -> IO ()) where
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

instance QeInvalidFormat QTextFormatFormatType where
 eInvalidFormat
  = ieQTextFormatFormatType $ -1
eBlockFormat :: QTextFormatFormatType
eBlockFormat
  = ieQTextFormatFormatType $ 1
eCharFormat :: QTextFormatFormatType
eCharFormat
  = ieQTextFormatFormatType $ 2
eListFormat :: QTextFormatFormatType
eListFormat
  = ieQTextFormatFormatType $ 3
eTableFormat :: QTextFormatFormatType
eTableFormat
  = ieQTextFormatFormatType $ 4
eFrameFormat :: QTextFormatFormatType
eFrameFormat
  = ieQTextFormatFormatType $ 5
eUserFormat :: QTextFormatFormatType
eUserFormat
  = ieQTextFormatFormatType $ 100

data CProperty a = CProperty a
type Property = QEnum(CProperty Int)

ieProperty :: Int -> Property
ieProperty x = QEnum (CProperty x)

instance QEnumC (CProperty Int) where
 qEnum_toInt (QEnum (CProperty x)) = x
 qEnum_fromInt x = QEnum (CProperty x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> Property -> IO ()) where
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

eObjectIndex :: Property
eObjectIndex
  = ieProperty $ 0
eCssFloat :: Property
eCssFloat
  = ieProperty $ 2048
eLayoutDirection :: Property
eLayoutDirection
  = ieProperty $ 2049
eOutlinePen :: Property
eOutlinePen
  = ieProperty $ 2064
eBackgroundBrush :: Property
eBackgroundBrush
  = ieProperty $ 2080
eForegroundBrush :: Property
eForegroundBrush
  = ieProperty $ 2081
eBlockAlignment :: Property
eBlockAlignment
  = ieProperty $ 4112
eBlockTopMargin :: Property
eBlockTopMargin
  = ieProperty $ 4144
eBlockBottomMargin :: Property
eBlockBottomMargin
  = ieProperty $ 4145
eBlockLeftMargin :: Property
eBlockLeftMargin
  = ieProperty $ 4146
eBlockRightMargin :: Property
eBlockRightMargin
  = ieProperty $ 4147
eTextIndent :: Property
eTextIndent
  = ieProperty $ 4148
eBlockIndent :: Property
eBlockIndent
  = ieProperty $ 4160
eBlockNonBreakableLines :: Property
eBlockNonBreakableLines
  = ieProperty $ 4176
eBlockTrailingHorizontalRulerWidth :: Property
eBlockTrailingHorizontalRulerWidth
  = ieProperty $ 4192
eFontFamily :: Property
eFontFamily
  = ieProperty $ 8192
eFontPointSize :: Property
eFontPointSize
  = ieProperty $ 8193
eFontSizeAdjustment :: Property
eFontSizeAdjustment
  = ieProperty $ 8194
eFontSizeIncrement :: Property
eFontSizeIncrement
  = ieProperty $ 8194
eFontWeight :: Property
eFontWeight
  = ieProperty $ 8195
eFontItalic :: Property
eFontItalic
  = ieProperty $ 8196
eFontUnderline :: Property
eFontUnderline
  = ieProperty $ 8197
eFontOverline :: Property
eFontOverline
  = ieProperty $ 8198
eFontStrikeOut :: Property
eFontStrikeOut
  = ieProperty $ 8199
eFontFixedPitch :: Property
eFontFixedPitch
  = ieProperty $ 8200
eFontPixelSize :: Property
eFontPixelSize
  = ieProperty $ 8201
eTextUnderlineColor :: Property
eTextUnderlineColor
  = ieProperty $ 8208
eTextVerticalAlignment :: Property
eTextVerticalAlignment
  = ieProperty $ 8225
eTextOutline :: Property
eTextOutline
  = ieProperty $ 8226
eTextUnderlineStyle :: Property
eTextUnderlineStyle
  = ieProperty $ 8227
eTextToolTip :: Property
eTextToolTip
  = ieProperty $ 8228
eIsAnchor :: Property
eIsAnchor
  = ieProperty $ 8240
instance QeAnchorHref Property where
 eAnchorHref
  = ieProperty $ 8241
instance QeAnchorName Property where
 eAnchorName
  = ieProperty $ 8242
eObjectType :: Property
eObjectType
  = ieProperty $ 12032
eListStyle :: Property
eListStyle
  = ieProperty $ 12288
eListIndent :: Property
eListIndent
  = ieProperty $ 12289
eFrameBorder :: Property
eFrameBorder
  = ieProperty $ 16384
eFrameMargin :: Property
eFrameMargin
  = ieProperty $ 16385
eFramePadding :: Property
eFramePadding
  = ieProperty $ 16386
eFrameWidth :: Property
eFrameWidth
  = ieProperty $ 16387
eFrameHeight :: Property
eFrameHeight
  = ieProperty $ 16388
eFrameTopMargin :: Property
eFrameTopMargin
  = ieProperty $ 16389
eFrameBottomMargin :: Property
eFrameBottomMargin
  = ieProperty $ 16390
eFrameLeftMargin :: Property
eFrameLeftMargin
  = ieProperty $ 16391
eFrameRightMargin :: Property
eFrameRightMargin
  = ieProperty $ 16392
eFrameBorderBrush :: Property
eFrameBorderBrush
  = ieProperty $ 16393
eFrameBorderStyle :: Property
eFrameBorderStyle
  = ieProperty $ 16400
eTableColumns :: Property
eTableColumns
  = ieProperty $ 16640
eTableColumnWidthConstraints :: Property
eTableColumnWidthConstraints
  = ieProperty $ 16641
eTableCellSpacing :: Property
eTableCellSpacing
  = ieProperty $ 16642
eTableCellPadding :: Property
eTableCellPadding
  = ieProperty $ 16643
eTableHeaderRowCount :: Property
eTableHeaderRowCount
  = ieProperty $ 16644
eTableCellRowSpan :: Property
eTableCellRowSpan
  = ieProperty $ 18448
eTableCellColumnSpan :: Property
eTableCellColumnSpan
  = ieProperty $ 18449
eImageName :: Property
eImageName
  = ieProperty $ 20480
eImageWidth :: Property
eImageWidth
  = ieProperty $ 20496
eImageHeight :: Property
eImageHeight
  = ieProperty $ 20497
eFullWidthSelection :: Property
eFullWidthSelection
  = ieProperty $ 24576
ePageBreakPolicy :: Property
ePageBreakPolicy
  = ieProperty $ 28672
eUserProperty :: Property
eUserProperty
  = ieProperty $ 1048576

data CObjectTypes a = CObjectTypes a
type ObjectTypes = QEnum(CObjectTypes Int)

ieObjectTypes :: Int -> ObjectTypes
ieObjectTypes x = QEnum (CObjectTypes x)

instance QEnumC (CObjectTypes Int) where
 qEnum_toInt (QEnum (CObjectTypes x)) = x
 qEnum_fromInt x = QEnum (CObjectTypes x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> ObjectTypes -> IO ()) where
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

eNoObject :: ObjectTypes
eNoObject
  = ieObjectTypes $ 0
eImageObject :: ObjectTypes
eImageObject
  = ieObjectTypes $ 1
eTableObject :: ObjectTypes
eTableObject
  = ieObjectTypes $ 2
eUserObject :: ObjectTypes
eUserObject
  = ieObjectTypes $ 4096

data CPageBreakFlag a = CPageBreakFlag a
type PageBreakFlag = QEnum(CPageBreakFlag Int)

iePageBreakFlag :: Int -> PageBreakFlag
iePageBreakFlag x = QEnum (CPageBreakFlag x)

instance QEnumC (CPageBreakFlag Int) where
 qEnum_toInt (QEnum (CPageBreakFlag x)) = x
 qEnum_fromInt x = QEnum (CPageBreakFlag x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> PageBreakFlag -> IO ()) where
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

data CPageBreakFlags a = CPageBreakFlags a
type PageBreakFlags = QFlags(CPageBreakFlags Int)

ifPageBreakFlags :: Int -> PageBreakFlags
ifPageBreakFlags x = QFlags (CPageBreakFlags x)

instance QFlagsC (CPageBreakFlags Int) where
 qFlags_toInt (QFlags (CPageBreakFlags x)) = x
 qFlags_fromInt x = QFlags (CPageBreakFlags x)
 withQFlagsResult x
   = do
     ti <- x
     return $ qFlags_fromInt $ fromIntegral ti
 withQFlagsListResult x
   = do
     til <- x
     return $ map qFlags_fromInt til

instance Qcs (QObject c -> PageBreakFlags -> IO ()) where
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
            else _handler qobj (qFlags_fromInt hint)
           return ()

ePageBreak_Auto :: PageBreakFlag
ePageBreak_Auto
  = iePageBreakFlag $ 0
ePageBreak_AlwaysBefore :: PageBreakFlag
ePageBreak_AlwaysBefore
  = iePageBreakFlag $ 1
ePageBreak_AlwaysAfter :: PageBreakFlag
ePageBreak_AlwaysAfter
  = iePageBreakFlag $ 16

fPageBreak_Auto :: PageBreakFlags
fPageBreak_Auto
  = ifPageBreakFlags $ 0
fPageBreak_AlwaysBefore :: PageBreakFlags
fPageBreak_AlwaysBefore
  = ifPageBreakFlags $ 1
fPageBreak_AlwaysAfter :: PageBreakFlags
fPageBreak_AlwaysAfter
  = ifPageBreakFlags $ 16

