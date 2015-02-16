{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QFtp.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:36
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Enums.Network.QFtp (
 QFtpState, eLoggedIn
 , QFtpError, eNotConnected
 , Command, eSetTransferMode, eSetProxy, eConnectToHost, eLogin, eCd, eGet, ePut, eRemove, eMkdir, eRmdir, eRename, eRawCommand
 , TransferMode, ePassive
 , TransferType, eBinary, eAscii
 )
 where

import Foreign.C.Types
import Qtc.Classes.Base
import Qtc.ClassTypes.Core (QObject, TQObject, qObjectFromPtr)
import Qtc.Core.Base (Qcs, connectSlot, qtc_connectSlot_int, wrapSlotHandler_int)
import Qtc.Enums.Base
import Qtc.Enums.Classes.Core

data CQFtpState a = CQFtpState a
type QFtpState = QEnum(CQFtpState Int)

ieQFtpState :: Int -> QFtpState
ieQFtpState x = QEnum (CQFtpState x)

instance QEnumC (CQFtpState Int) where
 qEnum_toInt (QEnum (CQFtpState x)) = x
 qEnum_fromInt x = QEnum (CQFtpState x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> QFtpState -> IO ()) where
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

instance QeUnconnected QFtpState where
 eUnconnected
  = ieQFtpState $ 0
instance QeHostLookup QFtpState where
 eHostLookup
  = ieQFtpState $ 1
instance QeConnecting QFtpState where
 eConnecting
  = ieQFtpState $ 2
instance QeConnected QFtpState where
 eConnected
  = ieQFtpState $ 3
eLoggedIn :: QFtpState
eLoggedIn
  = ieQFtpState $ 4
instance QeClosing QFtpState where
 eClosing
  = ieQFtpState $ 5

data CQFtpError a = CQFtpError a
type QFtpError = QEnum(CQFtpError Int)

ieQFtpError :: Int -> QFtpError
ieQFtpError x = QEnum (CQFtpError x)

instance QEnumC (CQFtpError Int) where
 qEnum_toInt (QEnum (CQFtpError x)) = x
 qEnum_fromInt x = QEnum (CQFtpError x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> QFtpError -> IO ()) where
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

instance QeNoError QFtpError where
 eNoError
  = ieQFtpError $ 0
instance QeUnknownError QFtpError where
 eUnknownError
  = ieQFtpError $ 1
instance QeHostNotFound QFtpError where
 eHostNotFound
  = ieQFtpError $ 2
instance QeConnectionRefused QFtpError where
 eConnectionRefused
  = ieQFtpError $ 3
eNotConnected :: QFtpError
eNotConnected
  = ieQFtpError $ 4

data CCommand a = CCommand a
type Command = QEnum(CCommand Int)

ieCommand :: Int -> Command
ieCommand x = QEnum (CCommand x)

instance QEnumC (CCommand Int) where
 qEnum_toInt (QEnum (CCommand x)) = x
 qEnum_fromInt x = QEnum (CCommand x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> Command -> IO ()) where
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

instance QeNone Command where
 eNone
  = ieCommand $ 0
eSetTransferMode :: Command
eSetTransferMode
  = ieCommand $ 1
eSetProxy :: Command
eSetProxy
  = ieCommand $ 2
eConnectToHost :: Command
eConnectToHost
  = ieCommand $ 3
eLogin :: Command
eLogin
  = ieCommand $ 4
instance QeClose Command where
 eClose
  = ieCommand $ 5
instance QeList Command where
 eList
  = ieCommand $ 6
eCd :: Command
eCd
  = ieCommand $ 7
eGet :: Command
eGet
  = ieCommand $ 8
ePut :: Command
ePut
  = ieCommand $ 9
eRemove :: Command
eRemove
  = ieCommand $ 10
eMkdir :: Command
eMkdir
  = ieCommand $ 11
eRmdir :: Command
eRmdir
  = ieCommand $ 12
eRename :: Command
eRename
  = ieCommand $ 13
eRawCommand :: Command
eRawCommand
  = ieCommand $ 14

data CTransferMode a = CTransferMode a
type TransferMode = QEnum(CTransferMode Int)

ieTransferMode :: Int -> TransferMode
ieTransferMode x = QEnum (CTransferMode x)

instance QEnumC (CTransferMode Int) where
 qEnum_toInt (QEnum (CTransferMode x)) = x
 qEnum_fromInt x = QEnum (CTransferMode x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> TransferMode -> IO ()) where
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

instance QeActive TransferMode where
 eActive
  = ieTransferMode $ 0
ePassive :: TransferMode
ePassive
  = ieTransferMode $ 1

data CTransferType a = CTransferType a
type TransferType = QEnum(CTransferType Int)

ieTransferType :: Int -> TransferType
ieTransferType x = QEnum (CTransferType x)

instance QEnumC (CTransferType Int) where
 qEnum_toInt (QEnum (CTransferType x)) = x
 qEnum_fromInt x = QEnum (CTransferType x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> TransferType -> IO ()) where
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

eBinary :: TransferType
eBinary
  = ieTransferType $ 0
eAscii :: TransferType
eAscii
  = ieTransferType $ 1

