{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QHttp.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:36
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Enums.Network.QHttp (
 ConnectionMode, eConnectionModeHttp, eConnectionModeHttps
 , QHttpState, eSending, eReading
 , QHttpError, eUnexpectedClose, eInvalidResponseHeader, eWrongContentLength, eAuthenticationRequiredError
 )
 where

import Foreign.C.Types
import Qtc.Classes.Base
import Qtc.ClassTypes.Core (QObject, TQObject, qObjectFromPtr)
import Qtc.Core.Base (Qcs, connectSlot, qtc_connectSlot_int, wrapSlotHandler_int)
import Qtc.Enums.Base
import Qtc.Enums.Classes.Core

data CConnectionMode a = CConnectionMode a
type ConnectionMode = QEnum(CConnectionMode Int)

ieConnectionMode :: Int -> ConnectionMode
ieConnectionMode x = QEnum (CConnectionMode x)

instance QEnumC (CConnectionMode Int) where
 qEnum_toInt (QEnum (CConnectionMode x)) = x
 qEnum_fromInt x = QEnum (CConnectionMode x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> ConnectionMode -> IO ()) where
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

eConnectionModeHttp :: ConnectionMode
eConnectionModeHttp
  = ieConnectionMode $ 0
eConnectionModeHttps :: ConnectionMode
eConnectionModeHttps
  = ieConnectionMode $ 1

data CQHttpState a = CQHttpState a
type QHttpState = QEnum(CQHttpState Int)

ieQHttpState :: Int -> QHttpState
ieQHttpState x = QEnum (CQHttpState x)

instance QEnumC (CQHttpState Int) where
 qEnum_toInt (QEnum (CQHttpState x)) = x
 qEnum_fromInt x = QEnum (CQHttpState x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> QHttpState -> IO ()) where
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

instance QeUnconnected QHttpState where
 eUnconnected
  = ieQHttpState $ 0
instance QeHostLookup QHttpState where
 eHostLookup
  = ieQHttpState $ 1
instance QeConnecting QHttpState where
 eConnecting
  = ieQHttpState $ 2
eSending :: QHttpState
eSending
  = ieQHttpState $ 3
eReading :: QHttpState
eReading
  = ieQHttpState $ 4
instance QeConnected QHttpState where
 eConnected
  = ieQHttpState $ 5
instance QeClosing QHttpState where
 eClosing
  = ieQHttpState $ 6

data CQHttpError a = CQHttpError a
type QHttpError = QEnum(CQHttpError Int)

ieQHttpError :: Int -> QHttpError
ieQHttpError x = QEnum (CQHttpError x)

instance QEnumC (CQHttpError Int) where
 qEnum_toInt (QEnum (CQHttpError x)) = x
 qEnum_fromInt x = QEnum (CQHttpError x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> QHttpError -> IO ()) where
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

instance QeNoError QHttpError where
 eNoError
  = ieQHttpError $ 0
instance QeUnknownError QHttpError where
 eUnknownError
  = ieQHttpError $ 1
instance QeHostNotFound QHttpError where
 eHostNotFound
  = ieQHttpError $ 2
instance QeConnectionRefused QHttpError where
 eConnectionRefused
  = ieQHttpError $ 3
eUnexpectedClose :: QHttpError
eUnexpectedClose
  = ieQHttpError $ 4
eInvalidResponseHeader :: QHttpError
eInvalidResponseHeader
  = ieQHttpError $ 5
eWrongContentLength :: QHttpError
eWrongContentLength
  = ieQHttpError $ 6
instance QeAborted QHttpError where
 eAborted
  = ieQHttpError $ 7
eAuthenticationRequiredError :: QHttpError
eAuthenticationRequiredError
  = ieQHttpError $ 8
instance QeProxyAuthenticationRequiredError QHttpError where
 eProxyAuthenticationRequiredError
  = ieQHttpError $ 9

