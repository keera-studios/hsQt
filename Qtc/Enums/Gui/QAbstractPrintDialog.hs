{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QAbstractPrintDialog.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:36
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Enums.Gui.QAbstractPrintDialog (
 QAbstractPrintDialogPrintRange
 , PrintDialogOption, PrintDialogOptions, ePrintToFile, fPrintToFile, ePrintSelection, fPrintSelection, ePrintPageRange, fPrintPageRange, ePrintCollateCopies, fPrintCollateCopies
 )
 where

import Foreign.C.Types
import Qtc.Classes.Base
import Qtc.ClassTypes.Core (QObject, TQObject, qObjectFromPtr)
import Qtc.Core.Base (Qcs, connectSlot, qtc_connectSlot_int, wrapSlotHandler_int)
import Qtc.Enums.Base
import Qtc.Enums.Classes.Core

data CQAbstractPrintDialogPrintRange a = CQAbstractPrintDialogPrintRange a
type QAbstractPrintDialogPrintRange = QEnum(CQAbstractPrintDialogPrintRange Int)

ieQAbstractPrintDialogPrintRange :: Int -> QAbstractPrintDialogPrintRange
ieQAbstractPrintDialogPrintRange x = QEnum (CQAbstractPrintDialogPrintRange x)

instance QEnumC (CQAbstractPrintDialogPrintRange Int) where
 qEnum_toInt (QEnum (CQAbstractPrintDialogPrintRange x)) = x
 qEnum_fromInt x = QEnum (CQAbstractPrintDialogPrintRange x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> QAbstractPrintDialogPrintRange -> IO ()) where
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

instance QeAllPages QAbstractPrintDialogPrintRange where
 eAllPages
  = ieQAbstractPrintDialogPrintRange $ 0
instance QeSelection QAbstractPrintDialogPrintRange where
 eSelection
  = ieQAbstractPrintDialogPrintRange $ 1
instance QePageRange QAbstractPrintDialogPrintRange where
 ePageRange
  = ieQAbstractPrintDialogPrintRange $ 2

data CPrintDialogOption a = CPrintDialogOption a
type PrintDialogOption = QEnum(CPrintDialogOption Int)

iePrintDialogOption :: Int -> PrintDialogOption
iePrintDialogOption x = QEnum (CPrintDialogOption x)

instance QEnumC (CPrintDialogOption Int) where
 qEnum_toInt (QEnum (CPrintDialogOption x)) = x
 qEnum_fromInt x = QEnum (CPrintDialogOption x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> PrintDialogOption -> IO ()) where
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

data CPrintDialogOptions a = CPrintDialogOptions a
type PrintDialogOptions = QFlags(CPrintDialogOptions Int)

ifPrintDialogOptions :: Int -> PrintDialogOptions
ifPrintDialogOptions x = QFlags (CPrintDialogOptions x)

instance QFlagsC (CPrintDialogOptions Int) where
 qFlags_toInt (QFlags (CPrintDialogOptions x)) = x
 qFlags_fromInt x = QFlags (CPrintDialogOptions x)
 withQFlagsResult x
   = do
     ti <- x
     return $ qFlags_fromInt $ fromIntegral ti
 withQFlagsListResult x
   = do
     til <- x
     return $ map qFlags_fromInt til

instance Qcs (QObject c -> PrintDialogOptions -> IO ()) where
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

instance QeNone PrintDialogOption where
 eNone
  = iePrintDialogOption $ 0
ePrintToFile :: PrintDialogOption
ePrintToFile
  = iePrintDialogOption $ 1
ePrintSelection :: PrintDialogOption
ePrintSelection
  = iePrintDialogOption $ 2
ePrintPageRange :: PrintDialogOption
ePrintPageRange
  = iePrintDialogOption $ 4
ePrintCollateCopies :: PrintDialogOption
ePrintCollateCopies
  = iePrintDialogOption $ 16

instance QfNone PrintDialogOptions where
 fNone
  = ifPrintDialogOptions $ 0
fPrintToFile :: PrintDialogOptions
fPrintToFile
  = ifPrintDialogOptions $ 1
fPrintSelection :: PrintDialogOptions
fPrintSelection
  = ifPrintDialogOptions $ 2
fPrintPageRange :: PrintDialogOptions
fPrintPageRange
  = ifPrintDialogOptions $ 4
fPrintCollateCopies :: PrintDialogOptions
fPrintCollateCopies
  = ifPrintDialogOptions $ 16

