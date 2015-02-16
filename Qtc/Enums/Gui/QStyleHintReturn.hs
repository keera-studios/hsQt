{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QStyleHintReturn.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:35
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Enums.Gui.QStyleHintReturn (
 HintReturnType, eSH_Default, eSH_Mask, eSH_Variant
 , QStyleHintReturnStyleOptionType
 , QStyleHintReturnStyleOptionVersion
 )
 where

import Foreign.C.Types
import Qtc.Classes.Base
import Qtc.ClassTypes.Core (QObject, TQObject, qObjectFromPtr)
import Qtc.Core.Base (Qcs, connectSlot, qtc_connectSlot_int, wrapSlotHandler_int)
import Qtc.Enums.Base
import Qtc.Enums.Classes.Core

data CHintReturnType a = CHintReturnType a
type HintReturnType = QEnum(CHintReturnType Int)

ieHintReturnType :: Int -> HintReturnType
ieHintReturnType x = QEnum (CHintReturnType x)

instance QEnumC (CHintReturnType Int) where
 qEnum_toInt (QEnum (CHintReturnType x)) = x
 qEnum_fromInt x = QEnum (CHintReturnType x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> HintReturnType -> IO ()) where
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

eSH_Default :: HintReturnType
eSH_Default
  = ieHintReturnType $ 61440
eSH_Mask :: HintReturnType
eSH_Mask
  = ieHintReturnType $ 61441
eSH_Variant :: HintReturnType
eSH_Variant
  = ieHintReturnType $ 61442

data CQStyleHintReturnStyleOptionType a = CQStyleHintReturnStyleOptionType a
type QStyleHintReturnStyleOptionType = QEnum(CQStyleHintReturnStyleOptionType Int)

ieQStyleHintReturnStyleOptionType :: Int -> QStyleHintReturnStyleOptionType
ieQStyleHintReturnStyleOptionType x = QEnum (CQStyleHintReturnStyleOptionType x)

instance QEnumC (CQStyleHintReturnStyleOptionType Int) where
 qEnum_toInt (QEnum (CQStyleHintReturnStyleOptionType x)) = x
 qEnum_fromInt x = QEnum (CQStyleHintReturnStyleOptionType x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> QStyleHintReturnStyleOptionType -> IO ()) where
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

instance QeType QStyleHintReturnStyleOptionType where
 eType
  = ieQStyleHintReturnStyleOptionType $ 61440

data CQStyleHintReturnStyleOptionVersion a = CQStyleHintReturnStyleOptionVersion a
type QStyleHintReturnStyleOptionVersion = QEnum(CQStyleHintReturnStyleOptionVersion Int)

ieQStyleHintReturnStyleOptionVersion :: Int -> QStyleHintReturnStyleOptionVersion
ieQStyleHintReturnStyleOptionVersion x = QEnum (CQStyleHintReturnStyleOptionVersion x)

instance QEnumC (CQStyleHintReturnStyleOptionVersion Int) where
 qEnum_toInt (QEnum (CQStyleHintReturnStyleOptionVersion x)) = x
 qEnum_fromInt x = QEnum (CQStyleHintReturnStyleOptionVersion x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> QStyleHintReturnStyleOptionVersion -> IO ()) where
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

instance QeVersion QStyleHintReturnStyleOptionVersion where
 eVersion
  = ieQStyleHintReturnStyleOptionVersion $ 1

