{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QDir.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:36
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Enums.Core.QDir (
 Filter, Filters, eDirs, fDirs, eFiles, fFiles, eDrives, fDrives, eNoSymLinks, fNoSymLinks, eAllEntries, fAllEntries, eTypeMask, fTypeMask, eReadable, fReadable, eWritable, fWritable, eExecutable, fExecutable, ePermissionMask, fPermissionMask, eModified, fModified, eHidden, fHidden, fSystem, eAccessMask, fAccessMask, eAllDirs, fAllDirs, fCaseSensitive, eNoDotAndDotDot, fNoDotAndDotDot, eNoFilter, fNoFilter
 , SortFlag, SortFlags, fName, fTime, fSize, eUnsorted, fUnsorted, eSortByMask, fSortByMask, eDirsFirst, fDirsFirst, eReversed, fReversed, eIgnoreCase, fIgnoreCase, eDirsLast, fDirsLast, eLocaleAware, fLocaleAware, fType, eNoSort, fNoSort
 )
 where

import Foreign.C.Types
import Qtc.Classes.Base
import Qtc.ClassTypes.Core (QObject, TQObject, qObjectFromPtr)
import Qtc.Core.Base (Qcs, connectSlot, qtc_connectSlot_int, wrapSlotHandler_int)
import Qtc.Enums.Base
import Qtc.Enums.Classes.Core

data CFilter a = CFilter a
type Filter = QEnum(CFilter Int)

ieFilter :: Int -> Filter
ieFilter x = QEnum (CFilter x)

instance QEnumC (CFilter Int) where
 qEnum_toInt (QEnum (CFilter x)) = x
 qEnum_fromInt x = QEnum (CFilter x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> Filter -> IO ()) where
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

data CFilters a = CFilters a
type Filters = QFlags(CFilters Int)

ifFilters :: Int -> Filters
ifFilters x = QFlags (CFilters x)

instance QFlagsC (CFilters Int) where
 qFlags_toInt (QFlags (CFilters x)) = x
 qFlags_fromInt x = QFlags (CFilters x)
 withQFlagsResult x
   = do
     ti <- x
     return $ qFlags_fromInt $ fromIntegral ti
 withQFlagsListResult x
   = do
     til <- x
     return $ map qFlags_fromInt til

instance Qcs (QObject c -> Filters -> IO ()) where
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

eDirs :: Filter
eDirs
  = ieFilter $ 1
eFiles :: Filter
eFiles
  = ieFilter $ 2
eDrives :: Filter
eDrives
  = ieFilter $ 4
eNoSymLinks :: Filter
eNoSymLinks
  = ieFilter $ 8
eAllEntries :: Filter
eAllEntries
  = ieFilter $ 7
eTypeMask :: Filter
eTypeMask
  = ieFilter $ 15
eReadable :: Filter
eReadable
  = ieFilter $ 16
eWritable :: Filter
eWritable
  = ieFilter $ 32
eExecutable :: Filter
eExecutable
  = ieFilter $ 64
ePermissionMask :: Filter
ePermissionMask
  = ieFilter $ 112
eModified :: Filter
eModified
  = ieFilter $ 128
eHidden :: Filter
eHidden
  = ieFilter $ 256
instance QeSystem Filter where
 eSystem
  = ieFilter $ 512
eAccessMask :: Filter
eAccessMask
  = ieFilter $ 1008
eAllDirs :: Filter
eAllDirs
  = ieFilter $ 1024
instance QeCaseSensitive Filter where
 eCaseSensitive
  = ieFilter $ 2048
eNoDotAndDotDot :: Filter
eNoDotAndDotDot
  = ieFilter $ 4096
eNoFilter :: Filter
eNoFilter
  = ieFilter $ -1

fDirs :: Filters
fDirs
  = ifFilters $ 1
fFiles :: Filters
fFiles
  = ifFilters $ 2
fDrives :: Filters
fDrives
  = ifFilters $ 4
fNoSymLinks :: Filters
fNoSymLinks
  = ifFilters $ 8
fAllEntries :: Filters
fAllEntries
  = ifFilters $ 7
fTypeMask :: Filters
fTypeMask
  = ifFilters $ 15
fReadable :: Filters
fReadable
  = ifFilters $ 16
fWritable :: Filters
fWritable
  = ifFilters $ 32
fExecutable :: Filters
fExecutable
  = ifFilters $ 64
fPermissionMask :: Filters
fPermissionMask
  = ifFilters $ 112
fModified :: Filters
fModified
  = ifFilters $ 128
fHidden :: Filters
fHidden
  = ifFilters $ 256
fSystem :: Filters
fSystem
  = ifFilters $ 512
fAccessMask :: Filters
fAccessMask
  = ifFilters $ 1008
fAllDirs :: Filters
fAllDirs
  = ifFilters $ 1024
fCaseSensitive :: Filters
fCaseSensitive
  = ifFilters $ 2048
fNoDotAndDotDot :: Filters
fNoDotAndDotDot
  = ifFilters $ 4096
fNoFilter :: Filters
fNoFilter
  = ifFilters $ -1

data CSortFlag a = CSortFlag a
type SortFlag = QEnum(CSortFlag Int)

ieSortFlag :: Int -> SortFlag
ieSortFlag x = QEnum (CSortFlag x)

instance QEnumC (CSortFlag Int) where
 qEnum_toInt (QEnum (CSortFlag x)) = x
 qEnum_fromInt x = QEnum (CSortFlag x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> SortFlag -> IO ()) where
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

data CSortFlags a = CSortFlags a
type SortFlags = QFlags(CSortFlags Int)

ifSortFlags :: Int -> SortFlags
ifSortFlags x = QFlags (CSortFlags x)

instance QFlagsC (CSortFlags Int) where
 qFlags_toInt (QFlags (CSortFlags x)) = x
 qFlags_fromInt x = QFlags (CSortFlags x)
 withQFlagsResult x
   = do
     ti <- x
     return $ qFlags_fromInt $ fromIntegral ti
 withQFlagsListResult x
   = do
     til <- x
     return $ map qFlags_fromInt til

instance Qcs (QObject c -> SortFlags -> IO ()) where
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

instance QeName SortFlag where
 eName
  = ieSortFlag $ 0
instance QeTime SortFlag where
 eTime
  = ieSortFlag $ 1
instance QeSize SortFlag where
 eSize
  = ieSortFlag $ 2
eUnsorted :: SortFlag
eUnsorted
  = ieSortFlag $ 3
eSortByMask :: SortFlag
eSortByMask
  = ieSortFlag $ 3
eDirsFirst :: SortFlag
eDirsFirst
  = ieSortFlag $ 4
eReversed :: SortFlag
eReversed
  = ieSortFlag $ 8
eIgnoreCase :: SortFlag
eIgnoreCase
  = ieSortFlag $ 16
eDirsLast :: SortFlag
eDirsLast
  = ieSortFlag $ 32
eLocaleAware :: SortFlag
eLocaleAware
  = ieSortFlag $ 64
instance QeType SortFlag where
 eType
  = ieSortFlag $ 128
eNoSort :: SortFlag
eNoSort
  = ieSortFlag $ -1

fName :: SortFlags
fName
  = ifSortFlags $ 0
fTime :: SortFlags
fTime
  = ifSortFlags $ 1
fSize :: SortFlags
fSize
  = ifSortFlags $ 2
fUnsorted :: SortFlags
fUnsorted
  = ifSortFlags $ 3
fSortByMask :: SortFlags
fSortByMask
  = ifSortFlags $ 3
fDirsFirst :: SortFlags
fDirsFirst
  = ifSortFlags $ 4
fReversed :: SortFlags
fReversed
  = ifSortFlags $ 8
fIgnoreCase :: SortFlags
fIgnoreCase
  = ifSortFlags $ 16
fDirsLast :: SortFlags
fDirsLast
  = ifSortFlags $ 32
fLocaleAware :: SortFlags
fLocaleAware
  = ifSortFlags $ 64
fType :: SortFlags
fType
  = ifSortFlags $ 128
fNoSort :: SortFlags
fNoSort
  = ifSortFlags $ -1

