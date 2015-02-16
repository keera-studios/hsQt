{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QSystemTrayIcon.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:34
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Enums.Gui.QSystemTrayIcon (
 ActivationReason, eUnknown, eContext, eDoubleClick, eMiddleClick
 , MessageIcon
 )
 where

import Foreign.C.Types
import Qtc.Classes.Base
import Qtc.ClassTypes.Core (QObject, TQObject, qObjectFromPtr)
import Qtc.Core.Base (Qcs, connectSlot, qtc_connectSlot_int, wrapSlotHandler_int)
import Qtc.Enums.Base
import Qtc.Enums.Classes.Core

data CActivationReason a = CActivationReason a
type ActivationReason = QEnum(CActivationReason Int)

ieActivationReason :: Int -> ActivationReason
ieActivationReason x = QEnum (CActivationReason x)

instance QEnumC (CActivationReason Int) where
 qEnum_toInt (QEnum (CActivationReason x)) = x
 qEnum_fromInt x = QEnum (CActivationReason x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> ActivationReason -> IO ()) where
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

eUnknown :: ActivationReason
eUnknown
  = ieActivationReason $ 0
eContext :: ActivationReason
eContext
  = ieActivationReason $ 1
eDoubleClick :: ActivationReason
eDoubleClick
  = ieActivationReason $ 2
instance QeTrigger ActivationReason where
 eTrigger
  = ieActivationReason $ 3
eMiddleClick :: ActivationReason
eMiddleClick
  = ieActivationReason $ 4

data CMessageIcon a = CMessageIcon a
type MessageIcon = QEnum(CMessageIcon Int)

ieMessageIcon :: Int -> MessageIcon
ieMessageIcon x = QEnum (CMessageIcon x)

instance QEnumC (CMessageIcon Int) where
 qEnum_toInt (QEnum (CMessageIcon x)) = x
 qEnum_fromInt x = QEnum (CMessageIcon x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> MessageIcon -> IO ()) where
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

instance QeNoIcon MessageIcon where
 eNoIcon
  = ieMessageIcon $ 0
instance QeInformation MessageIcon where
 eInformation
  = ieMessageIcon $ 1
instance QeWarning MessageIcon where
 eWarning
  = ieMessageIcon $ 2
instance QeCritical MessageIcon where
 eCritical
  = ieMessageIcon $ 3

