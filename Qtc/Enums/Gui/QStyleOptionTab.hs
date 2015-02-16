{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QStyleOptionTab.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:36
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Enums.Gui.QStyleOptionTab (
 QStyleOptionTabStyleOptionType
 , QStyleOptionTabStyleOptionVersion
 , QStyleOptionTabTabPosition
 , QStyleOptionTabSelectedPosition
 , CornerWidget, CornerWidgets, eNoCornerWidgets, fNoCornerWidgets, eLeftCornerWidget, fLeftCornerWidget, eRightCornerWidget, fRightCornerWidget
 )
 where

import Foreign.C.Types
import Qtc.Classes.Base
import Qtc.ClassTypes.Core (QObject, TQObject, qObjectFromPtr)
import Qtc.Core.Base (Qcs, connectSlot, qtc_connectSlot_int, wrapSlotHandler_int)
import Qtc.Enums.Base
import Qtc.Enums.Classes.Core

data CQStyleOptionTabStyleOptionType a = CQStyleOptionTabStyleOptionType a
type QStyleOptionTabStyleOptionType = QEnum(CQStyleOptionTabStyleOptionType Int)

ieQStyleOptionTabStyleOptionType :: Int -> QStyleOptionTabStyleOptionType
ieQStyleOptionTabStyleOptionType x = QEnum (CQStyleOptionTabStyleOptionType x)

instance QEnumC (CQStyleOptionTabStyleOptionType Int) where
 qEnum_toInt (QEnum (CQStyleOptionTabStyleOptionType x)) = x
 qEnum_fromInt x = QEnum (CQStyleOptionTabStyleOptionType x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> QStyleOptionTabStyleOptionType -> IO ()) where
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

instance QeType QStyleOptionTabStyleOptionType where
 eType
  = ieQStyleOptionTabStyleOptionType $ 3

data CQStyleOptionTabStyleOptionVersion a = CQStyleOptionTabStyleOptionVersion a
type QStyleOptionTabStyleOptionVersion = QEnum(CQStyleOptionTabStyleOptionVersion Int)

ieQStyleOptionTabStyleOptionVersion :: Int -> QStyleOptionTabStyleOptionVersion
ieQStyleOptionTabStyleOptionVersion x = QEnum (CQStyleOptionTabStyleOptionVersion x)

instance QEnumC (CQStyleOptionTabStyleOptionVersion Int) where
 qEnum_toInt (QEnum (CQStyleOptionTabStyleOptionVersion x)) = x
 qEnum_fromInt x = QEnum (CQStyleOptionTabStyleOptionVersion x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> QStyleOptionTabStyleOptionVersion -> IO ()) where
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

instance QeVersion QStyleOptionTabStyleOptionVersion where
 eVersion
  = ieQStyleOptionTabStyleOptionVersion $ 1

data CQStyleOptionTabTabPosition a = CQStyleOptionTabTabPosition a
type QStyleOptionTabTabPosition = QEnum(CQStyleOptionTabTabPosition Int)

ieQStyleOptionTabTabPosition :: Int -> QStyleOptionTabTabPosition
ieQStyleOptionTabTabPosition x = QEnum (CQStyleOptionTabTabPosition x)

instance QEnumC (CQStyleOptionTabTabPosition Int) where
 qEnum_toInt (QEnum (CQStyleOptionTabTabPosition x)) = x
 qEnum_fromInt x = QEnum (CQStyleOptionTabTabPosition x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> QStyleOptionTabTabPosition -> IO ()) where
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

instance QeBeginning QStyleOptionTabTabPosition where
 eBeginning
  = ieQStyleOptionTabTabPosition $ 0
instance QeMiddle QStyleOptionTabTabPosition where
 eMiddle
  = ieQStyleOptionTabTabPosition $ 1
instance QeEnd QStyleOptionTabTabPosition where
 eEnd
  = ieQStyleOptionTabTabPosition $ 2
instance QeOnlyOneTab QStyleOptionTabTabPosition where
 eOnlyOneTab
  = ieQStyleOptionTabTabPosition $ 3

data CQStyleOptionTabSelectedPosition a = CQStyleOptionTabSelectedPosition a
type QStyleOptionTabSelectedPosition = QEnum(CQStyleOptionTabSelectedPosition Int)

ieQStyleOptionTabSelectedPosition :: Int -> QStyleOptionTabSelectedPosition
ieQStyleOptionTabSelectedPosition x = QEnum (CQStyleOptionTabSelectedPosition x)

instance QEnumC (CQStyleOptionTabSelectedPosition Int) where
 qEnum_toInt (QEnum (CQStyleOptionTabSelectedPosition x)) = x
 qEnum_fromInt x = QEnum (CQStyleOptionTabSelectedPosition x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> QStyleOptionTabSelectedPosition -> IO ()) where
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

instance QeNotAdjacent QStyleOptionTabSelectedPosition where
 eNotAdjacent
  = ieQStyleOptionTabSelectedPosition $ 0
instance QeNextIsSelected QStyleOptionTabSelectedPosition where
 eNextIsSelected
  = ieQStyleOptionTabSelectedPosition $ 1
instance QePreviousIsSelected QStyleOptionTabSelectedPosition where
 ePreviousIsSelected
  = ieQStyleOptionTabSelectedPosition $ 2

data CCornerWidget a = CCornerWidget a
type CornerWidget = QEnum(CCornerWidget Int)

ieCornerWidget :: Int -> CornerWidget
ieCornerWidget x = QEnum (CCornerWidget x)

instance QEnumC (CCornerWidget Int) where
 qEnum_toInt (QEnum (CCornerWidget x)) = x
 qEnum_fromInt x = QEnum (CCornerWidget x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> CornerWidget -> IO ()) where
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

data CCornerWidgets a = CCornerWidgets a
type CornerWidgets = QFlags(CCornerWidgets Int)

ifCornerWidgets :: Int -> CornerWidgets
ifCornerWidgets x = QFlags (CCornerWidgets x)

instance QFlagsC (CCornerWidgets Int) where
 qFlags_toInt (QFlags (CCornerWidgets x)) = x
 qFlags_fromInt x = QFlags (CCornerWidgets x)
 withQFlagsResult x
   = do
     ti <- x
     return $ qFlags_fromInt $ fromIntegral ti
 withQFlagsListResult x
   = do
     til <- x
     return $ map qFlags_fromInt til

instance Qcs (QObject c -> CornerWidgets -> IO ()) where
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

eNoCornerWidgets :: CornerWidget
eNoCornerWidgets
  = ieCornerWidget $ 0
eLeftCornerWidget :: CornerWidget
eLeftCornerWidget
  = ieCornerWidget $ 1
eRightCornerWidget :: CornerWidget
eRightCornerWidget
  = ieCornerWidget $ 2

fNoCornerWidgets :: CornerWidgets
fNoCornerWidgets
  = ifCornerWidgets $ 0
fLeftCornerWidget :: CornerWidgets
fLeftCornerWidget
  = ifCornerWidgets $ 1
fRightCornerWidget :: CornerWidgets
fRightCornerWidget
  = ifCornerWidgets $ 2

