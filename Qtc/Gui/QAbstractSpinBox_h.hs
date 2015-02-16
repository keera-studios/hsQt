{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QAbstractSpinBox_h.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:26
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QAbstractSpinBox_h where

import Foreign.C.Types
import Qtc.Enums.Base
import Qtc.Enums.Gui.QPaintDevice
import Qtc.Enums.Core.Qt
import Qtc.Enums.Gui.QAbstractSpinBox

import Qtc.Classes.Base
import Qtc.Classes.Qccs_h
import Qtc.Classes.Core_h
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core
import Qtc.Classes.Gui_h
import Qtc.ClassTypes.Gui
import Foreign.Marshal.Array

instance QunSetUserMethod (QAbstractSpinBox ()) where
 unSetUserMethod qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QAbstractSpinBox_unSetUserMethod cobj_qobj (toCInt 0) (toCInt evid)

foreign import ccall "qtc_QAbstractSpinBox_unSetUserMethod" qtc_QAbstractSpinBox_unSetUserMethod :: Ptr (TQAbstractSpinBox a) -> CInt -> CInt -> IO (CBool)

instance QunSetUserMethod (QAbstractSpinBoxSc a) where
 unSetUserMethod qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QAbstractSpinBox_unSetUserMethod cobj_qobj (toCInt 0) (toCInt evid)

instance QunSetUserMethodVariant (QAbstractSpinBox ()) where
 unSetUserMethodVariant qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QAbstractSpinBox_unSetUserMethod cobj_qobj (toCInt 1) (toCInt evid)

instance QunSetUserMethodVariant (QAbstractSpinBoxSc a) where
 unSetUserMethodVariant qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QAbstractSpinBox_unSetUserMethod cobj_qobj (toCInt 1) (toCInt evid)

instance QunSetUserMethodVariantList (QAbstractSpinBox ()) where
 unSetUserMethodVariantList qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QAbstractSpinBox_unSetUserMethod cobj_qobj (toCInt 2) (toCInt evid)

instance QunSetUserMethodVariantList (QAbstractSpinBoxSc a) where
 unSetUserMethodVariantList qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QAbstractSpinBox_unSetUserMethod cobj_qobj (toCInt 2) (toCInt evid)

instance QsetUserMethod (QAbstractSpinBox ()) (QAbstractSpinBox x0 -> IO ()) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethod_QAbstractSpinBox setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethod_QAbstractSpinBox_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QAbstractSpinBox_setUserMethod cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQAbstractSpinBox x0) -> IO ()
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

foreign import ccall "qtc_QAbstractSpinBox_setUserMethod" qtc_QAbstractSpinBox_setUserMethod :: Ptr (TQAbstractSpinBox a) -> CInt -> Ptr (Ptr (TQAbstractSpinBox x0) -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetUserMethod_QAbstractSpinBox :: (Ptr (TQAbstractSpinBox x0) -> IO ()) -> IO (FunPtr (Ptr (TQAbstractSpinBox x0) -> IO ()))

foreign import ccall "wrapper" wrapSetUserMethod_QAbstractSpinBox_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetUserMethod (QAbstractSpinBoxSc a) (QAbstractSpinBox x0 -> IO ()) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethod_QAbstractSpinBox setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethod_QAbstractSpinBox_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QAbstractSpinBox_setUserMethod cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQAbstractSpinBox x0) -> IO ()
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

instance QsetUserMethod (QAbstractSpinBox ()) (QAbstractSpinBox x0 -> QVariant () -> IO (QVariant ())) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethodVariant_QAbstractSpinBox setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethodVariant_QAbstractSpinBox_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QAbstractSpinBox_setUserMethodVariant cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQAbstractSpinBox x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))
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

foreign import ccall "qtc_QAbstractSpinBox_setUserMethodVariant" qtc_QAbstractSpinBox_setUserMethodVariant :: Ptr (TQAbstractSpinBox a) -> CInt -> Ptr (Ptr (TQAbstractSpinBox x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetUserMethodVariant_QAbstractSpinBox :: (Ptr (TQAbstractSpinBox x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))) -> IO (FunPtr (Ptr (TQAbstractSpinBox x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))))

foreign import ccall "wrapper" wrapSetUserMethodVariant_QAbstractSpinBox_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetUserMethod (QAbstractSpinBoxSc a) (QAbstractSpinBox x0 -> QVariant () -> IO (QVariant ())) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethodVariant_QAbstractSpinBox setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethodVariant_QAbstractSpinBox_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QAbstractSpinBox_setUserMethodVariant cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQAbstractSpinBox x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))
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

instance QunSetHandler (QAbstractSpinBox ()) where 
 unSetHandler qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withCWString evid $ \cstr_evid ->
    qtc_QAbstractSpinBox_unSetHandler cobj_qobj cstr_evid

foreign import ccall "qtc_QAbstractSpinBox_unSetHandler" qtc_QAbstractSpinBox_unSetHandler :: Ptr (TQAbstractSpinBox a) -> CWString -> IO (CBool)

instance QunSetHandler (QAbstractSpinBoxSc a) where 
 unSetHandler qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withCWString evid $ \cstr_evid ->
    qtc_QAbstractSpinBox_unSetHandler cobj_qobj cstr_evid

instance QsetHandler (QAbstractSpinBox ()) (QAbstractSpinBox x0 -> QEvent t1 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractSpinBox1 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractSpinBox1_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractSpinBox_setHandler1 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractSpinBox x0) -> Ptr (TQEvent t1) -> IO ()
    setHandlerWrapper x0 x1
      = do x0obj <- qAbstractSpinBoxFromPtr x0
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

foreign import ccall "qtc_QAbstractSpinBox_setHandler1" qtc_QAbstractSpinBox_setHandler1 :: Ptr (TQAbstractSpinBox a) -> CWString -> Ptr (Ptr (TQAbstractSpinBox x0) -> Ptr (TQEvent t1) -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QAbstractSpinBox1 :: (Ptr (TQAbstractSpinBox x0) -> Ptr (TQEvent t1) -> IO ()) -> IO (FunPtr (Ptr (TQAbstractSpinBox x0) -> Ptr (TQEvent t1) -> IO ()))

foreign import ccall "wrapper" wrapSetHandler_QAbstractSpinBox1_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QAbstractSpinBoxSc a) (QAbstractSpinBox x0 -> QEvent t1 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractSpinBox1 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractSpinBox1_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractSpinBox_setHandler1 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractSpinBox x0) -> Ptr (TQEvent t1) -> IO ()
    setHandlerWrapper x0 x1
      = do x0obj <- qAbstractSpinBoxFromPtr x0
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

instance QchangeEvent_h (QAbstractSpinBox ()) ((QEvent t1)) where
 changeEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSpinBox_changeEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractSpinBox_changeEvent" qtc_QAbstractSpinBox_changeEvent :: Ptr (TQAbstractSpinBox a) -> Ptr (TQEvent t1) -> IO ()

instance QchangeEvent_h (QAbstractSpinBoxSc a) ((QEvent t1)) where
 changeEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSpinBox_changeEvent cobj_x0 cobj_x1

instance QsetHandler (QAbstractSpinBox ()) (QAbstractSpinBox x0 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractSpinBox2 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractSpinBox2_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractSpinBox_setHandler2 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractSpinBox x0) -> IO ()
    setHandlerWrapper x0
      = do x0obj <- qAbstractSpinBoxFromPtr x0
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

foreign import ccall "qtc_QAbstractSpinBox_setHandler2" qtc_QAbstractSpinBox_setHandler2 :: Ptr (TQAbstractSpinBox a) -> CWString -> Ptr (Ptr (TQAbstractSpinBox x0) -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QAbstractSpinBox2 :: (Ptr (TQAbstractSpinBox x0) -> IO ()) -> IO (FunPtr (Ptr (TQAbstractSpinBox x0) -> IO ()))

foreign import ccall "wrapper" wrapSetHandler_QAbstractSpinBox2_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QAbstractSpinBoxSc a) (QAbstractSpinBox x0 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractSpinBox2 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractSpinBox2_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractSpinBox_setHandler2 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractSpinBox x0) -> IO ()
    setHandlerWrapper x0
      = do x0obj <- qAbstractSpinBoxFromPtr x0
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

instance Qclear_h (QAbstractSpinBox ()) (()) where
 clear_h x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSpinBox_clear cobj_x0

foreign import ccall "qtc_QAbstractSpinBox_clear" qtc_QAbstractSpinBox_clear :: Ptr (TQAbstractSpinBox a) -> IO ()

instance Qclear_h (QAbstractSpinBoxSc a) (()) where
 clear_h x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSpinBox_clear cobj_x0

instance QcloseEvent_h (QAbstractSpinBox ()) ((QCloseEvent t1)) where
 closeEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSpinBox_closeEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractSpinBox_closeEvent" qtc_QAbstractSpinBox_closeEvent :: Ptr (TQAbstractSpinBox a) -> Ptr (TQCloseEvent t1) -> IO ()

instance QcloseEvent_h (QAbstractSpinBoxSc a) ((QCloseEvent t1)) where
 closeEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSpinBox_closeEvent cobj_x0 cobj_x1

instance QcontextMenuEvent_h (QAbstractSpinBox ()) ((QContextMenuEvent t1)) where
 contextMenuEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSpinBox_contextMenuEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractSpinBox_contextMenuEvent" qtc_QAbstractSpinBox_contextMenuEvent :: Ptr (TQAbstractSpinBox a) -> Ptr (TQContextMenuEvent t1) -> IO ()

instance QcontextMenuEvent_h (QAbstractSpinBoxSc a) ((QContextMenuEvent t1)) where
 contextMenuEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSpinBox_contextMenuEvent cobj_x0 cobj_x1

instance QsetHandler (QAbstractSpinBox ()) (QAbstractSpinBox x0 -> QEvent t1 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractSpinBox3 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractSpinBox3_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractSpinBox_setHandler3 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractSpinBox x0) -> Ptr (TQEvent t1) -> IO (CBool)
    setHandlerWrapper x0 x1
      = do x0obj <- qAbstractSpinBoxFromPtr x0
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

foreign import ccall "qtc_QAbstractSpinBox_setHandler3" qtc_QAbstractSpinBox_setHandler3 :: Ptr (TQAbstractSpinBox a) -> CWString -> Ptr (Ptr (TQAbstractSpinBox x0) -> Ptr (TQEvent t1) -> IO (CBool)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QAbstractSpinBox3 :: (Ptr (TQAbstractSpinBox x0) -> Ptr (TQEvent t1) -> IO (CBool)) -> IO (FunPtr (Ptr (TQAbstractSpinBox x0) -> Ptr (TQEvent t1) -> IO (CBool)))

foreign import ccall "wrapper" wrapSetHandler_QAbstractSpinBox3_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QAbstractSpinBoxSc a) (QAbstractSpinBox x0 -> QEvent t1 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractSpinBox3 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractSpinBox3_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractSpinBox_setHandler3 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractSpinBox x0) -> Ptr (TQEvent t1) -> IO (CBool)
    setHandlerWrapper x0 x1
      = do x0obj <- qAbstractSpinBoxFromPtr x0
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

instance Qevent_h (QAbstractSpinBox ()) ((QEvent t1)) where
 event_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSpinBox_event cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractSpinBox_event" qtc_QAbstractSpinBox_event :: Ptr (TQAbstractSpinBox a) -> Ptr (TQEvent t1) -> IO CBool

instance Qevent_h (QAbstractSpinBoxSc a) ((QEvent t1)) where
 event_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSpinBox_event cobj_x0 cobj_x1

instance QfocusInEvent_h (QAbstractSpinBox ()) ((QFocusEvent t1)) where
 focusInEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSpinBox_focusInEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractSpinBox_focusInEvent" qtc_QAbstractSpinBox_focusInEvent :: Ptr (TQAbstractSpinBox a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusInEvent_h (QAbstractSpinBoxSc a) ((QFocusEvent t1)) where
 focusInEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSpinBox_focusInEvent cobj_x0 cobj_x1

instance QfocusOutEvent_h (QAbstractSpinBox ()) ((QFocusEvent t1)) where
 focusOutEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSpinBox_focusOutEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractSpinBox_focusOutEvent" qtc_QAbstractSpinBox_focusOutEvent :: Ptr (TQAbstractSpinBox a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusOutEvent_h (QAbstractSpinBoxSc a) ((QFocusEvent t1)) where
 focusOutEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSpinBox_focusOutEvent cobj_x0 cobj_x1

instance QhideEvent_h (QAbstractSpinBox ()) ((QHideEvent t1)) where
 hideEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSpinBox_hideEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractSpinBox_hideEvent" qtc_QAbstractSpinBox_hideEvent :: Ptr (TQAbstractSpinBox a) -> Ptr (TQHideEvent t1) -> IO ()

instance QhideEvent_h (QAbstractSpinBoxSc a) ((QHideEvent t1)) where
 hideEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSpinBox_hideEvent cobj_x0 cobj_x1

instance QkeyPressEvent_h (QAbstractSpinBox ()) ((QKeyEvent t1)) where
 keyPressEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSpinBox_keyPressEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractSpinBox_keyPressEvent" qtc_QAbstractSpinBox_keyPressEvent :: Ptr (TQAbstractSpinBox a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyPressEvent_h (QAbstractSpinBoxSc a) ((QKeyEvent t1)) where
 keyPressEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSpinBox_keyPressEvent cobj_x0 cobj_x1

instance QkeyReleaseEvent_h (QAbstractSpinBox ()) ((QKeyEvent t1)) where
 keyReleaseEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSpinBox_keyReleaseEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractSpinBox_keyReleaseEvent" qtc_QAbstractSpinBox_keyReleaseEvent :: Ptr (TQAbstractSpinBox a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyReleaseEvent_h (QAbstractSpinBoxSc a) ((QKeyEvent t1)) where
 keyReleaseEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSpinBox_keyReleaseEvent cobj_x0 cobj_x1

instance QsetHandler (QAbstractSpinBox ()) (QAbstractSpinBox x0 -> IO (QSize t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractSpinBox4 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractSpinBox4_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractSpinBox_setHandler4 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractSpinBox x0) -> IO (Ptr (TQSize t0))
    setHandlerWrapper x0
      = do x0obj <- qAbstractSpinBoxFromPtr x0
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

foreign import ccall "qtc_QAbstractSpinBox_setHandler4" qtc_QAbstractSpinBox_setHandler4 :: Ptr (TQAbstractSpinBox a) -> CWString -> Ptr (Ptr (TQAbstractSpinBox x0) -> IO (Ptr (TQSize t0))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QAbstractSpinBox4 :: (Ptr (TQAbstractSpinBox x0) -> IO (Ptr (TQSize t0))) -> IO (FunPtr (Ptr (TQAbstractSpinBox x0) -> IO (Ptr (TQSize t0))))

foreign import ccall "wrapper" wrapSetHandler_QAbstractSpinBox4_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QAbstractSpinBoxSc a) (QAbstractSpinBox x0 -> IO (QSize t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractSpinBox4 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractSpinBox4_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractSpinBox_setHandler4 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractSpinBox x0) -> IO (Ptr (TQSize t0))
    setHandlerWrapper x0
      = do x0obj <- qAbstractSpinBoxFromPtr x0
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

instance QqminimumSizeHint_h (QAbstractSpinBox ()) (()) where
 qminimumSizeHint_h x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSpinBox_minimumSizeHint cobj_x0

foreign import ccall "qtc_QAbstractSpinBox_minimumSizeHint" qtc_QAbstractSpinBox_minimumSizeHint :: Ptr (TQAbstractSpinBox a) -> IO (Ptr (TQSize ()))

instance QqminimumSizeHint_h (QAbstractSpinBoxSc a) (()) where
 qminimumSizeHint_h x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSpinBox_minimumSizeHint cobj_x0

instance QminimumSizeHint_h (QAbstractSpinBox ()) (()) where
 minimumSizeHint_h x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSpinBox_minimumSizeHint_qth cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QAbstractSpinBox_minimumSizeHint_qth" qtc_QAbstractSpinBox_minimumSizeHint_qth :: Ptr (TQAbstractSpinBox a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QminimumSizeHint_h (QAbstractSpinBoxSc a) (()) where
 minimumSizeHint_h x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSpinBox_minimumSizeHint_qth cobj_x0 csize_ret_w csize_ret_h

instance QmouseMoveEvent_h (QAbstractSpinBox ()) ((QMouseEvent t1)) where
 mouseMoveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSpinBox_mouseMoveEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractSpinBox_mouseMoveEvent" qtc_QAbstractSpinBox_mouseMoveEvent :: Ptr (TQAbstractSpinBox a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseMoveEvent_h (QAbstractSpinBoxSc a) ((QMouseEvent t1)) where
 mouseMoveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSpinBox_mouseMoveEvent cobj_x0 cobj_x1

instance QmousePressEvent_h (QAbstractSpinBox ()) ((QMouseEvent t1)) where
 mousePressEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSpinBox_mousePressEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractSpinBox_mousePressEvent" qtc_QAbstractSpinBox_mousePressEvent :: Ptr (TQAbstractSpinBox a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmousePressEvent_h (QAbstractSpinBoxSc a) ((QMouseEvent t1)) where
 mousePressEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSpinBox_mousePressEvent cobj_x0 cobj_x1

instance QmouseReleaseEvent_h (QAbstractSpinBox ()) ((QMouseEvent t1)) where
 mouseReleaseEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSpinBox_mouseReleaseEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractSpinBox_mouseReleaseEvent" qtc_QAbstractSpinBox_mouseReleaseEvent :: Ptr (TQAbstractSpinBox a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseReleaseEvent_h (QAbstractSpinBoxSc a) ((QMouseEvent t1)) where
 mouseReleaseEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSpinBox_mouseReleaseEvent cobj_x0 cobj_x1

instance QpaintEvent_h (QAbstractSpinBox ()) ((QPaintEvent t1)) where
 paintEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSpinBox_paintEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractSpinBox_paintEvent" qtc_QAbstractSpinBox_paintEvent :: Ptr (TQAbstractSpinBox a) -> Ptr (TQPaintEvent t1) -> IO ()

instance QpaintEvent_h (QAbstractSpinBoxSc a) ((QPaintEvent t1)) where
 paintEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSpinBox_paintEvent cobj_x0 cobj_x1

instance QresizeEvent_h (QAbstractSpinBox ()) ((QResizeEvent t1)) where
 resizeEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSpinBox_resizeEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractSpinBox_resizeEvent" qtc_QAbstractSpinBox_resizeEvent :: Ptr (TQAbstractSpinBox a) -> Ptr (TQResizeEvent t1) -> IO ()

instance QresizeEvent_h (QAbstractSpinBoxSc a) ((QResizeEvent t1)) where
 resizeEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSpinBox_resizeEvent cobj_x0 cobj_x1

instance QshowEvent_h (QAbstractSpinBox ()) ((QShowEvent t1)) where
 showEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSpinBox_showEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractSpinBox_showEvent" qtc_QAbstractSpinBox_showEvent :: Ptr (TQAbstractSpinBox a) -> Ptr (TQShowEvent t1) -> IO ()

instance QshowEvent_h (QAbstractSpinBoxSc a) ((QShowEvent t1)) where
 showEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSpinBox_showEvent cobj_x0 cobj_x1

instance QqsizeHint_h (QAbstractSpinBox ()) (()) where
 qsizeHint_h x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSpinBox_sizeHint cobj_x0

foreign import ccall "qtc_QAbstractSpinBox_sizeHint" qtc_QAbstractSpinBox_sizeHint :: Ptr (TQAbstractSpinBox a) -> IO (Ptr (TQSize ()))

instance QqsizeHint_h (QAbstractSpinBoxSc a) (()) where
 qsizeHint_h x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSpinBox_sizeHint cobj_x0

instance QsizeHint_h (QAbstractSpinBox ()) (()) where
 sizeHint_h x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSpinBox_sizeHint_qth cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QAbstractSpinBox_sizeHint_qth" qtc_QAbstractSpinBox_sizeHint_qth :: Ptr (TQAbstractSpinBox a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QsizeHint_h (QAbstractSpinBoxSc a) (()) where
 sizeHint_h x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSpinBox_sizeHint_qth cobj_x0 csize_ret_w csize_ret_h

instance QsetHandler (QAbstractSpinBox ()) (QAbstractSpinBox x0 -> Int -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractSpinBox5 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractSpinBox5_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractSpinBox_setHandler5 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractSpinBox x0) -> CInt -> IO ()
    setHandlerWrapper x0 x1
      = do x0obj <- qAbstractSpinBoxFromPtr x0
           let x1int = fromCInt x1
           if (objectIsNull x0obj)
            then return ()
            else _handler x0obj x1int

    setHandlerWrapper_d :: Ptr fun -> Ptr () -> Ptr fun_d -> IO ()
    setHandlerWrapper_d funptr stptr funptr_d
      = do when (stptr/=ptrNull)
            (freeStablePtr (castPtrToStablePtr stptr))
           when (funptr/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr))
           when (funptr_d/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr_d))
           return ()

foreign import ccall "qtc_QAbstractSpinBox_setHandler5" qtc_QAbstractSpinBox_setHandler5 :: Ptr (TQAbstractSpinBox a) -> CWString -> Ptr (Ptr (TQAbstractSpinBox x0) -> CInt -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QAbstractSpinBox5 :: (Ptr (TQAbstractSpinBox x0) -> CInt -> IO ()) -> IO (FunPtr (Ptr (TQAbstractSpinBox x0) -> CInt -> IO ()))

foreign import ccall "wrapper" wrapSetHandler_QAbstractSpinBox5_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QAbstractSpinBoxSc a) (QAbstractSpinBox x0 -> Int -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractSpinBox5 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractSpinBox5_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractSpinBox_setHandler5 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractSpinBox x0) -> CInt -> IO ()
    setHandlerWrapper x0 x1
      = do x0obj <- qAbstractSpinBoxFromPtr x0
           let x1int = fromCInt x1
           if (objectIsNull x0obj)
            then return ()
            else _handler x0obj x1int

    setHandlerWrapper_d :: Ptr fun -> Ptr () -> Ptr fun_d -> IO ()
    setHandlerWrapper_d funptr stptr funptr_d
      = do when (stptr/=ptrNull)
            (freeStablePtr (castPtrToStablePtr stptr))
           when (funptr/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr))
           when (funptr_d/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr_d))
           return ()

instance QstepBy_h (QAbstractSpinBox ()) ((Int)) where
 stepBy_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSpinBox_stepBy cobj_x0 (toCInt x1)

foreign import ccall "qtc_QAbstractSpinBox_stepBy" qtc_QAbstractSpinBox_stepBy :: Ptr (TQAbstractSpinBox a) -> CInt -> IO ()

instance QstepBy_h (QAbstractSpinBoxSc a) ((Int)) where
 stepBy_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSpinBox_stepBy cobj_x0 (toCInt x1)

instance QwheelEvent_h (QAbstractSpinBox ()) ((QWheelEvent t1)) where
 wheelEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSpinBox_wheelEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractSpinBox_wheelEvent" qtc_QAbstractSpinBox_wheelEvent :: Ptr (TQAbstractSpinBox a) -> Ptr (TQWheelEvent t1) -> IO ()

instance QwheelEvent_h (QAbstractSpinBoxSc a) ((QWheelEvent t1)) where
 wheelEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSpinBox_wheelEvent cobj_x0 cobj_x1

instance QactionEvent_h (QAbstractSpinBox ()) ((QActionEvent t1)) where
 actionEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSpinBox_actionEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractSpinBox_actionEvent" qtc_QAbstractSpinBox_actionEvent :: Ptr (TQAbstractSpinBox a) -> Ptr (TQActionEvent t1) -> IO ()

instance QactionEvent_h (QAbstractSpinBoxSc a) ((QActionEvent t1)) where
 actionEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSpinBox_actionEvent cobj_x0 cobj_x1

instance QsetHandler (QAbstractSpinBox ()) (QAbstractSpinBox x0 -> IO (Int)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractSpinBox6 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractSpinBox6_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractSpinBox_setHandler6 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractSpinBox x0) -> IO (CInt)
    setHandlerWrapper x0
      = do x0obj <- qAbstractSpinBoxFromPtr x0
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

foreign import ccall "qtc_QAbstractSpinBox_setHandler6" qtc_QAbstractSpinBox_setHandler6 :: Ptr (TQAbstractSpinBox a) -> CWString -> Ptr (Ptr (TQAbstractSpinBox x0) -> IO (CInt)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QAbstractSpinBox6 :: (Ptr (TQAbstractSpinBox x0) -> IO (CInt)) -> IO (FunPtr (Ptr (TQAbstractSpinBox x0) -> IO (CInt)))

foreign import ccall "wrapper" wrapSetHandler_QAbstractSpinBox6_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QAbstractSpinBoxSc a) (QAbstractSpinBox x0 -> IO (Int)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractSpinBox6 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractSpinBox6_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractSpinBox_setHandler6 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractSpinBox x0) -> IO (CInt)
    setHandlerWrapper x0
      = do x0obj <- qAbstractSpinBoxFromPtr x0
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

instance QdevType_h (QAbstractSpinBox ()) (()) where
 devType_h x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSpinBox_devType cobj_x0

foreign import ccall "qtc_QAbstractSpinBox_devType" qtc_QAbstractSpinBox_devType :: Ptr (TQAbstractSpinBox a) -> IO CInt

instance QdevType_h (QAbstractSpinBoxSc a) (()) where
 devType_h x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSpinBox_devType cobj_x0

instance QdragEnterEvent_h (QAbstractSpinBox ()) ((QDragEnterEvent t1)) where
 dragEnterEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSpinBox_dragEnterEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractSpinBox_dragEnterEvent" qtc_QAbstractSpinBox_dragEnterEvent :: Ptr (TQAbstractSpinBox a) -> Ptr (TQDragEnterEvent t1) -> IO ()

instance QdragEnterEvent_h (QAbstractSpinBoxSc a) ((QDragEnterEvent t1)) where
 dragEnterEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSpinBox_dragEnterEvent cobj_x0 cobj_x1

instance QdragLeaveEvent_h (QAbstractSpinBox ()) ((QDragLeaveEvent t1)) where
 dragLeaveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSpinBox_dragLeaveEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractSpinBox_dragLeaveEvent" qtc_QAbstractSpinBox_dragLeaveEvent :: Ptr (TQAbstractSpinBox a) -> Ptr (TQDragLeaveEvent t1) -> IO ()

instance QdragLeaveEvent_h (QAbstractSpinBoxSc a) ((QDragLeaveEvent t1)) where
 dragLeaveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSpinBox_dragLeaveEvent cobj_x0 cobj_x1

instance QdragMoveEvent_h (QAbstractSpinBox ()) ((QDragMoveEvent t1)) where
 dragMoveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSpinBox_dragMoveEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractSpinBox_dragMoveEvent" qtc_QAbstractSpinBox_dragMoveEvent :: Ptr (TQAbstractSpinBox a) -> Ptr (TQDragMoveEvent t1) -> IO ()

instance QdragMoveEvent_h (QAbstractSpinBoxSc a) ((QDragMoveEvent t1)) where
 dragMoveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSpinBox_dragMoveEvent cobj_x0 cobj_x1

instance QdropEvent_h (QAbstractSpinBox ()) ((QDropEvent t1)) where
 dropEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSpinBox_dropEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractSpinBox_dropEvent" qtc_QAbstractSpinBox_dropEvent :: Ptr (TQAbstractSpinBox a) -> Ptr (TQDropEvent t1) -> IO ()

instance QdropEvent_h (QAbstractSpinBoxSc a) ((QDropEvent t1)) where
 dropEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSpinBox_dropEvent cobj_x0 cobj_x1

instance QenterEvent_h (QAbstractSpinBox ()) ((QEvent t1)) where
 enterEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSpinBox_enterEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractSpinBox_enterEvent" qtc_QAbstractSpinBox_enterEvent :: Ptr (TQAbstractSpinBox a) -> Ptr (TQEvent t1) -> IO ()

instance QenterEvent_h (QAbstractSpinBoxSc a) ((QEvent t1)) where
 enterEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSpinBox_enterEvent cobj_x0 cobj_x1

instance QsetHandler (QAbstractSpinBox ()) (QAbstractSpinBox x0 -> Int -> IO (Int)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractSpinBox7 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractSpinBox7_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractSpinBox_setHandler7 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractSpinBox x0) -> CInt -> IO (CInt)
    setHandlerWrapper x0 x1
      = do x0obj <- qAbstractSpinBoxFromPtr x0
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

foreign import ccall "qtc_QAbstractSpinBox_setHandler7" qtc_QAbstractSpinBox_setHandler7 :: Ptr (TQAbstractSpinBox a) -> CWString -> Ptr (Ptr (TQAbstractSpinBox x0) -> CInt -> IO (CInt)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QAbstractSpinBox7 :: (Ptr (TQAbstractSpinBox x0) -> CInt -> IO (CInt)) -> IO (FunPtr (Ptr (TQAbstractSpinBox x0) -> CInt -> IO (CInt)))

foreign import ccall "wrapper" wrapSetHandler_QAbstractSpinBox7_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QAbstractSpinBoxSc a) (QAbstractSpinBox x0 -> Int -> IO (Int)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractSpinBox7 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractSpinBox7_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractSpinBox_setHandler7 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractSpinBox x0) -> CInt -> IO (CInt)
    setHandlerWrapper x0 x1
      = do x0obj <- qAbstractSpinBoxFromPtr x0
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

instance QheightForWidth_h (QAbstractSpinBox ()) ((Int)) where
 heightForWidth_h x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSpinBox_heightForWidth cobj_x0 (toCInt x1)

foreign import ccall "qtc_QAbstractSpinBox_heightForWidth" qtc_QAbstractSpinBox_heightForWidth :: Ptr (TQAbstractSpinBox a) -> CInt -> IO CInt

instance QheightForWidth_h (QAbstractSpinBoxSc a) ((Int)) where
 heightForWidth_h x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSpinBox_heightForWidth cobj_x0 (toCInt x1)

instance QsetHandler (QAbstractSpinBox ()) (QAbstractSpinBox x0 -> InputMethodQuery -> IO (QVariant t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractSpinBox8 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractSpinBox8_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractSpinBox_setHandler8 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractSpinBox x0) -> CLong -> IO (Ptr (TQVariant t0))
    setHandlerWrapper x0 x1
      = do x0obj <- qAbstractSpinBoxFromPtr x0
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

foreign import ccall "qtc_QAbstractSpinBox_setHandler8" qtc_QAbstractSpinBox_setHandler8 :: Ptr (TQAbstractSpinBox a) -> CWString -> Ptr (Ptr (TQAbstractSpinBox x0) -> CLong -> IO (Ptr (TQVariant t0))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QAbstractSpinBox8 :: (Ptr (TQAbstractSpinBox x0) -> CLong -> IO (Ptr (TQVariant t0))) -> IO (FunPtr (Ptr (TQAbstractSpinBox x0) -> CLong -> IO (Ptr (TQVariant t0))))

foreign import ccall "wrapper" wrapSetHandler_QAbstractSpinBox8_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QAbstractSpinBoxSc a) (QAbstractSpinBox x0 -> InputMethodQuery -> IO (QVariant t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractSpinBox8 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractSpinBox8_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractSpinBox_setHandler8 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractSpinBox x0) -> CLong -> IO (Ptr (TQVariant t0))
    setHandlerWrapper x0 x1
      = do x0obj <- qAbstractSpinBoxFromPtr x0
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

instance QinputMethodQuery_h (QAbstractSpinBox ()) ((InputMethodQuery)) where
 inputMethodQuery_h x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSpinBox_inputMethodQuery cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QAbstractSpinBox_inputMethodQuery" qtc_QAbstractSpinBox_inputMethodQuery :: Ptr (TQAbstractSpinBox a) -> CLong -> IO (Ptr (TQVariant ()))

instance QinputMethodQuery_h (QAbstractSpinBoxSc a) ((InputMethodQuery)) where
 inputMethodQuery_h x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSpinBox_inputMethodQuery cobj_x0 (toCLong $ qEnum_toInt x1)

instance QleaveEvent_h (QAbstractSpinBox ()) ((QEvent t1)) where
 leaveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSpinBox_leaveEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractSpinBox_leaveEvent" qtc_QAbstractSpinBox_leaveEvent :: Ptr (TQAbstractSpinBox a) -> Ptr (TQEvent t1) -> IO ()

instance QleaveEvent_h (QAbstractSpinBoxSc a) ((QEvent t1)) where
 leaveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSpinBox_leaveEvent cobj_x0 cobj_x1

instance QmouseDoubleClickEvent_h (QAbstractSpinBox ()) ((QMouseEvent t1)) where
 mouseDoubleClickEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSpinBox_mouseDoubleClickEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractSpinBox_mouseDoubleClickEvent" qtc_QAbstractSpinBox_mouseDoubleClickEvent :: Ptr (TQAbstractSpinBox a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseDoubleClickEvent_h (QAbstractSpinBoxSc a) ((QMouseEvent t1)) where
 mouseDoubleClickEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSpinBox_mouseDoubleClickEvent cobj_x0 cobj_x1

instance QmoveEvent_h (QAbstractSpinBox ()) ((QMoveEvent t1)) where
 moveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSpinBox_moveEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractSpinBox_moveEvent" qtc_QAbstractSpinBox_moveEvent :: Ptr (TQAbstractSpinBox a) -> Ptr (TQMoveEvent t1) -> IO ()

instance QmoveEvent_h (QAbstractSpinBoxSc a) ((QMoveEvent t1)) where
 moveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSpinBox_moveEvent cobj_x0 cobj_x1

instance QsetHandler (QAbstractSpinBox ()) (QAbstractSpinBox x0 -> IO (QPaintEngine t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractSpinBox9 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractSpinBox9_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractSpinBox_setHandler9 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractSpinBox x0) -> IO (Ptr (TQPaintEngine t0))
    setHandlerWrapper x0
      = do x0obj <- qAbstractSpinBoxFromPtr x0
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

foreign import ccall "qtc_QAbstractSpinBox_setHandler9" qtc_QAbstractSpinBox_setHandler9 :: Ptr (TQAbstractSpinBox a) -> CWString -> Ptr (Ptr (TQAbstractSpinBox x0) -> IO (Ptr (TQPaintEngine t0))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QAbstractSpinBox9 :: (Ptr (TQAbstractSpinBox x0) -> IO (Ptr (TQPaintEngine t0))) -> IO (FunPtr (Ptr (TQAbstractSpinBox x0) -> IO (Ptr (TQPaintEngine t0))))

foreign import ccall "wrapper" wrapSetHandler_QAbstractSpinBox9_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QAbstractSpinBoxSc a) (QAbstractSpinBox x0 -> IO (QPaintEngine t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractSpinBox9 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractSpinBox9_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractSpinBox_setHandler9 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractSpinBox x0) -> IO (Ptr (TQPaintEngine t0))
    setHandlerWrapper x0
      = do x0obj <- qAbstractSpinBoxFromPtr x0
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

instance QpaintEngine_h (QAbstractSpinBox ()) (()) where
 paintEngine_h x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSpinBox_paintEngine cobj_x0

foreign import ccall "qtc_QAbstractSpinBox_paintEngine" qtc_QAbstractSpinBox_paintEngine :: Ptr (TQAbstractSpinBox a) -> IO (Ptr (TQPaintEngine ()))

instance QpaintEngine_h (QAbstractSpinBoxSc a) (()) where
 paintEngine_h x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSpinBox_paintEngine cobj_x0

instance QsetHandler (QAbstractSpinBox ()) (QAbstractSpinBox x0 -> Bool -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractSpinBox10 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractSpinBox10_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractSpinBox_setHandler10 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractSpinBox x0) -> CBool -> IO ()
    setHandlerWrapper x0 x1
      = do x0obj <- qAbstractSpinBoxFromPtr x0
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

foreign import ccall "qtc_QAbstractSpinBox_setHandler10" qtc_QAbstractSpinBox_setHandler10 :: Ptr (TQAbstractSpinBox a) -> CWString -> Ptr (Ptr (TQAbstractSpinBox x0) -> CBool -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QAbstractSpinBox10 :: (Ptr (TQAbstractSpinBox x0) -> CBool -> IO ()) -> IO (FunPtr (Ptr (TQAbstractSpinBox x0) -> CBool -> IO ()))

foreign import ccall "wrapper" wrapSetHandler_QAbstractSpinBox10_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QAbstractSpinBoxSc a) (QAbstractSpinBox x0 -> Bool -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractSpinBox10 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractSpinBox10_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractSpinBox_setHandler10 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractSpinBox x0) -> CBool -> IO ()
    setHandlerWrapper x0 x1
      = do x0obj <- qAbstractSpinBoxFromPtr x0
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

instance QsetVisible_h (QAbstractSpinBox ()) ((Bool)) where
 setVisible_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSpinBox_setVisible cobj_x0 (toCBool x1)

foreign import ccall "qtc_QAbstractSpinBox_setVisible" qtc_QAbstractSpinBox_setVisible :: Ptr (TQAbstractSpinBox a) -> CBool -> IO ()

instance QsetVisible_h (QAbstractSpinBoxSc a) ((Bool)) where
 setVisible_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSpinBox_setVisible cobj_x0 (toCBool x1)

instance QtabletEvent_h (QAbstractSpinBox ()) ((QTabletEvent t1)) where
 tabletEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSpinBox_tabletEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractSpinBox_tabletEvent" qtc_QAbstractSpinBox_tabletEvent :: Ptr (TQAbstractSpinBox a) -> Ptr (TQTabletEvent t1) -> IO ()

instance QtabletEvent_h (QAbstractSpinBoxSc a) ((QTabletEvent t1)) where
 tabletEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSpinBox_tabletEvent cobj_x0 cobj_x1

instance QsetHandler (QAbstractSpinBox ()) (QAbstractSpinBox x0 -> QObject t1 -> QEvent t2 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractSpinBox11 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractSpinBox11_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractSpinBox_setHandler11 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractSpinBox x0) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO (CBool)
    setHandlerWrapper x0 x1 x2
      = do x0obj <- qAbstractSpinBoxFromPtr x0
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

foreign import ccall "qtc_QAbstractSpinBox_setHandler11" qtc_QAbstractSpinBox_setHandler11 :: Ptr (TQAbstractSpinBox a) -> CWString -> Ptr (Ptr (TQAbstractSpinBox x0) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO (CBool)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QAbstractSpinBox11 :: (Ptr (TQAbstractSpinBox x0) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO (CBool)) -> IO (FunPtr (Ptr (TQAbstractSpinBox x0) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO (CBool)))

foreign import ccall "wrapper" wrapSetHandler_QAbstractSpinBox11_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QAbstractSpinBoxSc a) (QAbstractSpinBox x0 -> QObject t1 -> QEvent t2 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractSpinBox11 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractSpinBox11_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractSpinBox_setHandler11 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractSpinBox x0) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO (CBool)
    setHandlerWrapper x0 x1 x2
      = do x0obj <- qAbstractSpinBoxFromPtr x0
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

instance QeventFilter_h (QAbstractSpinBox ()) ((QObject t1, QEvent t2)) where
 eventFilter_h x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QAbstractSpinBox_eventFilter cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QAbstractSpinBox_eventFilter" qtc_QAbstractSpinBox_eventFilter :: Ptr (TQAbstractSpinBox a) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO CBool

instance QeventFilter_h (QAbstractSpinBoxSc a) ((QObject t1, QEvent t2)) where
 eventFilter_h x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QAbstractSpinBox_eventFilter cobj_x0 cobj_x1 cobj_x2

