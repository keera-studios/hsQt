{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QCompleter.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:35
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Enums.Gui.QCompleter (
 CompletionMode, ePopupCompletion, eUnfilteredPopupCompletion, eInlineCompletion
 , ModelSorting, eUnsortedModel, eCaseSensitivelySortedModel, eCaseInsensitivelySortedModel
 )
 where

import Foreign.C.Types
import Qtc.Classes.Base
import Qtc.ClassTypes.Core (QObject, TQObject, qObjectFromPtr)
import Qtc.Core.Base (Qcs, connectSlot, qtc_connectSlot_int, wrapSlotHandler_int)
import Qtc.Enums.Base
import Qtc.Enums.Classes.Core

data CCompletionMode a = CCompletionMode a
type CompletionMode = QEnum(CCompletionMode Int)

ieCompletionMode :: Int -> CompletionMode
ieCompletionMode x = QEnum (CCompletionMode x)

instance QEnumC (CCompletionMode Int) where
 qEnum_toInt (QEnum (CCompletionMode x)) = x
 qEnum_fromInt x = QEnum (CCompletionMode x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> CompletionMode -> IO ()) where
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

ePopupCompletion :: CompletionMode
ePopupCompletion
  = ieCompletionMode $ 0
eUnfilteredPopupCompletion :: CompletionMode
eUnfilteredPopupCompletion
  = ieCompletionMode $ 1
eInlineCompletion :: CompletionMode
eInlineCompletion
  = ieCompletionMode $ 2

data CModelSorting a = CModelSorting a
type ModelSorting = QEnum(CModelSorting Int)

ieModelSorting :: Int -> ModelSorting
ieModelSorting x = QEnum (CModelSorting x)

instance QEnumC (CModelSorting Int) where
 qEnum_toInt (QEnum (CModelSorting x)) = x
 qEnum_fromInt x = QEnum (CModelSorting x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> ModelSorting -> IO ()) where
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

eUnsortedModel :: ModelSorting
eUnsortedModel
  = ieModelSorting $ 0
eCaseSensitivelySortedModel :: ModelSorting
eCaseSensitivelySortedModel
  = ieModelSorting $ 1
eCaseInsensitivelySortedModel :: ModelSorting
eCaseInsensitivelySortedModel
  = ieModelSorting $ 2

