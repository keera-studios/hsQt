{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QAbstractSocket.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:36
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Enums.Network.QAbstractSocket (
 SocketType, eTcpSocket, eUdpSocket, eUnknownSocketType
 , NetworkLayerProtocol, eIPv4Protocol, eIPv6Protocol, eUnknownNetworkLayerProtocol
 , SocketError, eConnectionRefusedError, eRemoteHostClosedError, eHostNotFoundError, eSocketAccessError, eSocketResourceError, eSocketTimeoutError, eDatagramTooLargeError, eNetworkError, eAddressInUseError, eSocketAddressNotAvailableError, eUnsupportedSocketOperationError, eUnfinishedSocketOperationError, eUnknownSocketError
 , SocketState, eUnconnectedState, eHostLookupState, eConnectingState, eConnectedState, eBoundState, eListeningState, eClosingState
 )
 where

import Foreign.C.Types
import Qtc.Classes.Base
import Qtc.ClassTypes.Core (QObject, TQObject, qObjectFromPtr)
import Qtc.Core.Base (Qcs, connectSlot, qtc_connectSlot_int, wrapSlotHandler_int)
import Qtc.Enums.Base
import Qtc.Enums.Classes.Core

data CSocketType a = CSocketType a
type SocketType = QEnum(CSocketType Int)

ieSocketType :: Int -> SocketType
ieSocketType x = QEnum (CSocketType x)

instance QEnumC (CSocketType Int) where
 qEnum_toInt (QEnum (CSocketType x)) = x
 qEnum_fromInt x = QEnum (CSocketType x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> SocketType -> IO ()) where
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

eTcpSocket :: SocketType
eTcpSocket
  = ieSocketType $ 0
eUdpSocket :: SocketType
eUdpSocket
  = ieSocketType $ 1
eUnknownSocketType :: SocketType
eUnknownSocketType
  = ieSocketType $ -1

data CNetworkLayerProtocol a = CNetworkLayerProtocol a
type NetworkLayerProtocol = QEnum(CNetworkLayerProtocol Int)

ieNetworkLayerProtocol :: Int -> NetworkLayerProtocol
ieNetworkLayerProtocol x = QEnum (CNetworkLayerProtocol x)

instance QEnumC (CNetworkLayerProtocol Int) where
 qEnum_toInt (QEnum (CNetworkLayerProtocol x)) = x
 qEnum_fromInt x = QEnum (CNetworkLayerProtocol x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> NetworkLayerProtocol -> IO ()) where
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

eIPv4Protocol :: NetworkLayerProtocol
eIPv4Protocol
  = ieNetworkLayerProtocol $ 0
eIPv6Protocol :: NetworkLayerProtocol
eIPv6Protocol
  = ieNetworkLayerProtocol $ 1
eUnknownNetworkLayerProtocol :: NetworkLayerProtocol
eUnknownNetworkLayerProtocol
  = ieNetworkLayerProtocol $ -1

data CSocketError a = CSocketError a
type SocketError = QEnum(CSocketError Int)

ieSocketError :: Int -> SocketError
ieSocketError x = QEnum (CSocketError x)

instance QEnumC (CSocketError Int) where
 qEnum_toInt (QEnum (CSocketError x)) = x
 qEnum_fromInt x = QEnum (CSocketError x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> SocketError -> IO ()) where
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

eConnectionRefusedError :: SocketError
eConnectionRefusedError
  = ieSocketError $ 0
eRemoteHostClosedError :: SocketError
eRemoteHostClosedError
  = ieSocketError $ 1
eHostNotFoundError :: SocketError
eHostNotFoundError
  = ieSocketError $ 2
eSocketAccessError :: SocketError
eSocketAccessError
  = ieSocketError $ 3
eSocketResourceError :: SocketError
eSocketResourceError
  = ieSocketError $ 4
eSocketTimeoutError :: SocketError
eSocketTimeoutError
  = ieSocketError $ 5
eDatagramTooLargeError :: SocketError
eDatagramTooLargeError
  = ieSocketError $ 6
eNetworkError :: SocketError
eNetworkError
  = ieSocketError $ 7
eAddressInUseError :: SocketError
eAddressInUseError
  = ieSocketError $ 8
eSocketAddressNotAvailableError :: SocketError
eSocketAddressNotAvailableError
  = ieSocketError $ 9
eUnsupportedSocketOperationError :: SocketError
eUnsupportedSocketOperationError
  = ieSocketError $ 10
eUnfinishedSocketOperationError :: SocketError
eUnfinishedSocketOperationError
  = ieSocketError $ 11
instance QeProxyAuthenticationRequiredError SocketError where
 eProxyAuthenticationRequiredError
  = ieSocketError $ 12
eUnknownSocketError :: SocketError
eUnknownSocketError
  = ieSocketError $ -1

data CSocketState a = CSocketState a
type SocketState = QEnum(CSocketState Int)

ieSocketState :: Int -> SocketState
ieSocketState x = QEnum (CSocketState x)

instance QEnumC (CSocketState Int) where
 qEnum_toInt (QEnum (CSocketState x)) = x
 qEnum_fromInt x = QEnum (CSocketState x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> SocketState -> IO ()) where
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

eUnconnectedState :: SocketState
eUnconnectedState
  = ieSocketState $ 0
eHostLookupState :: SocketState
eHostLookupState
  = ieSocketState $ 1
eConnectingState :: SocketState
eConnectingState
  = ieSocketState $ 2
eConnectedState :: SocketState
eConnectedState
  = ieSocketState $ 3
eBoundState :: SocketState
eBoundState
  = ieSocketState $ 4
eListeningState :: SocketState
eListeningState
  = ieSocketState $ 5
eClosingState :: SocketState
eClosingState
  = ieSocketState $ 6

