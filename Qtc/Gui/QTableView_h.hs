{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QTableView_h.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:15
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QTableView_h where

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

instance QunSetUserMethod (QTableView ()) where
 unSetUserMethod qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QTableView_unSetUserMethod cobj_qobj (toCInt 0) (toCInt evid)

foreign import ccall "qtc_QTableView_unSetUserMethod" qtc_QTableView_unSetUserMethod :: Ptr (TQTableView a) -> CInt -> CInt -> IO (CBool)

instance QunSetUserMethod (QTableViewSc a) where
 unSetUserMethod qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QTableView_unSetUserMethod cobj_qobj (toCInt 0) (toCInt evid)

instance QunSetUserMethodVariant (QTableView ()) where
 unSetUserMethodVariant qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QTableView_unSetUserMethod cobj_qobj (toCInt 1) (toCInt evid)

instance QunSetUserMethodVariant (QTableViewSc a) where
 unSetUserMethodVariant qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QTableView_unSetUserMethod cobj_qobj (toCInt 1) (toCInt evid)

instance QunSetUserMethodVariantList (QTableView ()) where
 unSetUserMethodVariantList qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QTableView_unSetUserMethod cobj_qobj (toCInt 2) (toCInt evid)

instance QunSetUserMethodVariantList (QTableViewSc a) where
 unSetUserMethodVariantList qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QTableView_unSetUserMethod cobj_qobj (toCInt 2) (toCInt evid)

instance QsetUserMethod (QTableView ()) (QTableView x0 -> IO ()) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethod_QTableView setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethod_QTableView_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QTableView_setUserMethod cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQTableView x0) -> IO ()
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

foreign import ccall "qtc_QTableView_setUserMethod" qtc_QTableView_setUserMethod :: Ptr (TQTableView a) -> CInt -> Ptr (Ptr (TQTableView x0) -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetUserMethod_QTableView :: (Ptr (TQTableView x0) -> IO ()) -> IO (FunPtr (Ptr (TQTableView x0) -> IO ()))

foreign import ccall "wrapper" wrapSetUserMethod_QTableView_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetUserMethod (QTableViewSc a) (QTableView x0 -> IO ()) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethod_QTableView setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethod_QTableView_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QTableView_setUserMethod cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQTableView x0) -> IO ()
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

instance QsetUserMethod (QTableView ()) (QTableView x0 -> QVariant () -> IO (QVariant ())) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethodVariant_QTableView setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethodVariant_QTableView_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QTableView_setUserMethodVariant cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQTableView x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))
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

foreign import ccall "qtc_QTableView_setUserMethodVariant" qtc_QTableView_setUserMethodVariant :: Ptr (TQTableView a) -> CInt -> Ptr (Ptr (TQTableView x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetUserMethodVariant_QTableView :: (Ptr (TQTableView x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))) -> IO (FunPtr (Ptr (TQTableView x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))))

foreign import ccall "wrapper" wrapSetUserMethodVariant_QTableView_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetUserMethod (QTableViewSc a) (QTableView x0 -> QVariant () -> IO (QVariant ())) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethodVariant_QTableView setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethodVariant_QTableView_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QTableView_setUserMethodVariant cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQTableView x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))
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

instance QunSetHandler (QTableView ()) where 
 unSetHandler qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withCWString evid $ \cstr_evid ->
    qtc_QTableView_unSetHandler cobj_qobj cstr_evid

foreign import ccall "qtc_QTableView_unSetHandler" qtc_QTableView_unSetHandler :: Ptr (TQTableView a) -> CWString -> IO (CBool)

instance QunSetHandler (QTableViewSc a) where 
 unSetHandler qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withCWString evid $ \cstr_evid ->
    qtc_QTableView_unSetHandler cobj_qobj cstr_evid

instance QsetHandler (QTableView ()) (QTableView x0 -> QPoint t1 -> IO (QModelIndex t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTableView1 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTableView1_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTableView_setHandler1 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTableView x0) -> Ptr (TQPoint t1) -> IO (Ptr (TQModelIndex t0))
    setHandlerWrapper x0 x1
      = do x0obj <- qTableViewFromPtr x0
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

foreign import ccall "qtc_QTableView_setHandler1" qtc_QTableView_setHandler1 :: Ptr (TQTableView a) -> CWString -> Ptr (Ptr (TQTableView x0) -> Ptr (TQPoint t1) -> IO (Ptr (TQModelIndex t0))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QTableView1 :: (Ptr (TQTableView x0) -> Ptr (TQPoint t1) -> IO (Ptr (TQModelIndex t0))) -> IO (FunPtr (Ptr (TQTableView x0) -> Ptr (TQPoint t1) -> IO (Ptr (TQModelIndex t0))))

foreign import ccall "wrapper" wrapSetHandler_QTableView1_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QTableViewSc a) (QTableView x0 -> QPoint t1 -> IO (QModelIndex t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTableView1 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTableView1_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTableView_setHandler1 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTableView x0) -> Ptr (TQPoint t1) -> IO (Ptr (TQModelIndex t0))
    setHandlerWrapper x0 x1
      = do x0obj <- qTableViewFromPtr x0
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

instance QindexAt_h (QTableView ()) ((Point)) where
 indexAt_h x0 (x1)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QTableView_indexAt_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

foreign import ccall "qtc_QTableView_indexAt_qth" qtc_QTableView_indexAt_qth :: Ptr (TQTableView a) -> CInt -> CInt -> IO (Ptr (TQModelIndex ()))

instance QindexAt_h (QTableViewSc a) ((Point)) where
 indexAt_h x0 (x1)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QTableView_indexAt_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

instance QqindexAt_h (QTableView ()) ((QPoint t1)) where
 qindexAt_h x0 (x1)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_indexAt cobj_x0 cobj_x1

foreign import ccall "qtc_QTableView_indexAt" qtc_QTableView_indexAt :: Ptr (TQTableView a) -> Ptr (TQPoint t1) -> IO (Ptr (TQModelIndex ()))

instance QqindexAt_h (QTableViewSc a) ((QPoint t1)) where
 qindexAt_h x0 (x1)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_indexAt cobj_x0 cobj_x1

instance QsetHandler (QTableView ()) (QTableView x0 -> QEvent t1 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTableView2 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTableView2_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTableView_setHandler2 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTableView x0) -> Ptr (TQEvent t1) -> IO ()
    setHandlerWrapper x0 x1
      = do x0obj <- qTableViewFromPtr x0
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

foreign import ccall "qtc_QTableView_setHandler2" qtc_QTableView_setHandler2 :: Ptr (TQTableView a) -> CWString -> Ptr (Ptr (TQTableView x0) -> Ptr (TQEvent t1) -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QTableView2 :: (Ptr (TQTableView x0) -> Ptr (TQEvent t1) -> IO ()) -> IO (FunPtr (Ptr (TQTableView x0) -> Ptr (TQEvent t1) -> IO ()))

foreign import ccall "wrapper" wrapSetHandler_QTableView2_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QTableViewSc a) (QTableView x0 -> QEvent t1 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTableView2 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTableView2_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTableView_setHandler2 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTableView x0) -> Ptr (TQEvent t1) -> IO ()
    setHandlerWrapper x0 x1
      = do x0obj <- qTableViewFromPtr x0
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

instance QpaintEvent_h (QTableView ()) ((QPaintEvent t1)) where
 paintEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_paintEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTableView_paintEvent" qtc_QTableView_paintEvent :: Ptr (TQTableView a) -> Ptr (TQPaintEvent t1) -> IO ()

instance QpaintEvent_h (QTableViewSc a) ((QPaintEvent t1)) where
 paintEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_paintEvent cobj_x0 cobj_x1

instance QsetHandler (QTableView ()) (QTableView x0 -> Int -> Int -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTableView3 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTableView3_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTableView_setHandler3 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTableView x0) -> CInt -> CInt -> IO ()
    setHandlerWrapper x0 x1 x2
      = do x0obj <- qTableViewFromPtr x0
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

foreign import ccall "qtc_QTableView_setHandler3" qtc_QTableView_setHandler3 :: Ptr (TQTableView a) -> CWString -> Ptr (Ptr (TQTableView x0) -> CInt -> CInt -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QTableView3 :: (Ptr (TQTableView x0) -> CInt -> CInt -> IO ()) -> IO (FunPtr (Ptr (TQTableView x0) -> CInt -> CInt -> IO ()))

foreign import ccall "wrapper" wrapSetHandler_QTableView3_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QTableViewSc a) (QTableView x0 -> Int -> Int -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTableView3 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTableView3_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTableView_setHandler3 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTableView x0) -> CInt -> CInt -> IO ()
    setHandlerWrapper x0 x1 x2
      = do x0obj <- qTableViewFromPtr x0
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

instance QscrollContentsBy_h (QTableView ()) ((Int, Int)) where
 scrollContentsBy_h x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_scrollContentsBy cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QTableView_scrollContentsBy" qtc_QTableView_scrollContentsBy :: Ptr (TQTableView a) -> CInt -> CInt -> IO ()

instance QscrollContentsBy_h (QTableViewSc a) ((Int, Int)) where
 scrollContentsBy_h x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_scrollContentsBy cobj_x0 (toCInt x1) (toCInt x2)

instance QsetHandler (QTableView ()) (QTableView x0 -> QModelIndex t1 -> ScrollHint -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTableView4 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTableView4_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTableView_setHandler4 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTableView x0) -> Ptr (TQModelIndex t1) -> CLong -> IO ()
    setHandlerWrapper x0 x1 x2
      = do x0obj <- qTableViewFromPtr x0
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

foreign import ccall "qtc_QTableView_setHandler4" qtc_QTableView_setHandler4 :: Ptr (TQTableView a) -> CWString -> Ptr (Ptr (TQTableView x0) -> Ptr (TQModelIndex t1) -> CLong -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QTableView4 :: (Ptr (TQTableView x0) -> Ptr (TQModelIndex t1) -> CLong -> IO ()) -> IO (FunPtr (Ptr (TQTableView x0) -> Ptr (TQModelIndex t1) -> CLong -> IO ()))

foreign import ccall "wrapper" wrapSetHandler_QTableView4_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QTableViewSc a) (QTableView x0 -> QModelIndex t1 -> ScrollHint -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTableView4 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTableView4_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTableView_setHandler4 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTableView x0) -> Ptr (TQModelIndex t1) -> CLong -> IO ()
    setHandlerWrapper x0 x1 x2
      = do x0obj <- qTableViewFromPtr x0
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

instance QscrollTo_h (QTableView ()) ((QModelIndex t1, ScrollHint)) where
 scrollTo_h x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_scrollTo1 cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QTableView_scrollTo1" qtc_QTableView_scrollTo1 :: Ptr (TQTableView a) -> Ptr (TQModelIndex t1) -> CLong -> IO ()

instance QscrollTo_h (QTableViewSc a) ((QModelIndex t1, ScrollHint)) where
 scrollTo_h x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_scrollTo1 cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

instance QsetHandler (QTableView ()) (QTableView x0 -> QObject t1 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTableView5 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTableView5_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTableView_setHandler5 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTableView x0) -> Ptr (TQObject t1) -> IO ()
    setHandlerWrapper x0 x1
      = do x0obj <- qTableViewFromPtr x0
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

foreign import ccall "qtc_QTableView_setHandler5" qtc_QTableView_setHandler5 :: Ptr (TQTableView a) -> CWString -> Ptr (Ptr (TQTableView x0) -> Ptr (TQObject t1) -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QTableView5 :: (Ptr (TQTableView x0) -> Ptr (TQObject t1) -> IO ()) -> IO (FunPtr (Ptr (TQTableView x0) -> Ptr (TQObject t1) -> IO ()))

foreign import ccall "wrapper" wrapSetHandler_QTableView5_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QTableViewSc a) (QTableView x0 -> QObject t1 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTableView5 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTableView5_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTableView_setHandler5 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTableView x0) -> Ptr (TQObject t1) -> IO ()
    setHandlerWrapper x0 x1
      = do x0obj <- qTableViewFromPtr x0
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

instance QsetModel_h (QTableView ()) ((QAbstractItemModel t1)) where
 setModel_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_setModel cobj_x0 cobj_x1

foreign import ccall "qtc_QTableView_setModel" qtc_QTableView_setModel :: Ptr (TQTableView a) -> Ptr (TQAbstractItemModel t1) -> IO ()

instance QsetModel_h (QTableViewSc a) ((QAbstractItemModel t1)) where
 setModel_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_setModel cobj_x0 cobj_x1

instance QsetHandler (QTableView ()) (QTableView x0 -> QModelIndex t1 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTableView6 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTableView6_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTableView_setHandler6 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTableView x0) -> Ptr (TQModelIndex t1) -> IO ()
    setHandlerWrapper x0 x1
      = do x0obj <- qTableViewFromPtr x0
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

foreign import ccall "qtc_QTableView_setHandler6" qtc_QTableView_setHandler6 :: Ptr (TQTableView a) -> CWString -> Ptr (Ptr (TQTableView x0) -> Ptr (TQModelIndex t1) -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QTableView6 :: (Ptr (TQTableView x0) -> Ptr (TQModelIndex t1) -> IO ()) -> IO (FunPtr (Ptr (TQTableView x0) -> Ptr (TQModelIndex t1) -> IO ()))

foreign import ccall "wrapper" wrapSetHandler_QTableView6_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QTableViewSc a) (QTableView x0 -> QModelIndex t1 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTableView6 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTableView6_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTableView_setHandler6 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTableView x0) -> Ptr (TQModelIndex t1) -> IO ()
    setHandlerWrapper x0 x1
      = do x0obj <- qTableViewFromPtr x0
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

instance QsetRootIndex_h (QTableView ()) ((QModelIndex t1)) where
 setRootIndex_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_setRootIndex cobj_x0 cobj_x1

foreign import ccall "qtc_QTableView_setRootIndex" qtc_QTableView_setRootIndex :: Ptr (TQTableView a) -> Ptr (TQModelIndex t1) -> IO ()

instance QsetRootIndex_h (QTableViewSc a) ((QModelIndex t1)) where
 setRootIndex_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_setRootIndex cobj_x0 cobj_x1

instance QsetSelectionModel_h (QTableView ()) ((QItemSelectionModel t1)) where
 setSelectionModel_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_setSelectionModel cobj_x0 cobj_x1

foreign import ccall "qtc_QTableView_setSelectionModel" qtc_QTableView_setSelectionModel :: Ptr (TQTableView a) -> Ptr (TQItemSelectionModel t1) -> IO ()

instance QsetSelectionModel_h (QTableViewSc a) ((QItemSelectionModel t1)) where
 setSelectionModel_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_setSelectionModel cobj_x0 cobj_x1

instance QsetHandler (QTableView ()) (QTableView x0 -> QModelIndex t1 -> IO (QRect t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTableView7 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTableView7_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTableView_setHandler7 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTableView x0) -> Ptr (TQModelIndex t1) -> IO (Ptr (TQRect t0))
    setHandlerWrapper x0 x1
      = do x0obj <- qTableViewFromPtr x0
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

foreign import ccall "qtc_QTableView_setHandler7" qtc_QTableView_setHandler7 :: Ptr (TQTableView a) -> CWString -> Ptr (Ptr (TQTableView x0) -> Ptr (TQModelIndex t1) -> IO (Ptr (TQRect t0))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QTableView7 :: (Ptr (TQTableView x0) -> Ptr (TQModelIndex t1) -> IO (Ptr (TQRect t0))) -> IO (FunPtr (Ptr (TQTableView x0) -> Ptr (TQModelIndex t1) -> IO (Ptr (TQRect t0))))

foreign import ccall "wrapper" wrapSetHandler_QTableView7_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QTableViewSc a) (QTableView x0 -> QModelIndex t1 -> IO (QRect t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTableView7 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTableView7_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTableView_setHandler7 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTableView x0) -> Ptr (TQModelIndex t1) -> IO (Ptr (TQRect t0))
    setHandlerWrapper x0 x1
      = do x0obj <- qTableViewFromPtr x0
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

instance QqvisualRect_h (QTableView ()) ((QModelIndex t1)) where
 qvisualRect_h x0 (x1)
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_visualRect cobj_x0 cobj_x1

foreign import ccall "qtc_QTableView_visualRect" qtc_QTableView_visualRect :: Ptr (TQTableView a) -> Ptr (TQModelIndex t1) -> IO (Ptr (TQRect ()))

instance QqvisualRect_h (QTableViewSc a) ((QModelIndex t1)) where
 qvisualRect_h x0 (x1)
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_visualRect cobj_x0 cobj_x1

instance QvisualRect_h (QTableView ()) ((QModelIndex t1)) where
 visualRect_h x0 (x1)
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_visualRect_qth cobj_x0 cobj_x1 crect_ret_x crect_ret_y crect_ret_w crect_ret_h

foreign import ccall "qtc_QTableView_visualRect_qth" qtc_QTableView_visualRect_qth :: Ptr (TQTableView a) -> Ptr (TQModelIndex t1) -> Ptr CInt -> Ptr CInt -> Ptr CInt -> Ptr CInt -> IO ()

instance QvisualRect_h (QTableViewSc a) ((QModelIndex t1)) where
 visualRect_h x0 (x1)
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_visualRect_qth cobj_x0 cobj_x1 crect_ret_x crect_ret_y crect_ret_w crect_ret_h

instance QsetHandler (QTableView ()) (QTableView x0 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTableView8 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTableView8_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTableView_setHandler8 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTableView x0) -> IO ()
    setHandlerWrapper x0
      = do x0obj <- qTableViewFromPtr x0
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

foreign import ccall "qtc_QTableView_setHandler8" qtc_QTableView_setHandler8 :: Ptr (TQTableView a) -> CWString -> Ptr (Ptr (TQTableView x0) -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QTableView8 :: (Ptr (TQTableView x0) -> IO ()) -> IO (FunPtr (Ptr (TQTableView x0) -> IO ()))

foreign import ccall "wrapper" wrapSetHandler_QTableView8_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QTableViewSc a) (QTableView x0 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTableView8 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTableView8_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTableView_setHandler8 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTableView x0) -> IO ()
    setHandlerWrapper x0
      = do x0obj <- qTableViewFromPtr x0
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

instance QdoItemsLayout_h (QTableView ()) (()) where
 doItemsLayout_h x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_doItemsLayout cobj_x0

foreign import ccall "qtc_QTableView_doItemsLayout" qtc_QTableView_doItemsLayout :: Ptr (TQTableView a) -> IO ()

instance QdoItemsLayout_h (QTableViewSc a) (()) where
 doItemsLayout_h x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_doItemsLayout cobj_x0

instance QdragEnterEvent_h (QTableView ()) ((QDragEnterEvent t1)) where
 dragEnterEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_dragEnterEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTableView_dragEnterEvent" qtc_QTableView_dragEnterEvent :: Ptr (TQTableView a) -> Ptr (TQDragEnterEvent t1) -> IO ()

instance QdragEnterEvent_h (QTableViewSc a) ((QDragEnterEvent t1)) where
 dragEnterEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_dragEnterEvent cobj_x0 cobj_x1

instance QdragLeaveEvent_h (QTableView ()) ((QDragLeaveEvent t1)) where
 dragLeaveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_dragLeaveEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTableView_dragLeaveEvent" qtc_QTableView_dragLeaveEvent :: Ptr (TQTableView a) -> Ptr (TQDragLeaveEvent t1) -> IO ()

instance QdragLeaveEvent_h (QTableViewSc a) ((QDragLeaveEvent t1)) where
 dragLeaveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_dragLeaveEvent cobj_x0 cobj_x1

instance QdragMoveEvent_h (QTableView ()) ((QDragMoveEvent t1)) where
 dragMoveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_dragMoveEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTableView_dragMoveEvent" qtc_QTableView_dragMoveEvent :: Ptr (TQTableView a) -> Ptr (TQDragMoveEvent t1) -> IO ()

instance QdragMoveEvent_h (QTableViewSc a) ((QDragMoveEvent t1)) where
 dragMoveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_dragMoveEvent cobj_x0 cobj_x1

instance QdropEvent_h (QTableView ()) ((QDropEvent t1)) where
 dropEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_dropEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTableView_dropEvent" qtc_QTableView_dropEvent :: Ptr (TQTableView a) -> Ptr (TQDropEvent t1) -> IO ()

instance QdropEvent_h (QTableViewSc a) ((QDropEvent t1)) where
 dropEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_dropEvent cobj_x0 cobj_x1

instance QsetHandler (QTableView ()) (QTableView x0 -> QEvent t1 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTableView9 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTableView9_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTableView_setHandler9 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTableView x0) -> Ptr (TQEvent t1) -> IO (CBool)
    setHandlerWrapper x0 x1
      = do x0obj <- qTableViewFromPtr x0
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

foreign import ccall "qtc_QTableView_setHandler9" qtc_QTableView_setHandler9 :: Ptr (TQTableView a) -> CWString -> Ptr (Ptr (TQTableView x0) -> Ptr (TQEvent t1) -> IO (CBool)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QTableView9 :: (Ptr (TQTableView x0) -> Ptr (TQEvent t1) -> IO (CBool)) -> IO (FunPtr (Ptr (TQTableView x0) -> Ptr (TQEvent t1) -> IO (CBool)))

foreign import ccall "wrapper" wrapSetHandler_QTableView9_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QTableViewSc a) (QTableView x0 -> QEvent t1 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTableView9 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTableView9_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTableView_setHandler9 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTableView x0) -> Ptr (TQEvent t1) -> IO (CBool)
    setHandlerWrapper x0 x1
      = do x0obj <- qTableViewFromPtr x0
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

instance Qevent_h (QTableView ()) ((QEvent t1)) where
 event_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_event cobj_x0 cobj_x1

foreign import ccall "qtc_QTableView_event" qtc_QTableView_event :: Ptr (TQTableView a) -> Ptr (TQEvent t1) -> IO CBool

instance Qevent_h (QTableViewSc a) ((QEvent t1)) where
 event_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_event cobj_x0 cobj_x1

instance QfocusInEvent_h (QTableView ()) ((QFocusEvent t1)) where
 focusInEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_focusInEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTableView_focusInEvent" qtc_QTableView_focusInEvent :: Ptr (TQTableView a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusInEvent_h (QTableViewSc a) ((QFocusEvent t1)) where
 focusInEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_focusInEvent cobj_x0 cobj_x1

instance QfocusOutEvent_h (QTableView ()) ((QFocusEvent t1)) where
 focusOutEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_focusOutEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTableView_focusOutEvent" qtc_QTableView_focusOutEvent :: Ptr (TQTableView a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusOutEvent_h (QTableViewSc a) ((QFocusEvent t1)) where
 focusOutEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_focusOutEvent cobj_x0 cobj_x1

instance QsetHandler (QTableView ()) (QTableView x0 -> InputMethodQuery -> IO (QVariant t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTableView10 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTableView10_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTableView_setHandler10 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTableView x0) -> CLong -> IO (Ptr (TQVariant t0))
    setHandlerWrapper x0 x1
      = do x0obj <- qTableViewFromPtr x0
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

foreign import ccall "qtc_QTableView_setHandler10" qtc_QTableView_setHandler10 :: Ptr (TQTableView a) -> CWString -> Ptr (Ptr (TQTableView x0) -> CLong -> IO (Ptr (TQVariant t0))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QTableView10 :: (Ptr (TQTableView x0) -> CLong -> IO (Ptr (TQVariant t0))) -> IO (FunPtr (Ptr (TQTableView x0) -> CLong -> IO (Ptr (TQVariant t0))))

foreign import ccall "wrapper" wrapSetHandler_QTableView10_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QTableViewSc a) (QTableView x0 -> InputMethodQuery -> IO (QVariant t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTableView10 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTableView10_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTableView_setHandler10 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTableView x0) -> CLong -> IO (Ptr (TQVariant t0))
    setHandlerWrapper x0 x1
      = do x0obj <- qTableViewFromPtr x0
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

instance QinputMethodQuery_h (QTableView ()) ((InputMethodQuery)) where
 inputMethodQuery_h x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_inputMethodQuery cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QTableView_inputMethodQuery" qtc_QTableView_inputMethodQuery :: Ptr (TQTableView a) -> CLong -> IO (Ptr (TQVariant ()))

instance QinputMethodQuery_h (QTableViewSc a) ((InputMethodQuery)) where
 inputMethodQuery_h x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_inputMethodQuery cobj_x0 (toCLong $ qEnum_toInt x1)

instance QkeyPressEvent_h (QTableView ()) ((QKeyEvent t1)) where
 keyPressEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_keyPressEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTableView_keyPressEvent" qtc_QTableView_keyPressEvent :: Ptr (TQTableView a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyPressEvent_h (QTableViewSc a) ((QKeyEvent t1)) where
 keyPressEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_keyPressEvent cobj_x0 cobj_x1

instance QsetHandler (QTableView ()) (QTableView x0 -> String -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTableView11 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTableView11_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTableView_setHandler11 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTableView x0) -> Ptr (TQString ()) -> IO ()
    setHandlerWrapper x0 x1
      = do x0obj <- qTableViewFromPtr x0
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

foreign import ccall "qtc_QTableView_setHandler11" qtc_QTableView_setHandler11 :: Ptr (TQTableView a) -> CWString -> Ptr (Ptr (TQTableView x0) -> Ptr (TQString ()) -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QTableView11 :: (Ptr (TQTableView x0) -> Ptr (TQString ()) -> IO ()) -> IO (FunPtr (Ptr (TQTableView x0) -> Ptr (TQString ()) -> IO ()))

foreign import ccall "wrapper" wrapSetHandler_QTableView11_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QTableViewSc a) (QTableView x0 -> String -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTableView11 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTableView11_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTableView_setHandler11 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTableView x0) -> Ptr (TQString ()) -> IO ()
    setHandlerWrapper x0 x1
      = do x0obj <- qTableViewFromPtr x0
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

instance QkeyboardSearch_h (QTableView ()) ((String)) where
 keyboardSearch_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTableView_keyboardSearch cobj_x0 cstr_x1

foreign import ccall "qtc_QTableView_keyboardSearch" qtc_QTableView_keyboardSearch :: Ptr (TQTableView a) -> CWString -> IO ()

instance QkeyboardSearch_h (QTableViewSc a) ((String)) where
 keyboardSearch_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTableView_keyboardSearch cobj_x0 cstr_x1

instance QmouseDoubleClickEvent_h (QTableView ()) ((QMouseEvent t1)) where
 mouseDoubleClickEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_mouseDoubleClickEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTableView_mouseDoubleClickEvent" qtc_QTableView_mouseDoubleClickEvent :: Ptr (TQTableView a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseDoubleClickEvent_h (QTableViewSc a) ((QMouseEvent t1)) where
 mouseDoubleClickEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_mouseDoubleClickEvent cobj_x0 cobj_x1

instance QmouseMoveEvent_h (QTableView ()) ((QMouseEvent t1)) where
 mouseMoveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_mouseMoveEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTableView_mouseMoveEvent" qtc_QTableView_mouseMoveEvent :: Ptr (TQTableView a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseMoveEvent_h (QTableViewSc a) ((QMouseEvent t1)) where
 mouseMoveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_mouseMoveEvent cobj_x0 cobj_x1

instance QmousePressEvent_h (QTableView ()) ((QMouseEvent t1)) where
 mousePressEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_mousePressEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTableView_mousePressEvent" qtc_QTableView_mousePressEvent :: Ptr (TQTableView a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmousePressEvent_h (QTableViewSc a) ((QMouseEvent t1)) where
 mousePressEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_mousePressEvent cobj_x0 cobj_x1

instance QmouseReleaseEvent_h (QTableView ()) ((QMouseEvent t1)) where
 mouseReleaseEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_mouseReleaseEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTableView_mouseReleaseEvent" qtc_QTableView_mouseReleaseEvent :: Ptr (TQTableView a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseReleaseEvent_h (QTableViewSc a) ((QMouseEvent t1)) where
 mouseReleaseEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_mouseReleaseEvent cobj_x0 cobj_x1

instance Qreset_h (QTableView ()) (()) (IO ()) where
 reset_h x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_reset cobj_x0

foreign import ccall "qtc_QTableView_reset" qtc_QTableView_reset :: Ptr (TQTableView a) -> IO ()

instance Qreset_h (QTableViewSc a) (()) (IO ()) where
 reset_h x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_reset cobj_x0

instance QresizeEvent_h (QTableView ()) ((QResizeEvent t1)) where
 resizeEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_resizeEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTableView_resizeEvent" qtc_QTableView_resizeEvent :: Ptr (TQTableView a) -> Ptr (TQResizeEvent t1) -> IO ()

instance QresizeEvent_h (QTableViewSc a) ((QResizeEvent t1)) where
 resizeEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_resizeEvent cobj_x0 cobj_x1

instance QselectAll_h (QTableView ()) (()) where
 selectAll_h x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_selectAll cobj_x0

foreign import ccall "qtc_QTableView_selectAll" qtc_QTableView_selectAll :: Ptr (TQTableView a) -> IO ()

instance QselectAll_h (QTableViewSc a) (()) where
 selectAll_h x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_selectAll cobj_x0

instance QviewportEvent_h (QTableView ()) ((QEvent t1)) where
 viewportEvent_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_viewportEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTableView_viewportEvent" qtc_QTableView_viewportEvent :: Ptr (TQTableView a) -> Ptr (TQEvent t1) -> IO CBool

instance QviewportEvent_h (QTableViewSc a) ((QEvent t1)) where
 viewportEvent_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_viewportEvent cobj_x0 cobj_x1

instance QcontextMenuEvent_h (QTableView ()) ((QContextMenuEvent t1)) where
 contextMenuEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_contextMenuEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTableView_contextMenuEvent" qtc_QTableView_contextMenuEvent :: Ptr (TQTableView a) -> Ptr (TQContextMenuEvent t1) -> IO ()

instance QcontextMenuEvent_h (QTableViewSc a) ((QContextMenuEvent t1)) where
 contextMenuEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_contextMenuEvent cobj_x0 cobj_x1

instance QsetHandler (QTableView ()) (QTableView x0 -> IO (QSize t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTableView12 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTableView12_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTableView_setHandler12 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTableView x0) -> IO (Ptr (TQSize t0))
    setHandlerWrapper x0
      = do x0obj <- qTableViewFromPtr x0
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

foreign import ccall "qtc_QTableView_setHandler12" qtc_QTableView_setHandler12 :: Ptr (TQTableView a) -> CWString -> Ptr (Ptr (TQTableView x0) -> IO (Ptr (TQSize t0))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QTableView12 :: (Ptr (TQTableView x0) -> IO (Ptr (TQSize t0))) -> IO (FunPtr (Ptr (TQTableView x0) -> IO (Ptr (TQSize t0))))

foreign import ccall "wrapper" wrapSetHandler_QTableView12_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QTableViewSc a) (QTableView x0 -> IO (QSize t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTableView12 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTableView12_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTableView_setHandler12 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTableView x0) -> IO (Ptr (TQSize t0))
    setHandlerWrapper x0
      = do x0obj <- qTableViewFromPtr x0
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

instance QqminimumSizeHint_h (QTableView ()) (()) where
 qminimumSizeHint_h x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_minimumSizeHint cobj_x0

foreign import ccall "qtc_QTableView_minimumSizeHint" qtc_QTableView_minimumSizeHint :: Ptr (TQTableView a) -> IO (Ptr (TQSize ()))

instance QqminimumSizeHint_h (QTableViewSc a) (()) where
 qminimumSizeHint_h x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_minimumSizeHint cobj_x0

instance QminimumSizeHint_h (QTableView ()) (()) where
 minimumSizeHint_h x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_minimumSizeHint_qth cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QTableView_minimumSizeHint_qth" qtc_QTableView_minimumSizeHint_qth :: Ptr (TQTableView a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QminimumSizeHint_h (QTableViewSc a) (()) where
 minimumSizeHint_h x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_minimumSizeHint_qth cobj_x0 csize_ret_w csize_ret_h

instance QqsizeHint_h (QTableView ()) (()) where
 qsizeHint_h x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_sizeHint cobj_x0

foreign import ccall "qtc_QTableView_sizeHint" qtc_QTableView_sizeHint :: Ptr (TQTableView a) -> IO (Ptr (TQSize ()))

instance QqsizeHint_h (QTableViewSc a) (()) where
 qsizeHint_h x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_sizeHint cobj_x0

instance QsizeHint_h (QTableView ()) (()) where
 sizeHint_h x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_sizeHint_qth cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QTableView_sizeHint_qth" qtc_QTableView_sizeHint_qth :: Ptr (TQTableView a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QsizeHint_h (QTableViewSc a) (()) where
 sizeHint_h x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_sizeHint_qth cobj_x0 csize_ret_w csize_ret_h

instance QwheelEvent_h (QTableView ()) ((QWheelEvent t1)) where
 wheelEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_wheelEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTableView_wheelEvent" qtc_QTableView_wheelEvent :: Ptr (TQTableView a) -> Ptr (TQWheelEvent t1) -> IO ()

instance QwheelEvent_h (QTableViewSc a) ((QWheelEvent t1)) where
 wheelEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_wheelEvent cobj_x0 cobj_x1

instance QchangeEvent_h (QTableView ()) ((QEvent t1)) where
 changeEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_changeEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTableView_changeEvent" qtc_QTableView_changeEvent :: Ptr (TQTableView a) -> Ptr (TQEvent t1) -> IO ()

instance QchangeEvent_h (QTableViewSc a) ((QEvent t1)) where
 changeEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_changeEvent cobj_x0 cobj_x1

instance QactionEvent_h (QTableView ()) ((QActionEvent t1)) where
 actionEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_actionEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTableView_actionEvent" qtc_QTableView_actionEvent :: Ptr (TQTableView a) -> Ptr (TQActionEvent t1) -> IO ()

instance QactionEvent_h (QTableViewSc a) ((QActionEvent t1)) where
 actionEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_actionEvent cobj_x0 cobj_x1

instance QcloseEvent_h (QTableView ()) ((QCloseEvent t1)) where
 closeEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_closeEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTableView_closeEvent" qtc_QTableView_closeEvent :: Ptr (TQTableView a) -> Ptr (TQCloseEvent t1) -> IO ()

instance QcloseEvent_h (QTableViewSc a) ((QCloseEvent t1)) where
 closeEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_closeEvent cobj_x0 cobj_x1

instance QsetHandler (QTableView ()) (QTableView x0 -> IO (Int)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTableView13 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTableView13_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTableView_setHandler13 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTableView x0) -> IO (CInt)
    setHandlerWrapper x0
      = do x0obj <- qTableViewFromPtr x0
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

foreign import ccall "qtc_QTableView_setHandler13" qtc_QTableView_setHandler13 :: Ptr (TQTableView a) -> CWString -> Ptr (Ptr (TQTableView x0) -> IO (CInt)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QTableView13 :: (Ptr (TQTableView x0) -> IO (CInt)) -> IO (FunPtr (Ptr (TQTableView x0) -> IO (CInt)))

foreign import ccall "wrapper" wrapSetHandler_QTableView13_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QTableViewSc a) (QTableView x0 -> IO (Int)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTableView13 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTableView13_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTableView_setHandler13 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTableView x0) -> IO (CInt)
    setHandlerWrapper x0
      = do x0obj <- qTableViewFromPtr x0
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

instance QdevType_h (QTableView ()) (()) where
 devType_h x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_devType cobj_x0

foreign import ccall "qtc_QTableView_devType" qtc_QTableView_devType :: Ptr (TQTableView a) -> IO CInt

instance QdevType_h (QTableViewSc a) (()) where
 devType_h x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_devType cobj_x0

instance QenterEvent_h (QTableView ()) ((QEvent t1)) where
 enterEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_enterEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTableView_enterEvent" qtc_QTableView_enterEvent :: Ptr (TQTableView a) -> Ptr (TQEvent t1) -> IO ()

instance QenterEvent_h (QTableViewSc a) ((QEvent t1)) where
 enterEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_enterEvent cobj_x0 cobj_x1

instance QsetHandler (QTableView ()) (QTableView x0 -> Int -> IO (Int)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTableView14 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTableView14_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTableView_setHandler14 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTableView x0) -> CInt -> IO (CInt)
    setHandlerWrapper x0 x1
      = do x0obj <- qTableViewFromPtr x0
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

foreign import ccall "qtc_QTableView_setHandler14" qtc_QTableView_setHandler14 :: Ptr (TQTableView a) -> CWString -> Ptr (Ptr (TQTableView x0) -> CInt -> IO (CInt)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QTableView14 :: (Ptr (TQTableView x0) -> CInt -> IO (CInt)) -> IO (FunPtr (Ptr (TQTableView x0) -> CInt -> IO (CInt)))

foreign import ccall "wrapper" wrapSetHandler_QTableView14_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QTableViewSc a) (QTableView x0 -> Int -> IO (Int)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTableView14 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTableView14_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTableView_setHandler14 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTableView x0) -> CInt -> IO (CInt)
    setHandlerWrapper x0 x1
      = do x0obj <- qTableViewFromPtr x0
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

instance QheightForWidth_h (QTableView ()) ((Int)) where
 heightForWidth_h x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_heightForWidth cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTableView_heightForWidth" qtc_QTableView_heightForWidth :: Ptr (TQTableView a) -> CInt -> IO CInt

instance QheightForWidth_h (QTableViewSc a) ((Int)) where
 heightForWidth_h x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_heightForWidth cobj_x0 (toCInt x1)

instance QhideEvent_h (QTableView ()) ((QHideEvent t1)) where
 hideEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_hideEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTableView_hideEvent" qtc_QTableView_hideEvent :: Ptr (TQTableView a) -> Ptr (TQHideEvent t1) -> IO ()

instance QhideEvent_h (QTableViewSc a) ((QHideEvent t1)) where
 hideEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_hideEvent cobj_x0 cobj_x1

instance QkeyReleaseEvent_h (QTableView ()) ((QKeyEvent t1)) where
 keyReleaseEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_keyReleaseEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTableView_keyReleaseEvent" qtc_QTableView_keyReleaseEvent :: Ptr (TQTableView a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyReleaseEvent_h (QTableViewSc a) ((QKeyEvent t1)) where
 keyReleaseEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_keyReleaseEvent cobj_x0 cobj_x1

instance QleaveEvent_h (QTableView ()) ((QEvent t1)) where
 leaveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_leaveEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTableView_leaveEvent" qtc_QTableView_leaveEvent :: Ptr (TQTableView a) -> Ptr (TQEvent t1) -> IO ()

instance QleaveEvent_h (QTableViewSc a) ((QEvent t1)) where
 leaveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_leaveEvent cobj_x0 cobj_x1

instance QmoveEvent_h (QTableView ()) ((QMoveEvent t1)) where
 moveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_moveEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTableView_moveEvent" qtc_QTableView_moveEvent :: Ptr (TQTableView a) -> Ptr (TQMoveEvent t1) -> IO ()

instance QmoveEvent_h (QTableViewSc a) ((QMoveEvent t1)) where
 moveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_moveEvent cobj_x0 cobj_x1

instance QsetHandler (QTableView ()) (QTableView x0 -> IO (QPaintEngine t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTableView15 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTableView15_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTableView_setHandler15 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTableView x0) -> IO (Ptr (TQPaintEngine t0))
    setHandlerWrapper x0
      = do x0obj <- qTableViewFromPtr x0
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

foreign import ccall "qtc_QTableView_setHandler15" qtc_QTableView_setHandler15 :: Ptr (TQTableView a) -> CWString -> Ptr (Ptr (TQTableView x0) -> IO (Ptr (TQPaintEngine t0))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QTableView15 :: (Ptr (TQTableView x0) -> IO (Ptr (TQPaintEngine t0))) -> IO (FunPtr (Ptr (TQTableView x0) -> IO (Ptr (TQPaintEngine t0))))

foreign import ccall "wrapper" wrapSetHandler_QTableView15_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QTableViewSc a) (QTableView x0 -> IO (QPaintEngine t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTableView15 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTableView15_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTableView_setHandler15 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTableView x0) -> IO (Ptr (TQPaintEngine t0))
    setHandlerWrapper x0
      = do x0obj <- qTableViewFromPtr x0
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

instance QpaintEngine_h (QTableView ()) (()) where
 paintEngine_h x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_paintEngine cobj_x0

foreign import ccall "qtc_QTableView_paintEngine" qtc_QTableView_paintEngine :: Ptr (TQTableView a) -> IO (Ptr (TQPaintEngine ()))

instance QpaintEngine_h (QTableViewSc a) (()) where
 paintEngine_h x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_paintEngine cobj_x0

instance QsetHandler (QTableView ()) (QTableView x0 -> Bool -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTableView16 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTableView16_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTableView_setHandler16 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTableView x0) -> CBool -> IO ()
    setHandlerWrapper x0 x1
      = do x0obj <- qTableViewFromPtr x0
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

foreign import ccall "qtc_QTableView_setHandler16" qtc_QTableView_setHandler16 :: Ptr (TQTableView a) -> CWString -> Ptr (Ptr (TQTableView x0) -> CBool -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QTableView16 :: (Ptr (TQTableView x0) -> CBool -> IO ()) -> IO (FunPtr (Ptr (TQTableView x0) -> CBool -> IO ()))

foreign import ccall "wrapper" wrapSetHandler_QTableView16_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QTableViewSc a) (QTableView x0 -> Bool -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTableView16 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTableView16_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTableView_setHandler16 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTableView x0) -> CBool -> IO ()
    setHandlerWrapper x0 x1
      = do x0obj <- qTableViewFromPtr x0
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

instance QsetVisible_h (QTableView ()) ((Bool)) where
 setVisible_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_setVisible cobj_x0 (toCBool x1)

foreign import ccall "qtc_QTableView_setVisible" qtc_QTableView_setVisible :: Ptr (TQTableView a) -> CBool -> IO ()

instance QsetVisible_h (QTableViewSc a) ((Bool)) where
 setVisible_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_setVisible cobj_x0 (toCBool x1)

instance QshowEvent_h (QTableView ()) ((QShowEvent t1)) where
 showEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_showEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTableView_showEvent" qtc_QTableView_showEvent :: Ptr (TQTableView a) -> Ptr (TQShowEvent t1) -> IO ()

instance QshowEvent_h (QTableViewSc a) ((QShowEvent t1)) where
 showEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_showEvent cobj_x0 cobj_x1

instance QtabletEvent_h (QTableView ()) ((QTabletEvent t1)) where
 tabletEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_tabletEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTableView_tabletEvent" qtc_QTableView_tabletEvent :: Ptr (TQTableView a) -> Ptr (TQTabletEvent t1) -> IO ()

instance QtabletEvent_h (QTableViewSc a) ((QTabletEvent t1)) where
 tabletEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_tabletEvent cobj_x0 cobj_x1

instance QsetHandler (QTableView ()) (QTableView x0 -> QObject t1 -> QEvent t2 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTableView17 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTableView17_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTableView_setHandler17 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTableView x0) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO (CBool)
    setHandlerWrapper x0 x1 x2
      = do x0obj <- qTableViewFromPtr x0
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

foreign import ccall "qtc_QTableView_setHandler17" qtc_QTableView_setHandler17 :: Ptr (TQTableView a) -> CWString -> Ptr (Ptr (TQTableView x0) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO (CBool)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QTableView17 :: (Ptr (TQTableView x0) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO (CBool)) -> IO (FunPtr (Ptr (TQTableView x0) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO (CBool)))

foreign import ccall "wrapper" wrapSetHandler_QTableView17_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QTableViewSc a) (QTableView x0 -> QObject t1 -> QEvent t2 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTableView17 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTableView17_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTableView_setHandler17 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTableView x0) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO (CBool)
    setHandlerWrapper x0 x1 x2
      = do x0obj <- qTableViewFromPtr x0
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

instance QeventFilter_h (QTableView ()) ((QObject t1, QEvent t2)) where
 eventFilter_h x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QTableView_eventFilter cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QTableView_eventFilter" qtc_QTableView_eventFilter :: Ptr (TQTableView a) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO CBool

instance QeventFilter_h (QTableViewSc a) ((QObject t1, QEvent t2)) where
 eventFilter_h x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QTableView_eventFilter cobj_x0 cobj_x1 cobj_x2

