{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QStyleOptionDockWidget.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:35
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Enums.Gui.QStyleOptionDockWidget (
 QStyleOptionDockWidgetStyleOptionType
 , QStyleOptionDockWidgetStyleOptionVersion
 )
 where

import Foreign.C.Types
import Qtc.Classes.Base
import Qtc.ClassTypes.Core (QObject, TQObject, qObjectFromPtr)
import Qtc.Core.Base (Qcs, connectSlot, qtc_connectSlot_int, wrapSlotHandler_int)
import Qtc.Enums.Base
import Qtc.Enums.Classes.Core

data CQStyleOptionDockWidgetStyleOptionType a = CQStyleOptionDockWidgetStyleOptionType a
type QStyleOptionDockWidgetStyleOptionType = QEnum(CQStyleOptionDockWidgetStyleOptionType Int)

ieQStyleOptionDockWidgetStyleOptionType :: Int -> QStyleOptionDockWidgetStyleOptionType
ieQStyleOptionDockWidgetStyleOptionType x = QEnum (CQStyleOptionDockWidgetStyleOptionType x)

instance QEnumC (CQStyleOptionDockWidgetStyleOptionType Int) where
 qEnum_toInt (QEnum (CQStyleOptionDockWidgetStyleOptionType x)) = x
 qEnum_fromInt x = QEnum (CQStyleOptionDockWidgetStyleOptionType x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> QStyleOptionDockWidgetStyleOptionType -> IO ()) where
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

instance QeType QStyleOptionDockWidgetStyleOptionType where
 eType
  = ieQStyleOptionDockWidgetStyleOptionType $ 10

data CQStyleOptionDockWidgetStyleOptionVersion a = CQStyleOptionDockWidgetStyleOptionVersion a
type QStyleOptionDockWidgetStyleOptionVersion = QEnum(CQStyleOptionDockWidgetStyleOptionVersion Int)

ieQStyleOptionDockWidgetStyleOptionVersion :: Int -> QStyleOptionDockWidgetStyleOptionVersion
ieQStyleOptionDockWidgetStyleOptionVersion x = QEnum (CQStyleOptionDockWidgetStyleOptionVersion x)

instance QEnumC (CQStyleOptionDockWidgetStyleOptionVersion Int) where
 qEnum_toInt (QEnum (CQStyleOptionDockWidgetStyleOptionVersion x)) = x
 qEnum_fromInt x = QEnum (CQStyleOptionDockWidgetStyleOptionVersion x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> QStyleOptionDockWidgetStyleOptionVersion -> IO ()) where
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

instance QeVersion QStyleOptionDockWidgetStyleOptionVersion where
 eVersion
  = ieQStyleOptionDockWidgetStyleOptionVersion $ 1

