{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QAbstractItemDelegate.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:36
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Enums.Gui.QAbstractItemDelegate (
 EndEditHint, eNoHint, eEditNextItem, eEditPreviousItem, eSubmitModelCache, eRevertModelCache
 )
 where

import Foreign.C.Types
import Qtc.Classes.Base
import Qtc.ClassTypes.Core (QObject, TQObject, qObjectFromPtr)
import Qtc.Core.Base (Qcs, connectSlot, qtc_connectSlot_int, wrapSlotHandler_int)
import Qtc.Enums.Base
import Qtc.Enums.Classes.Core

data CEndEditHint a = CEndEditHint a
type EndEditHint = QEnum(CEndEditHint Int)

ieEndEditHint :: Int -> EndEditHint
ieEndEditHint x = QEnum (CEndEditHint x)

instance QEnumC (CEndEditHint Int) where
 qEnum_toInt (QEnum (CEndEditHint x)) = x
 qEnum_fromInt x = QEnum (CEndEditHint x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> EndEditHint -> IO ()) where
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

eNoHint :: EndEditHint
eNoHint
  = ieEndEditHint $ 0
eEditNextItem :: EndEditHint
eEditNextItem
  = ieEndEditHint $ 1
eEditPreviousItem :: EndEditHint
eEditPreviousItem
  = ieEndEditHint $ 2
eSubmitModelCache :: EndEditHint
eSubmitModelCache
  = ieEndEditHint $ 3
eRevertModelCache :: EndEditHint
eRevertModelCache
  = ieEndEditHint $ 4

