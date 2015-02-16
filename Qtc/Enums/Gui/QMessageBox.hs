{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QMessageBox.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:35
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Enums.Gui.QMessageBox (
 Icon, eQuestion
 , QMessageBoxButtonRole
 , QMessageBoxStandardButton, QMessageBoxStandardButtons, eYesAll, fYesAll, eNoAll, fNoAll, eDefault, fDefault, eEscape, fEscape, eFlagMask, fFlagMask, eButtonMask, fButtonMask
 )
 where

import Foreign.C.Types
import Qtc.Classes.Base
import Qtc.ClassTypes.Core (QObject, TQObject, qObjectFromPtr)
import Qtc.Core.Base (Qcs, connectSlot, qtc_connectSlot_int, wrapSlotHandler_int)
import Qtc.Enums.Base
import Qtc.Enums.Classes.Core

data CIcon a = CIcon a
type Icon = QEnum(CIcon Int)

ieIcon :: Int -> Icon
ieIcon x = QEnum (CIcon x)

instance QEnumC (CIcon Int) where
 qEnum_toInt (QEnum (CIcon x)) = x
 qEnum_fromInt x = QEnum (CIcon x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> Icon -> IO ()) where
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

instance QeNoIcon Icon where
 eNoIcon
  = ieIcon $ 0
instance QeInformation Icon where
 eInformation
  = ieIcon $ 1
instance QeWarning Icon where
 eWarning
  = ieIcon $ 2
instance QeCritical Icon where
 eCritical
  = ieIcon $ 3
eQuestion :: Icon
eQuestion
  = ieIcon $ 4

data CQMessageBoxButtonRole a = CQMessageBoxButtonRole a
type QMessageBoxButtonRole = QEnum(CQMessageBoxButtonRole Int)

ieQMessageBoxButtonRole :: Int -> QMessageBoxButtonRole
ieQMessageBoxButtonRole x = QEnum (CQMessageBoxButtonRole x)

instance QEnumC (CQMessageBoxButtonRole Int) where
 qEnum_toInt (QEnum (CQMessageBoxButtonRole x)) = x
 qEnum_fromInt x = QEnum (CQMessageBoxButtonRole x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> QMessageBoxButtonRole -> IO ()) where
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

instance QeInvalidRole QMessageBoxButtonRole where
 eInvalidRole
  = ieQMessageBoxButtonRole $ -1
instance QeAcceptRole QMessageBoxButtonRole where
 eAcceptRole
  = ieQMessageBoxButtonRole $ 0
instance QeRejectRole QMessageBoxButtonRole where
 eRejectRole
  = ieQMessageBoxButtonRole $ 1
instance QeDestructiveRole QMessageBoxButtonRole where
 eDestructiveRole
  = ieQMessageBoxButtonRole $ 2
instance QeActionRole QMessageBoxButtonRole where
 eActionRole
  = ieQMessageBoxButtonRole $ 3
instance QeHelpRole QMessageBoxButtonRole where
 eHelpRole
  = ieQMessageBoxButtonRole $ 4
instance QeYesRole QMessageBoxButtonRole where
 eYesRole
  = ieQMessageBoxButtonRole $ 5
instance QeNoRole QMessageBoxButtonRole where
 eNoRole
  = ieQMessageBoxButtonRole $ 6
instance QeResetRole QMessageBoxButtonRole where
 eResetRole
  = ieQMessageBoxButtonRole $ 7
instance QeApplyRole QMessageBoxButtonRole where
 eApplyRole
  = ieQMessageBoxButtonRole $ 8
instance QeNRoles QMessageBoxButtonRole where
 eNRoles
  = ieQMessageBoxButtonRole $ 9

data CQMessageBoxStandardButton a = CQMessageBoxStandardButton a
type QMessageBoxStandardButton = QEnum(CQMessageBoxStandardButton Int)

ieQMessageBoxStandardButton :: Int -> QMessageBoxStandardButton
ieQMessageBoxStandardButton x = QEnum (CQMessageBoxStandardButton x)

instance QEnumC (CQMessageBoxStandardButton Int) where
 qEnum_toInt (QEnum (CQMessageBoxStandardButton x)) = x
 qEnum_fromInt x = QEnum (CQMessageBoxStandardButton x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> QMessageBoxStandardButton -> IO ()) where
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

data CQMessageBoxStandardButtons a = CQMessageBoxStandardButtons a
type QMessageBoxStandardButtons = QFlags(CQMessageBoxStandardButtons Int)

ifQMessageBoxStandardButtons :: Int -> QMessageBoxStandardButtons
ifQMessageBoxStandardButtons x = QFlags (CQMessageBoxStandardButtons x)

instance QFlagsC (CQMessageBoxStandardButtons Int) where
 qFlags_toInt (QFlags (CQMessageBoxStandardButtons x)) = x
 qFlags_fromInt x = QFlags (CQMessageBoxStandardButtons x)
 withQFlagsResult x
   = do
     ti <- x
     return $ qFlags_fromInt $ fromIntegral ti
 withQFlagsListResult x
   = do
     til <- x
     return $ map qFlags_fromInt til

instance Qcs (QObject c -> QMessageBoxStandardButtons -> IO ()) where
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

instance QeNoButton QMessageBoxStandardButton where
 eNoButton
  = ieQMessageBoxStandardButton $ 0
instance QeOk QMessageBoxStandardButton where
 eOk
  = ieQMessageBoxStandardButton $ 1024
instance QeSave QMessageBoxStandardButton where
 eSave
  = ieQMessageBoxStandardButton $ 2048
instance QeSaveAll QMessageBoxStandardButton where
 eSaveAll
  = ieQMessageBoxStandardButton $ 4096
instance QeOpen QMessageBoxStandardButton where
 eOpen
  = ieQMessageBoxStandardButton $ 8192
instance QeYes QMessageBoxStandardButton where
 eYes
  = ieQMessageBoxStandardButton $ 16384
instance QeYesToAll QMessageBoxStandardButton where
 eYesToAll
  = ieQMessageBoxStandardButton $ 32768
instance QeNo QMessageBoxStandardButton where
 eNo
  = ieQMessageBoxStandardButton $ 65536
instance QeNoToAll QMessageBoxStandardButton where
 eNoToAll
  = ieQMessageBoxStandardButton $ 131072
instance QeAbort QMessageBoxStandardButton where
 eAbort
  = ieQMessageBoxStandardButton $ 262144
instance QeRetry QMessageBoxStandardButton where
 eRetry
  = ieQMessageBoxStandardButton $ 524288
instance QeIgnore QMessageBoxStandardButton where
 eIgnore
  = ieQMessageBoxStandardButton $ 1048576
instance QeClose QMessageBoxStandardButton where
 eClose
  = ieQMessageBoxStandardButton $ 2097152
instance QeCancel QMessageBoxStandardButton where
 eCancel
  = ieQMessageBoxStandardButton $ 4194304
instance QeDiscard QMessageBoxStandardButton where
 eDiscard
  = ieQMessageBoxStandardButton $ 8388608
instance QeHelp QMessageBoxStandardButton where
 eHelp
  = ieQMessageBoxStandardButton $ 16777216
instance QeApply QMessageBoxStandardButton where
 eApply
  = ieQMessageBoxStandardButton $ 33554432
instance QeReset QMessageBoxStandardButton where
 eReset
  = ieQMessageBoxStandardButton $ 67108864
instance QeRestoreDefaults QMessageBoxStandardButton where
 eRestoreDefaults
  = ieQMessageBoxStandardButton $ 134217728
instance QeFirstButton QMessageBoxStandardButton where
 eFirstButton
  = ieQMessageBoxStandardButton $ 1024
instance QeLastButton QMessageBoxStandardButton where
 eLastButton
  = ieQMessageBoxStandardButton $ 134217728
eYesAll :: QMessageBoxStandardButton
eYesAll
  = ieQMessageBoxStandardButton $ 32768
eNoAll :: QMessageBoxStandardButton
eNoAll
  = ieQMessageBoxStandardButton $ 131072
eDefault :: QMessageBoxStandardButton
eDefault
  = ieQMessageBoxStandardButton $ 256
eEscape :: QMessageBoxStandardButton
eEscape
  = ieQMessageBoxStandardButton $ 512
eFlagMask :: QMessageBoxStandardButton
eFlagMask
  = ieQMessageBoxStandardButton $ 768
eButtonMask :: QMessageBoxStandardButton
eButtonMask
  = ieQMessageBoxStandardButton $ -769

instance QfNoButton QMessageBoxStandardButtons where
 fNoButton
  = ifQMessageBoxStandardButtons $ 0
instance QfOk QMessageBoxStandardButtons where
 fOk
  = ifQMessageBoxStandardButtons $ 1024
instance QfSave QMessageBoxStandardButtons where
 fSave
  = ifQMessageBoxStandardButtons $ 2048
instance QfSaveAll QMessageBoxStandardButtons where
 fSaveAll
  = ifQMessageBoxStandardButtons $ 4096
instance QfOpen QMessageBoxStandardButtons where
 fOpen
  = ifQMessageBoxStandardButtons $ 8192
instance QfYes QMessageBoxStandardButtons where
 fYes
  = ifQMessageBoxStandardButtons $ 16384
instance QfYesToAll QMessageBoxStandardButtons where
 fYesToAll
  = ifQMessageBoxStandardButtons $ 32768
instance QfNo QMessageBoxStandardButtons where
 fNo
  = ifQMessageBoxStandardButtons $ 65536
instance QfNoToAll QMessageBoxStandardButtons where
 fNoToAll
  = ifQMessageBoxStandardButtons $ 131072
instance QfAbort QMessageBoxStandardButtons where
 fAbort
  = ifQMessageBoxStandardButtons $ 262144
instance QfRetry QMessageBoxStandardButtons where
 fRetry
  = ifQMessageBoxStandardButtons $ 524288
instance QfIgnore QMessageBoxStandardButtons where
 fIgnore
  = ifQMessageBoxStandardButtons $ 1048576
instance QfClose QMessageBoxStandardButtons where
 fClose
  = ifQMessageBoxStandardButtons $ 2097152
instance QfCancel QMessageBoxStandardButtons where
 fCancel
  = ifQMessageBoxStandardButtons $ 4194304
instance QfDiscard QMessageBoxStandardButtons where
 fDiscard
  = ifQMessageBoxStandardButtons $ 8388608
instance QfHelp QMessageBoxStandardButtons where
 fHelp
  = ifQMessageBoxStandardButtons $ 16777216
instance QfApply QMessageBoxStandardButtons where
 fApply
  = ifQMessageBoxStandardButtons $ 33554432
instance QfReset QMessageBoxStandardButtons where
 fReset
  = ifQMessageBoxStandardButtons $ 67108864
instance QfRestoreDefaults QMessageBoxStandardButtons where
 fRestoreDefaults
  = ifQMessageBoxStandardButtons $ 134217728
instance QfFirstButton QMessageBoxStandardButtons where
 fFirstButton
  = ifQMessageBoxStandardButtons $ 1024
instance QfLastButton QMessageBoxStandardButtons where
 fLastButton
  = ifQMessageBoxStandardButtons $ 134217728
fYesAll :: QMessageBoxStandardButtons
fYesAll
  = ifQMessageBoxStandardButtons $ 32768
fNoAll :: QMessageBoxStandardButtons
fNoAll
  = ifQMessageBoxStandardButtons $ 131072
fDefault :: QMessageBoxStandardButtons
fDefault
  = ifQMessageBoxStandardButtons $ 256
fEscape :: QMessageBoxStandardButtons
fEscape
  = ifQMessageBoxStandardButtons $ 512
fFlagMask :: QMessageBoxStandardButtons
fFlagMask
  = ifQMessageBoxStandardButtons $ 768
fButtonMask :: QMessageBoxStandardButtons
fButtonMask
  = ifQMessageBoxStandardButtons $ -769

