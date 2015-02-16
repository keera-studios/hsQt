{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QTextStream.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:36
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Enums.Core.QTextStream (
 RealNumberNotation, eSmartNotation, eFixedNotation
 , FieldAlignment, eAlignAccountingStyle
 , QTextStreamStatus
 , NumberFlag, NumberFlags, eShowBase, fShowBase, eForcePoint, fForcePoint, eForceSign, fForceSign, eUppercaseBase, fUppercaseBase, eUppercaseDigits, fUppercaseDigits
 )
 where

import Foreign.C.Types
import Qtc.Classes.Base
import Qtc.ClassTypes.Core (QObject, TQObject, qObjectFromPtr)
import Qtc.Core.Base (Qcs, connectSlot, qtc_connectSlot_int, wrapSlotHandler_int)
import Qtc.Enums.Base
import Qtc.Enums.Classes.Core

data CRealNumberNotation a = CRealNumberNotation a
type RealNumberNotation = QEnum(CRealNumberNotation Int)

ieRealNumberNotation :: Int -> RealNumberNotation
ieRealNumberNotation x = QEnum (CRealNumberNotation x)

instance QEnumC (CRealNumberNotation Int) where
 qEnum_toInt (QEnum (CRealNumberNotation x)) = x
 qEnum_fromInt x = QEnum (CRealNumberNotation x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> RealNumberNotation -> IO ()) where
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

eSmartNotation :: RealNumberNotation
eSmartNotation
  = ieRealNumberNotation $ 0
eFixedNotation :: RealNumberNotation
eFixedNotation
  = ieRealNumberNotation $ 1
instance QeScientificNotation RealNumberNotation where
 eScientificNotation
  = ieRealNumberNotation $ 2

data CFieldAlignment a = CFieldAlignment a
type FieldAlignment = QEnum(CFieldAlignment Int)

ieFieldAlignment :: Int -> FieldAlignment
ieFieldAlignment x = QEnum (CFieldAlignment x)

instance QEnumC (CFieldAlignment Int) where
 qEnum_toInt (QEnum (CFieldAlignment x)) = x
 qEnum_fromInt x = QEnum (CFieldAlignment x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> FieldAlignment -> IO ()) where
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

instance QeAlignLeft FieldAlignment where
 eAlignLeft
  = ieFieldAlignment $ 0
instance QeAlignRight FieldAlignment where
 eAlignRight
  = ieFieldAlignment $ 1
instance QeAlignCenter FieldAlignment where
 eAlignCenter
  = ieFieldAlignment $ 2
eAlignAccountingStyle :: FieldAlignment
eAlignAccountingStyle
  = ieFieldAlignment $ 3

data CQTextStreamStatus a = CQTextStreamStatus a
type QTextStreamStatus = QEnum(CQTextStreamStatus Int)

ieQTextStreamStatus :: Int -> QTextStreamStatus
ieQTextStreamStatus x = QEnum (CQTextStreamStatus x)

instance QEnumC (CQTextStreamStatus Int) where
 qEnum_toInt (QEnum (CQTextStreamStatus x)) = x
 qEnum_fromInt x = QEnum (CQTextStreamStatus x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> QTextStreamStatus -> IO ()) where
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

instance QeOk QTextStreamStatus where
 eOk
  = ieQTextStreamStatus $ 0
instance QeReadPastEnd QTextStreamStatus where
 eReadPastEnd
  = ieQTextStreamStatus $ 1
instance QeReadCorruptData QTextStreamStatus where
 eReadCorruptData
  = ieQTextStreamStatus $ 2

data CNumberFlag a = CNumberFlag a
type NumberFlag = QEnum(CNumberFlag Int)

ieNumberFlag :: Int -> NumberFlag
ieNumberFlag x = QEnum (CNumberFlag x)

instance QEnumC (CNumberFlag Int) where
 qEnum_toInt (QEnum (CNumberFlag x)) = x
 qEnum_fromInt x = QEnum (CNumberFlag x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> NumberFlag -> IO ()) where
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

data CNumberFlags a = CNumberFlags a
type NumberFlags = QFlags(CNumberFlags Int)

ifNumberFlags :: Int -> NumberFlags
ifNumberFlags x = QFlags (CNumberFlags x)

instance QFlagsC (CNumberFlags Int) where
 qFlags_toInt (QFlags (CNumberFlags x)) = x
 qFlags_fromInt x = QFlags (CNumberFlags x)
 withQFlagsResult x
   = do
     ti <- x
     return $ qFlags_fromInt $ fromIntegral ti
 withQFlagsListResult x
   = do
     til <- x
     return $ map qFlags_fromInt til

instance Qcs (QObject c -> NumberFlags -> IO ()) where
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

eShowBase :: NumberFlag
eShowBase
  = ieNumberFlag $ 1
eForcePoint :: NumberFlag
eForcePoint
  = ieNumberFlag $ 2
eForceSign :: NumberFlag
eForceSign
  = ieNumberFlag $ 4
eUppercaseBase :: NumberFlag
eUppercaseBase
  = ieNumberFlag $ 8
eUppercaseDigits :: NumberFlag
eUppercaseDigits
  = ieNumberFlag $ 16

fShowBase :: NumberFlags
fShowBase
  = ifNumberFlags $ 1
fForcePoint :: NumberFlags
fForcePoint
  = ifNumberFlags $ 2
fForceSign :: NumberFlags
fForceSign
  = ifNumberFlags $ 4
fUppercaseBase :: NumberFlags
fUppercaseBase
  = ifNumberFlags $ 8
fUppercaseDigits :: NumberFlags
fUppercaseDigits
  = ifNumberFlags $ 16

