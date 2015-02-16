{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QMainWindow.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:35
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Enums.Gui.QMainWindow (
 DockOption, DockOptions, eAnimatedDocks, fAnimatedDocks, eAllowNestedDocks, fAllowNestedDocks, eAllowTabbedDocks, fAllowTabbedDocks, eForceTabbedDocks, fForceTabbedDocks, eVerticalTabs, fVerticalTabs
 )
 where

import Foreign.C.Types
import Qtc.Classes.Base
import Qtc.ClassTypes.Core (QObject, TQObject, qObjectFromPtr)
import Qtc.Core.Base (Qcs, connectSlot, qtc_connectSlot_int, wrapSlotHandler_int)
import Qtc.Enums.Base
import Qtc.Enums.Classes.Core

data CDockOption a = CDockOption a
type DockOption = QEnum(CDockOption Int)

ieDockOption :: Int -> DockOption
ieDockOption x = QEnum (CDockOption x)

instance QEnumC (CDockOption Int) where
 qEnum_toInt (QEnum (CDockOption x)) = x
 qEnum_fromInt x = QEnum (CDockOption x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> DockOption -> IO ()) where
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

data CDockOptions a = CDockOptions a
type DockOptions = QFlags(CDockOptions Int)

ifDockOptions :: Int -> DockOptions
ifDockOptions x = QFlags (CDockOptions x)

instance QFlagsC (CDockOptions Int) where
 qFlags_toInt (QFlags (CDockOptions x)) = x
 qFlags_fromInt x = QFlags (CDockOptions x)
 withQFlagsResult x
   = do
     ti <- x
     return $ qFlags_fromInt $ fromIntegral ti
 withQFlagsListResult x
   = do
     til <- x
     return $ map qFlags_fromInt til

instance Qcs (QObject c -> DockOptions -> IO ()) where
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

eAnimatedDocks :: DockOption
eAnimatedDocks
  = ieDockOption $ 1
eAllowNestedDocks :: DockOption
eAllowNestedDocks
  = ieDockOption $ 2
eAllowTabbedDocks :: DockOption
eAllowTabbedDocks
  = ieDockOption $ 4
eForceTabbedDocks :: DockOption
eForceTabbedDocks
  = ieDockOption $ 8
eVerticalTabs :: DockOption
eVerticalTabs
  = ieDockOption $ 16

fAnimatedDocks :: DockOptions
fAnimatedDocks
  = ifDockOptions $ 1
fAllowNestedDocks :: DockOptions
fAllowNestedDocks
  = ifDockOptions $ 2
fAllowTabbedDocks :: DockOptions
fAllowTabbedDocks
  = ifDockOptions $ 4
fForceTabbedDocks :: DockOptions
fForceTabbedDocks
  = ifDockOptions $ 8
fVerticalTabs :: DockOptions
fVerticalTabs
  = ifDockOptions $ 16

