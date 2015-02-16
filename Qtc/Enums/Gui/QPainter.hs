{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QPainter.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:35
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Enums.Gui.QPainter (
 RenderHint, RenderHints, eTextAntialiasing, fTextAntialiasing, eSmoothPixmapTransform, fSmoothPixmapTransform, eHighQualityAntialiasing, fHighQualityAntialiasing
 , CompositionMode, eCompositionMode_SourceOver, eCompositionMode_DestinationOver, eCompositionMode_Clear, eCompositionMode_Source, eCompositionMode_Destination, eCompositionMode_SourceIn, eCompositionMode_DestinationIn, eCompositionMode_SourceOut, eCompositionMode_DestinationOut, eCompositionMode_SourceAtop, eCompositionMode_DestinationAtop, eCompositionMode_Xor, eCompositionMode_Plus, eCompositionMode_Multiply, eCompositionMode_Screen, eCompositionMode_Overlay, eCompositionMode_Darken, eCompositionMode_Lighten, eCompositionMode_ColorDodge, eCompositionMode_ColorBurn, eCompositionMode_HardLight, eCompositionMode_SoftLight, eCompositionMode_Difference, eCompositionMode_Exclusion
 )
 where

import Foreign.C.Types
import Qtc.Classes.Base
import Qtc.ClassTypes.Core (QObject, TQObject, qObjectFromPtr)
import Qtc.Core.Base (Qcs, connectSlot, qtc_connectSlot_int, wrapSlotHandler_int)
import Qtc.Enums.Base
import Qtc.Enums.Classes.Core

data CRenderHint a = CRenderHint a
type RenderHint = QEnum(CRenderHint Int)

ieRenderHint :: Int -> RenderHint
ieRenderHint x = QEnum (CRenderHint x)

instance QEnumC (CRenderHint Int) where
 qEnum_toInt (QEnum (CRenderHint x)) = x
 qEnum_fromInt x = QEnum (CRenderHint x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> RenderHint -> IO ()) where
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

data CRenderHints a = CRenderHints a
type RenderHints = QFlags(CRenderHints Int)

ifRenderHints :: Int -> RenderHints
ifRenderHints x = QFlags (CRenderHints x)

instance QFlagsC (CRenderHints Int) where
 qFlags_toInt (QFlags (CRenderHints x)) = x
 qFlags_fromInt x = QFlags (CRenderHints x)
 withQFlagsResult x
   = do
     ti <- x
     return $ qFlags_fromInt $ fromIntegral ti
 withQFlagsListResult x
   = do
     til <- x
     return $ map qFlags_fromInt til

instance Qcs (QObject c -> RenderHints -> IO ()) where
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

instance QeAntialiasing RenderHint where
 eAntialiasing
  = ieRenderHint $ 1
eTextAntialiasing :: RenderHint
eTextAntialiasing
  = ieRenderHint $ 2
eSmoothPixmapTransform :: RenderHint
eSmoothPixmapTransform
  = ieRenderHint $ 4
eHighQualityAntialiasing :: RenderHint
eHighQualityAntialiasing
  = ieRenderHint $ 8

instance QfAntialiasing RenderHints where
 fAntialiasing
  = ifRenderHints $ 1
fTextAntialiasing :: RenderHints
fTextAntialiasing
  = ifRenderHints $ 2
fSmoothPixmapTransform :: RenderHints
fSmoothPixmapTransform
  = ifRenderHints $ 4
fHighQualityAntialiasing :: RenderHints
fHighQualityAntialiasing
  = ifRenderHints $ 8

data CCompositionMode a = CCompositionMode a
type CompositionMode = QEnum(CCompositionMode Int)

ieCompositionMode :: Int -> CompositionMode
ieCompositionMode x = QEnum (CCompositionMode x)

instance QEnumC (CCompositionMode Int) where
 qEnum_toInt (QEnum (CCompositionMode x)) = x
 qEnum_fromInt x = QEnum (CCompositionMode x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> CompositionMode -> IO ()) where
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

eCompositionMode_SourceOver :: CompositionMode
eCompositionMode_SourceOver
  = ieCompositionMode $ 0
eCompositionMode_DestinationOver :: CompositionMode
eCompositionMode_DestinationOver
  = ieCompositionMode $ 1
eCompositionMode_Clear :: CompositionMode
eCompositionMode_Clear
  = ieCompositionMode $ 2
eCompositionMode_Source :: CompositionMode
eCompositionMode_Source
  = ieCompositionMode $ 3
eCompositionMode_Destination :: CompositionMode
eCompositionMode_Destination
  = ieCompositionMode $ 4
eCompositionMode_SourceIn :: CompositionMode
eCompositionMode_SourceIn
  = ieCompositionMode $ 5
eCompositionMode_DestinationIn :: CompositionMode
eCompositionMode_DestinationIn
  = ieCompositionMode $ 6
eCompositionMode_SourceOut :: CompositionMode
eCompositionMode_SourceOut
  = ieCompositionMode $ 7
eCompositionMode_DestinationOut :: CompositionMode
eCompositionMode_DestinationOut
  = ieCompositionMode $ 8
eCompositionMode_SourceAtop :: CompositionMode
eCompositionMode_SourceAtop
  = ieCompositionMode $ 9
eCompositionMode_DestinationAtop :: CompositionMode
eCompositionMode_DestinationAtop
  = ieCompositionMode $ 10
eCompositionMode_Xor :: CompositionMode
eCompositionMode_Xor
  = ieCompositionMode $ 11
eCompositionMode_Plus :: CompositionMode
eCompositionMode_Plus
  = ieCompositionMode $ 12
eCompositionMode_Multiply :: CompositionMode
eCompositionMode_Multiply
  = ieCompositionMode $ 13
eCompositionMode_Screen :: CompositionMode
eCompositionMode_Screen
  = ieCompositionMode $ 14
eCompositionMode_Overlay :: CompositionMode
eCompositionMode_Overlay
  = ieCompositionMode $ 15
eCompositionMode_Darken :: CompositionMode
eCompositionMode_Darken
  = ieCompositionMode $ 16
eCompositionMode_Lighten :: CompositionMode
eCompositionMode_Lighten
  = ieCompositionMode $ 17
eCompositionMode_ColorDodge :: CompositionMode
eCompositionMode_ColorDodge
  = ieCompositionMode $ 18
eCompositionMode_ColorBurn :: CompositionMode
eCompositionMode_ColorBurn
  = ieCompositionMode $ 19
eCompositionMode_HardLight :: CompositionMode
eCompositionMode_HardLight
  = ieCompositionMode $ 20
eCompositionMode_SoftLight :: CompositionMode
eCompositionMode_SoftLight
  = ieCompositionMode $ 21
eCompositionMode_Difference :: CompositionMode
eCompositionMode_Difference
  = ieCompositionMode $ 22
eCompositionMode_Exclusion :: CompositionMode
eCompositionMode_Exclusion
  = ieCompositionMode $ 23

