{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QIODevice.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:36
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Enums.Core.QIODevice (
 OpenModeFlag, OpenMode, eNotOpen, fNotOpen, eReadOnly, fReadOnly, eWriteOnly, fWriteOnly, eReadWrite, fReadWrite, eAppend, fAppend, eTruncate, fTruncate, fText, eUnbuffered, fUnbuffered
 )
 where

import Foreign.C.Types
import Qtc.Classes.Base
import Qtc.ClassTypes.Core (QObject, TQObject, qObjectFromPtr)
import Qtc.Core.Base (Qcs, connectSlot, qtc_connectSlot_int, wrapSlotHandler_int)
import Qtc.Enums.Base
import Qtc.Enums.Classes.Core

data COpenModeFlag a = COpenModeFlag a
type OpenModeFlag = QEnum(COpenModeFlag Int)

ieOpenModeFlag :: Int -> OpenModeFlag
ieOpenModeFlag x = QEnum (COpenModeFlag x)

instance QEnumC (COpenModeFlag Int) where
 qEnum_toInt (QEnum (COpenModeFlag x)) = x
 qEnum_fromInt x = QEnum (COpenModeFlag x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> OpenModeFlag -> IO ()) where
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

data COpenMode a = COpenMode a
type OpenMode = QFlags(COpenMode Int)

ifOpenMode :: Int -> OpenMode
ifOpenMode x = QFlags (COpenMode x)

instance QFlagsC (COpenMode Int) where
 qFlags_toInt (QFlags (COpenMode x)) = x
 qFlags_fromInt x = QFlags (COpenMode x)
 withQFlagsResult x
   = do
     ti <- x
     return $ qFlags_fromInt $ fromIntegral ti
 withQFlagsListResult x
   = do
     til <- x
     return $ map qFlags_fromInt til

instance Qcs (QObject c -> OpenMode -> IO ()) where
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

eNotOpen :: OpenModeFlag
eNotOpen
  = ieOpenModeFlag $ 0
eReadOnly :: OpenModeFlag
eReadOnly
  = ieOpenModeFlag $ 1
eWriteOnly :: OpenModeFlag
eWriteOnly
  = ieOpenModeFlag $ 2
eReadWrite :: OpenModeFlag
eReadWrite
  = ieOpenModeFlag $ 3
eAppend :: OpenModeFlag
eAppend
  = ieOpenModeFlag $ 4
eTruncate :: OpenModeFlag
eTruncate
  = ieOpenModeFlag $ 8
instance QeText OpenModeFlag where
 eText
  = ieOpenModeFlag $ 16
eUnbuffered :: OpenModeFlag
eUnbuffered
  = ieOpenModeFlag $ 32

fNotOpen :: OpenMode
fNotOpen
  = ifOpenMode $ 0
fReadOnly :: OpenMode
fReadOnly
  = ifOpenMode $ 1
fWriteOnly :: OpenMode
fWriteOnly
  = ifOpenMode $ 2
fReadWrite :: OpenMode
fReadWrite
  = ifOpenMode $ 3
fAppend :: OpenMode
fAppend
  = ifOpenMode $ 4
fTruncate :: OpenMode
fTruncate
  = ifOpenMode $ 8
fText :: OpenMode
fText
  = ifOpenMode $ 16
fUnbuffered :: OpenMode
fUnbuffered
  = ifOpenMode $ 32

