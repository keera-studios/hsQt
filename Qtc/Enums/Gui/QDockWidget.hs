{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QDockWidget.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:36
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Enums.Gui.QDockWidget (
 DockWidgetFeature, DockWidgetFeatures, eDockWidgetClosable, fDockWidgetClosable, eDockWidgetMovable, fDockWidgetMovable, eDockWidgetFloatable, fDockWidgetFloatable, eDockWidgetVerticalTitleBar, fDockWidgetVerticalTitleBar, eDockWidgetFeatureMask, fDockWidgetFeatureMask, eAllDockWidgetFeatures, fAllDockWidgetFeatures, eNoDockWidgetFeatures, fNoDockWidgetFeatures, fReserved
 )
 where

import Foreign.C.Types
import Qtc.Classes.Base
import Qtc.ClassTypes.Core (QObject, TQObject, qObjectFromPtr)
import Qtc.Core.Base (Qcs, connectSlot, qtc_connectSlot_int, wrapSlotHandler_int)
import Qtc.Enums.Base
import Qtc.Enums.Classes.Core

data CDockWidgetFeature a = CDockWidgetFeature a
type DockWidgetFeature = QEnum(CDockWidgetFeature Int)

ieDockWidgetFeature :: Int -> DockWidgetFeature
ieDockWidgetFeature x = QEnum (CDockWidgetFeature x)

instance QEnumC (CDockWidgetFeature Int) where
 qEnum_toInt (QEnum (CDockWidgetFeature x)) = x
 qEnum_fromInt x = QEnum (CDockWidgetFeature x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> DockWidgetFeature -> IO ()) where
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

data CDockWidgetFeatures a = CDockWidgetFeatures a
type DockWidgetFeatures = QFlags(CDockWidgetFeatures Int)

ifDockWidgetFeatures :: Int -> DockWidgetFeatures
ifDockWidgetFeatures x = QFlags (CDockWidgetFeatures x)

instance QFlagsC (CDockWidgetFeatures Int) where
 qFlags_toInt (QFlags (CDockWidgetFeatures x)) = x
 qFlags_fromInt x = QFlags (CDockWidgetFeatures x)
 withQFlagsResult x
   = do
     ti <- x
     return $ qFlags_fromInt $ fromIntegral ti
 withQFlagsListResult x
   = do
     til <- x
     return $ map qFlags_fromInt til

instance Qcs (QObject c -> DockWidgetFeatures -> IO ()) where
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

eDockWidgetClosable :: DockWidgetFeature
eDockWidgetClosable
  = ieDockWidgetFeature $ 1
eDockWidgetMovable :: DockWidgetFeature
eDockWidgetMovable
  = ieDockWidgetFeature $ 2
eDockWidgetFloatable :: DockWidgetFeature
eDockWidgetFloatable
  = ieDockWidgetFeature $ 4
eDockWidgetVerticalTitleBar :: DockWidgetFeature
eDockWidgetVerticalTitleBar
  = ieDockWidgetFeature $ 8
eDockWidgetFeatureMask :: DockWidgetFeature
eDockWidgetFeatureMask
  = ieDockWidgetFeature $ 15
eAllDockWidgetFeatures :: DockWidgetFeature
eAllDockWidgetFeatures
  = ieDockWidgetFeature $ 7
eNoDockWidgetFeatures :: DockWidgetFeature
eNoDockWidgetFeatures
  = ieDockWidgetFeature $ 0
instance QeReserved DockWidgetFeature where
 eReserved
  = ieDockWidgetFeature $ 255

fDockWidgetClosable :: DockWidgetFeatures
fDockWidgetClosable
  = ifDockWidgetFeatures $ 1
fDockWidgetMovable :: DockWidgetFeatures
fDockWidgetMovable
  = ifDockWidgetFeatures $ 2
fDockWidgetFloatable :: DockWidgetFeatures
fDockWidgetFloatable
  = ifDockWidgetFeatures $ 4
fDockWidgetVerticalTitleBar :: DockWidgetFeatures
fDockWidgetVerticalTitleBar
  = ifDockWidgetFeatures $ 8
fDockWidgetFeatureMask :: DockWidgetFeatures
fDockWidgetFeatureMask
  = ifDockWidgetFeatures $ 15
fAllDockWidgetFeatures :: DockWidgetFeatures
fAllDockWidgetFeatures
  = ifDockWidgetFeatures $ 7
fNoDockWidgetFeatures :: DockWidgetFeatures
fNoDockWidgetFeatures
  = ifDockWidgetFeatures $ 0
fReserved :: DockWidgetFeatures
fReserved
  = ifDockWidgetFeatures $ 255

