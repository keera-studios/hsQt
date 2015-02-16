{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QNetworkInterface.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:36
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Enums.Network.QNetworkInterface (
 InterfaceFlag, InterfaceFlags, eIsUp, fIsUp, eIsRunning, fIsRunning, eCanBroadcast, fCanBroadcast, eIsLoopBack, fIsLoopBack, eIsPointToPoint, fIsPointToPoint, eCanMulticast, fCanMulticast
 )
 where

import Foreign.C.Types
import Qtc.Classes.Base
import Qtc.ClassTypes.Core (QObject, TQObject, qObjectFromPtr)
import Qtc.Core.Base (Qcs, connectSlot, qtc_connectSlot_int, wrapSlotHandler_int)
import Qtc.Enums.Base
import Qtc.Enums.Classes.Core

data CInterfaceFlag a = CInterfaceFlag a
type InterfaceFlag = QEnum(CInterfaceFlag Int)

ieInterfaceFlag :: Int -> InterfaceFlag
ieInterfaceFlag x = QEnum (CInterfaceFlag x)

instance QEnumC (CInterfaceFlag Int) where
 qEnum_toInt (QEnum (CInterfaceFlag x)) = x
 qEnum_fromInt x = QEnum (CInterfaceFlag x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> InterfaceFlag -> IO ()) where
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

data CInterfaceFlags a = CInterfaceFlags a
type InterfaceFlags = QFlags(CInterfaceFlags Int)

ifInterfaceFlags :: Int -> InterfaceFlags
ifInterfaceFlags x = QFlags (CInterfaceFlags x)

instance QFlagsC (CInterfaceFlags Int) where
 qFlags_toInt (QFlags (CInterfaceFlags x)) = x
 qFlags_fromInt x = QFlags (CInterfaceFlags x)
 withQFlagsResult x
   = do
     ti <- x
     return $ qFlags_fromInt $ fromIntegral ti
 withQFlagsListResult x
   = do
     til <- x
     return $ map qFlags_fromInt til

instance Qcs (QObject c -> InterfaceFlags -> IO ()) where
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

eIsUp :: InterfaceFlag
eIsUp
  = ieInterfaceFlag $ 1
eIsRunning :: InterfaceFlag
eIsRunning
  = ieInterfaceFlag $ 2
eCanBroadcast :: InterfaceFlag
eCanBroadcast
  = ieInterfaceFlag $ 4
eIsLoopBack :: InterfaceFlag
eIsLoopBack
  = ieInterfaceFlag $ 8
eIsPointToPoint :: InterfaceFlag
eIsPointToPoint
  = ieInterfaceFlag $ 16
eCanMulticast :: InterfaceFlag
eCanMulticast
  = ieInterfaceFlag $ 32

fIsUp :: InterfaceFlags
fIsUp
  = ifInterfaceFlags $ 1
fIsRunning :: InterfaceFlags
fIsRunning
  = ifInterfaceFlags $ 2
fCanBroadcast :: InterfaceFlags
fCanBroadcast
  = ifInterfaceFlags $ 4
fIsLoopBack :: InterfaceFlags
fIsLoopBack
  = ifInterfaceFlags $ 8
fIsPointToPoint :: InterfaceFlags
fIsPointToPoint
  = ifInterfaceFlags $ 16
fCanMulticast :: InterfaceFlags
fCanMulticast
  = ifInterfaceFlags $ 32

