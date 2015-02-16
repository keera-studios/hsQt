{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QSizePolicy.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:35
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Enums.Gui.QSizePolicy (
 PolicyFlag, eGrowFlag, eExpandFlag, eShrinkFlag, eIgnoreFlag
 , Policy, eMinimum, eMaximum, ePreferred, eMinimumExpanding, eExpanding, eIgnored
 , ControlType, ControlTypes, eDefaultType, fDefaultType, eButtonBox, fButtonBox, eCheckBox, fCheckBox, eComboBox, fComboBox, eFrame, fFrame, eGroupBox, fGroupBox, eLabel, fLabel, fLine, eLineEdit, fLineEdit, ePushButton, fPushButton, eRadioButton, fRadioButton, eSlider, fSlider, eSpinBox, fSpinBox, eTabWidget, fTabWidget, eToolButton, fToolButton
 )
 where

import Foreign.C.Types
import Qtc.Classes.Base
import Qtc.ClassTypes.Core (QObject, TQObject, qObjectFromPtr)
import Qtc.Core.Base (Qcs, connectSlot, qtc_connectSlot_int, wrapSlotHandler_int)
import Qtc.Enums.Base
import Qtc.Enums.Classes.Core

data CPolicyFlag a = CPolicyFlag a
type PolicyFlag = QEnum(CPolicyFlag Int)

iePolicyFlag :: Int -> PolicyFlag
iePolicyFlag x = QEnum (CPolicyFlag x)

instance QEnumC (CPolicyFlag Int) where
 qEnum_toInt (QEnum (CPolicyFlag x)) = x
 qEnum_fromInt x = QEnum (CPolicyFlag x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> PolicyFlag -> IO ()) where
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

eGrowFlag :: PolicyFlag
eGrowFlag
  = iePolicyFlag $ 1
eExpandFlag :: PolicyFlag
eExpandFlag
  = iePolicyFlag $ 2
eShrinkFlag :: PolicyFlag
eShrinkFlag
  = iePolicyFlag $ 4
eIgnoreFlag :: PolicyFlag
eIgnoreFlag
  = iePolicyFlag $ 8

data CPolicy a = CPolicy a
type Policy = QEnum(CPolicy Int)

iePolicy :: Int -> Policy
iePolicy x = QEnum (CPolicy x)

instance QEnumC (CPolicy Int) where
 qEnum_toInt (QEnum (CPolicy x)) = x
 qEnum_fromInt x = QEnum (CPolicy x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> Policy -> IO ()) where
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

instance QeFixed Policy where
 eFixed
  = iePolicy $ 0
eMinimum :: Policy
eMinimum
  = iePolicy $ 1
eMaximum :: Policy
eMaximum
  = iePolicy $ 4
ePreferred :: Policy
ePreferred
  = iePolicy $ 5
eMinimumExpanding :: Policy
eMinimumExpanding
  = iePolicy $ 3
eExpanding :: Policy
eExpanding
  = iePolicy $ 7
eIgnored :: Policy
eIgnored
  = iePolicy $ 13

data CControlType a = CControlType a
type ControlType = QEnum(CControlType Int)

ieControlType :: Int -> ControlType
ieControlType x = QEnum (CControlType x)

instance QEnumC (CControlType Int) where
 qEnum_toInt (QEnum (CControlType x)) = x
 qEnum_fromInt x = QEnum (CControlType x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> ControlType -> IO ()) where
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

data CControlTypes a = CControlTypes a
type ControlTypes = QFlags(CControlTypes Int)

ifControlTypes :: Int -> ControlTypes
ifControlTypes x = QFlags (CControlTypes x)

instance QFlagsC (CControlTypes Int) where
 qFlags_toInt (QFlags (CControlTypes x)) = x
 qFlags_fromInt x = QFlags (CControlTypes x)
 withQFlagsResult x
   = do
     ti <- x
     return $ qFlags_fromInt $ fromIntegral ti
 withQFlagsListResult x
   = do
     til <- x
     return $ map qFlags_fromInt til

instance Qcs (QObject c -> ControlTypes -> IO ()) where
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

eDefaultType :: ControlType
eDefaultType
  = ieControlType $ 1
eButtonBox :: ControlType
eButtonBox
  = ieControlType $ 2
eCheckBox :: ControlType
eCheckBox
  = ieControlType $ 4
eComboBox :: ControlType
eComboBox
  = ieControlType $ 8
eFrame :: ControlType
eFrame
  = ieControlType $ 16
eGroupBox :: ControlType
eGroupBox
  = ieControlType $ 32
eLabel :: ControlType
eLabel
  = ieControlType $ 64
instance QeLine ControlType where
 eLine
  = ieControlType $ 128
eLineEdit :: ControlType
eLineEdit
  = ieControlType $ 256
ePushButton :: ControlType
ePushButton
  = ieControlType $ 512
eRadioButton :: ControlType
eRadioButton
  = ieControlType $ 1024
eSlider :: ControlType
eSlider
  = ieControlType $ 2048
eSpinBox :: ControlType
eSpinBox
  = ieControlType $ 4096
eTabWidget :: ControlType
eTabWidget
  = ieControlType $ 8192
eToolButton :: ControlType
eToolButton
  = ieControlType $ 16384

fDefaultType :: ControlTypes
fDefaultType
  = ifControlTypes $ 1
fButtonBox :: ControlTypes
fButtonBox
  = ifControlTypes $ 2
fCheckBox :: ControlTypes
fCheckBox
  = ifControlTypes $ 4
fComboBox :: ControlTypes
fComboBox
  = ifControlTypes $ 8
fFrame :: ControlTypes
fFrame
  = ifControlTypes $ 16
fGroupBox :: ControlTypes
fGroupBox
  = ifControlTypes $ 32
fLabel :: ControlTypes
fLabel
  = ifControlTypes $ 64
fLine :: ControlTypes
fLine
  = ifControlTypes $ 128
fLineEdit :: ControlTypes
fLineEdit
  = ifControlTypes $ 256
fPushButton :: ControlTypes
fPushButton
  = ifControlTypes $ 512
fRadioButton :: ControlTypes
fRadioButton
  = ifControlTypes $ 1024
fSlider :: ControlTypes
fSlider
  = ifControlTypes $ 2048
fSpinBox :: ControlTypes
fSpinBox
  = ifControlTypes $ 4096
fTabWidget :: ControlTypes
fTabWidget
  = ifControlTypes $ 8192
fToolButton :: ControlTypes
fToolButton
  = ifControlTypes $ 16384

