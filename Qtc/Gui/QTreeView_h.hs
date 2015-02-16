{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QTreeView_h.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:26
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QTreeView_h where

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

instance QunSetUserMethod (QTreeView ()) where
 unSetUserMethod qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QTreeView_unSetUserMethod cobj_qobj (toCInt 0) (toCInt evid)

foreign import ccall "qtc_QTreeView_unSetUserMethod" qtc_QTreeView_unSetUserMethod :: Ptr (TQTreeView a) -> CInt -> CInt -> IO (CBool)

instance QunSetUserMethod (QTreeViewSc a) where
 unSetUserMethod qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QTreeView_unSetUserMethod cobj_qobj (toCInt 0) (toCInt evid)

instance QunSetUserMethodVariant (QTreeView ()) where
 unSetUserMethodVariant qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QTreeView_unSetUserMethod cobj_qobj (toCInt 1) (toCInt evid)

instance QunSetUserMethodVariant (QTreeViewSc a) where
 unSetUserMethodVariant qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QTreeView_unSetUserMethod cobj_qobj (toCInt 1) (toCInt evid)

instance QunSetUserMethodVariantList (QTreeView ()) where
 unSetUserMethodVariantList qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QTreeView_unSetUserMethod cobj_qobj (toCInt 2) (toCInt evid)

instance QunSetUserMethodVariantList (QTreeViewSc a) where
 unSetUserMethodVariantList qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QTreeView_unSetUserMethod cobj_qobj (toCInt 2) (toCInt evid)

instance QsetUserMethod (QTreeView ()) (QTreeView x0 -> IO ()) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethod_QTreeView setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethod_QTreeView_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QTreeView_setUserMethod cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQTreeView x0) -> IO ()
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

foreign import ccall "qtc_QTreeView_setUserMethod" qtc_QTreeView_setUserMethod :: Ptr (TQTreeView a) -> CInt -> Ptr (Ptr (TQTreeView x0) -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetUserMethod_QTreeView :: (Ptr (TQTreeView x0) -> IO ()) -> IO (FunPtr (Ptr (TQTreeView x0) -> IO ()))

foreign import ccall "wrapper" wrapSetUserMethod_QTreeView_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetUserMethod (QTreeViewSc a) (QTreeView x0 -> IO ()) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethod_QTreeView setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethod_QTreeView_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QTreeView_setUserMethod cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQTreeView x0) -> IO ()
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

instance QsetUserMethod (QTreeView ()) (QTreeView x0 -> QVariant () -> IO (QVariant ())) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethodVariant_QTreeView setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethodVariant_QTreeView_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QTreeView_setUserMethodVariant cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQTreeView x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))
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

foreign import ccall "qtc_QTreeView_setUserMethodVariant" qtc_QTreeView_setUserMethodVariant :: Ptr (TQTreeView a) -> CInt -> Ptr (Ptr (TQTreeView x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetUserMethodVariant_QTreeView :: (Ptr (TQTreeView x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))) -> IO (FunPtr (Ptr (TQTreeView x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))))

foreign import ccall "wrapper" wrapSetUserMethodVariant_QTreeView_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetUserMethod (QTreeViewSc a) (QTreeView x0 -> QVariant () -> IO (QVariant ())) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethodVariant_QTreeView setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethodVariant_QTreeView_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QTreeView_setUserMethodVariant cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQTreeView x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))
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

instance QunSetHandler (QTreeView ()) where 
 unSetHandler qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withCWString evid $ \cstr_evid ->
    qtc_QTreeView_unSetHandler cobj_qobj cstr_evid

foreign import ccall "qtc_QTreeView_unSetHandler" qtc_QTreeView_unSetHandler :: Ptr (TQTreeView a) -> CWString -> IO (CBool)

instance QunSetHandler (QTreeViewSc a) where 
 unSetHandler qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withCWString evid $ \cstr_evid ->
    qtc_QTreeView_unSetHandler cobj_qobj cstr_evid

instance QsetHandler (QTreeView ()) (QTreeView x0 -> QModelIndex t1 -> QModelIndex t2 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTreeView1 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTreeView1_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTreeView_setHandler1 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTreeView x0) -> Ptr (TQModelIndex t1) -> Ptr (TQModelIndex t2) -> IO ()
    setHandlerWrapper x0 x1 x2
      = do x0obj <- qTreeViewFromPtr x0
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

foreign import ccall "qtc_QTreeView_setHandler1" qtc_QTreeView_setHandler1 :: Ptr (TQTreeView a) -> CWString -> Ptr (Ptr (TQTreeView x0) -> Ptr (TQModelIndex t1) -> Ptr (TQModelIndex t2) -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QTreeView1 :: (Ptr (TQTreeView x0) -> Ptr (TQModelIndex t1) -> Ptr (TQModelIndex t2) -> IO ()) -> IO (FunPtr (Ptr (TQTreeView x0) -> Ptr (TQModelIndex t1) -> Ptr (TQModelIndex t2) -> IO ()))

foreign import ccall "wrapper" wrapSetHandler_QTreeView1_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QTreeViewSc a) (QTreeView x0 -> QModelIndex t1 -> QModelIndex t2 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTreeView1 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTreeView1_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTreeView_setHandler1 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTreeView x0) -> Ptr (TQModelIndex t1) -> Ptr (TQModelIndex t2) -> IO ()
    setHandlerWrapper x0 x1 x2
      = do x0obj <- qTreeViewFromPtr x0
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

instance QdataChanged_h (QTreeView ()) ((QModelIndex t1, QModelIndex t2)) where
 dataChanged_h x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QTreeView_dataChanged cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QTreeView_dataChanged" qtc_QTreeView_dataChanged :: Ptr (TQTreeView a) -> Ptr (TQModelIndex t1) -> Ptr (TQModelIndex t2) -> IO ()

instance QdataChanged_h (QTreeViewSc a) ((QModelIndex t1, QModelIndex t2)) where
 dataChanged_h x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QTreeView_dataChanged cobj_x0 cobj_x1 cobj_x2

instance QsetHandler (QTreeView ()) (QTreeView x0 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTreeView2 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTreeView2_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTreeView_setHandler2 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTreeView x0) -> IO ()
    setHandlerWrapper x0
      = do x0obj <- qTreeViewFromPtr x0
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

foreign import ccall "qtc_QTreeView_setHandler2" qtc_QTreeView_setHandler2 :: Ptr (TQTreeView a) -> CWString -> Ptr (Ptr (TQTreeView x0) -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QTreeView2 :: (Ptr (TQTreeView x0) -> IO ()) -> IO (FunPtr (Ptr (TQTreeView x0) -> IO ()))

foreign import ccall "wrapper" wrapSetHandler_QTreeView2_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QTreeViewSc a) (QTreeView x0 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTreeView2 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTreeView2_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTreeView_setHandler2 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTreeView x0) -> IO ()
    setHandlerWrapper x0
      = do x0obj <- qTreeViewFromPtr x0
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

instance QdoItemsLayout_h (QTreeView ()) (()) where
 doItemsLayout_h x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_doItemsLayout cobj_x0

foreign import ccall "qtc_QTreeView_doItemsLayout" qtc_QTreeView_doItemsLayout :: Ptr (TQTreeView a) -> IO ()

instance QdoItemsLayout_h (QTreeViewSc a) (()) where
 doItemsLayout_h x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_doItemsLayout cobj_x0

instance QsetHandler (QTreeView ()) (QTreeView x0 -> QEvent t1 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTreeView3 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTreeView3_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTreeView_setHandler3 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTreeView x0) -> Ptr (TQEvent t1) -> IO ()
    setHandlerWrapper x0 x1
      = do x0obj <- qTreeViewFromPtr x0
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

foreign import ccall "qtc_QTreeView_setHandler3" qtc_QTreeView_setHandler3 :: Ptr (TQTreeView a) -> CWString -> Ptr (Ptr (TQTreeView x0) -> Ptr (TQEvent t1) -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QTreeView3 :: (Ptr (TQTreeView x0) -> Ptr (TQEvent t1) -> IO ()) -> IO (FunPtr (Ptr (TQTreeView x0) -> Ptr (TQEvent t1) -> IO ()))

foreign import ccall "wrapper" wrapSetHandler_QTreeView3_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QTreeViewSc a) (QTreeView x0 -> QEvent t1 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTreeView3 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTreeView3_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTreeView_setHandler3 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTreeView x0) -> Ptr (TQEvent t1) -> IO ()
    setHandlerWrapper x0 x1
      = do x0obj <- qTreeViewFromPtr x0
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

instance QdragMoveEvent_h (QTreeView ()) ((QDragMoveEvent t1)) where
 dragMoveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_dragMoveEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeView_dragMoveEvent" qtc_QTreeView_dragMoveEvent :: Ptr (TQTreeView a) -> Ptr (TQDragMoveEvent t1) -> IO ()

instance QdragMoveEvent_h (QTreeViewSc a) ((QDragMoveEvent t1)) where
 dragMoveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_dragMoveEvent cobj_x0 cobj_x1

instance QsetHandler (QTreeView ()) (QTreeView x0 -> QPainter t1 -> QRect t2 -> QModelIndex t3 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTreeView4 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTreeView4_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTreeView_setHandler4 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTreeView x0) -> Ptr (TQPainter t1) -> Ptr (TQRect t2) -> Ptr (TQModelIndex t3) -> IO ()
    setHandlerWrapper x0 x1 x2 x3
      = do x0obj <- qTreeViewFromPtr x0
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

foreign import ccall "qtc_QTreeView_setHandler4" qtc_QTreeView_setHandler4 :: Ptr (TQTreeView a) -> CWString -> Ptr (Ptr (TQTreeView x0) -> Ptr (TQPainter t1) -> Ptr (TQRect t2) -> Ptr (TQModelIndex t3) -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QTreeView4 :: (Ptr (TQTreeView x0) -> Ptr (TQPainter t1) -> Ptr (TQRect t2) -> Ptr (TQModelIndex t3) -> IO ()) -> IO (FunPtr (Ptr (TQTreeView x0) -> Ptr (TQPainter t1) -> Ptr (TQRect t2) -> Ptr (TQModelIndex t3) -> IO ()))

foreign import ccall "wrapper" wrapSetHandler_QTreeView4_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QTreeViewSc a) (QTreeView x0 -> QPainter t1 -> QRect t2 -> QModelIndex t3 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTreeView4 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTreeView4_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTreeView_setHandler4 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTreeView x0) -> Ptr (TQPainter t1) -> Ptr (TQRect t2) -> Ptr (TQModelIndex t3) -> IO ()
    setHandlerWrapper x0 x1 x2 x3
      = do x0obj <- qTreeViewFromPtr x0
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

instance QqdrawBranches_h (QTreeView ()) ((QPainter t1, QRect t2, QModelIndex t3)) where
 qdrawBranches_h x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QTreeView_drawBranches cobj_x0 cobj_x1 cobj_x2 cobj_x3

foreign import ccall "qtc_QTreeView_drawBranches" qtc_QTreeView_drawBranches :: Ptr (TQTreeView a) -> Ptr (TQPainter t1) -> Ptr (TQRect t2) -> Ptr (TQModelIndex t3) -> IO ()

instance QqdrawBranches_h (QTreeViewSc a) ((QPainter t1, QRect t2, QModelIndex t3)) where
 qdrawBranches_h x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QTreeView_drawBranches cobj_x0 cobj_x1 cobj_x2 cobj_x3

instance QdrawBranches_h (QTreeView ()) ((QPainter t1, Rect, QModelIndex t3)) where
 drawBranches_h x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCRect x2 $ \crect_x2_x crect_x2_y  crect_x2_w crect_x2_h -> 
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QTreeView_drawBranches_qth cobj_x0 cobj_x1 crect_x2_x crect_x2_y crect_x2_w crect_x2_h  cobj_x3

foreign import ccall "qtc_QTreeView_drawBranches_qth" qtc_QTreeView_drawBranches_qth :: Ptr (TQTreeView a) -> Ptr (TQPainter t1) -> CInt -> CInt -> CInt -> CInt -> Ptr (TQModelIndex t3) -> IO ()

instance QdrawBranches_h (QTreeViewSc a) ((QPainter t1, Rect, QModelIndex t3)) where
 drawBranches_h x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCRect x2 $ \crect_x2_x crect_x2_y  crect_x2_w crect_x2_h -> 
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QTreeView_drawBranches_qth cobj_x0 cobj_x1 crect_x2_x crect_x2_y crect_x2_w crect_x2_h  cobj_x3

instance QsetHandler (QTreeView ()) (QTreeView x0 -> QPainter t1 -> QStyleOption t2 -> QModelIndex t3 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTreeView5 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTreeView5_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTreeView_setHandler5 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTreeView x0) -> Ptr (TQPainter t1) -> Ptr (TQStyleOption t2) -> Ptr (TQModelIndex t3) -> IO ()
    setHandlerWrapper x0 x1 x2 x3
      = do x0obj <- qTreeViewFromPtr x0
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

foreign import ccall "qtc_QTreeView_setHandler5" qtc_QTreeView_setHandler5 :: Ptr (TQTreeView a) -> CWString -> Ptr (Ptr (TQTreeView x0) -> Ptr (TQPainter t1) -> Ptr (TQStyleOption t2) -> Ptr (TQModelIndex t3) -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QTreeView5 :: (Ptr (TQTreeView x0) -> Ptr (TQPainter t1) -> Ptr (TQStyleOption t2) -> Ptr (TQModelIndex t3) -> IO ()) -> IO (FunPtr (Ptr (TQTreeView x0) -> Ptr (TQPainter t1) -> Ptr (TQStyleOption t2) -> Ptr (TQModelIndex t3) -> IO ()))

foreign import ccall "wrapper" wrapSetHandler_QTreeView5_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QTreeViewSc a) (QTreeView x0 -> QPainter t1 -> QStyleOption t2 -> QModelIndex t3 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTreeView5 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTreeView5_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTreeView_setHandler5 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTreeView x0) -> Ptr (TQPainter t1) -> Ptr (TQStyleOption t2) -> Ptr (TQModelIndex t3) -> IO ()
    setHandlerWrapper x0 x1 x2 x3
      = do x0obj <- qTreeViewFromPtr x0
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

instance QdrawRow_h (QTreeView ()) ((QPainter t1, QStyleOptionViewItem t2, QModelIndex t3)) where
 drawRow_h x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QTreeView_drawRow cobj_x0 cobj_x1 cobj_x2 cobj_x3

foreign import ccall "qtc_QTreeView_drawRow" qtc_QTreeView_drawRow :: Ptr (TQTreeView a) -> Ptr (TQPainter t1) -> Ptr (TQStyleOptionViewItem t2) -> Ptr (TQModelIndex t3) -> IO ()

instance QdrawRow_h (QTreeViewSc a) ((QPainter t1, QStyleOptionViewItem t2, QModelIndex t3)) where
 drawRow_h x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QTreeView_drawRow cobj_x0 cobj_x1 cobj_x2 cobj_x3

instance QsetHandler (QTreeView ()) (QTreeView x0 -> IO (Int)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTreeView6 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTreeView6_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTreeView_setHandler6 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTreeView x0) -> IO (CInt)
    setHandlerWrapper x0
      = do x0obj <- qTreeViewFromPtr x0
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

foreign import ccall "qtc_QTreeView_setHandler6" qtc_QTreeView_setHandler6 :: Ptr (TQTreeView a) -> CWString -> Ptr (Ptr (TQTreeView x0) -> IO (CInt)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QTreeView6 :: (Ptr (TQTreeView x0) -> IO (CInt)) -> IO (FunPtr (Ptr (TQTreeView x0) -> IO (CInt)))

foreign import ccall "wrapper" wrapSetHandler_QTreeView6_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QTreeViewSc a) (QTreeView x0 -> IO (Int)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTreeView6 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTreeView6_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTreeView_setHandler6 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTreeView x0) -> IO (CInt)
    setHandlerWrapper x0
      = do x0obj <- qTreeViewFromPtr x0
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

instance QhorizontalOffset_h (QTreeView ()) (()) where
 horizontalOffset_h x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_horizontalOffset cobj_x0

foreign import ccall "qtc_QTreeView_horizontalOffset" qtc_QTreeView_horizontalOffset :: Ptr (TQTreeView a) -> IO CInt

instance QhorizontalOffset_h (QTreeViewSc a) (()) where
 horizontalOffset_h x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_horizontalOffset cobj_x0

instance QsetHandler (QTreeView ()) (QTreeView x0 -> QPoint t1 -> IO (QModelIndex t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTreeView7 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTreeView7_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTreeView_setHandler7 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTreeView x0) -> Ptr (TQPoint t1) -> IO (Ptr (TQModelIndex t0))
    setHandlerWrapper x0 x1
      = do x0obj <- qTreeViewFromPtr x0
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

foreign import ccall "qtc_QTreeView_setHandler7" qtc_QTreeView_setHandler7 :: Ptr (TQTreeView a) -> CWString -> Ptr (Ptr (TQTreeView x0) -> Ptr (TQPoint t1) -> IO (Ptr (TQModelIndex t0))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QTreeView7 :: (Ptr (TQTreeView x0) -> Ptr (TQPoint t1) -> IO (Ptr (TQModelIndex t0))) -> IO (FunPtr (Ptr (TQTreeView x0) -> Ptr (TQPoint t1) -> IO (Ptr (TQModelIndex t0))))

foreign import ccall "wrapper" wrapSetHandler_QTreeView7_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QTreeViewSc a) (QTreeView x0 -> QPoint t1 -> IO (QModelIndex t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTreeView7 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTreeView7_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTreeView_setHandler7 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTreeView x0) -> Ptr (TQPoint t1) -> IO (Ptr (TQModelIndex t0))
    setHandlerWrapper x0 x1
      = do x0obj <- qTreeViewFromPtr x0
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

instance QindexAt_h (QTreeView ()) ((Point)) where
 indexAt_h x0 (x1)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QTreeView_indexAt_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

foreign import ccall "qtc_QTreeView_indexAt_qth" qtc_QTreeView_indexAt_qth :: Ptr (TQTreeView a) -> CInt -> CInt -> IO (Ptr (TQModelIndex ()))

instance QindexAt_h (QTreeViewSc a) ((Point)) where
 indexAt_h x0 (x1)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QTreeView_indexAt_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

instance QqindexAt_h (QTreeView ()) ((QPoint t1)) where
 qindexAt_h x0 (x1)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_indexAt cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeView_indexAt" qtc_QTreeView_indexAt :: Ptr (TQTreeView a) -> Ptr (TQPoint t1) -> IO (Ptr (TQModelIndex ()))

instance QqindexAt_h (QTreeViewSc a) ((QPoint t1)) where
 qindexAt_h x0 (x1)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_indexAt cobj_x0 cobj_x1

instance QkeyPressEvent_h (QTreeView ()) ((QKeyEvent t1)) where
 keyPressEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_keyPressEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeView_keyPressEvent" qtc_QTreeView_keyPressEvent :: Ptr (TQTreeView a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyPressEvent_h (QTreeViewSc a) ((QKeyEvent t1)) where
 keyPressEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_keyPressEvent cobj_x0 cobj_x1

instance QsetHandler (QTreeView ()) (QTreeView x0 -> String -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTreeView8 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTreeView8_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTreeView_setHandler8 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTreeView x0) -> Ptr (TQString ()) -> IO ()
    setHandlerWrapper x0 x1
      = do x0obj <- qTreeViewFromPtr x0
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

foreign import ccall "qtc_QTreeView_setHandler8" qtc_QTreeView_setHandler8 :: Ptr (TQTreeView a) -> CWString -> Ptr (Ptr (TQTreeView x0) -> Ptr (TQString ()) -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QTreeView8 :: (Ptr (TQTreeView x0) -> Ptr (TQString ()) -> IO ()) -> IO (FunPtr (Ptr (TQTreeView x0) -> Ptr (TQString ()) -> IO ()))

foreign import ccall "wrapper" wrapSetHandler_QTreeView8_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QTreeViewSc a) (QTreeView x0 -> String -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTreeView8 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTreeView8_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTreeView_setHandler8 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTreeView x0) -> Ptr (TQString ()) -> IO ()
    setHandlerWrapper x0 x1
      = do x0obj <- qTreeViewFromPtr x0
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

instance QkeyboardSearch_h (QTreeView ()) ((String)) where
 keyboardSearch_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTreeView_keyboardSearch cobj_x0 cstr_x1

foreign import ccall "qtc_QTreeView_keyboardSearch" qtc_QTreeView_keyboardSearch :: Ptr (TQTreeView a) -> CWString -> IO ()

instance QkeyboardSearch_h (QTreeViewSc a) ((String)) where
 keyboardSearch_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTreeView_keyboardSearch cobj_x0 cstr_x1

instance QmouseDoubleClickEvent_h (QTreeView ()) ((QMouseEvent t1)) where
 mouseDoubleClickEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_mouseDoubleClickEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeView_mouseDoubleClickEvent" qtc_QTreeView_mouseDoubleClickEvent :: Ptr (TQTreeView a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseDoubleClickEvent_h (QTreeViewSc a) ((QMouseEvent t1)) where
 mouseDoubleClickEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_mouseDoubleClickEvent cobj_x0 cobj_x1

instance QmouseMoveEvent_h (QTreeView ()) ((QMouseEvent t1)) where
 mouseMoveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_mouseMoveEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeView_mouseMoveEvent" qtc_QTreeView_mouseMoveEvent :: Ptr (TQTreeView a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseMoveEvent_h (QTreeViewSc a) ((QMouseEvent t1)) where
 mouseMoveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_mouseMoveEvent cobj_x0 cobj_x1

instance QmousePressEvent_h (QTreeView ()) ((QMouseEvent t1)) where
 mousePressEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_mousePressEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeView_mousePressEvent" qtc_QTreeView_mousePressEvent :: Ptr (TQTreeView a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmousePressEvent_h (QTreeViewSc a) ((QMouseEvent t1)) where
 mousePressEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_mousePressEvent cobj_x0 cobj_x1

instance QmouseReleaseEvent_h (QTreeView ()) ((QMouseEvent t1)) where
 mouseReleaseEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_mouseReleaseEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeView_mouseReleaseEvent" qtc_QTreeView_mouseReleaseEvent :: Ptr (TQTreeView a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseReleaseEvent_h (QTreeViewSc a) ((QMouseEvent t1)) where
 mouseReleaseEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_mouseReleaseEvent cobj_x0 cobj_x1

instance QsetHandler (QTreeView ()) (QTreeView x0 -> CursorAction -> KeyboardModifiers -> IO (QModelIndex t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTreeView9 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTreeView9_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTreeView_setHandler9 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTreeView x0) -> CLong -> CLong -> IO (Ptr (TQModelIndex t0))
    setHandlerWrapper x0 x1 x2
      = do x0obj <- qTreeViewFromPtr x0
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

foreign import ccall "qtc_QTreeView_setHandler9" qtc_QTreeView_setHandler9 :: Ptr (TQTreeView a) -> CWString -> Ptr (Ptr (TQTreeView x0) -> CLong -> CLong -> IO (Ptr (TQModelIndex t0))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QTreeView9 :: (Ptr (TQTreeView x0) -> CLong -> CLong -> IO (Ptr (TQModelIndex t0))) -> IO (FunPtr (Ptr (TQTreeView x0) -> CLong -> CLong -> IO (Ptr (TQModelIndex t0))))

foreign import ccall "wrapper" wrapSetHandler_QTreeView9_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QTreeViewSc a) (QTreeView x0 -> CursorAction -> KeyboardModifiers -> IO (QModelIndex t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTreeView9 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTreeView9_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTreeView_setHandler9 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTreeView x0) -> CLong -> CLong -> IO (Ptr (TQModelIndex t0))
    setHandlerWrapper x0 x1 x2
      = do x0obj <- qTreeViewFromPtr x0
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

instance QmoveCursor_h (QTreeView ()) ((CursorAction, KeyboardModifiers)) where
 moveCursor_h x0 (x1, x2)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_moveCursor cobj_x0 (toCLong $ qEnum_toInt x1) (toCLong $ qFlags_toInt x2)

foreign import ccall "qtc_QTreeView_moveCursor" qtc_QTreeView_moveCursor :: Ptr (TQTreeView a) -> CLong -> CLong -> IO (Ptr (TQModelIndex ()))

instance QmoveCursor_h (QTreeViewSc a) ((CursorAction, KeyboardModifiers)) where
 moveCursor_h x0 (x1, x2)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_moveCursor cobj_x0 (toCLong $ qEnum_toInt x1) (toCLong $ qFlags_toInt x2)

instance QpaintEvent_h (QTreeView ()) ((QPaintEvent t1)) where
 paintEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_paintEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeView_paintEvent" qtc_QTreeView_paintEvent :: Ptr (TQTreeView a) -> Ptr (TQPaintEvent t1) -> IO ()

instance QpaintEvent_h (QTreeViewSc a) ((QPaintEvent t1)) where
 paintEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_paintEvent cobj_x0 cobj_x1

instance Qreset_h (QTreeView ()) (()) (IO ()) where
 reset_h x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_reset cobj_x0

foreign import ccall "qtc_QTreeView_reset" qtc_QTreeView_reset :: Ptr (TQTreeView a) -> IO ()

instance Qreset_h (QTreeViewSc a) (()) (IO ()) where
 reset_h x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_reset cobj_x0

instance QsetHandler (QTreeView ()) (QTreeView x0 -> QModelIndex t1 -> Int -> Int -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTreeView10 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTreeView10_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTreeView_setHandler10 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTreeView x0) -> Ptr (TQModelIndex t1) -> CInt -> CInt -> IO ()
    setHandlerWrapper x0 x1 x2 x3
      = do x0obj <- qTreeViewFromPtr x0
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

foreign import ccall "qtc_QTreeView_setHandler10" qtc_QTreeView_setHandler10 :: Ptr (TQTreeView a) -> CWString -> Ptr (Ptr (TQTreeView x0) -> Ptr (TQModelIndex t1) -> CInt -> CInt -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QTreeView10 :: (Ptr (TQTreeView x0) -> Ptr (TQModelIndex t1) -> CInt -> CInt -> IO ()) -> IO (FunPtr (Ptr (TQTreeView x0) -> Ptr (TQModelIndex t1) -> CInt -> CInt -> IO ()))

foreign import ccall "wrapper" wrapSetHandler_QTreeView10_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QTreeViewSc a) (QTreeView x0 -> QModelIndex t1 -> Int -> Int -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTreeView10 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTreeView10_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTreeView_setHandler10 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTreeView x0) -> Ptr (TQModelIndex t1) -> CInt -> CInt -> IO ()
    setHandlerWrapper x0 x1 x2 x3
      = do x0obj <- qTreeViewFromPtr x0
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

instance QrowsAboutToBeRemoved_h (QTreeView ()) ((QModelIndex t1, Int, Int)) where
 rowsAboutToBeRemoved_h x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_rowsAboutToBeRemoved cobj_x0 cobj_x1 (toCInt x2) (toCInt x3)

foreign import ccall "qtc_QTreeView_rowsAboutToBeRemoved" qtc_QTreeView_rowsAboutToBeRemoved :: Ptr (TQTreeView a) -> Ptr (TQModelIndex t1) -> CInt -> CInt -> IO ()

instance QrowsAboutToBeRemoved_h (QTreeViewSc a) ((QModelIndex t1, Int, Int)) where
 rowsAboutToBeRemoved_h x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_rowsAboutToBeRemoved cobj_x0 cobj_x1 (toCInt x2) (toCInt x3)

instance QrowsInserted_h (QTreeView ()) ((QModelIndex t1, Int, Int)) where
 rowsInserted_h x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_rowsInserted cobj_x0 cobj_x1 (toCInt x2) (toCInt x3)

foreign import ccall "qtc_QTreeView_rowsInserted" qtc_QTreeView_rowsInserted :: Ptr (TQTreeView a) -> Ptr (TQModelIndex t1) -> CInt -> CInt -> IO ()

instance QrowsInserted_h (QTreeViewSc a) ((QModelIndex t1, Int, Int)) where
 rowsInserted_h x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_rowsInserted cobj_x0 cobj_x1 (toCInt x2) (toCInt x3)

instance QsetHandler (QTreeView ()) (QTreeView x0 -> Int -> Int -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTreeView11 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTreeView11_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTreeView_setHandler11 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTreeView x0) -> CInt -> CInt -> IO ()
    setHandlerWrapper x0 x1 x2
      = do x0obj <- qTreeViewFromPtr x0
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

foreign import ccall "qtc_QTreeView_setHandler11" qtc_QTreeView_setHandler11 :: Ptr (TQTreeView a) -> CWString -> Ptr (Ptr (TQTreeView x0) -> CInt -> CInt -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QTreeView11 :: (Ptr (TQTreeView x0) -> CInt -> CInt -> IO ()) -> IO (FunPtr (Ptr (TQTreeView x0) -> CInt -> CInt -> IO ()))

foreign import ccall "wrapper" wrapSetHandler_QTreeView11_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QTreeViewSc a) (QTreeView x0 -> Int -> Int -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTreeView11 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTreeView11_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTreeView_setHandler11 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTreeView x0) -> CInt -> CInt -> IO ()
    setHandlerWrapper x0 x1 x2
      = do x0obj <- qTreeViewFromPtr x0
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

instance QscrollContentsBy_h (QTreeView ()) ((Int, Int)) where
 scrollContentsBy_h x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_scrollContentsBy cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QTreeView_scrollContentsBy" qtc_QTreeView_scrollContentsBy :: Ptr (TQTreeView a) -> CInt -> CInt -> IO ()

instance QscrollContentsBy_h (QTreeViewSc a) ((Int, Int)) where
 scrollContentsBy_h x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_scrollContentsBy cobj_x0 (toCInt x1) (toCInt x2)

instance QsetHandler (QTreeView ()) (QTreeView x0 -> QModelIndex t1 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTreeView12 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTreeView12_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTreeView_setHandler12 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTreeView x0) -> Ptr (TQModelIndex t1) -> IO ()
    setHandlerWrapper x0 x1
      = do x0obj <- qTreeViewFromPtr x0
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

foreign import ccall "qtc_QTreeView_setHandler12" qtc_QTreeView_setHandler12 :: Ptr (TQTreeView a) -> CWString -> Ptr (Ptr (TQTreeView x0) -> Ptr (TQModelIndex t1) -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QTreeView12 :: (Ptr (TQTreeView x0) -> Ptr (TQModelIndex t1) -> IO ()) -> IO (FunPtr (Ptr (TQTreeView x0) -> Ptr (TQModelIndex t1) -> IO ()))

foreign import ccall "wrapper" wrapSetHandler_QTreeView12_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QTreeViewSc a) (QTreeView x0 -> QModelIndex t1 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTreeView12 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTreeView12_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTreeView_setHandler12 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTreeView x0) -> Ptr (TQModelIndex t1) -> IO ()
    setHandlerWrapper x0 x1
      = do x0obj <- qTreeViewFromPtr x0
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

instance QsetHandler (QTreeView ()) (QTreeView x0 -> QModelIndex t1 -> ScrollHint -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTreeView13 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTreeView13_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTreeView_setHandler13 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTreeView x0) -> Ptr (TQModelIndex t1) -> CLong -> IO ()
    setHandlerWrapper x0 x1 x2
      = do x0obj <- qTreeViewFromPtr x0
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

foreign import ccall "qtc_QTreeView_setHandler13" qtc_QTreeView_setHandler13 :: Ptr (TQTreeView a) -> CWString -> Ptr (Ptr (TQTreeView x0) -> Ptr (TQModelIndex t1) -> CLong -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QTreeView13 :: (Ptr (TQTreeView x0) -> Ptr (TQModelIndex t1) -> CLong -> IO ()) -> IO (FunPtr (Ptr (TQTreeView x0) -> Ptr (TQModelIndex t1) -> CLong -> IO ()))

foreign import ccall "wrapper" wrapSetHandler_QTreeView13_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QTreeViewSc a) (QTreeView x0 -> QModelIndex t1 -> ScrollHint -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTreeView13 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTreeView13_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTreeView_setHandler13 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTreeView x0) -> Ptr (TQModelIndex t1) -> CLong -> IO ()
    setHandlerWrapper x0 x1 x2
      = do x0obj <- qTreeViewFromPtr x0
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

instance QscrollTo_h (QTreeView ()) ((QModelIndex t1)) where
 scrollTo_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_scrollTo cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeView_scrollTo" qtc_QTreeView_scrollTo :: Ptr (TQTreeView a) -> Ptr (TQModelIndex t1) -> IO ()

instance QscrollTo_h (QTreeViewSc a) ((QModelIndex t1)) where
 scrollTo_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_scrollTo cobj_x0 cobj_x1

instance QscrollTo_h (QTreeView ()) ((QModelIndex t1, ScrollHint)) where
 scrollTo_h x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_scrollTo1 cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QTreeView_scrollTo1" qtc_QTreeView_scrollTo1 :: Ptr (TQTreeView a) -> Ptr (TQModelIndex t1) -> CLong -> IO ()

instance QscrollTo_h (QTreeViewSc a) ((QModelIndex t1, ScrollHint)) where
 scrollTo_h x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_scrollTo1 cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

instance QselectAll_h (QTreeView ()) (()) where
 selectAll_h x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_selectAll cobj_x0

foreign import ccall "qtc_QTreeView_selectAll" qtc_QTreeView_selectAll :: Ptr (TQTreeView a) -> IO ()

instance QselectAll_h (QTreeViewSc a) (()) where
 selectAll_h x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_selectAll cobj_x0

instance QsetHandler (QTreeView ()) (QTreeView x0 -> QObject t1 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTreeView14 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTreeView14_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTreeView_setHandler14 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTreeView x0) -> Ptr (TQObject t1) -> IO ()
    setHandlerWrapper x0 x1
      = do x0obj <- qTreeViewFromPtr x0
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

foreign import ccall "qtc_QTreeView_setHandler14" qtc_QTreeView_setHandler14 :: Ptr (TQTreeView a) -> CWString -> Ptr (Ptr (TQTreeView x0) -> Ptr (TQObject t1) -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QTreeView14 :: (Ptr (TQTreeView x0) -> Ptr (TQObject t1) -> IO ()) -> IO (FunPtr (Ptr (TQTreeView x0) -> Ptr (TQObject t1) -> IO ()))

foreign import ccall "wrapper" wrapSetHandler_QTreeView14_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QTreeViewSc a) (QTreeView x0 -> QObject t1 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTreeView14 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTreeView14_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTreeView_setHandler14 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTreeView x0) -> Ptr (TQObject t1) -> IO ()
    setHandlerWrapper x0 x1
      = do x0obj <- qTreeViewFromPtr x0
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

instance QsetModel_h (QTreeView ()) ((QAbstractItemModel t1)) where
 setModel_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_setModel cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeView_setModel" qtc_QTreeView_setModel :: Ptr (TQTreeView a) -> Ptr (TQAbstractItemModel t1) -> IO ()

instance QsetModel_h (QTreeViewSc a) ((QAbstractItemModel t1)) where
 setModel_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_setModel cobj_x0 cobj_x1

instance QsetRootIndex_h (QTreeView ()) ((QModelIndex t1)) where
 setRootIndex_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_setRootIndex cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeView_setRootIndex" qtc_QTreeView_setRootIndex :: Ptr (TQTreeView a) -> Ptr (TQModelIndex t1) -> IO ()

instance QsetRootIndex_h (QTreeViewSc a) ((QModelIndex t1)) where
 setRootIndex_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_setRootIndex cobj_x0 cobj_x1

instance QsetHandler (QTreeView ()) (QTreeView x0 -> QRect t1 -> SelectionFlags -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTreeView15 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTreeView15_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTreeView_setHandler15 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTreeView x0) -> Ptr (TQRect t1) -> CLong -> IO ()
    setHandlerWrapper x0 x1 x2
      = do x0obj <- qTreeViewFromPtr x0
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

foreign import ccall "qtc_QTreeView_setHandler15" qtc_QTreeView_setHandler15 :: Ptr (TQTreeView a) -> CWString -> Ptr (Ptr (TQTreeView x0) -> Ptr (TQRect t1) -> CLong -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QTreeView15 :: (Ptr (TQTreeView x0) -> Ptr (TQRect t1) -> CLong -> IO ()) -> IO (FunPtr (Ptr (TQTreeView x0) -> Ptr (TQRect t1) -> CLong -> IO ()))

foreign import ccall "wrapper" wrapSetHandler_QTreeView15_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QTreeViewSc a) (QTreeView x0 -> QRect t1 -> SelectionFlags -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTreeView15 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTreeView15_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTreeView_setHandler15 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTreeView x0) -> Ptr (TQRect t1) -> CLong -> IO ()
    setHandlerWrapper x0 x1 x2
      = do x0obj <- qTreeViewFromPtr x0
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

instance QqsetSelection_h (QTreeView ()) ((QRect t1, SelectionFlags)) where
 qsetSelection_h x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_setSelection cobj_x0 cobj_x1 (toCLong $ qFlags_toInt x2)

foreign import ccall "qtc_QTreeView_setSelection" qtc_QTreeView_setSelection :: Ptr (TQTreeView a) -> Ptr (TQRect t1) -> CLong -> IO ()

instance QqsetSelection_h (QTreeViewSc a) ((QRect t1, SelectionFlags)) where
 qsetSelection_h x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_setSelection cobj_x0 cobj_x1 (toCLong $ qFlags_toInt x2)

instance QsetSelection_h (QTreeView ()) ((Rect, SelectionFlags)) where
 setSelection_h x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QTreeView_setSelection_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h  (toCLong $ qFlags_toInt x2)

foreign import ccall "qtc_QTreeView_setSelection_qth" qtc_QTreeView_setSelection_qth :: Ptr (TQTreeView a) -> CInt -> CInt -> CInt -> CInt -> CLong -> IO ()

instance QsetSelection_h (QTreeViewSc a) ((Rect, SelectionFlags)) where
 setSelection_h x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QTreeView_setSelection_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h  (toCLong $ qFlags_toInt x2)

instance QsetSelectionModel_h (QTreeView ()) ((QItemSelectionModel t1)) where
 setSelectionModel_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_setSelectionModel cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeView_setSelectionModel" qtc_QTreeView_setSelectionModel :: Ptr (TQTreeView a) -> Ptr (TQItemSelectionModel t1) -> IO ()

instance QsetSelectionModel_h (QTreeViewSc a) ((QItemSelectionModel t1)) where
 setSelectionModel_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_setSelectionModel cobj_x0 cobj_x1

instance QverticalOffset_h (QTreeView ()) (()) where
 verticalOffset_h x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_verticalOffset cobj_x0

foreign import ccall "qtc_QTreeView_verticalOffset" qtc_QTreeView_verticalOffset :: Ptr (TQTreeView a) -> IO CInt

instance QverticalOffset_h (QTreeViewSc a) (()) where
 verticalOffset_h x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_verticalOffset cobj_x0

instance QsetHandler (QTreeView ()) (QTreeView x0 -> QEvent t1 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTreeView16 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTreeView16_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTreeView_setHandler16 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTreeView x0) -> Ptr (TQEvent t1) -> IO (CBool)
    setHandlerWrapper x0 x1
      = do x0obj <- qTreeViewFromPtr x0
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

foreign import ccall "qtc_QTreeView_setHandler16" qtc_QTreeView_setHandler16 :: Ptr (TQTreeView a) -> CWString -> Ptr (Ptr (TQTreeView x0) -> Ptr (TQEvent t1) -> IO (CBool)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QTreeView16 :: (Ptr (TQTreeView x0) -> Ptr (TQEvent t1) -> IO (CBool)) -> IO (FunPtr (Ptr (TQTreeView x0) -> Ptr (TQEvent t1) -> IO (CBool)))

foreign import ccall "wrapper" wrapSetHandler_QTreeView16_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QTreeViewSc a) (QTreeView x0 -> QEvent t1 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTreeView16 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTreeView16_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTreeView_setHandler16 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTreeView x0) -> Ptr (TQEvent t1) -> IO (CBool)
    setHandlerWrapper x0 x1
      = do x0obj <- qTreeViewFromPtr x0
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

instance QviewportEvent_h (QTreeView ()) ((QEvent t1)) where
 viewportEvent_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_viewportEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeView_viewportEvent" qtc_QTreeView_viewportEvent :: Ptr (TQTreeView a) -> Ptr (TQEvent t1) -> IO CBool

instance QviewportEvent_h (QTreeViewSc a) ((QEvent t1)) where
 viewportEvent_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_viewportEvent cobj_x0 cobj_x1

instance QsetHandler (QTreeView ()) (QTreeView x0 -> QModelIndex t1 -> IO (QRect t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTreeView17 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTreeView17_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTreeView_setHandler17 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTreeView x0) -> Ptr (TQModelIndex t1) -> IO (Ptr (TQRect t0))
    setHandlerWrapper x0 x1
      = do x0obj <- qTreeViewFromPtr x0
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

foreign import ccall "qtc_QTreeView_setHandler17" qtc_QTreeView_setHandler17 :: Ptr (TQTreeView a) -> CWString -> Ptr (Ptr (TQTreeView x0) -> Ptr (TQModelIndex t1) -> IO (Ptr (TQRect t0))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QTreeView17 :: (Ptr (TQTreeView x0) -> Ptr (TQModelIndex t1) -> IO (Ptr (TQRect t0))) -> IO (FunPtr (Ptr (TQTreeView x0) -> Ptr (TQModelIndex t1) -> IO (Ptr (TQRect t0))))

foreign import ccall "wrapper" wrapSetHandler_QTreeView17_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QTreeViewSc a) (QTreeView x0 -> QModelIndex t1 -> IO (QRect t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTreeView17 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTreeView17_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTreeView_setHandler17 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTreeView x0) -> Ptr (TQModelIndex t1) -> IO (Ptr (TQRect t0))
    setHandlerWrapper x0 x1
      = do x0obj <- qTreeViewFromPtr x0
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

instance QqvisualRect_h (QTreeView ()) ((QModelIndex t1)) where
 qvisualRect_h x0 (x1)
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_visualRect cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeView_visualRect" qtc_QTreeView_visualRect :: Ptr (TQTreeView a) -> Ptr (TQModelIndex t1) -> IO (Ptr (TQRect ()))

instance QqvisualRect_h (QTreeViewSc a) ((QModelIndex t1)) where
 qvisualRect_h x0 (x1)
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_visualRect cobj_x0 cobj_x1

instance QvisualRect_h (QTreeView ()) ((QModelIndex t1)) where
 visualRect_h x0 (x1)
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_visualRect_qth cobj_x0 cobj_x1 crect_ret_x crect_ret_y crect_ret_w crect_ret_h

foreign import ccall "qtc_QTreeView_visualRect_qth" qtc_QTreeView_visualRect_qth :: Ptr (TQTreeView a) -> Ptr (TQModelIndex t1) -> Ptr CInt -> Ptr CInt -> Ptr CInt -> Ptr CInt -> IO ()

instance QvisualRect_h (QTreeViewSc a) ((QModelIndex t1)) where
 visualRect_h x0 (x1)
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_visualRect_qth cobj_x0 cobj_x1 crect_ret_x crect_ret_y crect_ret_w crect_ret_h

instance QsetHandler (QTreeView ()) (QTreeView x0 -> QItemSelection t1 -> IO (QRegion t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTreeView18 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTreeView18_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTreeView_setHandler18 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTreeView x0) -> Ptr (TQItemSelection t1) -> IO (Ptr (TQRegion t0))
    setHandlerWrapper x0 x1
      = do x0obj <- qTreeViewFromPtr x0
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

foreign import ccall "qtc_QTreeView_setHandler18" qtc_QTreeView_setHandler18 :: Ptr (TQTreeView a) -> CWString -> Ptr (Ptr (TQTreeView x0) -> Ptr (TQItemSelection t1) -> IO (Ptr (TQRegion t0))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QTreeView18 :: (Ptr (TQTreeView x0) -> Ptr (TQItemSelection t1) -> IO (Ptr (TQRegion t0))) -> IO (FunPtr (Ptr (TQTreeView x0) -> Ptr (TQItemSelection t1) -> IO (Ptr (TQRegion t0))))

foreign import ccall "wrapper" wrapSetHandler_QTreeView18_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QTreeViewSc a) (QTreeView x0 -> QItemSelection t1 -> IO (QRegion t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTreeView18 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTreeView18_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTreeView_setHandler18 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTreeView x0) -> Ptr (TQItemSelection t1) -> IO (Ptr (TQRegion t0))
    setHandlerWrapper x0 x1
      = do x0obj <- qTreeViewFromPtr x0
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

instance QvisualRegionForSelection_h (QTreeView ()) ((QItemSelection t1)) where
 visualRegionForSelection_h x0 (x1)
  = withQRegionResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_visualRegionForSelection cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeView_visualRegionForSelection" qtc_QTreeView_visualRegionForSelection :: Ptr (TQTreeView a) -> Ptr (TQItemSelection t1) -> IO (Ptr (TQRegion ()))

instance QvisualRegionForSelection_h (QTreeViewSc a) ((QItemSelection t1)) where
 visualRegionForSelection_h x0 (x1)
  = withQRegionResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_visualRegionForSelection cobj_x0 cobj_x1

instance QdragEnterEvent_h (QTreeView ()) ((QDragEnterEvent t1)) where
 dragEnterEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_dragEnterEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeView_dragEnterEvent" qtc_QTreeView_dragEnterEvent :: Ptr (TQTreeView a) -> Ptr (TQDragEnterEvent t1) -> IO ()

instance QdragEnterEvent_h (QTreeViewSc a) ((QDragEnterEvent t1)) where
 dragEnterEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_dragEnterEvent cobj_x0 cobj_x1

instance QdragLeaveEvent_h (QTreeView ()) ((QDragLeaveEvent t1)) where
 dragLeaveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_dragLeaveEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeView_dragLeaveEvent" qtc_QTreeView_dragLeaveEvent :: Ptr (TQTreeView a) -> Ptr (TQDragLeaveEvent t1) -> IO ()

instance QdragLeaveEvent_h (QTreeViewSc a) ((QDragLeaveEvent t1)) where
 dragLeaveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_dragLeaveEvent cobj_x0 cobj_x1

instance QdropEvent_h (QTreeView ()) ((QDropEvent t1)) where
 dropEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_dropEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeView_dropEvent" qtc_QTreeView_dropEvent :: Ptr (TQTreeView a) -> Ptr (TQDropEvent t1) -> IO ()

instance QdropEvent_h (QTreeViewSc a) ((QDropEvent t1)) where
 dropEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_dropEvent cobj_x0 cobj_x1

instance Qevent_h (QTreeView ()) ((QEvent t1)) where
 event_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_event cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeView_event" qtc_QTreeView_event :: Ptr (TQTreeView a) -> Ptr (TQEvent t1) -> IO CBool

instance Qevent_h (QTreeViewSc a) ((QEvent t1)) where
 event_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_event cobj_x0 cobj_x1

instance QfocusInEvent_h (QTreeView ()) ((QFocusEvent t1)) where
 focusInEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_focusInEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeView_focusInEvent" qtc_QTreeView_focusInEvent :: Ptr (TQTreeView a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusInEvent_h (QTreeViewSc a) ((QFocusEvent t1)) where
 focusInEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_focusInEvent cobj_x0 cobj_x1

instance QfocusOutEvent_h (QTreeView ()) ((QFocusEvent t1)) where
 focusOutEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_focusOutEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeView_focusOutEvent" qtc_QTreeView_focusOutEvent :: Ptr (TQTreeView a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusOutEvent_h (QTreeViewSc a) ((QFocusEvent t1)) where
 focusOutEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_focusOutEvent cobj_x0 cobj_x1

instance QsetHandler (QTreeView ()) (QTreeView x0 -> InputMethodQuery -> IO (QVariant t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTreeView19 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTreeView19_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTreeView_setHandler19 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTreeView x0) -> CLong -> IO (Ptr (TQVariant t0))
    setHandlerWrapper x0 x1
      = do x0obj <- qTreeViewFromPtr x0
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

foreign import ccall "qtc_QTreeView_setHandler19" qtc_QTreeView_setHandler19 :: Ptr (TQTreeView a) -> CWString -> Ptr (Ptr (TQTreeView x0) -> CLong -> IO (Ptr (TQVariant t0))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QTreeView19 :: (Ptr (TQTreeView x0) -> CLong -> IO (Ptr (TQVariant t0))) -> IO (FunPtr (Ptr (TQTreeView x0) -> CLong -> IO (Ptr (TQVariant t0))))

foreign import ccall "wrapper" wrapSetHandler_QTreeView19_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QTreeViewSc a) (QTreeView x0 -> InputMethodQuery -> IO (QVariant t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTreeView19 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTreeView19_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTreeView_setHandler19 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTreeView x0) -> CLong -> IO (Ptr (TQVariant t0))
    setHandlerWrapper x0 x1
      = do x0obj <- qTreeViewFromPtr x0
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

instance QinputMethodQuery_h (QTreeView ()) ((InputMethodQuery)) where
 inputMethodQuery_h x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_inputMethodQuery cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QTreeView_inputMethodQuery" qtc_QTreeView_inputMethodQuery :: Ptr (TQTreeView a) -> CLong -> IO (Ptr (TQVariant ()))

instance QinputMethodQuery_h (QTreeViewSc a) ((InputMethodQuery)) where
 inputMethodQuery_h x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_inputMethodQuery cobj_x0 (toCLong $ qEnum_toInt x1)

instance QresizeEvent_h (QTreeView ()) ((QResizeEvent t1)) where
 resizeEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_resizeEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeView_resizeEvent" qtc_QTreeView_resizeEvent :: Ptr (TQTreeView a) -> Ptr (TQResizeEvent t1) -> IO ()

instance QresizeEvent_h (QTreeViewSc a) ((QResizeEvent t1)) where
 resizeEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_resizeEvent cobj_x0 cobj_x1

instance QsetHandler (QTreeView ()) (QTreeView x0 -> Int -> IO (Int)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTreeView20 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTreeView20_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTreeView_setHandler20 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTreeView x0) -> CInt -> IO (CInt)
    setHandlerWrapper x0 x1
      = do x0obj <- qTreeViewFromPtr x0
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

foreign import ccall "qtc_QTreeView_setHandler20" qtc_QTreeView_setHandler20 :: Ptr (TQTreeView a) -> CWString -> Ptr (Ptr (TQTreeView x0) -> CInt -> IO (CInt)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QTreeView20 :: (Ptr (TQTreeView x0) -> CInt -> IO (CInt)) -> IO (FunPtr (Ptr (TQTreeView x0) -> CInt -> IO (CInt)))

foreign import ccall "wrapper" wrapSetHandler_QTreeView20_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QTreeViewSc a) (QTreeView x0 -> Int -> IO (Int)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTreeView20 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTreeView20_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTreeView_setHandler20 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTreeView x0) -> CInt -> IO (CInt)
    setHandlerWrapper x0 x1
      = do x0obj <- qTreeViewFromPtr x0
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

instance QsizeHintForRow_h (QTreeView ()) ((Int)) where
 sizeHintForRow_h x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_sizeHintForRow cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTreeView_sizeHintForRow" qtc_QTreeView_sizeHintForRow :: Ptr (TQTreeView a) -> CInt -> IO CInt

instance QsizeHintForRow_h (QTreeViewSc a) ((Int)) where
 sizeHintForRow_h x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_sizeHintForRow cobj_x0 (toCInt x1)

instance QcontextMenuEvent_h (QTreeView ()) ((QContextMenuEvent t1)) where
 contextMenuEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_contextMenuEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeView_contextMenuEvent" qtc_QTreeView_contextMenuEvent :: Ptr (TQTreeView a) -> Ptr (TQContextMenuEvent t1) -> IO ()

instance QcontextMenuEvent_h (QTreeViewSc a) ((QContextMenuEvent t1)) where
 contextMenuEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_contextMenuEvent cobj_x0 cobj_x1

instance QsetHandler (QTreeView ()) (QTreeView x0 -> IO (QSize t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTreeView21 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTreeView21_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTreeView_setHandler21 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTreeView x0) -> IO (Ptr (TQSize t0))
    setHandlerWrapper x0
      = do x0obj <- qTreeViewFromPtr x0
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

foreign import ccall "qtc_QTreeView_setHandler21" qtc_QTreeView_setHandler21 :: Ptr (TQTreeView a) -> CWString -> Ptr (Ptr (TQTreeView x0) -> IO (Ptr (TQSize t0))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QTreeView21 :: (Ptr (TQTreeView x0) -> IO (Ptr (TQSize t0))) -> IO (FunPtr (Ptr (TQTreeView x0) -> IO (Ptr (TQSize t0))))

foreign import ccall "wrapper" wrapSetHandler_QTreeView21_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QTreeViewSc a) (QTreeView x0 -> IO (QSize t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTreeView21 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTreeView21_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTreeView_setHandler21 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTreeView x0) -> IO (Ptr (TQSize t0))
    setHandlerWrapper x0
      = do x0obj <- qTreeViewFromPtr x0
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

instance QqminimumSizeHint_h (QTreeView ()) (()) where
 qminimumSizeHint_h x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_minimumSizeHint cobj_x0

foreign import ccall "qtc_QTreeView_minimumSizeHint" qtc_QTreeView_minimumSizeHint :: Ptr (TQTreeView a) -> IO (Ptr (TQSize ()))

instance QqminimumSizeHint_h (QTreeViewSc a) (()) where
 qminimumSizeHint_h x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_minimumSizeHint cobj_x0

instance QminimumSizeHint_h (QTreeView ()) (()) where
 minimumSizeHint_h x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_minimumSizeHint_qth cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QTreeView_minimumSizeHint_qth" qtc_QTreeView_minimumSizeHint_qth :: Ptr (TQTreeView a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QminimumSizeHint_h (QTreeViewSc a) (()) where
 minimumSizeHint_h x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_minimumSizeHint_qth cobj_x0 csize_ret_w csize_ret_h

instance QqsizeHint_h (QTreeView ()) (()) where
 qsizeHint_h x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_sizeHint cobj_x0

foreign import ccall "qtc_QTreeView_sizeHint" qtc_QTreeView_sizeHint :: Ptr (TQTreeView a) -> IO (Ptr (TQSize ()))

instance QqsizeHint_h (QTreeViewSc a) (()) where
 qsizeHint_h x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_sizeHint cobj_x0

instance QsizeHint_h (QTreeView ()) (()) where
 sizeHint_h x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_sizeHint_qth cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QTreeView_sizeHint_qth" qtc_QTreeView_sizeHint_qth :: Ptr (TQTreeView a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QsizeHint_h (QTreeViewSc a) (()) where
 sizeHint_h x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_sizeHint_qth cobj_x0 csize_ret_w csize_ret_h

instance QwheelEvent_h (QTreeView ()) ((QWheelEvent t1)) where
 wheelEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_wheelEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeView_wheelEvent" qtc_QTreeView_wheelEvent :: Ptr (TQTreeView a) -> Ptr (TQWheelEvent t1) -> IO ()

instance QwheelEvent_h (QTreeViewSc a) ((QWheelEvent t1)) where
 wheelEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_wheelEvent cobj_x0 cobj_x1

instance QchangeEvent_h (QTreeView ()) ((QEvent t1)) where
 changeEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_changeEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeView_changeEvent" qtc_QTreeView_changeEvent :: Ptr (TQTreeView a) -> Ptr (TQEvent t1) -> IO ()

instance QchangeEvent_h (QTreeViewSc a) ((QEvent t1)) where
 changeEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_changeEvent cobj_x0 cobj_x1

instance QactionEvent_h (QTreeView ()) ((QActionEvent t1)) where
 actionEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_actionEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeView_actionEvent" qtc_QTreeView_actionEvent :: Ptr (TQTreeView a) -> Ptr (TQActionEvent t1) -> IO ()

instance QactionEvent_h (QTreeViewSc a) ((QActionEvent t1)) where
 actionEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_actionEvent cobj_x0 cobj_x1

instance QcloseEvent_h (QTreeView ()) ((QCloseEvent t1)) where
 closeEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_closeEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeView_closeEvent" qtc_QTreeView_closeEvent :: Ptr (TQTreeView a) -> Ptr (TQCloseEvent t1) -> IO ()

instance QcloseEvent_h (QTreeViewSc a) ((QCloseEvent t1)) where
 closeEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_closeEvent cobj_x0 cobj_x1

instance QdevType_h (QTreeView ()) (()) where
 devType_h x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_devType cobj_x0

foreign import ccall "qtc_QTreeView_devType" qtc_QTreeView_devType :: Ptr (TQTreeView a) -> IO CInt

instance QdevType_h (QTreeViewSc a) (()) where
 devType_h x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_devType cobj_x0

instance QenterEvent_h (QTreeView ()) ((QEvent t1)) where
 enterEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_enterEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeView_enterEvent" qtc_QTreeView_enterEvent :: Ptr (TQTreeView a) -> Ptr (TQEvent t1) -> IO ()

instance QenterEvent_h (QTreeViewSc a) ((QEvent t1)) where
 enterEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_enterEvent cobj_x0 cobj_x1

instance QheightForWidth_h (QTreeView ()) ((Int)) where
 heightForWidth_h x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_heightForWidth cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTreeView_heightForWidth" qtc_QTreeView_heightForWidth :: Ptr (TQTreeView a) -> CInt -> IO CInt

instance QheightForWidth_h (QTreeViewSc a) ((Int)) where
 heightForWidth_h x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_heightForWidth cobj_x0 (toCInt x1)

instance QhideEvent_h (QTreeView ()) ((QHideEvent t1)) where
 hideEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_hideEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeView_hideEvent" qtc_QTreeView_hideEvent :: Ptr (TQTreeView a) -> Ptr (TQHideEvent t1) -> IO ()

instance QhideEvent_h (QTreeViewSc a) ((QHideEvent t1)) where
 hideEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_hideEvent cobj_x0 cobj_x1

instance QkeyReleaseEvent_h (QTreeView ()) ((QKeyEvent t1)) where
 keyReleaseEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_keyReleaseEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeView_keyReleaseEvent" qtc_QTreeView_keyReleaseEvent :: Ptr (TQTreeView a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyReleaseEvent_h (QTreeViewSc a) ((QKeyEvent t1)) where
 keyReleaseEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_keyReleaseEvent cobj_x0 cobj_x1

instance QleaveEvent_h (QTreeView ()) ((QEvent t1)) where
 leaveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_leaveEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeView_leaveEvent" qtc_QTreeView_leaveEvent :: Ptr (TQTreeView a) -> Ptr (TQEvent t1) -> IO ()

instance QleaveEvent_h (QTreeViewSc a) ((QEvent t1)) where
 leaveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_leaveEvent cobj_x0 cobj_x1

instance QmoveEvent_h (QTreeView ()) ((QMoveEvent t1)) where
 moveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_moveEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeView_moveEvent" qtc_QTreeView_moveEvent :: Ptr (TQTreeView a) -> Ptr (TQMoveEvent t1) -> IO ()

instance QmoveEvent_h (QTreeViewSc a) ((QMoveEvent t1)) where
 moveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_moveEvent cobj_x0 cobj_x1

instance QsetHandler (QTreeView ()) (QTreeView x0 -> IO (QPaintEngine t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTreeView22 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTreeView22_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTreeView_setHandler22 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTreeView x0) -> IO (Ptr (TQPaintEngine t0))
    setHandlerWrapper x0
      = do x0obj <- qTreeViewFromPtr x0
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

foreign import ccall "qtc_QTreeView_setHandler22" qtc_QTreeView_setHandler22 :: Ptr (TQTreeView a) -> CWString -> Ptr (Ptr (TQTreeView x0) -> IO (Ptr (TQPaintEngine t0))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QTreeView22 :: (Ptr (TQTreeView x0) -> IO (Ptr (TQPaintEngine t0))) -> IO (FunPtr (Ptr (TQTreeView x0) -> IO (Ptr (TQPaintEngine t0))))

foreign import ccall "wrapper" wrapSetHandler_QTreeView22_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QTreeViewSc a) (QTreeView x0 -> IO (QPaintEngine t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTreeView22 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTreeView22_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTreeView_setHandler22 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTreeView x0) -> IO (Ptr (TQPaintEngine t0))
    setHandlerWrapper x0
      = do x0obj <- qTreeViewFromPtr x0
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

instance QpaintEngine_h (QTreeView ()) (()) where
 paintEngine_h x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_paintEngine cobj_x0

foreign import ccall "qtc_QTreeView_paintEngine" qtc_QTreeView_paintEngine :: Ptr (TQTreeView a) -> IO (Ptr (TQPaintEngine ()))

instance QpaintEngine_h (QTreeViewSc a) (()) where
 paintEngine_h x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_paintEngine cobj_x0

instance QsetHandler (QTreeView ()) (QTreeView x0 -> Bool -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTreeView23 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTreeView23_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTreeView_setHandler23 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTreeView x0) -> CBool -> IO ()
    setHandlerWrapper x0 x1
      = do x0obj <- qTreeViewFromPtr x0
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

foreign import ccall "qtc_QTreeView_setHandler23" qtc_QTreeView_setHandler23 :: Ptr (TQTreeView a) -> CWString -> Ptr (Ptr (TQTreeView x0) -> CBool -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QTreeView23 :: (Ptr (TQTreeView x0) -> CBool -> IO ()) -> IO (FunPtr (Ptr (TQTreeView x0) -> CBool -> IO ()))

foreign import ccall "wrapper" wrapSetHandler_QTreeView23_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QTreeViewSc a) (QTreeView x0 -> Bool -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTreeView23 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTreeView23_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTreeView_setHandler23 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTreeView x0) -> CBool -> IO ()
    setHandlerWrapper x0 x1
      = do x0obj <- qTreeViewFromPtr x0
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

instance QsetVisible_h (QTreeView ()) ((Bool)) where
 setVisible_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_setVisible cobj_x0 (toCBool x1)

foreign import ccall "qtc_QTreeView_setVisible" qtc_QTreeView_setVisible :: Ptr (TQTreeView a) -> CBool -> IO ()

instance QsetVisible_h (QTreeViewSc a) ((Bool)) where
 setVisible_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_setVisible cobj_x0 (toCBool x1)

instance QshowEvent_h (QTreeView ()) ((QShowEvent t1)) where
 showEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_showEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeView_showEvent" qtc_QTreeView_showEvent :: Ptr (TQTreeView a) -> Ptr (TQShowEvent t1) -> IO ()

instance QshowEvent_h (QTreeViewSc a) ((QShowEvent t1)) where
 showEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_showEvent cobj_x0 cobj_x1

instance QtabletEvent_h (QTreeView ()) ((QTabletEvent t1)) where
 tabletEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_tabletEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeView_tabletEvent" qtc_QTreeView_tabletEvent :: Ptr (TQTreeView a) -> Ptr (TQTabletEvent t1) -> IO ()

instance QtabletEvent_h (QTreeViewSc a) ((QTabletEvent t1)) where
 tabletEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_tabletEvent cobj_x0 cobj_x1

instance QsetHandler (QTreeView ()) (QTreeView x0 -> QObject t1 -> QEvent t2 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTreeView24 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTreeView24_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTreeView_setHandler24 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTreeView x0) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO (CBool)
    setHandlerWrapper x0 x1 x2
      = do x0obj <- qTreeViewFromPtr x0
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

foreign import ccall "qtc_QTreeView_setHandler24" qtc_QTreeView_setHandler24 :: Ptr (TQTreeView a) -> CWString -> Ptr (Ptr (TQTreeView x0) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO (CBool)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QTreeView24 :: (Ptr (TQTreeView x0) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO (CBool)) -> IO (FunPtr (Ptr (TQTreeView x0) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO (CBool)))

foreign import ccall "wrapper" wrapSetHandler_QTreeView24_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QTreeViewSc a) (QTreeView x0 -> QObject t1 -> QEvent t2 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTreeView24 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTreeView24_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTreeView_setHandler24 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTreeView x0) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO (CBool)
    setHandlerWrapper x0 x1 x2
      = do x0obj <- qTreeViewFromPtr x0
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

instance QeventFilter_h (QTreeView ()) ((QObject t1, QEvent t2)) where
 eventFilter_h x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QTreeView_eventFilter cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QTreeView_eventFilter" qtc_QTreeView_eventFilter :: Ptr (TQTreeView a) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO CBool

instance QeventFilter_h (QTreeViewSc a) ((QObject t1, QEvent t2)) where
 eventFilter_h x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QTreeView_eventFilter cobj_x0 cobj_x1 cobj_x2

