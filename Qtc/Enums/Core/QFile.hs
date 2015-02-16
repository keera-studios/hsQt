{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QFile.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:36
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Enums.Core.QFile (
 FileError, eReadError, eWriteError, eFatalError, eResourceError, eOpenError, eAbortError, eTimeOutError, eUnspecifiedError, eRemoveError, eRenameError, ePositionError, eResizeError, ePermissionsError, eCopyError
 , Permission, Permissions, fReadOwner, fWriteOwner, fExeOwner, eReadUser, fReadUser, eWriteUser, fWriteUser, eExeUser, fExeUser, fReadGroup, fWriteGroup, fExeGroup, fReadOther, fWriteOther, fExeOther
 )
 where

import Foreign.C.Types
import Qtc.Classes.Base
import Qtc.ClassTypes.Core (QObject, TQObject, qObjectFromPtr)
import Qtc.Core.Base (Qcs, connectSlot, qtc_connectSlot_int, wrapSlotHandler_int)
import Qtc.Enums.Base
import Qtc.Enums.Classes.Core

data CFileError a = CFileError a
type FileError = QEnum(CFileError Int)

ieFileError :: Int -> FileError
ieFileError x = QEnum (CFileError x)

instance QEnumC (CFileError Int) where
 qEnum_toInt (QEnum (CFileError x)) = x
 qEnum_fromInt x = QEnum (CFileError x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> FileError -> IO ()) where
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

instance QeNoError FileError where
 eNoError
  = ieFileError $ 0
eReadError :: FileError
eReadError
  = ieFileError $ 1
eWriteError :: FileError
eWriteError
  = ieFileError $ 2
eFatalError :: FileError
eFatalError
  = ieFileError $ 3
eResourceError :: FileError
eResourceError
  = ieFileError $ 4
eOpenError :: FileError
eOpenError
  = ieFileError $ 5
eAbortError :: FileError
eAbortError
  = ieFileError $ 6
eTimeOutError :: FileError
eTimeOutError
  = ieFileError $ 7
eUnspecifiedError :: FileError
eUnspecifiedError
  = ieFileError $ 8
eRemoveError :: FileError
eRemoveError
  = ieFileError $ 9
eRenameError :: FileError
eRenameError
  = ieFileError $ 10
ePositionError :: FileError
ePositionError
  = ieFileError $ 11
eResizeError :: FileError
eResizeError
  = ieFileError $ 12
ePermissionsError :: FileError
ePermissionsError
  = ieFileError $ 13
eCopyError :: FileError
eCopyError
  = ieFileError $ 14

data CPermission a = CPermission a
type Permission = QEnum(CPermission Int)

iePermission :: Int -> Permission
iePermission x = QEnum (CPermission x)

instance QEnumC (CPermission Int) where
 qEnum_toInt (QEnum (CPermission x)) = x
 qEnum_fromInt x = QEnum (CPermission x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> Permission -> IO ()) where
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

data CPermissions a = CPermissions a
type Permissions = QFlags(CPermissions Int)

ifPermissions :: Int -> Permissions
ifPermissions x = QFlags (CPermissions x)

instance QFlagsC (CPermissions Int) where
 qFlags_toInt (QFlags (CPermissions x)) = x
 qFlags_fromInt x = QFlags (CPermissions x)
 withQFlagsResult x
   = do
     ti <- x
     return $ qFlags_fromInt $ fromIntegral ti
 withQFlagsListResult x
   = do
     til <- x
     return $ map qFlags_fromInt til

instance Qcs (QObject c -> Permissions -> IO ()) where
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

instance QeReadOwner Permission where
 eReadOwner
  = iePermission $ 16384
instance QeWriteOwner Permission where
 eWriteOwner
  = iePermission $ 8192
instance QeExeOwner Permission where
 eExeOwner
  = iePermission $ 4096
eReadUser :: Permission
eReadUser
  = iePermission $ 1024
eWriteUser :: Permission
eWriteUser
  = iePermission $ 512
eExeUser :: Permission
eExeUser
  = iePermission $ 256
instance QeReadGroup Permission where
 eReadGroup
  = iePermission $ 64
instance QeWriteGroup Permission where
 eWriteGroup
  = iePermission $ 32
instance QeExeGroup Permission where
 eExeGroup
  = iePermission $ 16
instance QeReadOther Permission where
 eReadOther
  = iePermission $ 4
instance QeWriteOther Permission where
 eWriteOther
  = iePermission $ 2
instance QeExeOther Permission where
 eExeOther
  = iePermission $ 1

fReadOwner :: Permissions
fReadOwner
  = ifPermissions $ 16384
fWriteOwner :: Permissions
fWriteOwner
  = ifPermissions $ 8192
fExeOwner :: Permissions
fExeOwner
  = ifPermissions $ 4096
fReadUser :: Permissions
fReadUser
  = ifPermissions $ 1024
fWriteUser :: Permissions
fWriteUser
  = ifPermissions $ 512
fExeUser :: Permissions
fExeUser
  = ifPermissions $ 256
fReadGroup :: Permissions
fReadGroup
  = ifPermissions $ 64
fWriteGroup :: Permissions
fWriteGroup
  = ifPermissions $ 32
fExeGroup :: Permissions
fExeGroup
  = ifPermissions $ 16
fReadOther :: Permissions
fReadOther
  = ifPermissions $ 4
fWriteOther :: Permissions
fWriteOther
  = ifPermissions $ 2
fExeOther :: Permissions
fExeOther
  = ifPermissions $ 1

