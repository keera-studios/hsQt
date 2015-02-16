{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QUuid.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:36
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Enums.Core.QUuid (
 Variant, eVarUnknown, eNCS, eDCE, eMicrosoft
 , QUuidVersion, eVerUnknown, eEmbeddedPOSIX, eRandom
 )
 where

import Foreign.C.Types
import Qtc.Classes.Base
import Qtc.ClassTypes.Core (QObject, TQObject, qObjectFromPtr)
import Qtc.Core.Base (Qcs, connectSlot, qtc_connectSlot_int, wrapSlotHandler_int)
import Qtc.Enums.Base
import Qtc.Enums.Classes.Core

data CVariant a = CVariant a
type Variant = QEnum(CVariant Int)

ieVariant :: Int -> Variant
ieVariant x = QEnum (CVariant x)

instance QEnumC (CVariant Int) where
 qEnum_toInt (QEnum (CVariant x)) = x
 qEnum_fromInt x = QEnum (CVariant x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> Variant -> IO ()) where
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

eVarUnknown :: Variant
eVarUnknown
  = ieVariant $ -1
eNCS :: Variant
eNCS
  = ieVariant $ 0
eDCE :: Variant
eDCE
  = ieVariant $ 2
eMicrosoft :: Variant
eMicrosoft
  = ieVariant $ 6
instance QeReserved Variant where
 eReserved
  = ieVariant $ 7

data CQUuidVersion a = CQUuidVersion a
type QUuidVersion = QEnum(CQUuidVersion Int)

ieQUuidVersion :: Int -> QUuidVersion
ieQUuidVersion x = QEnum (CQUuidVersion x)

instance QEnumC (CQUuidVersion Int) where
 qEnum_toInt (QEnum (CQUuidVersion x)) = x
 qEnum_fromInt x = QEnum (CQUuidVersion x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> QUuidVersion -> IO ()) where
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

eVerUnknown :: QUuidVersion
eVerUnknown
  = ieQUuidVersion $ -1
instance QeTime QUuidVersion where
 eTime
  = ieQUuidVersion $ 1
eEmbeddedPOSIX :: QUuidVersion
eEmbeddedPOSIX
  = ieQUuidVersion $ 2
instance QeName QUuidVersion where
 eName
  = ieQUuidVersion $ 3
eRandom :: QUuidVersion
eRandom
  = ieQUuidVersion $ 4

