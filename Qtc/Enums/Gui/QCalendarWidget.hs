{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QCalendarWidget.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:35
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Enums.Gui.QCalendarWidget (
 HorizontalHeaderFormat, eNoHorizontalHeader, eSingleLetterDayNames, eShortDayNames, eLongDayNames
 , VerticalHeaderFormat, eNoVerticalHeader, eISOWeekNumbers
 , QCalendarWidgetSelectionMode
 )
 where

import Foreign.C.Types
import Qtc.Classes.Base
import Qtc.ClassTypes.Core (QObject, TQObject, qObjectFromPtr)
import Qtc.Core.Base (Qcs, connectSlot, qtc_connectSlot_int, wrapSlotHandler_int)
import Qtc.Enums.Base
import Qtc.Enums.Classes.Core

data CHorizontalHeaderFormat a = CHorizontalHeaderFormat a
type HorizontalHeaderFormat = QEnum(CHorizontalHeaderFormat Int)

ieHorizontalHeaderFormat :: Int -> HorizontalHeaderFormat
ieHorizontalHeaderFormat x = QEnum (CHorizontalHeaderFormat x)

instance QEnumC (CHorizontalHeaderFormat Int) where
 qEnum_toInt (QEnum (CHorizontalHeaderFormat x)) = x
 qEnum_fromInt x = QEnum (CHorizontalHeaderFormat x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> HorizontalHeaderFormat -> IO ()) where
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

eNoHorizontalHeader :: HorizontalHeaderFormat
eNoHorizontalHeader
  = ieHorizontalHeaderFormat $ 0
eSingleLetterDayNames :: HorizontalHeaderFormat
eSingleLetterDayNames
  = ieHorizontalHeaderFormat $ 1
eShortDayNames :: HorizontalHeaderFormat
eShortDayNames
  = ieHorizontalHeaderFormat $ 2
eLongDayNames :: HorizontalHeaderFormat
eLongDayNames
  = ieHorizontalHeaderFormat $ 3

data CVerticalHeaderFormat a = CVerticalHeaderFormat a
type VerticalHeaderFormat = QEnum(CVerticalHeaderFormat Int)

ieVerticalHeaderFormat :: Int -> VerticalHeaderFormat
ieVerticalHeaderFormat x = QEnum (CVerticalHeaderFormat x)

instance QEnumC (CVerticalHeaderFormat Int) where
 qEnum_toInt (QEnum (CVerticalHeaderFormat x)) = x
 qEnum_fromInt x = QEnum (CVerticalHeaderFormat x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> VerticalHeaderFormat -> IO ()) where
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

eNoVerticalHeader :: VerticalHeaderFormat
eNoVerticalHeader
  = ieVerticalHeaderFormat $ 0
eISOWeekNumbers :: VerticalHeaderFormat
eISOWeekNumbers
  = ieVerticalHeaderFormat $ 1

data CQCalendarWidgetSelectionMode a = CQCalendarWidgetSelectionMode a
type QCalendarWidgetSelectionMode = QEnum(CQCalendarWidgetSelectionMode Int)

ieQCalendarWidgetSelectionMode :: Int -> QCalendarWidgetSelectionMode
ieQCalendarWidgetSelectionMode x = QEnum (CQCalendarWidgetSelectionMode x)

instance QEnumC (CQCalendarWidgetSelectionMode Int) where
 qEnum_toInt (QEnum (CQCalendarWidgetSelectionMode x)) = x
 qEnum_fromInt x = QEnum (CQCalendarWidgetSelectionMode x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> QCalendarWidgetSelectionMode -> IO ()) where
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

instance QeNoSelection QCalendarWidgetSelectionMode where
 eNoSelection
  = ieQCalendarWidgetSelectionMode $ 0
instance QeSingleSelection QCalendarWidgetSelectionMode where
 eSingleSelection
  = ieQCalendarWidgetSelectionMode $ 1

