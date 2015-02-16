{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QTreeWidgetItem.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:36
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Enums.Gui.QTreeWidgetItem (
 QTreeWidgetItemItemType
 , ChildIndicatorPolicy, eShowIndicator, eDontShowIndicator, eDontShowIndicatorWhenChildless
 )
 where

import Foreign.C.Types
import Qtc.Classes.Base
import Qtc.ClassTypes.Core (QObject, TQObject, qObjectFromPtr)
import Qtc.Core.Base (Qcs, connectSlot, qtc_connectSlot_int, wrapSlotHandler_int)
import Qtc.Enums.Base
import Qtc.Enums.Classes.Core

data CQTreeWidgetItemItemType a = CQTreeWidgetItemItemType a
type QTreeWidgetItemItemType = QEnum(CQTreeWidgetItemItemType Int)

ieQTreeWidgetItemItemType :: Int -> QTreeWidgetItemItemType
ieQTreeWidgetItemItemType x = QEnum (CQTreeWidgetItemItemType x)

instance QEnumC (CQTreeWidgetItemItemType Int) where
 qEnum_toInt (QEnum (CQTreeWidgetItemItemType x)) = x
 qEnum_fromInt x = QEnum (CQTreeWidgetItemItemType x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> QTreeWidgetItemItemType -> IO ()) where
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

instance QeType QTreeWidgetItemItemType where
 eType
  = ieQTreeWidgetItemItemType $ 0
instance QeUserType QTreeWidgetItemItemType where
 eUserType
  = ieQTreeWidgetItemItemType $ 1000

data CChildIndicatorPolicy a = CChildIndicatorPolicy a
type ChildIndicatorPolicy = QEnum(CChildIndicatorPolicy Int)

ieChildIndicatorPolicy :: Int -> ChildIndicatorPolicy
ieChildIndicatorPolicy x = QEnum (CChildIndicatorPolicy x)

instance QEnumC (CChildIndicatorPolicy Int) where
 qEnum_toInt (QEnum (CChildIndicatorPolicy x)) = x
 qEnum_fromInt x = QEnum (CChildIndicatorPolicy x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> ChildIndicatorPolicy -> IO ()) where
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

eShowIndicator :: ChildIndicatorPolicy
eShowIndicator
  = ieChildIndicatorPolicy $ 0
eDontShowIndicator :: ChildIndicatorPolicy
eDontShowIndicator
  = ieChildIndicatorPolicy $ 1
eDontShowIndicatorWhenChildless :: ChildIndicatorPolicy
eDontShowIndicatorWhenChildless
  = ieChildIndicatorPolicy $ 2

