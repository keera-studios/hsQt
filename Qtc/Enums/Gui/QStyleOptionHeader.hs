{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QStyleOptionHeader.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:35
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Enums.Gui.QStyleOptionHeader (
 QStyleOptionHeaderStyleOptionType
 , QStyleOptionHeaderStyleOptionVersion
 , SectionPosition, eOnlyOneSection
 , QStyleOptionHeaderSelectedPosition, eNextAndPreviousAreSelected
 , SortIndicator, eSortUp, eSortDown
 )
 where

import Foreign.C.Types
import Qtc.Classes.Base
import Qtc.ClassTypes.Core (QObject, TQObject, qObjectFromPtr)
import Qtc.Core.Base (Qcs, connectSlot, qtc_connectSlot_int, wrapSlotHandler_int)
import Qtc.Enums.Base
import Qtc.Enums.Classes.Core

data CQStyleOptionHeaderStyleOptionType a = CQStyleOptionHeaderStyleOptionType a
type QStyleOptionHeaderStyleOptionType = QEnum(CQStyleOptionHeaderStyleOptionType Int)

ieQStyleOptionHeaderStyleOptionType :: Int -> QStyleOptionHeaderStyleOptionType
ieQStyleOptionHeaderStyleOptionType x = QEnum (CQStyleOptionHeaderStyleOptionType x)

instance QEnumC (CQStyleOptionHeaderStyleOptionType Int) where
 qEnum_toInt (QEnum (CQStyleOptionHeaderStyleOptionType x)) = x
 qEnum_fromInt x = QEnum (CQStyleOptionHeaderStyleOptionType x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> QStyleOptionHeaderStyleOptionType -> IO ()) where
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

instance QeType QStyleOptionHeaderStyleOptionType where
 eType
  = ieQStyleOptionHeaderStyleOptionType $ 8

data CQStyleOptionHeaderStyleOptionVersion a = CQStyleOptionHeaderStyleOptionVersion a
type QStyleOptionHeaderStyleOptionVersion = QEnum(CQStyleOptionHeaderStyleOptionVersion Int)

ieQStyleOptionHeaderStyleOptionVersion :: Int -> QStyleOptionHeaderStyleOptionVersion
ieQStyleOptionHeaderStyleOptionVersion x = QEnum (CQStyleOptionHeaderStyleOptionVersion x)

instance QEnumC (CQStyleOptionHeaderStyleOptionVersion Int) where
 qEnum_toInt (QEnum (CQStyleOptionHeaderStyleOptionVersion x)) = x
 qEnum_fromInt x = QEnum (CQStyleOptionHeaderStyleOptionVersion x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> QStyleOptionHeaderStyleOptionVersion -> IO ()) where
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

instance QeVersion QStyleOptionHeaderStyleOptionVersion where
 eVersion
  = ieQStyleOptionHeaderStyleOptionVersion $ 1

data CSectionPosition a = CSectionPosition a
type SectionPosition = QEnum(CSectionPosition Int)

ieSectionPosition :: Int -> SectionPosition
ieSectionPosition x = QEnum (CSectionPosition x)

instance QEnumC (CSectionPosition Int) where
 qEnum_toInt (QEnum (CSectionPosition x)) = x
 qEnum_fromInt x = QEnum (CSectionPosition x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> SectionPosition -> IO ()) where
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

instance QeBeginning SectionPosition where
 eBeginning
  = ieSectionPosition $ 0
instance QeMiddle SectionPosition where
 eMiddle
  = ieSectionPosition $ 1
instance QeEnd SectionPosition where
 eEnd
  = ieSectionPosition $ 2
eOnlyOneSection :: SectionPosition
eOnlyOneSection
  = ieSectionPosition $ 3

data CQStyleOptionHeaderSelectedPosition a = CQStyleOptionHeaderSelectedPosition a
type QStyleOptionHeaderSelectedPosition = QEnum(CQStyleOptionHeaderSelectedPosition Int)

ieQStyleOptionHeaderSelectedPosition :: Int -> QStyleOptionHeaderSelectedPosition
ieQStyleOptionHeaderSelectedPosition x = QEnum (CQStyleOptionHeaderSelectedPosition x)

instance QEnumC (CQStyleOptionHeaderSelectedPosition Int) where
 qEnum_toInt (QEnum (CQStyleOptionHeaderSelectedPosition x)) = x
 qEnum_fromInt x = QEnum (CQStyleOptionHeaderSelectedPosition x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> QStyleOptionHeaderSelectedPosition -> IO ()) where
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

instance QeNotAdjacent QStyleOptionHeaderSelectedPosition where
 eNotAdjacent
  = ieQStyleOptionHeaderSelectedPosition $ 0
instance QeNextIsSelected QStyleOptionHeaderSelectedPosition where
 eNextIsSelected
  = ieQStyleOptionHeaderSelectedPosition $ 1
instance QePreviousIsSelected QStyleOptionHeaderSelectedPosition where
 ePreviousIsSelected
  = ieQStyleOptionHeaderSelectedPosition $ 2
eNextAndPreviousAreSelected :: QStyleOptionHeaderSelectedPosition
eNextAndPreviousAreSelected
  = ieQStyleOptionHeaderSelectedPosition $ 3

data CSortIndicator a = CSortIndicator a
type SortIndicator = QEnum(CSortIndicator Int)

ieSortIndicator :: Int -> SortIndicator
ieSortIndicator x = QEnum (CSortIndicator x)

instance QEnumC (CSortIndicator Int) where
 qEnum_toInt (QEnum (CSortIndicator x)) = x
 qEnum_fromInt x = QEnum (CSortIndicator x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> SortIndicator -> IO ()) where
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

instance QeNone SortIndicator where
 eNone
  = ieSortIndicator $ 0
eSortUp :: SortIndicator
eSortUp
  = ieSortIndicator $ 1
eSortDown :: SortIndicator
eSortDown
  = ieSortIndicator $ 2

