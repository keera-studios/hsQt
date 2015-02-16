{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QComboBox.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:35
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Enums.Gui.QComboBox (
 InsertPolicy, eNoInsert, eInsertAtTop, eInsertAtCurrent, eInsertAtBottom, eInsertAfterCurrent, eInsertBeforeCurrent, eInsertAlphabetically
 , SizeAdjustPolicy, eAdjustToContents, eAdjustToContentsOnFirstShow, eAdjustToMinimumContentsLength, eAdjustToMinimumContentsLengthWithIcon
 )
 where

import Foreign.C.Types
import Qtc.Classes.Base
import Qtc.ClassTypes.Core (QObject, TQObject, qObjectFromPtr)
import Qtc.Core.Base (Qcs, connectSlot, qtc_connectSlot_int, wrapSlotHandler_int)
import Qtc.Enums.Base
import Qtc.Enums.Classes.Core

data CInsertPolicy a = CInsertPolicy a
type InsertPolicy = QEnum(CInsertPolicy Int)

ieInsertPolicy :: Int -> InsertPolicy
ieInsertPolicy x = QEnum (CInsertPolicy x)

instance QEnumC (CInsertPolicy Int) where
 qEnum_toInt (QEnum (CInsertPolicy x)) = x
 qEnum_fromInt x = QEnum (CInsertPolicy x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> InsertPolicy -> IO ()) where
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

eNoInsert :: InsertPolicy
eNoInsert
  = ieInsertPolicy $ 0
eInsertAtTop :: InsertPolicy
eInsertAtTop
  = ieInsertPolicy $ 1
eInsertAtCurrent :: InsertPolicy
eInsertAtCurrent
  = ieInsertPolicy $ 2
eInsertAtBottom :: InsertPolicy
eInsertAtBottom
  = ieInsertPolicy $ 3
eInsertAfterCurrent :: InsertPolicy
eInsertAfterCurrent
  = ieInsertPolicy $ 4
eInsertBeforeCurrent :: InsertPolicy
eInsertBeforeCurrent
  = ieInsertPolicy $ 5
eInsertAlphabetically :: InsertPolicy
eInsertAlphabetically
  = ieInsertPolicy $ 6

data CSizeAdjustPolicy a = CSizeAdjustPolicy a
type SizeAdjustPolicy = QEnum(CSizeAdjustPolicy Int)

ieSizeAdjustPolicy :: Int -> SizeAdjustPolicy
ieSizeAdjustPolicy x = QEnum (CSizeAdjustPolicy x)

instance QEnumC (CSizeAdjustPolicy Int) where
 qEnum_toInt (QEnum (CSizeAdjustPolicy x)) = x
 qEnum_fromInt x = QEnum (CSizeAdjustPolicy x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> SizeAdjustPolicy -> IO ()) where
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

eAdjustToContents :: SizeAdjustPolicy
eAdjustToContents
  = ieSizeAdjustPolicy $ 0
eAdjustToContentsOnFirstShow :: SizeAdjustPolicy
eAdjustToContentsOnFirstShow
  = ieSizeAdjustPolicy $ 1
eAdjustToMinimumContentsLength :: SizeAdjustPolicy
eAdjustToMinimumContentsLength
  = ieSizeAdjustPolicy $ 2
eAdjustToMinimumContentsLengthWithIcon :: SizeAdjustPolicy
eAdjustToMinimumContentsLengthWithIcon
  = ieSizeAdjustPolicy $ 3

