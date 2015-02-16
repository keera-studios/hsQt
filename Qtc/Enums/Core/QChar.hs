{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QChar.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:36
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Enums.Core.QChar (
 SpecialCharacter, eNbsp, eReplacementCharacter, eObjectReplacementCharacter, eByteOrderMark, eByteOrderSwapped, eParagraphSeparator, eLineSeparator
 , Category, eNoCategory, eMark_NonSpacing, eMark_SpacingCombining, eMark_Enclosing, eNumber_DecimalDigit, eNumber_Letter, eNumber_Other, eSeparator_Space, eSeparator_Line, eSeparator_Paragraph, eOther_Control, eOther_Format, eOther_Surrogate, eOther_PrivateUse, eOther_NotAssigned, eLetter_Uppercase, eLetter_Lowercase, eLetter_Titlecase, eLetter_Modifier, eLetter_Other, ePunctuation_Connector, ePunctuation_Dash, ePunctuation_Open, ePunctuation_Close, ePunctuation_InitialQuote, ePunctuation_FinalQuote, ePunctuation_Other, eSymbol_Math, eSymbol_Currency, eSymbol_Modifier, eSymbol_Other, ePunctuation_Dask
 , QCharDirection, eDirL, eDirR, eDirEN, eDirES, eDirET, eDirAN, eDirCS, eDirB, eDirS, eDirWS, eDirON, eDirLRE, eDirLRO, eDirAL, eDirRLE, eDirRLO, eDirPDF, eDirNSM, eDirBN
 , Decomposition, eNoDecomposition, eCanonical, eNoBreak, eInitial, eMedial, eFinal, eIsolated, eCircle, eSuper, eSub, eWide, eNarrow, eSmall, eSquare, eCompat, eFraction
 , Joining, eOtherJoining, eDual, eCenter
 , CombiningClass, eCombining_BelowLeftAttached, eCombining_BelowAttached, eCombining_BelowRightAttached, eCombining_LeftAttached, eCombining_RightAttached, eCombining_AboveLeftAttached, eCombining_AboveAttached, eCombining_AboveRightAttached, eCombining_BelowLeft, eCombining_Below, eCombining_BelowRight, eCombining_Left, eCombining_Right, eCombining_AboveLeft, eCombining_Above, eCombining_AboveRight, eCombining_DoubleBelow, eCombining_DoubleAbove, eCombining_IotaSubscript
 , UnicodeVersion, eUnicode_Unassigned, eUnicode_1_1, eUnicode_2_0, eUnicode_2_1_2, eUnicode_3_0, eUnicode_3_1, eUnicode_3_2, eUnicode_4_0, eUnicode_4_1, eUnicode_5_0
 )
 where

import Foreign.C.Types
import Qtc.Classes.Base
import Qtc.ClassTypes.Core (QObject, TQObject, qObjectFromPtr)
import Qtc.Core.Base (Qcs, connectSlot, qtc_connectSlot_int, wrapSlotHandler_int)
import Qtc.Enums.Base
import Qtc.Enums.Classes.Core

data CSpecialCharacter a = CSpecialCharacter a
type SpecialCharacter = QEnum(CSpecialCharacter Int)

ieSpecialCharacter :: Int -> SpecialCharacter
ieSpecialCharacter x = QEnum (CSpecialCharacter x)

instance QEnumC (CSpecialCharacter Int) where
 qEnum_toInt (QEnum (CSpecialCharacter x)) = x
 qEnum_fromInt x = QEnum (CSpecialCharacter x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> SpecialCharacter -> IO ()) where
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

instance QeNull SpecialCharacter where
 eNull
  = ieSpecialCharacter $ 0
eNbsp :: SpecialCharacter
eNbsp
  = ieSpecialCharacter $ 160
eReplacementCharacter :: SpecialCharacter
eReplacementCharacter
  = ieSpecialCharacter $ 65533
eObjectReplacementCharacter :: SpecialCharacter
eObjectReplacementCharacter
  = ieSpecialCharacter $ 65532
eByteOrderMark :: SpecialCharacter
eByteOrderMark
  = ieSpecialCharacter $ 65279
eByteOrderSwapped :: SpecialCharacter
eByteOrderSwapped
  = ieSpecialCharacter $ 65534
eParagraphSeparator :: SpecialCharacter
eParagraphSeparator
  = ieSpecialCharacter $ 8233
eLineSeparator :: SpecialCharacter
eLineSeparator
  = ieSpecialCharacter $ 8232

data CCategory a = CCategory a
type Category = QEnum(CCategory Int)

ieCategory :: Int -> Category
ieCategory x = QEnum (CCategory x)

instance QEnumC (CCategory Int) where
 qEnum_toInt (QEnum (CCategory x)) = x
 qEnum_fromInt x = QEnum (CCategory x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> Category -> IO ()) where
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

eNoCategory :: Category
eNoCategory
  = ieCategory $ 0
eMark_NonSpacing :: Category
eMark_NonSpacing
  = ieCategory $ 1
eMark_SpacingCombining :: Category
eMark_SpacingCombining
  = ieCategory $ 2
eMark_Enclosing :: Category
eMark_Enclosing
  = ieCategory $ 3
eNumber_DecimalDigit :: Category
eNumber_DecimalDigit
  = ieCategory $ 4
eNumber_Letter :: Category
eNumber_Letter
  = ieCategory $ 5
eNumber_Other :: Category
eNumber_Other
  = ieCategory $ 6
eSeparator_Space :: Category
eSeparator_Space
  = ieCategory $ 7
eSeparator_Line :: Category
eSeparator_Line
  = ieCategory $ 8
eSeparator_Paragraph :: Category
eSeparator_Paragraph
  = ieCategory $ 9
eOther_Control :: Category
eOther_Control
  = ieCategory $ 10
eOther_Format :: Category
eOther_Format
  = ieCategory $ 11
eOther_Surrogate :: Category
eOther_Surrogate
  = ieCategory $ 12
eOther_PrivateUse :: Category
eOther_PrivateUse
  = ieCategory $ 13
eOther_NotAssigned :: Category
eOther_NotAssigned
  = ieCategory $ 14
eLetter_Uppercase :: Category
eLetter_Uppercase
  = ieCategory $ 15
eLetter_Lowercase :: Category
eLetter_Lowercase
  = ieCategory $ 16
eLetter_Titlecase :: Category
eLetter_Titlecase
  = ieCategory $ 17
eLetter_Modifier :: Category
eLetter_Modifier
  = ieCategory $ 18
eLetter_Other :: Category
eLetter_Other
  = ieCategory $ 19
ePunctuation_Connector :: Category
ePunctuation_Connector
  = ieCategory $ 20
ePunctuation_Dash :: Category
ePunctuation_Dash
  = ieCategory $ 21
ePunctuation_Open :: Category
ePunctuation_Open
  = ieCategory $ 22
ePunctuation_Close :: Category
ePunctuation_Close
  = ieCategory $ 23
ePunctuation_InitialQuote :: Category
ePunctuation_InitialQuote
  = ieCategory $ 24
ePunctuation_FinalQuote :: Category
ePunctuation_FinalQuote
  = ieCategory $ 25
ePunctuation_Other :: Category
ePunctuation_Other
  = ieCategory $ 26
eSymbol_Math :: Category
eSymbol_Math
  = ieCategory $ 27
eSymbol_Currency :: Category
eSymbol_Currency
  = ieCategory $ 28
eSymbol_Modifier :: Category
eSymbol_Modifier
  = ieCategory $ 29
eSymbol_Other :: Category
eSymbol_Other
  = ieCategory $ 30
ePunctuation_Dask :: Category
ePunctuation_Dask
  = ieCategory $ 21

data CQCharDirection a = CQCharDirection a
type QCharDirection = QEnum(CQCharDirection Int)

ieQCharDirection :: Int -> QCharDirection
ieQCharDirection x = QEnum (CQCharDirection x)

instance QEnumC (CQCharDirection Int) where
 qEnum_toInt (QEnum (CQCharDirection x)) = x
 qEnum_fromInt x = QEnum (CQCharDirection x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> QCharDirection -> IO ()) where
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

eDirL :: QCharDirection
eDirL
  = ieQCharDirection $ 0
eDirR :: QCharDirection
eDirR
  = ieQCharDirection $ 1
eDirEN :: QCharDirection
eDirEN
  = ieQCharDirection $ 2
eDirES :: QCharDirection
eDirES
  = ieQCharDirection $ 3
eDirET :: QCharDirection
eDirET
  = ieQCharDirection $ 4
eDirAN :: QCharDirection
eDirAN
  = ieQCharDirection $ 5
eDirCS :: QCharDirection
eDirCS
  = ieQCharDirection $ 6
eDirB :: QCharDirection
eDirB
  = ieQCharDirection $ 7
eDirS :: QCharDirection
eDirS
  = ieQCharDirection $ 8
eDirWS :: QCharDirection
eDirWS
  = ieQCharDirection $ 9
eDirON :: QCharDirection
eDirON
  = ieQCharDirection $ 10
eDirLRE :: QCharDirection
eDirLRE
  = ieQCharDirection $ 11
eDirLRO :: QCharDirection
eDirLRO
  = ieQCharDirection $ 12
eDirAL :: QCharDirection
eDirAL
  = ieQCharDirection $ 13
eDirRLE :: QCharDirection
eDirRLE
  = ieQCharDirection $ 14
eDirRLO :: QCharDirection
eDirRLO
  = ieQCharDirection $ 15
eDirPDF :: QCharDirection
eDirPDF
  = ieQCharDirection $ 16
eDirNSM :: QCharDirection
eDirNSM
  = ieQCharDirection $ 17
eDirBN :: QCharDirection
eDirBN
  = ieQCharDirection $ 18

data CDecomposition a = CDecomposition a
type Decomposition = QEnum(CDecomposition Int)

ieDecomposition :: Int -> Decomposition
ieDecomposition x = QEnum (CDecomposition x)

instance QEnumC (CDecomposition Int) where
 qEnum_toInt (QEnum (CDecomposition x)) = x
 qEnum_fromInt x = QEnum (CDecomposition x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> Decomposition -> IO ()) where
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

eNoDecomposition :: Decomposition
eNoDecomposition
  = ieDecomposition $ 0
eCanonical :: Decomposition
eCanonical
  = ieDecomposition $ 1
instance QeFont Decomposition where
 eFont
  = ieDecomposition $ 2
eNoBreak :: Decomposition
eNoBreak
  = ieDecomposition $ 3
eInitial :: Decomposition
eInitial
  = ieDecomposition $ 4
eMedial :: Decomposition
eMedial
  = ieDecomposition $ 5
eFinal :: Decomposition
eFinal
  = ieDecomposition $ 6
eIsolated :: Decomposition
eIsolated
  = ieDecomposition $ 7
eCircle :: Decomposition
eCircle
  = ieDecomposition $ 8
eSuper :: Decomposition
eSuper
  = ieDecomposition $ 9
eSub :: Decomposition
eSub
  = ieDecomposition $ 10
instance QeVertical Decomposition where
 eVertical
  = ieDecomposition $ 11
eWide :: Decomposition
eWide
  = ieDecomposition $ 12
eNarrow :: Decomposition
eNarrow
  = ieDecomposition $ 13
eSmall :: Decomposition
eSmall
  = ieDecomposition $ 14
eSquare :: Decomposition
eSquare
  = ieDecomposition $ 15
eCompat :: Decomposition
eCompat
  = ieDecomposition $ 16
eFraction :: Decomposition
eFraction
  = ieDecomposition $ 17

data CJoining a = CJoining a
type Joining = QEnum(CJoining Int)

ieJoining :: Int -> Joining
ieJoining x = QEnum (CJoining x)

instance QEnumC (CJoining Int) where
 qEnum_toInt (QEnum (CJoining x)) = x
 qEnum_fromInt x = QEnum (CJoining x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> Joining -> IO ()) where
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

eOtherJoining :: Joining
eOtherJoining
  = ieJoining $ 0
eDual :: Joining
eDual
  = ieJoining $ 1
instance QeRight Joining where
 eRight
  = ieJoining $ 2
eCenter :: Joining
eCenter
  = ieJoining $ 3

data CCombiningClass a = CCombiningClass a
type CombiningClass = QEnum(CCombiningClass Int)

ieCombiningClass :: Int -> CombiningClass
ieCombiningClass x = QEnum (CCombiningClass x)

instance QEnumC (CCombiningClass Int) where
 qEnum_toInt (QEnum (CCombiningClass x)) = x
 qEnum_fromInt x = QEnum (CCombiningClass x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> CombiningClass -> IO ()) where
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

eCombining_BelowLeftAttached :: CombiningClass
eCombining_BelowLeftAttached
  = ieCombiningClass $ 200
eCombining_BelowAttached :: CombiningClass
eCombining_BelowAttached
  = ieCombiningClass $ 202
eCombining_BelowRightAttached :: CombiningClass
eCombining_BelowRightAttached
  = ieCombiningClass $ 204
eCombining_LeftAttached :: CombiningClass
eCombining_LeftAttached
  = ieCombiningClass $ 208
eCombining_RightAttached :: CombiningClass
eCombining_RightAttached
  = ieCombiningClass $ 210
eCombining_AboveLeftAttached :: CombiningClass
eCombining_AboveLeftAttached
  = ieCombiningClass $ 212
eCombining_AboveAttached :: CombiningClass
eCombining_AboveAttached
  = ieCombiningClass $ 214
eCombining_AboveRightAttached :: CombiningClass
eCombining_AboveRightAttached
  = ieCombiningClass $ 216
eCombining_BelowLeft :: CombiningClass
eCombining_BelowLeft
  = ieCombiningClass $ 218
eCombining_Below :: CombiningClass
eCombining_Below
  = ieCombiningClass $ 220
eCombining_BelowRight :: CombiningClass
eCombining_BelowRight
  = ieCombiningClass $ 222
eCombining_Left :: CombiningClass
eCombining_Left
  = ieCombiningClass $ 224
eCombining_Right :: CombiningClass
eCombining_Right
  = ieCombiningClass $ 226
eCombining_AboveLeft :: CombiningClass
eCombining_AboveLeft
  = ieCombiningClass $ 228
eCombining_Above :: CombiningClass
eCombining_Above
  = ieCombiningClass $ 230
eCombining_AboveRight :: CombiningClass
eCombining_AboveRight
  = ieCombiningClass $ 232
eCombining_DoubleBelow :: CombiningClass
eCombining_DoubleBelow
  = ieCombiningClass $ 233
eCombining_DoubleAbove :: CombiningClass
eCombining_DoubleAbove
  = ieCombiningClass $ 234
eCombining_IotaSubscript :: CombiningClass
eCombining_IotaSubscript
  = ieCombiningClass $ 240

data CUnicodeVersion a = CUnicodeVersion a
type UnicodeVersion = QEnum(CUnicodeVersion Int)

ieUnicodeVersion :: Int -> UnicodeVersion
ieUnicodeVersion x = QEnum (CUnicodeVersion x)

instance QEnumC (CUnicodeVersion Int) where
 qEnum_toInt (QEnum (CUnicodeVersion x)) = x
 qEnum_fromInt x = QEnum (CUnicodeVersion x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> UnicodeVersion -> IO ()) where
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

eUnicode_Unassigned :: UnicodeVersion
eUnicode_Unassigned
  = ieUnicodeVersion $ 0
eUnicode_1_1 :: UnicodeVersion
eUnicode_1_1
  = ieUnicodeVersion $ 1
eUnicode_2_0 :: UnicodeVersion
eUnicode_2_0
  = ieUnicodeVersion $ 2
eUnicode_2_1_2 :: UnicodeVersion
eUnicode_2_1_2
  = ieUnicodeVersion $ 3
eUnicode_3_0 :: UnicodeVersion
eUnicode_3_0
  = ieUnicodeVersion $ 4
eUnicode_3_1 :: UnicodeVersion
eUnicode_3_1
  = ieUnicodeVersion $ 5
eUnicode_3_2 :: UnicodeVersion
eUnicode_3_2
  = ieUnicodeVersion $ 6
eUnicode_4_0 :: UnicodeVersion
eUnicode_4_0
  = ieUnicodeVersion $ 7
eUnicode_4_1 :: UnicodeVersion
eUnicode_4_1
  = ieUnicodeVersion $ 8
eUnicode_5_0 :: UnicodeVersion
eUnicode_5_0
  = ieUnicodeVersion $ 9

