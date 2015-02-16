{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QItemSelectionModel.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:35
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Enums.Gui.QItemSelectionModel (
 SelectionFlag, SelectionFlags, eNoUpdate, fNoUpdate, eClear, fClear, eSelect, fSelect, eDeselect, fDeselect, eToggle, fToggle, fCurrent, eRows, fRows, eColumns, fColumns, eSelectCurrent, fSelectCurrent, eToggleCurrent, fToggleCurrent, eClearAndSelect, fClearAndSelect
 )
 where

import Foreign.C.Types
import Qtc.Classes.Base
import Qtc.ClassTypes.Core (QObject, TQObject, qObjectFromPtr)
import Qtc.Core.Base (Qcs, connectSlot, qtc_connectSlot_int, wrapSlotHandler_int)
import Qtc.Enums.Base
import Qtc.Enums.Classes.Core

data CSelectionFlag a = CSelectionFlag a
type SelectionFlag = QEnum(CSelectionFlag Int)

ieSelectionFlag :: Int -> SelectionFlag
ieSelectionFlag x = QEnum (CSelectionFlag x)

instance QEnumC (CSelectionFlag Int) where
 qEnum_toInt (QEnum (CSelectionFlag x)) = x
 qEnum_fromInt x = QEnum (CSelectionFlag x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> SelectionFlag -> IO ()) where
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

data CSelectionFlags a = CSelectionFlags a
type SelectionFlags = QFlags(CSelectionFlags Int)

ifSelectionFlags :: Int -> SelectionFlags
ifSelectionFlags x = QFlags (CSelectionFlags x)

instance QFlagsC (CSelectionFlags Int) where
 qFlags_toInt (QFlags (CSelectionFlags x)) = x
 qFlags_fromInt x = QFlags (CSelectionFlags x)
 withQFlagsResult x
   = do
     ti <- x
     return $ qFlags_fromInt $ fromIntegral ti
 withQFlagsListResult x
   = do
     til <- x
     return $ map qFlags_fromInt til

instance Qcs (QObject c -> SelectionFlags -> IO ()) where
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

eNoUpdate :: SelectionFlag
eNoUpdate
  = ieSelectionFlag $ 0
eClear :: SelectionFlag
eClear
  = ieSelectionFlag $ 1
eSelect :: SelectionFlag
eSelect
  = ieSelectionFlag $ 2
eDeselect :: SelectionFlag
eDeselect
  = ieSelectionFlag $ 4
eToggle :: SelectionFlag
eToggle
  = ieSelectionFlag $ 8
instance QeCurrent SelectionFlag where
 eCurrent
  = ieSelectionFlag $ 16
eRows :: SelectionFlag
eRows
  = ieSelectionFlag $ 32
eColumns :: SelectionFlag
eColumns
  = ieSelectionFlag $ 64
eSelectCurrent :: SelectionFlag
eSelectCurrent
  = ieSelectionFlag $ 18
eToggleCurrent :: SelectionFlag
eToggleCurrent
  = ieSelectionFlag $ 24
eClearAndSelect :: SelectionFlag
eClearAndSelect
  = ieSelectionFlag $ 3

fNoUpdate :: SelectionFlags
fNoUpdate
  = ifSelectionFlags $ 0
fClear :: SelectionFlags
fClear
  = ifSelectionFlags $ 1
fSelect :: SelectionFlags
fSelect
  = ifSelectionFlags $ 2
fDeselect :: SelectionFlags
fDeselect
  = ifSelectionFlags $ 4
fToggle :: SelectionFlags
fToggle
  = ifSelectionFlags $ 8
fCurrent :: SelectionFlags
fCurrent
  = ifSelectionFlags $ 16
fRows :: SelectionFlags
fRows
  = ifSelectionFlags $ 32
fColumns :: SelectionFlags
fColumns
  = ifSelectionFlags $ 64
fSelectCurrent :: SelectionFlags
fSelectCurrent
  = ifSelectionFlags $ 18
fToggleCurrent :: SelectionFlags
fToggleCurrent
  = ifSelectionFlags $ 24
fClearAndSelect :: SelectionFlags
fClearAndSelect
  = ifSelectionFlags $ 3

