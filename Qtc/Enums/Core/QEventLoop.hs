{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QEventLoop.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:36
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Enums.Core.QEventLoop (
 ProcessEventsFlag, ProcessEventsFlags, eAllEvents, fAllEvents, eExcludeUserInputEvents, fExcludeUserInputEvents, eExcludeSocketNotifiers, fExcludeSocketNotifiers, eWaitForMoreEvents, fWaitForMoreEvents, eX11ExcludeTimers, fX11ExcludeTimers, eDeferredDeletion, fDeferredDeletion
 )
 where

import Foreign.C.Types
import Qtc.Classes.Base
import Qtc.ClassTypes.Core (QObject, TQObject, qObjectFromPtr)
import Qtc.Core.Base (Qcs, connectSlot, qtc_connectSlot_int, wrapSlotHandler_int)
import Qtc.Enums.Base
import Qtc.Enums.Classes.Core

data CProcessEventsFlag a = CProcessEventsFlag a
type ProcessEventsFlag = QEnum(CProcessEventsFlag Int)

ieProcessEventsFlag :: Int -> ProcessEventsFlag
ieProcessEventsFlag x = QEnum (CProcessEventsFlag x)

instance QEnumC (CProcessEventsFlag Int) where
 qEnum_toInt (QEnum (CProcessEventsFlag x)) = x
 qEnum_fromInt x = QEnum (CProcessEventsFlag x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> ProcessEventsFlag -> IO ()) where
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

data CProcessEventsFlags a = CProcessEventsFlags a
type ProcessEventsFlags = QFlags(CProcessEventsFlags Int)

ifProcessEventsFlags :: Int -> ProcessEventsFlags
ifProcessEventsFlags x = QFlags (CProcessEventsFlags x)

instance QFlagsC (CProcessEventsFlags Int) where
 qFlags_toInt (QFlags (CProcessEventsFlags x)) = x
 qFlags_fromInt x = QFlags (CProcessEventsFlags x)
 withQFlagsResult x
   = do
     ti <- x
     return $ qFlags_fromInt $ fromIntegral ti
 withQFlagsListResult x
   = do
     til <- x
     return $ map qFlags_fromInt til

instance Qcs (QObject c -> ProcessEventsFlags -> IO ()) where
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

eAllEvents :: ProcessEventsFlag
eAllEvents
  = ieProcessEventsFlag $ 0
eExcludeUserInputEvents :: ProcessEventsFlag
eExcludeUserInputEvents
  = ieProcessEventsFlag $ 1
eExcludeSocketNotifiers :: ProcessEventsFlag
eExcludeSocketNotifiers
  = ieProcessEventsFlag $ 2
eWaitForMoreEvents :: ProcessEventsFlag
eWaitForMoreEvents
  = ieProcessEventsFlag $ 4
eX11ExcludeTimers :: ProcessEventsFlag
eX11ExcludeTimers
  = ieProcessEventsFlag $ 8
eDeferredDeletion :: ProcessEventsFlag
eDeferredDeletion
  = ieProcessEventsFlag $ 16

fAllEvents :: ProcessEventsFlags
fAllEvents
  = ifProcessEventsFlags $ 0
fExcludeUserInputEvents :: ProcessEventsFlags
fExcludeUserInputEvents
  = ifProcessEventsFlags $ 1
fExcludeSocketNotifiers :: ProcessEventsFlags
fExcludeSocketNotifiers
  = ifProcessEventsFlags $ 2
fWaitForMoreEvents :: ProcessEventsFlags
fWaitForMoreEvents
  = ifProcessEventsFlags $ 4
fX11ExcludeTimers :: ProcessEventsFlags
fX11ExcludeTimers
  = ifProcessEventsFlags $ 8
fDeferredDeletion :: ProcessEventsFlags
fDeferredDeletion
  = ifProcessEventsFlags $ 16

