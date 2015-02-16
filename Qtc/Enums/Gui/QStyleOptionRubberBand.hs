{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QStyleOptionRubberBand.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:36
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Enums.Gui.QStyleOptionRubberBand (
 QStyleOptionRubberBandStyleOptionType
 , QStyleOptionRubberBandStyleOptionVersion
 )
 where

import Foreign.C.Types
import Qtc.Classes.Base
import Qtc.ClassTypes.Core (QObject, TQObject, qObjectFromPtr)
import Qtc.Core.Base (Qcs, connectSlot, qtc_connectSlot_int, wrapSlotHandler_int)
import Qtc.Enums.Base
import Qtc.Enums.Classes.Core

data CQStyleOptionRubberBandStyleOptionType a = CQStyleOptionRubberBandStyleOptionType a
type QStyleOptionRubberBandStyleOptionType = QEnum(CQStyleOptionRubberBandStyleOptionType Int)

ieQStyleOptionRubberBandStyleOptionType :: Int -> QStyleOptionRubberBandStyleOptionType
ieQStyleOptionRubberBandStyleOptionType x = QEnum (CQStyleOptionRubberBandStyleOptionType x)

instance QEnumC (CQStyleOptionRubberBandStyleOptionType Int) where
 qEnum_toInt (QEnum (CQStyleOptionRubberBandStyleOptionType x)) = x
 qEnum_fromInt x = QEnum (CQStyleOptionRubberBandStyleOptionType x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> QStyleOptionRubberBandStyleOptionType -> IO ()) where
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

instance QeType QStyleOptionRubberBandStyleOptionType where
 eType
  = ieQStyleOptionRubberBandStyleOptionType $ 15

data CQStyleOptionRubberBandStyleOptionVersion a = CQStyleOptionRubberBandStyleOptionVersion a
type QStyleOptionRubberBandStyleOptionVersion = QEnum(CQStyleOptionRubberBandStyleOptionVersion Int)

ieQStyleOptionRubberBandStyleOptionVersion :: Int -> QStyleOptionRubberBandStyleOptionVersion
ieQStyleOptionRubberBandStyleOptionVersion x = QEnum (CQStyleOptionRubberBandStyleOptionVersion x)

instance QEnumC (CQStyleOptionRubberBandStyleOptionVersion Int) where
 qEnum_toInt (QEnum (CQStyleOptionRubberBandStyleOptionVersion x)) = x
 qEnum_fromInt x = QEnum (CQStyleOptionRubberBandStyleOptionVersion x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> QStyleOptionRubberBandStyleOptionVersion -> IO ()) where
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

instance QeVersion QStyleOptionRubberBandStyleOptionVersion where
 eVersion
  = ieQStyleOptionRubberBandStyleOptionVersion $ 1

