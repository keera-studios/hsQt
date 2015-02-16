{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QFileDialog.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:35
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Enums.Gui.QFileDialog (
 QFileDialogViewMode, eDetail
 , FileMode, eAnyFile, eExistingFile, eDirectory, eExistingFiles, eDirectoryOnly
 , AcceptMode, eAcceptOpen, eAcceptSave
 , DialogLabel, eLookIn, eFileName, eAccept, eReject
 , Option, Options, eShowDirsOnly, fShowDirsOnly, eDontResolveSymlinks, fDontResolveSymlinks, eDontConfirmOverwrite, fDontConfirmOverwrite, eDontUseSheet, fDontUseSheet, eDontUseNativeDialog, fDontUseNativeDialog
 )
 where

import Foreign.C.Types
import Qtc.Classes.Base
import Qtc.ClassTypes.Core (QObject, TQObject, qObjectFromPtr)
import Qtc.Core.Base (Qcs, connectSlot, qtc_connectSlot_int, wrapSlotHandler_int)
import Qtc.Enums.Base
import Qtc.Enums.Classes.Core

data CQFileDialogViewMode a = CQFileDialogViewMode a
type QFileDialogViewMode = QEnum(CQFileDialogViewMode Int)

ieQFileDialogViewMode :: Int -> QFileDialogViewMode
ieQFileDialogViewMode x = QEnum (CQFileDialogViewMode x)

instance QEnumC (CQFileDialogViewMode Int) where
 qEnum_toInt (QEnum (CQFileDialogViewMode x)) = x
 qEnum_fromInt x = QEnum (CQFileDialogViewMode x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> QFileDialogViewMode -> IO ()) where
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

eDetail :: QFileDialogViewMode
eDetail
  = ieQFileDialogViewMode $ 0
instance QeList QFileDialogViewMode where
 eList
  = ieQFileDialogViewMode $ 1

data CFileMode a = CFileMode a
type FileMode = QEnum(CFileMode Int)

ieFileMode :: Int -> FileMode
ieFileMode x = QEnum (CFileMode x)

instance QEnumC (CFileMode Int) where
 qEnum_toInt (QEnum (CFileMode x)) = x
 qEnum_fromInt x = QEnum (CFileMode x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> FileMode -> IO ()) where
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

eAnyFile :: FileMode
eAnyFile
  = ieFileMode $ 0
eExistingFile :: FileMode
eExistingFile
  = ieFileMode $ 1
eDirectory :: FileMode
eDirectory
  = ieFileMode $ 2
eExistingFiles :: FileMode
eExistingFiles
  = ieFileMode $ 3
eDirectoryOnly :: FileMode
eDirectoryOnly
  = ieFileMode $ 4

data CAcceptMode a = CAcceptMode a
type AcceptMode = QEnum(CAcceptMode Int)

ieAcceptMode :: Int -> AcceptMode
ieAcceptMode x = QEnum (CAcceptMode x)

instance QEnumC (CAcceptMode Int) where
 qEnum_toInt (QEnum (CAcceptMode x)) = x
 qEnum_fromInt x = QEnum (CAcceptMode x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> AcceptMode -> IO ()) where
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

eAcceptOpen :: AcceptMode
eAcceptOpen
  = ieAcceptMode $ 0
eAcceptSave :: AcceptMode
eAcceptSave
  = ieAcceptMode $ 1

data CDialogLabel a = CDialogLabel a
type DialogLabel = QEnum(CDialogLabel Int)

ieDialogLabel :: Int -> DialogLabel
ieDialogLabel x = QEnum (CDialogLabel x)

instance QEnumC (CDialogLabel Int) where
 qEnum_toInt (QEnum (CDialogLabel x)) = x
 qEnum_fromInt x = QEnum (CDialogLabel x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> DialogLabel -> IO ()) where
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

eLookIn :: DialogLabel
eLookIn
  = ieDialogLabel $ 0
eFileName :: DialogLabel
eFileName
  = ieDialogLabel $ 1
instance QeFileType DialogLabel where
 eFileType
  = ieDialogLabel $ 2
eAccept :: DialogLabel
eAccept
  = ieDialogLabel $ 3
eReject :: DialogLabel
eReject
  = ieDialogLabel $ 4

data COption a = COption a
type Option = QEnum(COption Int)

ieOption :: Int -> Option
ieOption x = QEnum (COption x)

instance QEnumC (COption Int) where
 qEnum_toInt (QEnum (COption x)) = x
 qEnum_fromInt x = QEnum (COption x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> Option -> IO ()) where
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

data COptions a = COptions a
type Options = QFlags(COptions Int)

ifOptions :: Int -> Options
ifOptions x = QFlags (COptions x)

instance QFlagsC (COptions Int) where
 qFlags_toInt (QFlags (COptions x)) = x
 qFlags_fromInt x = QFlags (COptions x)
 withQFlagsResult x
   = do
     ti <- x
     return $ qFlags_fromInt $ fromIntegral ti
 withQFlagsListResult x
   = do
     til <- x
     return $ map qFlags_fromInt til

instance Qcs (QObject c -> Options -> IO ()) where
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

eShowDirsOnly :: Option
eShowDirsOnly
  = ieOption $ 1
eDontResolveSymlinks :: Option
eDontResolveSymlinks
  = ieOption $ 2
eDontConfirmOverwrite :: Option
eDontConfirmOverwrite
  = ieOption $ 4
eDontUseSheet :: Option
eDontUseSheet
  = ieOption $ 8
eDontUseNativeDialog :: Option
eDontUseNativeDialog
  = ieOption $ 16

fShowDirsOnly :: Options
fShowDirsOnly
  = ifOptions $ 1
fDontResolveSymlinks :: Options
fDontResolveSymlinks
  = ifOptions $ 2
fDontConfirmOverwrite :: Options
fDontConfirmOverwrite
  = ifOptions $ 4
fDontUseSheet :: Options
fDontUseSheet
  = ifOptions $ 8
fDontUseNativeDialog :: Options
fDontUseNativeDialog
  = ifOptions $ 16

