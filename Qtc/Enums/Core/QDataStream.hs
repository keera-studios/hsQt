{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QDataStream.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:36
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Enums.Core.QDataStream (
 QDataStreamVersion, eQt_1_0, eQt_2_0, eQt_2_1, eQt_3_0, eQt_3_1, eQt_3_3, eQt_4_0, eQt_4_1, eQt_4_2, eQt_4_3
 , ByteOrder, eBigEndian, eLittleEndian
 , QDataStreamStatus
 )
 where

import Foreign.C.Types
import Qtc.Classes.Base
import Qtc.ClassTypes.Core (QObject, TQObject, qObjectFromPtr)
import Qtc.Core.Base (Qcs, connectSlot, qtc_connectSlot_int, wrapSlotHandler_int)
import Qtc.Enums.Base
import Qtc.Enums.Classes.Core

data CQDataStreamVersion a = CQDataStreamVersion a
type QDataStreamVersion = QEnum(CQDataStreamVersion Int)

ieQDataStreamVersion :: Int -> QDataStreamVersion
ieQDataStreamVersion x = QEnum (CQDataStreamVersion x)

instance QEnumC (CQDataStreamVersion Int) where
 qEnum_toInt (QEnum (CQDataStreamVersion x)) = x
 qEnum_fromInt x = QEnum (CQDataStreamVersion x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> QDataStreamVersion -> IO ()) where
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

eQt_1_0 :: QDataStreamVersion
eQt_1_0
  = ieQDataStreamVersion $ 1
eQt_2_0 :: QDataStreamVersion
eQt_2_0
  = ieQDataStreamVersion $ 2
eQt_2_1 :: QDataStreamVersion
eQt_2_1
  = ieQDataStreamVersion $ 3
eQt_3_0 :: QDataStreamVersion
eQt_3_0
  = ieQDataStreamVersion $ 4
eQt_3_1 :: QDataStreamVersion
eQt_3_1
  = ieQDataStreamVersion $ 5
eQt_3_3 :: QDataStreamVersion
eQt_3_3
  = ieQDataStreamVersion $ 6
eQt_4_0 :: QDataStreamVersion
eQt_4_0
  = ieQDataStreamVersion $ 7
eQt_4_1 :: QDataStreamVersion
eQt_4_1
  = ieQDataStreamVersion $ 7
eQt_4_2 :: QDataStreamVersion
eQt_4_2
  = ieQDataStreamVersion $ 8
eQt_4_3 :: QDataStreamVersion
eQt_4_3
  = ieQDataStreamVersion $ 9

data CByteOrder a = CByteOrder a
type ByteOrder = QEnum(CByteOrder Int)

ieByteOrder :: Int -> ByteOrder
ieByteOrder x = QEnum (CByteOrder x)

instance QEnumC (CByteOrder Int) where
 qEnum_toInt (QEnum (CByteOrder x)) = x
 qEnum_fromInt x = QEnum (CByteOrder x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> ByteOrder -> IO ()) where
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

eBigEndian :: ByteOrder
eBigEndian
  = ieByteOrder $ 0
eLittleEndian :: ByteOrder
eLittleEndian
  = ieByteOrder $ 1

data CQDataStreamStatus a = CQDataStreamStatus a
type QDataStreamStatus = QEnum(CQDataStreamStatus Int)

ieQDataStreamStatus :: Int -> QDataStreamStatus
ieQDataStreamStatus x = QEnum (CQDataStreamStatus x)

instance QEnumC (CQDataStreamStatus Int) where
 qEnum_toInt (QEnum (CQDataStreamStatus x)) = x
 qEnum_fromInt x = QEnum (CQDataStreamStatus x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> QDataStreamStatus -> IO ()) where
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

instance QeOk QDataStreamStatus where
 eOk
  = ieQDataStreamStatus $ 0
instance QeReadPastEnd QDataStreamStatus where
 eReadPastEnd
  = ieQDataStreamStatus $ 1
instance QeReadCorruptData QDataStreamStatus where
 eReadCorruptData
  = ieQDataStreamStatus $ 2

