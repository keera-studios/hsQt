{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QErrorMessage_h.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:16
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QErrorMessage_h where

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

instance QunSetUserMethod (QErrorMessage ()) where
 unSetUserMethod qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QErrorMessage_unSetUserMethod cobj_qobj (toCInt 0) (toCInt evid)

foreign import ccall "qtc_QErrorMessage_unSetUserMethod" qtc_QErrorMessage_unSetUserMethod :: Ptr (TQErrorMessage a) -> CInt -> CInt -> IO (CBool)

instance QunSetUserMethod (QErrorMessageSc a) where
 unSetUserMethod qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QErrorMessage_unSetUserMethod cobj_qobj (toCInt 0) (toCInt evid)

instance QunSetUserMethodVariant (QErrorMessage ()) where
 unSetUserMethodVariant qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QErrorMessage_unSetUserMethod cobj_qobj (toCInt 1) (toCInt evid)

instance QunSetUserMethodVariant (QErrorMessageSc a) where
 unSetUserMethodVariant qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QErrorMessage_unSetUserMethod cobj_qobj (toCInt 1) (toCInt evid)

instance QunSetUserMethodVariantList (QErrorMessage ()) where
 unSetUserMethodVariantList qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QErrorMessage_unSetUserMethod cobj_qobj (toCInt 2) (toCInt evid)

instance QunSetUserMethodVariantList (QErrorMessageSc a) where
 unSetUserMethodVariantList qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QErrorMessage_unSetUserMethod cobj_qobj (toCInt 2) (toCInt evid)

instance QsetUserMethod (QErrorMessage ()) (QErrorMessage x0 -> IO ()) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethod_QErrorMessage setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethod_QErrorMessage_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QErrorMessage_setUserMethod cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQErrorMessage x0) -> IO ()
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

foreign import ccall "qtc_QErrorMessage_setUserMethod" qtc_QErrorMessage_setUserMethod :: Ptr (TQErrorMessage a) -> CInt -> Ptr (Ptr (TQErrorMessage x0) -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetUserMethod_QErrorMessage :: (Ptr (TQErrorMessage x0) -> IO ()) -> IO (FunPtr (Ptr (TQErrorMessage x0) -> IO ()))

foreign import ccall "wrapper" wrapSetUserMethod_QErrorMessage_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetUserMethod (QErrorMessageSc a) (QErrorMessage x0 -> IO ()) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethod_QErrorMessage setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethod_QErrorMessage_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QErrorMessage_setUserMethod cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQErrorMessage x0) -> IO ()
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

instance QsetUserMethod (QErrorMessage ()) (QErrorMessage x0 -> QVariant () -> IO (QVariant ())) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethodVariant_QErrorMessage setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethodVariant_QErrorMessage_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QErrorMessage_setUserMethodVariant cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQErrorMessage x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))
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

foreign import ccall "qtc_QErrorMessage_setUserMethodVariant" qtc_QErrorMessage_setUserMethodVariant :: Ptr (TQErrorMessage a) -> CInt -> Ptr (Ptr (TQErrorMessage x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetUserMethodVariant_QErrorMessage :: (Ptr (TQErrorMessage x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))) -> IO (FunPtr (Ptr (TQErrorMessage x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))))

foreign import ccall "wrapper" wrapSetUserMethodVariant_QErrorMessage_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetUserMethod (QErrorMessageSc a) (QErrorMessage x0 -> QVariant () -> IO (QVariant ())) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethodVariant_QErrorMessage setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethodVariant_QErrorMessage_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QErrorMessage_setUserMethodVariant cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQErrorMessage x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))
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

instance QunSetHandler (QErrorMessage ()) where 
 unSetHandler qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withCWString evid $ \cstr_evid ->
    qtc_QErrorMessage_unSetHandler cobj_qobj cstr_evid

foreign import ccall "qtc_QErrorMessage_unSetHandler" qtc_QErrorMessage_unSetHandler :: Ptr (TQErrorMessage a) -> CWString -> IO (CBool)

instance QunSetHandler (QErrorMessageSc a) where 
 unSetHandler qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withCWString evid $ \cstr_evid ->
    qtc_QErrorMessage_unSetHandler cobj_qobj cstr_evid

instance QsetHandler (QErrorMessage ()) (QErrorMessage x0 -> QEvent t1 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QErrorMessage1 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QErrorMessage1_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QErrorMessage_setHandler1 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQErrorMessage x0) -> Ptr (TQEvent t1) -> IO ()
    setHandlerWrapper x0 x1
      = do x0obj <- qErrorMessageFromPtr x0
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

foreign import ccall "qtc_QErrorMessage_setHandler1" qtc_QErrorMessage_setHandler1 :: Ptr (TQErrorMessage a) -> CWString -> Ptr (Ptr (TQErrorMessage x0) -> Ptr (TQEvent t1) -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QErrorMessage1 :: (Ptr (TQErrorMessage x0) -> Ptr (TQEvent t1) -> IO ()) -> IO (FunPtr (Ptr (TQErrorMessage x0) -> Ptr (TQEvent t1) -> IO ()))

foreign import ccall "wrapper" wrapSetHandler_QErrorMessage1_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QErrorMessageSc a) (QErrorMessage x0 -> QEvent t1 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QErrorMessage1 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QErrorMessage1_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QErrorMessage_setHandler1 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQErrorMessage x0) -> Ptr (TQEvent t1) -> IO ()
    setHandlerWrapper x0 x1
      = do x0obj <- qErrorMessageFromPtr x0
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

instance QchangeEvent_h (QErrorMessage ()) ((QEvent t1)) where
 changeEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QErrorMessage_changeEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QErrorMessage_changeEvent" qtc_QErrorMessage_changeEvent :: Ptr (TQErrorMessage a) -> Ptr (TQEvent t1) -> IO ()

instance QchangeEvent_h (QErrorMessageSc a) ((QEvent t1)) where
 changeEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QErrorMessage_changeEvent cobj_x0 cobj_x1

instance QsetHandler (QErrorMessage ()) (QErrorMessage x0 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QErrorMessage2 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QErrorMessage2_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QErrorMessage_setHandler2 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQErrorMessage x0) -> IO ()
    setHandlerWrapper x0
      = do x0obj <- qErrorMessageFromPtr x0
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

foreign import ccall "qtc_QErrorMessage_setHandler2" qtc_QErrorMessage_setHandler2 :: Ptr (TQErrorMessage a) -> CWString -> Ptr (Ptr (TQErrorMessage x0) -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QErrorMessage2 :: (Ptr (TQErrorMessage x0) -> IO ()) -> IO (FunPtr (Ptr (TQErrorMessage x0) -> IO ()))

foreign import ccall "wrapper" wrapSetHandler_QErrorMessage2_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QErrorMessageSc a) (QErrorMessage x0 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QErrorMessage2 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QErrorMessage2_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QErrorMessage_setHandler2 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQErrorMessage x0) -> IO ()
    setHandlerWrapper x0
      = do x0obj <- qErrorMessageFromPtr x0
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

instance Qaccept_h (QErrorMessage ()) (()) where
 accept_h x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QErrorMessage_accept cobj_x0

foreign import ccall "qtc_QErrorMessage_accept" qtc_QErrorMessage_accept :: Ptr (TQErrorMessage a) -> IO ()

instance Qaccept_h (QErrorMessageSc a) (()) where
 accept_h x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QErrorMessage_accept cobj_x0

instance QcloseEvent_h (QErrorMessage ()) ((QCloseEvent t1)) where
 closeEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QErrorMessage_closeEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QErrorMessage_closeEvent" qtc_QErrorMessage_closeEvent :: Ptr (TQErrorMessage a) -> Ptr (TQCloseEvent t1) -> IO ()

instance QcloseEvent_h (QErrorMessageSc a) ((QCloseEvent t1)) where
 closeEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QErrorMessage_closeEvent cobj_x0 cobj_x1

instance QcontextMenuEvent_h (QErrorMessage ()) ((QContextMenuEvent t1)) where
 contextMenuEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QErrorMessage_contextMenuEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QErrorMessage_contextMenuEvent" qtc_QErrorMessage_contextMenuEvent :: Ptr (TQErrorMessage a) -> Ptr (TQContextMenuEvent t1) -> IO ()

instance QcontextMenuEvent_h (QErrorMessageSc a) ((QContextMenuEvent t1)) where
 contextMenuEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QErrorMessage_contextMenuEvent cobj_x0 cobj_x1

instance QsetHandler (QErrorMessage ()) (QErrorMessage x0 -> QEvent t1 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QErrorMessage3 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QErrorMessage3_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QErrorMessage_setHandler3 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQErrorMessage x0) -> Ptr (TQEvent t1) -> IO (CBool)
    setHandlerWrapper x0 x1
      = do x0obj <- qErrorMessageFromPtr x0
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

foreign import ccall "qtc_QErrorMessage_setHandler3" qtc_QErrorMessage_setHandler3 :: Ptr (TQErrorMessage a) -> CWString -> Ptr (Ptr (TQErrorMessage x0) -> Ptr (TQEvent t1) -> IO (CBool)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QErrorMessage3 :: (Ptr (TQErrorMessage x0) -> Ptr (TQEvent t1) -> IO (CBool)) -> IO (FunPtr (Ptr (TQErrorMessage x0) -> Ptr (TQEvent t1) -> IO (CBool)))

foreign import ccall "wrapper" wrapSetHandler_QErrorMessage3_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QErrorMessageSc a) (QErrorMessage x0 -> QEvent t1 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QErrorMessage3 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QErrorMessage3_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QErrorMessage_setHandler3 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQErrorMessage x0) -> Ptr (TQEvent t1) -> IO (CBool)
    setHandlerWrapper x0 x1
      = do x0obj <- qErrorMessageFromPtr x0
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

instance Qevent_h (QErrorMessage ()) ((QEvent t1)) where
 event_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QErrorMessage_event cobj_x0 cobj_x1

foreign import ccall "qtc_QErrorMessage_event" qtc_QErrorMessage_event :: Ptr (TQErrorMessage a) -> Ptr (TQEvent t1) -> IO CBool

instance Qevent_h (QErrorMessageSc a) ((QEvent t1)) where
 event_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QErrorMessage_event cobj_x0 cobj_x1

instance QkeyPressEvent_h (QErrorMessage ()) ((QKeyEvent t1)) where
 keyPressEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QErrorMessage_keyPressEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QErrorMessage_keyPressEvent" qtc_QErrorMessage_keyPressEvent :: Ptr (TQErrorMessage a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyPressEvent_h (QErrorMessageSc a) ((QKeyEvent t1)) where
 keyPressEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QErrorMessage_keyPressEvent cobj_x0 cobj_x1

instance QsetHandler (QErrorMessage ()) (QErrorMessage x0 -> IO (QSize t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QErrorMessage4 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QErrorMessage4_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QErrorMessage_setHandler4 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQErrorMessage x0) -> IO (Ptr (TQSize t0))
    setHandlerWrapper x0
      = do x0obj <- qErrorMessageFromPtr x0
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

foreign import ccall "qtc_QErrorMessage_setHandler4" qtc_QErrorMessage_setHandler4 :: Ptr (TQErrorMessage a) -> CWString -> Ptr (Ptr (TQErrorMessage x0) -> IO (Ptr (TQSize t0))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QErrorMessage4 :: (Ptr (TQErrorMessage x0) -> IO (Ptr (TQSize t0))) -> IO (FunPtr (Ptr (TQErrorMessage x0) -> IO (Ptr (TQSize t0))))

foreign import ccall "wrapper" wrapSetHandler_QErrorMessage4_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QErrorMessageSc a) (QErrorMessage x0 -> IO (QSize t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QErrorMessage4 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QErrorMessage4_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QErrorMessage_setHandler4 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQErrorMessage x0) -> IO (Ptr (TQSize t0))
    setHandlerWrapper x0
      = do x0obj <- qErrorMessageFromPtr x0
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

instance QqminimumSizeHint_h (QErrorMessage ()) (()) where
 qminimumSizeHint_h x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QErrorMessage_minimumSizeHint cobj_x0

foreign import ccall "qtc_QErrorMessage_minimumSizeHint" qtc_QErrorMessage_minimumSizeHint :: Ptr (TQErrorMessage a) -> IO (Ptr (TQSize ()))

instance QqminimumSizeHint_h (QErrorMessageSc a) (()) where
 qminimumSizeHint_h x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QErrorMessage_minimumSizeHint cobj_x0

instance QminimumSizeHint_h (QErrorMessage ()) (()) where
 minimumSizeHint_h x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QErrorMessage_minimumSizeHint_qth cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QErrorMessage_minimumSizeHint_qth" qtc_QErrorMessage_minimumSizeHint_qth :: Ptr (TQErrorMessage a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QminimumSizeHint_h (QErrorMessageSc a) (()) where
 minimumSizeHint_h x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QErrorMessage_minimumSizeHint_qth cobj_x0 csize_ret_w csize_ret_h

instance Qreject_h (QErrorMessage ()) (()) where
 reject_h x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QErrorMessage_reject cobj_x0

foreign import ccall "qtc_QErrorMessage_reject" qtc_QErrorMessage_reject :: Ptr (TQErrorMessage a) -> IO ()

instance Qreject_h (QErrorMessageSc a) (()) where
 reject_h x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QErrorMessage_reject cobj_x0

instance QresizeEvent_h (QErrorMessage ()) ((QResizeEvent t1)) where
 resizeEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QErrorMessage_resizeEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QErrorMessage_resizeEvent" qtc_QErrorMessage_resizeEvent :: Ptr (TQErrorMessage a) -> Ptr (TQResizeEvent t1) -> IO ()

instance QresizeEvent_h (QErrorMessageSc a) ((QResizeEvent t1)) where
 resizeEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QErrorMessage_resizeEvent cobj_x0 cobj_x1

instance QsetHandler (QErrorMessage ()) (QErrorMessage x0 -> Bool -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QErrorMessage5 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QErrorMessage5_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QErrorMessage_setHandler5 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQErrorMessage x0) -> CBool -> IO ()
    setHandlerWrapper x0 x1
      = do x0obj <- qErrorMessageFromPtr x0
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

foreign import ccall "qtc_QErrorMessage_setHandler5" qtc_QErrorMessage_setHandler5 :: Ptr (TQErrorMessage a) -> CWString -> Ptr (Ptr (TQErrorMessage x0) -> CBool -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QErrorMessage5 :: (Ptr (TQErrorMessage x0) -> CBool -> IO ()) -> IO (FunPtr (Ptr (TQErrorMessage x0) -> CBool -> IO ()))

foreign import ccall "wrapper" wrapSetHandler_QErrorMessage5_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QErrorMessageSc a) (QErrorMessage x0 -> Bool -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QErrorMessage5 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QErrorMessage5_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QErrorMessage_setHandler5 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQErrorMessage x0) -> CBool -> IO ()
    setHandlerWrapper x0 x1
      = do x0obj <- qErrorMessageFromPtr x0
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

instance QsetVisible_h (QErrorMessage ()) ((Bool)) where
 setVisible_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QErrorMessage_setVisible cobj_x0 (toCBool x1)

foreign import ccall "qtc_QErrorMessage_setVisible" qtc_QErrorMessage_setVisible :: Ptr (TQErrorMessage a) -> CBool -> IO ()

instance QsetVisible_h (QErrorMessageSc a) ((Bool)) where
 setVisible_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QErrorMessage_setVisible cobj_x0 (toCBool x1)

instance QshowEvent_h (QErrorMessage ()) ((QShowEvent t1)) where
 showEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QErrorMessage_showEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QErrorMessage_showEvent" qtc_QErrorMessage_showEvent :: Ptr (TQErrorMessage a) -> Ptr (TQShowEvent t1) -> IO ()

instance QshowEvent_h (QErrorMessageSc a) ((QShowEvent t1)) where
 showEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QErrorMessage_showEvent cobj_x0 cobj_x1

instance QqsizeHint_h (QErrorMessage ()) (()) where
 qsizeHint_h x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QErrorMessage_sizeHint cobj_x0

foreign import ccall "qtc_QErrorMessage_sizeHint" qtc_QErrorMessage_sizeHint :: Ptr (TQErrorMessage a) -> IO (Ptr (TQSize ()))

instance QqsizeHint_h (QErrorMessageSc a) (()) where
 qsizeHint_h x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QErrorMessage_sizeHint cobj_x0

instance QsizeHint_h (QErrorMessage ()) (()) where
 sizeHint_h x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QErrorMessage_sizeHint_qth cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QErrorMessage_sizeHint_qth" qtc_QErrorMessage_sizeHint_qth :: Ptr (TQErrorMessage a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QsizeHint_h (QErrorMessageSc a) (()) where
 sizeHint_h x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QErrorMessage_sizeHint_qth cobj_x0 csize_ret_w csize_ret_h

instance QactionEvent_h (QErrorMessage ()) ((QActionEvent t1)) where
 actionEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QErrorMessage_actionEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QErrorMessage_actionEvent" qtc_QErrorMessage_actionEvent :: Ptr (TQErrorMessage a) -> Ptr (TQActionEvent t1) -> IO ()

instance QactionEvent_h (QErrorMessageSc a) ((QActionEvent t1)) where
 actionEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QErrorMessage_actionEvent cobj_x0 cobj_x1

instance QsetHandler (QErrorMessage ()) (QErrorMessage x0 -> IO (Int)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QErrorMessage6 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QErrorMessage6_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QErrorMessage_setHandler6 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQErrorMessage x0) -> IO (CInt)
    setHandlerWrapper x0
      = do x0obj <- qErrorMessageFromPtr x0
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

foreign import ccall "qtc_QErrorMessage_setHandler6" qtc_QErrorMessage_setHandler6 :: Ptr (TQErrorMessage a) -> CWString -> Ptr (Ptr (TQErrorMessage x0) -> IO (CInt)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QErrorMessage6 :: (Ptr (TQErrorMessage x0) -> IO (CInt)) -> IO (FunPtr (Ptr (TQErrorMessage x0) -> IO (CInt)))

foreign import ccall "wrapper" wrapSetHandler_QErrorMessage6_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QErrorMessageSc a) (QErrorMessage x0 -> IO (Int)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QErrorMessage6 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QErrorMessage6_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QErrorMessage_setHandler6 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQErrorMessage x0) -> IO (CInt)
    setHandlerWrapper x0
      = do x0obj <- qErrorMessageFromPtr x0
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

instance QdevType_h (QErrorMessage ()) (()) where
 devType_h x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QErrorMessage_devType cobj_x0

foreign import ccall "qtc_QErrorMessage_devType" qtc_QErrorMessage_devType :: Ptr (TQErrorMessage a) -> IO CInt

instance QdevType_h (QErrorMessageSc a) (()) where
 devType_h x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QErrorMessage_devType cobj_x0

instance QdragEnterEvent_h (QErrorMessage ()) ((QDragEnterEvent t1)) where
 dragEnterEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QErrorMessage_dragEnterEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QErrorMessage_dragEnterEvent" qtc_QErrorMessage_dragEnterEvent :: Ptr (TQErrorMessage a) -> Ptr (TQDragEnterEvent t1) -> IO ()

instance QdragEnterEvent_h (QErrorMessageSc a) ((QDragEnterEvent t1)) where
 dragEnterEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QErrorMessage_dragEnterEvent cobj_x0 cobj_x1

instance QdragLeaveEvent_h (QErrorMessage ()) ((QDragLeaveEvent t1)) where
 dragLeaveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QErrorMessage_dragLeaveEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QErrorMessage_dragLeaveEvent" qtc_QErrorMessage_dragLeaveEvent :: Ptr (TQErrorMessage a) -> Ptr (TQDragLeaveEvent t1) -> IO ()

instance QdragLeaveEvent_h (QErrorMessageSc a) ((QDragLeaveEvent t1)) where
 dragLeaveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QErrorMessage_dragLeaveEvent cobj_x0 cobj_x1

instance QdragMoveEvent_h (QErrorMessage ()) ((QDragMoveEvent t1)) where
 dragMoveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QErrorMessage_dragMoveEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QErrorMessage_dragMoveEvent" qtc_QErrorMessage_dragMoveEvent :: Ptr (TQErrorMessage a) -> Ptr (TQDragMoveEvent t1) -> IO ()

instance QdragMoveEvent_h (QErrorMessageSc a) ((QDragMoveEvent t1)) where
 dragMoveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QErrorMessage_dragMoveEvent cobj_x0 cobj_x1

instance QdropEvent_h (QErrorMessage ()) ((QDropEvent t1)) where
 dropEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QErrorMessage_dropEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QErrorMessage_dropEvent" qtc_QErrorMessage_dropEvent :: Ptr (TQErrorMessage a) -> Ptr (TQDropEvent t1) -> IO ()

instance QdropEvent_h (QErrorMessageSc a) ((QDropEvent t1)) where
 dropEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QErrorMessage_dropEvent cobj_x0 cobj_x1

instance QenterEvent_h (QErrorMessage ()) ((QEvent t1)) where
 enterEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QErrorMessage_enterEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QErrorMessage_enterEvent" qtc_QErrorMessage_enterEvent :: Ptr (TQErrorMessage a) -> Ptr (TQEvent t1) -> IO ()

instance QenterEvent_h (QErrorMessageSc a) ((QEvent t1)) where
 enterEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QErrorMessage_enterEvent cobj_x0 cobj_x1

instance QfocusInEvent_h (QErrorMessage ()) ((QFocusEvent t1)) where
 focusInEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QErrorMessage_focusInEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QErrorMessage_focusInEvent" qtc_QErrorMessage_focusInEvent :: Ptr (TQErrorMessage a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusInEvent_h (QErrorMessageSc a) ((QFocusEvent t1)) where
 focusInEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QErrorMessage_focusInEvent cobj_x0 cobj_x1

instance QfocusOutEvent_h (QErrorMessage ()) ((QFocusEvent t1)) where
 focusOutEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QErrorMessage_focusOutEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QErrorMessage_focusOutEvent" qtc_QErrorMessage_focusOutEvent :: Ptr (TQErrorMessage a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusOutEvent_h (QErrorMessageSc a) ((QFocusEvent t1)) where
 focusOutEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QErrorMessage_focusOutEvent cobj_x0 cobj_x1

instance QsetHandler (QErrorMessage ()) (QErrorMessage x0 -> Int -> IO (Int)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QErrorMessage7 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QErrorMessage7_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QErrorMessage_setHandler7 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQErrorMessage x0) -> CInt -> IO (CInt)
    setHandlerWrapper x0 x1
      = do x0obj <- qErrorMessageFromPtr x0
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

foreign import ccall "qtc_QErrorMessage_setHandler7" qtc_QErrorMessage_setHandler7 :: Ptr (TQErrorMessage a) -> CWString -> Ptr (Ptr (TQErrorMessage x0) -> CInt -> IO (CInt)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QErrorMessage7 :: (Ptr (TQErrorMessage x0) -> CInt -> IO (CInt)) -> IO (FunPtr (Ptr (TQErrorMessage x0) -> CInt -> IO (CInt)))

foreign import ccall "wrapper" wrapSetHandler_QErrorMessage7_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QErrorMessageSc a) (QErrorMessage x0 -> Int -> IO (Int)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QErrorMessage7 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QErrorMessage7_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QErrorMessage_setHandler7 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQErrorMessage x0) -> CInt -> IO (CInt)
    setHandlerWrapper x0 x1
      = do x0obj <- qErrorMessageFromPtr x0
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

instance QheightForWidth_h (QErrorMessage ()) ((Int)) where
 heightForWidth_h x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QErrorMessage_heightForWidth cobj_x0 (toCInt x1)

foreign import ccall "qtc_QErrorMessage_heightForWidth" qtc_QErrorMessage_heightForWidth :: Ptr (TQErrorMessage a) -> CInt -> IO CInt

instance QheightForWidth_h (QErrorMessageSc a) ((Int)) where
 heightForWidth_h x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QErrorMessage_heightForWidth cobj_x0 (toCInt x1)

instance QhideEvent_h (QErrorMessage ()) ((QHideEvent t1)) where
 hideEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QErrorMessage_hideEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QErrorMessage_hideEvent" qtc_QErrorMessage_hideEvent :: Ptr (TQErrorMessage a) -> Ptr (TQHideEvent t1) -> IO ()

instance QhideEvent_h (QErrorMessageSc a) ((QHideEvent t1)) where
 hideEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QErrorMessage_hideEvent cobj_x0 cobj_x1

instance QsetHandler (QErrorMessage ()) (QErrorMessage x0 -> InputMethodQuery -> IO (QVariant t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QErrorMessage8 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QErrorMessage8_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QErrorMessage_setHandler8 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQErrorMessage x0) -> CLong -> IO (Ptr (TQVariant t0))
    setHandlerWrapper x0 x1
      = do x0obj <- qErrorMessageFromPtr x0
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

foreign import ccall "qtc_QErrorMessage_setHandler8" qtc_QErrorMessage_setHandler8 :: Ptr (TQErrorMessage a) -> CWString -> Ptr (Ptr (TQErrorMessage x0) -> CLong -> IO (Ptr (TQVariant t0))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QErrorMessage8 :: (Ptr (TQErrorMessage x0) -> CLong -> IO (Ptr (TQVariant t0))) -> IO (FunPtr (Ptr (TQErrorMessage x0) -> CLong -> IO (Ptr (TQVariant t0))))

foreign import ccall "wrapper" wrapSetHandler_QErrorMessage8_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QErrorMessageSc a) (QErrorMessage x0 -> InputMethodQuery -> IO (QVariant t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QErrorMessage8 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QErrorMessage8_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QErrorMessage_setHandler8 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQErrorMessage x0) -> CLong -> IO (Ptr (TQVariant t0))
    setHandlerWrapper x0 x1
      = do x0obj <- qErrorMessageFromPtr x0
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

instance QinputMethodQuery_h (QErrorMessage ()) ((InputMethodQuery)) where
 inputMethodQuery_h x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QErrorMessage_inputMethodQuery cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QErrorMessage_inputMethodQuery" qtc_QErrorMessage_inputMethodQuery :: Ptr (TQErrorMessage a) -> CLong -> IO (Ptr (TQVariant ()))

instance QinputMethodQuery_h (QErrorMessageSc a) ((InputMethodQuery)) where
 inputMethodQuery_h x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QErrorMessage_inputMethodQuery cobj_x0 (toCLong $ qEnum_toInt x1)

instance QkeyReleaseEvent_h (QErrorMessage ()) ((QKeyEvent t1)) where
 keyReleaseEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QErrorMessage_keyReleaseEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QErrorMessage_keyReleaseEvent" qtc_QErrorMessage_keyReleaseEvent :: Ptr (TQErrorMessage a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyReleaseEvent_h (QErrorMessageSc a) ((QKeyEvent t1)) where
 keyReleaseEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QErrorMessage_keyReleaseEvent cobj_x0 cobj_x1

instance QleaveEvent_h (QErrorMessage ()) ((QEvent t1)) where
 leaveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QErrorMessage_leaveEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QErrorMessage_leaveEvent" qtc_QErrorMessage_leaveEvent :: Ptr (TQErrorMessage a) -> Ptr (TQEvent t1) -> IO ()

instance QleaveEvent_h (QErrorMessageSc a) ((QEvent t1)) where
 leaveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QErrorMessage_leaveEvent cobj_x0 cobj_x1

instance QmouseDoubleClickEvent_h (QErrorMessage ()) ((QMouseEvent t1)) where
 mouseDoubleClickEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QErrorMessage_mouseDoubleClickEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QErrorMessage_mouseDoubleClickEvent" qtc_QErrorMessage_mouseDoubleClickEvent :: Ptr (TQErrorMessage a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseDoubleClickEvent_h (QErrorMessageSc a) ((QMouseEvent t1)) where
 mouseDoubleClickEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QErrorMessage_mouseDoubleClickEvent cobj_x0 cobj_x1

instance QmouseMoveEvent_h (QErrorMessage ()) ((QMouseEvent t1)) where
 mouseMoveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QErrorMessage_mouseMoveEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QErrorMessage_mouseMoveEvent" qtc_QErrorMessage_mouseMoveEvent :: Ptr (TQErrorMessage a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseMoveEvent_h (QErrorMessageSc a) ((QMouseEvent t1)) where
 mouseMoveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QErrorMessage_mouseMoveEvent cobj_x0 cobj_x1

instance QmousePressEvent_h (QErrorMessage ()) ((QMouseEvent t1)) where
 mousePressEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QErrorMessage_mousePressEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QErrorMessage_mousePressEvent" qtc_QErrorMessage_mousePressEvent :: Ptr (TQErrorMessage a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmousePressEvent_h (QErrorMessageSc a) ((QMouseEvent t1)) where
 mousePressEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QErrorMessage_mousePressEvent cobj_x0 cobj_x1

instance QmouseReleaseEvent_h (QErrorMessage ()) ((QMouseEvent t1)) where
 mouseReleaseEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QErrorMessage_mouseReleaseEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QErrorMessage_mouseReleaseEvent" qtc_QErrorMessage_mouseReleaseEvent :: Ptr (TQErrorMessage a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseReleaseEvent_h (QErrorMessageSc a) ((QMouseEvent t1)) where
 mouseReleaseEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QErrorMessage_mouseReleaseEvent cobj_x0 cobj_x1

instance QmoveEvent_h (QErrorMessage ()) ((QMoveEvent t1)) where
 moveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QErrorMessage_moveEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QErrorMessage_moveEvent" qtc_QErrorMessage_moveEvent :: Ptr (TQErrorMessage a) -> Ptr (TQMoveEvent t1) -> IO ()

instance QmoveEvent_h (QErrorMessageSc a) ((QMoveEvent t1)) where
 moveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QErrorMessage_moveEvent cobj_x0 cobj_x1

instance QsetHandler (QErrorMessage ()) (QErrorMessage x0 -> IO (QPaintEngine t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QErrorMessage9 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QErrorMessage9_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QErrorMessage_setHandler9 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQErrorMessage x0) -> IO (Ptr (TQPaintEngine t0))
    setHandlerWrapper x0
      = do x0obj <- qErrorMessageFromPtr x0
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

foreign import ccall "qtc_QErrorMessage_setHandler9" qtc_QErrorMessage_setHandler9 :: Ptr (TQErrorMessage a) -> CWString -> Ptr (Ptr (TQErrorMessage x0) -> IO (Ptr (TQPaintEngine t0))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QErrorMessage9 :: (Ptr (TQErrorMessage x0) -> IO (Ptr (TQPaintEngine t0))) -> IO (FunPtr (Ptr (TQErrorMessage x0) -> IO (Ptr (TQPaintEngine t0))))

foreign import ccall "wrapper" wrapSetHandler_QErrorMessage9_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QErrorMessageSc a) (QErrorMessage x0 -> IO (QPaintEngine t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QErrorMessage9 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QErrorMessage9_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QErrorMessage_setHandler9 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQErrorMessage x0) -> IO (Ptr (TQPaintEngine t0))
    setHandlerWrapper x0
      = do x0obj <- qErrorMessageFromPtr x0
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

instance QpaintEngine_h (QErrorMessage ()) (()) where
 paintEngine_h x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QErrorMessage_paintEngine cobj_x0

foreign import ccall "qtc_QErrorMessage_paintEngine" qtc_QErrorMessage_paintEngine :: Ptr (TQErrorMessage a) -> IO (Ptr (TQPaintEngine ()))

instance QpaintEngine_h (QErrorMessageSc a) (()) where
 paintEngine_h x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QErrorMessage_paintEngine cobj_x0

instance QpaintEvent_h (QErrorMessage ()) ((QPaintEvent t1)) where
 paintEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QErrorMessage_paintEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QErrorMessage_paintEvent" qtc_QErrorMessage_paintEvent :: Ptr (TQErrorMessage a) -> Ptr (TQPaintEvent t1) -> IO ()

instance QpaintEvent_h (QErrorMessageSc a) ((QPaintEvent t1)) where
 paintEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QErrorMessage_paintEvent cobj_x0 cobj_x1

instance QtabletEvent_h (QErrorMessage ()) ((QTabletEvent t1)) where
 tabletEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QErrorMessage_tabletEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QErrorMessage_tabletEvent" qtc_QErrorMessage_tabletEvent :: Ptr (TQErrorMessage a) -> Ptr (TQTabletEvent t1) -> IO ()

instance QtabletEvent_h (QErrorMessageSc a) ((QTabletEvent t1)) where
 tabletEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QErrorMessage_tabletEvent cobj_x0 cobj_x1

instance QwheelEvent_h (QErrorMessage ()) ((QWheelEvent t1)) where
 wheelEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QErrorMessage_wheelEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QErrorMessage_wheelEvent" qtc_QErrorMessage_wheelEvent :: Ptr (TQErrorMessage a) -> Ptr (TQWheelEvent t1) -> IO ()

instance QwheelEvent_h (QErrorMessageSc a) ((QWheelEvent t1)) where
 wheelEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QErrorMessage_wheelEvent cobj_x0 cobj_x1

