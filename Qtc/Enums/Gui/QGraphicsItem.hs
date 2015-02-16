{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QGraphicsItem.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:36
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Enums.Gui.QGraphicsItem (
 GraphicsItemFlag, GraphicsItemFlags, eItemIsMovable, fItemIsMovable, eItemIsFocusable, fItemIsFocusable, eItemClipsToShape, fItemClipsToShape, eItemClipsChildrenToShape, fItemClipsChildrenToShape, eItemIgnoresTransformations, fItemIgnoresTransformations
 , GraphicsItemChange, eItemPositionChange, eItemMatrixChange, eItemVisibleChange, eItemEnabledChange, eItemSelectedChange, eItemParentChange, eItemChildAddedChange, eItemChildRemovedChange, eItemTransformChange, eItemPositionHasChanged, eItemTransformHasChanged, eItemSceneChange
 , QGraphicsItem__
 , QGraphicsItemExtension, eUserExtension
 )
 where

import Foreign.C.Types
import Qtc.Classes.Base
import Qtc.ClassTypes.Core (QObject, TQObject, qObjectFromPtr)
import Qtc.Core.Base (Qcs, connectSlot, qtc_connectSlot_int, wrapSlotHandler_int)
import Qtc.Enums.Base
import Qtc.Enums.Classes.Core

data CGraphicsItemFlag a = CGraphicsItemFlag a
type GraphicsItemFlag = QEnum(CGraphicsItemFlag Int)

ieGraphicsItemFlag :: Int -> GraphicsItemFlag
ieGraphicsItemFlag x = QEnum (CGraphicsItemFlag x)

instance QEnumC (CGraphicsItemFlag Int) where
 qEnum_toInt (QEnum (CGraphicsItemFlag x)) = x
 qEnum_fromInt x = QEnum (CGraphicsItemFlag x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> GraphicsItemFlag -> IO ()) where
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

data CGraphicsItemFlags a = CGraphicsItemFlags a
type GraphicsItemFlags = QFlags(CGraphicsItemFlags Int)

ifGraphicsItemFlags :: Int -> GraphicsItemFlags
ifGraphicsItemFlags x = QFlags (CGraphicsItemFlags x)

instance QFlagsC (CGraphicsItemFlags Int) where
 qFlags_toInt (QFlags (CGraphicsItemFlags x)) = x
 qFlags_fromInt x = QFlags (CGraphicsItemFlags x)
 withQFlagsResult x
   = do
     ti <- x
     return $ qFlags_fromInt $ fromIntegral ti
 withQFlagsListResult x
   = do
     til <- x
     return $ map qFlags_fromInt til

instance Qcs (QObject c -> GraphicsItemFlags -> IO ()) where
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

eItemIsMovable :: GraphicsItemFlag
eItemIsMovable
  = ieGraphicsItemFlag $ 1
instance QeItemIsSelectable GraphicsItemFlag where
 eItemIsSelectable
  = ieGraphicsItemFlag $ 2
eItemIsFocusable :: GraphicsItemFlag
eItemIsFocusable
  = ieGraphicsItemFlag $ 4
eItemClipsToShape :: GraphicsItemFlag
eItemClipsToShape
  = ieGraphicsItemFlag $ 8
eItemClipsChildrenToShape :: GraphicsItemFlag
eItemClipsChildrenToShape
  = ieGraphicsItemFlag $ 16
eItemIgnoresTransformations :: GraphicsItemFlag
eItemIgnoresTransformations
  = ieGraphicsItemFlag $ 32

fItemIsMovable :: GraphicsItemFlags
fItemIsMovable
  = ifGraphicsItemFlags $ 1
instance QfItemIsSelectable GraphicsItemFlags where
 fItemIsSelectable
  = ifGraphicsItemFlags $ 2
fItemIsFocusable :: GraphicsItemFlags
fItemIsFocusable
  = ifGraphicsItemFlags $ 4
fItemClipsToShape :: GraphicsItemFlags
fItemClipsToShape
  = ifGraphicsItemFlags $ 8
fItemClipsChildrenToShape :: GraphicsItemFlags
fItemClipsChildrenToShape
  = ifGraphicsItemFlags $ 16
fItemIgnoresTransformations :: GraphicsItemFlags
fItemIgnoresTransformations
  = ifGraphicsItemFlags $ 32

data CGraphicsItemChange a = CGraphicsItemChange a
type GraphicsItemChange = QEnum(CGraphicsItemChange Int)

ieGraphicsItemChange :: Int -> GraphicsItemChange
ieGraphicsItemChange x = QEnum (CGraphicsItemChange x)

instance QEnumC (CGraphicsItemChange Int) where
 qEnum_toInt (QEnum (CGraphicsItemChange x)) = x
 qEnum_fromInt x = QEnum (CGraphicsItemChange x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> GraphicsItemChange -> IO ()) where
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

eItemPositionChange :: GraphicsItemChange
eItemPositionChange
  = ieGraphicsItemChange $ 0
eItemMatrixChange :: GraphicsItemChange
eItemMatrixChange
  = ieGraphicsItemChange $ 1
eItemVisibleChange :: GraphicsItemChange
eItemVisibleChange
  = ieGraphicsItemChange $ 2
eItemEnabledChange :: GraphicsItemChange
eItemEnabledChange
  = ieGraphicsItemChange $ 3
eItemSelectedChange :: GraphicsItemChange
eItemSelectedChange
  = ieGraphicsItemChange $ 4
eItemParentChange :: GraphicsItemChange
eItemParentChange
  = ieGraphicsItemChange $ 5
eItemChildAddedChange :: GraphicsItemChange
eItemChildAddedChange
  = ieGraphicsItemChange $ 6
eItemChildRemovedChange :: GraphicsItemChange
eItemChildRemovedChange
  = ieGraphicsItemChange $ 7
eItemTransformChange :: GraphicsItemChange
eItemTransformChange
  = ieGraphicsItemChange $ 8
eItemPositionHasChanged :: GraphicsItemChange
eItemPositionHasChanged
  = ieGraphicsItemChange $ 9
eItemTransformHasChanged :: GraphicsItemChange
eItemTransformHasChanged
  = ieGraphicsItemChange $ 10
eItemSceneChange :: GraphicsItemChange
eItemSceneChange
  = ieGraphicsItemChange $ 11

data CQGraphicsItem__ a = CQGraphicsItem__ a
type QGraphicsItem__ = QEnum(CQGraphicsItem__ Int)

ieQGraphicsItem__ :: Int -> QGraphicsItem__
ieQGraphicsItem__ x = QEnum (CQGraphicsItem__ x)

instance QEnumC (CQGraphicsItem__ Int) where
 qEnum_toInt (QEnum (CQGraphicsItem__ x)) = x
 qEnum_fromInt x = QEnum (CQGraphicsItem__ x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> QGraphicsItem__ -> IO ()) where
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

instance QeType QGraphicsItem__ where
 eType
  = ieQGraphicsItem__ $ 1
instance QeUserType QGraphicsItem__ where
 eUserType
  = ieQGraphicsItem__ $ 65536

data CQGraphicsItemExtension a = CQGraphicsItemExtension a
type QGraphicsItemExtension = QEnum(CQGraphicsItemExtension Int)

ieQGraphicsItemExtension :: Int -> QGraphicsItemExtension
ieQGraphicsItemExtension x = QEnum (CQGraphicsItemExtension x)

instance QEnumC (CQGraphicsItemExtension Int) where
 qEnum_toInt (QEnum (CQGraphicsItemExtension x)) = x
 qEnum_fromInt x = QEnum (CQGraphicsItemExtension x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> QGraphicsItemExtension -> IO ()) where
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

eUserExtension :: QGraphicsItemExtension
eUserExtension
  = ieQGraphicsItemExtension $ 0

