{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QGraphicsView.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:35
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Enums.Gui.QGraphicsView (
 ViewportAnchor, eNoAnchor, eAnchorViewCenter, eAnchorUnderMouse
 , CacheModeFlag, QGraphicsViewCacheMode, fCacheNone, eCacheBackground, fCacheBackground
 , DragMode, eNoDrag, eScrollHandDrag, eRubberBandDrag
 , ViewportUpdateMode, eFullViewportUpdate, eMinimalViewportUpdate, eSmartViewportUpdate, eNoViewportUpdate
 , OptimizationFlag, OptimizationFlags, eDontClipPainter, fDontClipPainter, eDontSavePainterState, fDontSavePainterState, eDontAdjustForAntialiasing, fDontAdjustForAntialiasing
 )
 where

import Foreign.C.Types
import Qtc.Classes.Base
import Qtc.ClassTypes.Core (QObject, TQObject, qObjectFromPtr)
import Qtc.Core.Base (Qcs, connectSlot, qtc_connectSlot_int, wrapSlotHandler_int)
import Qtc.Enums.Base
import Qtc.Enums.Classes.Core

data CViewportAnchor a = CViewportAnchor a
type ViewportAnchor = QEnum(CViewportAnchor Int)

ieViewportAnchor :: Int -> ViewportAnchor
ieViewportAnchor x = QEnum (CViewportAnchor x)

instance QEnumC (CViewportAnchor Int) where
 qEnum_toInt (QEnum (CViewportAnchor x)) = x
 qEnum_fromInt x = QEnum (CViewportAnchor x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> ViewportAnchor -> IO ()) where
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

eNoAnchor :: ViewportAnchor
eNoAnchor
  = ieViewportAnchor $ 0
eAnchorViewCenter :: ViewportAnchor
eAnchorViewCenter
  = ieViewportAnchor $ 1
eAnchorUnderMouse :: ViewportAnchor
eAnchorUnderMouse
  = ieViewportAnchor $ 2

data CCacheModeFlag a = CCacheModeFlag a
type CacheModeFlag = QEnum(CCacheModeFlag Int)

ieCacheModeFlag :: Int -> CacheModeFlag
ieCacheModeFlag x = QEnum (CCacheModeFlag x)

instance QEnumC (CCacheModeFlag Int) where
 qEnum_toInt (QEnum (CCacheModeFlag x)) = x
 qEnum_fromInt x = QEnum (CCacheModeFlag x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> CacheModeFlag -> IO ()) where
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

data CQGraphicsViewCacheMode a = CQGraphicsViewCacheMode a
type QGraphicsViewCacheMode = QFlags(CQGraphicsViewCacheMode Int)

ifQGraphicsViewCacheMode :: Int -> QGraphicsViewCacheMode
ifQGraphicsViewCacheMode x = QFlags (CQGraphicsViewCacheMode x)

instance QFlagsC (CQGraphicsViewCacheMode Int) where
 qFlags_toInt (QFlags (CQGraphicsViewCacheMode x)) = x
 qFlags_fromInt x = QFlags (CQGraphicsViewCacheMode x)
 withQFlagsResult x
   = do
     ti <- x
     return $ qFlags_fromInt $ fromIntegral ti
 withQFlagsListResult x
   = do
     til <- x
     return $ map qFlags_fromInt til

instance Qcs (QObject c -> QGraphicsViewCacheMode -> IO ()) where
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

instance QeCacheNone CacheModeFlag where
 eCacheNone
  = ieCacheModeFlag $ 0
eCacheBackground :: CacheModeFlag
eCacheBackground
  = ieCacheModeFlag $ 1

fCacheNone :: QGraphicsViewCacheMode
fCacheNone
  = ifQGraphicsViewCacheMode $ 0
fCacheBackground :: QGraphicsViewCacheMode
fCacheBackground
  = ifQGraphicsViewCacheMode $ 1

data CDragMode a = CDragMode a
type DragMode = QEnum(CDragMode Int)

ieDragMode :: Int -> DragMode
ieDragMode x = QEnum (CDragMode x)

instance QEnumC (CDragMode Int) where
 qEnum_toInt (QEnum (CDragMode x)) = x
 qEnum_fromInt x = QEnum (CDragMode x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> DragMode -> IO ()) where
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

eNoDrag :: DragMode
eNoDrag
  = ieDragMode $ 0
eScrollHandDrag :: DragMode
eScrollHandDrag
  = ieDragMode $ 1
eRubberBandDrag :: DragMode
eRubberBandDrag
  = ieDragMode $ 2

data CViewportUpdateMode a = CViewportUpdateMode a
type ViewportUpdateMode = QEnum(CViewportUpdateMode Int)

ieViewportUpdateMode :: Int -> ViewportUpdateMode
ieViewportUpdateMode x = QEnum (CViewportUpdateMode x)

instance QEnumC (CViewportUpdateMode Int) where
 qEnum_toInt (QEnum (CViewportUpdateMode x)) = x
 qEnum_fromInt x = QEnum (CViewportUpdateMode x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> ViewportUpdateMode -> IO ()) where
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

eFullViewportUpdate :: ViewportUpdateMode
eFullViewportUpdate
  = ieViewportUpdateMode $ 0
eMinimalViewportUpdate :: ViewportUpdateMode
eMinimalViewportUpdate
  = ieViewportUpdateMode $ 1
eSmartViewportUpdate :: ViewportUpdateMode
eSmartViewportUpdate
  = ieViewportUpdateMode $ 2
eNoViewportUpdate :: ViewportUpdateMode
eNoViewportUpdate
  = ieViewportUpdateMode $ 3

data COptimizationFlag a = COptimizationFlag a
type OptimizationFlag = QEnum(COptimizationFlag Int)

ieOptimizationFlag :: Int -> OptimizationFlag
ieOptimizationFlag x = QEnum (COptimizationFlag x)

instance QEnumC (COptimizationFlag Int) where
 qEnum_toInt (QEnum (COptimizationFlag x)) = x
 qEnum_fromInt x = QEnum (COptimizationFlag x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> OptimizationFlag -> IO ()) where
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

data COptimizationFlags a = COptimizationFlags a
type OptimizationFlags = QFlags(COptimizationFlags Int)

ifOptimizationFlags :: Int -> OptimizationFlags
ifOptimizationFlags x = QFlags (COptimizationFlags x)

instance QFlagsC (COptimizationFlags Int) where
 qFlags_toInt (QFlags (COptimizationFlags x)) = x
 qFlags_fromInt x = QFlags (COptimizationFlags x)
 withQFlagsResult x
   = do
     ti <- x
     return $ qFlags_fromInt $ fromIntegral ti
 withQFlagsListResult x
   = do
     til <- x
     return $ map qFlags_fromInt til

instance Qcs (QObject c -> OptimizationFlags -> IO ()) where
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

eDontClipPainter :: OptimizationFlag
eDontClipPainter
  = ieOptimizationFlag $ 1
eDontSavePainterState :: OptimizationFlag
eDontSavePainterState
  = ieOptimizationFlag $ 2
eDontAdjustForAntialiasing :: OptimizationFlag
eDontAdjustForAntialiasing
  = ieOptimizationFlag $ 4

fDontClipPainter :: OptimizationFlags
fDontClipPainter
  = ifOptimizationFlags $ 1
fDontSavePainterState :: OptimizationFlags
fDontSavePainterState
  = ifOptimizationFlags $ 2
fDontAdjustForAntialiasing :: OptimizationFlags
fDontAdjustForAntialiasing
  = ifOptimizationFlags $ 4

