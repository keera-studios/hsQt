{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QDialogButtonBox.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:35
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Enums.Gui.QDialogButtonBox (
 QDialogButtonBoxButtonRole
 , QDialogButtonBoxStandardButton, QDialogButtonBoxStandardButtons
 , ButtonLayout, eWinLayout, eMacLayout, eKdeLayout, eGnomeLayout
 )
 where

import Foreign.C.Types
import Qtc.Classes.Base
import Qtc.ClassTypes.Core (QObject, TQObject, qObjectFromPtr)
import Qtc.Core.Base (Qcs, connectSlot, qtc_connectSlot_int, wrapSlotHandler_int)
import Qtc.Enums.Base
import Qtc.Enums.Classes.Core

data CQDialogButtonBoxButtonRole a = CQDialogButtonBoxButtonRole a
type QDialogButtonBoxButtonRole = QEnum(CQDialogButtonBoxButtonRole Int)

ieQDialogButtonBoxButtonRole :: Int -> QDialogButtonBoxButtonRole
ieQDialogButtonBoxButtonRole x = QEnum (CQDialogButtonBoxButtonRole x)

instance QEnumC (CQDialogButtonBoxButtonRole Int) where
 qEnum_toInt (QEnum (CQDialogButtonBoxButtonRole x)) = x
 qEnum_fromInt x = QEnum (CQDialogButtonBoxButtonRole x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> QDialogButtonBoxButtonRole -> IO ()) where
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

instance QeInvalidRole QDialogButtonBoxButtonRole where
 eInvalidRole
  = ieQDialogButtonBoxButtonRole $ -1
instance QeAcceptRole QDialogButtonBoxButtonRole where
 eAcceptRole
  = ieQDialogButtonBoxButtonRole $ 0
instance QeRejectRole QDialogButtonBoxButtonRole where
 eRejectRole
  = ieQDialogButtonBoxButtonRole $ 1
instance QeDestructiveRole QDialogButtonBoxButtonRole where
 eDestructiveRole
  = ieQDialogButtonBoxButtonRole $ 2
instance QeActionRole QDialogButtonBoxButtonRole where
 eActionRole
  = ieQDialogButtonBoxButtonRole $ 3
instance QeHelpRole QDialogButtonBoxButtonRole where
 eHelpRole
  = ieQDialogButtonBoxButtonRole $ 4
instance QeYesRole QDialogButtonBoxButtonRole where
 eYesRole
  = ieQDialogButtonBoxButtonRole $ 5
instance QeNoRole QDialogButtonBoxButtonRole where
 eNoRole
  = ieQDialogButtonBoxButtonRole $ 6
instance QeResetRole QDialogButtonBoxButtonRole where
 eResetRole
  = ieQDialogButtonBoxButtonRole $ 7
instance QeApplyRole QDialogButtonBoxButtonRole where
 eApplyRole
  = ieQDialogButtonBoxButtonRole $ 8
instance QeNRoles QDialogButtonBoxButtonRole where
 eNRoles
  = ieQDialogButtonBoxButtonRole $ 9

data CQDialogButtonBoxStandardButton a = CQDialogButtonBoxStandardButton a
type QDialogButtonBoxStandardButton = QEnum(CQDialogButtonBoxStandardButton Int)

ieQDialogButtonBoxStandardButton :: Int -> QDialogButtonBoxStandardButton
ieQDialogButtonBoxStandardButton x = QEnum (CQDialogButtonBoxStandardButton x)

instance QEnumC (CQDialogButtonBoxStandardButton Int) where
 qEnum_toInt (QEnum (CQDialogButtonBoxStandardButton x)) = x
 qEnum_fromInt x = QEnum (CQDialogButtonBoxStandardButton x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> QDialogButtonBoxStandardButton -> IO ()) where
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

data CQDialogButtonBoxStandardButtons a = CQDialogButtonBoxStandardButtons a
type QDialogButtonBoxStandardButtons = QFlags(CQDialogButtonBoxStandardButtons Int)

ifQDialogButtonBoxStandardButtons :: Int -> QDialogButtonBoxStandardButtons
ifQDialogButtonBoxStandardButtons x = QFlags (CQDialogButtonBoxStandardButtons x)

instance QFlagsC (CQDialogButtonBoxStandardButtons Int) where
 qFlags_toInt (QFlags (CQDialogButtonBoxStandardButtons x)) = x
 qFlags_fromInt x = QFlags (CQDialogButtonBoxStandardButtons x)
 withQFlagsResult x
   = do
     ti <- x
     return $ qFlags_fromInt $ fromIntegral ti
 withQFlagsListResult x
   = do
     til <- x
     return $ map qFlags_fromInt til

instance Qcs (QObject c -> QDialogButtonBoxStandardButtons -> IO ()) where
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

instance QeNoButton QDialogButtonBoxStandardButton where
 eNoButton
  = ieQDialogButtonBoxStandardButton $ 0
instance QeOk QDialogButtonBoxStandardButton where
 eOk
  = ieQDialogButtonBoxStandardButton $ 1024
instance QeSave QDialogButtonBoxStandardButton where
 eSave
  = ieQDialogButtonBoxStandardButton $ 2048
instance QeSaveAll QDialogButtonBoxStandardButton where
 eSaveAll
  = ieQDialogButtonBoxStandardButton $ 4096
instance QeOpen QDialogButtonBoxStandardButton where
 eOpen
  = ieQDialogButtonBoxStandardButton $ 8192
instance QeYes QDialogButtonBoxStandardButton where
 eYes
  = ieQDialogButtonBoxStandardButton $ 16384
instance QeYesToAll QDialogButtonBoxStandardButton where
 eYesToAll
  = ieQDialogButtonBoxStandardButton $ 32768
instance QeNo QDialogButtonBoxStandardButton where
 eNo
  = ieQDialogButtonBoxStandardButton $ 65536
instance QeNoToAll QDialogButtonBoxStandardButton where
 eNoToAll
  = ieQDialogButtonBoxStandardButton $ 131072
instance QeAbort QDialogButtonBoxStandardButton where
 eAbort
  = ieQDialogButtonBoxStandardButton $ 262144
instance QeRetry QDialogButtonBoxStandardButton where
 eRetry
  = ieQDialogButtonBoxStandardButton $ 524288
instance QeIgnore QDialogButtonBoxStandardButton where
 eIgnore
  = ieQDialogButtonBoxStandardButton $ 1048576
instance QeClose QDialogButtonBoxStandardButton where
 eClose
  = ieQDialogButtonBoxStandardButton $ 2097152
instance QeCancel QDialogButtonBoxStandardButton where
 eCancel
  = ieQDialogButtonBoxStandardButton $ 4194304
instance QeDiscard QDialogButtonBoxStandardButton where
 eDiscard
  = ieQDialogButtonBoxStandardButton $ 8388608
instance QeHelp QDialogButtonBoxStandardButton where
 eHelp
  = ieQDialogButtonBoxStandardButton $ 16777216
instance QeApply QDialogButtonBoxStandardButton where
 eApply
  = ieQDialogButtonBoxStandardButton $ 33554432
instance QeReset QDialogButtonBoxStandardButton where
 eReset
  = ieQDialogButtonBoxStandardButton $ 67108864
instance QeRestoreDefaults QDialogButtonBoxStandardButton where
 eRestoreDefaults
  = ieQDialogButtonBoxStandardButton $ 134217728
instance QeFirstButton QDialogButtonBoxStandardButton where
 eFirstButton
  = ieQDialogButtonBoxStandardButton $ 1024
instance QeLastButton QDialogButtonBoxStandardButton where
 eLastButton
  = ieQDialogButtonBoxStandardButton $ 134217728

instance QfNoButton QDialogButtonBoxStandardButtons where
 fNoButton
  = ifQDialogButtonBoxStandardButtons $ 0
instance QfOk QDialogButtonBoxStandardButtons where
 fOk
  = ifQDialogButtonBoxStandardButtons $ 1024
instance QfSave QDialogButtonBoxStandardButtons where
 fSave
  = ifQDialogButtonBoxStandardButtons $ 2048
instance QfSaveAll QDialogButtonBoxStandardButtons where
 fSaveAll
  = ifQDialogButtonBoxStandardButtons $ 4096
instance QfOpen QDialogButtonBoxStandardButtons where
 fOpen
  = ifQDialogButtonBoxStandardButtons $ 8192
instance QfYes QDialogButtonBoxStandardButtons where
 fYes
  = ifQDialogButtonBoxStandardButtons $ 16384
instance QfYesToAll QDialogButtonBoxStandardButtons where
 fYesToAll
  = ifQDialogButtonBoxStandardButtons $ 32768
instance QfNo QDialogButtonBoxStandardButtons where
 fNo
  = ifQDialogButtonBoxStandardButtons $ 65536
instance QfNoToAll QDialogButtonBoxStandardButtons where
 fNoToAll
  = ifQDialogButtonBoxStandardButtons $ 131072
instance QfAbort QDialogButtonBoxStandardButtons where
 fAbort
  = ifQDialogButtonBoxStandardButtons $ 262144
instance QfRetry QDialogButtonBoxStandardButtons where
 fRetry
  = ifQDialogButtonBoxStandardButtons $ 524288
instance QfIgnore QDialogButtonBoxStandardButtons where
 fIgnore
  = ifQDialogButtonBoxStandardButtons $ 1048576
instance QfClose QDialogButtonBoxStandardButtons where
 fClose
  = ifQDialogButtonBoxStandardButtons $ 2097152
instance QfCancel QDialogButtonBoxStandardButtons where
 fCancel
  = ifQDialogButtonBoxStandardButtons $ 4194304
instance QfDiscard QDialogButtonBoxStandardButtons where
 fDiscard
  = ifQDialogButtonBoxStandardButtons $ 8388608
instance QfHelp QDialogButtonBoxStandardButtons where
 fHelp
  = ifQDialogButtonBoxStandardButtons $ 16777216
instance QfApply QDialogButtonBoxStandardButtons where
 fApply
  = ifQDialogButtonBoxStandardButtons $ 33554432
instance QfReset QDialogButtonBoxStandardButtons where
 fReset
  = ifQDialogButtonBoxStandardButtons $ 67108864
instance QfRestoreDefaults QDialogButtonBoxStandardButtons where
 fRestoreDefaults
  = ifQDialogButtonBoxStandardButtons $ 134217728
instance QfFirstButton QDialogButtonBoxStandardButtons where
 fFirstButton
  = ifQDialogButtonBoxStandardButtons $ 1024
instance QfLastButton QDialogButtonBoxStandardButtons where
 fLastButton
  = ifQDialogButtonBoxStandardButtons $ 134217728

data CButtonLayout a = CButtonLayout a
type ButtonLayout = QEnum(CButtonLayout Int)

ieButtonLayout :: Int -> ButtonLayout
ieButtonLayout x = QEnum (CButtonLayout x)

instance QEnumC (CButtonLayout Int) where
 qEnum_toInt (QEnum (CButtonLayout x)) = x
 qEnum_fromInt x = QEnum (CButtonLayout x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> ButtonLayout -> IO ()) where
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

eWinLayout :: ButtonLayout
eWinLayout
  = ieButtonLayout $ 0
eMacLayout :: ButtonLayout
eMacLayout
  = ieButtonLayout $ 1
eKdeLayout :: ButtonLayout
eKdeLayout
  = ieButtonLayout $ 2
eGnomeLayout :: ButtonLayout
eGnomeLayout
  = ieButtonLayout $ 3

