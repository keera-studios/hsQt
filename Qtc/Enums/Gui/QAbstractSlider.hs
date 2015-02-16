{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QAbstractSlider.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:36
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Enums.Gui.QAbstractSlider (
 SliderAction, eSliderNoAction, eSliderSingleStepAdd, eSliderSingleStepSub, eSliderPageStepAdd, eSliderPageStepSub, eSliderToMinimum, eSliderToMaximum, eSliderMove
 , SliderChange, eSliderRangeChange, eSliderOrientationChange, eSliderStepsChange, eSliderValueChange
 )
 where

import Foreign.C.Types
import Qtc.Classes.Base
import Qtc.ClassTypes.Core (QObject, TQObject, qObjectFromPtr)
import Qtc.Core.Base (Qcs, connectSlot, qtc_connectSlot_int, wrapSlotHandler_int)
import Qtc.Enums.Base
import Qtc.Enums.Classes.Core

data CSliderAction a = CSliderAction a
type SliderAction = QEnum(CSliderAction Int)

ieSliderAction :: Int -> SliderAction
ieSliderAction x = QEnum (CSliderAction x)

instance QEnumC (CSliderAction Int) where
 qEnum_toInt (QEnum (CSliderAction x)) = x
 qEnum_fromInt x = QEnum (CSliderAction x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> SliderAction -> IO ()) where
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

eSliderNoAction :: SliderAction
eSliderNoAction
  = ieSliderAction $ 0
eSliderSingleStepAdd :: SliderAction
eSliderSingleStepAdd
  = ieSliderAction $ 1
eSliderSingleStepSub :: SliderAction
eSliderSingleStepSub
  = ieSliderAction $ 2
eSliderPageStepAdd :: SliderAction
eSliderPageStepAdd
  = ieSliderAction $ 3
eSliderPageStepSub :: SliderAction
eSliderPageStepSub
  = ieSliderAction $ 4
eSliderToMinimum :: SliderAction
eSliderToMinimum
  = ieSliderAction $ 5
eSliderToMaximum :: SliderAction
eSliderToMaximum
  = ieSliderAction $ 6
eSliderMove :: SliderAction
eSliderMove
  = ieSliderAction $ 7

data CSliderChange a = CSliderChange a
type SliderChange = QEnum(CSliderChange Int)

ieSliderChange :: Int -> SliderChange
ieSliderChange x = QEnum (CSliderChange x)

instance QEnumC (CSliderChange Int) where
 qEnum_toInt (QEnum (CSliderChange x)) = x
 qEnum_fromInt x = QEnum (CSliderChange x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> SliderChange -> IO ()) where
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

eSliderRangeChange :: SliderChange
eSliderRangeChange
  = ieSliderChange $ 0
eSliderOrientationChange :: SliderChange
eSliderOrientationChange
  = ieSliderChange $ 1
eSliderStepsChange :: SliderChange
eSliderStepsChange
  = ieSliderChange $ 2
eSliderValueChange :: SliderChange
eSliderValueChange
  = ieSliderChange $ 3

