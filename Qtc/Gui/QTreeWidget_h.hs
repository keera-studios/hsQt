{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QTreeWidget_h.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:27
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QTreeWidget_h where

import Foreign.C.Types
import Qtc.Enums.Base
import Qtc.Enums.Gui.QItemSelectionModel
import Qtc.Enums.Gui.QAbstractItemView
import Qtc.Enums.Gui.QPaintDevice
import Qtc.Enums.Core.Qt
import Qtc.Enums.Gui.QAbstractItemDelegate

import Qtc.Classes.Base
import Qtc.Classes.Qccs_h
import Qtc.Classes.Core_h
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core
import Qtc.Classes.Gui_h
import Qtc.ClassTypes.Gui
import Foreign.Marshal.Array

instance QunSetUserMethod (QTreeWidget ()) where
 unSetUserMethod qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QTreeWidget_unSetUserMethod cobj_qobj (toCInt 0) (toCInt evid)

foreign import ccall "qtc_QTreeWidget_unSetUserMethod" qtc_QTreeWidget_unSetUserMethod :: Ptr (TQTreeWidget a) -> CInt -> CInt -> IO (CBool)

instance QunSetUserMethod (QTreeWidgetSc a) where
 unSetUserMethod qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QTreeWidget_unSetUserMethod cobj_qobj (toCInt 0) (toCInt evid)

instance QunSetUserMethodVariant (QTreeWidget ()) where
 unSetUserMethodVariant qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QTreeWidget_unSetUserMethod cobj_qobj (toCInt 1) (toCInt evid)

instance QunSetUserMethodVariant (QTreeWidgetSc a) where
 unSetUserMethodVariant qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QTreeWidget_unSetUserMethod cobj_qobj (toCInt 1) (toCInt evid)

instance QunSetUserMethodVariantList (QTreeWidget ()) where
 unSetUserMethodVariantList qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QTreeWidget_unSetUserMethod cobj_qobj (toCInt 2) (toCInt evid)

instance QunSetUserMethodVariantList (QTreeWidgetSc a) where
 unSetUserMethodVariantList qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QTreeWidget_unSetUserMethod cobj_qobj (toCInt 2) (toCInt evid)

instance QsetUserMethod (QTreeWidget ()) (QTreeWidget x0 -> IO ()) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethod_QTreeWidget setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethod_QTreeWidget_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QTreeWidget_setUserMethod cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQTreeWidget x0) -> IO ()
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

foreign import ccall "qtc_QTreeWidget_setUserMethod" qtc_QTreeWidget_setUserMethod :: Ptr (TQTreeWidget a) -> CInt -> Ptr (Ptr (TQTreeWidget x0) -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetUserMethod_QTreeWidget :: (Ptr (TQTreeWidget x0) -> IO ()) -> IO (FunPtr (Ptr (TQTreeWidget x0) -> IO ()))

foreign import ccall "wrapper" wrapSetUserMethod_QTreeWidget_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetUserMethod (QTreeWidgetSc a) (QTreeWidget x0 -> IO ()) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethod_QTreeWidget setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethod_QTreeWidget_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QTreeWidget_setUserMethod cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQTreeWidget x0) -> IO ()
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

instance QsetUserMethod (QTreeWidget ()) (QTreeWidget x0 -> QVariant () -> IO (QVariant ())) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethodVariant_QTreeWidget setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethodVariant_QTreeWidget_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QTreeWidget_setUserMethodVariant cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQTreeWidget x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))
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

foreign import ccall "qtc_QTreeWidget_setUserMethodVariant" qtc_QTreeWidget_setUserMethodVariant :: Ptr (TQTreeWidget a) -> CInt -> Ptr (Ptr (TQTreeWidget x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetUserMethodVariant_QTreeWidget :: (Ptr (TQTreeWidget x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))) -> IO (FunPtr (Ptr (TQTreeWidget x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))))

foreign import ccall "wrapper" wrapSetUserMethodVariant_QTreeWidget_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetUserMethod (QTreeWidgetSc a) (QTreeWidget x0 -> QVariant () -> IO (QVariant ())) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethodVariant_QTreeWidget setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethodVariant_QTreeWidget_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QTreeWidget_setUserMethodVariant cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQTreeWidget x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))
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

instance QunSetHandler (QTreeWidget ()) where 
 unSetHandler qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withCWString evid $ \cstr_evid ->
    qtc_QTreeWidget_unSetHandler cobj_qobj cstr_evid

foreign import ccall "qtc_QTreeWidget_unSetHandler" qtc_QTreeWidget_unSetHandler :: Ptr (TQTreeWidget a) -> CWString -> IO (CBool)

instance QunSetHandler (QTreeWidgetSc a) where 
 unSetHandler qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withCWString evid $ \cstr_evid ->
    qtc_QTreeWidget_unSetHandler cobj_qobj cstr_evid

instance QsetHandler (QTreeWidget ()) (QTreeWidget x0 -> QEvent t1 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTreeWidget1 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTreeWidget1_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTreeWidget_setHandler1 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTreeWidget x0) -> Ptr (TQEvent t1) -> IO ()
    setHandlerWrapper x0 x1
      = do x0obj <- qTreeWidgetFromPtr x0
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

foreign import ccall "qtc_QTreeWidget_setHandler1" qtc_QTreeWidget_setHandler1 :: Ptr (TQTreeWidget a) -> CWString -> Ptr (Ptr (TQTreeWidget x0) -> Ptr (TQEvent t1) -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QTreeWidget1 :: (Ptr (TQTreeWidget x0) -> Ptr (TQEvent t1) -> IO ()) -> IO (FunPtr (Ptr (TQTreeWidget x0) -> Ptr (TQEvent t1) -> IO ()))

foreign import ccall "wrapper" wrapSetHandler_QTreeWidget1_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QTreeWidgetSc a) (QTreeWidget x0 -> QEvent t1 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTreeWidget1 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTreeWidget1_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTreeWidget_setHandler1 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTreeWidget x0) -> Ptr (TQEvent t1) -> IO ()
    setHandlerWrapper x0 x1
      = do x0obj <- qTreeWidgetFromPtr x0
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

instance QdropEvent_h (QTreeWidget ()) ((QDropEvent t1)) where
 dropEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_dropEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeWidget_dropEvent" qtc_QTreeWidget_dropEvent :: Ptr (TQTreeWidget a) -> Ptr (TQDropEvent t1) -> IO ()

instance QdropEvent_h (QTreeWidgetSc a) ((QDropEvent t1)) where
 dropEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_dropEvent cobj_x0 cobj_x1

instance QsetHandler (QTreeWidget ()) (QTreeWidget x0 -> QTreeWidgetItem t1 -> Int -> QObject t3 -> DropAction -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTreeWidget2 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTreeWidget2_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTreeWidget_setHandler2 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTreeWidget x0) -> Ptr (TQTreeWidgetItem t1) -> CInt -> Ptr (TQObject t3) -> CLong -> IO (CBool)
    setHandlerWrapper x0 x1 x2 x3 x4
      = do x0obj <- qTreeWidgetFromPtr x0
           x1obj <- objectFromPtr_nf x1
           let x2int = fromCInt x2
           x3obj <- qObjectFromPtr x3
           let x4enum = qEnum_fromInt $ fromCLong x4
           let rv =
                if (objectIsNull x0obj)
                 then return False
                 else _handler x0obj x1obj x2int x3obj x4enum
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

foreign import ccall "qtc_QTreeWidget_setHandler2" qtc_QTreeWidget_setHandler2 :: Ptr (TQTreeWidget a) -> CWString -> Ptr (Ptr (TQTreeWidget x0) -> Ptr (TQTreeWidgetItem t1) -> CInt -> Ptr (TQObject t3) -> CLong -> IO (CBool)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QTreeWidget2 :: (Ptr (TQTreeWidget x0) -> Ptr (TQTreeWidgetItem t1) -> CInt -> Ptr (TQObject t3) -> CLong -> IO (CBool)) -> IO (FunPtr (Ptr (TQTreeWidget x0) -> Ptr (TQTreeWidgetItem t1) -> CInt -> Ptr (TQObject t3) -> CLong -> IO (CBool)))

foreign import ccall "wrapper" wrapSetHandler_QTreeWidget2_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QTreeWidgetSc a) (QTreeWidget x0 -> QTreeWidgetItem t1 -> Int -> QObject t3 -> DropAction -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTreeWidget2 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTreeWidget2_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTreeWidget_setHandler2 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTreeWidget x0) -> Ptr (TQTreeWidgetItem t1) -> CInt -> Ptr (TQObject t3) -> CLong -> IO (CBool)
    setHandlerWrapper x0 x1 x2 x3 x4
      = do x0obj <- qTreeWidgetFromPtr x0
           x1obj <- objectFromPtr_nf x1
           let x2int = fromCInt x2
           x3obj <- qObjectFromPtr x3
           let x4enum = qEnum_fromInt $ fromCLong x4
           let rv =
                if (objectIsNull x0obj)
                 then return False
                 else _handler x0obj x1obj x2int x3obj x4enum
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

instance QdropMimeData_h (QTreeWidget ()) ((QTreeWidgetItem t1, Int, QMimeData t3, DropAction)) where
 dropMimeData_h x0 (x1, x2, x3, x4)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QTreeWidget_dropMimeData cobj_x0 cobj_x1 (toCInt x2) cobj_x3 (toCLong $ qEnum_toInt x4)

foreign import ccall "qtc_QTreeWidget_dropMimeData" qtc_QTreeWidget_dropMimeData :: Ptr (TQTreeWidget a) -> Ptr (TQTreeWidgetItem t1) -> CInt -> Ptr (TQMimeData t3) -> CLong -> IO CBool

instance QdropMimeData_h (QTreeWidgetSc a) ((QTreeWidgetItem t1, Int, QMimeData t3, DropAction)) where
 dropMimeData_h x0 (x1, x2, x3, x4)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QTreeWidget_dropMimeData cobj_x0 cobj_x1 (toCInt x2) cobj_x3 (toCLong $ qEnum_toInt x4)

instance QsetHandler (QTreeWidget ()) (QTreeWidget x0 -> QEvent t1 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTreeWidget3 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTreeWidget3_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTreeWidget_setHandler3 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTreeWidget x0) -> Ptr (TQEvent t1) -> IO (CBool)
    setHandlerWrapper x0 x1
      = do x0obj <- qTreeWidgetFromPtr x0
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

foreign import ccall "qtc_QTreeWidget_setHandler3" qtc_QTreeWidget_setHandler3 :: Ptr (TQTreeWidget a) -> CWString -> Ptr (Ptr (TQTreeWidget x0) -> Ptr (TQEvent t1) -> IO (CBool)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QTreeWidget3 :: (Ptr (TQTreeWidget x0) -> Ptr (TQEvent t1) -> IO (CBool)) -> IO (FunPtr (Ptr (TQTreeWidget x0) -> Ptr (TQEvent t1) -> IO (CBool)))

foreign import ccall "wrapper" wrapSetHandler_QTreeWidget3_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QTreeWidgetSc a) (QTreeWidget x0 -> QEvent t1 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTreeWidget3 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTreeWidget3_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTreeWidget_setHandler3 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTreeWidget x0) -> Ptr (TQEvent t1) -> IO (CBool)
    setHandlerWrapper x0 x1
      = do x0obj <- qTreeWidgetFromPtr x0
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

instance Qevent_h (QTreeWidget ()) ((QEvent t1)) where
 event_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_event cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeWidget_event" qtc_QTreeWidget_event :: Ptr (TQTreeWidget a) -> Ptr (TQEvent t1) -> IO CBool

instance Qevent_h (QTreeWidgetSc a) ((QEvent t1)) where
 event_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_event cobj_x0 cobj_x1

instance QsetHandler (QTreeWidget ()) (QTreeWidget x0 -> IO (DropActions)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTreeWidget4 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTreeWidget4_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTreeWidget_setHandler4 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTreeWidget x0) -> IO (CLong)
    setHandlerWrapper x0
      = do x0obj <- qTreeWidgetFromPtr x0
           let rv =
                if (objectIsNull x0obj)
                 then withQFlagsResult $ return $ toCLong 0
                 else _handler x0obj
           rvf <- rv
           return (toCLong $ qFlags_toInt rvf)

    setHandlerWrapper_d :: Ptr fun -> Ptr () -> Ptr fun_d -> IO ()
    setHandlerWrapper_d funptr stptr funptr_d
      = do when (stptr/=ptrNull)
            (freeStablePtr (castPtrToStablePtr stptr))
           when (funptr/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr))
           when (funptr_d/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr_d))
           return ()

foreign import ccall "qtc_QTreeWidget_setHandler4" qtc_QTreeWidget_setHandler4 :: Ptr (TQTreeWidget a) -> CWString -> Ptr (Ptr (TQTreeWidget x0) -> IO (CLong)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QTreeWidget4 :: (Ptr (TQTreeWidget x0) -> IO (CLong)) -> IO (FunPtr (Ptr (TQTreeWidget x0) -> IO (CLong)))

foreign import ccall "wrapper" wrapSetHandler_QTreeWidget4_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QTreeWidgetSc a) (QTreeWidget x0 -> IO (DropActions)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTreeWidget4 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTreeWidget4_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTreeWidget_setHandler4 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTreeWidget x0) -> IO (CLong)
    setHandlerWrapper x0
      = do x0obj <- qTreeWidgetFromPtr x0
           let rv =
                if (objectIsNull x0obj)
                 then withQFlagsResult $ return $ toCLong 0
                 else _handler x0obj
           rvf <- rv
           return (toCLong $ qFlags_toInt rvf)

    setHandlerWrapper_d :: Ptr fun -> Ptr () -> Ptr fun_d -> IO ()
    setHandlerWrapper_d funptr stptr funptr_d
      = do when (stptr/=ptrNull)
            (freeStablePtr (castPtrToStablePtr stptr))
           when (funptr/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr))
           when (funptr_d/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr_d))
           return ()

instance QsupportedDropActions_h (QTreeWidget ()) (()) where
 supportedDropActions_h x0 ()
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_supportedDropActions cobj_x0

foreign import ccall "qtc_QTreeWidget_supportedDropActions" qtc_QTreeWidget_supportedDropActions :: Ptr (TQTreeWidget a) -> IO CLong

instance QsupportedDropActions_h (QTreeWidgetSc a) (()) where
 supportedDropActions_h x0 ()
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_supportedDropActions cobj_x0

instance QsetHandler (QTreeWidget ()) (QTreeWidget x0 -> QModelIndex t1 -> QModelIndex t2 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTreeWidget5 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTreeWidget5_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTreeWidget_setHandler5 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTreeWidget x0) -> Ptr (TQModelIndex t1) -> Ptr (TQModelIndex t2) -> IO ()
    setHandlerWrapper x0 x1 x2
      = do x0obj <- qTreeWidgetFromPtr x0
           x1obj <- objectFromPtr_nf x1
           x2obj <- objectFromPtr_nf x2
           if (objectIsNull x0obj)
            then return ()
            else _handler x0obj x1obj x2obj

    setHandlerWrapper_d :: Ptr fun -> Ptr () -> Ptr fun_d -> IO ()
    setHandlerWrapper_d funptr stptr funptr_d
      = do when (stptr/=ptrNull)
            (freeStablePtr (castPtrToStablePtr stptr))
           when (funptr/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr))
           when (funptr_d/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr_d))
           return ()

foreign import ccall "qtc_QTreeWidget_setHandler5" qtc_QTreeWidget_setHandler5 :: Ptr (TQTreeWidget a) -> CWString -> Ptr (Ptr (TQTreeWidget x0) -> Ptr (TQModelIndex t1) -> Ptr (TQModelIndex t2) -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QTreeWidget5 :: (Ptr (TQTreeWidget x0) -> Ptr (TQModelIndex t1) -> Ptr (TQModelIndex t2) -> IO ()) -> IO (FunPtr (Ptr (TQTreeWidget x0) -> Ptr (TQModelIndex t1) -> Ptr (TQModelIndex t2) -> IO ()))

foreign import ccall "wrapper" wrapSetHandler_QTreeWidget5_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QTreeWidgetSc a) (QTreeWidget x0 -> QModelIndex t1 -> QModelIndex t2 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTreeWidget5 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTreeWidget5_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTreeWidget_setHandler5 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTreeWidget x0) -> Ptr (TQModelIndex t1) -> Ptr (TQModelIndex t2) -> IO ()
    setHandlerWrapper x0 x1 x2
      = do x0obj <- qTreeWidgetFromPtr x0
           x1obj <- objectFromPtr_nf x1
           x2obj <- objectFromPtr_nf x2
           if (objectIsNull x0obj)
            then return ()
            else _handler x0obj x1obj x2obj

    setHandlerWrapper_d :: Ptr fun -> Ptr () -> Ptr fun_d -> IO ()
    setHandlerWrapper_d funptr stptr funptr_d
      = do when (stptr/=ptrNull)
            (freeStablePtr (castPtrToStablePtr stptr))
           when (funptr/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr))
           when (funptr_d/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr_d))
           return ()

instance QdataChanged_h (QTreeWidget ()) ((QModelIndex t1, QModelIndex t2)) where
 dataChanged_h x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QTreeWidget_dataChanged cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QTreeWidget_dataChanged" qtc_QTreeWidget_dataChanged :: Ptr (TQTreeWidget a) -> Ptr (TQModelIndex t1) -> Ptr (TQModelIndex t2) -> IO ()

instance QdataChanged_h (QTreeWidgetSc a) ((QModelIndex t1, QModelIndex t2)) where
 dataChanged_h x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QTreeWidget_dataChanged cobj_x0 cobj_x1 cobj_x2

instance QsetHandler (QTreeWidget ()) (QTreeWidget x0 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTreeWidget6 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTreeWidget6_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTreeWidget_setHandler6 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTreeWidget x0) -> IO ()
    setHandlerWrapper x0
      = do x0obj <- qTreeWidgetFromPtr x0
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

foreign import ccall "qtc_QTreeWidget_setHandler6" qtc_QTreeWidget_setHandler6 :: Ptr (TQTreeWidget a) -> CWString -> Ptr (Ptr (TQTreeWidget x0) -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QTreeWidget6 :: (Ptr (TQTreeWidget x0) -> IO ()) -> IO (FunPtr (Ptr (TQTreeWidget x0) -> IO ()))

foreign import ccall "wrapper" wrapSetHandler_QTreeWidget6_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QTreeWidgetSc a) (QTreeWidget x0 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTreeWidget6 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTreeWidget6_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTreeWidget_setHandler6 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTreeWidget x0) -> IO ()
    setHandlerWrapper x0
      = do x0obj <- qTreeWidgetFromPtr x0
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

instance QdoItemsLayout_h (QTreeWidget ()) (()) where
 doItemsLayout_h x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_doItemsLayout cobj_x0

foreign import ccall "qtc_QTreeWidget_doItemsLayout" qtc_QTreeWidget_doItemsLayout :: Ptr (TQTreeWidget a) -> IO ()

instance QdoItemsLayout_h (QTreeWidgetSc a) (()) where
 doItemsLayout_h x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_doItemsLayout cobj_x0

instance QdragMoveEvent_h (QTreeWidget ()) ((QDragMoveEvent t1)) where
 dragMoveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_dragMoveEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeWidget_dragMoveEvent" qtc_QTreeWidget_dragMoveEvent :: Ptr (TQTreeWidget a) -> Ptr (TQDragMoveEvent t1) -> IO ()

instance QdragMoveEvent_h (QTreeWidgetSc a) ((QDragMoveEvent t1)) where
 dragMoveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_dragMoveEvent cobj_x0 cobj_x1

instance QsetHandler (QTreeWidget ()) (QTreeWidget x0 -> QPainter t1 -> QRect t2 -> QModelIndex t3 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTreeWidget7 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTreeWidget7_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTreeWidget_setHandler7 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTreeWidget x0) -> Ptr (TQPainter t1) -> Ptr (TQRect t2) -> Ptr (TQModelIndex t3) -> IO ()
    setHandlerWrapper x0 x1 x2 x3
      = do x0obj <- qTreeWidgetFromPtr x0
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

foreign import ccall "qtc_QTreeWidget_setHandler7" qtc_QTreeWidget_setHandler7 :: Ptr (TQTreeWidget a) -> CWString -> Ptr (Ptr (TQTreeWidget x0) -> Ptr (TQPainter t1) -> Ptr (TQRect t2) -> Ptr (TQModelIndex t3) -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QTreeWidget7 :: (Ptr (TQTreeWidget x0) -> Ptr (TQPainter t1) -> Ptr (TQRect t2) -> Ptr (TQModelIndex t3) -> IO ()) -> IO (FunPtr (Ptr (TQTreeWidget x0) -> Ptr (TQPainter t1) -> Ptr (TQRect t2) -> Ptr (TQModelIndex t3) -> IO ()))

foreign import ccall "wrapper" wrapSetHandler_QTreeWidget7_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QTreeWidgetSc a) (QTreeWidget x0 -> QPainter t1 -> QRect t2 -> QModelIndex t3 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTreeWidget7 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTreeWidget7_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTreeWidget_setHandler7 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTreeWidget x0) -> Ptr (TQPainter t1) -> Ptr (TQRect t2) -> Ptr (TQModelIndex t3) -> IO ()
    setHandlerWrapper x0 x1 x2 x3
      = do x0obj <- qTreeWidgetFromPtr x0
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

instance QqdrawBranches_h (QTreeWidget ()) ((QPainter t1, QRect t2, QModelIndex t3)) where
 qdrawBranches_h x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QTreeWidget_drawBranches cobj_x0 cobj_x1 cobj_x2 cobj_x3

foreign import ccall "qtc_QTreeWidget_drawBranches" qtc_QTreeWidget_drawBranches :: Ptr (TQTreeWidget a) -> Ptr (TQPainter t1) -> Ptr (TQRect t2) -> Ptr (TQModelIndex t3) -> IO ()

instance QqdrawBranches_h (QTreeWidgetSc a) ((QPainter t1, QRect t2, QModelIndex t3)) where
 qdrawBranches_h x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QTreeWidget_drawBranches cobj_x0 cobj_x1 cobj_x2 cobj_x3

instance QdrawBranches_h (QTreeWidget ()) ((QPainter t1, Rect, QModelIndex t3)) where
 drawBranches_h x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCRect x2 $ \crect_x2_x crect_x2_y  crect_x2_w crect_x2_h -> 
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QTreeWidget_drawBranches_qth cobj_x0 cobj_x1 crect_x2_x crect_x2_y crect_x2_w crect_x2_h  cobj_x3

foreign import ccall "qtc_QTreeWidget_drawBranches_qth" qtc_QTreeWidget_drawBranches_qth :: Ptr (TQTreeWidget a) -> Ptr (TQPainter t1) -> CInt -> CInt -> CInt -> CInt -> Ptr (TQModelIndex t3) -> IO ()

instance QdrawBranches_h (QTreeWidgetSc a) ((QPainter t1, Rect, QModelIndex t3)) where
 drawBranches_h x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCRect x2 $ \crect_x2_x crect_x2_y  crect_x2_w crect_x2_h -> 
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QTreeWidget_drawBranches_qth cobj_x0 cobj_x1 crect_x2_x crect_x2_y crect_x2_w crect_x2_h  cobj_x3

instance QsetHandler (QTreeWidget ()) (QTreeWidget x0 -> QPainter t1 -> QStyleOption t2 -> QModelIndex t3 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTreeWidget8 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTreeWidget8_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTreeWidget_setHandler8 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTreeWidget x0) -> Ptr (TQPainter t1) -> Ptr (TQStyleOption t2) -> Ptr (TQModelIndex t3) -> IO ()
    setHandlerWrapper x0 x1 x2 x3
      = do x0obj <- qTreeWidgetFromPtr x0
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

foreign import ccall "qtc_QTreeWidget_setHandler8" qtc_QTreeWidget_setHandler8 :: Ptr (TQTreeWidget a) -> CWString -> Ptr (Ptr (TQTreeWidget x0) -> Ptr (TQPainter t1) -> Ptr (TQStyleOption t2) -> Ptr (TQModelIndex t3) -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QTreeWidget8 :: (Ptr (TQTreeWidget x0) -> Ptr (TQPainter t1) -> Ptr (TQStyleOption t2) -> Ptr (TQModelIndex t3) -> IO ()) -> IO (FunPtr (Ptr (TQTreeWidget x0) -> Ptr (TQPainter t1) -> Ptr (TQStyleOption t2) -> Ptr (TQModelIndex t3) -> IO ()))

foreign import ccall "wrapper" wrapSetHandler_QTreeWidget8_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QTreeWidgetSc a) (QTreeWidget x0 -> QPainter t1 -> QStyleOption t2 -> QModelIndex t3 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTreeWidget8 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTreeWidget8_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTreeWidget_setHandler8 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTreeWidget x0) -> Ptr (TQPainter t1) -> Ptr (TQStyleOption t2) -> Ptr (TQModelIndex t3) -> IO ()
    setHandlerWrapper x0 x1 x2 x3
      = do x0obj <- qTreeWidgetFromPtr x0
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

instance QdrawRow_h (QTreeWidget ()) ((QPainter t1, QStyleOptionViewItem t2, QModelIndex t3)) where
 drawRow_h x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QTreeWidget_drawRow cobj_x0 cobj_x1 cobj_x2 cobj_x3

foreign import ccall "qtc_QTreeWidget_drawRow" qtc_QTreeWidget_drawRow :: Ptr (TQTreeWidget a) -> Ptr (TQPainter t1) -> Ptr (TQStyleOptionViewItem t2) -> Ptr (TQModelIndex t3) -> IO ()

instance QdrawRow_h (QTreeWidgetSc a) ((QPainter t1, QStyleOptionViewItem t2, QModelIndex t3)) where
 drawRow_h x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QTreeWidget_drawRow cobj_x0 cobj_x1 cobj_x2 cobj_x3

instance QsetHandler (QTreeWidget ()) (QTreeWidget x0 -> IO (Int)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTreeWidget9 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTreeWidget9_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTreeWidget_setHandler9 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTreeWidget x0) -> IO (CInt)
    setHandlerWrapper x0
      = do x0obj <- qTreeWidgetFromPtr x0
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

foreign import ccall "qtc_QTreeWidget_setHandler9" qtc_QTreeWidget_setHandler9 :: Ptr (TQTreeWidget a) -> CWString -> Ptr (Ptr (TQTreeWidget x0) -> IO (CInt)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QTreeWidget9 :: (Ptr (TQTreeWidget x0) -> IO (CInt)) -> IO (FunPtr (Ptr (TQTreeWidget x0) -> IO (CInt)))

foreign import ccall "wrapper" wrapSetHandler_QTreeWidget9_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QTreeWidgetSc a) (QTreeWidget x0 -> IO (Int)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTreeWidget9 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTreeWidget9_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTreeWidget_setHandler9 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTreeWidget x0) -> IO (CInt)
    setHandlerWrapper x0
      = do x0obj <- qTreeWidgetFromPtr x0
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

instance QhorizontalOffset_h (QTreeWidget ()) (()) where
 horizontalOffset_h x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_horizontalOffset cobj_x0

foreign import ccall "qtc_QTreeWidget_horizontalOffset" qtc_QTreeWidget_horizontalOffset :: Ptr (TQTreeWidget a) -> IO CInt

instance QhorizontalOffset_h (QTreeWidgetSc a) (()) where
 horizontalOffset_h x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_horizontalOffset cobj_x0

instance QsetHandler (QTreeWidget ()) (QTreeWidget x0 -> QPoint t1 -> IO (QModelIndex t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTreeWidget10 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTreeWidget10_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTreeWidget_setHandler10 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTreeWidget x0) -> Ptr (TQPoint t1) -> IO (Ptr (TQModelIndex t0))
    setHandlerWrapper x0 x1
      = do x0obj <- qTreeWidgetFromPtr x0
           x1obj <- objectFromPtr_nf x1
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

foreign import ccall "qtc_QTreeWidget_setHandler10" qtc_QTreeWidget_setHandler10 :: Ptr (TQTreeWidget a) -> CWString -> Ptr (Ptr (TQTreeWidget x0) -> Ptr (TQPoint t1) -> IO (Ptr (TQModelIndex t0))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QTreeWidget10 :: (Ptr (TQTreeWidget x0) -> Ptr (TQPoint t1) -> IO (Ptr (TQModelIndex t0))) -> IO (FunPtr (Ptr (TQTreeWidget x0) -> Ptr (TQPoint t1) -> IO (Ptr (TQModelIndex t0))))

foreign import ccall "wrapper" wrapSetHandler_QTreeWidget10_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QTreeWidgetSc a) (QTreeWidget x0 -> QPoint t1 -> IO (QModelIndex t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTreeWidget10 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTreeWidget10_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTreeWidget_setHandler10 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTreeWidget x0) -> Ptr (TQPoint t1) -> IO (Ptr (TQModelIndex t0))
    setHandlerWrapper x0 x1
      = do x0obj <- qTreeWidgetFromPtr x0
           x1obj <- objectFromPtr_nf x1
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

instance QindexAt_h (QTreeWidget ()) ((Point)) where
 indexAt_h x0 (x1)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QTreeWidget_indexAt_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

foreign import ccall "qtc_QTreeWidget_indexAt_qth" qtc_QTreeWidget_indexAt_qth :: Ptr (TQTreeWidget a) -> CInt -> CInt -> IO (Ptr (TQModelIndex ()))

instance QindexAt_h (QTreeWidgetSc a) ((Point)) where
 indexAt_h x0 (x1)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QTreeWidget_indexAt_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

instance QqindexAt_h (QTreeWidget ()) ((QPoint t1)) where
 qindexAt_h x0 (x1)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_indexAt cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeWidget_indexAt" qtc_QTreeWidget_indexAt :: Ptr (TQTreeWidget a) -> Ptr (TQPoint t1) -> IO (Ptr (TQModelIndex ()))

instance QqindexAt_h (QTreeWidgetSc a) ((QPoint t1)) where
 qindexAt_h x0 (x1)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_indexAt cobj_x0 cobj_x1

instance QkeyPressEvent_h (QTreeWidget ()) ((QKeyEvent t1)) where
 keyPressEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_keyPressEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeWidget_keyPressEvent" qtc_QTreeWidget_keyPressEvent :: Ptr (TQTreeWidget a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyPressEvent_h (QTreeWidgetSc a) ((QKeyEvent t1)) where
 keyPressEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_keyPressEvent cobj_x0 cobj_x1

instance QsetHandler (QTreeWidget ()) (QTreeWidget x0 -> String -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTreeWidget11 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTreeWidget11_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTreeWidget_setHandler11 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTreeWidget x0) -> Ptr (TQString ()) -> IO ()
    setHandlerWrapper x0 x1
      = do x0obj <- qTreeWidgetFromPtr x0
           x1str <- stringFromPtr x1
           if (objectIsNull x0obj)
            then return ()
            else _handler x0obj x1str

    setHandlerWrapper_d :: Ptr fun -> Ptr () -> Ptr fun_d -> IO ()
    setHandlerWrapper_d funptr stptr funptr_d
      = do when (stptr/=ptrNull)
            (freeStablePtr (castPtrToStablePtr stptr))
           when (funptr/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr))
           when (funptr_d/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr_d))
           return ()

foreign import ccall "qtc_QTreeWidget_setHandler11" qtc_QTreeWidget_setHandler11 :: Ptr (TQTreeWidget a) -> CWString -> Ptr (Ptr (TQTreeWidget x0) -> Ptr (TQString ()) -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QTreeWidget11 :: (Ptr (TQTreeWidget x0) -> Ptr (TQString ()) -> IO ()) -> IO (FunPtr (Ptr (TQTreeWidget x0) -> Ptr (TQString ()) -> IO ()))

foreign import ccall "wrapper" wrapSetHandler_QTreeWidget11_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QTreeWidgetSc a) (QTreeWidget x0 -> String -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTreeWidget11 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTreeWidget11_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTreeWidget_setHandler11 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTreeWidget x0) -> Ptr (TQString ()) -> IO ()
    setHandlerWrapper x0 x1
      = do x0obj <- qTreeWidgetFromPtr x0
           x1str <- stringFromPtr x1
           if (objectIsNull x0obj)
            then return ()
            else _handler x0obj x1str

    setHandlerWrapper_d :: Ptr fun -> Ptr () -> Ptr fun_d -> IO ()
    setHandlerWrapper_d funptr stptr funptr_d
      = do when (stptr/=ptrNull)
            (freeStablePtr (castPtrToStablePtr stptr))
           when (funptr/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr))
           when (funptr_d/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr_d))
           return ()

instance QkeyboardSearch_h (QTreeWidget ()) ((String)) where
 keyboardSearch_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTreeWidget_keyboardSearch cobj_x0 cstr_x1

foreign import ccall "qtc_QTreeWidget_keyboardSearch" qtc_QTreeWidget_keyboardSearch :: Ptr (TQTreeWidget a) -> CWString -> IO ()

instance QkeyboardSearch_h (QTreeWidgetSc a) ((String)) where
 keyboardSearch_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTreeWidget_keyboardSearch cobj_x0 cstr_x1

instance QmouseDoubleClickEvent_h (QTreeWidget ()) ((QMouseEvent t1)) where
 mouseDoubleClickEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_mouseDoubleClickEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeWidget_mouseDoubleClickEvent" qtc_QTreeWidget_mouseDoubleClickEvent :: Ptr (TQTreeWidget a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseDoubleClickEvent_h (QTreeWidgetSc a) ((QMouseEvent t1)) where
 mouseDoubleClickEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_mouseDoubleClickEvent cobj_x0 cobj_x1

instance QmouseMoveEvent_h (QTreeWidget ()) ((QMouseEvent t1)) where
 mouseMoveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_mouseMoveEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeWidget_mouseMoveEvent" qtc_QTreeWidget_mouseMoveEvent :: Ptr (TQTreeWidget a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseMoveEvent_h (QTreeWidgetSc a) ((QMouseEvent t1)) where
 mouseMoveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_mouseMoveEvent cobj_x0 cobj_x1

instance QmousePressEvent_h (QTreeWidget ()) ((QMouseEvent t1)) where
 mousePressEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_mousePressEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeWidget_mousePressEvent" qtc_QTreeWidget_mousePressEvent :: Ptr (TQTreeWidget a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmousePressEvent_h (QTreeWidgetSc a) ((QMouseEvent t1)) where
 mousePressEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_mousePressEvent cobj_x0 cobj_x1

instance QmouseReleaseEvent_h (QTreeWidget ()) ((QMouseEvent t1)) where
 mouseReleaseEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_mouseReleaseEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeWidget_mouseReleaseEvent" qtc_QTreeWidget_mouseReleaseEvent :: Ptr (TQTreeWidget a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseReleaseEvent_h (QTreeWidgetSc a) ((QMouseEvent t1)) where
 mouseReleaseEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_mouseReleaseEvent cobj_x0 cobj_x1

instance QsetHandler (QTreeWidget ()) (QTreeWidget x0 -> CursorAction -> KeyboardModifiers -> IO (QModelIndex t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTreeWidget12 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTreeWidget12_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTreeWidget_setHandler12 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTreeWidget x0) -> CLong -> CLong -> IO (Ptr (TQModelIndex t0))
    setHandlerWrapper x0 x1 x2
      = do x0obj <- qTreeWidgetFromPtr x0
           let x1enum = qEnum_fromInt $ fromCLong x1
           let x2flags = qFlags_fromInt $ fromCLong x2
           let rv =
                if (objectIsNull x0obj)
                 then return $ objectCast x0obj
                 else _handler x0obj x1enum x2flags
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

foreign import ccall "qtc_QTreeWidget_setHandler12" qtc_QTreeWidget_setHandler12 :: Ptr (TQTreeWidget a) -> CWString -> Ptr (Ptr (TQTreeWidget x0) -> CLong -> CLong -> IO (Ptr (TQModelIndex t0))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QTreeWidget12 :: (Ptr (TQTreeWidget x0) -> CLong -> CLong -> IO (Ptr (TQModelIndex t0))) -> IO (FunPtr (Ptr (TQTreeWidget x0) -> CLong -> CLong -> IO (Ptr (TQModelIndex t0))))

foreign import ccall "wrapper" wrapSetHandler_QTreeWidget12_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QTreeWidgetSc a) (QTreeWidget x0 -> CursorAction -> KeyboardModifiers -> IO (QModelIndex t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTreeWidget12 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTreeWidget12_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTreeWidget_setHandler12 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTreeWidget x0) -> CLong -> CLong -> IO (Ptr (TQModelIndex t0))
    setHandlerWrapper x0 x1 x2
      = do x0obj <- qTreeWidgetFromPtr x0
           let x1enum = qEnum_fromInt $ fromCLong x1
           let x2flags = qFlags_fromInt $ fromCLong x2
           let rv =
                if (objectIsNull x0obj)
                 then return $ objectCast x0obj
                 else _handler x0obj x1enum x2flags
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

instance QmoveCursor_h (QTreeWidget ()) ((CursorAction, KeyboardModifiers)) where
 moveCursor_h x0 (x1, x2)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_moveCursor cobj_x0 (toCLong $ qEnum_toInt x1) (toCLong $ qFlags_toInt x2)

foreign import ccall "qtc_QTreeWidget_moveCursor" qtc_QTreeWidget_moveCursor :: Ptr (TQTreeWidget a) -> CLong -> CLong -> IO (Ptr (TQModelIndex ()))

instance QmoveCursor_h (QTreeWidgetSc a) ((CursorAction, KeyboardModifiers)) where
 moveCursor_h x0 (x1, x2)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_moveCursor cobj_x0 (toCLong $ qEnum_toInt x1) (toCLong $ qFlags_toInt x2)

instance QpaintEvent_h (QTreeWidget ()) ((QPaintEvent t1)) where
 paintEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_paintEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeWidget_paintEvent" qtc_QTreeWidget_paintEvent :: Ptr (TQTreeWidget a) -> Ptr (TQPaintEvent t1) -> IO ()

instance QpaintEvent_h (QTreeWidgetSc a) ((QPaintEvent t1)) where
 paintEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_paintEvent cobj_x0 cobj_x1

instance Qreset_h (QTreeWidget ()) (()) (IO ()) where
 reset_h x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_reset cobj_x0

foreign import ccall "qtc_QTreeWidget_reset" qtc_QTreeWidget_reset :: Ptr (TQTreeWidget a) -> IO ()

instance Qreset_h (QTreeWidgetSc a) (()) (IO ()) where
 reset_h x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_reset cobj_x0

instance QsetHandler (QTreeWidget ()) (QTreeWidget x0 -> QModelIndex t1 -> Int -> Int -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTreeWidget13 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTreeWidget13_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTreeWidget_setHandler13 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTreeWidget x0) -> Ptr (TQModelIndex t1) -> CInt -> CInt -> IO ()
    setHandlerWrapper x0 x1 x2 x3
      = do x0obj <- qTreeWidgetFromPtr x0
           x1obj <- objectFromPtr_nf x1
           let x2int = fromCInt x2
           let x3int = fromCInt x3
           if (objectIsNull x0obj)
            then return ()
            else _handler x0obj x1obj x2int x3int

    setHandlerWrapper_d :: Ptr fun -> Ptr () -> Ptr fun_d -> IO ()
    setHandlerWrapper_d funptr stptr funptr_d
      = do when (stptr/=ptrNull)
            (freeStablePtr (castPtrToStablePtr stptr))
           when (funptr/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr))
           when (funptr_d/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr_d))
           return ()

foreign import ccall "qtc_QTreeWidget_setHandler13" qtc_QTreeWidget_setHandler13 :: Ptr (TQTreeWidget a) -> CWString -> Ptr (Ptr (TQTreeWidget x0) -> Ptr (TQModelIndex t1) -> CInt -> CInt -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QTreeWidget13 :: (Ptr (TQTreeWidget x0) -> Ptr (TQModelIndex t1) -> CInt -> CInt -> IO ()) -> IO (FunPtr (Ptr (TQTreeWidget x0) -> Ptr (TQModelIndex t1) -> CInt -> CInt -> IO ()))

foreign import ccall "wrapper" wrapSetHandler_QTreeWidget13_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QTreeWidgetSc a) (QTreeWidget x0 -> QModelIndex t1 -> Int -> Int -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTreeWidget13 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTreeWidget13_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTreeWidget_setHandler13 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTreeWidget x0) -> Ptr (TQModelIndex t1) -> CInt -> CInt -> IO ()
    setHandlerWrapper x0 x1 x2 x3
      = do x0obj <- qTreeWidgetFromPtr x0
           x1obj <- objectFromPtr_nf x1
           let x2int = fromCInt x2
           let x3int = fromCInt x3
           if (objectIsNull x0obj)
            then return ()
            else _handler x0obj x1obj x2int x3int

    setHandlerWrapper_d :: Ptr fun -> Ptr () -> Ptr fun_d -> IO ()
    setHandlerWrapper_d funptr stptr funptr_d
      = do when (stptr/=ptrNull)
            (freeStablePtr (castPtrToStablePtr stptr))
           when (funptr/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr))
           when (funptr_d/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr_d))
           return ()

instance QrowsAboutToBeRemoved_h (QTreeWidget ()) ((QModelIndex t1, Int, Int)) where
 rowsAboutToBeRemoved_h x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_rowsAboutToBeRemoved cobj_x0 cobj_x1 (toCInt x2) (toCInt x3)

foreign import ccall "qtc_QTreeWidget_rowsAboutToBeRemoved" qtc_QTreeWidget_rowsAboutToBeRemoved :: Ptr (TQTreeWidget a) -> Ptr (TQModelIndex t1) -> CInt -> CInt -> IO ()

instance QrowsAboutToBeRemoved_h (QTreeWidgetSc a) ((QModelIndex t1, Int, Int)) where
 rowsAboutToBeRemoved_h x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_rowsAboutToBeRemoved cobj_x0 cobj_x1 (toCInt x2) (toCInt x3)

instance QrowsInserted_h (QTreeWidget ()) ((QModelIndex t1, Int, Int)) where
 rowsInserted_h x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_rowsInserted cobj_x0 cobj_x1 (toCInt x2) (toCInt x3)

foreign import ccall "qtc_QTreeWidget_rowsInserted" qtc_QTreeWidget_rowsInserted :: Ptr (TQTreeWidget a) -> Ptr (TQModelIndex t1) -> CInt -> CInt -> IO ()

instance QrowsInserted_h (QTreeWidgetSc a) ((QModelIndex t1, Int, Int)) where
 rowsInserted_h x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_rowsInserted cobj_x0 cobj_x1 (toCInt x2) (toCInt x3)

instance QsetHandler (QTreeWidget ()) (QTreeWidget x0 -> Int -> Int -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTreeWidget14 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTreeWidget14_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTreeWidget_setHandler14 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTreeWidget x0) -> CInt -> CInt -> IO ()
    setHandlerWrapper x0 x1 x2
      = do x0obj <- qTreeWidgetFromPtr x0
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

foreign import ccall "qtc_QTreeWidget_setHandler14" qtc_QTreeWidget_setHandler14 :: Ptr (TQTreeWidget a) -> CWString -> Ptr (Ptr (TQTreeWidget x0) -> CInt -> CInt -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QTreeWidget14 :: (Ptr (TQTreeWidget x0) -> CInt -> CInt -> IO ()) -> IO (FunPtr (Ptr (TQTreeWidget x0) -> CInt -> CInt -> IO ()))

foreign import ccall "wrapper" wrapSetHandler_QTreeWidget14_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QTreeWidgetSc a) (QTreeWidget x0 -> Int -> Int -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTreeWidget14 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTreeWidget14_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTreeWidget_setHandler14 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTreeWidget x0) -> CInt -> CInt -> IO ()
    setHandlerWrapper x0 x1 x2
      = do x0obj <- qTreeWidgetFromPtr x0
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

instance QscrollContentsBy_h (QTreeWidget ()) ((Int, Int)) where
 scrollContentsBy_h x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_scrollContentsBy cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QTreeWidget_scrollContentsBy" qtc_QTreeWidget_scrollContentsBy :: Ptr (TQTreeWidget a) -> CInt -> CInt -> IO ()

instance QscrollContentsBy_h (QTreeWidgetSc a) ((Int, Int)) where
 scrollContentsBy_h x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_scrollContentsBy cobj_x0 (toCInt x1) (toCInt x2)

instance QsetHandler (QTreeWidget ()) (QTreeWidget x0 -> QModelIndex t1 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTreeWidget15 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTreeWidget15_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTreeWidget_setHandler15 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTreeWidget x0) -> Ptr (TQModelIndex t1) -> IO ()
    setHandlerWrapper x0 x1
      = do x0obj <- qTreeWidgetFromPtr x0
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

foreign import ccall "qtc_QTreeWidget_setHandler15" qtc_QTreeWidget_setHandler15 :: Ptr (TQTreeWidget a) -> CWString -> Ptr (Ptr (TQTreeWidget x0) -> Ptr (TQModelIndex t1) -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QTreeWidget15 :: (Ptr (TQTreeWidget x0) -> Ptr (TQModelIndex t1) -> IO ()) -> IO (FunPtr (Ptr (TQTreeWidget x0) -> Ptr (TQModelIndex t1) -> IO ()))

foreign import ccall "wrapper" wrapSetHandler_QTreeWidget15_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QTreeWidgetSc a) (QTreeWidget x0 -> QModelIndex t1 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTreeWidget15 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTreeWidget15_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTreeWidget_setHandler15 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTreeWidget x0) -> Ptr (TQModelIndex t1) -> IO ()
    setHandlerWrapper x0 x1
      = do x0obj <- qTreeWidgetFromPtr x0
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

instance QsetHandler (QTreeWidget ()) (QTreeWidget x0 -> QModelIndex t1 -> ScrollHint -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTreeWidget16 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTreeWidget16_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTreeWidget_setHandler16 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTreeWidget x0) -> Ptr (TQModelIndex t1) -> CLong -> IO ()
    setHandlerWrapper x0 x1 x2
      = do x0obj <- qTreeWidgetFromPtr x0
           x1obj <- objectFromPtr_nf x1
           let x2enum = qEnum_fromInt $ fromCLong x2
           if (objectIsNull x0obj)
            then return ()
            else _handler x0obj x1obj x2enum

    setHandlerWrapper_d :: Ptr fun -> Ptr () -> Ptr fun_d -> IO ()
    setHandlerWrapper_d funptr stptr funptr_d
      = do when (stptr/=ptrNull)
            (freeStablePtr (castPtrToStablePtr stptr))
           when (funptr/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr))
           when (funptr_d/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr_d))
           return ()

foreign import ccall "qtc_QTreeWidget_setHandler16" qtc_QTreeWidget_setHandler16 :: Ptr (TQTreeWidget a) -> CWString -> Ptr (Ptr (TQTreeWidget x0) -> Ptr (TQModelIndex t1) -> CLong -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QTreeWidget16 :: (Ptr (TQTreeWidget x0) -> Ptr (TQModelIndex t1) -> CLong -> IO ()) -> IO (FunPtr (Ptr (TQTreeWidget x0) -> Ptr (TQModelIndex t1) -> CLong -> IO ()))

foreign import ccall "wrapper" wrapSetHandler_QTreeWidget16_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QTreeWidgetSc a) (QTreeWidget x0 -> QModelIndex t1 -> ScrollHint -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTreeWidget16 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTreeWidget16_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTreeWidget_setHandler16 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTreeWidget x0) -> Ptr (TQModelIndex t1) -> CLong -> IO ()
    setHandlerWrapper x0 x1 x2
      = do x0obj <- qTreeWidgetFromPtr x0
           x1obj <- objectFromPtr_nf x1
           let x2enum = qEnum_fromInt $ fromCLong x2
           if (objectIsNull x0obj)
            then return ()
            else _handler x0obj x1obj x2enum

    setHandlerWrapper_d :: Ptr fun -> Ptr () -> Ptr fun_d -> IO ()
    setHandlerWrapper_d funptr stptr funptr_d
      = do when (stptr/=ptrNull)
            (freeStablePtr (castPtrToStablePtr stptr))
           when (funptr/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr))
           when (funptr_d/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr_d))
           return ()

instance QscrollTo_h (QTreeWidget ()) ((QModelIndex t1)) where
 scrollTo_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_scrollTo cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeWidget_scrollTo" qtc_QTreeWidget_scrollTo :: Ptr (TQTreeWidget a) -> Ptr (TQModelIndex t1) -> IO ()

instance QscrollTo_h (QTreeWidgetSc a) ((QModelIndex t1)) where
 scrollTo_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_scrollTo cobj_x0 cobj_x1

instance QscrollTo_h (QTreeWidget ()) ((QModelIndex t1, ScrollHint)) where
 scrollTo_h x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_scrollTo1 cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QTreeWidget_scrollTo1" qtc_QTreeWidget_scrollTo1 :: Ptr (TQTreeWidget a) -> Ptr (TQModelIndex t1) -> CLong -> IO ()

instance QscrollTo_h (QTreeWidgetSc a) ((QModelIndex t1, ScrollHint)) where
 scrollTo_h x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_scrollTo1 cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

instance QselectAll_h (QTreeWidget ()) (()) where
 selectAll_h x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_selectAll cobj_x0

foreign import ccall "qtc_QTreeWidget_selectAll" qtc_QTreeWidget_selectAll :: Ptr (TQTreeWidget a) -> IO ()

instance QselectAll_h (QTreeWidgetSc a) (()) where
 selectAll_h x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_selectAll cobj_x0

instance QsetHandler (QTreeWidget ()) (QTreeWidget x0 -> QObject t1 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTreeWidget17 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTreeWidget17_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTreeWidget_setHandler17 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTreeWidget x0) -> Ptr (TQObject t1) -> IO ()
    setHandlerWrapper x0 x1
      = do x0obj <- qTreeWidgetFromPtr x0
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

foreign import ccall "qtc_QTreeWidget_setHandler17" qtc_QTreeWidget_setHandler17 :: Ptr (TQTreeWidget a) -> CWString -> Ptr (Ptr (TQTreeWidget x0) -> Ptr (TQObject t1) -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QTreeWidget17 :: (Ptr (TQTreeWidget x0) -> Ptr (TQObject t1) -> IO ()) -> IO (FunPtr (Ptr (TQTreeWidget x0) -> Ptr (TQObject t1) -> IO ()))

foreign import ccall "wrapper" wrapSetHandler_QTreeWidget17_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QTreeWidgetSc a) (QTreeWidget x0 -> QObject t1 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTreeWidget17 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTreeWidget17_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTreeWidget_setHandler17 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTreeWidget x0) -> Ptr (TQObject t1) -> IO ()
    setHandlerWrapper x0 x1
      = do x0obj <- qTreeWidgetFromPtr x0
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

instance QsetModel_h (QTreeWidget ()) ((QAbstractItemModel t1)) where
 setModel_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_setModel cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeWidget_setModel" qtc_QTreeWidget_setModel :: Ptr (TQTreeWidget a) -> Ptr (TQAbstractItemModel t1) -> IO ()

instance QsetModel_h (QTreeWidgetSc a) ((QAbstractItemModel t1)) where
 setModel_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_setModel cobj_x0 cobj_x1

instance QsetRootIndex_h (QTreeWidget ()) ((QModelIndex t1)) where
 setRootIndex_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_setRootIndex cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeWidget_setRootIndex" qtc_QTreeWidget_setRootIndex :: Ptr (TQTreeWidget a) -> Ptr (TQModelIndex t1) -> IO ()

instance QsetRootIndex_h (QTreeWidgetSc a) ((QModelIndex t1)) where
 setRootIndex_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_setRootIndex cobj_x0 cobj_x1

instance QsetHandler (QTreeWidget ()) (QTreeWidget x0 -> QRect t1 -> SelectionFlags -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTreeWidget18 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTreeWidget18_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTreeWidget_setHandler18 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTreeWidget x0) -> Ptr (TQRect t1) -> CLong -> IO ()
    setHandlerWrapper x0 x1 x2
      = do x0obj <- qTreeWidgetFromPtr x0
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

foreign import ccall "qtc_QTreeWidget_setHandler18" qtc_QTreeWidget_setHandler18 :: Ptr (TQTreeWidget a) -> CWString -> Ptr (Ptr (TQTreeWidget x0) -> Ptr (TQRect t1) -> CLong -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QTreeWidget18 :: (Ptr (TQTreeWidget x0) -> Ptr (TQRect t1) -> CLong -> IO ()) -> IO (FunPtr (Ptr (TQTreeWidget x0) -> Ptr (TQRect t1) -> CLong -> IO ()))

foreign import ccall "wrapper" wrapSetHandler_QTreeWidget18_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QTreeWidgetSc a) (QTreeWidget x0 -> QRect t1 -> SelectionFlags -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTreeWidget18 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTreeWidget18_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTreeWidget_setHandler18 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTreeWidget x0) -> Ptr (TQRect t1) -> CLong -> IO ()
    setHandlerWrapper x0 x1 x2
      = do x0obj <- qTreeWidgetFromPtr x0
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

instance QqsetSelection_h (QTreeWidget ()) ((QRect t1, SelectionFlags)) where
 qsetSelection_h x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_setSelection cobj_x0 cobj_x1 (toCLong $ qFlags_toInt x2)

foreign import ccall "qtc_QTreeWidget_setSelection" qtc_QTreeWidget_setSelection :: Ptr (TQTreeWidget a) -> Ptr (TQRect t1) -> CLong -> IO ()

instance QqsetSelection_h (QTreeWidgetSc a) ((QRect t1, SelectionFlags)) where
 qsetSelection_h x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_setSelection cobj_x0 cobj_x1 (toCLong $ qFlags_toInt x2)

instance QsetSelection_h (QTreeWidget ()) ((Rect, SelectionFlags)) where
 setSelection_h x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QTreeWidget_setSelection_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h  (toCLong $ qFlags_toInt x2)

foreign import ccall "qtc_QTreeWidget_setSelection_qth" qtc_QTreeWidget_setSelection_qth :: Ptr (TQTreeWidget a) -> CInt -> CInt -> CInt -> CInt -> CLong -> IO ()

instance QsetSelection_h (QTreeWidgetSc a) ((Rect, SelectionFlags)) where
 setSelection_h x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QTreeWidget_setSelection_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h  (toCLong $ qFlags_toInt x2)

instance QsetSelectionModel_h (QTreeWidget ()) ((QItemSelectionModel t1)) where
 setSelectionModel_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_setSelectionModel cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeWidget_setSelectionModel" qtc_QTreeWidget_setSelectionModel :: Ptr (TQTreeWidget a) -> Ptr (TQItemSelectionModel t1) -> IO ()

instance QsetSelectionModel_h (QTreeWidgetSc a) ((QItemSelectionModel t1)) where
 setSelectionModel_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_setSelectionModel cobj_x0 cobj_x1

instance QverticalOffset_h (QTreeWidget ()) (()) where
 verticalOffset_h x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_verticalOffset cobj_x0

foreign import ccall "qtc_QTreeWidget_verticalOffset" qtc_QTreeWidget_verticalOffset :: Ptr (TQTreeWidget a) -> IO CInt

instance QverticalOffset_h (QTreeWidgetSc a) (()) where
 verticalOffset_h x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_verticalOffset cobj_x0

instance QviewportEvent_h (QTreeWidget ()) ((QEvent t1)) where
 viewportEvent_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_viewportEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeWidget_viewportEvent" qtc_QTreeWidget_viewportEvent :: Ptr (TQTreeWidget a) -> Ptr (TQEvent t1) -> IO CBool

instance QviewportEvent_h (QTreeWidgetSc a) ((QEvent t1)) where
 viewportEvent_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_viewportEvent cobj_x0 cobj_x1

instance QsetHandler (QTreeWidget ()) (QTreeWidget x0 -> QModelIndex t1 -> IO (QRect t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTreeWidget19 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTreeWidget19_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTreeWidget_setHandler19 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTreeWidget x0) -> Ptr (TQModelIndex t1) -> IO (Ptr (TQRect t0))
    setHandlerWrapper x0 x1
      = do x0obj <- qTreeWidgetFromPtr x0
           x1obj <- objectFromPtr_nf x1
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

foreign import ccall "qtc_QTreeWidget_setHandler19" qtc_QTreeWidget_setHandler19 :: Ptr (TQTreeWidget a) -> CWString -> Ptr (Ptr (TQTreeWidget x0) -> Ptr (TQModelIndex t1) -> IO (Ptr (TQRect t0))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QTreeWidget19 :: (Ptr (TQTreeWidget x0) -> Ptr (TQModelIndex t1) -> IO (Ptr (TQRect t0))) -> IO (FunPtr (Ptr (TQTreeWidget x0) -> Ptr (TQModelIndex t1) -> IO (Ptr (TQRect t0))))

foreign import ccall "wrapper" wrapSetHandler_QTreeWidget19_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QTreeWidgetSc a) (QTreeWidget x0 -> QModelIndex t1 -> IO (QRect t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTreeWidget19 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTreeWidget19_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTreeWidget_setHandler19 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTreeWidget x0) -> Ptr (TQModelIndex t1) -> IO (Ptr (TQRect t0))
    setHandlerWrapper x0 x1
      = do x0obj <- qTreeWidgetFromPtr x0
           x1obj <- objectFromPtr_nf x1
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

instance QqvisualRect_h (QTreeWidget ()) ((QModelIndex t1)) where
 qvisualRect_h x0 (x1)
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_visualRect cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeWidget_visualRect" qtc_QTreeWidget_visualRect :: Ptr (TQTreeWidget a) -> Ptr (TQModelIndex t1) -> IO (Ptr (TQRect ()))

instance QqvisualRect_h (QTreeWidgetSc a) ((QModelIndex t1)) where
 qvisualRect_h x0 (x1)
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_visualRect cobj_x0 cobj_x1

instance QvisualRect_h (QTreeWidget ()) ((QModelIndex t1)) where
 visualRect_h x0 (x1)
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_visualRect_qth cobj_x0 cobj_x1 crect_ret_x crect_ret_y crect_ret_w crect_ret_h

foreign import ccall "qtc_QTreeWidget_visualRect_qth" qtc_QTreeWidget_visualRect_qth :: Ptr (TQTreeWidget a) -> Ptr (TQModelIndex t1) -> Ptr CInt -> Ptr CInt -> Ptr CInt -> Ptr CInt -> IO ()

instance QvisualRect_h (QTreeWidgetSc a) ((QModelIndex t1)) where
 visualRect_h x0 (x1)
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_visualRect_qth cobj_x0 cobj_x1 crect_ret_x crect_ret_y crect_ret_w crect_ret_h

instance QsetHandler (QTreeWidget ()) (QTreeWidget x0 -> QItemSelection t1 -> IO (QRegion t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTreeWidget20 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTreeWidget20_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTreeWidget_setHandler20 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTreeWidget x0) -> Ptr (TQItemSelection t1) -> IO (Ptr (TQRegion t0))
    setHandlerWrapper x0 x1
      = do x0obj <- qTreeWidgetFromPtr x0
           x1obj <- objectFromPtr_nf x1
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

foreign import ccall "qtc_QTreeWidget_setHandler20" qtc_QTreeWidget_setHandler20 :: Ptr (TQTreeWidget a) -> CWString -> Ptr (Ptr (TQTreeWidget x0) -> Ptr (TQItemSelection t1) -> IO (Ptr (TQRegion t0))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QTreeWidget20 :: (Ptr (TQTreeWidget x0) -> Ptr (TQItemSelection t1) -> IO (Ptr (TQRegion t0))) -> IO (FunPtr (Ptr (TQTreeWidget x0) -> Ptr (TQItemSelection t1) -> IO (Ptr (TQRegion t0))))

foreign import ccall "wrapper" wrapSetHandler_QTreeWidget20_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QTreeWidgetSc a) (QTreeWidget x0 -> QItemSelection t1 -> IO (QRegion t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTreeWidget20 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTreeWidget20_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTreeWidget_setHandler20 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTreeWidget x0) -> Ptr (TQItemSelection t1) -> IO (Ptr (TQRegion t0))
    setHandlerWrapper x0 x1
      = do x0obj <- qTreeWidgetFromPtr x0
           x1obj <- objectFromPtr_nf x1
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

instance QvisualRegionForSelection_h (QTreeWidget ()) ((QItemSelection t1)) where
 visualRegionForSelection_h x0 (x1)
  = withQRegionResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_visualRegionForSelection cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeWidget_visualRegionForSelection" qtc_QTreeWidget_visualRegionForSelection :: Ptr (TQTreeWidget a) -> Ptr (TQItemSelection t1) -> IO (Ptr (TQRegion ()))

instance QvisualRegionForSelection_h (QTreeWidgetSc a) ((QItemSelection t1)) where
 visualRegionForSelection_h x0 (x1)
  = withQRegionResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_visualRegionForSelection cobj_x0 cobj_x1

instance QdragEnterEvent_h (QTreeWidget ()) ((QDragEnterEvent t1)) where
 dragEnterEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_dragEnterEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeWidget_dragEnterEvent" qtc_QTreeWidget_dragEnterEvent :: Ptr (TQTreeWidget a) -> Ptr (TQDragEnterEvent t1) -> IO ()

instance QdragEnterEvent_h (QTreeWidgetSc a) ((QDragEnterEvent t1)) where
 dragEnterEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_dragEnterEvent cobj_x0 cobj_x1

instance QdragLeaveEvent_h (QTreeWidget ()) ((QDragLeaveEvent t1)) where
 dragLeaveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_dragLeaveEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeWidget_dragLeaveEvent" qtc_QTreeWidget_dragLeaveEvent :: Ptr (TQTreeWidget a) -> Ptr (TQDragLeaveEvent t1) -> IO ()

instance QdragLeaveEvent_h (QTreeWidgetSc a) ((QDragLeaveEvent t1)) where
 dragLeaveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_dragLeaveEvent cobj_x0 cobj_x1

instance QfocusInEvent_h (QTreeWidget ()) ((QFocusEvent t1)) where
 focusInEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_focusInEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeWidget_focusInEvent" qtc_QTreeWidget_focusInEvent :: Ptr (TQTreeWidget a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusInEvent_h (QTreeWidgetSc a) ((QFocusEvent t1)) where
 focusInEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_focusInEvent cobj_x0 cobj_x1

instance QfocusOutEvent_h (QTreeWidget ()) ((QFocusEvent t1)) where
 focusOutEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_focusOutEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeWidget_focusOutEvent" qtc_QTreeWidget_focusOutEvent :: Ptr (TQTreeWidget a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusOutEvent_h (QTreeWidgetSc a) ((QFocusEvent t1)) where
 focusOutEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_focusOutEvent cobj_x0 cobj_x1

instance QsetHandler (QTreeWidget ()) (QTreeWidget x0 -> InputMethodQuery -> IO (QVariant t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTreeWidget21 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTreeWidget21_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTreeWidget_setHandler21 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTreeWidget x0) -> CLong -> IO (Ptr (TQVariant t0))
    setHandlerWrapper x0 x1
      = do x0obj <- qTreeWidgetFromPtr x0
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

foreign import ccall "qtc_QTreeWidget_setHandler21" qtc_QTreeWidget_setHandler21 :: Ptr (TQTreeWidget a) -> CWString -> Ptr (Ptr (TQTreeWidget x0) -> CLong -> IO (Ptr (TQVariant t0))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QTreeWidget21 :: (Ptr (TQTreeWidget x0) -> CLong -> IO (Ptr (TQVariant t0))) -> IO (FunPtr (Ptr (TQTreeWidget x0) -> CLong -> IO (Ptr (TQVariant t0))))

foreign import ccall "wrapper" wrapSetHandler_QTreeWidget21_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QTreeWidgetSc a) (QTreeWidget x0 -> InputMethodQuery -> IO (QVariant t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTreeWidget21 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTreeWidget21_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTreeWidget_setHandler21 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTreeWidget x0) -> CLong -> IO (Ptr (TQVariant t0))
    setHandlerWrapper x0 x1
      = do x0obj <- qTreeWidgetFromPtr x0
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

instance QinputMethodQuery_h (QTreeWidget ()) ((InputMethodQuery)) where
 inputMethodQuery_h x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_inputMethodQuery cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QTreeWidget_inputMethodQuery" qtc_QTreeWidget_inputMethodQuery :: Ptr (TQTreeWidget a) -> CLong -> IO (Ptr (TQVariant ()))

instance QinputMethodQuery_h (QTreeWidgetSc a) ((InputMethodQuery)) where
 inputMethodQuery_h x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_inputMethodQuery cobj_x0 (toCLong $ qEnum_toInt x1)

instance QresizeEvent_h (QTreeWidget ()) ((QResizeEvent t1)) where
 resizeEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_resizeEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeWidget_resizeEvent" qtc_QTreeWidget_resizeEvent :: Ptr (TQTreeWidget a) -> Ptr (TQResizeEvent t1) -> IO ()

instance QresizeEvent_h (QTreeWidgetSc a) ((QResizeEvent t1)) where
 resizeEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_resizeEvent cobj_x0 cobj_x1

instance QsetHandler (QTreeWidget ()) (QTreeWidget x0 -> Int -> IO (Int)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTreeWidget22 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTreeWidget22_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTreeWidget_setHandler22 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTreeWidget x0) -> CInt -> IO (CInt)
    setHandlerWrapper x0 x1
      = do x0obj <- qTreeWidgetFromPtr x0
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

foreign import ccall "qtc_QTreeWidget_setHandler22" qtc_QTreeWidget_setHandler22 :: Ptr (TQTreeWidget a) -> CWString -> Ptr (Ptr (TQTreeWidget x0) -> CInt -> IO (CInt)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QTreeWidget22 :: (Ptr (TQTreeWidget x0) -> CInt -> IO (CInt)) -> IO (FunPtr (Ptr (TQTreeWidget x0) -> CInt -> IO (CInt)))

foreign import ccall "wrapper" wrapSetHandler_QTreeWidget22_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QTreeWidgetSc a) (QTreeWidget x0 -> Int -> IO (Int)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTreeWidget22 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTreeWidget22_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTreeWidget_setHandler22 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTreeWidget x0) -> CInt -> IO (CInt)
    setHandlerWrapper x0 x1
      = do x0obj <- qTreeWidgetFromPtr x0
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

instance QsizeHintForRow_h (QTreeWidget ()) ((Int)) where
 sizeHintForRow_h x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_sizeHintForRow cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTreeWidget_sizeHintForRow" qtc_QTreeWidget_sizeHintForRow :: Ptr (TQTreeWidget a) -> CInt -> IO CInt

instance QsizeHintForRow_h (QTreeWidgetSc a) ((Int)) where
 sizeHintForRow_h x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_sizeHintForRow cobj_x0 (toCInt x1)

instance QcontextMenuEvent_h (QTreeWidget ()) ((QContextMenuEvent t1)) where
 contextMenuEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_contextMenuEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeWidget_contextMenuEvent" qtc_QTreeWidget_contextMenuEvent :: Ptr (TQTreeWidget a) -> Ptr (TQContextMenuEvent t1) -> IO ()

instance QcontextMenuEvent_h (QTreeWidgetSc a) ((QContextMenuEvent t1)) where
 contextMenuEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_contextMenuEvent cobj_x0 cobj_x1

instance QsetHandler (QTreeWidget ()) (QTreeWidget x0 -> IO (QSize t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTreeWidget23 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTreeWidget23_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTreeWidget_setHandler23 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTreeWidget x0) -> IO (Ptr (TQSize t0))
    setHandlerWrapper x0
      = do x0obj <- qTreeWidgetFromPtr x0
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

foreign import ccall "qtc_QTreeWidget_setHandler23" qtc_QTreeWidget_setHandler23 :: Ptr (TQTreeWidget a) -> CWString -> Ptr (Ptr (TQTreeWidget x0) -> IO (Ptr (TQSize t0))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QTreeWidget23 :: (Ptr (TQTreeWidget x0) -> IO (Ptr (TQSize t0))) -> IO (FunPtr (Ptr (TQTreeWidget x0) -> IO (Ptr (TQSize t0))))

foreign import ccall "wrapper" wrapSetHandler_QTreeWidget23_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QTreeWidgetSc a) (QTreeWidget x0 -> IO (QSize t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTreeWidget23 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTreeWidget23_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTreeWidget_setHandler23 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTreeWidget x0) -> IO (Ptr (TQSize t0))
    setHandlerWrapper x0
      = do x0obj <- qTreeWidgetFromPtr x0
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

instance QqminimumSizeHint_h (QTreeWidget ()) (()) where
 qminimumSizeHint_h x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_minimumSizeHint cobj_x0

foreign import ccall "qtc_QTreeWidget_minimumSizeHint" qtc_QTreeWidget_minimumSizeHint :: Ptr (TQTreeWidget a) -> IO (Ptr (TQSize ()))

instance QqminimumSizeHint_h (QTreeWidgetSc a) (()) where
 qminimumSizeHint_h x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_minimumSizeHint cobj_x0

instance QminimumSizeHint_h (QTreeWidget ()) (()) where
 minimumSizeHint_h x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_minimumSizeHint_qth cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QTreeWidget_minimumSizeHint_qth" qtc_QTreeWidget_minimumSizeHint_qth :: Ptr (TQTreeWidget a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QminimumSizeHint_h (QTreeWidgetSc a) (()) where
 minimumSizeHint_h x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_minimumSizeHint_qth cobj_x0 csize_ret_w csize_ret_h

instance QqsizeHint_h (QTreeWidget ()) (()) where
 qsizeHint_h x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_sizeHint cobj_x0

foreign import ccall "qtc_QTreeWidget_sizeHint" qtc_QTreeWidget_sizeHint :: Ptr (TQTreeWidget a) -> IO (Ptr (TQSize ()))

instance QqsizeHint_h (QTreeWidgetSc a) (()) where
 qsizeHint_h x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_sizeHint cobj_x0

instance QsizeHint_h (QTreeWidget ()) (()) where
 sizeHint_h x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_sizeHint_qth cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QTreeWidget_sizeHint_qth" qtc_QTreeWidget_sizeHint_qth :: Ptr (TQTreeWidget a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QsizeHint_h (QTreeWidgetSc a) (()) where
 sizeHint_h x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_sizeHint_qth cobj_x0 csize_ret_w csize_ret_h

instance QwheelEvent_h (QTreeWidget ()) ((QWheelEvent t1)) where
 wheelEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_wheelEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeWidget_wheelEvent" qtc_QTreeWidget_wheelEvent :: Ptr (TQTreeWidget a) -> Ptr (TQWheelEvent t1) -> IO ()

instance QwheelEvent_h (QTreeWidgetSc a) ((QWheelEvent t1)) where
 wheelEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_wheelEvent cobj_x0 cobj_x1

instance QchangeEvent_h (QTreeWidget ()) ((QEvent t1)) where
 changeEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_changeEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeWidget_changeEvent" qtc_QTreeWidget_changeEvent :: Ptr (TQTreeWidget a) -> Ptr (TQEvent t1) -> IO ()

instance QchangeEvent_h (QTreeWidgetSc a) ((QEvent t1)) where
 changeEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_changeEvent cobj_x0 cobj_x1

instance QactionEvent_h (QTreeWidget ()) ((QActionEvent t1)) where
 actionEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_actionEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeWidget_actionEvent" qtc_QTreeWidget_actionEvent :: Ptr (TQTreeWidget a) -> Ptr (TQActionEvent t1) -> IO ()

instance QactionEvent_h (QTreeWidgetSc a) ((QActionEvent t1)) where
 actionEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_actionEvent cobj_x0 cobj_x1

instance QcloseEvent_h (QTreeWidget ()) ((QCloseEvent t1)) where
 closeEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_closeEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeWidget_closeEvent" qtc_QTreeWidget_closeEvent :: Ptr (TQTreeWidget a) -> Ptr (TQCloseEvent t1) -> IO ()

instance QcloseEvent_h (QTreeWidgetSc a) ((QCloseEvent t1)) where
 closeEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_closeEvent cobj_x0 cobj_x1

instance QdevType_h (QTreeWidget ()) (()) where
 devType_h x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_devType cobj_x0

foreign import ccall "qtc_QTreeWidget_devType" qtc_QTreeWidget_devType :: Ptr (TQTreeWidget a) -> IO CInt

instance QdevType_h (QTreeWidgetSc a) (()) where
 devType_h x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_devType cobj_x0

instance QenterEvent_h (QTreeWidget ()) ((QEvent t1)) where
 enterEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_enterEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeWidget_enterEvent" qtc_QTreeWidget_enterEvent :: Ptr (TQTreeWidget a) -> Ptr (TQEvent t1) -> IO ()

instance QenterEvent_h (QTreeWidgetSc a) ((QEvent t1)) where
 enterEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_enterEvent cobj_x0 cobj_x1

instance QheightForWidth_h (QTreeWidget ()) ((Int)) where
 heightForWidth_h x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_heightForWidth cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTreeWidget_heightForWidth" qtc_QTreeWidget_heightForWidth :: Ptr (TQTreeWidget a) -> CInt -> IO CInt

instance QheightForWidth_h (QTreeWidgetSc a) ((Int)) where
 heightForWidth_h x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_heightForWidth cobj_x0 (toCInt x1)

instance QhideEvent_h (QTreeWidget ()) ((QHideEvent t1)) where
 hideEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_hideEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeWidget_hideEvent" qtc_QTreeWidget_hideEvent :: Ptr (TQTreeWidget a) -> Ptr (TQHideEvent t1) -> IO ()

instance QhideEvent_h (QTreeWidgetSc a) ((QHideEvent t1)) where
 hideEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_hideEvent cobj_x0 cobj_x1

instance QkeyReleaseEvent_h (QTreeWidget ()) ((QKeyEvent t1)) where
 keyReleaseEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_keyReleaseEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeWidget_keyReleaseEvent" qtc_QTreeWidget_keyReleaseEvent :: Ptr (TQTreeWidget a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyReleaseEvent_h (QTreeWidgetSc a) ((QKeyEvent t1)) where
 keyReleaseEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_keyReleaseEvent cobj_x0 cobj_x1

instance QleaveEvent_h (QTreeWidget ()) ((QEvent t1)) where
 leaveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_leaveEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeWidget_leaveEvent" qtc_QTreeWidget_leaveEvent :: Ptr (TQTreeWidget a) -> Ptr (TQEvent t1) -> IO ()

instance QleaveEvent_h (QTreeWidgetSc a) ((QEvent t1)) where
 leaveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_leaveEvent cobj_x0 cobj_x1

instance QmoveEvent_h (QTreeWidget ()) ((QMoveEvent t1)) where
 moveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_moveEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeWidget_moveEvent" qtc_QTreeWidget_moveEvent :: Ptr (TQTreeWidget a) -> Ptr (TQMoveEvent t1) -> IO ()

instance QmoveEvent_h (QTreeWidgetSc a) ((QMoveEvent t1)) where
 moveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_moveEvent cobj_x0 cobj_x1

instance QsetHandler (QTreeWidget ()) (QTreeWidget x0 -> IO (QPaintEngine t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTreeWidget24 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTreeWidget24_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTreeWidget_setHandler24 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTreeWidget x0) -> IO (Ptr (TQPaintEngine t0))
    setHandlerWrapper x0
      = do x0obj <- qTreeWidgetFromPtr x0
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

foreign import ccall "qtc_QTreeWidget_setHandler24" qtc_QTreeWidget_setHandler24 :: Ptr (TQTreeWidget a) -> CWString -> Ptr (Ptr (TQTreeWidget x0) -> IO (Ptr (TQPaintEngine t0))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QTreeWidget24 :: (Ptr (TQTreeWidget x0) -> IO (Ptr (TQPaintEngine t0))) -> IO (FunPtr (Ptr (TQTreeWidget x0) -> IO (Ptr (TQPaintEngine t0))))

foreign import ccall "wrapper" wrapSetHandler_QTreeWidget24_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QTreeWidgetSc a) (QTreeWidget x0 -> IO (QPaintEngine t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTreeWidget24 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTreeWidget24_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTreeWidget_setHandler24 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTreeWidget x0) -> IO (Ptr (TQPaintEngine t0))
    setHandlerWrapper x0
      = do x0obj <- qTreeWidgetFromPtr x0
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

instance QpaintEngine_h (QTreeWidget ()) (()) where
 paintEngine_h x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_paintEngine cobj_x0

foreign import ccall "qtc_QTreeWidget_paintEngine" qtc_QTreeWidget_paintEngine :: Ptr (TQTreeWidget a) -> IO (Ptr (TQPaintEngine ()))

instance QpaintEngine_h (QTreeWidgetSc a) (()) where
 paintEngine_h x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_paintEngine cobj_x0

instance QsetHandler (QTreeWidget ()) (QTreeWidget x0 -> Bool -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTreeWidget25 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTreeWidget25_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTreeWidget_setHandler25 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTreeWidget x0) -> CBool -> IO ()
    setHandlerWrapper x0 x1
      = do x0obj <- qTreeWidgetFromPtr x0
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

foreign import ccall "qtc_QTreeWidget_setHandler25" qtc_QTreeWidget_setHandler25 :: Ptr (TQTreeWidget a) -> CWString -> Ptr (Ptr (TQTreeWidget x0) -> CBool -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QTreeWidget25 :: (Ptr (TQTreeWidget x0) -> CBool -> IO ()) -> IO (FunPtr (Ptr (TQTreeWidget x0) -> CBool -> IO ()))

foreign import ccall "wrapper" wrapSetHandler_QTreeWidget25_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QTreeWidgetSc a) (QTreeWidget x0 -> Bool -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTreeWidget25 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTreeWidget25_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTreeWidget_setHandler25 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTreeWidget x0) -> CBool -> IO ()
    setHandlerWrapper x0 x1
      = do x0obj <- qTreeWidgetFromPtr x0
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

instance QsetVisible_h (QTreeWidget ()) ((Bool)) where
 setVisible_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_setVisible cobj_x0 (toCBool x1)

foreign import ccall "qtc_QTreeWidget_setVisible" qtc_QTreeWidget_setVisible :: Ptr (TQTreeWidget a) -> CBool -> IO ()

instance QsetVisible_h (QTreeWidgetSc a) ((Bool)) where
 setVisible_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_setVisible cobj_x0 (toCBool x1)

instance QshowEvent_h (QTreeWidget ()) ((QShowEvent t1)) where
 showEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_showEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeWidget_showEvent" qtc_QTreeWidget_showEvent :: Ptr (TQTreeWidget a) -> Ptr (TQShowEvent t1) -> IO ()

instance QshowEvent_h (QTreeWidgetSc a) ((QShowEvent t1)) where
 showEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_showEvent cobj_x0 cobj_x1

instance QtabletEvent_h (QTreeWidget ()) ((QTabletEvent t1)) where
 tabletEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_tabletEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeWidget_tabletEvent" qtc_QTreeWidget_tabletEvent :: Ptr (TQTreeWidget a) -> Ptr (TQTabletEvent t1) -> IO ()

instance QtabletEvent_h (QTreeWidgetSc a) ((QTabletEvent t1)) where
 tabletEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_tabletEvent cobj_x0 cobj_x1

instance QsetHandler (QTreeWidget ()) (QTreeWidget x0 -> QObject t1 -> QEvent t2 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTreeWidget26 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTreeWidget26_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTreeWidget_setHandler26 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTreeWidget x0) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO (CBool)
    setHandlerWrapper x0 x1 x2
      = do x0obj <- qTreeWidgetFromPtr x0
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

foreign import ccall "qtc_QTreeWidget_setHandler26" qtc_QTreeWidget_setHandler26 :: Ptr (TQTreeWidget a) -> CWString -> Ptr (Ptr (TQTreeWidget x0) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO (CBool)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QTreeWidget26 :: (Ptr (TQTreeWidget x0) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO (CBool)) -> IO (FunPtr (Ptr (TQTreeWidget x0) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO (CBool)))

foreign import ccall "wrapper" wrapSetHandler_QTreeWidget26_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QTreeWidgetSc a) (QTreeWidget x0 -> QObject t1 -> QEvent t2 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTreeWidget26 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTreeWidget26_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTreeWidget_setHandler26 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTreeWidget x0) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO (CBool)
    setHandlerWrapper x0 x1 x2
      = do x0obj <- qTreeWidgetFromPtr x0
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

instance QeventFilter_h (QTreeWidget ()) ((QObject t1, QEvent t2)) where
 eventFilter_h x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QTreeWidget_eventFilter cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QTreeWidget_eventFilter" qtc_QTreeWidget_eventFilter :: Ptr (TQTreeWidget a) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO CBool

instance QeventFilter_h (QTreeWidgetSc a) ((QObject t1, QEvent t2)) where
 eventFilter_h x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QTreeWidget_eventFilter cobj_x0 cobj_x1 cobj_x2

