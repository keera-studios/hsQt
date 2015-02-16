{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QTabletEvent.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:35
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Enums.Gui.QTabletEvent (
 TabletDevice, eNoDevice, ePuck, eStylus, eAirbrush, eFourDMouse, eXFreeEraser, eRotationStylus
 , PointerType, eUnknownPointer, eEraser
 )
 where

import Foreign.C.Types
import Qtc.Classes.Base
import Qtc.ClassTypes.Core (QObject, TQObject, qObjectFromPtr)
import Qtc.Core.Base (Qcs, connectSlot, qtc_connectSlot_int, wrapSlotHandler_int)
import Qtc.Enums.Base
import Qtc.Enums.Classes.Core

data CTabletDevice a = CTabletDevice a
type TabletDevice = QEnum(CTabletDevice Int)

ieTabletDevice :: Int -> TabletDevice
ieTabletDevice x = QEnum (CTabletDevice x)

instance QEnumC (CTabletDevice Int) where
 qEnum_toInt (QEnum (CTabletDevice x)) = x
 qEnum_fromInt x = QEnum (CTabletDevice x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> TabletDevice -> IO ()) where
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

eNoDevice :: TabletDevice
eNoDevice
  = ieTabletDevice $ 0
ePuck :: TabletDevice
ePuck
  = ieTabletDevice $ 1
eStylus :: TabletDevice
eStylus
  = ieTabletDevice $ 2
eAirbrush :: TabletDevice
eAirbrush
  = ieTabletDevice $ 3
eFourDMouse :: TabletDevice
eFourDMouse
  = ieTabletDevice $ 4
eXFreeEraser :: TabletDevice
eXFreeEraser
  = ieTabletDevice $ 5
eRotationStylus :: TabletDevice
eRotationStylus
  = ieTabletDevice $ 6

data CPointerType a = CPointerType a
type PointerType = QEnum(CPointerType Int)

iePointerType :: Int -> PointerType
iePointerType x = QEnum (CPointerType x)

instance QEnumC (CPointerType Int) where
 qEnum_toInt (QEnum (CPointerType x)) = x
 qEnum_fromInt x = QEnum (CPointerType x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> PointerType -> IO ()) where
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

eUnknownPointer :: PointerType
eUnknownPointer
  = iePointerType $ 0
instance QePen PointerType where
 ePen
  = iePointerType $ 1
instance QeCursor PointerType where
 eCursor
  = iePointerType $ 2
eEraser :: PointerType
eEraser
  = iePointerType $ 3

