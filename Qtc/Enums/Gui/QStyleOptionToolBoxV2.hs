{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QStyleOptionToolBoxV2.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:35
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Enums.Gui.QStyleOptionToolBoxV2 (
 QStyleOptionToolBoxV2StyleOptionVersion
 , QStyleOptionToolBoxV2TabPosition
 , QStyleOptionToolBoxV2SelectedPosition
 )
 where

import Foreign.C.Types
import Qtc.Classes.Base
import Qtc.ClassTypes.Core (QObject, TQObject, qObjectFromPtr)
import Qtc.Core.Base (Qcs, connectSlot, qtc_connectSlot_int, wrapSlotHandler_int)
import Qtc.Enums.Base
import Qtc.Enums.Classes.Core

data CQStyleOptionToolBoxV2StyleOptionVersion a = CQStyleOptionToolBoxV2StyleOptionVersion a
type QStyleOptionToolBoxV2StyleOptionVersion = QEnum(CQStyleOptionToolBoxV2StyleOptionVersion Int)

ieQStyleOptionToolBoxV2StyleOptionVersion :: Int -> QStyleOptionToolBoxV2StyleOptionVersion
ieQStyleOptionToolBoxV2StyleOptionVersion x = QEnum (CQStyleOptionToolBoxV2StyleOptionVersion x)

instance QEnumC (CQStyleOptionToolBoxV2StyleOptionVersion Int) where
 qEnum_toInt (QEnum (CQStyleOptionToolBoxV2StyleOptionVersion x)) = x
 qEnum_fromInt x = QEnum (CQStyleOptionToolBoxV2StyleOptionVersion x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> QStyleOptionToolBoxV2StyleOptionVersion -> IO ()) where
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

instance QeVersion QStyleOptionToolBoxV2StyleOptionVersion where
 eVersion
  = ieQStyleOptionToolBoxV2StyleOptionVersion $ 2

data CQStyleOptionToolBoxV2TabPosition a = CQStyleOptionToolBoxV2TabPosition a
type QStyleOptionToolBoxV2TabPosition = QEnum(CQStyleOptionToolBoxV2TabPosition Int)

ieQStyleOptionToolBoxV2TabPosition :: Int -> QStyleOptionToolBoxV2TabPosition
ieQStyleOptionToolBoxV2TabPosition x = QEnum (CQStyleOptionToolBoxV2TabPosition x)

instance QEnumC (CQStyleOptionToolBoxV2TabPosition Int) where
 qEnum_toInt (QEnum (CQStyleOptionToolBoxV2TabPosition x)) = x
 qEnum_fromInt x = QEnum (CQStyleOptionToolBoxV2TabPosition x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> QStyleOptionToolBoxV2TabPosition -> IO ()) where
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

instance QeBeginning QStyleOptionToolBoxV2TabPosition where
 eBeginning
  = ieQStyleOptionToolBoxV2TabPosition $ 0
instance QeMiddle QStyleOptionToolBoxV2TabPosition where
 eMiddle
  = ieQStyleOptionToolBoxV2TabPosition $ 1
instance QeEnd QStyleOptionToolBoxV2TabPosition where
 eEnd
  = ieQStyleOptionToolBoxV2TabPosition $ 2
instance QeOnlyOneTab QStyleOptionToolBoxV2TabPosition where
 eOnlyOneTab
  = ieQStyleOptionToolBoxV2TabPosition $ 3

data CQStyleOptionToolBoxV2SelectedPosition a = CQStyleOptionToolBoxV2SelectedPosition a
type QStyleOptionToolBoxV2SelectedPosition = QEnum(CQStyleOptionToolBoxV2SelectedPosition Int)

ieQStyleOptionToolBoxV2SelectedPosition :: Int -> QStyleOptionToolBoxV2SelectedPosition
ieQStyleOptionToolBoxV2SelectedPosition x = QEnum (CQStyleOptionToolBoxV2SelectedPosition x)

instance QEnumC (CQStyleOptionToolBoxV2SelectedPosition Int) where
 qEnum_toInt (QEnum (CQStyleOptionToolBoxV2SelectedPosition x)) = x
 qEnum_fromInt x = QEnum (CQStyleOptionToolBoxV2SelectedPosition x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> QStyleOptionToolBoxV2SelectedPosition -> IO ()) where
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

instance QeNotAdjacent QStyleOptionToolBoxV2SelectedPosition where
 eNotAdjacent
  = ieQStyleOptionToolBoxV2SelectedPosition $ 0
instance QeNextIsSelected QStyleOptionToolBoxV2SelectedPosition where
 eNextIsSelected
  = ieQStyleOptionToolBoxV2SelectedPosition $ 1
instance QePreviousIsSelected QStyleOptionToolBoxV2SelectedPosition where
 ePreviousIsSelected
  = ieQStyleOptionToolBoxV2SelectedPosition $ 2

