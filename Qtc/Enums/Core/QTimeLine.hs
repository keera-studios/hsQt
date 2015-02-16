{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QTimeLine.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:36
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Enums.Core.QTimeLine (
 QTimeLineState
 , QTimeLineDirection, eBackward
 , CurveShape, eEaseInCurve, eEaseOutCurve, eEaseInOutCurve, eLinearCurve, eSineCurve
 )
 where

import Foreign.C.Types
import Qtc.Classes.Base
import Qtc.ClassTypes.Core (QObject, TQObject, qObjectFromPtr)
import Qtc.Core.Base (Qcs, connectSlot, qtc_connectSlot_int, wrapSlotHandler_int)
import Qtc.Enums.Base
import Qtc.Enums.Classes.Core

data CQTimeLineState a = CQTimeLineState a
type QTimeLineState = QEnum(CQTimeLineState Int)

ieQTimeLineState :: Int -> QTimeLineState
ieQTimeLineState x = QEnum (CQTimeLineState x)

instance QEnumC (CQTimeLineState Int) where
 qEnum_toInt (QEnum (CQTimeLineState x)) = x
 qEnum_fromInt x = QEnum (CQTimeLineState x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> QTimeLineState -> IO ()) where
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

instance QeNotRunning QTimeLineState where
 eNotRunning
  = ieQTimeLineState $ 0
instance QePaused QTimeLineState where
 ePaused
  = ieQTimeLineState $ 1
instance QeRunning QTimeLineState where
 eRunning
  = ieQTimeLineState $ 2

data CQTimeLineDirection a = CQTimeLineDirection a
type QTimeLineDirection = QEnum(CQTimeLineDirection Int)

ieQTimeLineDirection :: Int -> QTimeLineDirection
ieQTimeLineDirection x = QEnum (CQTimeLineDirection x)

instance QEnumC (CQTimeLineDirection Int) where
 qEnum_toInt (QEnum (CQTimeLineDirection x)) = x
 qEnum_fromInt x = QEnum (CQTimeLineDirection x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> QTimeLineDirection -> IO ()) where
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

instance QeForward QTimeLineDirection where
 eForward
  = ieQTimeLineDirection $ 0
eBackward :: QTimeLineDirection
eBackward
  = ieQTimeLineDirection $ 1

data CCurveShape a = CCurveShape a
type CurveShape = QEnum(CCurveShape Int)

ieCurveShape :: Int -> CurveShape
ieCurveShape x = QEnum (CCurveShape x)

instance QEnumC (CCurveShape Int) where
 qEnum_toInt (QEnum (CCurveShape x)) = x
 qEnum_fromInt x = QEnum (CCurveShape x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> CurveShape -> IO ()) where
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

eEaseInCurve :: CurveShape
eEaseInCurve
  = ieCurveShape $ 0
eEaseOutCurve :: CurveShape
eEaseOutCurve
  = ieCurveShape $ 1
eEaseInOutCurve :: CurveShape
eEaseInOutCurve
  = ieCurveShape $ 2
eLinearCurve :: CurveShape
eLinearCurve
  = ieCurveShape $ 3
eSineCurve :: CurveShape
eSineCurve
  = ieCurveShape $ 4

