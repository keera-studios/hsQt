{-# OPTIONS -fglasgow-exts -#include "../include/tools/qtc_hs_QUiLoader_h.h" #-}
-----------------------------------------------------------------------------
{-| Module    : QUiLoader_h.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:30
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Tools.QUiLoader_h (
  QcreateAction_h(..)
  ,QcreateActionGroup_h(..)
  ,QcreateLayout_h(..)
  ) where

import Foreign.C.Types
import Qtc.Enums.Base

import Qtc.Classes.Base
import Qtc.Classes.Qccs_h
import Qtc.Classes.Core_h
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core
import Qtc.Classes.Gui_h
import Qtc.ClassTypes.Gui
import Qtc.Classes.Tools_h
import Qtc.ClassTypes.Tools
import Foreign.Marshal.Array

instance QunSetUserMethod (QUiLoader ()) where
 unSetUserMethod qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QUiLoader_unSetUserMethod cobj_qobj (toCInt 0) (toCInt evid)

foreign import ccall "qtc_QUiLoader_unSetUserMethod" qtc_QUiLoader_unSetUserMethod :: Ptr (TQUiLoader a) -> CInt -> CInt -> IO (CBool)

instance QunSetUserMethod (QUiLoaderSc a) where
 unSetUserMethod qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QUiLoader_unSetUserMethod cobj_qobj (toCInt 0) (toCInt evid)

instance QunSetUserMethodVariant (QUiLoader ()) where
 unSetUserMethodVariant qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QUiLoader_unSetUserMethod cobj_qobj (toCInt 1) (toCInt evid)

instance QunSetUserMethodVariant (QUiLoaderSc a) where
 unSetUserMethodVariant qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QUiLoader_unSetUserMethod cobj_qobj (toCInt 1) (toCInt evid)

instance QunSetUserMethodVariantList (QUiLoader ()) where
 unSetUserMethodVariantList qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QUiLoader_unSetUserMethod cobj_qobj (toCInt 2) (toCInt evid)

instance QunSetUserMethodVariantList (QUiLoaderSc a) where
 unSetUserMethodVariantList qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QUiLoader_unSetUserMethod cobj_qobj (toCInt 2) (toCInt evid)

instance QsetUserMethod (QUiLoader ()) (QUiLoader x0 -> IO ()) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethod_QUiLoader setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethod_QUiLoader_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QUiLoader_setUserMethod cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQUiLoader x0) -> IO ()
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

foreign import ccall "qtc_QUiLoader_setUserMethod" qtc_QUiLoader_setUserMethod :: Ptr (TQUiLoader a) -> CInt -> Ptr (Ptr (TQUiLoader x0) -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetUserMethod_QUiLoader :: (Ptr (TQUiLoader x0) -> IO ()) -> IO (FunPtr (Ptr (TQUiLoader x0) -> IO ()))

foreign import ccall "wrapper" wrapSetUserMethod_QUiLoader_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetUserMethod (QUiLoaderSc a) (QUiLoader x0 -> IO ()) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethod_QUiLoader setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethod_QUiLoader_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QUiLoader_setUserMethod cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQUiLoader x0) -> IO ()
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

instance QsetUserMethod (QUiLoader ()) (QUiLoader x0 -> QVariant () -> IO (QVariant ())) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethodVariant_QUiLoader setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethodVariant_QUiLoader_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QUiLoader_setUserMethodVariant cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQUiLoader x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))
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

foreign import ccall "qtc_QUiLoader_setUserMethodVariant" qtc_QUiLoader_setUserMethodVariant :: Ptr (TQUiLoader a) -> CInt -> Ptr (Ptr (TQUiLoader x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetUserMethodVariant_QUiLoader :: (Ptr (TQUiLoader x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))) -> IO (FunPtr (Ptr (TQUiLoader x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))))

foreign import ccall "wrapper" wrapSetUserMethodVariant_QUiLoader_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetUserMethod (QUiLoaderSc a) (QUiLoader x0 -> QVariant () -> IO (QVariant ())) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethodVariant_QUiLoader setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethodVariant_QUiLoader_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QUiLoader_setUserMethodVariant cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQUiLoader x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))
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

instance QunSetHandler (QUiLoader ()) where 
 unSetHandler qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withCWString evid $ \cstr_evid ->
    qtc_QUiLoader_unSetHandler cobj_qobj cstr_evid

foreign import ccall "qtc_QUiLoader_unSetHandler" qtc_QUiLoader_unSetHandler :: Ptr (TQUiLoader a) -> CWString -> IO (CBool)

instance QunSetHandler (QUiLoaderSc a) where 
 unSetHandler qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withCWString evid $ \cstr_evid ->
    qtc_QUiLoader_unSetHandler cobj_qobj cstr_evid

instance QsetHandler (QUiLoader ()) (QUiLoader x0 -> IO (QObject t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QUiLoader1 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QUiLoader1_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QUiLoader_setHandler1 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQUiLoader x0) -> IO (Ptr (TQObject t0))
    setHandlerWrapper x0
      = do x0obj <- qUiLoaderFromPtr x0
           let rv =
                if (objectIsNull x0obj)
                 then return $ objectCast x0obj
                 else _handler x0obj
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

foreign import ccall "qtc_QUiLoader_setHandler1" qtc_QUiLoader_setHandler1 :: Ptr (TQUiLoader a) -> CWString -> Ptr (Ptr (TQUiLoader x0) -> IO (Ptr (TQObject t0))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QUiLoader1 :: (Ptr (TQUiLoader x0) -> IO (Ptr (TQObject t0))) -> IO (FunPtr (Ptr (TQUiLoader x0) -> IO (Ptr (TQObject t0))))

foreign import ccall "wrapper" wrapSetHandler_QUiLoader1_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QUiLoaderSc a) (QUiLoader x0 -> IO (QObject t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QUiLoader1 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QUiLoader1_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QUiLoader_setHandler1 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQUiLoader x0) -> IO (Ptr (TQObject t0))
    setHandlerWrapper x0
      = do x0obj <- qUiLoaderFromPtr x0
           let rv =
                if (objectIsNull x0obj)
                 then return $ objectCast x0obj
                 else _handler x0obj
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

instance QsetHandler (QUiLoader ()) (QUiLoader x0 -> QObject t1 -> IO (QObject t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QUiLoader2 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QUiLoader2_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QUiLoader_setHandler2 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQUiLoader x0) -> Ptr (TQObject t1) -> IO (Ptr (TQObject t0))
    setHandlerWrapper x0 x1
      = do x0obj <- qUiLoaderFromPtr x0
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

foreign import ccall "qtc_QUiLoader_setHandler2" qtc_QUiLoader_setHandler2 :: Ptr (TQUiLoader a) -> CWString -> Ptr (Ptr (TQUiLoader x0) -> Ptr (TQObject t1) -> IO (Ptr (TQObject t0))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QUiLoader2 :: (Ptr (TQUiLoader x0) -> Ptr (TQObject t1) -> IO (Ptr (TQObject t0))) -> IO (FunPtr (Ptr (TQUiLoader x0) -> Ptr (TQObject t1) -> IO (Ptr (TQObject t0))))

foreign import ccall "wrapper" wrapSetHandler_QUiLoader2_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QUiLoaderSc a) (QUiLoader x0 -> QObject t1 -> IO (QObject t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QUiLoader2 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QUiLoader2_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QUiLoader_setHandler2 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQUiLoader x0) -> Ptr (TQObject t1) -> IO (Ptr (TQObject t0))
    setHandlerWrapper x0 x1
      = do x0obj <- qUiLoaderFromPtr x0
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

instance QsetHandler (QUiLoader ()) (QUiLoader x0 -> QObject t1 -> String -> IO (QObject t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QUiLoader3 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QUiLoader3_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QUiLoader_setHandler3 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQUiLoader x0) -> Ptr (TQObject t1) -> Ptr (TQString ()) -> IO (Ptr (TQObject t0))
    setHandlerWrapper x0 x1 x2
      = do x0obj <- qUiLoaderFromPtr x0
           x1obj <- qObjectFromPtr x1
           x2str <- stringFromPtr x2
           let rv =
                if (objectIsNull x0obj)
                 then return $ objectCast x0obj
                 else _handler x0obj x1obj x2str
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

foreign import ccall "qtc_QUiLoader_setHandler3" qtc_QUiLoader_setHandler3 :: Ptr (TQUiLoader a) -> CWString -> Ptr (Ptr (TQUiLoader x0) -> Ptr (TQObject t1) -> Ptr (TQString ()) -> IO (Ptr (TQObject t0))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QUiLoader3 :: (Ptr (TQUiLoader x0) -> Ptr (TQObject t1) -> Ptr (TQString ()) -> IO (Ptr (TQObject t0))) -> IO (FunPtr (Ptr (TQUiLoader x0) -> Ptr (TQObject t1) -> Ptr (TQString ()) -> IO (Ptr (TQObject t0))))

foreign import ccall "wrapper" wrapSetHandler_QUiLoader3_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QUiLoaderSc a) (QUiLoader x0 -> QObject t1 -> String -> IO (QObject t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QUiLoader3 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QUiLoader3_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QUiLoader_setHandler3 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQUiLoader x0) -> Ptr (TQObject t1) -> Ptr (TQString ()) -> IO (Ptr (TQObject t0))
    setHandlerWrapper x0 x1 x2
      = do x0obj <- qUiLoaderFromPtr x0
           x1obj <- qObjectFromPtr x1
           x2str <- stringFromPtr x2
           let rv =
                if (objectIsNull x0obj)
                 then return $ objectCast x0obj
                 else _handler x0obj x1obj x2str
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

class QcreateAction_h x0 x1 where
 createAction_h :: x0 -> x1 -> IO (QAction ())

instance QcreateAction_h (QUiLoader ()) (()) where
 createAction_h x0 ()
  = withQActionResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUiLoader_createAction cobj_x0

foreign import ccall "qtc_QUiLoader_createAction" qtc_QUiLoader_createAction :: Ptr (TQUiLoader a) -> IO (Ptr (TQAction ()))

instance QcreateAction_h (QUiLoaderSc a) (()) where
 createAction_h x0 ()
  = withQActionResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUiLoader_createAction cobj_x0

instance QcreateAction_h (QUiLoader ()) ((QObject t1)) where
 createAction_h x0 (x1)
  = withQActionResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUiLoader_createAction1 cobj_x0 cobj_x1

foreign import ccall "qtc_QUiLoader_createAction1" qtc_QUiLoader_createAction1 :: Ptr (TQUiLoader a) -> Ptr (TQObject t1) -> IO (Ptr (TQAction ()))

instance QcreateAction_h (QUiLoaderSc a) ((QObject t1)) where
 createAction_h x0 (x1)
  = withQActionResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUiLoader_createAction1 cobj_x0 cobj_x1

instance QcreateAction_h (QUiLoader ()) ((QObject t1, String)) where
 createAction_h x0 (x1, x2)
  = withQActionResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QUiLoader_createAction2 cobj_x0 cobj_x1 cstr_x2

foreign import ccall "qtc_QUiLoader_createAction2" qtc_QUiLoader_createAction2 :: Ptr (TQUiLoader a) -> Ptr (TQObject t1) -> CWString -> IO (Ptr (TQAction ()))

instance QcreateAction_h (QUiLoaderSc a) ((QObject t1, String)) where
 createAction_h x0 (x1, x2)
  = withQActionResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QUiLoader_createAction2 cobj_x0 cobj_x1 cstr_x2

class QcreateActionGroup_h x0 x1 where
 createActionGroup_h :: x0 -> x1 -> IO (QActionGroup ())

instance QcreateActionGroup_h (QUiLoader ()) (()) where
 createActionGroup_h x0 ()
  = withQActionGroupResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUiLoader_createActionGroup cobj_x0

foreign import ccall "qtc_QUiLoader_createActionGroup" qtc_QUiLoader_createActionGroup :: Ptr (TQUiLoader a) -> IO (Ptr (TQActionGroup ()))

instance QcreateActionGroup_h (QUiLoaderSc a) (()) where
 createActionGroup_h x0 ()
  = withQActionGroupResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUiLoader_createActionGroup cobj_x0

instance QcreateActionGroup_h (QUiLoader ()) ((QObject t1)) where
 createActionGroup_h x0 (x1)
  = withQActionGroupResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUiLoader_createActionGroup1 cobj_x0 cobj_x1

foreign import ccall "qtc_QUiLoader_createActionGroup1" qtc_QUiLoader_createActionGroup1 :: Ptr (TQUiLoader a) -> Ptr (TQObject t1) -> IO (Ptr (TQActionGroup ()))

instance QcreateActionGroup_h (QUiLoaderSc a) ((QObject t1)) where
 createActionGroup_h x0 (x1)
  = withQActionGroupResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUiLoader_createActionGroup1 cobj_x0 cobj_x1

instance QcreateActionGroup_h (QUiLoader ()) ((QObject t1, String)) where
 createActionGroup_h x0 (x1, x2)
  = withQActionGroupResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QUiLoader_createActionGroup2 cobj_x0 cobj_x1 cstr_x2

foreign import ccall "qtc_QUiLoader_createActionGroup2" qtc_QUiLoader_createActionGroup2 :: Ptr (TQUiLoader a) -> Ptr (TQObject t1) -> CWString -> IO (Ptr (TQActionGroup ()))

instance QcreateActionGroup_h (QUiLoaderSc a) ((QObject t1, String)) where
 createActionGroup_h x0 (x1, x2)
  = withQActionGroupResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QUiLoader_createActionGroup2 cobj_x0 cobj_x1 cstr_x2

instance QsetHandler (QUiLoader ()) (QUiLoader x0 -> String -> IO (QObject t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QUiLoader4 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QUiLoader4_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QUiLoader_setHandler4 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQUiLoader x0) -> Ptr (TQString ()) -> IO (Ptr (TQObject t0))
    setHandlerWrapper x0 x1
      = do x0obj <- qUiLoaderFromPtr x0
           x1str <- stringFromPtr x1
           let rv =
                if (objectIsNull x0obj)
                 then return $ objectCast x0obj
                 else _handler x0obj x1str
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

foreign import ccall "qtc_QUiLoader_setHandler4" qtc_QUiLoader_setHandler4 :: Ptr (TQUiLoader a) -> CWString -> Ptr (Ptr (TQUiLoader x0) -> Ptr (TQString ()) -> IO (Ptr (TQObject t0))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QUiLoader4 :: (Ptr (TQUiLoader x0) -> Ptr (TQString ()) -> IO (Ptr (TQObject t0))) -> IO (FunPtr (Ptr (TQUiLoader x0) -> Ptr (TQString ()) -> IO (Ptr (TQObject t0))))

foreign import ccall "wrapper" wrapSetHandler_QUiLoader4_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QUiLoaderSc a) (QUiLoader x0 -> String -> IO (QObject t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QUiLoader4 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QUiLoader4_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QUiLoader_setHandler4 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQUiLoader x0) -> Ptr (TQString ()) -> IO (Ptr (TQObject t0))
    setHandlerWrapper x0 x1
      = do x0obj <- qUiLoaderFromPtr x0
           x1str <- stringFromPtr x1
           let rv =
                if (objectIsNull x0obj)
                 then return $ objectCast x0obj
                 else _handler x0obj x1str
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

instance QsetHandler (QUiLoader ()) (QUiLoader x0 -> String -> QObject t2 -> IO (QObject t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QUiLoader5 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QUiLoader5_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QUiLoader_setHandler5 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQUiLoader x0) -> Ptr (TQString ()) -> Ptr (TQObject t2) -> IO (Ptr (TQObject t0))
    setHandlerWrapper x0 x1 x2
      = do x0obj <- qUiLoaderFromPtr x0
           x1str <- stringFromPtr x1
           x2obj <- qObjectFromPtr x2
           let rv =
                if (objectIsNull x0obj)
                 then return $ objectCast x0obj
                 else _handler x0obj x1str x2obj
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

foreign import ccall "qtc_QUiLoader_setHandler5" qtc_QUiLoader_setHandler5 :: Ptr (TQUiLoader a) -> CWString -> Ptr (Ptr (TQUiLoader x0) -> Ptr (TQString ()) -> Ptr (TQObject t2) -> IO (Ptr (TQObject t0))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QUiLoader5 :: (Ptr (TQUiLoader x0) -> Ptr (TQString ()) -> Ptr (TQObject t2) -> IO (Ptr (TQObject t0))) -> IO (FunPtr (Ptr (TQUiLoader x0) -> Ptr (TQString ()) -> Ptr (TQObject t2) -> IO (Ptr (TQObject t0))))

foreign import ccall "wrapper" wrapSetHandler_QUiLoader5_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QUiLoaderSc a) (QUiLoader x0 -> String -> QObject t2 -> IO (QObject t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QUiLoader5 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QUiLoader5_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QUiLoader_setHandler5 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQUiLoader x0) -> Ptr (TQString ()) -> Ptr (TQObject t2) -> IO (Ptr (TQObject t0))
    setHandlerWrapper x0 x1 x2
      = do x0obj <- qUiLoaderFromPtr x0
           x1str <- stringFromPtr x1
           x2obj <- qObjectFromPtr x2
           let rv =
                if (objectIsNull x0obj)
                 then return $ objectCast x0obj
                 else _handler x0obj x1str x2obj
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

instance QsetHandler (QUiLoader ()) (QUiLoader x0 -> String -> QObject t2 -> String -> IO (QObject t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QUiLoader6 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QUiLoader6_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QUiLoader_setHandler6 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQUiLoader x0) -> Ptr (TQString ()) -> Ptr (TQObject t2) -> Ptr (TQString ()) -> IO (Ptr (TQObject t0))
    setHandlerWrapper x0 x1 x2 x3
      = do x0obj <- qUiLoaderFromPtr x0
           x1str <- stringFromPtr x1
           x2obj <- qObjectFromPtr x2
           x3str <- stringFromPtr x3
           let rv =
                if (objectIsNull x0obj)
                 then return $ objectCast x0obj
                 else _handler x0obj x1str x2obj x3str
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

foreign import ccall "qtc_QUiLoader_setHandler6" qtc_QUiLoader_setHandler6 :: Ptr (TQUiLoader a) -> CWString -> Ptr (Ptr (TQUiLoader x0) -> Ptr (TQString ()) -> Ptr (TQObject t2) -> Ptr (TQString ()) -> IO (Ptr (TQObject t0))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QUiLoader6 :: (Ptr (TQUiLoader x0) -> Ptr (TQString ()) -> Ptr (TQObject t2) -> Ptr (TQString ()) -> IO (Ptr (TQObject t0))) -> IO (FunPtr (Ptr (TQUiLoader x0) -> Ptr (TQString ()) -> Ptr (TQObject t2) -> Ptr (TQString ()) -> IO (Ptr (TQObject t0))))

foreign import ccall "wrapper" wrapSetHandler_QUiLoader6_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QUiLoaderSc a) (QUiLoader x0 -> String -> QObject t2 -> String -> IO (QObject t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QUiLoader6 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QUiLoader6_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QUiLoader_setHandler6 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQUiLoader x0) -> Ptr (TQString ()) -> Ptr (TQObject t2) -> Ptr (TQString ()) -> IO (Ptr (TQObject t0))
    setHandlerWrapper x0 x1 x2 x3
      = do x0obj <- qUiLoaderFromPtr x0
           x1str <- stringFromPtr x1
           x2obj <- qObjectFromPtr x2
           x3str <- stringFromPtr x3
           let rv =
                if (objectIsNull x0obj)
                 then return $ objectCast x0obj
                 else _handler x0obj x1str x2obj x3str
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

class QcreateLayout_h x0 x1 where
 createLayout_h :: x0 -> x1 -> IO (QLayout ())

instance QcreateLayout_h (QUiLoader ()) ((String)) where
 createLayout_h x0 (x1)
  = withQLayoutResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QUiLoader_createLayout cobj_x0 cstr_x1

foreign import ccall "qtc_QUiLoader_createLayout" qtc_QUiLoader_createLayout :: Ptr (TQUiLoader a) -> CWString -> IO (Ptr (TQLayout ()))

instance QcreateLayout_h (QUiLoaderSc a) ((String)) where
 createLayout_h x0 (x1)
  = withQLayoutResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QUiLoader_createLayout cobj_x0 cstr_x1

instance QcreateLayout_h (QUiLoader ()) ((String, QObject t2)) where
 createLayout_h x0 (x1, x2)
  = withQLayoutResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QUiLoader_createLayout1 cobj_x0 cstr_x1 cobj_x2

foreign import ccall "qtc_QUiLoader_createLayout1" qtc_QUiLoader_createLayout1 :: Ptr (TQUiLoader a) -> CWString -> Ptr (TQObject t2) -> IO (Ptr (TQLayout ()))

instance QcreateLayout_h (QUiLoaderSc a) ((String, QObject t2)) where
 createLayout_h x0 (x1, x2)
  = withQLayoutResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QUiLoader_createLayout1 cobj_x0 cstr_x1 cobj_x2

instance QcreateLayout_h (QUiLoader ()) ((String, QObject t2, String)) where
 createLayout_h x0 (x1, x2, x3)
  = withQLayoutResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withCWString x3 $ \cstr_x3 ->
    qtc_QUiLoader_createLayout2 cobj_x0 cstr_x1 cobj_x2 cstr_x3

foreign import ccall "qtc_QUiLoader_createLayout2" qtc_QUiLoader_createLayout2 :: Ptr (TQUiLoader a) -> CWString -> Ptr (TQObject t2) -> CWString -> IO (Ptr (TQLayout ()))

instance QcreateLayout_h (QUiLoaderSc a) ((String, QObject t2, String)) where
 createLayout_h x0 (x1, x2, x3)
  = withQLayoutResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withCWString x3 $ \cstr_x3 ->
    qtc_QUiLoader_createLayout2 cobj_x0 cstr_x1 cobj_x2 cstr_x3

instance QcreateWidget_h (QUiLoader ()) ((String)) where
 createWidget_h x0 (x1)
  = withQWidgetResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QUiLoader_createWidget cobj_x0 cstr_x1

foreign import ccall "qtc_QUiLoader_createWidget" qtc_QUiLoader_createWidget :: Ptr (TQUiLoader a) -> CWString -> IO (Ptr (TQWidget ()))

instance QcreateWidget_h (QUiLoaderSc a) ((String)) where
 createWidget_h x0 (x1)
  = withQWidgetResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QUiLoader_createWidget cobj_x0 cstr_x1

instance QcreateWidget_h (QUiLoader ()) ((String, QWidget t2)) where
 createWidget_h x0 (x1, x2)
  = withQWidgetResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QUiLoader_createWidget1 cobj_x0 cstr_x1 cobj_x2

foreign import ccall "qtc_QUiLoader_createWidget1" qtc_QUiLoader_createWidget1 :: Ptr (TQUiLoader a) -> CWString -> Ptr (TQWidget t2) -> IO (Ptr (TQWidget ()))

instance QcreateWidget_h (QUiLoaderSc a) ((String, QWidget t2)) where
 createWidget_h x0 (x1, x2)
  = withQWidgetResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QUiLoader_createWidget1 cobj_x0 cstr_x1 cobj_x2

instance QcreateWidget_h (QUiLoader ()) ((String, QWidget t2, String)) where
 createWidget_h x0 (x1, x2, x3)
  = withQWidgetResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withCWString x3 $ \cstr_x3 ->
    qtc_QUiLoader_createWidget2 cobj_x0 cstr_x1 cobj_x2 cstr_x3

foreign import ccall "qtc_QUiLoader_createWidget2" qtc_QUiLoader_createWidget2 :: Ptr (TQUiLoader a) -> CWString -> Ptr (TQWidget t2) -> CWString -> IO (Ptr (TQWidget ()))

instance QcreateWidget_h (QUiLoaderSc a) ((String, QWidget t2, String)) where
 createWidget_h x0 (x1, x2, x3)
  = withQWidgetResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withCWString x3 $ \cstr_x3 ->
    qtc_QUiLoader_createWidget2 cobj_x0 cstr_x1 cobj_x2 cstr_x3

instance QsetHandler (QUiLoader ()) (QUiLoader x0 -> QEvent t1 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QUiLoader7 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QUiLoader7_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QUiLoader_setHandler7 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQUiLoader x0) -> Ptr (TQEvent t1) -> IO (CBool)
    setHandlerWrapper x0 x1
      = do x0obj <- qUiLoaderFromPtr x0
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

foreign import ccall "qtc_QUiLoader_setHandler7" qtc_QUiLoader_setHandler7 :: Ptr (TQUiLoader a) -> CWString -> Ptr (Ptr (TQUiLoader x0) -> Ptr (TQEvent t1) -> IO (CBool)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QUiLoader7 :: (Ptr (TQUiLoader x0) -> Ptr (TQEvent t1) -> IO (CBool)) -> IO (FunPtr (Ptr (TQUiLoader x0) -> Ptr (TQEvent t1) -> IO (CBool)))

foreign import ccall "wrapper" wrapSetHandler_QUiLoader7_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QUiLoaderSc a) (QUiLoader x0 -> QEvent t1 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QUiLoader7 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QUiLoader7_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QUiLoader_setHandler7 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQUiLoader x0) -> Ptr (TQEvent t1) -> IO (CBool)
    setHandlerWrapper x0 x1
      = do x0obj <- qUiLoaderFromPtr x0
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

instance Qevent_h (QUiLoader ()) ((QEvent t1)) where
 event_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUiLoader_event cobj_x0 cobj_x1

foreign import ccall "qtc_QUiLoader_event" qtc_QUiLoader_event :: Ptr (TQUiLoader a) -> Ptr (TQEvent t1) -> IO CBool

instance Qevent_h (QUiLoaderSc a) ((QEvent t1)) where
 event_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUiLoader_event cobj_x0 cobj_x1

instance QsetHandler (QUiLoader ()) (QUiLoader x0 -> QObject t1 -> QEvent t2 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QUiLoader8 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QUiLoader8_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QUiLoader_setHandler8 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQUiLoader x0) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO (CBool)
    setHandlerWrapper x0 x1 x2
      = do x0obj <- qUiLoaderFromPtr x0
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

foreign import ccall "qtc_QUiLoader_setHandler8" qtc_QUiLoader_setHandler8 :: Ptr (TQUiLoader a) -> CWString -> Ptr (Ptr (TQUiLoader x0) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO (CBool)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QUiLoader8 :: (Ptr (TQUiLoader x0) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO (CBool)) -> IO (FunPtr (Ptr (TQUiLoader x0) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO (CBool)))

foreign import ccall "wrapper" wrapSetHandler_QUiLoader8_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QUiLoaderSc a) (QUiLoader x0 -> QObject t1 -> QEvent t2 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QUiLoader8 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QUiLoader8_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QUiLoader_setHandler8 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQUiLoader x0) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO (CBool)
    setHandlerWrapper x0 x1 x2
      = do x0obj <- qUiLoaderFromPtr x0
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

instance QeventFilter_h (QUiLoader ()) ((QObject t1, QEvent t2)) where
 eventFilter_h x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QUiLoader_eventFilter cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QUiLoader_eventFilter" qtc_QUiLoader_eventFilter :: Ptr (TQUiLoader a) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO CBool

instance QeventFilter_h (QUiLoaderSc a) ((QObject t1, QEvent t2)) where
 eventFilter_h x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QUiLoader_eventFilter cobj_x0 cobj_x1 cobj_x2

