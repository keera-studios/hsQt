{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QStyleOptionButton.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:35
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Enums.Gui.QStyleOptionButton (
 QStyleOptionButtonStyleOptionType
 , QStyleOptionButtonStyleOptionVersion
 , ButtonFeature, ButtonFeatures, eDefaultButton, fDefaultButton, eAutoDefaultButton, fAutoDefaultButton, eCommandLinkButton, fCommandLinkButton
 )
 where

import Foreign.C.Types
import Qtc.Classes.Base
import Qtc.ClassTypes.Core (QObject, TQObject, qObjectFromPtr)
import Qtc.Core.Base (Qcs, connectSlot, qtc_connectSlot_int, wrapSlotHandler_int)
import Qtc.Enums.Base
import Qtc.Enums.Classes.Core

data CQStyleOptionButtonStyleOptionType a = CQStyleOptionButtonStyleOptionType a
type QStyleOptionButtonStyleOptionType = QEnum(CQStyleOptionButtonStyleOptionType Int)

ieQStyleOptionButtonStyleOptionType :: Int -> QStyleOptionButtonStyleOptionType
ieQStyleOptionButtonStyleOptionType x = QEnum (CQStyleOptionButtonStyleOptionType x)

instance QEnumC (CQStyleOptionButtonStyleOptionType Int) where
 qEnum_toInt (QEnum (CQStyleOptionButtonStyleOptionType x)) = x
 qEnum_fromInt x = QEnum (CQStyleOptionButtonStyleOptionType x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> QStyleOptionButtonStyleOptionType -> IO ()) where
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

instance QeType QStyleOptionButtonStyleOptionType where
 eType
  = ieQStyleOptionButtonStyleOptionType $ 2

data CQStyleOptionButtonStyleOptionVersion a = CQStyleOptionButtonStyleOptionVersion a
type QStyleOptionButtonStyleOptionVersion = QEnum(CQStyleOptionButtonStyleOptionVersion Int)

ieQStyleOptionButtonStyleOptionVersion :: Int -> QStyleOptionButtonStyleOptionVersion
ieQStyleOptionButtonStyleOptionVersion x = QEnum (CQStyleOptionButtonStyleOptionVersion x)

instance QEnumC (CQStyleOptionButtonStyleOptionVersion Int) where
 qEnum_toInt (QEnum (CQStyleOptionButtonStyleOptionVersion x)) = x
 qEnum_fromInt x = QEnum (CQStyleOptionButtonStyleOptionVersion x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> QStyleOptionButtonStyleOptionVersion -> IO ()) where
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

instance QeVersion QStyleOptionButtonStyleOptionVersion where
 eVersion
  = ieQStyleOptionButtonStyleOptionVersion $ 1

data CButtonFeature a = CButtonFeature a
type ButtonFeature = QEnum(CButtonFeature Int)

ieButtonFeature :: Int -> ButtonFeature
ieButtonFeature x = QEnum (CButtonFeature x)

instance QEnumC (CButtonFeature Int) where
 qEnum_toInt (QEnum (CButtonFeature x)) = x
 qEnum_fromInt x = QEnum (CButtonFeature x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> ButtonFeature -> IO ()) where
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

data CButtonFeatures a = CButtonFeatures a
type ButtonFeatures = QFlags(CButtonFeatures Int)

ifButtonFeatures :: Int -> ButtonFeatures
ifButtonFeatures x = QFlags (CButtonFeatures x)

instance QFlagsC (CButtonFeatures Int) where
 qFlags_toInt (QFlags (CButtonFeatures x)) = x
 qFlags_fromInt x = QFlags (CButtonFeatures x)
 withQFlagsResult x
   = do
     ti <- x
     return $ qFlags_fromInt $ fromIntegral ti
 withQFlagsListResult x
   = do
     til <- x
     return $ map qFlags_fromInt til

instance Qcs (QObject c -> ButtonFeatures -> IO ()) where
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

instance QeNone ButtonFeature where
 eNone
  = ieButtonFeature $ 0
instance QeFlat ButtonFeature where
 eFlat
  = ieButtonFeature $ 1
instance QeHasMenu ButtonFeature where
 eHasMenu
  = ieButtonFeature $ 2
eDefaultButton :: ButtonFeature
eDefaultButton
  = ieButtonFeature $ 4
eAutoDefaultButton :: ButtonFeature
eAutoDefaultButton
  = ieButtonFeature $ 8
eCommandLinkButton :: ButtonFeature
eCommandLinkButton
  = ieButtonFeature $ 16

instance QfNone ButtonFeatures where
 fNone
  = ifButtonFeatures $ 0
instance QfFlat ButtonFeatures where
 fFlat
  = ifButtonFeatures $ 1
instance QfHasMenu ButtonFeatures where
 fHasMenu
  = ifButtonFeatures $ 2
fDefaultButton :: ButtonFeatures
fDefaultButton
  = ifButtonFeatures $ 4
fAutoDefaultButton :: ButtonFeatures
fAutoDefaultButton
  = ifButtonFeatures $ 8
fCommandLinkButton :: ButtonFeatures
fCommandLinkButton
  = ifButtonFeatures $ 16

