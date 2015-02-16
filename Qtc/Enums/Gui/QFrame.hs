{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QFrame.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:35
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Enums.Gui.QFrame (
 QFrameShape, eNoFrame, eBox, ePanel, eWinPanel, eHLine, eVLine, eStyledPanel
 , Shadow, ePlain, eRaised, eSunken
 , StyleMask, eShadow_Mask, eShape_Mask
 )
 where

import Foreign.C.Types
import Qtc.Classes.Base
import Qtc.ClassTypes.Core (QObject, TQObject, qObjectFromPtr)
import Qtc.Core.Base (Qcs, connectSlot, qtc_connectSlot_int, wrapSlotHandler_int)
import Qtc.Enums.Base
import Qtc.Enums.Classes.Core

data CQFrameShape a = CQFrameShape a
type QFrameShape = QEnum(CQFrameShape Int)

ieQFrameShape :: Int -> QFrameShape
ieQFrameShape x = QEnum (CQFrameShape x)

instance QEnumC (CQFrameShape Int) where
 qEnum_toInt (QEnum (CQFrameShape x)) = x
 qEnum_fromInt x = QEnum (CQFrameShape x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> QFrameShape -> IO ()) where
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

eNoFrame :: QFrameShape
eNoFrame
  = ieQFrameShape $ 0
eBox :: QFrameShape
eBox
  = ieQFrameShape $ 1
ePanel :: QFrameShape
ePanel
  = ieQFrameShape $ 2
eWinPanel :: QFrameShape
eWinPanel
  = ieQFrameShape $ 3
eHLine :: QFrameShape
eHLine
  = ieQFrameShape $ 4
eVLine :: QFrameShape
eVLine
  = ieQFrameShape $ 5
eStyledPanel :: QFrameShape
eStyledPanel
  = ieQFrameShape $ 6

data CShadow a = CShadow a
type Shadow = QEnum(CShadow Int)

ieShadow :: Int -> Shadow
ieShadow x = QEnum (CShadow x)

instance QEnumC (CShadow Int) where
 qEnum_toInt (QEnum (CShadow x)) = x
 qEnum_fromInt x = QEnum (CShadow x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> Shadow -> IO ()) where
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

ePlain :: Shadow
ePlain
  = ieShadow $ 16
eRaised :: Shadow
eRaised
  = ieShadow $ 32
eSunken :: Shadow
eSunken
  = ieShadow $ 48

data CStyleMask a = CStyleMask a
type StyleMask = QEnum(CStyleMask Int)

ieStyleMask :: Int -> StyleMask
ieStyleMask x = QEnum (CStyleMask x)

instance QEnumC (CStyleMask Int) where
 qEnum_toInt (QEnum (CStyleMask x)) = x
 qEnum_fromInt x = QEnum (CStyleMask x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> StyleMask -> IO ()) where
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

eShadow_Mask :: StyleMask
eShadow_Mask
  = ieStyleMask $ 240
eShape_Mask :: StyleMask
eShape_Mask
  = ieStyleMask $ 15

