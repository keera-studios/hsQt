{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QUdpSocket.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:36
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Enums.Network.QUdpSocket (
 BindFlag, BindMode, eDefaultForPlatform, fDefaultForPlatform, eShareAddress, fShareAddress, eDontShareAddress, fDontShareAddress, eReuseAddressHint, fReuseAddressHint
 )
 where

import Foreign.C.Types
import Qtc.Classes.Base
import Qtc.ClassTypes.Core (QObject, TQObject, qObjectFromPtr)
import Qtc.Core.Base (Qcs, connectSlot, qtc_connectSlot_int, wrapSlotHandler_int)
import Qtc.Enums.Base
import Qtc.Enums.Classes.Core

data CBindFlag a = CBindFlag a
type BindFlag = QEnum(CBindFlag Int)

ieBindFlag :: Int -> BindFlag
ieBindFlag x = QEnum (CBindFlag x)

instance QEnumC (CBindFlag Int) where
 qEnum_toInt (QEnum (CBindFlag x)) = x
 qEnum_fromInt x = QEnum (CBindFlag x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> BindFlag -> IO ()) where
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

data CBindMode a = CBindMode a
type BindMode = QFlags(CBindMode Int)

ifBindMode :: Int -> BindMode
ifBindMode x = QFlags (CBindMode x)

instance QFlagsC (CBindMode Int) where
 qFlags_toInt (QFlags (CBindMode x)) = x
 qFlags_fromInt x = QFlags (CBindMode x)
 withQFlagsResult x
   = do
     ti <- x
     return $ qFlags_fromInt $ fromIntegral ti
 withQFlagsListResult x
   = do
     til <- x
     return $ map qFlags_fromInt til

instance Qcs (QObject c -> BindMode -> IO ()) where
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

eDefaultForPlatform :: BindFlag
eDefaultForPlatform
  = ieBindFlag $ 0
eShareAddress :: BindFlag
eShareAddress
  = ieBindFlag $ 1
eDontShareAddress :: BindFlag
eDontShareAddress
  = ieBindFlag $ 2
eReuseAddressHint :: BindFlag
eReuseAddressHint
  = ieBindFlag $ 4

fDefaultForPlatform :: BindMode
fDefaultForPlatform
  = ifBindMode $ 0
fShareAddress :: BindMode
fShareAddress
  = ifBindMode $ 1
fDontShareAddress :: BindMode
fDontShareAddress
  = ifBindMode $ 2
fReuseAddressHint :: BindMode
fReuseAddressHint
  = ifBindMode $ 4

