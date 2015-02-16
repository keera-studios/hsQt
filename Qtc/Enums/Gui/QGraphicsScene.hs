{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QGraphicsScene.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:34
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Enums.Gui.QGraphicsScene (
 ItemIndexMethod, eBspTreeIndex, eNoIndex
 , SceneLayer, SceneLayers, eItemLayer, fItemLayer, eBackgroundLayer, fBackgroundLayer, eForegroundLayer, fForegroundLayer, eAllLayers, fAllLayers
 )
 where

import Foreign.C.Types
import Qtc.Classes.Base
import Qtc.ClassTypes.Core (QObject, TQObject, qObjectFromPtr)
import Qtc.Core.Base (Qcs, connectSlot, qtc_connectSlot_int, wrapSlotHandler_int)
import Qtc.Enums.Base
import Qtc.Enums.Classes.Core

data CItemIndexMethod a = CItemIndexMethod a
type ItemIndexMethod = QEnum(CItemIndexMethod Int)

ieItemIndexMethod :: Int -> ItemIndexMethod
ieItemIndexMethod x = QEnum (CItemIndexMethod x)

instance QEnumC (CItemIndexMethod Int) where
 qEnum_toInt (QEnum (CItemIndexMethod x)) = x
 qEnum_fromInt x = QEnum (CItemIndexMethod x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> ItemIndexMethod -> IO ()) where
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

eBspTreeIndex :: ItemIndexMethod
eBspTreeIndex
  = ieItemIndexMethod $ 0
eNoIndex :: ItemIndexMethod
eNoIndex
  = ieItemIndexMethod $ -1

data CSceneLayer a = CSceneLayer a
type SceneLayer = QEnum(CSceneLayer Int)

ieSceneLayer :: Int -> SceneLayer
ieSceneLayer x = QEnum (CSceneLayer x)

instance QEnumC (CSceneLayer Int) where
 qEnum_toInt (QEnum (CSceneLayer x)) = x
 qEnum_fromInt x = QEnum (CSceneLayer x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> SceneLayer -> IO ()) where
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

data CSceneLayers a = CSceneLayers a
type SceneLayers = QFlags(CSceneLayers Int)

ifSceneLayers :: Int -> SceneLayers
ifSceneLayers x = QFlags (CSceneLayers x)

instance QFlagsC (CSceneLayers Int) where
 qFlags_toInt (QFlags (CSceneLayers x)) = x
 qFlags_fromInt x = QFlags (CSceneLayers x)
 withQFlagsResult x
   = do
     ti <- x
     return $ qFlags_fromInt $ fromIntegral ti
 withQFlagsListResult x
   = do
     til <- x
     return $ map qFlags_fromInt til

instance Qcs (QObject c -> SceneLayers -> IO ()) where
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

eItemLayer :: SceneLayer
eItemLayer
  = ieSceneLayer $ 1
eBackgroundLayer :: SceneLayer
eBackgroundLayer
  = ieSceneLayer $ 2
eForegroundLayer :: SceneLayer
eForegroundLayer
  = ieSceneLayer $ 4
eAllLayers :: SceneLayer
eAllLayers
  = ieSceneLayer $ 65535

fItemLayer :: SceneLayers
fItemLayer
  = ifSceneLayers $ 1
fBackgroundLayer :: SceneLayers
fBackgroundLayer
  = ifSceneLayers $ 2
fForegroundLayer :: SceneLayers
fForegroundLayer
  = ifSceneLayers $ 4
fAllLayers :: SceneLayers
fAllLayers
  = ifSceneLayers $ 65535

