{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QLCDNumber.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:35
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Enums.Gui.QLCDNumber (
 QLCDNumberMode, eHex, eDec, eOct, eBin
 , SegmentStyle, eOutline, eFilled
 )
 where

import Foreign.C.Types
import Qtc.Classes.Base
import Qtc.ClassTypes.Core (QObject, TQObject, qObjectFromPtr)
import Qtc.Core.Base (Qcs, connectSlot, qtc_connectSlot_int, wrapSlotHandler_int)
import Qtc.Enums.Base
import Qtc.Enums.Classes.Core

data CQLCDNumberMode a = CQLCDNumberMode a
type QLCDNumberMode = QEnum(CQLCDNumberMode Int)

ieQLCDNumberMode :: Int -> QLCDNumberMode
ieQLCDNumberMode x = QEnum (CQLCDNumberMode x)

instance QEnumC (CQLCDNumberMode Int) where
 qEnum_toInt (QEnum (CQLCDNumberMode x)) = x
 qEnum_fromInt x = QEnum (CQLCDNumberMode x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> QLCDNumberMode -> IO ()) where
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

eHex :: QLCDNumberMode
eHex
  = ieQLCDNumberMode $ 0
eDec :: QLCDNumberMode
eDec
  = ieQLCDNumberMode $ 1
eOct :: QLCDNumberMode
eOct
  = ieQLCDNumberMode $ 2
eBin :: QLCDNumberMode
eBin
  = ieQLCDNumberMode $ 3

data CSegmentStyle a = CSegmentStyle a
type SegmentStyle = QEnum(CSegmentStyle Int)

ieSegmentStyle :: Int -> SegmentStyle
ieSegmentStyle x = QEnum (CSegmentStyle x)

instance QEnumC (CSegmentStyle Int) where
 qEnum_toInt (QEnum (CSegmentStyle x)) = x
 qEnum_fromInt x = QEnum (CSegmentStyle x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> SegmentStyle -> IO ()) where
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

eOutline :: SegmentStyle
eOutline
  = ieSegmentStyle $ 0
eFilled :: SegmentStyle
eFilled
  = ieSegmentStyle $ 1
instance QeFlat SegmentStyle where
 eFlat
  = ieSegmentStyle $ 2

