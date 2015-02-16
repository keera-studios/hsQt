{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QAction.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:35
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Enums.Gui.QAction (
 MenuRole, eTextHeuristicRole, eApplicationSpecificRole, eAboutQtRole, eAboutRole, ePreferencesRole, eQuitRole
 , ActionEvent, eHover
 )
 where

import Foreign.C.Types
import Qtc.Classes.Base
import Qtc.ClassTypes.Core (QObject, TQObject, qObjectFromPtr)
import Qtc.Core.Base (Qcs, connectSlot, qtc_connectSlot_int, wrapSlotHandler_int)
import Qtc.Enums.Base
import Qtc.Enums.Classes.Core

data CMenuRole a = CMenuRole a
type MenuRole = QEnum(CMenuRole Int)

ieMenuRole :: Int -> MenuRole
ieMenuRole x = QEnum (CMenuRole x)

instance QEnumC (CMenuRole Int) where
 qEnum_toInt (QEnum (CMenuRole x)) = x
 qEnum_fromInt x = QEnum (CMenuRole x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> MenuRole -> IO ()) where
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

instance QeNoRole MenuRole where
 eNoRole
  = ieMenuRole $ 0
eTextHeuristicRole :: MenuRole
eTextHeuristicRole
  = ieMenuRole $ 1
eApplicationSpecificRole :: MenuRole
eApplicationSpecificRole
  = ieMenuRole $ 2
eAboutQtRole :: MenuRole
eAboutQtRole
  = ieMenuRole $ 3
eAboutRole :: MenuRole
eAboutRole
  = ieMenuRole $ 4
ePreferencesRole :: MenuRole
ePreferencesRole
  = ieMenuRole $ 5
eQuitRole :: MenuRole
eQuitRole
  = ieMenuRole $ 6

data CActionEvent a = CActionEvent a
type ActionEvent = QEnum(CActionEvent Int)

ieActionEvent :: Int -> ActionEvent
ieActionEvent x = QEnum (CActionEvent x)

instance QEnumC (CActionEvent Int) where
 qEnum_toInt (QEnum (CActionEvent x)) = x
 qEnum_fromInt x = QEnum (CActionEvent x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> ActionEvent -> IO ()) where
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

instance QeTrigger ActionEvent where
 eTrigger
  = ieActionEvent $ 0
eHover :: ActionEvent
eHover
  = ieActionEvent $ 1

