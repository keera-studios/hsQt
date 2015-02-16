{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QStyleOptionMenuItem.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:36
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Enums.Gui.QStyleOptionMenuItem (
 QStyleOptionMenuItemStyleOptionType
 , QStyleOptionMenuItemStyleOptionVersion
 , MenuItemType, eDefaultItem, eSeparator, eSubMenu, eScroller, eTearOff, eMargin, eEmptyArea
 , CheckType, eNotCheckable, eExclusive, eNonExclusive
 )
 where

import Foreign.C.Types
import Qtc.Classes.Base
import Qtc.ClassTypes.Core (QObject, TQObject, qObjectFromPtr)
import Qtc.Core.Base (Qcs, connectSlot, qtc_connectSlot_int, wrapSlotHandler_int)
import Qtc.Enums.Base
import Qtc.Enums.Classes.Core

data CQStyleOptionMenuItemStyleOptionType a = CQStyleOptionMenuItemStyleOptionType a
type QStyleOptionMenuItemStyleOptionType = QEnum(CQStyleOptionMenuItemStyleOptionType Int)

ieQStyleOptionMenuItemStyleOptionType :: Int -> QStyleOptionMenuItemStyleOptionType
ieQStyleOptionMenuItemStyleOptionType x = QEnum (CQStyleOptionMenuItemStyleOptionType x)

instance QEnumC (CQStyleOptionMenuItemStyleOptionType Int) where
 qEnum_toInt (QEnum (CQStyleOptionMenuItemStyleOptionType x)) = x
 qEnum_fromInt x = QEnum (CQStyleOptionMenuItemStyleOptionType x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> QStyleOptionMenuItemStyleOptionType -> IO ()) where
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

instance QeType QStyleOptionMenuItemStyleOptionType where
 eType
  = ieQStyleOptionMenuItemStyleOptionType $ 4

data CQStyleOptionMenuItemStyleOptionVersion a = CQStyleOptionMenuItemStyleOptionVersion a
type QStyleOptionMenuItemStyleOptionVersion = QEnum(CQStyleOptionMenuItemStyleOptionVersion Int)

ieQStyleOptionMenuItemStyleOptionVersion :: Int -> QStyleOptionMenuItemStyleOptionVersion
ieQStyleOptionMenuItemStyleOptionVersion x = QEnum (CQStyleOptionMenuItemStyleOptionVersion x)

instance QEnumC (CQStyleOptionMenuItemStyleOptionVersion Int) where
 qEnum_toInt (QEnum (CQStyleOptionMenuItemStyleOptionVersion x)) = x
 qEnum_fromInt x = QEnum (CQStyleOptionMenuItemStyleOptionVersion x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> QStyleOptionMenuItemStyleOptionVersion -> IO ()) where
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

instance QeVersion QStyleOptionMenuItemStyleOptionVersion where
 eVersion
  = ieQStyleOptionMenuItemStyleOptionVersion $ 1

data CMenuItemType a = CMenuItemType a
type MenuItemType = QEnum(CMenuItemType Int)

ieMenuItemType :: Int -> MenuItemType
ieMenuItemType x = QEnum (CMenuItemType x)

instance QEnumC (CMenuItemType Int) where
 qEnum_toInt (QEnum (CMenuItemType x)) = x
 qEnum_fromInt x = QEnum (CMenuItemType x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> MenuItemType -> IO ()) where
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

instance QeNormal MenuItemType where
 eNormal
  = ieMenuItemType $ 0
eDefaultItem :: MenuItemType
eDefaultItem
  = ieMenuItemType $ 1
eSeparator :: MenuItemType
eSeparator
  = ieMenuItemType $ 2
eSubMenu :: MenuItemType
eSubMenu
  = ieMenuItemType $ 3
eScroller :: MenuItemType
eScroller
  = ieMenuItemType $ 4
eTearOff :: MenuItemType
eTearOff
  = ieMenuItemType $ 5
eMargin :: MenuItemType
eMargin
  = ieMenuItemType $ 6
eEmptyArea :: MenuItemType
eEmptyArea
  = ieMenuItemType $ 7

data CCheckType a = CCheckType a
type CheckType = QEnum(CCheckType Int)

ieCheckType :: Int -> CheckType
ieCheckType x = QEnum (CCheckType x)

instance QEnumC (CCheckType Int) where
 qEnum_toInt (QEnum (CCheckType x)) = x
 qEnum_fromInt x = QEnum (CCheckType x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> CheckType -> IO ()) where
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

eNotCheckable :: CheckType
eNotCheckable
  = ieCheckType $ 0
eExclusive :: CheckType
eExclusive
  = ieCheckType $ 1
eNonExclusive :: CheckType
eNonExclusive
  = ieCheckType $ 2

