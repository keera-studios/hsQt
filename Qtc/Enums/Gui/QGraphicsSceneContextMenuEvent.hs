{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QGraphicsSceneContextMenuEvent.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:35
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Enums.Gui.QGraphicsSceneContextMenuEvent (
 QGraphicsSceneContextMenuEventReason
 )
 where

import Foreign.C.Types
import Qtc.Classes.Base
import Qtc.ClassTypes.Core (QObject, TQObject, qObjectFromPtr)
import Qtc.Core.Base (Qcs, connectSlot, qtc_connectSlot_int, wrapSlotHandler_int)
import Qtc.Enums.Base
import Qtc.Enums.Classes.Core

data CQGraphicsSceneContextMenuEventReason a = CQGraphicsSceneContextMenuEventReason a
type QGraphicsSceneContextMenuEventReason = QEnum(CQGraphicsSceneContextMenuEventReason Int)

ieQGraphicsSceneContextMenuEventReason :: Int -> QGraphicsSceneContextMenuEventReason
ieQGraphicsSceneContextMenuEventReason x = QEnum (CQGraphicsSceneContextMenuEventReason x)

instance QEnumC (CQGraphicsSceneContextMenuEventReason Int) where
 qEnum_toInt (QEnum (CQGraphicsSceneContextMenuEventReason x)) = x
 qEnum_fromInt x = QEnum (CQGraphicsSceneContextMenuEventReason x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> QGraphicsSceneContextMenuEventReason -> IO ()) where
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

instance QeMouse QGraphicsSceneContextMenuEventReason where
 eMouse
  = ieQGraphicsSceneContextMenuEventReason $ 0
instance QeKeyboard QGraphicsSceneContextMenuEventReason where
 eKeyboard
  = ieQGraphicsSceneContextMenuEventReason $ 1
instance QeOther QGraphicsSceneContextMenuEventReason where
 eOther
  = ieQGraphicsSceneContextMenuEventReason $ 2

