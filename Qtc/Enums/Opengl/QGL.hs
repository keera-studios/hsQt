{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QGL.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:36
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Enums.Opengl.QGL (
 FormatOption, FormatOptions, eDoubleBuffer, fDoubleBuffer, eDepthBuffer, fDepthBuffer, eRgba, fRgba, eAlphaChannel, fAlphaChannel, eAccumBuffer, fAccumBuffer, eStencilBuffer, fStencilBuffer, eStereoBuffers, fStereoBuffers, eDirectRendering, fDirectRendering, eHasOverlay, fHasOverlay, eSampleBuffers, fSampleBuffers, eSingleBuffer, fSingleBuffer, eNoDepthBuffer, fNoDepthBuffer, eColorIndex, fColorIndex, eNoAlphaChannel, fNoAlphaChannel, eNoAccumBuffer, fNoAccumBuffer, eNoStencilBuffer, fNoStencilBuffer, eNoStereoBuffers, fNoStereoBuffers, eIndirectRendering, fIndirectRendering, eNoOverlay, fNoOverlay, eNoSampleBuffers, fNoSampleBuffers
 )
 where

import Foreign.C.Types
import Qtc.Classes.Base
import Qtc.ClassTypes.Core (QObject, TQObject, qObjectFromPtr)
import Qtc.Core.Base (Qcs, connectSlot, qtc_connectSlot_int, wrapSlotHandler_int)
import Qtc.Enums.Base
import Qtc.Enums.Classes.Core

data CFormatOption a = CFormatOption a
type FormatOption = QEnum(CFormatOption Int)

ieFormatOption :: Int -> FormatOption
ieFormatOption x = QEnum (CFormatOption x)

instance QEnumC (CFormatOption Int) where
 qEnum_toInt (QEnum (CFormatOption x)) = x
 qEnum_fromInt x = QEnum (CFormatOption x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> FormatOption -> IO ()) where
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

data CFormatOptions a = CFormatOptions a
type FormatOptions = QFlags(CFormatOptions Int)

ifFormatOptions :: Int -> FormatOptions
ifFormatOptions x = QFlags (CFormatOptions x)

instance QFlagsC (CFormatOptions Int) where
 qFlags_toInt (QFlags (CFormatOptions x)) = x
 qFlags_fromInt x = QFlags (CFormatOptions x)
 withQFlagsResult x
   = do
     ti <- x
     return $ qFlags_fromInt $ fromIntegral ti
 withQFlagsListResult x
   = do
     til <- x
     return $ map qFlags_fromInt til

instance Qcs (QObject c -> FormatOptions -> IO ()) where
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

eDoubleBuffer :: FormatOption
eDoubleBuffer
  = ieFormatOption $ 1
eDepthBuffer :: FormatOption
eDepthBuffer
  = ieFormatOption $ 2
eRgba :: FormatOption
eRgba
  = ieFormatOption $ 4
eAlphaChannel :: FormatOption
eAlphaChannel
  = ieFormatOption $ 8
eAccumBuffer :: FormatOption
eAccumBuffer
  = ieFormatOption $ 16
eStencilBuffer :: FormatOption
eStencilBuffer
  = ieFormatOption $ 32
eStereoBuffers :: FormatOption
eStereoBuffers
  = ieFormatOption $ 64
eDirectRendering :: FormatOption
eDirectRendering
  = ieFormatOption $ 128
eHasOverlay :: FormatOption
eHasOverlay
  = ieFormatOption $ 256
eSampleBuffers :: FormatOption
eSampleBuffers
  = ieFormatOption $ 512
eSingleBuffer :: FormatOption
eSingleBuffer
  = ieFormatOption $ 65536
eNoDepthBuffer :: FormatOption
eNoDepthBuffer
  = ieFormatOption $ 131072
eColorIndex :: FormatOption
eColorIndex
  = ieFormatOption $ 262144
eNoAlphaChannel :: FormatOption
eNoAlphaChannel
  = ieFormatOption $ 524288
eNoAccumBuffer :: FormatOption
eNoAccumBuffer
  = ieFormatOption $ 1048576
eNoStencilBuffer :: FormatOption
eNoStencilBuffer
  = ieFormatOption $ 2097152
eNoStereoBuffers :: FormatOption
eNoStereoBuffers
  = ieFormatOption $ 4194304
eIndirectRendering :: FormatOption
eIndirectRendering
  = ieFormatOption $ 8388608
eNoOverlay :: FormatOption
eNoOverlay
  = ieFormatOption $ 16777216
eNoSampleBuffers :: FormatOption
eNoSampleBuffers
  = ieFormatOption $ 33554432

fDoubleBuffer :: FormatOptions
fDoubleBuffer
  = ifFormatOptions $ 1
fDepthBuffer :: FormatOptions
fDepthBuffer
  = ifFormatOptions $ 2
fRgba :: FormatOptions
fRgba
  = ifFormatOptions $ 4
fAlphaChannel :: FormatOptions
fAlphaChannel
  = ifFormatOptions $ 8
fAccumBuffer :: FormatOptions
fAccumBuffer
  = ifFormatOptions $ 16
fStencilBuffer :: FormatOptions
fStencilBuffer
  = ifFormatOptions $ 32
fStereoBuffers :: FormatOptions
fStereoBuffers
  = ifFormatOptions $ 64
fDirectRendering :: FormatOptions
fDirectRendering
  = ifFormatOptions $ 128
fHasOverlay :: FormatOptions
fHasOverlay
  = ifFormatOptions $ 256
fSampleBuffers :: FormatOptions
fSampleBuffers
  = ifFormatOptions $ 512
fSingleBuffer :: FormatOptions
fSingleBuffer
  = ifFormatOptions $ 65536
fNoDepthBuffer :: FormatOptions
fNoDepthBuffer
  = ifFormatOptions $ 131072
fColorIndex :: FormatOptions
fColorIndex
  = ifFormatOptions $ 262144
fNoAlphaChannel :: FormatOptions
fNoAlphaChannel
  = ifFormatOptions $ 524288
fNoAccumBuffer :: FormatOptions
fNoAccumBuffer
  = ifFormatOptions $ 1048576
fNoStencilBuffer :: FormatOptions
fNoStencilBuffer
  = ifFormatOptions $ 2097152
fNoStereoBuffers :: FormatOptions
fNoStereoBuffers
  = ifFormatOptions $ 4194304
fIndirectRendering :: FormatOptions
fIndirectRendering
  = ifFormatOptions $ 8388608
fNoOverlay :: FormatOptions
fNoOverlay
  = ifFormatOptions $ 16777216
fNoSampleBuffers :: FormatOptions
fNoSampleBuffers
  = ifFormatOptions $ 33554432

