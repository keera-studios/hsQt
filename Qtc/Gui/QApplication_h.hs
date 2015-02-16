{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QApplication_h.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:25
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QApplication_h where

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

instance QunSetUserMethod (QApplication ()) where
 unSetUserMethod qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QApplication_unSetUserMethod cobj_qobj (toCInt 0) (toCInt evid)

foreign import ccall "qtc_QApplication_unSetUserMethod" qtc_QApplication_unSetUserMethod :: Ptr (TQApplication a) -> CInt -> CInt -> IO (CBool)

instance QunSetUserMethod (QApplicationSc a) where
 unSetUserMethod qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QApplication_unSetUserMethod cobj_qobj (toCInt 0) (toCInt evid)

instance QunSetUserMethodVariant (QApplication ()) where
 unSetUserMethodVariant qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QApplication_unSetUserMethod cobj_qobj (toCInt 1) (toCInt evid)

instance QunSetUserMethodVariant (QApplicationSc a) where
 unSetUserMethodVariant qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QApplication_unSetUserMethod cobj_qobj (toCInt 1) (toCInt evid)

instance QunSetUserMethodVariantList (QApplication ()) where
 unSetUserMethodVariantList qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QApplication_unSetUserMethod cobj_qobj (toCInt 2) (toCInt evid)

instance QunSetUserMethodVariantList (QApplicationSc a) where
 unSetUserMethodVariantList qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QApplication_unSetUserMethod cobj_qobj (toCInt 2) (toCInt evid)

instance QsetUserMethod (QApplication ()) (QApplication x0 -> IO ()) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethod_QApplication setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethod_QApplication_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QApplication_setUserMethod cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQApplication x0) -> IO ()
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

foreign import ccall "qtc_QApplication_setUserMethod" qtc_QApplication_setUserMethod :: Ptr (TQApplication a) -> CInt -> Ptr (Ptr (TQApplication x0) -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetUserMethod_QApplication :: (Ptr (TQApplication x0) -> IO ()) -> IO (FunPtr (Ptr (TQApplication x0) -> IO ()))

foreign import ccall "wrapper" wrapSetUserMethod_QApplication_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetUserMethod (QApplicationSc a) (QApplication x0 -> IO ()) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethod_QApplication setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethod_QApplication_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QApplication_setUserMethod cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQApplication x0) -> IO ()
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

instance QsetUserMethod (QApplication ()) (QApplication x0 -> QVariant () -> IO (QVariant ())) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethodVariant_QApplication setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethodVariant_QApplication_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QApplication_setUserMethodVariant cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQApplication x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))
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

foreign import ccall "qtc_QApplication_setUserMethodVariant" qtc_QApplication_setUserMethodVariant :: Ptr (TQApplication a) -> CInt -> Ptr (Ptr (TQApplication x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetUserMethodVariant_QApplication :: (Ptr (TQApplication x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))) -> IO (FunPtr (Ptr (TQApplication x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))))

foreign import ccall "wrapper" wrapSetUserMethodVariant_QApplication_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetUserMethod (QApplicationSc a) (QApplication x0 -> QVariant () -> IO (QVariant ())) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethodVariant_QApplication setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethodVariant_QApplication_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QApplication_setUserMethodVariant cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQApplication x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))
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

instance QunSetHandler (QApplication ()) where 
 unSetHandler qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withCWString evid $ \cstr_evid ->
    qtc_QApplication_unSetHandler cobj_qobj cstr_evid

foreign import ccall "qtc_QApplication_unSetHandler" qtc_QApplication_unSetHandler :: Ptr (TQApplication a) -> CWString -> IO (CBool)

instance QunSetHandler (QApplicationSc a) where 
 unSetHandler qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withCWString evid $ \cstr_evid ->
    qtc_QApplication_unSetHandler cobj_qobj cstr_evid

instance QsetHandler (QApplication ()) (QApplication x0 -> QObject t1 -> QEvent t2 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QApplication1 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QApplication1_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QApplication_setHandler1 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQApplication x0) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO (CBool)
    setHandlerWrapper x0 x1 x2
      = do x0obj <- qApplicationFromPtr x0
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

foreign import ccall "qtc_QApplication_setHandler1" qtc_QApplication_setHandler1 :: Ptr (TQApplication a) -> CWString -> Ptr (Ptr (TQApplication x0) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO (CBool)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QApplication1 :: (Ptr (TQApplication x0) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO (CBool)) -> IO (FunPtr (Ptr (TQApplication x0) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO (CBool)))

foreign import ccall "wrapper" wrapSetHandler_QApplication1_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QApplicationSc a) (QApplication x0 -> QObject t1 -> QEvent t2 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QApplication1 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QApplication1_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QApplication_setHandler1 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQApplication x0) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO (CBool)
    setHandlerWrapper x0 x1 x2
      = do x0obj <- qApplicationFromPtr x0
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

instance Qnotify_h (QApplication ()) ((QObject t1, QEvent t2)) where
 notify_h x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QApplication_notify cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QApplication_notify" qtc_QApplication_notify :: Ptr (TQApplication a) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO CBool

instance Qnotify_h (QApplicationSc a) ((QObject t1, QEvent t2)) where
 notify_h x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QApplication_notify cobj_x0 cobj_x1 cobj_x2

instance QeventFilter_h (QApplication ()) ((QObject t1, QEvent t2)) where
 eventFilter_h x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QApplication_eventFilter cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QApplication_eventFilter" qtc_QApplication_eventFilter :: Ptr (TQApplication a) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO CBool

instance QeventFilter_h (QApplicationSc a) ((QObject t1, QEvent t2)) where
 eventFilter_h x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QApplication_eventFilter cobj_x0 cobj_x1 cobj_x2

