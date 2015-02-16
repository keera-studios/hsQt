{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QTextEdit_h.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:15
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QTextEdit_h where

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

instance QunSetUserMethod (QTextEdit ()) where
 unSetUserMethod qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QTextEdit_unSetUserMethod cobj_qobj (toCInt 0) (toCInt evid)

foreign import ccall "qtc_QTextEdit_unSetUserMethod" qtc_QTextEdit_unSetUserMethod :: Ptr (TQTextEdit a) -> CInt -> CInt -> IO (CBool)

instance QunSetUserMethod (QTextEditSc a) where
 unSetUserMethod qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QTextEdit_unSetUserMethod cobj_qobj (toCInt 0) (toCInt evid)

instance QunSetUserMethodVariant (QTextEdit ()) where
 unSetUserMethodVariant qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QTextEdit_unSetUserMethod cobj_qobj (toCInt 1) (toCInt evid)

instance QunSetUserMethodVariant (QTextEditSc a) where
 unSetUserMethodVariant qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QTextEdit_unSetUserMethod cobj_qobj (toCInt 1) (toCInt evid)

instance QunSetUserMethodVariantList (QTextEdit ()) where
 unSetUserMethodVariantList qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QTextEdit_unSetUserMethod cobj_qobj (toCInt 2) (toCInt evid)

instance QunSetUserMethodVariantList (QTextEditSc a) where
 unSetUserMethodVariantList qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QTextEdit_unSetUserMethod cobj_qobj (toCInt 2) (toCInt evid)

instance QsetUserMethod (QTextEdit ()) (QTextEdit x0 -> IO ()) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethod_QTextEdit setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethod_QTextEdit_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QTextEdit_setUserMethod cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQTextEdit x0) -> IO ()
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

foreign import ccall "qtc_QTextEdit_setUserMethod" qtc_QTextEdit_setUserMethod :: Ptr (TQTextEdit a) -> CInt -> Ptr (Ptr (TQTextEdit x0) -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetUserMethod_QTextEdit :: (Ptr (TQTextEdit x0) -> IO ()) -> IO (FunPtr (Ptr (TQTextEdit x0) -> IO ()))

foreign import ccall "wrapper" wrapSetUserMethod_QTextEdit_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetUserMethod (QTextEditSc a) (QTextEdit x0 -> IO ()) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethod_QTextEdit setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethod_QTextEdit_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QTextEdit_setUserMethod cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQTextEdit x0) -> IO ()
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

instance QsetUserMethod (QTextEdit ()) (QTextEdit x0 -> QVariant () -> IO (QVariant ())) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethodVariant_QTextEdit setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethodVariant_QTextEdit_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QTextEdit_setUserMethodVariant cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQTextEdit x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))
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

foreign import ccall "qtc_QTextEdit_setUserMethodVariant" qtc_QTextEdit_setUserMethodVariant :: Ptr (TQTextEdit a) -> CInt -> Ptr (Ptr (TQTextEdit x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetUserMethodVariant_QTextEdit :: (Ptr (TQTextEdit x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))) -> IO (FunPtr (Ptr (TQTextEdit x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))))

foreign import ccall "wrapper" wrapSetUserMethodVariant_QTextEdit_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetUserMethod (QTextEditSc a) (QTextEdit x0 -> QVariant () -> IO (QVariant ())) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethodVariant_QTextEdit setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethodVariant_QTextEdit_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QTextEdit_setUserMethodVariant cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQTextEdit x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))
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

instance QunSetHandler (QTextEdit ()) where 
 unSetHandler qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withCWString evid $ \cstr_evid ->
    qtc_QTextEdit_unSetHandler cobj_qobj cstr_evid

foreign import ccall "qtc_QTextEdit_unSetHandler" qtc_QTextEdit_unSetHandler :: Ptr (TQTextEdit a) -> CWString -> IO (CBool)

instance QunSetHandler (QTextEditSc a) where 
 unSetHandler qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withCWString evid $ \cstr_evid ->
    qtc_QTextEdit_unSetHandler cobj_qobj cstr_evid

instance QsetHandler (QTextEdit ()) (QTextEdit x0 -> QObject t1 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTextEdit1 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTextEdit1_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTextEdit_setHandler1 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTextEdit x0) -> Ptr (TQObject t1) -> IO (CBool)
    setHandlerWrapper x0 x1
      = do x0obj <- qTextEditFromPtr x0
           x1obj <- qObjectFromPtr x1
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

foreign import ccall "qtc_QTextEdit_setHandler1" qtc_QTextEdit_setHandler1 :: Ptr (TQTextEdit a) -> CWString -> Ptr (Ptr (TQTextEdit x0) -> Ptr (TQObject t1) -> IO (CBool)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QTextEdit1 :: (Ptr (TQTextEdit x0) -> Ptr (TQObject t1) -> IO (CBool)) -> IO (FunPtr (Ptr (TQTextEdit x0) -> Ptr (TQObject t1) -> IO (CBool)))

foreign import ccall "wrapper" wrapSetHandler_QTextEdit1_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QTextEditSc a) (QTextEdit x0 -> QObject t1 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTextEdit1 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTextEdit1_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTextEdit_setHandler1 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTextEdit x0) -> Ptr (TQObject t1) -> IO (CBool)
    setHandlerWrapper x0 x1
      = do x0obj <- qTextEditFromPtr x0
           x1obj <- qObjectFromPtr x1
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

instance QcanInsertFromMimeData_h (QTextEdit ()) ((QMimeData t1)) where
 canInsertFromMimeData_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextEdit_canInsertFromMimeData cobj_x0 cobj_x1

foreign import ccall "qtc_QTextEdit_canInsertFromMimeData" qtc_QTextEdit_canInsertFromMimeData :: Ptr (TQTextEdit a) -> Ptr (TQMimeData t1) -> IO CBool

instance QcanInsertFromMimeData_h (QTextEditSc a) ((QMimeData t1)) where
 canInsertFromMimeData_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextEdit_canInsertFromMimeData cobj_x0 cobj_x1

instance QsetHandler (QTextEdit ()) (QTextEdit x0 -> QEvent t1 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTextEdit2 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTextEdit2_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTextEdit_setHandler2 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTextEdit x0) -> Ptr (TQEvent t1) -> IO ()
    setHandlerWrapper x0 x1
      = do x0obj <- qTextEditFromPtr x0
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

foreign import ccall "qtc_QTextEdit_setHandler2" qtc_QTextEdit_setHandler2 :: Ptr (TQTextEdit a) -> CWString -> Ptr (Ptr (TQTextEdit x0) -> Ptr (TQEvent t1) -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QTextEdit2 :: (Ptr (TQTextEdit x0) -> Ptr (TQEvent t1) -> IO ()) -> IO (FunPtr (Ptr (TQTextEdit x0) -> Ptr (TQEvent t1) -> IO ()))

foreign import ccall "wrapper" wrapSetHandler_QTextEdit2_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QTextEditSc a) (QTextEdit x0 -> QEvent t1 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTextEdit2 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTextEdit2_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTextEdit_setHandler2 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTextEdit x0) -> Ptr (TQEvent t1) -> IO ()
    setHandlerWrapper x0 x1
      = do x0obj <- qTextEditFromPtr x0
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

instance QchangeEvent_h (QTextEdit ()) ((QEvent t1)) where
 changeEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextEdit_changeEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTextEdit_changeEvent" qtc_QTextEdit_changeEvent :: Ptr (TQTextEdit a) -> Ptr (TQEvent t1) -> IO ()

instance QchangeEvent_h (QTextEditSc a) ((QEvent t1)) where
 changeEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextEdit_changeEvent cobj_x0 cobj_x1

instance QcontextMenuEvent_h (QTextEdit ()) ((QContextMenuEvent t1)) where
 contextMenuEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextEdit_contextMenuEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTextEdit_contextMenuEvent" qtc_QTextEdit_contextMenuEvent :: Ptr (TQTextEdit a) -> Ptr (TQContextMenuEvent t1) -> IO ()

instance QcontextMenuEvent_h (QTextEditSc a) ((QContextMenuEvent t1)) where
 contextMenuEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextEdit_contextMenuEvent cobj_x0 cobj_x1

instance QsetHandler (QTextEdit ()) (QTextEdit x0 -> IO (QObject t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTextEdit3 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTextEdit3_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTextEdit_setHandler3 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTextEdit x0) -> IO (Ptr (TQObject t0))
    setHandlerWrapper x0
      = do x0obj <- qTextEditFromPtr x0
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

foreign import ccall "qtc_QTextEdit_setHandler3" qtc_QTextEdit_setHandler3 :: Ptr (TQTextEdit a) -> CWString -> Ptr (Ptr (TQTextEdit x0) -> IO (Ptr (TQObject t0))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QTextEdit3 :: (Ptr (TQTextEdit x0) -> IO (Ptr (TQObject t0))) -> IO (FunPtr (Ptr (TQTextEdit x0) -> IO (Ptr (TQObject t0))))

foreign import ccall "wrapper" wrapSetHandler_QTextEdit3_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QTextEditSc a) (QTextEdit x0 -> IO (QObject t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTextEdit3 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTextEdit3_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTextEdit_setHandler3 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTextEdit x0) -> IO (Ptr (TQObject t0))
    setHandlerWrapper x0
      = do x0obj <- qTextEditFromPtr x0
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

instance QcreateMimeDataFromSelection_h (QTextEdit ()) (()) where
 createMimeDataFromSelection_h x0 ()
  = withQMimeDataResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextEdit_createMimeDataFromSelection cobj_x0

foreign import ccall "qtc_QTextEdit_createMimeDataFromSelection" qtc_QTextEdit_createMimeDataFromSelection :: Ptr (TQTextEdit a) -> IO (Ptr (TQMimeData ()))

instance QcreateMimeDataFromSelection_h (QTextEditSc a) (()) where
 createMimeDataFromSelection_h x0 ()
  = withQMimeDataResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextEdit_createMimeDataFromSelection cobj_x0

instance QdragEnterEvent_h (QTextEdit ()) ((QDragEnterEvent t1)) where
 dragEnterEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextEdit_dragEnterEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTextEdit_dragEnterEvent" qtc_QTextEdit_dragEnterEvent :: Ptr (TQTextEdit a) -> Ptr (TQDragEnterEvent t1) -> IO ()

instance QdragEnterEvent_h (QTextEditSc a) ((QDragEnterEvent t1)) where
 dragEnterEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextEdit_dragEnterEvent cobj_x0 cobj_x1

instance QdragLeaveEvent_h (QTextEdit ()) ((QDragLeaveEvent t1)) where
 dragLeaveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextEdit_dragLeaveEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTextEdit_dragLeaveEvent" qtc_QTextEdit_dragLeaveEvent :: Ptr (TQTextEdit a) -> Ptr (TQDragLeaveEvent t1) -> IO ()

instance QdragLeaveEvent_h (QTextEditSc a) ((QDragLeaveEvent t1)) where
 dragLeaveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextEdit_dragLeaveEvent cobj_x0 cobj_x1

instance QdragMoveEvent_h (QTextEdit ()) ((QDragMoveEvent t1)) where
 dragMoveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextEdit_dragMoveEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTextEdit_dragMoveEvent" qtc_QTextEdit_dragMoveEvent :: Ptr (TQTextEdit a) -> Ptr (TQDragMoveEvent t1) -> IO ()

instance QdragMoveEvent_h (QTextEditSc a) ((QDragMoveEvent t1)) where
 dragMoveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextEdit_dragMoveEvent cobj_x0 cobj_x1

instance QdropEvent_h (QTextEdit ()) ((QDropEvent t1)) where
 dropEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextEdit_dropEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTextEdit_dropEvent" qtc_QTextEdit_dropEvent :: Ptr (TQTextEdit a) -> Ptr (TQDropEvent t1) -> IO ()

instance QdropEvent_h (QTextEditSc a) ((QDropEvent t1)) where
 dropEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextEdit_dropEvent cobj_x0 cobj_x1

instance QsetHandler (QTextEdit ()) (QTextEdit x0 -> QEvent t1 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTextEdit4 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTextEdit4_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTextEdit_setHandler4 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTextEdit x0) -> Ptr (TQEvent t1) -> IO (CBool)
    setHandlerWrapper x0 x1
      = do x0obj <- qTextEditFromPtr x0
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

foreign import ccall "qtc_QTextEdit_setHandler4" qtc_QTextEdit_setHandler4 :: Ptr (TQTextEdit a) -> CWString -> Ptr (Ptr (TQTextEdit x0) -> Ptr (TQEvent t1) -> IO (CBool)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QTextEdit4 :: (Ptr (TQTextEdit x0) -> Ptr (TQEvent t1) -> IO (CBool)) -> IO (FunPtr (Ptr (TQTextEdit x0) -> Ptr (TQEvent t1) -> IO (CBool)))

foreign import ccall "wrapper" wrapSetHandler_QTextEdit4_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QTextEditSc a) (QTextEdit x0 -> QEvent t1 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTextEdit4 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTextEdit4_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTextEdit_setHandler4 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTextEdit x0) -> Ptr (TQEvent t1) -> IO (CBool)
    setHandlerWrapper x0 x1
      = do x0obj <- qTextEditFromPtr x0
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

instance Qevent_h (QTextEdit ()) ((QEvent t1)) where
 event_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextEdit_event cobj_x0 cobj_x1

foreign import ccall "qtc_QTextEdit_event" qtc_QTextEdit_event :: Ptr (TQTextEdit a) -> Ptr (TQEvent t1) -> IO CBool

instance Qevent_h (QTextEditSc a) ((QEvent t1)) where
 event_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextEdit_event cobj_x0 cobj_x1

instance QfocusInEvent_h (QTextEdit ()) ((QFocusEvent t1)) where
 focusInEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextEdit_focusInEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTextEdit_focusInEvent" qtc_QTextEdit_focusInEvent :: Ptr (TQTextEdit a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusInEvent_h (QTextEditSc a) ((QFocusEvent t1)) where
 focusInEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextEdit_focusInEvent cobj_x0 cobj_x1

instance QfocusOutEvent_h (QTextEdit ()) ((QFocusEvent t1)) where
 focusOutEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextEdit_focusOutEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTextEdit_focusOutEvent" qtc_QTextEdit_focusOutEvent :: Ptr (TQTextEdit a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusOutEvent_h (QTextEditSc a) ((QFocusEvent t1)) where
 focusOutEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextEdit_focusOutEvent cobj_x0 cobj_x1

instance QsetHandler (QTextEdit ()) (QTextEdit x0 -> QObject t1 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTextEdit5 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTextEdit5_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTextEdit_setHandler5 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTextEdit x0) -> Ptr (TQObject t1) -> IO ()
    setHandlerWrapper x0 x1
      = do x0obj <- qTextEditFromPtr x0
           x1obj <- qObjectFromPtr x1
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

foreign import ccall "qtc_QTextEdit_setHandler5" qtc_QTextEdit_setHandler5 :: Ptr (TQTextEdit a) -> CWString -> Ptr (Ptr (TQTextEdit x0) -> Ptr (TQObject t1) -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QTextEdit5 :: (Ptr (TQTextEdit x0) -> Ptr (TQObject t1) -> IO ()) -> IO (FunPtr (Ptr (TQTextEdit x0) -> Ptr (TQObject t1) -> IO ()))

foreign import ccall "wrapper" wrapSetHandler_QTextEdit5_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QTextEditSc a) (QTextEdit x0 -> QObject t1 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTextEdit5 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTextEdit5_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTextEdit_setHandler5 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTextEdit x0) -> Ptr (TQObject t1) -> IO ()
    setHandlerWrapper x0 x1
      = do x0obj <- qTextEditFromPtr x0
           x1obj <- qObjectFromPtr x1
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

instance QinsertFromMimeData_h (QTextEdit ()) ((QMimeData t1)) where
 insertFromMimeData_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextEdit_insertFromMimeData cobj_x0 cobj_x1

foreign import ccall "qtc_QTextEdit_insertFromMimeData" qtc_QTextEdit_insertFromMimeData :: Ptr (TQTextEdit a) -> Ptr (TQMimeData t1) -> IO ()

instance QinsertFromMimeData_h (QTextEditSc a) ((QMimeData t1)) where
 insertFromMimeData_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextEdit_insertFromMimeData cobj_x0 cobj_x1

instance QkeyPressEvent_h (QTextEdit ()) ((QKeyEvent t1)) where
 keyPressEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextEdit_keyPressEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTextEdit_keyPressEvent" qtc_QTextEdit_keyPressEvent :: Ptr (TQTextEdit a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyPressEvent_h (QTextEditSc a) ((QKeyEvent t1)) where
 keyPressEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextEdit_keyPressEvent cobj_x0 cobj_x1

instance QkeyReleaseEvent_h (QTextEdit ()) ((QKeyEvent t1)) where
 keyReleaseEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextEdit_keyReleaseEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTextEdit_keyReleaseEvent" qtc_QTextEdit_keyReleaseEvent :: Ptr (TQTextEdit a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyReleaseEvent_h (QTextEditSc a) ((QKeyEvent t1)) where
 keyReleaseEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextEdit_keyReleaseEvent cobj_x0 cobj_x1

instance QsetHandler (QTextEdit ()) (QTextEdit x0 -> Int -> QUrl t2 -> IO (QVariant t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTextEdit6 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTextEdit6_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTextEdit_setHandler6 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTextEdit x0) -> CInt -> Ptr (TQUrl t2) -> IO (Ptr (TQVariant t0))
    setHandlerWrapper x0 x1 x2
      = do x0obj <- qTextEditFromPtr x0
           let x1int = fromCInt x1
           x2obj <- objectFromPtr_nf x2
           let rv =
                if (objectIsNull x0obj)
                 then return $ objectCast x0obj
                 else _handler x0obj x1int x2obj
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

foreign import ccall "qtc_QTextEdit_setHandler6" qtc_QTextEdit_setHandler6 :: Ptr (TQTextEdit a) -> CWString -> Ptr (Ptr (TQTextEdit x0) -> CInt -> Ptr (TQUrl t2) -> IO (Ptr (TQVariant t0))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QTextEdit6 :: (Ptr (TQTextEdit x0) -> CInt -> Ptr (TQUrl t2) -> IO (Ptr (TQVariant t0))) -> IO (FunPtr (Ptr (TQTextEdit x0) -> CInt -> Ptr (TQUrl t2) -> IO (Ptr (TQVariant t0))))

foreign import ccall "wrapper" wrapSetHandler_QTextEdit6_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QTextEditSc a) (QTextEdit x0 -> Int -> QUrl t2 -> IO (QVariant t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTextEdit6 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTextEdit6_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTextEdit_setHandler6 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTextEdit x0) -> CInt -> Ptr (TQUrl t2) -> IO (Ptr (TQVariant t0))
    setHandlerWrapper x0 x1 x2
      = do x0obj <- qTextEditFromPtr x0
           let x1int = fromCInt x1
           x2obj <- objectFromPtr_nf x2
           let rv =
                if (objectIsNull x0obj)
                 then return $ objectCast x0obj
                 else _handler x0obj x1int x2obj
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

instance QloadResource_h (QTextEdit ()) ((Int, QUrl t2)) where
 loadResource_h x0 (x1, x2)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QTextEdit_loadResource cobj_x0 (toCInt x1) cobj_x2

foreign import ccall "qtc_QTextEdit_loadResource" qtc_QTextEdit_loadResource :: Ptr (TQTextEdit a) -> CInt -> Ptr (TQUrl t2) -> IO (Ptr (TQVariant ()))

instance QloadResource_h (QTextEditSc a) ((Int, QUrl t2)) where
 loadResource_h x0 (x1, x2)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QTextEdit_loadResource cobj_x0 (toCInt x1) cobj_x2

instance QmouseDoubleClickEvent_h (QTextEdit ()) ((QMouseEvent t1)) where
 mouseDoubleClickEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextEdit_mouseDoubleClickEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTextEdit_mouseDoubleClickEvent" qtc_QTextEdit_mouseDoubleClickEvent :: Ptr (TQTextEdit a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseDoubleClickEvent_h (QTextEditSc a) ((QMouseEvent t1)) where
 mouseDoubleClickEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextEdit_mouseDoubleClickEvent cobj_x0 cobj_x1

instance QmouseMoveEvent_h (QTextEdit ()) ((QMouseEvent t1)) where
 mouseMoveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextEdit_mouseMoveEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTextEdit_mouseMoveEvent" qtc_QTextEdit_mouseMoveEvent :: Ptr (TQTextEdit a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseMoveEvent_h (QTextEditSc a) ((QMouseEvent t1)) where
 mouseMoveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextEdit_mouseMoveEvent cobj_x0 cobj_x1

instance QmousePressEvent_h (QTextEdit ()) ((QMouseEvent t1)) where
 mousePressEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextEdit_mousePressEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTextEdit_mousePressEvent" qtc_QTextEdit_mousePressEvent :: Ptr (TQTextEdit a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmousePressEvent_h (QTextEditSc a) ((QMouseEvent t1)) where
 mousePressEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextEdit_mousePressEvent cobj_x0 cobj_x1

instance QmouseReleaseEvent_h (QTextEdit ()) ((QMouseEvent t1)) where
 mouseReleaseEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextEdit_mouseReleaseEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTextEdit_mouseReleaseEvent" qtc_QTextEdit_mouseReleaseEvent :: Ptr (TQTextEdit a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseReleaseEvent_h (QTextEditSc a) ((QMouseEvent t1)) where
 mouseReleaseEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextEdit_mouseReleaseEvent cobj_x0 cobj_x1

instance QpaintEvent_h (QTextEdit ()) ((QPaintEvent t1)) where
 paintEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextEdit_paintEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTextEdit_paintEvent" qtc_QTextEdit_paintEvent :: Ptr (TQTextEdit a) -> Ptr (TQPaintEvent t1) -> IO ()

instance QpaintEvent_h (QTextEditSc a) ((QPaintEvent t1)) where
 paintEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextEdit_paintEvent cobj_x0 cobj_x1

instance QresizeEvent_h (QTextEdit ()) ((QResizeEvent t1)) where
 resizeEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextEdit_resizeEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTextEdit_resizeEvent" qtc_QTextEdit_resizeEvent :: Ptr (TQTextEdit a) -> Ptr (TQResizeEvent t1) -> IO ()

instance QresizeEvent_h (QTextEditSc a) ((QResizeEvent t1)) where
 resizeEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextEdit_resizeEvent cobj_x0 cobj_x1

instance QsetHandler (QTextEdit ()) (QTextEdit x0 -> Int -> Int -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTextEdit7 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTextEdit7_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTextEdit_setHandler7 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTextEdit x0) -> CInt -> CInt -> IO ()
    setHandlerWrapper x0 x1 x2
      = do x0obj <- qTextEditFromPtr x0
           let x1int = fromCInt x1
           let x2int = fromCInt x2
           if (objectIsNull x0obj)
            then return ()
            else _handler x0obj x1int x2int

    setHandlerWrapper_d :: Ptr fun -> Ptr () -> Ptr fun_d -> IO ()
    setHandlerWrapper_d funptr stptr funptr_d
      = do when (stptr/=ptrNull)
            (freeStablePtr (castPtrToStablePtr stptr))
           when (funptr/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr))
           when (funptr_d/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr_d))
           return ()

foreign import ccall "qtc_QTextEdit_setHandler7" qtc_QTextEdit_setHandler7 :: Ptr (TQTextEdit a) -> CWString -> Ptr (Ptr (TQTextEdit x0) -> CInt -> CInt -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QTextEdit7 :: (Ptr (TQTextEdit x0) -> CInt -> CInt -> IO ()) -> IO (FunPtr (Ptr (TQTextEdit x0) -> CInt -> CInt -> IO ()))

foreign import ccall "wrapper" wrapSetHandler_QTextEdit7_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QTextEditSc a) (QTextEdit x0 -> Int -> Int -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTextEdit7 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTextEdit7_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTextEdit_setHandler7 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTextEdit x0) -> CInt -> CInt -> IO ()
    setHandlerWrapper x0 x1 x2
      = do x0obj <- qTextEditFromPtr x0
           let x1int = fromCInt x1
           let x2int = fromCInt x2
           if (objectIsNull x0obj)
            then return ()
            else _handler x0obj x1int x2int

    setHandlerWrapper_d :: Ptr fun -> Ptr () -> Ptr fun_d -> IO ()
    setHandlerWrapper_d funptr stptr funptr_d
      = do when (stptr/=ptrNull)
            (freeStablePtr (castPtrToStablePtr stptr))
           when (funptr/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr))
           when (funptr_d/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr_d))
           return ()

instance QscrollContentsBy_h (QTextEdit ()) ((Int, Int)) where
 scrollContentsBy_h x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextEdit_scrollContentsBy cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QTextEdit_scrollContentsBy" qtc_QTextEdit_scrollContentsBy :: Ptr (TQTextEdit a) -> CInt -> CInt -> IO ()

instance QscrollContentsBy_h (QTextEditSc a) ((Int, Int)) where
 scrollContentsBy_h x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextEdit_scrollContentsBy cobj_x0 (toCInt x1) (toCInt x2)

instance QshowEvent_h (QTextEdit ()) ((QShowEvent t1)) where
 showEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextEdit_showEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTextEdit_showEvent" qtc_QTextEdit_showEvent :: Ptr (TQTextEdit a) -> Ptr (TQShowEvent t1) -> IO ()

instance QshowEvent_h (QTextEditSc a) ((QShowEvent t1)) where
 showEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextEdit_showEvent cobj_x0 cobj_x1

instance QwheelEvent_h (QTextEdit ()) ((QWheelEvent t1)) where
 wheelEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextEdit_wheelEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTextEdit_wheelEvent" qtc_QTextEdit_wheelEvent :: Ptr (TQTextEdit a) -> Ptr (TQWheelEvent t1) -> IO ()

instance QwheelEvent_h (QTextEditSc a) ((QWheelEvent t1)) where
 wheelEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextEdit_wheelEvent cobj_x0 cobj_x1

instance QsetHandler (QTextEdit ()) (QTextEdit x0 -> IO (QSize t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTextEdit8 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTextEdit8_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTextEdit_setHandler8 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTextEdit x0) -> IO (Ptr (TQSize t0))
    setHandlerWrapper x0
      = do x0obj <- qTextEditFromPtr x0
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

foreign import ccall "qtc_QTextEdit_setHandler8" qtc_QTextEdit_setHandler8 :: Ptr (TQTextEdit a) -> CWString -> Ptr (Ptr (TQTextEdit x0) -> IO (Ptr (TQSize t0))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QTextEdit8 :: (Ptr (TQTextEdit x0) -> IO (Ptr (TQSize t0))) -> IO (FunPtr (Ptr (TQTextEdit x0) -> IO (Ptr (TQSize t0))))

foreign import ccall "wrapper" wrapSetHandler_QTextEdit8_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QTextEditSc a) (QTextEdit x0 -> IO (QSize t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTextEdit8 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTextEdit8_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTextEdit_setHandler8 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTextEdit x0) -> IO (Ptr (TQSize t0))
    setHandlerWrapper x0
      = do x0obj <- qTextEditFromPtr x0
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

instance QqminimumSizeHint_h (QTextEdit ()) (()) where
 qminimumSizeHint_h x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextEdit_minimumSizeHint cobj_x0

foreign import ccall "qtc_QTextEdit_minimumSizeHint" qtc_QTextEdit_minimumSizeHint :: Ptr (TQTextEdit a) -> IO (Ptr (TQSize ()))

instance QqminimumSizeHint_h (QTextEditSc a) (()) where
 qminimumSizeHint_h x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextEdit_minimumSizeHint cobj_x0

instance QminimumSizeHint_h (QTextEdit ()) (()) where
 minimumSizeHint_h x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextEdit_minimumSizeHint_qth cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QTextEdit_minimumSizeHint_qth" qtc_QTextEdit_minimumSizeHint_qth :: Ptr (TQTextEdit a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QminimumSizeHint_h (QTextEditSc a) (()) where
 minimumSizeHint_h x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextEdit_minimumSizeHint_qth cobj_x0 csize_ret_w csize_ret_h

instance QqsizeHint_h (QTextEdit ()) (()) where
 qsizeHint_h x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextEdit_sizeHint cobj_x0

foreign import ccall "qtc_QTextEdit_sizeHint" qtc_QTextEdit_sizeHint :: Ptr (TQTextEdit a) -> IO (Ptr (TQSize ()))

instance QqsizeHint_h (QTextEditSc a) (()) where
 qsizeHint_h x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextEdit_sizeHint cobj_x0

instance QsizeHint_h (QTextEdit ()) (()) where
 sizeHint_h x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextEdit_sizeHint_qth cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QTextEdit_sizeHint_qth" qtc_QTextEdit_sizeHint_qth :: Ptr (TQTextEdit a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QsizeHint_h (QTextEditSc a) (()) where
 sizeHint_h x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextEdit_sizeHint_qth cobj_x0 csize_ret_w csize_ret_h

instance QviewportEvent_h (QTextEdit ()) ((QEvent t1)) where
 viewportEvent_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextEdit_viewportEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTextEdit_viewportEvent" qtc_QTextEdit_viewportEvent :: Ptr (TQTextEdit a) -> Ptr (TQEvent t1) -> IO CBool

instance QviewportEvent_h (QTextEditSc a) ((QEvent t1)) where
 viewportEvent_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextEdit_viewportEvent cobj_x0 cobj_x1

instance QactionEvent_h (QTextEdit ()) ((QActionEvent t1)) where
 actionEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextEdit_actionEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTextEdit_actionEvent" qtc_QTextEdit_actionEvent :: Ptr (TQTextEdit a) -> Ptr (TQActionEvent t1) -> IO ()

instance QactionEvent_h (QTextEditSc a) ((QActionEvent t1)) where
 actionEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextEdit_actionEvent cobj_x0 cobj_x1

instance QcloseEvent_h (QTextEdit ()) ((QCloseEvent t1)) where
 closeEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextEdit_closeEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTextEdit_closeEvent" qtc_QTextEdit_closeEvent :: Ptr (TQTextEdit a) -> Ptr (TQCloseEvent t1) -> IO ()

instance QcloseEvent_h (QTextEditSc a) ((QCloseEvent t1)) where
 closeEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextEdit_closeEvent cobj_x0 cobj_x1

instance QsetHandler (QTextEdit ()) (QTextEdit x0 -> IO (Int)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTextEdit9 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTextEdit9_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTextEdit_setHandler9 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTextEdit x0) -> IO (CInt)
    setHandlerWrapper x0
      = do x0obj <- qTextEditFromPtr x0
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

foreign import ccall "qtc_QTextEdit_setHandler9" qtc_QTextEdit_setHandler9 :: Ptr (TQTextEdit a) -> CWString -> Ptr (Ptr (TQTextEdit x0) -> IO (CInt)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QTextEdit9 :: (Ptr (TQTextEdit x0) -> IO (CInt)) -> IO (FunPtr (Ptr (TQTextEdit x0) -> IO (CInt)))

foreign import ccall "wrapper" wrapSetHandler_QTextEdit9_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QTextEditSc a) (QTextEdit x0 -> IO (Int)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTextEdit9 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTextEdit9_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTextEdit_setHandler9 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTextEdit x0) -> IO (CInt)
    setHandlerWrapper x0
      = do x0obj <- qTextEditFromPtr x0
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

instance QdevType_h (QTextEdit ()) (()) where
 devType_h x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextEdit_devType cobj_x0

foreign import ccall "qtc_QTextEdit_devType" qtc_QTextEdit_devType :: Ptr (TQTextEdit a) -> IO CInt

instance QdevType_h (QTextEditSc a) (()) where
 devType_h x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextEdit_devType cobj_x0

instance QenterEvent_h (QTextEdit ()) ((QEvent t1)) where
 enterEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextEdit_enterEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTextEdit_enterEvent" qtc_QTextEdit_enterEvent :: Ptr (TQTextEdit a) -> Ptr (TQEvent t1) -> IO ()

instance QenterEvent_h (QTextEditSc a) ((QEvent t1)) where
 enterEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextEdit_enterEvent cobj_x0 cobj_x1

instance QsetHandler (QTextEdit ()) (QTextEdit x0 -> Int -> IO (Int)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTextEdit10 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTextEdit10_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTextEdit_setHandler10 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTextEdit x0) -> CInt -> IO (CInt)
    setHandlerWrapper x0 x1
      = do x0obj <- qTextEditFromPtr x0
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

foreign import ccall "qtc_QTextEdit_setHandler10" qtc_QTextEdit_setHandler10 :: Ptr (TQTextEdit a) -> CWString -> Ptr (Ptr (TQTextEdit x0) -> CInt -> IO (CInt)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QTextEdit10 :: (Ptr (TQTextEdit x0) -> CInt -> IO (CInt)) -> IO (FunPtr (Ptr (TQTextEdit x0) -> CInt -> IO (CInt)))

foreign import ccall "wrapper" wrapSetHandler_QTextEdit10_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QTextEditSc a) (QTextEdit x0 -> Int -> IO (Int)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTextEdit10 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTextEdit10_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTextEdit_setHandler10 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTextEdit x0) -> CInt -> IO (CInt)
    setHandlerWrapper x0 x1
      = do x0obj <- qTextEditFromPtr x0
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

instance QheightForWidth_h (QTextEdit ()) ((Int)) where
 heightForWidth_h x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextEdit_heightForWidth cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTextEdit_heightForWidth" qtc_QTextEdit_heightForWidth :: Ptr (TQTextEdit a) -> CInt -> IO CInt

instance QheightForWidth_h (QTextEditSc a) ((Int)) where
 heightForWidth_h x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextEdit_heightForWidth cobj_x0 (toCInt x1)

instance QhideEvent_h (QTextEdit ()) ((QHideEvent t1)) where
 hideEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextEdit_hideEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTextEdit_hideEvent" qtc_QTextEdit_hideEvent :: Ptr (TQTextEdit a) -> Ptr (TQHideEvent t1) -> IO ()

instance QhideEvent_h (QTextEditSc a) ((QHideEvent t1)) where
 hideEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextEdit_hideEvent cobj_x0 cobj_x1

instance QleaveEvent_h (QTextEdit ()) ((QEvent t1)) where
 leaveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextEdit_leaveEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTextEdit_leaveEvent" qtc_QTextEdit_leaveEvent :: Ptr (TQTextEdit a) -> Ptr (TQEvent t1) -> IO ()

instance QleaveEvent_h (QTextEditSc a) ((QEvent t1)) where
 leaveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextEdit_leaveEvent cobj_x0 cobj_x1

instance QmoveEvent_h (QTextEdit ()) ((QMoveEvent t1)) where
 moveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextEdit_moveEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTextEdit_moveEvent" qtc_QTextEdit_moveEvent :: Ptr (TQTextEdit a) -> Ptr (TQMoveEvent t1) -> IO ()

instance QmoveEvent_h (QTextEditSc a) ((QMoveEvent t1)) where
 moveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextEdit_moveEvent cobj_x0 cobj_x1

instance QsetHandler (QTextEdit ()) (QTextEdit x0 -> IO (QPaintEngine t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTextEdit11 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTextEdit11_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTextEdit_setHandler11 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTextEdit x0) -> IO (Ptr (TQPaintEngine t0))
    setHandlerWrapper x0
      = do x0obj <- qTextEditFromPtr x0
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

foreign import ccall "qtc_QTextEdit_setHandler11" qtc_QTextEdit_setHandler11 :: Ptr (TQTextEdit a) -> CWString -> Ptr (Ptr (TQTextEdit x0) -> IO (Ptr (TQPaintEngine t0))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QTextEdit11 :: (Ptr (TQTextEdit x0) -> IO (Ptr (TQPaintEngine t0))) -> IO (FunPtr (Ptr (TQTextEdit x0) -> IO (Ptr (TQPaintEngine t0))))

foreign import ccall "wrapper" wrapSetHandler_QTextEdit11_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QTextEditSc a) (QTextEdit x0 -> IO (QPaintEngine t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTextEdit11 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTextEdit11_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTextEdit_setHandler11 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTextEdit x0) -> IO (Ptr (TQPaintEngine t0))
    setHandlerWrapper x0
      = do x0obj <- qTextEditFromPtr x0
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

instance QpaintEngine_h (QTextEdit ()) (()) where
 paintEngine_h x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextEdit_paintEngine cobj_x0

foreign import ccall "qtc_QTextEdit_paintEngine" qtc_QTextEdit_paintEngine :: Ptr (TQTextEdit a) -> IO (Ptr (TQPaintEngine ()))

instance QpaintEngine_h (QTextEditSc a) (()) where
 paintEngine_h x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextEdit_paintEngine cobj_x0

instance QsetHandler (QTextEdit ()) (QTextEdit x0 -> Bool -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTextEdit12 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTextEdit12_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTextEdit_setHandler12 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTextEdit x0) -> CBool -> IO ()
    setHandlerWrapper x0 x1
      = do x0obj <- qTextEditFromPtr x0
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

foreign import ccall "qtc_QTextEdit_setHandler12" qtc_QTextEdit_setHandler12 :: Ptr (TQTextEdit a) -> CWString -> Ptr (Ptr (TQTextEdit x0) -> CBool -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QTextEdit12 :: (Ptr (TQTextEdit x0) -> CBool -> IO ()) -> IO (FunPtr (Ptr (TQTextEdit x0) -> CBool -> IO ()))

foreign import ccall "wrapper" wrapSetHandler_QTextEdit12_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QTextEditSc a) (QTextEdit x0 -> Bool -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTextEdit12 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTextEdit12_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTextEdit_setHandler12 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTextEdit x0) -> CBool -> IO ()
    setHandlerWrapper x0 x1
      = do x0obj <- qTextEditFromPtr x0
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

instance QsetVisible_h (QTextEdit ()) ((Bool)) where
 setVisible_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextEdit_setVisible cobj_x0 (toCBool x1)

foreign import ccall "qtc_QTextEdit_setVisible" qtc_QTextEdit_setVisible :: Ptr (TQTextEdit a) -> CBool -> IO ()

instance QsetVisible_h (QTextEditSc a) ((Bool)) where
 setVisible_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextEdit_setVisible cobj_x0 (toCBool x1)

instance QtabletEvent_h (QTextEdit ()) ((QTabletEvent t1)) where
 tabletEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextEdit_tabletEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTextEdit_tabletEvent" qtc_QTextEdit_tabletEvent :: Ptr (TQTextEdit a) -> Ptr (TQTabletEvent t1) -> IO ()

instance QtabletEvent_h (QTextEditSc a) ((QTabletEvent t1)) where
 tabletEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextEdit_tabletEvent cobj_x0 cobj_x1

instance QsetHandler (QTextEdit ()) (QTextEdit x0 -> QObject t1 -> QEvent t2 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTextEdit13 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTextEdit13_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTextEdit_setHandler13 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTextEdit x0) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO (CBool)
    setHandlerWrapper x0 x1 x2
      = do x0obj <- qTextEditFromPtr x0
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

foreign import ccall "qtc_QTextEdit_setHandler13" qtc_QTextEdit_setHandler13 :: Ptr (TQTextEdit a) -> CWString -> Ptr (Ptr (TQTextEdit x0) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO (CBool)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QTextEdit13 :: (Ptr (TQTextEdit x0) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO (CBool)) -> IO (FunPtr (Ptr (TQTextEdit x0) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO (CBool)))

foreign import ccall "wrapper" wrapSetHandler_QTextEdit13_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QTextEditSc a) (QTextEdit x0 -> QObject t1 -> QEvent t2 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTextEdit13 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTextEdit13_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTextEdit_setHandler13 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTextEdit x0) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO (CBool)
    setHandlerWrapper x0 x1 x2
      = do x0obj <- qTextEditFromPtr x0
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

instance QeventFilter_h (QTextEdit ()) ((QObject t1, QEvent t2)) where
 eventFilter_h x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QTextEdit_eventFilter cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QTextEdit_eventFilter" qtc_QTextEdit_eventFilter :: Ptr (TQTextEdit a) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO CBool

instance QeventFilter_h (QTextEditSc a) ((QObject t1, QEvent t2)) where
 eventFilter_h x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QTextEdit_eventFilter cobj_x0 cobj_x1 cobj_x2

