{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QGradient.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:35
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Enums.Gui.QGradient (
 QGradientType, eLinearGradient, eRadialGradient, eConicalGradient, eNoGradient
 , Spread, ePadSpread, eReflectSpread, eRepeatSpread
 , CoordinateMode, eLogicalMode, eStretchToDeviceMode, eObjectBoundingMode
 )
 where

import Foreign.C.Types
import Qtc.Classes.Base
import Qtc.ClassTypes.Core (QObject, TQObject, qObjectFromPtr)
import Qtc.Core.Base (Qcs, connectSlot, qtc_connectSlot_int, wrapSlotHandler_int)
import Qtc.Enums.Base
import Qtc.Enums.Classes.Core

data CQGradientType a = CQGradientType a
type QGradientType = QEnum(CQGradientType Int)

ieQGradientType :: Int -> QGradientType
ieQGradientType x = QEnum (CQGradientType x)

instance QEnumC (CQGradientType Int) where
 qEnum_toInt (QEnum (CQGradientType x)) = x
 qEnum_fromInt x = QEnum (CQGradientType x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> QGradientType -> IO ()) where
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

eLinearGradient :: QGradientType
eLinearGradient
  = ieQGradientType $ 0
eRadialGradient :: QGradientType
eRadialGradient
  = ieQGradientType $ 1
eConicalGradient :: QGradientType
eConicalGradient
  = ieQGradientType $ 2
eNoGradient :: QGradientType
eNoGradient
  = ieQGradientType $ 3

data CSpread a = CSpread a
type Spread = QEnum(CSpread Int)

ieSpread :: Int -> Spread
ieSpread x = QEnum (CSpread x)

instance QEnumC (CSpread Int) where
 qEnum_toInt (QEnum (CSpread x)) = x
 qEnum_fromInt x = QEnum (CSpread x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> Spread -> IO ()) where
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

ePadSpread :: Spread
ePadSpread
  = ieSpread $ 0
eReflectSpread :: Spread
eReflectSpread
  = ieSpread $ 1
eRepeatSpread :: Spread
eRepeatSpread
  = ieSpread $ 2

data CCoordinateMode a = CCoordinateMode a
type CoordinateMode = QEnum(CCoordinateMode Int)

ieCoordinateMode :: Int -> CoordinateMode
ieCoordinateMode x = QEnum (CCoordinateMode x)

instance QEnumC (CCoordinateMode Int) where
 qEnum_toInt (QEnum (CCoordinateMode x)) = x
 qEnum_fromInt x = QEnum (CCoordinateMode x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> CoordinateMode -> IO ()) where
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

eLogicalMode :: CoordinateMode
eLogicalMode
  = ieCoordinateMode $ 0
eStretchToDeviceMode :: CoordinateMode
eStretchToDeviceMode
  = ieCoordinateMode $ 1
eObjectBoundingMode :: CoordinateMode
eObjectBoundingMode
  = ieCoordinateMode $ 2

