{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QCalendarWidget_h.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:15
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QCalendarWidget_h (
  QpaintCell_h(..)
  ,QqpaintCell_h(..)
  ) where

import Foreign.C.Types
import Qtc.Enums.Base
import Qtc.Enums.Gui.QPaintDevice
import Qtc.Enums.Core.Qt

import Qtc.Classes.Base
import Qtc.Classes.Qccs_h
import Qtc.Classes.Core_h
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core
import Qtc.Classes.Gui_h
import Qtc.ClassTypes.Gui
import Foreign.Marshal.Array

instance QunSetUserMethod (QCalendarWidget ()) where
 unSetUserMethod qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QCalendarWidget_unSetUserMethod cobj_qobj (toCInt 0) (toCInt evid)

foreign import ccall "qtc_QCalendarWidget_unSetUserMethod" qtc_QCalendarWidget_unSetUserMethod :: Ptr (TQCalendarWidget a) -> CInt -> CInt -> IO (CBool)

instance QunSetUserMethod (QCalendarWidgetSc a) where
 unSetUserMethod qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QCalendarWidget_unSetUserMethod cobj_qobj (toCInt 0) (toCInt evid)

instance QunSetUserMethodVariant (QCalendarWidget ()) where
 unSetUserMethodVariant qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QCalendarWidget_unSetUserMethod cobj_qobj (toCInt 1) (toCInt evid)

instance QunSetUserMethodVariant (QCalendarWidgetSc a) where
 unSetUserMethodVariant qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QCalendarWidget_unSetUserMethod cobj_qobj (toCInt 1) (toCInt evid)

instance QunSetUserMethodVariantList (QCalendarWidget ()) where
 unSetUserMethodVariantList qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QCalendarWidget_unSetUserMethod cobj_qobj (toCInt 2) (toCInt evid)

instance QunSetUserMethodVariantList (QCalendarWidgetSc a) where
 unSetUserMethodVariantList qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QCalendarWidget_unSetUserMethod cobj_qobj (toCInt 2) (toCInt evid)

instance QsetUserMethod (QCalendarWidget ()) (QCalendarWidget x0 -> IO ()) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethod_QCalendarWidget setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethod_QCalendarWidget_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QCalendarWidget_setUserMethod cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQCalendarWidget x0) -> IO ()
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

foreign import ccall "qtc_QCalendarWidget_setUserMethod" qtc_QCalendarWidget_setUserMethod :: Ptr (TQCalendarWidget a) -> CInt -> Ptr (Ptr (TQCalendarWidget x0) -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetUserMethod_QCalendarWidget :: (Ptr (TQCalendarWidget x0) -> IO ()) -> IO (FunPtr (Ptr (TQCalendarWidget x0) -> IO ()))

foreign import ccall "wrapper" wrapSetUserMethod_QCalendarWidget_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetUserMethod (QCalendarWidgetSc a) (QCalendarWidget x0 -> IO ()) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethod_QCalendarWidget setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethod_QCalendarWidget_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QCalendarWidget_setUserMethod cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQCalendarWidget x0) -> IO ()
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

instance QsetUserMethod (QCalendarWidget ()) (QCalendarWidget x0 -> QVariant () -> IO (QVariant ())) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethodVariant_QCalendarWidget setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethodVariant_QCalendarWidget_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QCalendarWidget_setUserMethodVariant cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQCalendarWidget x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))
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

foreign import ccall "qtc_QCalendarWidget_setUserMethodVariant" qtc_QCalendarWidget_setUserMethodVariant :: Ptr (TQCalendarWidget a) -> CInt -> Ptr (Ptr (TQCalendarWidget x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetUserMethodVariant_QCalendarWidget :: (Ptr (TQCalendarWidget x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))) -> IO (FunPtr (Ptr (TQCalendarWidget x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))))

foreign import ccall "wrapper" wrapSetUserMethodVariant_QCalendarWidget_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetUserMethod (QCalendarWidgetSc a) (QCalendarWidget x0 -> QVariant () -> IO (QVariant ())) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethodVariant_QCalendarWidget setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethodVariant_QCalendarWidget_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QCalendarWidget_setUserMethodVariant cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQCalendarWidget x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))
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

instance QunSetHandler (QCalendarWidget ()) where 
 unSetHandler qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withCWString evid $ \cstr_evid ->
    qtc_QCalendarWidget_unSetHandler cobj_qobj cstr_evid

foreign import ccall "qtc_QCalendarWidget_unSetHandler" qtc_QCalendarWidget_unSetHandler :: Ptr (TQCalendarWidget a) -> CWString -> IO (CBool)

instance QunSetHandler (QCalendarWidgetSc a) where 
 unSetHandler qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withCWString evid $ \cstr_evid ->
    qtc_QCalendarWidget_unSetHandler cobj_qobj cstr_evid

instance QsetHandler (QCalendarWidget ()) (QCalendarWidget x0 -> QEvent t1 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QCalendarWidget1 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QCalendarWidget1_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QCalendarWidget_setHandler1 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQCalendarWidget x0) -> Ptr (TQEvent t1) -> IO (CBool)
    setHandlerWrapper x0 x1
      = do x0obj <- qCalendarWidgetFromPtr x0
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

foreign import ccall "qtc_QCalendarWidget_setHandler1" qtc_QCalendarWidget_setHandler1 :: Ptr (TQCalendarWidget a) -> CWString -> Ptr (Ptr (TQCalendarWidget x0) -> Ptr (TQEvent t1) -> IO (CBool)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QCalendarWidget1 :: (Ptr (TQCalendarWidget x0) -> Ptr (TQEvent t1) -> IO (CBool)) -> IO (FunPtr (Ptr (TQCalendarWidget x0) -> Ptr (TQEvent t1) -> IO (CBool)))

foreign import ccall "wrapper" wrapSetHandler_QCalendarWidget1_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QCalendarWidgetSc a) (QCalendarWidget x0 -> QEvent t1 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QCalendarWidget1 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QCalendarWidget1_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QCalendarWidget_setHandler1 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQCalendarWidget x0) -> Ptr (TQEvent t1) -> IO (CBool)
    setHandlerWrapper x0 x1
      = do x0obj <- qCalendarWidgetFromPtr x0
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

instance Qevent_h (QCalendarWidget ()) ((QEvent t1)) where
 event_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCalendarWidget_event cobj_x0 cobj_x1

foreign import ccall "qtc_QCalendarWidget_event" qtc_QCalendarWidget_event :: Ptr (TQCalendarWidget a) -> Ptr (TQEvent t1) -> IO CBool

instance Qevent_h (QCalendarWidgetSc a) ((QEvent t1)) where
 event_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCalendarWidget_event cobj_x0 cobj_x1

instance QsetHandler (QCalendarWidget ()) (QCalendarWidget x0 -> QEvent t1 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QCalendarWidget2 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QCalendarWidget2_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QCalendarWidget_setHandler2 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQCalendarWidget x0) -> Ptr (TQEvent t1) -> IO ()
    setHandlerWrapper x0 x1
      = do x0obj <- qCalendarWidgetFromPtr x0
           x1obj <- objectFromPtr_nf x1
           if (objectIsNull x0obj)
            then return ()
            else _handler x0obj x1obj

    setHandlerWrapper_d :: Ptr fun -> Ptr () -> Ptr fun_d -> IO ()
    setHandlerWrapper_d funptr stptr funptr_d
      = do when (stptr/=ptrNull)
            (freeStablePtr (castPtrToStablePtr stptr))
           when (funptr/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr))
           when (funptr_d/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr_d))
           return ()

foreign import ccall "qtc_QCalendarWidget_setHandler2" qtc_QCalendarWidget_setHandler2 :: Ptr (TQCalendarWidget a) -> CWString -> Ptr (Ptr (TQCalendarWidget x0) -> Ptr (TQEvent t1) -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QCalendarWidget2 :: (Ptr (TQCalendarWidget x0) -> Ptr (TQEvent t1) -> IO ()) -> IO (FunPtr (Ptr (TQCalendarWidget x0) -> Ptr (TQEvent t1) -> IO ()))

foreign import ccall "wrapper" wrapSetHandler_QCalendarWidget2_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QCalendarWidgetSc a) (QCalendarWidget x0 -> QEvent t1 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QCalendarWidget2 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QCalendarWidget2_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QCalendarWidget_setHandler2 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQCalendarWidget x0) -> Ptr (TQEvent t1) -> IO ()
    setHandlerWrapper x0 x1
      = do x0obj <- qCalendarWidgetFromPtr x0
           x1obj <- objectFromPtr_nf x1
           if (objectIsNull x0obj)
            then return ()
            else _handler x0obj x1obj

    setHandlerWrapper_d :: Ptr fun -> Ptr () -> Ptr fun_d -> IO ()
    setHandlerWrapper_d funptr stptr funptr_d
      = do when (stptr/=ptrNull)
            (freeStablePtr (castPtrToStablePtr stptr))
           when (funptr/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr))
           when (funptr_d/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr_d))
           return ()

instance QkeyPressEvent_h (QCalendarWidget ()) ((QKeyEvent t1)) where
 keyPressEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCalendarWidget_keyPressEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QCalendarWidget_keyPressEvent" qtc_QCalendarWidget_keyPressEvent :: Ptr (TQCalendarWidget a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyPressEvent_h (QCalendarWidgetSc a) ((QKeyEvent t1)) where
 keyPressEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCalendarWidget_keyPressEvent cobj_x0 cobj_x1

instance QsetHandler (QCalendarWidget ()) (QCalendarWidget x0 -> IO (QSize t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QCalendarWidget3 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QCalendarWidget3_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QCalendarWidget_setHandler3 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQCalendarWidget x0) -> IO (Ptr (TQSize t0))
    setHandlerWrapper x0
      = do x0obj <- qCalendarWidgetFromPtr x0
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

foreign import ccall "qtc_QCalendarWidget_setHandler3" qtc_QCalendarWidget_setHandler3 :: Ptr (TQCalendarWidget a) -> CWString -> Ptr (Ptr (TQCalendarWidget x0) -> IO (Ptr (TQSize t0))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QCalendarWidget3 :: (Ptr (TQCalendarWidget x0) -> IO (Ptr (TQSize t0))) -> IO (FunPtr (Ptr (TQCalendarWidget x0) -> IO (Ptr (TQSize t0))))

foreign import ccall "wrapper" wrapSetHandler_QCalendarWidget3_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QCalendarWidgetSc a) (QCalendarWidget x0 -> IO (QSize t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QCalendarWidget3 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QCalendarWidget3_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QCalendarWidget_setHandler3 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQCalendarWidget x0) -> IO (Ptr (TQSize t0))
    setHandlerWrapper x0
      = do x0obj <- qCalendarWidgetFromPtr x0
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

instance QqminimumSizeHint_h (QCalendarWidget ()) (()) where
 qminimumSizeHint_h x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCalendarWidget_minimumSizeHint cobj_x0

foreign import ccall "qtc_QCalendarWidget_minimumSizeHint" qtc_QCalendarWidget_minimumSizeHint :: Ptr (TQCalendarWidget a) -> IO (Ptr (TQSize ()))

instance QqminimumSizeHint_h (QCalendarWidgetSc a) (()) where
 qminimumSizeHint_h x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCalendarWidget_minimumSizeHint cobj_x0

instance QminimumSizeHint_h (QCalendarWidget ()) (()) where
 minimumSizeHint_h x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCalendarWidget_minimumSizeHint_qth cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QCalendarWidget_minimumSizeHint_qth" qtc_QCalendarWidget_minimumSizeHint_qth :: Ptr (TQCalendarWidget a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QminimumSizeHint_h (QCalendarWidgetSc a) (()) where
 minimumSizeHint_h x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCalendarWidget_minimumSizeHint_qth cobj_x0 csize_ret_w csize_ret_h

instance QmousePressEvent_h (QCalendarWidget ()) ((QMouseEvent t1)) where
 mousePressEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCalendarWidget_mousePressEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QCalendarWidget_mousePressEvent" qtc_QCalendarWidget_mousePressEvent :: Ptr (TQCalendarWidget a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmousePressEvent_h (QCalendarWidgetSc a) ((QMouseEvent t1)) where
 mousePressEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCalendarWidget_mousePressEvent cobj_x0 cobj_x1

instance QsetHandler (QCalendarWidget ()) (QCalendarWidget x0 -> QPainter t1 -> QRect t2 -> QDate t3 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QCalendarWidget4 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QCalendarWidget4_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QCalendarWidget_setHandler4 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQCalendarWidget x0) -> Ptr (TQPainter t1) -> Ptr (TQRect t2) -> Ptr (TQDate t3) -> IO ()
    setHandlerWrapper x0 x1 x2 x3
      = do x0obj <- qCalendarWidgetFromPtr x0
           x1obj <- objectFromPtr_nf x1
           x2obj <- objectFromPtr_nf x2
           x3obj <- objectFromPtr_nf x3
           if (objectIsNull x0obj)
            then return ()
            else _handler x0obj x1obj x2obj x3obj

    setHandlerWrapper_d :: Ptr fun -> Ptr () -> Ptr fun_d -> IO ()
    setHandlerWrapper_d funptr stptr funptr_d
      = do when (stptr/=ptrNull)
            (freeStablePtr (castPtrToStablePtr stptr))
           when (funptr/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr))
           when (funptr_d/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr_d))
           return ()

foreign import ccall "qtc_QCalendarWidget_setHandler4" qtc_QCalendarWidget_setHandler4 :: Ptr (TQCalendarWidget a) -> CWString -> Ptr (Ptr (TQCalendarWidget x0) -> Ptr (TQPainter t1) -> Ptr (TQRect t2) -> Ptr (TQDate t3) -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QCalendarWidget4 :: (Ptr (TQCalendarWidget x0) -> Ptr (TQPainter t1) -> Ptr (TQRect t2) -> Ptr (TQDate t3) -> IO ()) -> IO (FunPtr (Ptr (TQCalendarWidget x0) -> Ptr (TQPainter t1) -> Ptr (TQRect t2) -> Ptr (TQDate t3) -> IO ()))

foreign import ccall "wrapper" wrapSetHandler_QCalendarWidget4_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QCalendarWidgetSc a) (QCalendarWidget x0 -> QPainter t1 -> QRect t2 -> QDate t3 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QCalendarWidget4 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QCalendarWidget4_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QCalendarWidget_setHandler4 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQCalendarWidget x0) -> Ptr (TQPainter t1) -> Ptr (TQRect t2) -> Ptr (TQDate t3) -> IO ()
    setHandlerWrapper x0 x1 x2 x3
      = do x0obj <- qCalendarWidgetFromPtr x0
           x1obj <- objectFromPtr_nf x1
           x2obj <- objectFromPtr_nf x2
           x3obj <- objectFromPtr_nf x3
           if (objectIsNull x0obj)
            then return ()
            else _handler x0obj x1obj x2obj x3obj

    setHandlerWrapper_d :: Ptr fun -> Ptr () -> Ptr fun_d -> IO ()
    setHandlerWrapper_d funptr stptr funptr_d
      = do when (stptr/=ptrNull)
            (freeStablePtr (castPtrToStablePtr stptr))
           when (funptr/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr))
           when (funptr_d/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr_d))
           return ()

class QpaintCell_h x0 x1 where
 paintCell_h :: x0 -> x1 -> IO ()

class QqpaintCell_h x0 x1 where
 qpaintCell_h :: x0 -> x1 -> IO ()

instance QqpaintCell_h (QCalendarWidget ()) ((QPainter t1, QRect t2, QDate t3)) where
 qpaintCell_h x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QCalendarWidget_paintCell cobj_x0 cobj_x1 cobj_x2 cobj_x3

foreign import ccall "qtc_QCalendarWidget_paintCell" qtc_QCalendarWidget_paintCell :: Ptr (TQCalendarWidget a) -> Ptr (TQPainter t1) -> Ptr (TQRect t2) -> Ptr (TQDate t3) -> IO ()

instance QqpaintCell_h (QCalendarWidgetSc a) ((QPainter t1, QRect t2, QDate t3)) where
 qpaintCell_h x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QCalendarWidget_paintCell cobj_x0 cobj_x1 cobj_x2 cobj_x3

instance QpaintCell_h (QCalendarWidget ()) ((QPainter t1, Rect, QDate t3)) where
 paintCell_h x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCRect x2 $ \crect_x2_x crect_x2_y  crect_x2_w crect_x2_h -> 
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QCalendarWidget_paintCell_qth cobj_x0 cobj_x1 crect_x2_x crect_x2_y crect_x2_w crect_x2_h  cobj_x3

foreign import ccall "qtc_QCalendarWidget_paintCell_qth" qtc_QCalendarWidget_paintCell_qth :: Ptr (TQCalendarWidget a) -> Ptr (TQPainter t1) -> CInt -> CInt -> CInt -> CInt -> Ptr (TQDate t3) -> IO ()

instance QpaintCell_h (QCalendarWidgetSc a) ((QPainter t1, Rect, QDate t3)) where
 paintCell_h x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCRect x2 $ \crect_x2_x crect_x2_y  crect_x2_w crect_x2_h -> 
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QCalendarWidget_paintCell_qth cobj_x0 cobj_x1 crect_x2_x crect_x2_y crect_x2_w crect_x2_h  cobj_x3

instance QresizeEvent_h (QCalendarWidget ()) ((QResizeEvent t1)) where
 resizeEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCalendarWidget_resizeEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QCalendarWidget_resizeEvent" qtc_QCalendarWidget_resizeEvent :: Ptr (TQCalendarWidget a) -> Ptr (TQResizeEvent t1) -> IO ()

instance QresizeEvent_h (QCalendarWidgetSc a) ((QResizeEvent t1)) where
 resizeEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCalendarWidget_resizeEvent cobj_x0 cobj_x1

instance QqsizeHint_h (QCalendarWidget ()) (()) where
 qsizeHint_h x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCalendarWidget_sizeHint cobj_x0

foreign import ccall "qtc_QCalendarWidget_sizeHint" qtc_QCalendarWidget_sizeHint :: Ptr (TQCalendarWidget a) -> IO (Ptr (TQSize ()))

instance QqsizeHint_h (QCalendarWidgetSc a) (()) where
 qsizeHint_h x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCalendarWidget_sizeHint cobj_x0

instance QsizeHint_h (QCalendarWidget ()) (()) where
 sizeHint_h x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCalendarWidget_sizeHint_qth cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QCalendarWidget_sizeHint_qth" qtc_QCalendarWidget_sizeHint_qth :: Ptr (TQCalendarWidget a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QsizeHint_h (QCalendarWidgetSc a) (()) where
 sizeHint_h x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCalendarWidget_sizeHint_qth cobj_x0 csize_ret_w csize_ret_h

instance QactionEvent_h (QCalendarWidget ()) ((QActionEvent t1)) where
 actionEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCalendarWidget_actionEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QCalendarWidget_actionEvent" qtc_QCalendarWidget_actionEvent :: Ptr (TQCalendarWidget a) -> Ptr (TQActionEvent t1) -> IO ()

instance QactionEvent_h (QCalendarWidgetSc a) ((QActionEvent t1)) where
 actionEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCalendarWidget_actionEvent cobj_x0 cobj_x1

instance QchangeEvent_h (QCalendarWidget ()) ((QEvent t1)) where
 changeEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCalendarWidget_changeEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QCalendarWidget_changeEvent" qtc_QCalendarWidget_changeEvent :: Ptr (TQCalendarWidget a) -> Ptr (TQEvent t1) -> IO ()

instance QchangeEvent_h (QCalendarWidgetSc a) ((QEvent t1)) where
 changeEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCalendarWidget_changeEvent cobj_x0 cobj_x1

instance QcloseEvent_h (QCalendarWidget ()) ((QCloseEvent t1)) where
 closeEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCalendarWidget_closeEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QCalendarWidget_closeEvent" qtc_QCalendarWidget_closeEvent :: Ptr (TQCalendarWidget a) -> Ptr (TQCloseEvent t1) -> IO ()

instance QcloseEvent_h (QCalendarWidgetSc a) ((QCloseEvent t1)) where
 closeEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCalendarWidget_closeEvent cobj_x0 cobj_x1

instance QcontextMenuEvent_h (QCalendarWidget ()) ((QContextMenuEvent t1)) where
 contextMenuEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCalendarWidget_contextMenuEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QCalendarWidget_contextMenuEvent" qtc_QCalendarWidget_contextMenuEvent :: Ptr (TQCalendarWidget a) -> Ptr (TQContextMenuEvent t1) -> IO ()

instance QcontextMenuEvent_h (QCalendarWidgetSc a) ((QContextMenuEvent t1)) where
 contextMenuEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCalendarWidget_contextMenuEvent cobj_x0 cobj_x1

instance QsetHandler (QCalendarWidget ()) (QCalendarWidget x0 -> IO (Int)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QCalendarWidget5 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QCalendarWidget5_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QCalendarWidget_setHandler5 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQCalendarWidget x0) -> IO (CInt)
    setHandlerWrapper x0
      = do x0obj <- qCalendarWidgetFromPtr x0
           let rv =
                if (objectIsNull x0obj)
                 then return 0
                 else _handler x0obj
           rvf <- rv
           return (toCInt rvf)

    setHandlerWrapper_d :: Ptr fun -> Ptr () -> Ptr fun_d -> IO ()
    setHandlerWrapper_d funptr stptr funptr_d
      = do when (stptr/=ptrNull)
            (freeStablePtr (castPtrToStablePtr stptr))
           when (funptr/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr))
           when (funptr_d/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr_d))
           return ()

foreign import ccall "qtc_QCalendarWidget_setHandler5" qtc_QCalendarWidget_setHandler5 :: Ptr (TQCalendarWidget a) -> CWString -> Ptr (Ptr (TQCalendarWidget x0) -> IO (CInt)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QCalendarWidget5 :: (Ptr (TQCalendarWidget x0) -> IO (CInt)) -> IO (FunPtr (Ptr (TQCalendarWidget x0) -> IO (CInt)))

foreign import ccall "wrapper" wrapSetHandler_QCalendarWidget5_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QCalendarWidgetSc a) (QCalendarWidget x0 -> IO (Int)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QCalendarWidget5 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QCalendarWidget5_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QCalendarWidget_setHandler5 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQCalendarWidget x0) -> IO (CInt)
    setHandlerWrapper x0
      = do x0obj <- qCalendarWidgetFromPtr x0
           let rv =
                if (objectIsNull x0obj)
                 then return 0
                 else _handler x0obj
           rvf <- rv
           return (toCInt rvf)

    setHandlerWrapper_d :: Ptr fun -> Ptr () -> Ptr fun_d -> IO ()
    setHandlerWrapper_d funptr stptr funptr_d
      = do when (stptr/=ptrNull)
            (freeStablePtr (castPtrToStablePtr stptr))
           when (funptr/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr))
           when (funptr_d/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr_d))
           return ()

instance QdevType_h (QCalendarWidget ()) (()) where
 devType_h x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCalendarWidget_devType cobj_x0

foreign import ccall "qtc_QCalendarWidget_devType" qtc_QCalendarWidget_devType :: Ptr (TQCalendarWidget a) -> IO CInt

instance QdevType_h (QCalendarWidgetSc a) (()) where
 devType_h x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCalendarWidget_devType cobj_x0

instance QdragEnterEvent_h (QCalendarWidget ()) ((QDragEnterEvent t1)) where
 dragEnterEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCalendarWidget_dragEnterEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QCalendarWidget_dragEnterEvent" qtc_QCalendarWidget_dragEnterEvent :: Ptr (TQCalendarWidget a) -> Ptr (TQDragEnterEvent t1) -> IO ()

instance QdragEnterEvent_h (QCalendarWidgetSc a) ((QDragEnterEvent t1)) where
 dragEnterEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCalendarWidget_dragEnterEvent cobj_x0 cobj_x1

instance QdragLeaveEvent_h (QCalendarWidget ()) ((QDragLeaveEvent t1)) where
 dragLeaveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCalendarWidget_dragLeaveEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QCalendarWidget_dragLeaveEvent" qtc_QCalendarWidget_dragLeaveEvent :: Ptr (TQCalendarWidget a) -> Ptr (TQDragLeaveEvent t1) -> IO ()

instance QdragLeaveEvent_h (QCalendarWidgetSc a) ((QDragLeaveEvent t1)) where
 dragLeaveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCalendarWidget_dragLeaveEvent cobj_x0 cobj_x1

instance QdragMoveEvent_h (QCalendarWidget ()) ((QDragMoveEvent t1)) where
 dragMoveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCalendarWidget_dragMoveEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QCalendarWidget_dragMoveEvent" qtc_QCalendarWidget_dragMoveEvent :: Ptr (TQCalendarWidget a) -> Ptr (TQDragMoveEvent t1) -> IO ()

instance QdragMoveEvent_h (QCalendarWidgetSc a) ((QDragMoveEvent t1)) where
 dragMoveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCalendarWidget_dragMoveEvent cobj_x0 cobj_x1

instance QdropEvent_h (QCalendarWidget ()) ((QDropEvent t1)) where
 dropEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCalendarWidget_dropEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QCalendarWidget_dropEvent" qtc_QCalendarWidget_dropEvent :: Ptr (TQCalendarWidget a) -> Ptr (TQDropEvent t1) -> IO ()

instance QdropEvent_h (QCalendarWidgetSc a) ((QDropEvent t1)) where
 dropEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCalendarWidget_dropEvent cobj_x0 cobj_x1

instance QenterEvent_h (QCalendarWidget ()) ((QEvent t1)) where
 enterEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCalendarWidget_enterEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QCalendarWidget_enterEvent" qtc_QCalendarWidget_enterEvent :: Ptr (TQCalendarWidget a) -> Ptr (TQEvent t1) -> IO ()

instance QenterEvent_h (QCalendarWidgetSc a) ((QEvent t1)) where
 enterEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCalendarWidget_enterEvent cobj_x0 cobj_x1

instance QfocusInEvent_h (QCalendarWidget ()) ((QFocusEvent t1)) where
 focusInEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCalendarWidget_focusInEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QCalendarWidget_focusInEvent" qtc_QCalendarWidget_focusInEvent :: Ptr (TQCalendarWidget a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusInEvent_h (QCalendarWidgetSc a) ((QFocusEvent t1)) where
 focusInEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCalendarWidget_focusInEvent cobj_x0 cobj_x1

instance QfocusOutEvent_h (QCalendarWidget ()) ((QFocusEvent t1)) where
 focusOutEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCalendarWidget_focusOutEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QCalendarWidget_focusOutEvent" qtc_QCalendarWidget_focusOutEvent :: Ptr (TQCalendarWidget a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusOutEvent_h (QCalendarWidgetSc a) ((QFocusEvent t1)) where
 focusOutEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCalendarWidget_focusOutEvent cobj_x0 cobj_x1

instance QsetHandler (QCalendarWidget ()) (QCalendarWidget x0 -> Int -> IO (Int)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QCalendarWidget6 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QCalendarWidget6_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QCalendarWidget_setHandler6 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQCalendarWidget x0) -> CInt -> IO (CInt)
    setHandlerWrapper x0 x1
      = do x0obj <- qCalendarWidgetFromPtr x0
           let x1int = fromCInt x1
           let rv =
                if (objectIsNull x0obj)
                 then return 0
                 else _handler x0obj x1int
           rvf <- rv
           return (toCInt rvf)

    setHandlerWrapper_d :: Ptr fun -> Ptr () -> Ptr fun_d -> IO ()
    setHandlerWrapper_d funptr stptr funptr_d
      = do when (stptr/=ptrNull)
            (freeStablePtr (castPtrToStablePtr stptr))
           when (funptr/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr))
           when (funptr_d/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr_d))
           return ()

foreign import ccall "qtc_QCalendarWidget_setHandler6" qtc_QCalendarWidget_setHandler6 :: Ptr (TQCalendarWidget a) -> CWString -> Ptr (Ptr (TQCalendarWidget x0) -> CInt -> IO (CInt)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QCalendarWidget6 :: (Ptr (TQCalendarWidget x0) -> CInt -> IO (CInt)) -> IO (FunPtr (Ptr (TQCalendarWidget x0) -> CInt -> IO (CInt)))

foreign import ccall "wrapper" wrapSetHandler_QCalendarWidget6_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QCalendarWidgetSc a) (QCalendarWidget x0 -> Int -> IO (Int)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QCalendarWidget6 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QCalendarWidget6_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QCalendarWidget_setHandler6 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQCalendarWidget x0) -> CInt -> IO (CInt)
    setHandlerWrapper x0 x1
      = do x0obj <- qCalendarWidgetFromPtr x0
           let x1int = fromCInt x1
           let rv =
                if (objectIsNull x0obj)
                 then return 0
                 else _handler x0obj x1int
           rvf <- rv
           return (toCInt rvf)

    setHandlerWrapper_d :: Ptr fun -> Ptr () -> Ptr fun_d -> IO ()
    setHandlerWrapper_d funptr stptr funptr_d
      = do when (stptr/=ptrNull)
            (freeStablePtr (castPtrToStablePtr stptr))
           when (funptr/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr))
           when (funptr_d/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr_d))
           return ()

instance QheightForWidth_h (QCalendarWidget ()) ((Int)) where
 heightForWidth_h x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCalendarWidget_heightForWidth cobj_x0 (toCInt x1)

foreign import ccall "qtc_QCalendarWidget_heightForWidth" qtc_QCalendarWidget_heightForWidth :: Ptr (TQCalendarWidget a) -> CInt -> IO CInt

instance QheightForWidth_h (QCalendarWidgetSc a) ((Int)) where
 heightForWidth_h x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCalendarWidget_heightForWidth cobj_x0 (toCInt x1)

instance QhideEvent_h (QCalendarWidget ()) ((QHideEvent t1)) where
 hideEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCalendarWidget_hideEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QCalendarWidget_hideEvent" qtc_QCalendarWidget_hideEvent :: Ptr (TQCalendarWidget a) -> Ptr (TQHideEvent t1) -> IO ()

instance QhideEvent_h (QCalendarWidgetSc a) ((QHideEvent t1)) where
 hideEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCalendarWidget_hideEvent cobj_x0 cobj_x1

instance QsetHandler (QCalendarWidget ()) (QCalendarWidget x0 -> InputMethodQuery -> IO (QVariant t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QCalendarWidget7 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QCalendarWidget7_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QCalendarWidget_setHandler7 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQCalendarWidget x0) -> CLong -> IO (Ptr (TQVariant t0))
    setHandlerWrapper x0 x1
      = do x0obj <- qCalendarWidgetFromPtr x0
           let x1enum = qEnum_fromInt $ fromCLong x1
           let rv =
                if (objectIsNull x0obj)
                 then return $ objectCast x0obj
                 else _handler x0obj x1enum
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

foreign import ccall "qtc_QCalendarWidget_setHandler7" qtc_QCalendarWidget_setHandler7 :: Ptr (TQCalendarWidget a) -> CWString -> Ptr (Ptr (TQCalendarWidget x0) -> CLong -> IO (Ptr (TQVariant t0))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QCalendarWidget7 :: (Ptr (TQCalendarWidget x0) -> CLong -> IO (Ptr (TQVariant t0))) -> IO (FunPtr (Ptr (TQCalendarWidget x0) -> CLong -> IO (Ptr (TQVariant t0))))

foreign import ccall "wrapper" wrapSetHandler_QCalendarWidget7_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QCalendarWidgetSc a) (QCalendarWidget x0 -> InputMethodQuery -> IO (QVariant t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QCalendarWidget7 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QCalendarWidget7_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QCalendarWidget_setHandler7 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQCalendarWidget x0) -> CLong -> IO (Ptr (TQVariant t0))
    setHandlerWrapper x0 x1
      = do x0obj <- qCalendarWidgetFromPtr x0
           let x1enum = qEnum_fromInt $ fromCLong x1
           let rv =
                if (objectIsNull x0obj)
                 then return $ objectCast x0obj
                 else _handler x0obj x1enum
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

instance QinputMethodQuery_h (QCalendarWidget ()) ((InputMethodQuery)) where
 inputMethodQuery_h x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCalendarWidget_inputMethodQuery cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QCalendarWidget_inputMethodQuery" qtc_QCalendarWidget_inputMethodQuery :: Ptr (TQCalendarWidget a) -> CLong -> IO (Ptr (TQVariant ()))

instance QinputMethodQuery_h (QCalendarWidgetSc a) ((InputMethodQuery)) where
 inputMethodQuery_h x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCalendarWidget_inputMethodQuery cobj_x0 (toCLong $ qEnum_toInt x1)

instance QkeyReleaseEvent_h (QCalendarWidget ()) ((QKeyEvent t1)) where
 keyReleaseEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCalendarWidget_keyReleaseEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QCalendarWidget_keyReleaseEvent" qtc_QCalendarWidget_keyReleaseEvent :: Ptr (TQCalendarWidget a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyReleaseEvent_h (QCalendarWidgetSc a) ((QKeyEvent t1)) where
 keyReleaseEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCalendarWidget_keyReleaseEvent cobj_x0 cobj_x1

instance QleaveEvent_h (QCalendarWidget ()) ((QEvent t1)) where
 leaveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCalendarWidget_leaveEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QCalendarWidget_leaveEvent" qtc_QCalendarWidget_leaveEvent :: Ptr (TQCalendarWidget a) -> Ptr (TQEvent t1) -> IO ()

instance QleaveEvent_h (QCalendarWidgetSc a) ((QEvent t1)) where
 leaveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCalendarWidget_leaveEvent cobj_x0 cobj_x1

instance QmouseDoubleClickEvent_h (QCalendarWidget ()) ((QMouseEvent t1)) where
 mouseDoubleClickEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCalendarWidget_mouseDoubleClickEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QCalendarWidget_mouseDoubleClickEvent" qtc_QCalendarWidget_mouseDoubleClickEvent :: Ptr (TQCalendarWidget a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseDoubleClickEvent_h (QCalendarWidgetSc a) ((QMouseEvent t1)) where
 mouseDoubleClickEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCalendarWidget_mouseDoubleClickEvent cobj_x0 cobj_x1

instance QmouseMoveEvent_h (QCalendarWidget ()) ((QMouseEvent t1)) where
 mouseMoveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCalendarWidget_mouseMoveEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QCalendarWidget_mouseMoveEvent" qtc_QCalendarWidget_mouseMoveEvent :: Ptr (TQCalendarWidget a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseMoveEvent_h (QCalendarWidgetSc a) ((QMouseEvent t1)) where
 mouseMoveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCalendarWidget_mouseMoveEvent cobj_x0 cobj_x1

instance QmouseReleaseEvent_h (QCalendarWidget ()) ((QMouseEvent t1)) where
 mouseReleaseEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCalendarWidget_mouseReleaseEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QCalendarWidget_mouseReleaseEvent" qtc_QCalendarWidget_mouseReleaseEvent :: Ptr (TQCalendarWidget a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseReleaseEvent_h (QCalendarWidgetSc a) ((QMouseEvent t1)) where
 mouseReleaseEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCalendarWidget_mouseReleaseEvent cobj_x0 cobj_x1

instance QmoveEvent_h (QCalendarWidget ()) ((QMoveEvent t1)) where
 moveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCalendarWidget_moveEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QCalendarWidget_moveEvent" qtc_QCalendarWidget_moveEvent :: Ptr (TQCalendarWidget a) -> Ptr (TQMoveEvent t1) -> IO ()

instance QmoveEvent_h (QCalendarWidgetSc a) ((QMoveEvent t1)) where
 moveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCalendarWidget_moveEvent cobj_x0 cobj_x1

instance QsetHandler (QCalendarWidget ()) (QCalendarWidget x0 -> IO (QPaintEngine t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QCalendarWidget8 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QCalendarWidget8_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QCalendarWidget_setHandler8 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQCalendarWidget x0) -> IO (Ptr (TQPaintEngine t0))
    setHandlerWrapper x0
      = do x0obj <- qCalendarWidgetFromPtr x0
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

foreign import ccall "qtc_QCalendarWidget_setHandler8" qtc_QCalendarWidget_setHandler8 :: Ptr (TQCalendarWidget a) -> CWString -> Ptr (Ptr (TQCalendarWidget x0) -> IO (Ptr (TQPaintEngine t0))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QCalendarWidget8 :: (Ptr (TQCalendarWidget x0) -> IO (Ptr (TQPaintEngine t0))) -> IO (FunPtr (Ptr (TQCalendarWidget x0) -> IO (Ptr (TQPaintEngine t0))))

foreign import ccall "wrapper" wrapSetHandler_QCalendarWidget8_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QCalendarWidgetSc a) (QCalendarWidget x0 -> IO (QPaintEngine t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QCalendarWidget8 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QCalendarWidget8_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QCalendarWidget_setHandler8 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQCalendarWidget x0) -> IO (Ptr (TQPaintEngine t0))
    setHandlerWrapper x0
      = do x0obj <- qCalendarWidgetFromPtr x0
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

instance QpaintEngine_h (QCalendarWidget ()) (()) where
 paintEngine_h x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCalendarWidget_paintEngine cobj_x0

foreign import ccall "qtc_QCalendarWidget_paintEngine" qtc_QCalendarWidget_paintEngine :: Ptr (TQCalendarWidget a) -> IO (Ptr (TQPaintEngine ()))

instance QpaintEngine_h (QCalendarWidgetSc a) (()) where
 paintEngine_h x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCalendarWidget_paintEngine cobj_x0

instance QpaintEvent_h (QCalendarWidget ()) ((QPaintEvent t1)) where
 paintEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCalendarWidget_paintEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QCalendarWidget_paintEvent" qtc_QCalendarWidget_paintEvent :: Ptr (TQCalendarWidget a) -> Ptr (TQPaintEvent t1) -> IO ()

instance QpaintEvent_h (QCalendarWidgetSc a) ((QPaintEvent t1)) where
 paintEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCalendarWidget_paintEvent cobj_x0 cobj_x1

instance QsetHandler (QCalendarWidget ()) (QCalendarWidget x0 -> Bool -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QCalendarWidget9 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QCalendarWidget9_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QCalendarWidget_setHandler9 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQCalendarWidget x0) -> CBool -> IO ()
    setHandlerWrapper x0 x1
      = do x0obj <- qCalendarWidgetFromPtr x0
           let x1bool = fromCBool x1
           if (objectIsNull x0obj)
            then return ()
            else _handler x0obj x1bool

    setHandlerWrapper_d :: Ptr fun -> Ptr () -> Ptr fun_d -> IO ()
    setHandlerWrapper_d funptr stptr funptr_d
      = do when (stptr/=ptrNull)
            (freeStablePtr (castPtrToStablePtr stptr))
           when (funptr/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr))
           when (funptr_d/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr_d))
           return ()

foreign import ccall "qtc_QCalendarWidget_setHandler9" qtc_QCalendarWidget_setHandler9 :: Ptr (TQCalendarWidget a) -> CWString -> Ptr (Ptr (TQCalendarWidget x0) -> CBool -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QCalendarWidget9 :: (Ptr (TQCalendarWidget x0) -> CBool -> IO ()) -> IO (FunPtr (Ptr (TQCalendarWidget x0) -> CBool -> IO ()))

foreign import ccall "wrapper" wrapSetHandler_QCalendarWidget9_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QCalendarWidgetSc a) (QCalendarWidget x0 -> Bool -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QCalendarWidget9 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QCalendarWidget9_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QCalendarWidget_setHandler9 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQCalendarWidget x0) -> CBool -> IO ()
    setHandlerWrapper x0 x1
      = do x0obj <- qCalendarWidgetFromPtr x0
           let x1bool = fromCBool x1
           if (objectIsNull x0obj)
            then return ()
            else _handler x0obj x1bool

    setHandlerWrapper_d :: Ptr fun -> Ptr () -> Ptr fun_d -> IO ()
    setHandlerWrapper_d funptr stptr funptr_d
      = do when (stptr/=ptrNull)
            (freeStablePtr (castPtrToStablePtr stptr))
           when (funptr/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr))
           when (funptr_d/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr_d))
           return ()

instance QsetVisible_h (QCalendarWidget ()) ((Bool)) where
 setVisible_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCalendarWidget_setVisible cobj_x0 (toCBool x1)

foreign import ccall "qtc_QCalendarWidget_setVisible" qtc_QCalendarWidget_setVisible :: Ptr (TQCalendarWidget a) -> CBool -> IO ()

instance QsetVisible_h (QCalendarWidgetSc a) ((Bool)) where
 setVisible_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCalendarWidget_setVisible cobj_x0 (toCBool x1)

instance QshowEvent_h (QCalendarWidget ()) ((QShowEvent t1)) where
 showEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCalendarWidget_showEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QCalendarWidget_showEvent" qtc_QCalendarWidget_showEvent :: Ptr (TQCalendarWidget a) -> Ptr (TQShowEvent t1) -> IO ()

instance QshowEvent_h (QCalendarWidgetSc a) ((QShowEvent t1)) where
 showEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCalendarWidget_showEvent cobj_x0 cobj_x1

instance QtabletEvent_h (QCalendarWidget ()) ((QTabletEvent t1)) where
 tabletEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCalendarWidget_tabletEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QCalendarWidget_tabletEvent" qtc_QCalendarWidget_tabletEvent :: Ptr (TQCalendarWidget a) -> Ptr (TQTabletEvent t1) -> IO ()

instance QtabletEvent_h (QCalendarWidgetSc a) ((QTabletEvent t1)) where
 tabletEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCalendarWidget_tabletEvent cobj_x0 cobj_x1

instance QwheelEvent_h (QCalendarWidget ()) ((QWheelEvent t1)) where
 wheelEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCalendarWidget_wheelEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QCalendarWidget_wheelEvent" qtc_QCalendarWidget_wheelEvent :: Ptr (TQCalendarWidget a) -> Ptr (TQWheelEvent t1) -> IO ()

instance QwheelEvent_h (QCalendarWidgetSc a) ((QWheelEvent t1)) where
 wheelEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCalendarWidget_wheelEvent cobj_x0 cobj_x1

instance QsetHandler (QCalendarWidget ()) (QCalendarWidget x0 -> QObject t1 -> QEvent t2 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QCalendarWidget10 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QCalendarWidget10_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QCalendarWidget_setHandler10 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQCalendarWidget x0) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO (CBool)
    setHandlerWrapper x0 x1 x2
      = do x0obj <- qCalendarWidgetFromPtr x0
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

foreign import ccall "qtc_QCalendarWidget_setHandler10" qtc_QCalendarWidget_setHandler10 :: Ptr (TQCalendarWidget a) -> CWString -> Ptr (Ptr (TQCalendarWidget x0) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO (CBool)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QCalendarWidget10 :: (Ptr (TQCalendarWidget x0) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO (CBool)) -> IO (FunPtr (Ptr (TQCalendarWidget x0) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO (CBool)))

foreign import ccall "wrapper" wrapSetHandler_QCalendarWidget10_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QCalendarWidgetSc a) (QCalendarWidget x0 -> QObject t1 -> QEvent t2 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QCalendarWidget10 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QCalendarWidget10_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QCalendarWidget_setHandler10 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQCalendarWidget x0) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO (CBool)
    setHandlerWrapper x0 x1 x2
      = do x0obj <- qCalendarWidgetFromPtr x0
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

instance QeventFilter_h (QCalendarWidget ()) ((QObject t1, QEvent t2)) where
 eventFilter_h x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QCalendarWidget_eventFilter cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QCalendarWidget_eventFilter" qtc_QCalendarWidget_eventFilter :: Ptr (TQCalendarWidget a) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO CBool

instance QeventFilter_h (QCalendarWidgetSc a) ((QObject t1, QEvent t2)) where
 eventFilter_h x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QCalendarWidget_eventFilter cobj_x0 cobj_x1 cobj_x2

