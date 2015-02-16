{-# OPTIONS -fglasgow-exts -#include "../include/gui/qtc_hs_QItemSelectionModel_h.h" #-}
-----------------------------------------------------------------------------
{-| Module    : QItemSelectionModel_h.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:25
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QItemSelectionModel_h (
  Qselect_h(..)
  ) where

import Foreign.C.Types
import Qtc.Enums.Base
import Qtc.Enums.Gui.QItemSelectionModel

import Qtc.Classes.Base
import Qtc.Classes.Qccs_h
import Qtc.Classes.Core_h
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core
import Qtc.Classes.Gui_h
import Qtc.ClassTypes.Gui
import Foreign.Marshal.Array

instance QunSetUserMethod (QItemSelectionModel ()) where
 unSetUserMethod qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QItemSelectionModel_unSetUserMethod cobj_qobj (toCInt 0) (toCInt evid)

foreign import ccall "qtc_QItemSelectionModel_unSetUserMethod" qtc_QItemSelectionModel_unSetUserMethod :: Ptr (TQItemSelectionModel a) -> CInt -> CInt -> IO (CBool)

instance QunSetUserMethod (QItemSelectionModelSc a) where
 unSetUserMethod qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QItemSelectionModel_unSetUserMethod cobj_qobj (toCInt 0) (toCInt evid)

instance QunSetUserMethodVariant (QItemSelectionModel ()) where
 unSetUserMethodVariant qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QItemSelectionModel_unSetUserMethod cobj_qobj (toCInt 1) (toCInt evid)

instance QunSetUserMethodVariant (QItemSelectionModelSc a) where
 unSetUserMethodVariant qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QItemSelectionModel_unSetUserMethod cobj_qobj (toCInt 1) (toCInt evid)

instance QunSetUserMethodVariantList (QItemSelectionModel ()) where
 unSetUserMethodVariantList qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QItemSelectionModel_unSetUserMethod cobj_qobj (toCInt 2) (toCInt evid)

instance QunSetUserMethodVariantList (QItemSelectionModelSc a) where
 unSetUserMethodVariantList qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QItemSelectionModel_unSetUserMethod cobj_qobj (toCInt 2) (toCInt evid)

instance QsetUserMethod (QItemSelectionModel ()) (QItemSelectionModel x0 -> IO ()) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethod_QItemSelectionModel setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethod_QItemSelectionModel_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QItemSelectionModel_setUserMethod cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQItemSelectionModel x0) -> IO ()
    setHandlerWrapper x0
      = do
        x0obj <- objectFromPtr_nf x0
        if (objectIsNull x0obj)
         then return ()
         else _handler x0obj

    setHandlerWrapper_d :: Ptr fun -> Ptr () -> Ptr fun_d -> IO ()
    setHandlerWrapper_d funptr stptr funptr_d
      = do when (stptr/=ptrNull)
            (freeStablePtr (castPtrToStablePtr stptr))
           when (funptr/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr))
           when (funptr_d/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr_d))
           return ()

foreign import ccall "qtc_QItemSelectionModel_setUserMethod" qtc_QItemSelectionModel_setUserMethod :: Ptr (TQItemSelectionModel a) -> CInt -> Ptr (Ptr (TQItemSelectionModel x0) -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetUserMethod_QItemSelectionModel :: (Ptr (TQItemSelectionModel x0) -> IO ()) -> IO (FunPtr (Ptr (TQItemSelectionModel x0) -> IO ()))

foreign import ccall "wrapper" wrapSetUserMethod_QItemSelectionModel_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetUserMethod (QItemSelectionModelSc a) (QItemSelectionModel x0 -> IO ()) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethod_QItemSelectionModel setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethod_QItemSelectionModel_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QItemSelectionModel_setUserMethod cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQItemSelectionModel x0) -> IO ()
    setHandlerWrapper x0
      = do
        x0obj <- objectFromPtr_nf x0
        if (objectIsNull x0obj)
         then return ()
         else _handler x0obj

    setHandlerWrapper_d :: Ptr fun -> Ptr () -> Ptr fun_d -> IO ()
    setHandlerWrapper_d funptr stptr funptr_d
      = do when (stptr/=ptrNull)
            (freeStablePtr (castPtrToStablePtr stptr))
           when (funptr/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr))
           when (funptr_d/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr_d))
           return ()

instance QsetUserMethod (QItemSelectionModel ()) (QItemSelectionModel x0 -> QVariant () -> IO (QVariant ())) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethodVariant_QItemSelectionModel setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethodVariant_QItemSelectionModel_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QItemSelectionModel_setUserMethodVariant cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQItemSelectionModel x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))
    setHandlerWrapper x0 x1
      = do
        x0obj <- objectFromPtr_nf x0
        x1obj <- objectFromPtr_nf x1
        rv <- if (objectIsNull x0obj)
               then return $ objectCast x0obj
               else _handler x0obj x1obj
        withObjectPtr rv $ \cobj_rv -> return cobj_rv

    setHandlerWrapper_d :: Ptr fun -> Ptr () -> Ptr fun_d -> IO ()
    setHandlerWrapper_d funptr stptr funptr_d
      = do when (stptr/=ptrNull)
            (freeStablePtr (castPtrToStablePtr stptr))
           when (funptr/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr))
           when (funptr_d/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr_d))
           return ()

foreign import ccall "qtc_QItemSelectionModel_setUserMethodVariant" qtc_QItemSelectionModel_setUserMethodVariant :: Ptr (TQItemSelectionModel a) -> CInt -> Ptr (Ptr (TQItemSelectionModel x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetUserMethodVariant_QItemSelectionModel :: (Ptr (TQItemSelectionModel x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))) -> IO (FunPtr (Ptr (TQItemSelectionModel x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))))

foreign import ccall "wrapper" wrapSetUserMethodVariant_QItemSelectionModel_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetUserMethod (QItemSelectionModelSc a) (QItemSelectionModel x0 -> QVariant () -> IO (QVariant ())) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethodVariant_QItemSelectionModel setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethodVariant_QItemSelectionModel_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QItemSelectionModel_setUserMethodVariant cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQItemSelectionModel x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))
    setHandlerWrapper x0 x1
      = do
        x0obj <- objectFromPtr_nf x0
        x1obj <- objectFromPtr_nf x1
        rv <- if (objectIsNull x0obj)
               then return $ objectCast x0obj
               else _handler x0obj x1obj
        withObjectPtr rv $ \cobj_rv -> return cobj_rv

    setHandlerWrapper_d :: Ptr fun -> Ptr () -> Ptr fun_d -> IO ()
    setHandlerWrapper_d funptr stptr funptr_d
      = do when (stptr/=ptrNull)
            (freeStablePtr (castPtrToStablePtr stptr))
           when (funptr/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr))
           when (funptr_d/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr_d))
           return ()

instance QunSetHandler (QItemSelectionModel ()) where 
 unSetHandler qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withCWString evid $ \cstr_evid ->
    qtc_QItemSelectionModel_unSetHandler cobj_qobj cstr_evid

foreign import ccall "qtc_QItemSelectionModel_unSetHandler" qtc_QItemSelectionModel_unSetHandler :: Ptr (TQItemSelectionModel a) -> CWString -> IO (CBool)

instance QunSetHandler (QItemSelectionModelSc a) where 
 unSetHandler qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withCWString evid $ \cstr_evid ->
    qtc_QItemSelectionModel_unSetHandler cobj_qobj cstr_evid

instance QsetHandler (QItemSelectionModel ()) (QItemSelectionModel x0 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QItemSelectionModel1 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QItemSelectionModel1_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QItemSelectionModel_setHandler1 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQItemSelectionModel x0) -> IO ()
    setHandlerWrapper x0
      = do x0obj <- qItemSelectionModelFromPtr x0
           if (objectIsNull x0obj)
            then return ()
            else _handler x0obj

    setHandlerWrapper_d :: Ptr fun -> Ptr () -> Ptr fun_d -> IO ()
    setHandlerWrapper_d funptr stptr funptr_d
      = do when (stptr/=ptrNull)
            (freeStablePtr (castPtrToStablePtr stptr))
           when (funptr/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr))
           when (funptr_d/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr_d))
           return ()

foreign import ccall "qtc_QItemSelectionModel_setHandler1" qtc_QItemSelectionModel_setHandler1 :: Ptr (TQItemSelectionModel a) -> CWString -> Ptr (Ptr (TQItemSelectionModel x0) -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QItemSelectionModel1 :: (Ptr (TQItemSelectionModel x0) -> IO ()) -> IO (FunPtr (Ptr (TQItemSelectionModel x0) -> IO ()))

foreign import ccall "wrapper" wrapSetHandler_QItemSelectionModel1_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QItemSelectionModelSc a) (QItemSelectionModel x0 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QItemSelectionModel1 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QItemSelectionModel1_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QItemSelectionModel_setHandler1 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQItemSelectionModel x0) -> IO ()
    setHandlerWrapper x0
      = do x0obj <- qItemSelectionModelFromPtr x0
           if (objectIsNull x0obj)
            then return ()
            else _handler x0obj

    setHandlerWrapper_d :: Ptr fun -> Ptr () -> Ptr fun_d -> IO ()
    setHandlerWrapper_d funptr stptr funptr_d
      = do when (stptr/=ptrNull)
            (freeStablePtr (castPtrToStablePtr stptr))
           when (funptr/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr))
           when (funptr_d/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr_d))
           return ()

instance Qclear_h (QItemSelectionModel ()) (()) where
 clear_h x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QItemSelectionModel_clear cobj_x0

foreign import ccall "qtc_QItemSelectionModel_clear" qtc_QItemSelectionModel_clear :: Ptr (TQItemSelectionModel a) -> IO ()

instance Qclear_h (QItemSelectionModelSc a) (()) where
 clear_h x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QItemSelectionModel_clear cobj_x0

instance Qreset_h (QItemSelectionModel ()) (()) (IO ()) where
 reset_h x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QItemSelectionModel_reset cobj_x0

foreign import ccall "qtc_QItemSelectionModel_reset" qtc_QItemSelectionModel_reset :: Ptr (TQItemSelectionModel a) -> IO ()

instance Qreset_h (QItemSelectionModelSc a) (()) (IO ()) where
 reset_h x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QItemSelectionModel_reset cobj_x0

instance QsetHandler (QItemSelectionModel ()) (QItemSelectionModel x0 -> QModelIndex t1 -> SelectionFlags -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QItemSelectionModel2 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QItemSelectionModel2_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QItemSelectionModel_setHandler2 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQItemSelectionModel x0) -> Ptr (TQModelIndex t1) -> CLong -> IO ()
    setHandlerWrapper x0 x1 x2
      = do x0obj <- qItemSelectionModelFromPtr x0
           x1obj <- objectFromPtr_nf x1
           let x2flags = qFlags_fromInt $ fromCLong x2
           if (objectIsNull x0obj)
            then return ()
            else _handler x0obj x1obj x2flags

    setHandlerWrapper_d :: Ptr fun -> Ptr () -> Ptr fun_d -> IO ()
    setHandlerWrapper_d funptr stptr funptr_d
      = do when (stptr/=ptrNull)
            (freeStablePtr (castPtrToStablePtr stptr))
           when (funptr/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr))
           when (funptr_d/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr_d))
           return ()

foreign import ccall "qtc_QItemSelectionModel_setHandler2" qtc_QItemSelectionModel_setHandler2 :: Ptr (TQItemSelectionModel a) -> CWString -> Ptr (Ptr (TQItemSelectionModel x0) -> Ptr (TQModelIndex t1) -> CLong -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QItemSelectionModel2 :: (Ptr (TQItemSelectionModel x0) -> Ptr (TQModelIndex t1) -> CLong -> IO ()) -> IO (FunPtr (Ptr (TQItemSelectionModel x0) -> Ptr (TQModelIndex t1) -> CLong -> IO ()))

foreign import ccall "wrapper" wrapSetHandler_QItemSelectionModel2_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QItemSelectionModelSc a) (QItemSelectionModel x0 -> QModelIndex t1 -> SelectionFlags -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QItemSelectionModel2 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QItemSelectionModel2_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QItemSelectionModel_setHandler2 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQItemSelectionModel x0) -> Ptr (TQModelIndex t1) -> CLong -> IO ()
    setHandlerWrapper x0 x1 x2
      = do x0obj <- qItemSelectionModelFromPtr x0
           x1obj <- objectFromPtr_nf x1
           let x2flags = qFlags_fromInt $ fromCLong x2
           if (objectIsNull x0obj)
            then return ()
            else _handler x0obj x1obj x2flags

    setHandlerWrapper_d :: Ptr fun -> Ptr () -> Ptr fun_d -> IO ()
    setHandlerWrapper_d funptr stptr funptr_d
      = do when (stptr/=ptrNull)
            (freeStablePtr (castPtrToStablePtr stptr))
           when (funptr/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr))
           when (funptr_d/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr_d))
           return ()

class Qselect_h x0 x1 where
 select_h :: x0 -> x1 -> IO ()

instance Qselect_h (QItemSelectionModel ()) ((QModelIndex t1, SelectionFlags)) where
 select_h x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QItemSelectionModel_select1 cobj_x0 cobj_x1 (toCLong $ qFlags_toInt x2)

foreign import ccall "qtc_QItemSelectionModel_select1" qtc_QItemSelectionModel_select1 :: Ptr (TQItemSelectionModel a) -> Ptr (TQModelIndex t1) -> CLong -> IO ()

instance Qselect_h (QItemSelectionModelSc a) ((QModelIndex t1, SelectionFlags)) where
 select_h x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QItemSelectionModel_select1 cobj_x0 cobj_x1 (toCLong $ qFlags_toInt x2)

instance QsetHandler (QItemSelectionModel ()) (QItemSelectionModel x0 -> QEvent t1 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QItemSelectionModel3 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QItemSelectionModel3_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QItemSelectionModel_setHandler3 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQItemSelectionModel x0) -> Ptr (TQEvent t1) -> IO (CBool)
    setHandlerWrapper x0 x1
      = do x0obj <- qItemSelectionModelFromPtr x0
           x1obj <- objectFromPtr_nf x1
           let rv =
                if (objectIsNull x0obj)
                 then return False
                 else _handler x0obj x1obj
           rvf <- rv
           return (toCBool rvf)

    setHandlerWrapper_d :: Ptr fun -> Ptr () -> Ptr fun_d -> IO ()
    setHandlerWrapper_d funptr stptr funptr_d
      = do when (stptr/=ptrNull)
            (freeStablePtr (castPtrToStablePtr stptr))
           when (funptr/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr))
           when (funptr_d/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr_d))
           return ()

foreign import ccall "qtc_QItemSelectionModel_setHandler3" qtc_QItemSelectionModel_setHandler3 :: Ptr (TQItemSelectionModel a) -> CWString -> Ptr (Ptr (TQItemSelectionModel x0) -> Ptr (TQEvent t1) -> IO (CBool)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QItemSelectionModel3 :: (Ptr (TQItemSelectionModel x0) -> Ptr (TQEvent t1) -> IO (CBool)) -> IO (FunPtr (Ptr (TQItemSelectionModel x0) -> Ptr (TQEvent t1) -> IO (CBool)))

foreign import ccall "wrapper" wrapSetHandler_QItemSelectionModel3_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QItemSelectionModelSc a) (QItemSelectionModel x0 -> QEvent t1 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QItemSelectionModel3 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QItemSelectionModel3_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QItemSelectionModel_setHandler3 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQItemSelectionModel x0) -> Ptr (TQEvent t1) -> IO (CBool)
    setHandlerWrapper x0 x1
      = do x0obj <- qItemSelectionModelFromPtr x0
           x1obj <- objectFromPtr_nf x1
           let rv =
                if (objectIsNull x0obj)
                 then return False
                 else _handler x0obj x1obj
           rvf <- rv
           return (toCBool rvf)

    setHandlerWrapper_d :: Ptr fun -> Ptr () -> Ptr fun_d -> IO ()
    setHandlerWrapper_d funptr stptr funptr_d
      = do when (stptr/=ptrNull)
            (freeStablePtr (castPtrToStablePtr stptr))
           when (funptr/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr))
           when (funptr_d/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr_d))
           return ()

instance Qevent_h (QItemSelectionModel ()) ((QEvent t1)) where
 event_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QItemSelectionModel_event cobj_x0 cobj_x1

foreign import ccall "qtc_QItemSelectionModel_event" qtc_QItemSelectionModel_event :: Ptr (TQItemSelectionModel a) -> Ptr (TQEvent t1) -> IO CBool

instance Qevent_h (QItemSelectionModelSc a) ((QEvent t1)) where
 event_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QItemSelectionModel_event cobj_x0 cobj_x1

instance QsetHandler (QItemSelectionModel ()) (QItemSelectionModel x0 -> QObject t1 -> QEvent t2 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QItemSelectionModel4 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QItemSelectionModel4_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QItemSelectionModel_setHandler4 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQItemSelectionModel x0) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO (CBool)
    setHandlerWrapper x0 x1 x2
      = do x0obj <- qItemSelectionModelFromPtr x0
           x1obj <- qObjectFromPtr x1
           x2obj <- objectFromPtr_nf x2
           let rv =
                if (objectIsNull x0obj)
                 then return False
                 else _handler x0obj x1obj x2obj
           rvf <- rv
           return (toCBool rvf)

    setHandlerWrapper_d :: Ptr fun -> Ptr () -> Ptr fun_d -> IO ()
    setHandlerWrapper_d funptr stptr funptr_d
      = do when (stptr/=ptrNull)
            (freeStablePtr (castPtrToStablePtr stptr))
           when (funptr/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr))
           when (funptr_d/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr_d))
           return ()

foreign import ccall "qtc_QItemSelectionModel_setHandler4" qtc_QItemSelectionModel_setHandler4 :: Ptr (TQItemSelectionModel a) -> CWString -> Ptr (Ptr (TQItemSelectionModel x0) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO (CBool)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QItemSelectionModel4 :: (Ptr (TQItemSelectionModel x0) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO (CBool)) -> IO (FunPtr (Ptr (TQItemSelectionModel x0) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO (CBool)))

foreign import ccall "wrapper" wrapSetHandler_QItemSelectionModel4_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QItemSelectionModelSc a) (QItemSelectionModel x0 -> QObject t1 -> QEvent t2 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QItemSelectionModel4 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QItemSelectionModel4_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QItemSelectionModel_setHandler4 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQItemSelectionModel x0) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO (CBool)
    setHandlerWrapper x0 x1 x2
      = do x0obj <- qItemSelectionModelFromPtr x0
           x1obj <- qObjectFromPtr x1
           x2obj <- objectFromPtr_nf x2
           let rv =
                if (objectIsNull x0obj)
                 then return False
                 else _handler x0obj x1obj x2obj
           rvf <- rv
           return (toCBool rvf)

    setHandlerWrapper_d :: Ptr fun -> Ptr () -> Ptr fun_d -> IO ()
    setHandlerWrapper_d funptr stptr funptr_d
      = do when (stptr/=ptrNull)
            (freeStablePtr (castPtrToStablePtr stptr))
           when (funptr/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr))
           when (funptr_d/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr_d))
           return ()

instance QeventFilter_h (QItemSelectionModel ()) ((QObject t1, QEvent t2)) where
 eventFilter_h x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QItemSelectionModel_eventFilter cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QItemSelectionModel_eventFilter" qtc_QItemSelectionModel_eventFilter :: Ptr (TQItemSelectionModel a) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO CBool

instance QeventFilter_h (QItemSelectionModelSc a) ((QObject t1, QEvent t2)) where
 eventFilter_h x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QItemSelectionModel_eventFilter cobj_x0 cobj_x1 cobj_x2

