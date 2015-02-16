{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QAbstractFileEngine.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:36
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Enums.Core.QAbstractFileEngine (
 FileFlag, FileFlags, eReadOwnerPerm, fReadOwnerPerm, eWriteOwnerPerm, fWriteOwnerPerm, eExeOwnerPerm, fExeOwnerPerm, eReadUserPerm, fReadUserPerm, eWriteUserPerm, fWriteUserPerm, eExeUserPerm, fExeUserPerm, eReadGroupPerm, fReadGroupPerm, eWriteGroupPerm, fWriteGroupPerm, eExeGroupPerm, fExeGroupPerm, eReadOtherPerm, fReadOtherPerm, eWriteOtherPerm, fWriteOtherPerm, eExeOtherPerm, fExeOtherPerm, eLinkType, fLinkType, fFileType, eDirectoryType, fDirectoryType, eBundleType, fBundleType, eHiddenFlag, fHiddenFlag, eLocalDiskFlag, fLocalDiskFlag, eExistsFlag, fExistsFlag, eRootFlag, fRootFlag, fRefresh, ePermsMask, fPermsMask, eTypesMask, fTypesMask, eFlagsMask, fFlagsMask, eFileInfoAll, fFileInfoAll
 , FileName, eDefaultName, eBaseName, ePathName, eAbsoluteName, eAbsolutePathName, eLinkName, eCanonicalName, eCanonicalPathName, eBundleName
 , FileOwner, eOwnerUser, eOwnerGroup
 , FileTime, eCreationTime, eModificationTime, eAccessTime
 , QAbstractFileEngineExtension, eAtEndExtension, eFastReadLineExtension
 )
 where

import Foreign.C.Types
import Qtc.Classes.Base
import Qtc.ClassTypes.Core (QObject, TQObject, qObjectFromPtr)
import Qtc.Core.Base (Qcs, connectSlot, qtc_connectSlot_int, wrapSlotHandler_int)
import Qtc.Enums.Base
import Qtc.Enums.Classes.Core

data CFileFlag a = CFileFlag a
type FileFlag = QEnum(CFileFlag Int)

ieFileFlag :: Int -> FileFlag
ieFileFlag x = QEnum (CFileFlag x)

instance QEnumC (CFileFlag Int) where
 qEnum_toInt (QEnum (CFileFlag x)) = x
 qEnum_fromInt x = QEnum (CFileFlag x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> FileFlag -> IO ()) where
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

data CFileFlags a = CFileFlags a
type FileFlags = QFlags(CFileFlags Int)

ifFileFlags :: Int -> FileFlags
ifFileFlags x = QFlags (CFileFlags x)

instance QFlagsC (CFileFlags Int) where
 qFlags_toInt (QFlags (CFileFlags x)) = x
 qFlags_fromInt x = QFlags (CFileFlags x)
 withQFlagsResult x
   = do
     ti <- x
     return $ qFlags_fromInt $ fromIntegral ti
 withQFlagsListResult x
   = do
     til <- x
     return $ map qFlags_fromInt til

instance Qcs (QObject c -> FileFlags -> IO ()) where
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

eReadOwnerPerm :: FileFlag
eReadOwnerPerm
  = ieFileFlag $ 16384
eWriteOwnerPerm :: FileFlag
eWriteOwnerPerm
  = ieFileFlag $ 8192
eExeOwnerPerm :: FileFlag
eExeOwnerPerm
  = ieFileFlag $ 4096
eReadUserPerm :: FileFlag
eReadUserPerm
  = ieFileFlag $ 1024
eWriteUserPerm :: FileFlag
eWriteUserPerm
  = ieFileFlag $ 512
eExeUserPerm :: FileFlag
eExeUserPerm
  = ieFileFlag $ 256
eReadGroupPerm :: FileFlag
eReadGroupPerm
  = ieFileFlag $ 64
eWriteGroupPerm :: FileFlag
eWriteGroupPerm
  = ieFileFlag $ 32
eExeGroupPerm :: FileFlag
eExeGroupPerm
  = ieFileFlag $ 16
eReadOtherPerm :: FileFlag
eReadOtherPerm
  = ieFileFlag $ 4
eWriteOtherPerm :: FileFlag
eWriteOtherPerm
  = ieFileFlag $ 2
eExeOtherPerm :: FileFlag
eExeOtherPerm
  = ieFileFlag $ 1
eLinkType :: FileFlag
eLinkType
  = ieFileFlag $ 65536
instance QeFileType FileFlag where
 eFileType
  = ieFileFlag $ 131072
eDirectoryType :: FileFlag
eDirectoryType
  = ieFileFlag $ 262144
eBundleType :: FileFlag
eBundleType
  = ieFileFlag $ 524288
eHiddenFlag :: FileFlag
eHiddenFlag
  = ieFileFlag $ 1048576
eLocalDiskFlag :: FileFlag
eLocalDiskFlag
  = ieFileFlag $ 2097152
eExistsFlag :: FileFlag
eExistsFlag
  = ieFileFlag $ 4194304
eRootFlag :: FileFlag
eRootFlag
  = ieFileFlag $ 8388608
instance QeRefresh FileFlag where
 eRefresh
  = ieFileFlag $ 16777216
ePermsMask :: FileFlag
ePermsMask
  = ieFileFlag $ 65535
eTypesMask :: FileFlag
eTypesMask
  = ieFileFlag $ 983040
eFlagsMask :: FileFlag
eFlagsMask
  = ieFileFlag $ 267386880
eFileInfoAll :: FileFlag
eFileInfoAll
  = ieFileFlag $ 268435455

fReadOwnerPerm :: FileFlags
fReadOwnerPerm
  = ifFileFlags $ 16384
fWriteOwnerPerm :: FileFlags
fWriteOwnerPerm
  = ifFileFlags $ 8192
fExeOwnerPerm :: FileFlags
fExeOwnerPerm
  = ifFileFlags $ 4096
fReadUserPerm :: FileFlags
fReadUserPerm
  = ifFileFlags $ 1024
fWriteUserPerm :: FileFlags
fWriteUserPerm
  = ifFileFlags $ 512
fExeUserPerm :: FileFlags
fExeUserPerm
  = ifFileFlags $ 256
fReadGroupPerm :: FileFlags
fReadGroupPerm
  = ifFileFlags $ 64
fWriteGroupPerm :: FileFlags
fWriteGroupPerm
  = ifFileFlags $ 32
fExeGroupPerm :: FileFlags
fExeGroupPerm
  = ifFileFlags $ 16
fReadOtherPerm :: FileFlags
fReadOtherPerm
  = ifFileFlags $ 4
fWriteOtherPerm :: FileFlags
fWriteOtherPerm
  = ifFileFlags $ 2
fExeOtherPerm :: FileFlags
fExeOtherPerm
  = ifFileFlags $ 1
fLinkType :: FileFlags
fLinkType
  = ifFileFlags $ 65536
fFileType :: FileFlags
fFileType
  = ifFileFlags $ 131072
fDirectoryType :: FileFlags
fDirectoryType
  = ifFileFlags $ 262144
fBundleType :: FileFlags
fBundleType
  = ifFileFlags $ 524288
fHiddenFlag :: FileFlags
fHiddenFlag
  = ifFileFlags $ 1048576
fLocalDiskFlag :: FileFlags
fLocalDiskFlag
  = ifFileFlags $ 2097152
fExistsFlag :: FileFlags
fExistsFlag
  = ifFileFlags $ 4194304
fRootFlag :: FileFlags
fRootFlag
  = ifFileFlags $ 8388608
fRefresh :: FileFlags
fRefresh
  = ifFileFlags $ 16777216
fPermsMask :: FileFlags
fPermsMask
  = ifFileFlags $ 65535
fTypesMask :: FileFlags
fTypesMask
  = ifFileFlags $ 983040
fFlagsMask :: FileFlags
fFlagsMask
  = ifFileFlags $ 267386880
fFileInfoAll :: FileFlags
fFileInfoAll
  = ifFileFlags $ 268435455

data CFileName a = CFileName a
type FileName = QEnum(CFileName Int)

ieFileName :: Int -> FileName
ieFileName x = QEnum (CFileName x)

instance QEnumC (CFileName Int) where
 qEnum_toInt (QEnum (CFileName x)) = x
 qEnum_fromInt x = QEnum (CFileName x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> FileName -> IO ()) where
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

eDefaultName :: FileName
eDefaultName
  = ieFileName $ 0
eBaseName :: FileName
eBaseName
  = ieFileName $ 1
ePathName :: FileName
ePathName
  = ieFileName $ 2
eAbsoluteName :: FileName
eAbsoluteName
  = ieFileName $ 3
eAbsolutePathName :: FileName
eAbsolutePathName
  = ieFileName $ 4
eLinkName :: FileName
eLinkName
  = ieFileName $ 5
eCanonicalName :: FileName
eCanonicalName
  = ieFileName $ 6
eCanonicalPathName :: FileName
eCanonicalPathName
  = ieFileName $ 7
eBundleName :: FileName
eBundleName
  = ieFileName $ 8

data CFileOwner a = CFileOwner a
type FileOwner = QEnum(CFileOwner Int)

ieFileOwner :: Int -> FileOwner
ieFileOwner x = QEnum (CFileOwner x)

instance QEnumC (CFileOwner Int) where
 qEnum_toInt (QEnum (CFileOwner x)) = x
 qEnum_fromInt x = QEnum (CFileOwner x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> FileOwner -> IO ()) where
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

eOwnerUser :: FileOwner
eOwnerUser
  = ieFileOwner $ 0
eOwnerGroup :: FileOwner
eOwnerGroup
  = ieFileOwner $ 1

data CFileTime a = CFileTime a
type FileTime = QEnum(CFileTime Int)

ieFileTime :: Int -> FileTime
ieFileTime x = QEnum (CFileTime x)

instance QEnumC (CFileTime Int) where
 qEnum_toInt (QEnum (CFileTime x)) = x
 qEnum_fromInt x = QEnum (CFileTime x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> FileTime -> IO ()) where
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

eCreationTime :: FileTime
eCreationTime
  = ieFileTime $ 0
eModificationTime :: FileTime
eModificationTime
  = ieFileTime $ 1
eAccessTime :: FileTime
eAccessTime
  = ieFileTime $ 2

data CQAbstractFileEngineExtension a = CQAbstractFileEngineExtension a
type QAbstractFileEngineExtension = QEnum(CQAbstractFileEngineExtension Int)

ieQAbstractFileEngineExtension :: Int -> QAbstractFileEngineExtension
ieQAbstractFileEngineExtension x = QEnum (CQAbstractFileEngineExtension x)

instance QEnumC (CQAbstractFileEngineExtension Int) where
 qEnum_toInt (QEnum (CQAbstractFileEngineExtension x)) = x
 qEnum_fromInt x = QEnum (CQAbstractFileEngineExtension x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> QAbstractFileEngineExtension -> IO ()) where
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

eAtEndExtension :: QAbstractFileEngineExtension
eAtEndExtension
  = ieQAbstractFileEngineExtension $ 0
eFastReadLineExtension :: QAbstractFileEngineExtension
eFastReadLineExtension
  = ieQAbstractFileEngineExtension $ 1

