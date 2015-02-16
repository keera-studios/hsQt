{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QPaintEngine.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:35
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Enums.Gui.QPaintEngine (
 PaintEngineFeature, PaintEngineFeatures, ePrimitiveTransform, fPrimitiveTransform, ePatternTransform, fPatternTransform, ePixmapTransform, fPixmapTransform, ePatternBrush, fPatternBrush, eLinearGradientFill, fLinearGradientFill, eRadialGradientFill, fRadialGradientFill, eConicalGradientFill, fConicalGradientFill, eAlphaBlend, fAlphaBlend, ePorterDuff, fPorterDuff, ePainterPaths, fPainterPaths, eBrushStroke, fBrushStroke, eConstantOpacity, fConstantOpacity, eMaskedBrush, fMaskedBrush, ePerspectiveTransform, fPerspectiveTransform, eBlendModes, fBlendModes, ePaintOutsidePaintEvent, fPaintOutsidePaintEvent, eAllFeatures, fAllFeatures
 , DirtyFlag, DirtyFlags, eDirtyPen, fDirtyPen, eDirtyBrush, fDirtyBrush, eDirtyBrushOrigin, fDirtyBrushOrigin, eDirtyFont, fDirtyFont, eDirtyBackground, fDirtyBackground, eDirtyBackgroundMode, fDirtyBackgroundMode, eDirtyTransform, fDirtyTransform, eDirtyClipRegion, fDirtyClipRegion, eDirtyClipPath, fDirtyClipPath, eDirtyHints, fDirtyHints, eDirtyCompositionMode, fDirtyCompositionMode, eDirtyClipEnabled, fDirtyClipEnabled, eDirtyOpacity, fDirtyOpacity, eAllDirty, fAllDirty
 , PolygonDrawMode, eOddEvenMode, eWindingMode, eConvexMode, ePolylineMode
 , QPaintEngineType, eX11, eWindows, eQuickDraw, eCoreGraphics, eMacPrinter, eQWindowSystem, ePostScript, eOpenGL, ePicture, eSVG, eRaster, eDirect3D
 )
 where

import Foreign.C.Types
import Qtc.Classes.Base
import Qtc.ClassTypes.Core (QObject, TQObject, qObjectFromPtr)
import Qtc.Core.Base (Qcs, connectSlot, qtc_connectSlot_int, wrapSlotHandler_int)
import Qtc.Enums.Base
import Qtc.Enums.Classes.Core

data CPaintEngineFeature a = CPaintEngineFeature a
type PaintEngineFeature = QEnum(CPaintEngineFeature Int)

iePaintEngineFeature :: Int -> PaintEngineFeature
iePaintEngineFeature x = QEnum (CPaintEngineFeature x)

instance QEnumC (CPaintEngineFeature Int) where
 qEnum_toInt (QEnum (CPaintEngineFeature x)) = x
 qEnum_fromInt x = QEnum (CPaintEngineFeature x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> PaintEngineFeature -> IO ()) where
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

data CPaintEngineFeatures a = CPaintEngineFeatures a
type PaintEngineFeatures = QFlags(CPaintEngineFeatures Int)

ifPaintEngineFeatures :: Int -> PaintEngineFeatures
ifPaintEngineFeatures x = QFlags (CPaintEngineFeatures x)

instance QFlagsC (CPaintEngineFeatures Int) where
 qFlags_toInt (QFlags (CPaintEngineFeatures x)) = x
 qFlags_fromInt x = QFlags (CPaintEngineFeatures x)
 withQFlagsResult x
   = do
     ti <- x
     return $ qFlags_fromInt $ fromIntegral ti
 withQFlagsListResult x
   = do
     til <- x
     return $ map qFlags_fromInt til

instance Qcs (QObject c -> PaintEngineFeatures -> IO ()) where
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

ePrimitiveTransform :: PaintEngineFeature
ePrimitiveTransform
  = iePaintEngineFeature $ 1
ePatternTransform :: PaintEngineFeature
ePatternTransform
  = iePaintEngineFeature $ 2
ePixmapTransform :: PaintEngineFeature
ePixmapTransform
  = iePaintEngineFeature $ 4
ePatternBrush :: PaintEngineFeature
ePatternBrush
  = iePaintEngineFeature $ 8
eLinearGradientFill :: PaintEngineFeature
eLinearGradientFill
  = iePaintEngineFeature $ 16
eRadialGradientFill :: PaintEngineFeature
eRadialGradientFill
  = iePaintEngineFeature $ 32
eConicalGradientFill :: PaintEngineFeature
eConicalGradientFill
  = iePaintEngineFeature $ 64
eAlphaBlend :: PaintEngineFeature
eAlphaBlend
  = iePaintEngineFeature $ 128
ePorterDuff :: PaintEngineFeature
ePorterDuff
  = iePaintEngineFeature $ 256
ePainterPaths :: PaintEngineFeature
ePainterPaths
  = iePaintEngineFeature $ 512
instance QeAntialiasing PaintEngineFeature where
 eAntialiasing
  = iePaintEngineFeature $ 1024
eBrushStroke :: PaintEngineFeature
eBrushStroke
  = iePaintEngineFeature $ 2048
eConstantOpacity :: PaintEngineFeature
eConstantOpacity
  = iePaintEngineFeature $ 4096
eMaskedBrush :: PaintEngineFeature
eMaskedBrush
  = iePaintEngineFeature $ 8192
ePerspectiveTransform :: PaintEngineFeature
ePerspectiveTransform
  = iePaintEngineFeature $ 16384
eBlendModes :: PaintEngineFeature
eBlendModes
  = iePaintEngineFeature $ 32768
ePaintOutsidePaintEvent :: PaintEngineFeature
ePaintOutsidePaintEvent
  = iePaintEngineFeature $ 536870912
eAllFeatures :: PaintEngineFeature
eAllFeatures
  = iePaintEngineFeature $ -1

fPrimitiveTransform :: PaintEngineFeatures
fPrimitiveTransform
  = ifPaintEngineFeatures $ 1
fPatternTransform :: PaintEngineFeatures
fPatternTransform
  = ifPaintEngineFeatures $ 2
fPixmapTransform :: PaintEngineFeatures
fPixmapTransform
  = ifPaintEngineFeatures $ 4
fPatternBrush :: PaintEngineFeatures
fPatternBrush
  = ifPaintEngineFeatures $ 8
fLinearGradientFill :: PaintEngineFeatures
fLinearGradientFill
  = ifPaintEngineFeatures $ 16
fRadialGradientFill :: PaintEngineFeatures
fRadialGradientFill
  = ifPaintEngineFeatures $ 32
fConicalGradientFill :: PaintEngineFeatures
fConicalGradientFill
  = ifPaintEngineFeatures $ 64
fAlphaBlend :: PaintEngineFeatures
fAlphaBlend
  = ifPaintEngineFeatures $ 128
fPorterDuff :: PaintEngineFeatures
fPorterDuff
  = ifPaintEngineFeatures $ 256
fPainterPaths :: PaintEngineFeatures
fPainterPaths
  = ifPaintEngineFeatures $ 512
instance QfAntialiasing PaintEngineFeatures where
 fAntialiasing
  = ifPaintEngineFeatures $ 1024
fBrushStroke :: PaintEngineFeatures
fBrushStroke
  = ifPaintEngineFeatures $ 2048
fConstantOpacity :: PaintEngineFeatures
fConstantOpacity
  = ifPaintEngineFeatures $ 4096
fMaskedBrush :: PaintEngineFeatures
fMaskedBrush
  = ifPaintEngineFeatures $ 8192
fPerspectiveTransform :: PaintEngineFeatures
fPerspectiveTransform
  = ifPaintEngineFeatures $ 16384
fBlendModes :: PaintEngineFeatures
fBlendModes
  = ifPaintEngineFeatures $ 32768
fPaintOutsidePaintEvent :: PaintEngineFeatures
fPaintOutsidePaintEvent
  = ifPaintEngineFeatures $ 536870912
fAllFeatures :: PaintEngineFeatures
fAllFeatures
  = ifPaintEngineFeatures $ -1

data CDirtyFlag a = CDirtyFlag a
type DirtyFlag = QEnum(CDirtyFlag Int)

ieDirtyFlag :: Int -> DirtyFlag
ieDirtyFlag x = QEnum (CDirtyFlag x)

instance QEnumC (CDirtyFlag Int) where
 qEnum_toInt (QEnum (CDirtyFlag x)) = x
 qEnum_fromInt x = QEnum (CDirtyFlag x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> DirtyFlag -> IO ()) where
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

data CDirtyFlags a = CDirtyFlags a
type DirtyFlags = QFlags(CDirtyFlags Int)

ifDirtyFlags :: Int -> DirtyFlags
ifDirtyFlags x = QFlags (CDirtyFlags x)

instance QFlagsC (CDirtyFlags Int) where
 qFlags_toInt (QFlags (CDirtyFlags x)) = x
 qFlags_fromInt x = QFlags (CDirtyFlags x)
 withQFlagsResult x
   = do
     ti <- x
     return $ qFlags_fromInt $ fromIntegral ti
 withQFlagsListResult x
   = do
     til <- x
     return $ map qFlags_fromInt til

instance Qcs (QObject c -> DirtyFlags -> IO ()) where
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

eDirtyPen :: DirtyFlag
eDirtyPen
  = ieDirtyFlag $ 1
eDirtyBrush :: DirtyFlag
eDirtyBrush
  = ieDirtyFlag $ 2
eDirtyBrushOrigin :: DirtyFlag
eDirtyBrushOrigin
  = ieDirtyFlag $ 4
eDirtyFont :: DirtyFlag
eDirtyFont
  = ieDirtyFlag $ 8
eDirtyBackground :: DirtyFlag
eDirtyBackground
  = ieDirtyFlag $ 16
eDirtyBackgroundMode :: DirtyFlag
eDirtyBackgroundMode
  = ieDirtyFlag $ 32
eDirtyTransform :: DirtyFlag
eDirtyTransform
  = ieDirtyFlag $ 64
eDirtyClipRegion :: DirtyFlag
eDirtyClipRegion
  = ieDirtyFlag $ 128
eDirtyClipPath :: DirtyFlag
eDirtyClipPath
  = ieDirtyFlag $ 256
eDirtyHints :: DirtyFlag
eDirtyHints
  = ieDirtyFlag $ 512
eDirtyCompositionMode :: DirtyFlag
eDirtyCompositionMode
  = ieDirtyFlag $ 1024
eDirtyClipEnabled :: DirtyFlag
eDirtyClipEnabled
  = ieDirtyFlag $ 2048
eDirtyOpacity :: DirtyFlag
eDirtyOpacity
  = ieDirtyFlag $ 4096
eAllDirty :: DirtyFlag
eAllDirty
  = ieDirtyFlag $ 65535

fDirtyPen :: DirtyFlags
fDirtyPen
  = ifDirtyFlags $ 1
fDirtyBrush :: DirtyFlags
fDirtyBrush
  = ifDirtyFlags $ 2
fDirtyBrushOrigin :: DirtyFlags
fDirtyBrushOrigin
  = ifDirtyFlags $ 4
fDirtyFont :: DirtyFlags
fDirtyFont
  = ifDirtyFlags $ 8
fDirtyBackground :: DirtyFlags
fDirtyBackground
  = ifDirtyFlags $ 16
fDirtyBackgroundMode :: DirtyFlags
fDirtyBackgroundMode
  = ifDirtyFlags $ 32
fDirtyTransform :: DirtyFlags
fDirtyTransform
  = ifDirtyFlags $ 64
fDirtyClipRegion :: DirtyFlags
fDirtyClipRegion
  = ifDirtyFlags $ 128
fDirtyClipPath :: DirtyFlags
fDirtyClipPath
  = ifDirtyFlags $ 256
fDirtyHints :: DirtyFlags
fDirtyHints
  = ifDirtyFlags $ 512
fDirtyCompositionMode :: DirtyFlags
fDirtyCompositionMode
  = ifDirtyFlags $ 1024
fDirtyClipEnabled :: DirtyFlags
fDirtyClipEnabled
  = ifDirtyFlags $ 2048
fDirtyOpacity :: DirtyFlags
fDirtyOpacity
  = ifDirtyFlags $ 4096
fAllDirty :: DirtyFlags
fAllDirty
  = ifDirtyFlags $ 65535

data CPolygonDrawMode a = CPolygonDrawMode a
type PolygonDrawMode = QEnum(CPolygonDrawMode Int)

iePolygonDrawMode :: Int -> PolygonDrawMode
iePolygonDrawMode x = QEnum (CPolygonDrawMode x)

instance QEnumC (CPolygonDrawMode Int) where
 qEnum_toInt (QEnum (CPolygonDrawMode x)) = x
 qEnum_fromInt x = QEnum (CPolygonDrawMode x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> PolygonDrawMode -> IO ()) where
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

eOddEvenMode :: PolygonDrawMode
eOddEvenMode
  = iePolygonDrawMode $ 0
eWindingMode :: PolygonDrawMode
eWindingMode
  = iePolygonDrawMode $ 1
eConvexMode :: PolygonDrawMode
eConvexMode
  = iePolygonDrawMode $ 2
ePolylineMode :: PolygonDrawMode
ePolylineMode
  = iePolygonDrawMode $ 3

data CQPaintEngineType a = CQPaintEngineType a
type QPaintEngineType = QEnum(CQPaintEngineType Int)

ieQPaintEngineType :: Int -> QPaintEngineType
ieQPaintEngineType x = QEnum (CQPaintEngineType x)

instance QEnumC (CQPaintEngineType Int) where
 qEnum_toInt (QEnum (CQPaintEngineType x)) = x
 qEnum_fromInt x = QEnum (CQPaintEngineType x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> QPaintEngineType -> IO ()) where
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

eX11 :: QPaintEngineType
eX11
  = ieQPaintEngineType $ 0
eWindows :: QPaintEngineType
eWindows
  = ieQPaintEngineType $ 1
eQuickDraw :: QPaintEngineType
eQuickDraw
  = ieQPaintEngineType $ 2
eCoreGraphics :: QPaintEngineType
eCoreGraphics
  = ieQPaintEngineType $ 3
eMacPrinter :: QPaintEngineType
eMacPrinter
  = ieQPaintEngineType $ 4
eQWindowSystem :: QPaintEngineType
eQWindowSystem
  = ieQPaintEngineType $ 5
ePostScript :: QPaintEngineType
ePostScript
  = ieQPaintEngineType $ 6
eOpenGL :: QPaintEngineType
eOpenGL
  = ieQPaintEngineType $ 7
ePicture :: QPaintEngineType
ePicture
  = ieQPaintEngineType $ 8
eSVG :: QPaintEngineType
eSVG
  = ieQPaintEngineType $ 9
eRaster :: QPaintEngineType
eRaster
  = ieQPaintEngineType $ 10
eDirect3D :: QPaintEngineType
eDirect3D
  = ieQPaintEngineType $ 11
instance QeUser QPaintEngineType where
 eUser
  = ieQPaintEngineType $ 50
instance QeMaxUser QPaintEngineType where
 eMaxUser
  = ieQPaintEngineType $ 100

