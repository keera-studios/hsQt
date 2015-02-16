{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QStyleOptionToolButton.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:36
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Enums.Gui.QStyleOptionToolButton (
 QStyleOptionToolButtonStyleOptionType
 , QStyleOptionToolButtonStyleOptionVersion
 , ToolButtonFeature, ToolButtonFeatures, eArrow, fArrow, eMenu, fMenu, fMenuButtonPopup, ePopupDelay, fPopupDelay
 )
 where

import Foreign.C.Types
import Qtc.Classes.Base
import Qtc.ClassTypes.Core (QObject, TQObject, qObjectFromPtr)
import Qtc.Core.Base (Qcs, connectSlot, qtc_connectSlot_int, wrapSlotHandler_int)
import Qtc.Enums.Base
import Qtc.Enums.Classes.Core

data CQStyleOptionToolButtonStyleOptionType a = CQStyleOptionToolButtonStyleOptionType a
type QStyleOptionToolButtonStyleOptionType = QEnum(CQStyleOptionToolButtonStyleOptionType Int)

ieQStyleOptionToolButtonStyleOptionType :: Int -> QStyleOptionToolButtonStyleOptionType
ieQStyleOptionToolButtonStyleOptionType x = QEnum (CQStyleOptionToolButtonStyleOptionType x)

instance QEnumC (CQStyleOptionToolButtonStyleOptionType Int) where
 qEnum_toInt (QEnum (CQStyleOptionToolButtonStyleOptionType x)) = x
 qEnum_fromInt x = QEnum (CQStyleOptionToolButtonStyleOptionType x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> QStyleOptionToolButtonStyleOptionType -> IO ()) where
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

instance QeType QStyleOptionToolButtonStyleOptionType where
 eType
  = ieQStyleOptionToolButtonStyleOptionType $ 983043

data CQStyleOptionToolButtonStyleOptionVersion a = CQStyleOptionToolButtonStyleOptionVersion a
type QStyleOptionToolButtonStyleOptionVersion = QEnum(CQStyleOptionToolButtonStyleOptionVersion Int)

ieQStyleOptionToolButtonStyleOptionVersion :: Int -> QStyleOptionToolButtonStyleOptionVersion
ieQStyleOptionToolButtonStyleOptionVersion x = QEnum (CQStyleOptionToolButtonStyleOptionVersion x)

instance QEnumC (CQStyleOptionToolButtonStyleOptionVersion Int) where
 qEnum_toInt (QEnum (CQStyleOptionToolButtonStyleOptionVersion x)) = x
 qEnum_fromInt x = QEnum (CQStyleOptionToolButtonStyleOptionVersion x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> QStyleOptionToolButtonStyleOptionVersion -> IO ()) where
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

instance QeVersion QStyleOptionToolButtonStyleOptionVersion where
 eVersion
  = ieQStyleOptionToolButtonStyleOptionVersion $ 1

data CToolButtonFeature a = CToolButtonFeature a
type ToolButtonFeature = QEnum(CToolButtonFeature Int)

ieToolButtonFeature :: Int -> ToolButtonFeature
ieToolButtonFeature x = QEnum (CToolButtonFeature x)

instance QEnumC (CToolButtonFeature Int) where
 qEnum_toInt (QEnum (CToolButtonFeature x)) = x
 qEnum_fromInt x = QEnum (CToolButtonFeature x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> ToolButtonFeature -> IO ()) where
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

data CToolButtonFeatures a = CToolButtonFeatures a
type ToolButtonFeatures = QFlags(CToolButtonFeatures Int)

ifToolButtonFeatures :: Int -> ToolButtonFeatures
ifToolButtonFeatures x = QFlags (CToolButtonFeatures x)

instance QFlagsC (CToolButtonFeatures Int) where
 qFlags_toInt (QFlags (CToolButtonFeatures x)) = x
 qFlags_fromInt x = QFlags (CToolButtonFeatures x)
 withQFlagsResult x
   = do
     ti <- x
     return $ qFlags_fromInt $ fromIntegral ti
 withQFlagsListResult x
   = do
     til <- x
     return $ map qFlags_fromInt til

instance Qcs (QObject c -> ToolButtonFeatures -> IO ()) where
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

instance QeNone ToolButtonFeature where
 eNone
  = ieToolButtonFeature $ 0
eArrow :: ToolButtonFeature
eArrow
  = ieToolButtonFeature $ 1
eMenu :: ToolButtonFeature
eMenu
  = ieToolButtonFeature $ 4
instance QeMenuButtonPopup ToolButtonFeature where
 eMenuButtonPopup
  = ieToolButtonFeature $ 4
ePopupDelay :: ToolButtonFeature
ePopupDelay
  = ieToolButtonFeature $ 8
instance QeHasMenu ToolButtonFeature where
 eHasMenu
  = ieToolButtonFeature $ 16

instance QfNone ToolButtonFeatures where
 fNone
  = ifToolButtonFeatures $ 0
fArrow :: ToolButtonFeatures
fArrow
  = ifToolButtonFeatures $ 1
fMenu :: ToolButtonFeatures
fMenu
  = ifToolButtonFeatures $ 4
fMenuButtonPopup :: ToolButtonFeatures
fMenuButtonPopup
  = ifToolButtonFeatures $ 4
fPopupDelay :: ToolButtonFeatures
fPopupDelay
  = ifToolButtonFeatures $ 8
instance QfHasMenu ToolButtonFeatures where
 fHasMenu
  = ifToolButtonFeatures $ 16

