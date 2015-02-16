{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QUrlInfo.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:36
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Enums.Network.QUrlInfo (
 PermissionSpec
 )
 where

import Foreign.C.Types
import Qtc.Classes.Base
import Qtc.ClassTypes.Core (QObject, TQObject, qObjectFromPtr)
import Qtc.Core.Base (Qcs, connectSlot, qtc_connectSlot_int, wrapSlotHandler_int)
import Qtc.Enums.Base
import Qtc.Enums.Classes.Core

data CPermissionSpec a = CPermissionSpec a
type PermissionSpec = QEnum(CPermissionSpec Int)

iePermissionSpec :: Int -> PermissionSpec
iePermissionSpec x = QEnum (CPermissionSpec x)

instance QEnumC (CPermissionSpec Int) where
 qEnum_toInt (QEnum (CPermissionSpec x)) = x
 qEnum_fromInt x = QEnum (CPermissionSpec x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> PermissionSpec -> IO ()) where
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

instance QeReadOwner PermissionSpec where
 eReadOwner
  = iePermissionSpec $ 256
instance QeWriteOwner PermissionSpec where
 eWriteOwner
  = iePermissionSpec $ 128
instance QeExeOwner PermissionSpec where
 eExeOwner
  = iePermissionSpec $ 64
instance QeReadGroup PermissionSpec where
 eReadGroup
  = iePermissionSpec $ 32
instance QeWriteGroup PermissionSpec where
 eWriteGroup
  = iePermissionSpec $ 16
instance QeExeGroup PermissionSpec where
 eExeGroup
  = iePermissionSpec $ 8
instance QeReadOther PermissionSpec where
 eReadOther
  = iePermissionSpec $ 4
instance QeWriteOther PermissionSpec where
 eWriteOther
  = iePermissionSpec $ 2
instance QeExeOther PermissionSpec where
 eExeOther
  = iePermissionSpec $ 1

