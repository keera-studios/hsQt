{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QStyleOption.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:35
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Enums.Gui.QStyleOption (
 OptionType, eSO_Default, eSO_FocusRect, eSO_Button, eSO_Tab, eSO_MenuItem, eSO_Frame, eSO_ProgressBar, eSO_ToolBox, eSO_Header, eSO_Q3DockWindow, eSO_DockWidget, eSO_Q3ListViewItem, eSO_ViewItem, eSO_TabWidgetFrame, eSO_TabBarBase, eSO_RubberBand, eSO_ToolBar, eSO_GraphicsItem, eSO_Complex, eSO_Slider, eSO_SpinBox, eSO_ToolButton, eSO_ComboBox, eSO_Q3ListView, eSO_TitleBar, eSO_GroupBox, eSO_SizeGrip, eSO_CustomBase, eSO_ComplexCustomBase
 , QStyleOptionStyleOptionType
 , QStyleOptionStyleOptionVersion
 )
 where

import Foreign.C.Types
import Qtc.Classes.Base
import Qtc.ClassTypes.Core (QObject, TQObject, qObjectFromPtr)
import Qtc.Core.Base (Qcs, connectSlot, qtc_connectSlot_int, wrapSlotHandler_int)
import Qtc.Enums.Base
import Qtc.Enums.Classes.Core

data COptionType a = COptionType a
type OptionType = QEnum(COptionType Int)

ieOptionType :: Int -> OptionType
ieOptionType x = QEnum (COptionType x)

instance QEnumC (COptionType Int) where
 qEnum_toInt (QEnum (COptionType x)) = x
 qEnum_fromInt x = QEnum (COptionType x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> OptionType -> IO ()) where
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

eSO_Default :: OptionType
eSO_Default
  = ieOptionType $ 0
eSO_FocusRect :: OptionType
eSO_FocusRect
  = ieOptionType $ 1
eSO_Button :: OptionType
eSO_Button
  = ieOptionType $ 2
eSO_Tab :: OptionType
eSO_Tab
  = ieOptionType $ 3
eSO_MenuItem :: OptionType
eSO_MenuItem
  = ieOptionType $ 4
eSO_Frame :: OptionType
eSO_Frame
  = ieOptionType $ 5
eSO_ProgressBar :: OptionType
eSO_ProgressBar
  = ieOptionType $ 6
eSO_ToolBox :: OptionType
eSO_ToolBox
  = ieOptionType $ 7
eSO_Header :: OptionType
eSO_Header
  = ieOptionType $ 8
eSO_Q3DockWindow :: OptionType
eSO_Q3DockWindow
  = ieOptionType $ 9
eSO_DockWidget :: OptionType
eSO_DockWidget
  = ieOptionType $ 10
eSO_Q3ListViewItem :: OptionType
eSO_Q3ListViewItem
  = ieOptionType $ 11
eSO_ViewItem :: OptionType
eSO_ViewItem
  = ieOptionType $ 12
eSO_TabWidgetFrame :: OptionType
eSO_TabWidgetFrame
  = ieOptionType $ 13
eSO_TabBarBase :: OptionType
eSO_TabBarBase
  = ieOptionType $ 14
eSO_RubberBand :: OptionType
eSO_RubberBand
  = ieOptionType $ 15
eSO_ToolBar :: OptionType
eSO_ToolBar
  = ieOptionType $ 16
eSO_GraphicsItem :: OptionType
eSO_GraphicsItem
  = ieOptionType $ 17
eSO_Complex :: OptionType
eSO_Complex
  = ieOptionType $ 983040
eSO_Slider :: OptionType
eSO_Slider
  = ieOptionType $ 983041
eSO_SpinBox :: OptionType
eSO_SpinBox
  = ieOptionType $ 983042
eSO_ToolButton :: OptionType
eSO_ToolButton
  = ieOptionType $ 983043
eSO_ComboBox :: OptionType
eSO_ComboBox
  = ieOptionType $ 983044
eSO_Q3ListView :: OptionType
eSO_Q3ListView
  = ieOptionType $ 983045
eSO_TitleBar :: OptionType
eSO_TitleBar
  = ieOptionType $ 983046
eSO_GroupBox :: OptionType
eSO_GroupBox
  = ieOptionType $ 983047
eSO_SizeGrip :: OptionType
eSO_SizeGrip
  = ieOptionType $ 983048
eSO_CustomBase :: OptionType
eSO_CustomBase
  = ieOptionType $ 3840
eSO_ComplexCustomBase :: OptionType
eSO_ComplexCustomBase
  = ieOptionType $ 251658240

data CQStyleOptionStyleOptionType a = CQStyleOptionStyleOptionType a
type QStyleOptionStyleOptionType = QEnum(CQStyleOptionStyleOptionType Int)

ieQStyleOptionStyleOptionType :: Int -> QStyleOptionStyleOptionType
ieQStyleOptionStyleOptionType x = QEnum (CQStyleOptionStyleOptionType x)

instance QEnumC (CQStyleOptionStyleOptionType Int) where
 qEnum_toInt (QEnum (CQStyleOptionStyleOptionType x)) = x
 qEnum_fromInt x = QEnum (CQStyleOptionStyleOptionType x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> QStyleOptionStyleOptionType -> IO ()) where
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

instance QeType QStyleOptionStyleOptionType where
 eType
  = ieQStyleOptionStyleOptionType $ 0

data CQStyleOptionStyleOptionVersion a = CQStyleOptionStyleOptionVersion a
type QStyleOptionStyleOptionVersion = QEnum(CQStyleOptionStyleOptionVersion Int)

ieQStyleOptionStyleOptionVersion :: Int -> QStyleOptionStyleOptionVersion
ieQStyleOptionStyleOptionVersion x = QEnum (CQStyleOptionStyleOptionVersion x)

instance QEnumC (CQStyleOptionStyleOptionVersion Int) where
 qEnum_toInt (QEnum (CQStyleOptionStyleOptionVersion x)) = x
 qEnum_fromInt x = QEnum (CQStyleOptionStyleOptionVersion x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> QStyleOptionStyleOptionVersion -> IO ()) where
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

instance QeVersion QStyleOptionStyleOptionVersion where
 eVersion
  = ieQStyleOptionStyleOptionVersion $ 1

