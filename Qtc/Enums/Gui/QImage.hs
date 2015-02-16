{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QImage.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:35
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Enums.Gui.QImage (
 InvertMode, eInvertRgb, eInvertRgba
 , QImageFormat, eQImageFormat_Invalid, eQImageFormat_Mono, eQImageFormat_MonoLSB, eQImageFormat_Indexed8, eQImageFormat_RGB32, eQImageFormat_ARGB32, eQImageFormat_ARGB32_Premultiplied, eQImageFormat_RGB16, eNImageQImageFormats, eQImageFormat_ARGB8565_Premultiplied, eQImageFormat_RGB666, eQImageFormat_ARGB6666_Premultiplied, eQImageFormat_RGB555, eQImageFormat_ARGB8555_Premultiplied, eQImageFormat_RGB888, eQImageFormat_RGB444, eQImageFormat_ARGB4444_Premultiplied
 )
 where

import Foreign.C.Types
import Qtc.Classes.Base
import Qtc.ClassTypes.Core (QObject, TQObject, qObjectFromPtr)
import Qtc.Core.Base (Qcs, connectSlot, qtc_connectSlot_int, wrapSlotHandler_int)
import Qtc.Enums.Base
import Qtc.Enums.Classes.Core

data CInvertMode a = CInvertMode a
type InvertMode = QEnum(CInvertMode Int)

ieInvertMode :: Int -> InvertMode
ieInvertMode x = QEnum (CInvertMode x)

instance QEnumC (CInvertMode Int) where
 qEnum_toInt (QEnum (CInvertMode x)) = x
 qEnum_fromInt x = QEnum (CInvertMode x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> InvertMode -> IO ()) where
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

eInvertRgb :: InvertMode
eInvertRgb
  = ieInvertMode $ 0
eInvertRgba :: InvertMode
eInvertRgba
  = ieInvertMode $ 1

data CQImageFormat a = CQImageFormat a
type QImageFormat = QEnum(CQImageFormat Int)

ieQImageFormat :: Int -> QImageFormat
ieQImageFormat x = QEnum (CQImageFormat x)

instance QEnumC (CQImageFormat Int) where
 qEnum_toInt (QEnum (CQImageFormat x)) = x
 qEnum_fromInt x = QEnum (CQImageFormat x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> QImageFormat -> IO ()) where
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

eQImageFormat_Invalid :: QImageFormat
eQImageFormat_Invalid
  = ieQImageFormat $ 0
eQImageFormat_Mono :: QImageFormat
eQImageFormat_Mono
  = ieQImageFormat $ 1
eQImageFormat_MonoLSB :: QImageFormat
eQImageFormat_MonoLSB
  = ieQImageFormat $ 2
eQImageFormat_Indexed8 :: QImageFormat
eQImageFormat_Indexed8
  = ieQImageFormat $ 3
eQImageFormat_RGB32 :: QImageFormat
eQImageFormat_RGB32
  = ieQImageFormat $ 4
eQImageFormat_ARGB32 :: QImageFormat
eQImageFormat_ARGB32
  = ieQImageFormat $ 5
eQImageFormat_ARGB32_Premultiplied :: QImageFormat
eQImageFormat_ARGB32_Premultiplied
  = ieQImageFormat $ 6
eQImageFormat_RGB16 :: QImageFormat
eQImageFormat_RGB16
  = ieQImageFormat $ 7
eNImageQImageFormats :: QImageFormat
eNImageQImageFormats
  = ieQImageFormat $ 8
eQImageFormat_ARGB8565_Premultiplied :: QImageFormat
eQImageFormat_ARGB8565_Premultiplied
  = ieQImageFormat $ 8
eQImageFormat_RGB666 :: QImageFormat
eQImageFormat_RGB666
  = ieQImageFormat $ 9
eQImageFormat_ARGB6666_Premultiplied :: QImageFormat
eQImageFormat_ARGB6666_Premultiplied
  = ieQImageFormat $ 10
eQImageFormat_RGB555 :: QImageFormat
eQImageFormat_RGB555
  = ieQImageFormat $ 11
eQImageFormat_ARGB8555_Premultiplied :: QImageFormat
eQImageFormat_ARGB8555_Premultiplied
  = ieQImageFormat $ 12
eQImageFormat_RGB888 :: QImageFormat
eQImageFormat_RGB888
  = ieQImageFormat $ 13
eQImageFormat_RGB444 :: QImageFormat
eQImageFormat_RGB444
  = ieQImageFormat $ 14
eQImageFormat_ARGB4444_Premultiplied :: QImageFormat
eQImageFormat_ARGB4444_Premultiplied
  = ieQImageFormat $ 15

