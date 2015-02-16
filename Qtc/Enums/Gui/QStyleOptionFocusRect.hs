{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QStyleOptionFocusRect.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:35
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Enums.Gui.QStyleOptionFocusRect (
 QStyleOptionFocusRectStyleOptionType
 , QStyleOptionFocusRectStyleOptionVersion
 )
 where

import Foreign.C.Types
import Qtc.Classes.Base
import Qtc.ClassTypes.Core (QObject, TQObject, qObjectFromPtr)
import Qtc.Core.Base (Qcs, connectSlot, qtc_connectSlot_int, wrapSlotHandler_int)
import Qtc.Enums.Base
import Qtc.Enums.Classes.Core

data CQStyleOptionFocusRectStyleOptionType a = CQStyleOptionFocusRectStyleOptionType a
type QStyleOptionFocusRectStyleOptionType = QEnum(CQStyleOptionFocusRectStyleOptionType Int)

ieQStyleOptionFocusRectStyleOptionType :: Int -> QStyleOptionFocusRectStyleOptionType
ieQStyleOptionFocusRectStyleOptionType x = QEnum (CQStyleOptionFocusRectStyleOptionType x)

instance QEnumC (CQStyleOptionFocusRectStyleOptionType Int) where
 qEnum_toInt (QEnum (CQStyleOptionFocusRectStyleOptionType x)) = x
 qEnum_fromInt x = QEnum (CQStyleOptionFocusRectStyleOptionType x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> QStyleOptionFocusRectStyleOptionType -> IO ()) where
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

instance QeType QStyleOptionFocusRectStyleOptionType where
 eType
  = ieQStyleOptionFocusRectStyleOptionType $ 1

data CQStyleOptionFocusRectStyleOptionVersion a = CQStyleOptionFocusRectStyleOptionVersion a
type QStyleOptionFocusRectStyleOptionVersion = QEnum(CQStyleOptionFocusRectStyleOptionVersion Int)

ieQStyleOptionFocusRectStyleOptionVersion :: Int -> QStyleOptionFocusRectStyleOptionVersion
ieQStyleOptionFocusRectStyleOptionVersion x = QEnum (CQStyleOptionFocusRectStyleOptionVersion x)

instance QEnumC (CQStyleOptionFocusRectStyleOptionVersion Int) where
 qEnum_toInt (QEnum (CQStyleOptionFocusRectStyleOptionVersion x)) = x
 qEnum_fromInt x = QEnum (CQStyleOptionFocusRectStyleOptionVersion x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> QStyleOptionFocusRectStyleOptionVersion -> IO ()) where
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

instance QeVersion QStyleOptionFocusRectStyleOptionVersion where
 eVersion
  = ieQStyleOptionFocusRectStyleOptionVersion $ 1

