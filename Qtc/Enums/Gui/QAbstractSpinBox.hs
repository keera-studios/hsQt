{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QAbstractSpinBox.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:36
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Enums.Gui.QAbstractSpinBox (
 StepEnabledFlag, StepEnabled, eStepNone, fStepNone, eStepUpEnabled, fStepUpEnabled, eStepDownEnabled, fStepDownEnabled
 , ButtonSymbols, eUpDownArrows, ePlusMinus, eNoButtons
 , CorrectionMode, eCorrectToPreviousValue, eCorrectToNearestValue
 )
 where

import Foreign.C.Types
import Qtc.Classes.Base
import Qtc.ClassTypes.Core (QObject, TQObject, qObjectFromPtr)
import Qtc.Core.Base (Qcs, connectSlot, qtc_connectSlot_int, wrapSlotHandler_int)
import Qtc.Enums.Base
import Qtc.Enums.Classes.Core

data CStepEnabledFlag a = CStepEnabledFlag a
type StepEnabledFlag = QEnum(CStepEnabledFlag Int)

ieStepEnabledFlag :: Int -> StepEnabledFlag
ieStepEnabledFlag x = QEnum (CStepEnabledFlag x)

instance QEnumC (CStepEnabledFlag Int) where
 qEnum_toInt (QEnum (CStepEnabledFlag x)) = x
 qEnum_fromInt x = QEnum (CStepEnabledFlag x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> StepEnabledFlag -> IO ()) where
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

data CStepEnabled a = CStepEnabled a
type StepEnabled = QFlags(CStepEnabled Int)

ifStepEnabled :: Int -> StepEnabled
ifStepEnabled x = QFlags (CStepEnabled x)

instance QFlagsC (CStepEnabled Int) where
 qFlags_toInt (QFlags (CStepEnabled x)) = x
 qFlags_fromInt x = QFlags (CStepEnabled x)
 withQFlagsResult x
   = do
     ti <- x
     return $ qFlags_fromInt $ fromIntegral ti
 withQFlagsListResult x
   = do
     til <- x
     return $ map qFlags_fromInt til

instance Qcs (QObject c -> StepEnabled -> IO ()) where
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

eStepNone :: StepEnabledFlag
eStepNone
  = ieStepEnabledFlag $ 0
eStepUpEnabled :: StepEnabledFlag
eStepUpEnabled
  = ieStepEnabledFlag $ 1
eStepDownEnabled :: StepEnabledFlag
eStepDownEnabled
  = ieStepEnabledFlag $ 2

fStepNone :: StepEnabled
fStepNone
  = ifStepEnabled $ 0
fStepUpEnabled :: StepEnabled
fStepUpEnabled
  = ifStepEnabled $ 1
fStepDownEnabled :: StepEnabled
fStepDownEnabled
  = ifStepEnabled $ 2

data CButtonSymbols a = CButtonSymbols a
type ButtonSymbols = QEnum(CButtonSymbols Int)

ieButtonSymbols :: Int -> ButtonSymbols
ieButtonSymbols x = QEnum (CButtonSymbols x)

instance QEnumC (CButtonSymbols Int) where
 qEnum_toInt (QEnum (CButtonSymbols x)) = x
 qEnum_fromInt x = QEnum (CButtonSymbols x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> ButtonSymbols -> IO ()) where
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

eUpDownArrows :: ButtonSymbols
eUpDownArrows
  = ieButtonSymbols $ 0
ePlusMinus :: ButtonSymbols
ePlusMinus
  = ieButtonSymbols $ 1
eNoButtons :: ButtonSymbols
eNoButtons
  = ieButtonSymbols $ 2

data CCorrectionMode a = CCorrectionMode a
type CorrectionMode = QEnum(CCorrectionMode Int)

ieCorrectionMode :: Int -> CorrectionMode
ieCorrectionMode x = QEnum (CCorrectionMode x)

instance QEnumC (CCorrectionMode Int) where
 qEnum_toInt (QEnum (CCorrectionMode x)) = x
 qEnum_fromInt x = QEnum (CCorrectionMode x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> CorrectionMode -> IO ()) where
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

eCorrectToPreviousValue :: CorrectionMode
eCorrectToPreviousValue
  = ieCorrectionMode $ 0
eCorrectToNearestValue :: CorrectionMode
eCorrectToNearestValue
  = ieCorrectionMode $ 1

