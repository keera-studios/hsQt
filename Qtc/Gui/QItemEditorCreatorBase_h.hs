{-# OPTIONS -fglasgow-exts -#include "../include/gui/qtc_hs_QItemEditorCreatorBase_h.h" #-}
-----------------------------------------------------------------------------
{-| Module    : QItemEditorCreatorBase_h.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:17
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QItemEditorCreatorBase_h where

import Foreign.C.Types
import Qtc.Enums.Base

import Qtc.Classes.Base
import Qtc.Classes.Qccs_h
import Qtc.Classes.Core_h
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core
import Qtc.Classes.Gui_h
import Qtc.ClassTypes.Gui
import Foreign.Marshal.Array

instance QunSetUserMethod (QItemEditorCreatorBase ()) where
 unSetUserMethod qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QItemEditorCreatorBase_unSetUserMethod cobj_qobj (toCInt 0) (toCInt evid)

foreign import ccall "qtc_QItemEditorCreatorBase_unSetUserMethod" qtc_QItemEditorCreatorBase_unSetUserMethod :: Ptr (TQItemEditorCreatorBase a) -> CInt -> CInt -> IO (CBool)

instance QunSetUserMethod (QItemEditorCreatorBaseSc a) where
 unSetUserMethod qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QItemEditorCreatorBase_unSetUserMethod cobj_qobj (toCInt 0) (toCInt evid)

instance QunSetUserMethodVariant (QItemEditorCreatorBase ()) where
 unSetUserMethodVariant qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QItemEditorCreatorBase_unSetUserMethod cobj_qobj (toCInt 1) (toCInt evid)

instance QunSetUserMethodVariant (QItemEditorCreatorBaseSc a) where
 unSetUserMethodVariant qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QItemEditorCreatorBase_unSetUserMethod cobj_qobj (toCInt 1) (toCInt evid)

instance QunSetUserMethodVariantList (QItemEditorCreatorBase ()) where
 unSetUserMethodVariantList qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QItemEditorCreatorBase_unSetUserMethod cobj_qobj (toCInt 2) (toCInt evid)

instance QunSetUserMethodVariantList (QItemEditorCreatorBaseSc a) where
 unSetUserMethodVariantList qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QItemEditorCreatorBase_unSetUserMethod cobj_qobj (toCInt 2) (toCInt evid)

instance QsetUserMethod (QItemEditorCreatorBase ()) (QItemEditorCreatorBase x0 -> IO ()) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethod_QItemEditorCreatorBase setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethod_QItemEditorCreatorBase_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QItemEditorCreatorBase_setUserMethod cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQItemEditorCreatorBase x0) -> IO ()
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

foreign import ccall "qtc_QItemEditorCreatorBase_setUserMethod" qtc_QItemEditorCreatorBase_setUserMethod :: Ptr (TQItemEditorCreatorBase a) -> CInt -> Ptr (Ptr (TQItemEditorCreatorBase x0) -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetUserMethod_QItemEditorCreatorBase :: (Ptr (TQItemEditorCreatorBase x0) -> IO ()) -> IO (FunPtr (Ptr (TQItemEditorCreatorBase x0) -> IO ()))

foreign import ccall "wrapper" wrapSetUserMethod_QItemEditorCreatorBase_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetUserMethod (QItemEditorCreatorBaseSc a) (QItemEditorCreatorBase x0 -> IO ()) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethod_QItemEditorCreatorBase setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethod_QItemEditorCreatorBase_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QItemEditorCreatorBase_setUserMethod cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQItemEditorCreatorBase x0) -> IO ()
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

instance QsetUserMethod (QItemEditorCreatorBase ()) (QItemEditorCreatorBase x0 -> QVariant () -> IO (QVariant ())) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethodVariant_QItemEditorCreatorBase setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethodVariant_QItemEditorCreatorBase_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QItemEditorCreatorBase_setUserMethodVariant cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQItemEditorCreatorBase x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))
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

foreign import ccall "qtc_QItemEditorCreatorBase_setUserMethodVariant" qtc_QItemEditorCreatorBase_setUserMethodVariant :: Ptr (TQItemEditorCreatorBase a) -> CInt -> Ptr (Ptr (TQItemEditorCreatorBase x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetUserMethodVariant_QItemEditorCreatorBase :: (Ptr (TQItemEditorCreatorBase x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))) -> IO (FunPtr (Ptr (TQItemEditorCreatorBase x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))))

foreign import ccall "wrapper" wrapSetUserMethodVariant_QItemEditorCreatorBase_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetUserMethod (QItemEditorCreatorBaseSc a) (QItemEditorCreatorBase x0 -> QVariant () -> IO (QVariant ())) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethodVariant_QItemEditorCreatorBase setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethodVariant_QItemEditorCreatorBase_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QItemEditorCreatorBase_setUserMethodVariant cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQItemEditorCreatorBase x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))
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

instance QunSetHandler (QItemEditorCreatorBase ()) where 
 unSetHandler qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withCWString evid $ \cstr_evid ->
    qtc_QItemEditorCreatorBase_unSetHandler cobj_qobj cstr_evid

foreign import ccall "qtc_QItemEditorCreatorBase_unSetHandler" qtc_QItemEditorCreatorBase_unSetHandler :: Ptr (TQItemEditorCreatorBase a) -> CWString -> IO (CBool)

instance QunSetHandler (QItemEditorCreatorBaseSc a) where 
 unSetHandler qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withCWString evid $ \cstr_evid ->
    qtc_QItemEditorCreatorBase_unSetHandler cobj_qobj cstr_evid

instance QsetHandler (QItemEditorCreatorBase ()) (QItemEditorCreatorBase x0 -> QObject t1 -> IO (QObject t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QItemEditorCreatorBase1 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QItemEditorCreatorBase1_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QItemEditorCreatorBase_setHandler1 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQItemEditorCreatorBase x0) -> Ptr (TQObject t1) -> IO (Ptr (TQObject t0))
    setHandlerWrapper x0 x1
      = do x0obj <- objectFromPtr_nf x0
           x1obj <- qObjectFromPtr x1
           let rv =
                if (objectIsNull x0obj)
                 then return $ objectCast x0obj
                 else _handler x0obj x1obj
           rvf <- rv
           withObjectPtr rvf $ \cobj_rvf -> return (cobj_rvf)

    setHandlerWrapper_d :: Ptr fun -> Ptr () -> Ptr fun_d -> IO ()
    setHandlerWrapper_d funptr stptr funptr_d
      = do when (stptr/=ptrNull)
            (freeStablePtr (castPtrToStablePtr stptr))
           when (funptr/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr))
           when (funptr_d/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr_d))
           return ()

foreign import ccall "qtc_QItemEditorCreatorBase_setHandler1" qtc_QItemEditorCreatorBase_setHandler1 :: Ptr (TQItemEditorCreatorBase a) -> CWString -> Ptr (Ptr (TQItemEditorCreatorBase x0) -> Ptr (TQObject t1) -> IO (Ptr (TQObject t0))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QItemEditorCreatorBase1 :: (Ptr (TQItemEditorCreatorBase x0) -> Ptr (TQObject t1) -> IO (Ptr (TQObject t0))) -> IO (FunPtr (Ptr (TQItemEditorCreatorBase x0) -> Ptr (TQObject t1) -> IO (Ptr (TQObject t0))))

foreign import ccall "wrapper" wrapSetHandler_QItemEditorCreatorBase1_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QItemEditorCreatorBaseSc a) (QItemEditorCreatorBase x0 -> QObject t1 -> IO (QObject t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QItemEditorCreatorBase1 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QItemEditorCreatorBase1_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QItemEditorCreatorBase_setHandler1 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQItemEditorCreatorBase x0) -> Ptr (TQObject t1) -> IO (Ptr (TQObject t0))
    setHandlerWrapper x0 x1
      = do x0obj <- objectFromPtr_nf x0
           x1obj <- qObjectFromPtr x1
           let rv =
                if (objectIsNull x0obj)
                 then return $ objectCast x0obj
                 else _handler x0obj x1obj
           rvf <- rv
           withObjectPtr rvf $ \cobj_rvf -> return (cobj_rvf)

    setHandlerWrapper_d :: Ptr fun -> Ptr () -> Ptr fun_d -> IO ()
    setHandlerWrapper_d funptr stptr funptr_d
      = do when (stptr/=ptrNull)
            (freeStablePtr (castPtrToStablePtr stptr))
           when (funptr/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr))
           when (funptr_d/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr_d))
           return ()

instance QcreateWidget_h (QItemEditorCreatorBase ()) ((QWidget t1)) where
 createWidget_h x0 (x1)
  = withQWidgetResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QItemEditorCreatorBase_createWidget cobj_x0 cobj_x1

foreign import ccall "qtc_QItemEditorCreatorBase_createWidget" qtc_QItemEditorCreatorBase_createWidget :: Ptr (TQItemEditorCreatorBase a) -> Ptr (TQWidget t1) -> IO (Ptr (TQWidget ()))

instance QcreateWidget_h (QItemEditorCreatorBaseSc a) ((QWidget t1)) where
 createWidget_h x0 (x1)
  = withQWidgetResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QItemEditorCreatorBase_createWidget cobj_x0 cobj_x1

instance QsetHandler (QItemEditorCreatorBase ()) (QItemEditorCreatorBase x0 -> IO (String)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QItemEditorCreatorBase2 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QItemEditorCreatorBase2_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QItemEditorCreatorBase_setHandler2 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQItemEditorCreatorBase x0) -> IO (CWString)
    setHandlerWrapper x0
      = do x0obj <- objectFromPtr_nf x0
           let rv =
                if (objectIsNull x0obj)
                 then return ("")
                 else _handler x0obj
           rvf <- rv
           withCWString rvf $ \cstr_rvf -> return (cstr_rvf)

    setHandlerWrapper_d :: Ptr fun -> Ptr () -> Ptr fun_d -> IO ()
    setHandlerWrapper_d funptr stptr funptr_d
      = do when (stptr/=ptrNull)
            (freeStablePtr (castPtrToStablePtr stptr))
           when (funptr/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr))
           when (funptr_d/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr_d))
           return ()

foreign import ccall "qtc_QItemEditorCreatorBase_setHandler2" qtc_QItemEditorCreatorBase_setHandler2 :: Ptr (TQItemEditorCreatorBase a) -> CWString -> Ptr (Ptr (TQItemEditorCreatorBase x0) -> IO (CWString)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QItemEditorCreatorBase2 :: (Ptr (TQItemEditorCreatorBase x0) -> IO (CWString)) -> IO (FunPtr (Ptr (TQItemEditorCreatorBase x0) -> IO (CWString)))

foreign import ccall "wrapper" wrapSetHandler_QItemEditorCreatorBase2_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QItemEditorCreatorBaseSc a) (QItemEditorCreatorBase x0 -> IO (String)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QItemEditorCreatorBase2 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QItemEditorCreatorBase2_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QItemEditorCreatorBase_setHandler2 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQItemEditorCreatorBase x0) -> IO (CWString)
    setHandlerWrapper x0
      = do x0obj <- objectFromPtr_nf x0
           let rv =
                if (objectIsNull x0obj)
                 then return ("")
                 else _handler x0obj
           rvf <- rv
           withCWString rvf $ \cstr_rvf -> return (cstr_rvf)

    setHandlerWrapper_d :: Ptr fun -> Ptr () -> Ptr fun_d -> IO ()
    setHandlerWrapper_d funptr stptr funptr_d
      = do when (stptr/=ptrNull)
            (freeStablePtr (castPtrToStablePtr stptr))
           when (funptr/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr))
           when (funptr_d/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr_d))
           return ()

instance QvaluePropertyName_h (QItemEditorCreatorBase ()) (()) where
 valuePropertyName_h x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QItemEditorCreatorBase_valuePropertyName cobj_x0

foreign import ccall "qtc_QItemEditorCreatorBase_valuePropertyName" qtc_QItemEditorCreatorBase_valuePropertyName :: Ptr (TQItemEditorCreatorBase a) -> IO (Ptr (TQString ()))

instance QvaluePropertyName_h (QItemEditorCreatorBaseSc a) (()) where
 valuePropertyName_h x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QItemEditorCreatorBase_valuePropertyName cobj_x0

