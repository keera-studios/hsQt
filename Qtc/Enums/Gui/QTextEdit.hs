{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QTextEdit.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:35
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Enums.Gui.QTextEdit (
 LineWrapMode, eWidgetWidth, eFixedPixelWidth, eFixedColumnWidth
 , AutoFormattingFlag, AutoFormatting, eAutoNone, fAutoNone, eAutoBulletList, fAutoBulletList, eAutoAll, fAutoAll
 )
 where

import Foreign.C.Types
import Qtc.Classes.Base
import Qtc.ClassTypes.Core (QObject, TQObject, qObjectFromPtr)
import Qtc.Core.Base (Qcs, connectSlot, qtc_connectSlot_int, wrapSlotHandler_int)
import Qtc.Enums.Base
import Qtc.Enums.Classes.Core

data CLineWrapMode a = CLineWrapMode a
type LineWrapMode = QEnum(CLineWrapMode Int)

ieLineWrapMode :: Int -> LineWrapMode
ieLineWrapMode x = QEnum (CLineWrapMode x)

instance QEnumC (CLineWrapMode Int) where
 qEnum_toInt (QEnum (CLineWrapMode x)) = x
 qEnum_fromInt x = QEnum (CLineWrapMode x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> LineWrapMode -> IO ()) where
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

instance QeNoWrap LineWrapMode where
 eNoWrap
  = ieLineWrapMode $ 0
eWidgetWidth :: LineWrapMode
eWidgetWidth
  = ieLineWrapMode $ 1
eFixedPixelWidth :: LineWrapMode
eFixedPixelWidth
  = ieLineWrapMode $ 2
eFixedColumnWidth :: LineWrapMode
eFixedColumnWidth
  = ieLineWrapMode $ 3

data CAutoFormattingFlag a = CAutoFormattingFlag a
type AutoFormattingFlag = QEnum(CAutoFormattingFlag Int)

ieAutoFormattingFlag :: Int -> AutoFormattingFlag
ieAutoFormattingFlag x = QEnum (CAutoFormattingFlag x)

instance QEnumC (CAutoFormattingFlag Int) where
 qEnum_toInt (QEnum (CAutoFormattingFlag x)) = x
 qEnum_fromInt x = QEnum (CAutoFormattingFlag x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> AutoFormattingFlag -> IO ()) where
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

data CAutoFormatting a = CAutoFormatting a
type AutoFormatting = QFlags(CAutoFormatting Int)

ifAutoFormatting :: Int -> AutoFormatting
ifAutoFormatting x = QFlags (CAutoFormatting x)

instance QFlagsC (CAutoFormatting Int) where
 qFlags_toInt (QFlags (CAutoFormatting x)) = x
 qFlags_fromInt x = QFlags (CAutoFormatting x)
 withQFlagsResult x
   = do
     ti <- x
     return $ qFlags_fromInt $ fromIntegral ti
 withQFlagsListResult x
   = do
     til <- x
     return $ map qFlags_fromInt til

instance Qcs (QObject c -> AutoFormatting -> IO ()) where
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

eAutoNone :: AutoFormattingFlag
eAutoNone
  = ieAutoFormattingFlag $ 0
eAutoBulletList :: AutoFormattingFlag
eAutoBulletList
  = ieAutoFormattingFlag $ 1
eAutoAll :: AutoFormattingFlag
eAutoAll
  = ieAutoFormattingFlag $ -1

fAutoNone :: AutoFormatting
fAutoNone
  = ifAutoFormatting $ 0
fAutoBulletList :: AutoFormatting
fAutoBulletList
  = ifAutoFormatting $ 1
fAutoAll :: AutoFormatting
fAutoAll
  = ifAutoFormatting $ -1

