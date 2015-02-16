{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QBoxLayout.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:36
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Enums.Gui.QBoxLayout (
 QBoxLayoutDirection
 )
 where

import Foreign.C.Types
import Qtc.Classes.Base
import Qtc.ClassTypes.Core (QObject, TQObject, qObjectFromPtr)
import Qtc.Core.Base (Qcs, connectSlot, qtc_connectSlot_int, wrapSlotHandler_int)
import Qtc.Enums.Base
import Qtc.Enums.Classes.Core

data CQBoxLayoutDirection a = CQBoxLayoutDirection a
type QBoxLayoutDirection = QEnum(CQBoxLayoutDirection Int)

ieQBoxLayoutDirection :: Int -> QBoxLayoutDirection
ieQBoxLayoutDirection x = QEnum (CQBoxLayoutDirection x)

instance QEnumC (CQBoxLayoutDirection Int) where
 qEnum_toInt (QEnum (CQBoxLayoutDirection x)) = x
 qEnum_fromInt x = QEnum (CQBoxLayoutDirection x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> QBoxLayoutDirection -> IO ()) where
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

instance QeLeftToRight QBoxLayoutDirection where
 eLeftToRight
  = ieQBoxLayoutDirection $ 0
instance QeRightToLeft QBoxLayoutDirection where
 eRightToLeft
  = ieQBoxLayoutDirection $ 1
instance QeTopToBottom QBoxLayoutDirection where
 eTopToBottom
  = ieQBoxLayoutDirection $ 2
instance QeBottomToTop QBoxLayoutDirection where
 eBottomToTop
  = ieQBoxLayoutDirection $ 3
instance QeDown QBoxLayoutDirection where
 eDown
  = ieQBoxLayoutDirection $ 2
instance QeUp QBoxLayoutDirection where
 eUp
  = ieQBoxLayoutDirection $ 3

