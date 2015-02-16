{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QLineEdit_h.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:30
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QLineEdit_h where

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

instance QunSetUserMethod (QLineEdit ()) where
 unSetUserMethod qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QLineEdit_unSetUserMethod cobj_qobj (toCInt 0) (toCInt evid)

foreign import ccall "qtc_QLineEdit_unSetUserMethod" qtc_QLineEdit_unSetUserMethod :: Ptr (TQLineEdit a) -> CInt -> CInt -> IO (CBool)

instance QunSetUserMethod (QLineEditSc a) where
 unSetUserMethod qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QLineEdit_unSetUserMethod cobj_qobj (toCInt 0) (toCInt evid)

instance QunSetUserMethodVariant (QLineEdit ()) where
 unSetUserMethodVariant qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QLineEdit_unSetUserMethod cobj_qobj (toCInt 1) (toCInt evid)

instance QunSetUserMethodVariant (QLineEditSc a) where
 unSetUserMethodVariant qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QLineEdit_unSetUserMethod cobj_qobj (toCInt 1) (toCInt evid)

instance QunSetUserMethodVariantList (QLineEdit ()) where
 unSetUserMethodVariantList qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QLineEdit_unSetUserMethod cobj_qobj (toCInt 2) (toCInt evid)

instance QunSetUserMethodVariantList (QLineEditSc a) where
 unSetUserMethodVariantList qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QLineEdit_unSetUserMethod cobj_qobj (toCInt 2) (toCInt evid)

instance QsetUserMethod (QLineEdit ()) (QLineEdit x0 -> IO ()) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethod_QLineEdit setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethod_QLineEdit_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QLineEdit_setUserMethod cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQLineEdit x0) -> IO ()
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

foreign import ccall "qtc_QLineEdit_setUserMethod" qtc_QLineEdit_setUserMethod :: Ptr (TQLineEdit a) -> CInt -> Ptr (Ptr (TQLineEdit x0) -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetUserMethod_QLineEdit :: (Ptr (TQLineEdit x0) -> IO ()) -> IO (FunPtr (Ptr (TQLineEdit x0) -> IO ()))

foreign import ccall "wrapper" wrapSetUserMethod_QLineEdit_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetUserMethod (QLineEditSc a) (QLineEdit x0 -> IO ()) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethod_QLineEdit setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethod_QLineEdit_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QLineEdit_setUserMethod cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQLineEdit x0) -> IO ()
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

instance QsetUserMethod (QLineEdit ()) (QLineEdit x0 -> QVariant () -> IO (QVariant ())) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethodVariant_QLineEdit setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethodVariant_QLineEdit_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QLineEdit_setUserMethodVariant cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQLineEdit x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))
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

foreign import ccall "qtc_QLineEdit_setUserMethodVariant" qtc_QLineEdit_setUserMethodVariant :: Ptr (TQLineEdit a) -> CInt -> Ptr (Ptr (TQLineEdit x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetUserMethodVariant_QLineEdit :: (Ptr (TQLineEdit x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))) -> IO (FunPtr (Ptr (TQLineEdit x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))))

foreign import ccall "wrapper" wrapSetUserMethodVariant_QLineEdit_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetUserMethod (QLineEditSc a) (QLineEdit x0 -> QVariant () -> IO (QVariant ())) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethodVariant_QLineEdit setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethodVariant_QLineEdit_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QLineEdit_setUserMethodVariant cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQLineEdit x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))
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

instance QunSetHandler (QLineEdit ()) where 
 unSetHandler qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withCWString evid $ \cstr_evid ->
    qtc_QLineEdit_unSetHandler cobj_qobj cstr_evid

foreign import ccall "qtc_QLineEdit_unSetHandler" qtc_QLineEdit_unSetHandler :: Ptr (TQLineEdit a) -> CWString -> IO (CBool)

instance QunSetHandler (QLineEditSc a) where 
 unSetHandler qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withCWString evid $ \cstr_evid ->
    qtc_QLineEdit_unSetHandler cobj_qobj cstr_evid

instance QsetHandler (QLineEdit ()) (QLineEdit x0 -> QEvent t1 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QLineEdit1 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QLineEdit1_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QLineEdit_setHandler1 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQLineEdit x0) -> Ptr (TQEvent t1) -> IO ()
    setHandlerWrapper x0 x1
      = do x0obj <- qLineEditFromPtr x0
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

foreign import ccall "qtc_QLineEdit_setHandler1" qtc_QLineEdit_setHandler1 :: Ptr (TQLineEdit a) -> CWString -> Ptr (Ptr (TQLineEdit x0) -> Ptr (TQEvent t1) -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QLineEdit1 :: (Ptr (TQLineEdit x0) -> Ptr (TQEvent t1) -> IO ()) -> IO (FunPtr (Ptr (TQLineEdit x0) -> Ptr (TQEvent t1) -> IO ()))

foreign import ccall "wrapper" wrapSetHandler_QLineEdit1_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QLineEditSc a) (QLineEdit x0 -> QEvent t1 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QLineEdit1 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QLineEdit1_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QLineEdit_setHandler1 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQLineEdit x0) -> Ptr (TQEvent t1) -> IO ()
    setHandlerWrapper x0 x1
      = do x0obj <- qLineEditFromPtr x0
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

instance QchangeEvent_h (QLineEdit ()) ((QEvent t1)) where
 changeEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLineEdit_changeEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QLineEdit_changeEvent" qtc_QLineEdit_changeEvent :: Ptr (TQLineEdit a) -> Ptr (TQEvent t1) -> IO ()

instance QchangeEvent_h (QLineEditSc a) ((QEvent t1)) where
 changeEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLineEdit_changeEvent cobj_x0 cobj_x1

instance QcontextMenuEvent_h (QLineEdit ()) ((QContextMenuEvent t1)) where
 contextMenuEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLineEdit_contextMenuEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QLineEdit_contextMenuEvent" qtc_QLineEdit_contextMenuEvent :: Ptr (TQLineEdit a) -> Ptr (TQContextMenuEvent t1) -> IO ()

instance QcontextMenuEvent_h (QLineEditSc a) ((QContextMenuEvent t1)) where
 contextMenuEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLineEdit_contextMenuEvent cobj_x0 cobj_x1

instance QdragEnterEvent_h (QLineEdit ()) ((QDragEnterEvent t1)) where
 dragEnterEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLineEdit_dragEnterEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QLineEdit_dragEnterEvent" qtc_QLineEdit_dragEnterEvent :: Ptr (TQLineEdit a) -> Ptr (TQDragEnterEvent t1) -> IO ()

instance QdragEnterEvent_h (QLineEditSc a) ((QDragEnterEvent t1)) where
 dragEnterEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLineEdit_dragEnterEvent cobj_x0 cobj_x1

instance QdragLeaveEvent_h (QLineEdit ()) ((QDragLeaveEvent t1)) where
 dragLeaveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLineEdit_dragLeaveEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QLineEdit_dragLeaveEvent" qtc_QLineEdit_dragLeaveEvent :: Ptr (TQLineEdit a) -> Ptr (TQDragLeaveEvent t1) -> IO ()

instance QdragLeaveEvent_h (QLineEditSc a) ((QDragLeaveEvent t1)) where
 dragLeaveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLineEdit_dragLeaveEvent cobj_x0 cobj_x1

instance QdragMoveEvent_h (QLineEdit ()) ((QDragMoveEvent t1)) where
 dragMoveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLineEdit_dragMoveEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QLineEdit_dragMoveEvent" qtc_QLineEdit_dragMoveEvent :: Ptr (TQLineEdit a) -> Ptr (TQDragMoveEvent t1) -> IO ()

instance QdragMoveEvent_h (QLineEditSc a) ((QDragMoveEvent t1)) where
 dragMoveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLineEdit_dragMoveEvent cobj_x0 cobj_x1

instance QdropEvent_h (QLineEdit ()) ((QDropEvent t1)) where
 dropEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLineEdit_dropEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QLineEdit_dropEvent" qtc_QLineEdit_dropEvent :: Ptr (TQLineEdit a) -> Ptr (TQDropEvent t1) -> IO ()

instance QdropEvent_h (QLineEditSc a) ((QDropEvent t1)) where
 dropEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLineEdit_dropEvent cobj_x0 cobj_x1

instance QsetHandler (QLineEdit ()) (QLineEdit x0 -> QEvent t1 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QLineEdit2 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QLineEdit2_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QLineEdit_setHandler2 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQLineEdit x0) -> Ptr (TQEvent t1) -> IO (CBool)
    setHandlerWrapper x0 x1
      = do x0obj <- qLineEditFromPtr x0
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

foreign import ccall "qtc_QLineEdit_setHandler2" qtc_QLineEdit_setHandler2 :: Ptr (TQLineEdit a) -> CWString -> Ptr (Ptr (TQLineEdit x0) -> Ptr (TQEvent t1) -> IO (CBool)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QLineEdit2 :: (Ptr (TQLineEdit x0) -> Ptr (TQEvent t1) -> IO (CBool)) -> IO (FunPtr (Ptr (TQLineEdit x0) -> Ptr (TQEvent t1) -> IO (CBool)))

foreign import ccall "wrapper" wrapSetHandler_QLineEdit2_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QLineEditSc a) (QLineEdit x0 -> QEvent t1 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QLineEdit2 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QLineEdit2_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QLineEdit_setHandler2 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQLineEdit x0) -> Ptr (TQEvent t1) -> IO (CBool)
    setHandlerWrapper x0 x1
      = do x0obj <- qLineEditFromPtr x0
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

instance Qevent_h (QLineEdit ()) ((QEvent t1)) where
 event_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLineEdit_event cobj_x0 cobj_x1

foreign import ccall "qtc_QLineEdit_event" qtc_QLineEdit_event :: Ptr (TQLineEdit a) -> Ptr (TQEvent t1) -> IO CBool

instance Qevent_h (QLineEditSc a) ((QEvent t1)) where
 event_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLineEdit_event cobj_x0 cobj_x1

instance QfocusInEvent_h (QLineEdit ()) ((QFocusEvent t1)) where
 focusInEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLineEdit_focusInEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QLineEdit_focusInEvent" qtc_QLineEdit_focusInEvent :: Ptr (TQLineEdit a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusInEvent_h (QLineEditSc a) ((QFocusEvent t1)) where
 focusInEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLineEdit_focusInEvent cobj_x0 cobj_x1

instance QfocusOutEvent_h (QLineEdit ()) ((QFocusEvent t1)) where
 focusOutEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLineEdit_focusOutEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QLineEdit_focusOutEvent" qtc_QLineEdit_focusOutEvent :: Ptr (TQLineEdit a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusOutEvent_h (QLineEditSc a) ((QFocusEvent t1)) where
 focusOutEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLineEdit_focusOutEvent cobj_x0 cobj_x1

instance QsetHandler (QLineEdit ()) (QLineEdit x0 -> InputMethodQuery -> IO (QVariant t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QLineEdit3 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QLineEdit3_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QLineEdit_setHandler3 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQLineEdit x0) -> CLong -> IO (Ptr (TQVariant t0))
    setHandlerWrapper x0 x1
      = do x0obj <- qLineEditFromPtr x0
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

foreign import ccall "qtc_QLineEdit_setHandler3" qtc_QLineEdit_setHandler3 :: Ptr (TQLineEdit a) -> CWString -> Ptr (Ptr (TQLineEdit x0) -> CLong -> IO (Ptr (TQVariant t0))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QLineEdit3 :: (Ptr (TQLineEdit x0) -> CLong -> IO (Ptr (TQVariant t0))) -> IO (FunPtr (Ptr (TQLineEdit x0) -> CLong -> IO (Ptr (TQVariant t0))))

foreign import ccall "wrapper" wrapSetHandler_QLineEdit3_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QLineEditSc a) (QLineEdit x0 -> InputMethodQuery -> IO (QVariant t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QLineEdit3 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QLineEdit3_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QLineEdit_setHandler3 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQLineEdit x0) -> CLong -> IO (Ptr (TQVariant t0))
    setHandlerWrapper x0 x1
      = do x0obj <- qLineEditFromPtr x0
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

instance QinputMethodQuery_h (QLineEdit ()) ((InputMethodQuery)) where
 inputMethodQuery_h x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLineEdit_inputMethodQuery cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QLineEdit_inputMethodQuery" qtc_QLineEdit_inputMethodQuery :: Ptr (TQLineEdit a) -> CLong -> IO (Ptr (TQVariant ()))

instance QinputMethodQuery_h (QLineEditSc a) ((InputMethodQuery)) where
 inputMethodQuery_h x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLineEdit_inputMethodQuery cobj_x0 (toCLong $ qEnum_toInt x1)

instance QkeyPressEvent_h (QLineEdit ()) ((QKeyEvent t1)) where
 keyPressEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLineEdit_keyPressEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QLineEdit_keyPressEvent" qtc_QLineEdit_keyPressEvent :: Ptr (TQLineEdit a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyPressEvent_h (QLineEditSc a) ((QKeyEvent t1)) where
 keyPressEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLineEdit_keyPressEvent cobj_x0 cobj_x1

instance QsetHandler (QLineEdit ()) (QLineEdit x0 -> IO (QSize t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QLineEdit4 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QLineEdit4_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QLineEdit_setHandler4 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQLineEdit x0) -> IO (Ptr (TQSize t0))
    setHandlerWrapper x0
      = do x0obj <- qLineEditFromPtr x0
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

foreign import ccall "qtc_QLineEdit_setHandler4" qtc_QLineEdit_setHandler4 :: Ptr (TQLineEdit a) -> CWString -> Ptr (Ptr (TQLineEdit x0) -> IO (Ptr (TQSize t0))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QLineEdit4 :: (Ptr (TQLineEdit x0) -> IO (Ptr (TQSize t0))) -> IO (FunPtr (Ptr (TQLineEdit x0) -> IO (Ptr (TQSize t0))))

foreign import ccall "wrapper" wrapSetHandler_QLineEdit4_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QLineEditSc a) (QLineEdit x0 -> IO (QSize t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QLineEdit4 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QLineEdit4_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QLineEdit_setHandler4 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQLineEdit x0) -> IO (Ptr (TQSize t0))
    setHandlerWrapper x0
      = do x0obj <- qLineEditFromPtr x0
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

instance QqminimumSizeHint_h (QLineEdit ()) (()) where
 qminimumSizeHint_h x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLineEdit_minimumSizeHint cobj_x0

foreign import ccall "qtc_QLineEdit_minimumSizeHint" qtc_QLineEdit_minimumSizeHint :: Ptr (TQLineEdit a) -> IO (Ptr (TQSize ()))

instance QqminimumSizeHint_h (QLineEditSc a) (()) where
 qminimumSizeHint_h x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLineEdit_minimumSizeHint cobj_x0

instance QminimumSizeHint_h (QLineEdit ()) (()) where
 minimumSizeHint_h x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLineEdit_minimumSizeHint_qth cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QLineEdit_minimumSizeHint_qth" qtc_QLineEdit_minimumSizeHint_qth :: Ptr (TQLineEdit a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QminimumSizeHint_h (QLineEditSc a) (()) where
 minimumSizeHint_h x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLineEdit_minimumSizeHint_qth cobj_x0 csize_ret_w csize_ret_h

instance QmouseDoubleClickEvent_h (QLineEdit ()) ((QMouseEvent t1)) where
 mouseDoubleClickEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLineEdit_mouseDoubleClickEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QLineEdit_mouseDoubleClickEvent" qtc_QLineEdit_mouseDoubleClickEvent :: Ptr (TQLineEdit a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseDoubleClickEvent_h (QLineEditSc a) ((QMouseEvent t1)) where
 mouseDoubleClickEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLineEdit_mouseDoubleClickEvent cobj_x0 cobj_x1

instance QmouseMoveEvent_h (QLineEdit ()) ((QMouseEvent t1)) where
 mouseMoveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLineEdit_mouseMoveEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QLineEdit_mouseMoveEvent" qtc_QLineEdit_mouseMoveEvent :: Ptr (TQLineEdit a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseMoveEvent_h (QLineEditSc a) ((QMouseEvent t1)) where
 mouseMoveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLineEdit_mouseMoveEvent cobj_x0 cobj_x1

instance QmousePressEvent_h (QLineEdit ()) ((QMouseEvent t1)) where
 mousePressEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLineEdit_mousePressEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QLineEdit_mousePressEvent" qtc_QLineEdit_mousePressEvent :: Ptr (TQLineEdit a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmousePressEvent_h (QLineEditSc a) ((QMouseEvent t1)) where
 mousePressEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLineEdit_mousePressEvent cobj_x0 cobj_x1

instance QmouseReleaseEvent_h (QLineEdit ()) ((QMouseEvent t1)) where
 mouseReleaseEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLineEdit_mouseReleaseEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QLineEdit_mouseReleaseEvent" qtc_QLineEdit_mouseReleaseEvent :: Ptr (TQLineEdit a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseReleaseEvent_h (QLineEditSc a) ((QMouseEvent t1)) where
 mouseReleaseEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLineEdit_mouseReleaseEvent cobj_x0 cobj_x1

instance QpaintEvent_h (QLineEdit ()) ((QPaintEvent t1)) where
 paintEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLineEdit_paintEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QLineEdit_paintEvent" qtc_QLineEdit_paintEvent :: Ptr (TQLineEdit a) -> Ptr (TQPaintEvent t1) -> IO ()

instance QpaintEvent_h (QLineEditSc a) ((QPaintEvent t1)) where
 paintEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLineEdit_paintEvent cobj_x0 cobj_x1

instance QqsizeHint_h (QLineEdit ()) (()) where
 qsizeHint_h x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLineEdit_sizeHint cobj_x0

foreign import ccall "qtc_QLineEdit_sizeHint" qtc_QLineEdit_sizeHint :: Ptr (TQLineEdit a) -> IO (Ptr (TQSize ()))

instance QqsizeHint_h (QLineEditSc a) (()) where
 qsizeHint_h x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLineEdit_sizeHint cobj_x0

instance QsizeHint_h (QLineEdit ()) (()) where
 sizeHint_h x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLineEdit_sizeHint_qth cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QLineEdit_sizeHint_qth" qtc_QLineEdit_sizeHint_qth :: Ptr (TQLineEdit a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QsizeHint_h (QLineEditSc a) (()) where
 sizeHint_h x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLineEdit_sizeHint_qth cobj_x0 csize_ret_w csize_ret_h

instance QactionEvent_h (QLineEdit ()) ((QActionEvent t1)) where
 actionEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLineEdit_actionEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QLineEdit_actionEvent" qtc_QLineEdit_actionEvent :: Ptr (TQLineEdit a) -> Ptr (TQActionEvent t1) -> IO ()

instance QactionEvent_h (QLineEditSc a) ((QActionEvent t1)) where
 actionEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLineEdit_actionEvent cobj_x0 cobj_x1

instance QcloseEvent_h (QLineEdit ()) ((QCloseEvent t1)) where
 closeEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLineEdit_closeEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QLineEdit_closeEvent" qtc_QLineEdit_closeEvent :: Ptr (TQLineEdit a) -> Ptr (TQCloseEvent t1) -> IO ()

instance QcloseEvent_h (QLineEditSc a) ((QCloseEvent t1)) where
 closeEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLineEdit_closeEvent cobj_x0 cobj_x1

instance QsetHandler (QLineEdit ()) (QLineEdit x0 -> IO (Int)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QLineEdit5 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QLineEdit5_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QLineEdit_setHandler5 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQLineEdit x0) -> IO (CInt)
    setHandlerWrapper x0
      = do x0obj <- qLineEditFromPtr x0
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

foreign import ccall "qtc_QLineEdit_setHandler5" qtc_QLineEdit_setHandler5 :: Ptr (TQLineEdit a) -> CWString -> Ptr (Ptr (TQLineEdit x0) -> IO (CInt)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QLineEdit5 :: (Ptr (TQLineEdit x0) -> IO (CInt)) -> IO (FunPtr (Ptr (TQLineEdit x0) -> IO (CInt)))

foreign import ccall "wrapper" wrapSetHandler_QLineEdit5_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QLineEditSc a) (QLineEdit x0 -> IO (Int)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QLineEdit5 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QLineEdit5_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QLineEdit_setHandler5 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQLineEdit x0) -> IO (CInt)
    setHandlerWrapper x0
      = do x0obj <- qLineEditFromPtr x0
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

instance QdevType_h (QLineEdit ()) (()) where
 devType_h x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLineEdit_devType cobj_x0

foreign import ccall "qtc_QLineEdit_devType" qtc_QLineEdit_devType :: Ptr (TQLineEdit a) -> IO CInt

instance QdevType_h (QLineEditSc a) (()) where
 devType_h x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLineEdit_devType cobj_x0

instance QenterEvent_h (QLineEdit ()) ((QEvent t1)) where
 enterEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLineEdit_enterEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QLineEdit_enterEvent" qtc_QLineEdit_enterEvent :: Ptr (TQLineEdit a) -> Ptr (TQEvent t1) -> IO ()

instance QenterEvent_h (QLineEditSc a) ((QEvent t1)) where
 enterEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLineEdit_enterEvent cobj_x0 cobj_x1

instance QsetHandler (QLineEdit ()) (QLineEdit x0 -> Int -> IO (Int)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QLineEdit6 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QLineEdit6_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QLineEdit_setHandler6 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQLineEdit x0) -> CInt -> IO (CInt)
    setHandlerWrapper x0 x1
      = do x0obj <- qLineEditFromPtr x0
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

foreign import ccall "qtc_QLineEdit_setHandler6" qtc_QLineEdit_setHandler6 :: Ptr (TQLineEdit a) -> CWString -> Ptr (Ptr (TQLineEdit x0) -> CInt -> IO (CInt)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QLineEdit6 :: (Ptr (TQLineEdit x0) -> CInt -> IO (CInt)) -> IO (FunPtr (Ptr (TQLineEdit x0) -> CInt -> IO (CInt)))

foreign import ccall "wrapper" wrapSetHandler_QLineEdit6_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QLineEditSc a) (QLineEdit x0 -> Int -> IO (Int)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QLineEdit6 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QLineEdit6_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QLineEdit_setHandler6 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQLineEdit x0) -> CInt -> IO (CInt)
    setHandlerWrapper x0 x1
      = do x0obj <- qLineEditFromPtr x0
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

instance QheightForWidth_h (QLineEdit ()) ((Int)) where
 heightForWidth_h x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLineEdit_heightForWidth cobj_x0 (toCInt x1)

foreign import ccall "qtc_QLineEdit_heightForWidth" qtc_QLineEdit_heightForWidth :: Ptr (TQLineEdit a) -> CInt -> IO CInt

instance QheightForWidth_h (QLineEditSc a) ((Int)) where
 heightForWidth_h x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLineEdit_heightForWidth cobj_x0 (toCInt x1)

instance QhideEvent_h (QLineEdit ()) ((QHideEvent t1)) where
 hideEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLineEdit_hideEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QLineEdit_hideEvent" qtc_QLineEdit_hideEvent :: Ptr (TQLineEdit a) -> Ptr (TQHideEvent t1) -> IO ()

instance QhideEvent_h (QLineEditSc a) ((QHideEvent t1)) where
 hideEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLineEdit_hideEvent cobj_x0 cobj_x1

instance QkeyReleaseEvent_h (QLineEdit ()) ((QKeyEvent t1)) where
 keyReleaseEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLineEdit_keyReleaseEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QLineEdit_keyReleaseEvent" qtc_QLineEdit_keyReleaseEvent :: Ptr (TQLineEdit a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyReleaseEvent_h (QLineEditSc a) ((QKeyEvent t1)) where
 keyReleaseEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLineEdit_keyReleaseEvent cobj_x0 cobj_x1

instance QleaveEvent_h (QLineEdit ()) ((QEvent t1)) where
 leaveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLineEdit_leaveEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QLineEdit_leaveEvent" qtc_QLineEdit_leaveEvent :: Ptr (TQLineEdit a) -> Ptr (TQEvent t1) -> IO ()

instance QleaveEvent_h (QLineEditSc a) ((QEvent t1)) where
 leaveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLineEdit_leaveEvent cobj_x0 cobj_x1

instance QmoveEvent_h (QLineEdit ()) ((QMoveEvent t1)) where
 moveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLineEdit_moveEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QLineEdit_moveEvent" qtc_QLineEdit_moveEvent :: Ptr (TQLineEdit a) -> Ptr (TQMoveEvent t1) -> IO ()

instance QmoveEvent_h (QLineEditSc a) ((QMoveEvent t1)) where
 moveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLineEdit_moveEvent cobj_x0 cobj_x1

instance QsetHandler (QLineEdit ()) (QLineEdit x0 -> IO (QPaintEngine t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QLineEdit7 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QLineEdit7_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QLineEdit_setHandler7 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQLineEdit x0) -> IO (Ptr (TQPaintEngine t0))
    setHandlerWrapper x0
      = do x0obj <- qLineEditFromPtr x0
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

foreign import ccall "qtc_QLineEdit_setHandler7" qtc_QLineEdit_setHandler7 :: Ptr (TQLineEdit a) -> CWString -> Ptr (Ptr (TQLineEdit x0) -> IO (Ptr (TQPaintEngine t0))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QLineEdit7 :: (Ptr (TQLineEdit x0) -> IO (Ptr (TQPaintEngine t0))) -> IO (FunPtr (Ptr (TQLineEdit x0) -> IO (Ptr (TQPaintEngine t0))))

foreign import ccall "wrapper" wrapSetHandler_QLineEdit7_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QLineEditSc a) (QLineEdit x0 -> IO (QPaintEngine t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QLineEdit7 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QLineEdit7_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QLineEdit_setHandler7 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQLineEdit x0) -> IO (Ptr (TQPaintEngine t0))
    setHandlerWrapper x0
      = do x0obj <- qLineEditFromPtr x0
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

instance QpaintEngine_h (QLineEdit ()) (()) where
 paintEngine_h x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLineEdit_paintEngine cobj_x0

foreign import ccall "qtc_QLineEdit_paintEngine" qtc_QLineEdit_paintEngine :: Ptr (TQLineEdit a) -> IO (Ptr (TQPaintEngine ()))

instance QpaintEngine_h (QLineEditSc a) (()) where
 paintEngine_h x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLineEdit_paintEngine cobj_x0

instance QresizeEvent_h (QLineEdit ()) ((QResizeEvent t1)) where
 resizeEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLineEdit_resizeEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QLineEdit_resizeEvent" qtc_QLineEdit_resizeEvent :: Ptr (TQLineEdit a) -> Ptr (TQResizeEvent t1) -> IO ()

instance QresizeEvent_h (QLineEditSc a) ((QResizeEvent t1)) where
 resizeEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLineEdit_resizeEvent cobj_x0 cobj_x1

instance QsetHandler (QLineEdit ()) (QLineEdit x0 -> Bool -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QLineEdit8 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QLineEdit8_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QLineEdit_setHandler8 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQLineEdit x0) -> CBool -> IO ()
    setHandlerWrapper x0 x1
      = do x0obj <- qLineEditFromPtr x0
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

foreign import ccall "qtc_QLineEdit_setHandler8" qtc_QLineEdit_setHandler8 :: Ptr (TQLineEdit a) -> CWString -> Ptr (Ptr (TQLineEdit x0) -> CBool -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QLineEdit8 :: (Ptr (TQLineEdit x0) -> CBool -> IO ()) -> IO (FunPtr (Ptr (TQLineEdit x0) -> CBool -> IO ()))

foreign import ccall "wrapper" wrapSetHandler_QLineEdit8_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QLineEditSc a) (QLineEdit x0 -> Bool -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QLineEdit8 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QLineEdit8_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QLineEdit_setHandler8 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQLineEdit x0) -> CBool -> IO ()
    setHandlerWrapper x0 x1
      = do x0obj <- qLineEditFromPtr x0
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

instance QsetVisible_h (QLineEdit ()) ((Bool)) where
 setVisible_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLineEdit_setVisible cobj_x0 (toCBool x1)

foreign import ccall "qtc_QLineEdit_setVisible" qtc_QLineEdit_setVisible :: Ptr (TQLineEdit a) -> CBool -> IO ()

instance QsetVisible_h (QLineEditSc a) ((Bool)) where
 setVisible_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLineEdit_setVisible cobj_x0 (toCBool x1)

instance QshowEvent_h (QLineEdit ()) ((QShowEvent t1)) where
 showEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLineEdit_showEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QLineEdit_showEvent" qtc_QLineEdit_showEvent :: Ptr (TQLineEdit a) -> Ptr (TQShowEvent t1) -> IO ()

instance QshowEvent_h (QLineEditSc a) ((QShowEvent t1)) where
 showEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLineEdit_showEvent cobj_x0 cobj_x1

instance QtabletEvent_h (QLineEdit ()) ((QTabletEvent t1)) where
 tabletEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLineEdit_tabletEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QLineEdit_tabletEvent" qtc_QLineEdit_tabletEvent :: Ptr (TQLineEdit a) -> Ptr (TQTabletEvent t1) -> IO ()

instance QtabletEvent_h (QLineEditSc a) ((QTabletEvent t1)) where
 tabletEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLineEdit_tabletEvent cobj_x0 cobj_x1

instance QwheelEvent_h (QLineEdit ()) ((QWheelEvent t1)) where
 wheelEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLineEdit_wheelEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QLineEdit_wheelEvent" qtc_QLineEdit_wheelEvent :: Ptr (TQLineEdit a) -> Ptr (TQWheelEvent t1) -> IO ()

instance QwheelEvent_h (QLineEditSc a) ((QWheelEvent t1)) where
 wheelEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLineEdit_wheelEvent cobj_x0 cobj_x1

instance QsetHandler (QLineEdit ()) (QLineEdit x0 -> QObject t1 -> QEvent t2 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QLineEdit9 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QLineEdit9_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QLineEdit_setHandler9 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQLineEdit x0) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO (CBool)
    setHandlerWrapper x0 x1 x2
      = do x0obj <- qLineEditFromPtr x0
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

foreign import ccall "qtc_QLineEdit_setHandler9" qtc_QLineEdit_setHandler9 :: Ptr (TQLineEdit a) -> CWString -> Ptr (Ptr (TQLineEdit x0) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO (CBool)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QLineEdit9 :: (Ptr (TQLineEdit x0) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO (CBool)) -> IO (FunPtr (Ptr (TQLineEdit x0) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO (CBool)))

foreign import ccall "wrapper" wrapSetHandler_QLineEdit9_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QLineEditSc a) (QLineEdit x0 -> QObject t1 -> QEvent t2 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QLineEdit9 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QLineEdit9_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QLineEdit_setHandler9 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQLineEdit x0) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO (CBool)
    setHandlerWrapper x0 x1 x2
      = do x0obj <- qLineEditFromPtr x0
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

instance QeventFilter_h (QLineEdit ()) ((QObject t1, QEvent t2)) where
 eventFilter_h x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QLineEdit_eventFilter cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QLineEdit_eventFilter" qtc_QLineEdit_eventFilter :: Ptr (TQLineEdit a) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO CBool

instance QeventFilter_h (QLineEditSc a) ((QObject t1, QEvent t2)) where
 eventFilter_h x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QLineEdit_eventFilter cobj_x0 cobj_x1 cobj_x2

