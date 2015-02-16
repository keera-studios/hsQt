{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QAbstractListModel_h.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:32
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Core.QAbstractListModel_h where

import Foreign.C.Types

import Qtc.Enums.Base
import Qtc.Enums.Core.Qt

import Qtc.Classes.Base
import Qtc.Classes.Qccs_h
import Qtc.Classes.Core_h
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core
import Foreign.Marshal.Array

instance QunSetUserMethod (QAbstractListModel ()) where
 unSetUserMethod qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QAbstractListModel_unSetUserMethod cobj_qobj (toCInt 0) (toCInt evid)

foreign import ccall "qtc_QAbstractListModel_unSetUserMethod" qtc_QAbstractListModel_unSetUserMethod :: Ptr (TQAbstractListModel a) -> CInt -> CInt -> IO (CBool)

instance QunSetUserMethod (QAbstractListModelSc a) where
 unSetUserMethod qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QAbstractListModel_unSetUserMethod cobj_qobj (toCInt 0) (toCInt evid)

instance QunSetUserMethodVariant (QAbstractListModel ()) where
 unSetUserMethodVariant qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QAbstractListModel_unSetUserMethod cobj_qobj (toCInt 1) (toCInt evid)

instance QunSetUserMethodVariant (QAbstractListModelSc a) where
 unSetUserMethodVariant qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QAbstractListModel_unSetUserMethod cobj_qobj (toCInt 1) (toCInt evid)

instance QunSetUserMethodVariantList (QAbstractListModel ()) where
 unSetUserMethodVariantList qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QAbstractListModel_unSetUserMethod cobj_qobj (toCInt 2) (toCInt evid)

instance QunSetUserMethodVariantList (QAbstractListModelSc a) where
 unSetUserMethodVariantList qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QAbstractListModel_unSetUserMethod cobj_qobj (toCInt 2) (toCInt evid)

instance QsetUserMethod (QAbstractListModel ()) (QAbstractListModel x0 -> IO ()) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethod_QAbstractListModel setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethod_QAbstractListModel_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QAbstractListModel_setUserMethod cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQAbstractListModel x0) -> IO ()
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

foreign import ccall "qtc_QAbstractListModel_setUserMethod" qtc_QAbstractListModel_setUserMethod :: Ptr (TQAbstractListModel a) -> CInt -> Ptr (Ptr (TQAbstractListModel x0) -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetUserMethod_QAbstractListModel :: (Ptr (TQAbstractListModel x0) -> IO ()) -> IO (FunPtr (Ptr (TQAbstractListModel x0) -> IO ()))

foreign import ccall "wrapper" wrapSetUserMethod_QAbstractListModel_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetUserMethod (QAbstractListModelSc a) (QAbstractListModel x0 -> IO ()) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethod_QAbstractListModel setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethod_QAbstractListModel_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QAbstractListModel_setUserMethod cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQAbstractListModel x0) -> IO ()
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

instance QsetUserMethod (QAbstractListModel ()) (QAbstractListModel x0 -> QVariant () -> IO (QVariant ())) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethodVariant_QAbstractListModel setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethodVariant_QAbstractListModel_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QAbstractListModel_setUserMethodVariant cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQAbstractListModel x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))
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

foreign import ccall "qtc_QAbstractListModel_setUserMethodVariant" qtc_QAbstractListModel_setUserMethodVariant :: Ptr (TQAbstractListModel a) -> CInt -> Ptr (Ptr (TQAbstractListModel x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetUserMethodVariant_QAbstractListModel :: (Ptr (TQAbstractListModel x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))) -> IO (FunPtr (Ptr (TQAbstractListModel x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))))

foreign import ccall "wrapper" wrapSetUserMethodVariant_QAbstractListModel_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetUserMethod (QAbstractListModelSc a) (QAbstractListModel x0 -> QVariant () -> IO (QVariant ())) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethodVariant_QAbstractListModel setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethodVariant_QAbstractListModel_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QAbstractListModel_setUserMethodVariant cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQAbstractListModel x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))
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

instance QunSetHandler (QAbstractListModel ()) where 
 unSetHandler qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withCWString evid $ \cstr_evid ->
    qtc_QAbstractListModel_unSetHandler cobj_qobj cstr_evid

foreign import ccall "qtc_QAbstractListModel_unSetHandler" qtc_QAbstractListModel_unSetHandler :: Ptr (TQAbstractListModel a) -> CWString -> IO (CBool)

instance QunSetHandler (QAbstractListModelSc a) where 
 unSetHandler qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withCWString evid $ \cstr_evid ->
    qtc_QAbstractListModel_unSetHandler cobj_qobj cstr_evid

instance QsetHandler (QAbstractListModel ()) (QAbstractListModel x0 -> QObject t1 -> DropAction -> Int -> Int -> QModelIndex t5 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractListModel1 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractListModel1_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractListModel_setHandler1 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractListModel x0) -> Ptr (TQObject t1) -> CLong -> CInt -> CInt -> Ptr (TQModelIndex t5) -> IO (CBool)
    setHandlerWrapper x0 x1 x2 x3 x4 x5
      = do x0obj <- qAbstractListModelFromPtr x0
           x1obj <- qObjectFromPtr x1
           let x2enum = qEnum_fromInt $ fromCLong x2
           let x3int = fromCInt x3
           let x4int = fromCInt x4
           x5obj <- objectFromPtr_nf x5
           let rv =
                if (objectIsNull x0obj)
                 then return False
                 else _handler x0obj x1obj x2enum x3int x4int x5obj
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

foreign import ccall "qtc_QAbstractListModel_setHandler1" qtc_QAbstractListModel_setHandler1 :: Ptr (TQAbstractListModel a) -> CWString -> Ptr (Ptr (TQAbstractListModel x0) -> Ptr (TQObject t1) -> CLong -> CInt -> CInt -> Ptr (TQModelIndex t5) -> IO (CBool)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QAbstractListModel1 :: (Ptr (TQAbstractListModel x0) -> Ptr (TQObject t1) -> CLong -> CInt -> CInt -> Ptr (TQModelIndex t5) -> IO (CBool)) -> IO (FunPtr (Ptr (TQAbstractListModel x0) -> Ptr (TQObject t1) -> CLong -> CInt -> CInt -> Ptr (TQModelIndex t5) -> IO (CBool)))

foreign import ccall "wrapper" wrapSetHandler_QAbstractListModel1_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QAbstractListModelSc a) (QAbstractListModel x0 -> QObject t1 -> DropAction -> Int -> Int -> QModelIndex t5 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractListModel1 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractListModel1_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractListModel_setHandler1 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractListModel x0) -> Ptr (TQObject t1) -> CLong -> CInt -> CInt -> Ptr (TQModelIndex t5) -> IO (CBool)
    setHandlerWrapper x0 x1 x2 x3 x4 x5
      = do x0obj <- qAbstractListModelFromPtr x0
           x1obj <- qObjectFromPtr x1
           let x2enum = qEnum_fromInt $ fromCLong x2
           let x3int = fromCInt x3
           let x4int = fromCInt x4
           x5obj <- objectFromPtr_nf x5
           let rv =
                if (objectIsNull x0obj)
                 then return False
                 else _handler x0obj x1obj x2enum x3int x4int x5obj
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

instance QdropMimeData_h (QAbstractListModel ()) ((QMimeData t1, DropAction, Int, Int, QModelIndex t5)) where
 dropMimeData_h x0 (x1, x2, x3, x4, x5)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x5 $ \cobj_x5 ->
    qtc_QAbstractListModel_dropMimeData cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2) (toCInt x3) (toCInt x4) cobj_x5

foreign import ccall "qtc_QAbstractListModel_dropMimeData" qtc_QAbstractListModel_dropMimeData :: Ptr (TQAbstractListModel a) -> Ptr (TQMimeData t1) -> CLong -> CInt -> CInt -> Ptr (TQModelIndex t5) -> IO CBool

instance QdropMimeData_h (QAbstractListModelSc a) ((QMimeData t1, DropAction, Int, Int, QModelIndex t5)) where
 dropMimeData_h x0 (x1, x2, x3, x4, x5)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x5 $ \cobj_x5 ->
    qtc_QAbstractListModel_dropMimeData cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2) (toCInt x3) (toCInt x4) cobj_x5

instance QsetHandler (QAbstractListModel ()) (QAbstractListModel x0 -> Int -> IO (QModelIndex t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractListModel2 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractListModel2_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractListModel_setHandler2 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractListModel x0) -> CInt -> IO (Ptr (TQModelIndex t0))
    setHandlerWrapper x0 x1
      = do x0obj <- qAbstractListModelFromPtr x0
           let x1int = fromCInt x1
           let rv =
                if (objectIsNull x0obj)
                 then return $ objectCast x0obj
                 else _handler x0obj x1int
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

foreign import ccall "qtc_QAbstractListModel_setHandler2" qtc_QAbstractListModel_setHandler2 :: Ptr (TQAbstractListModel a) -> CWString -> Ptr (Ptr (TQAbstractListModel x0) -> CInt -> IO (Ptr (TQModelIndex t0))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QAbstractListModel2 :: (Ptr (TQAbstractListModel x0) -> CInt -> IO (Ptr (TQModelIndex t0))) -> IO (FunPtr (Ptr (TQAbstractListModel x0) -> CInt -> IO (Ptr (TQModelIndex t0))))

foreign import ccall "wrapper" wrapSetHandler_QAbstractListModel2_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QAbstractListModelSc a) (QAbstractListModel x0 -> Int -> IO (QModelIndex t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractListModel2 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractListModel2_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractListModel_setHandler2 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractListModel x0) -> CInt -> IO (Ptr (TQModelIndex t0))
    setHandlerWrapper x0 x1
      = do x0obj <- qAbstractListModelFromPtr x0
           let x1int = fromCInt x1
           let rv =
                if (objectIsNull x0obj)
                 then return $ objectCast x0obj
                 else _handler x0obj x1int
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

instance QsetHandler (QAbstractListModel ()) (QAbstractListModel x0 -> Int -> Int -> IO (QModelIndex t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractListModel3 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractListModel3_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractListModel_setHandler3 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractListModel x0) -> CInt -> CInt -> IO (Ptr (TQModelIndex t0))
    setHandlerWrapper x0 x1 x2
      = do x0obj <- qAbstractListModelFromPtr x0
           let x1int = fromCInt x1
           let x2int = fromCInt x2
           let rv =
                if (objectIsNull x0obj)
                 then return $ objectCast x0obj
                 else _handler x0obj x1int x2int
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

foreign import ccall "qtc_QAbstractListModel_setHandler3" qtc_QAbstractListModel_setHandler3 :: Ptr (TQAbstractListModel a) -> CWString -> Ptr (Ptr (TQAbstractListModel x0) -> CInt -> CInt -> IO (Ptr (TQModelIndex t0))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QAbstractListModel3 :: (Ptr (TQAbstractListModel x0) -> CInt -> CInt -> IO (Ptr (TQModelIndex t0))) -> IO (FunPtr (Ptr (TQAbstractListModel x0) -> CInt -> CInt -> IO (Ptr (TQModelIndex t0))))

foreign import ccall "wrapper" wrapSetHandler_QAbstractListModel3_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QAbstractListModelSc a) (QAbstractListModel x0 -> Int -> Int -> IO (QModelIndex t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractListModel3 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractListModel3_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractListModel_setHandler3 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractListModel x0) -> CInt -> CInt -> IO (Ptr (TQModelIndex t0))
    setHandlerWrapper x0 x1 x2
      = do x0obj <- qAbstractListModelFromPtr x0
           let x1int = fromCInt x1
           let x2int = fromCInt x2
           let rv =
                if (objectIsNull x0obj)
                 then return $ objectCast x0obj
                 else _handler x0obj x1int x2int
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

instance QsetHandler (QAbstractListModel ()) (QAbstractListModel x0 -> Int -> Int -> QModelIndex t3 -> IO (QModelIndex t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractListModel4 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractListModel4_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractListModel_setHandler4 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractListModel x0) -> CInt -> CInt -> Ptr (TQModelIndex t3) -> IO (Ptr (TQModelIndex t0))
    setHandlerWrapper x0 x1 x2 x3
      = do x0obj <- qAbstractListModelFromPtr x0
           let x1int = fromCInt x1
           let x2int = fromCInt x2
           x3obj <- objectFromPtr_nf x3
           let rv =
                if (objectIsNull x0obj)
                 then return $ objectCast x0obj
                 else _handler x0obj x1int x2int x3obj
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

foreign import ccall "qtc_QAbstractListModel_setHandler4" qtc_QAbstractListModel_setHandler4 :: Ptr (TQAbstractListModel a) -> CWString -> Ptr (Ptr (TQAbstractListModel x0) -> CInt -> CInt -> Ptr (TQModelIndex t3) -> IO (Ptr (TQModelIndex t0))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QAbstractListModel4 :: (Ptr (TQAbstractListModel x0) -> CInt -> CInt -> Ptr (TQModelIndex t3) -> IO (Ptr (TQModelIndex t0))) -> IO (FunPtr (Ptr (TQAbstractListModel x0) -> CInt -> CInt -> Ptr (TQModelIndex t3) -> IO (Ptr (TQModelIndex t0))))

foreign import ccall "wrapper" wrapSetHandler_QAbstractListModel4_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QAbstractListModelSc a) (QAbstractListModel x0 -> Int -> Int -> QModelIndex t3 -> IO (QModelIndex t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractListModel4 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractListModel4_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractListModel_setHandler4 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractListModel x0) -> CInt -> CInt -> Ptr (TQModelIndex t3) -> IO (Ptr (TQModelIndex t0))
    setHandlerWrapper x0 x1 x2 x3
      = do x0obj <- qAbstractListModelFromPtr x0
           let x1int = fromCInt x1
           let x2int = fromCInt x2
           x3obj <- objectFromPtr_nf x3
           let rv =
                if (objectIsNull x0obj)
                 then return $ objectCast x0obj
                 else _handler x0obj x1int x2int x3obj
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

instance Qindex_h (QAbstractListModel ()) ((Int)) where
 index_h x0 (x1)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractListModel_index cobj_x0 (toCInt x1)

foreign import ccall "qtc_QAbstractListModel_index" qtc_QAbstractListModel_index :: Ptr (TQAbstractListModel a) -> CInt -> IO (Ptr (TQModelIndex ()))

instance Qindex_h (QAbstractListModelSc a) ((Int)) where
 index_h x0 (x1)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractListModel_index cobj_x0 (toCInt x1)

instance Qindex_h (QAbstractListModel ()) ((Int, Int)) where
 index_h x0 (x1, x2)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractListModel_index1 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QAbstractListModel_index1" qtc_QAbstractListModel_index1 :: Ptr (TQAbstractListModel a) -> CInt -> CInt -> IO (Ptr (TQModelIndex ()))

instance Qindex_h (QAbstractListModelSc a) ((Int, Int)) where
 index_h x0 (x1, x2)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractListModel_index1 cobj_x0 (toCInt x1) (toCInt x2)

instance Qindex_h (QAbstractListModel ()) ((Int, Int, QModelIndex t3)) where
 index_h x0 (x1, x2, x3)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QAbstractListModel_index2 cobj_x0 (toCInt x1) (toCInt x2) cobj_x3

foreign import ccall "qtc_QAbstractListModel_index2" qtc_QAbstractListModel_index2 :: Ptr (TQAbstractListModel a) -> CInt -> CInt -> Ptr (TQModelIndex t3) -> IO (Ptr (TQModelIndex ()))

instance Qindex_h (QAbstractListModelSc a) ((Int, Int, QModelIndex t3)) where
 index_h x0 (x1, x2, x3)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QAbstractListModel_index2 cobj_x0 (toCInt x1) (toCInt x2) cobj_x3

instance QsetHandler (QAbstractListModel ()) (QAbstractListModel x0 -> QModelIndex t1 -> IO (QModelIndex t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractListModel5 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractListModel5_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractListModel_setHandler5 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractListModel x0) -> Ptr (TQModelIndex t1) -> IO (Ptr (TQModelIndex t0))
    setHandlerWrapper x0 x1
      = do x0obj <- qAbstractListModelFromPtr x0
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

foreign import ccall "qtc_QAbstractListModel_setHandler5" qtc_QAbstractListModel_setHandler5 :: Ptr (TQAbstractListModel a) -> CWString -> Ptr (Ptr (TQAbstractListModel x0) -> Ptr (TQModelIndex t1) -> IO (Ptr (TQModelIndex t0))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QAbstractListModel5 :: (Ptr (TQAbstractListModel x0) -> Ptr (TQModelIndex t1) -> IO (Ptr (TQModelIndex t0))) -> IO (FunPtr (Ptr (TQAbstractListModel x0) -> Ptr (TQModelIndex t1) -> IO (Ptr (TQModelIndex t0))))

foreign import ccall "wrapper" wrapSetHandler_QAbstractListModel5_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QAbstractListModelSc a) (QAbstractListModel x0 -> QModelIndex t1 -> IO (QModelIndex t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractListModel5 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractListModel5_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractListModel_setHandler5 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractListModel x0) -> Ptr (TQModelIndex t1) -> IO (Ptr (TQModelIndex t0))
    setHandlerWrapper x0 x1
      = do x0obj <- qAbstractListModelFromPtr x0
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

instance Qbuddy_h (QAbstractListModel ()) ((QModelIndex t1)) where
 buddy_h x0 (x1)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractListModel_buddy cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractListModel_buddy" qtc_QAbstractListModel_buddy :: Ptr (TQAbstractListModel a) -> Ptr (TQModelIndex t1) -> IO (Ptr (TQModelIndex ()))

instance Qbuddy_h (QAbstractListModelSc a) ((QModelIndex t1)) where
 buddy_h x0 (x1)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractListModel_buddy cobj_x0 cobj_x1

instance QsetHandler (QAbstractListModel ()) (QAbstractListModel x0 -> QModelIndex t1 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractListModel6 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractListModel6_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractListModel_setHandler6 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractListModel x0) -> Ptr (TQModelIndex t1) -> IO (CBool)
    setHandlerWrapper x0 x1
      = do x0obj <- qAbstractListModelFromPtr x0
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

foreign import ccall "qtc_QAbstractListModel_setHandler6" qtc_QAbstractListModel_setHandler6 :: Ptr (TQAbstractListModel a) -> CWString -> Ptr (Ptr (TQAbstractListModel x0) -> Ptr (TQModelIndex t1) -> IO (CBool)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QAbstractListModel6 :: (Ptr (TQAbstractListModel x0) -> Ptr (TQModelIndex t1) -> IO (CBool)) -> IO (FunPtr (Ptr (TQAbstractListModel x0) -> Ptr (TQModelIndex t1) -> IO (CBool)))

foreign import ccall "wrapper" wrapSetHandler_QAbstractListModel6_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QAbstractListModelSc a) (QAbstractListModel x0 -> QModelIndex t1 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractListModel6 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractListModel6_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractListModel_setHandler6 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractListModel x0) -> Ptr (TQModelIndex t1) -> IO (CBool)
    setHandlerWrapper x0 x1
      = do x0obj <- qAbstractListModelFromPtr x0
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

instance QcanFetchMore_h (QAbstractListModel ()) ((QModelIndex t1)) where
 canFetchMore_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractListModel_canFetchMore cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractListModel_canFetchMore" qtc_QAbstractListModel_canFetchMore :: Ptr (TQAbstractListModel a) -> Ptr (TQModelIndex t1) -> IO CBool

instance QcanFetchMore_h (QAbstractListModelSc a) ((QModelIndex t1)) where
 canFetchMore_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractListModel_canFetchMore cobj_x0 cobj_x1

instance QsetHandler (QAbstractListModel ()) (QAbstractListModel x0 -> IO (Int)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractListModel7 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractListModel7_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractListModel_setHandler7 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractListModel x0) -> IO (CInt)
    setHandlerWrapper x0
      = do x0obj <- qAbstractListModelFromPtr x0
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

foreign import ccall "qtc_QAbstractListModel_setHandler7" qtc_QAbstractListModel_setHandler7 :: Ptr (TQAbstractListModel a) -> CWString -> Ptr (Ptr (TQAbstractListModel x0) -> IO (CInt)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QAbstractListModel7 :: (Ptr (TQAbstractListModel x0) -> IO (CInt)) -> IO (FunPtr (Ptr (TQAbstractListModel x0) -> IO (CInt)))

foreign import ccall "wrapper" wrapSetHandler_QAbstractListModel7_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QAbstractListModelSc a) (QAbstractListModel x0 -> IO (Int)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractListModel7 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractListModel7_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractListModel_setHandler7 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractListModel x0) -> IO (CInt)
    setHandlerWrapper x0
      = do x0obj <- qAbstractListModelFromPtr x0
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

instance QsetHandler (QAbstractListModel ()) (QAbstractListModel x0 -> QModelIndex t1 -> IO (Int)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractListModel8 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractListModel8_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractListModel_setHandler8 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractListModel x0) -> Ptr (TQModelIndex t1) -> IO (CInt)
    setHandlerWrapper x0 x1
      = do x0obj <- qAbstractListModelFromPtr x0
           x1obj <- objectFromPtr_nf x1
           let rv =
                if (objectIsNull x0obj)
                 then return 0
                 else _handler x0obj x1obj
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

foreign import ccall "qtc_QAbstractListModel_setHandler8" qtc_QAbstractListModel_setHandler8 :: Ptr (TQAbstractListModel a) -> CWString -> Ptr (Ptr (TQAbstractListModel x0) -> Ptr (TQModelIndex t1) -> IO (CInt)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QAbstractListModel8 :: (Ptr (TQAbstractListModel x0) -> Ptr (TQModelIndex t1) -> IO (CInt)) -> IO (FunPtr (Ptr (TQAbstractListModel x0) -> Ptr (TQModelIndex t1) -> IO (CInt)))

foreign import ccall "wrapper" wrapSetHandler_QAbstractListModel8_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QAbstractListModelSc a) (QAbstractListModel x0 -> QModelIndex t1 -> IO (Int)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractListModel8 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractListModel8_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractListModel_setHandler8 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractListModel x0) -> Ptr (TQModelIndex t1) -> IO (CInt)
    setHandlerWrapper x0 x1
      = do x0obj <- qAbstractListModelFromPtr x0
           x1obj <- objectFromPtr_nf x1
           let rv =
                if (objectIsNull x0obj)
                 then return 0
                 else _handler x0obj x1obj
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

instance QcolumnCount_h (QAbstractListModel ()) (()) where
 columnCount_h x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractListModel_columnCount cobj_x0

foreign import ccall "qtc_QAbstractListModel_columnCount" qtc_QAbstractListModel_columnCount :: Ptr (TQAbstractListModel a) -> IO CInt

instance QcolumnCount_h (QAbstractListModelSc a) (()) where
 columnCount_h x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractListModel_columnCount cobj_x0

instance QcolumnCount_h (QAbstractListModel ()) ((QModelIndex t1)) where
 columnCount_h x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractListModel_columnCount1 cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractListModel_columnCount1" qtc_QAbstractListModel_columnCount1 :: Ptr (TQAbstractListModel a) -> Ptr (TQModelIndex t1) -> IO CInt

instance QcolumnCount_h (QAbstractListModelSc a) ((QModelIndex t1)) where
 columnCount_h x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractListModel_columnCount1 cobj_x0 cobj_x1

instance QsetHandler (QAbstractListModel ()) (QAbstractListModel x0 -> QModelIndex t1 -> IO (QVariant t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractListModel9 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractListModel9_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractListModel_setHandler9 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractListModel x0) -> Ptr (TQModelIndex t1) -> IO (Ptr (TQVariant t0))
    setHandlerWrapper x0 x1
      = do x0obj <- qAbstractListModelFromPtr x0
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

foreign import ccall "qtc_QAbstractListModel_setHandler9" qtc_QAbstractListModel_setHandler9 :: Ptr (TQAbstractListModel a) -> CWString -> Ptr (Ptr (TQAbstractListModel x0) -> Ptr (TQModelIndex t1) -> IO (Ptr (TQVariant t0))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QAbstractListModel9 :: (Ptr (TQAbstractListModel x0) -> Ptr (TQModelIndex t1) -> IO (Ptr (TQVariant t0))) -> IO (FunPtr (Ptr (TQAbstractListModel x0) -> Ptr (TQModelIndex t1) -> IO (Ptr (TQVariant t0))))

foreign import ccall "wrapper" wrapSetHandler_QAbstractListModel9_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QAbstractListModelSc a) (QAbstractListModel x0 -> QModelIndex t1 -> IO (QVariant t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractListModel9 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractListModel9_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractListModel_setHandler9 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractListModel x0) -> Ptr (TQModelIndex t1) -> IO (Ptr (TQVariant t0))
    setHandlerWrapper x0 x1
      = do x0obj <- qAbstractListModelFromPtr x0
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

instance QsetHandler (QAbstractListModel ()) (QAbstractListModel x0 -> QModelIndex t1 -> Int -> IO (QVariant t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractListModel10 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractListModel10_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractListModel_setHandler10 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractListModel x0) -> Ptr (TQModelIndex t1) -> CInt -> IO (Ptr (TQVariant t0))
    setHandlerWrapper x0 x1 x2
      = do x0obj <- qAbstractListModelFromPtr x0
           x1obj <- objectFromPtr_nf x1
           let x2int = fromCInt x2
           let rv =
                if (objectIsNull x0obj)
                 then return $ objectCast x0obj
                 else _handler x0obj x1obj x2int
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

foreign import ccall "qtc_QAbstractListModel_setHandler10" qtc_QAbstractListModel_setHandler10 :: Ptr (TQAbstractListModel a) -> CWString -> Ptr (Ptr (TQAbstractListModel x0) -> Ptr (TQModelIndex t1) -> CInt -> IO (Ptr (TQVariant t0))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QAbstractListModel10 :: (Ptr (TQAbstractListModel x0) -> Ptr (TQModelIndex t1) -> CInt -> IO (Ptr (TQVariant t0))) -> IO (FunPtr (Ptr (TQAbstractListModel x0) -> Ptr (TQModelIndex t1) -> CInt -> IO (Ptr (TQVariant t0))))

foreign import ccall "wrapper" wrapSetHandler_QAbstractListModel10_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QAbstractListModelSc a) (QAbstractListModel x0 -> QModelIndex t1 -> Int -> IO (QVariant t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractListModel10 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractListModel10_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractListModel_setHandler10 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractListModel x0) -> Ptr (TQModelIndex t1) -> CInt -> IO (Ptr (TQVariant t0))
    setHandlerWrapper x0 x1 x2
      = do x0obj <- qAbstractListModelFromPtr x0
           x1obj <- objectFromPtr_nf x1
           let x2int = fromCInt x2
           let rv =
                if (objectIsNull x0obj)
                 then return $ objectCast x0obj
                 else _handler x0obj x1obj x2int
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

instance Qqdata_h (QAbstractListModel ()) ((QModelIndex t1)) where
 qdata_h x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractListModel_data cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractListModel_data" qtc_QAbstractListModel_data :: Ptr (TQAbstractListModel a) -> Ptr (TQModelIndex t1) -> IO (Ptr (TQVariant ()))

instance Qqdata_h (QAbstractListModelSc a) ((QModelIndex t1)) where
 qdata_h x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractListModel_data cobj_x0 cobj_x1

instance Qqdata_h (QAbstractListModel ()) ((QModelIndex t1, Int)) where
 qdata_h x0 (x1, x2)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractListModel_data1 cobj_x0 cobj_x1 (toCInt x2)

foreign import ccall "qtc_QAbstractListModel_data1" qtc_QAbstractListModel_data1 :: Ptr (TQAbstractListModel a) -> Ptr (TQModelIndex t1) -> CInt -> IO (Ptr (TQVariant ()))

instance Qqdata_h (QAbstractListModelSc a) ((QModelIndex t1, Int)) where
 qdata_h x0 (x1, x2)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractListModel_data1 cobj_x0 cobj_x1 (toCInt x2)

instance QsetHandler (QAbstractListModel ()) (QAbstractListModel x0 -> QModelIndex t1 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractListModel11 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractListModel11_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractListModel_setHandler11 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractListModel x0) -> Ptr (TQModelIndex t1) -> IO ()
    setHandlerWrapper x0 x1
      = do x0obj <- qAbstractListModelFromPtr x0
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

foreign import ccall "qtc_QAbstractListModel_setHandler11" qtc_QAbstractListModel_setHandler11 :: Ptr (TQAbstractListModel a) -> CWString -> Ptr (Ptr (TQAbstractListModel x0) -> Ptr (TQModelIndex t1) -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QAbstractListModel11 :: (Ptr (TQAbstractListModel x0) -> Ptr (TQModelIndex t1) -> IO ()) -> IO (FunPtr (Ptr (TQAbstractListModel x0) -> Ptr (TQModelIndex t1) -> IO ()))

foreign import ccall "wrapper" wrapSetHandler_QAbstractListModel11_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QAbstractListModelSc a) (QAbstractListModel x0 -> QModelIndex t1 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractListModel11 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractListModel11_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractListModel_setHandler11 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractListModel x0) -> Ptr (TQModelIndex t1) -> IO ()
    setHandlerWrapper x0 x1
      = do x0obj <- qAbstractListModelFromPtr x0
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

instance QfetchMore_h (QAbstractListModel ()) ((QModelIndex t1)) where
 fetchMore_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractListModel_fetchMore cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractListModel_fetchMore" qtc_QAbstractListModel_fetchMore :: Ptr (TQAbstractListModel a) -> Ptr (TQModelIndex t1) -> IO ()

instance QfetchMore_h (QAbstractListModelSc a) ((QModelIndex t1)) where
 fetchMore_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractListModel_fetchMore cobj_x0 cobj_x1

instance QsetHandler (QAbstractListModel ()) (QAbstractListModel x0 -> QModelIndex t1 -> IO (ItemFlags)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractListModel12 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractListModel12_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractListModel_setHandler12 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractListModel x0) -> Ptr (TQModelIndex t1) -> IO (CLong)
    setHandlerWrapper x0 x1
      = do x0obj <- qAbstractListModelFromPtr x0
           x1obj <- objectFromPtr_nf x1
           let rv =
                if (objectIsNull x0obj)
                 then withQFlagsResult $ return $ toCLong 0
                 else _handler x0obj x1obj
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

foreign import ccall "qtc_QAbstractListModel_setHandler12" qtc_QAbstractListModel_setHandler12 :: Ptr (TQAbstractListModel a) -> CWString -> Ptr (Ptr (TQAbstractListModel x0) -> Ptr (TQModelIndex t1) -> IO (CLong)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QAbstractListModel12 :: (Ptr (TQAbstractListModel x0) -> Ptr (TQModelIndex t1) -> IO (CLong)) -> IO (FunPtr (Ptr (TQAbstractListModel x0) -> Ptr (TQModelIndex t1) -> IO (CLong)))

foreign import ccall "wrapper" wrapSetHandler_QAbstractListModel12_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QAbstractListModelSc a) (QAbstractListModel x0 -> QModelIndex t1 -> IO (ItemFlags)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractListModel12 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractListModel12_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractListModel_setHandler12 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractListModel x0) -> Ptr (TQModelIndex t1) -> IO (CLong)
    setHandlerWrapper x0 x1
      = do x0obj <- qAbstractListModelFromPtr x0
           x1obj <- objectFromPtr_nf x1
           let rv =
                if (objectIsNull x0obj)
                 then withQFlagsResult $ return $ toCLong 0
                 else _handler x0obj x1obj
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

instance Qflags_h (QAbstractListModel ()) ((QModelIndex t1)) where
 flags_h x0 (x1)
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractListModel_flags cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractListModel_flags" qtc_QAbstractListModel_flags :: Ptr (TQAbstractListModel a) -> Ptr (TQModelIndex t1) -> IO CLong

instance Qflags_h (QAbstractListModelSc a) ((QModelIndex t1)) where
 flags_h x0 (x1)
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractListModel_flags cobj_x0 cobj_x1

instance QsetHandler (QAbstractListModel ()) (QAbstractListModel x0 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractListModel13 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractListModel13_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractListModel_setHandler13 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractListModel x0) -> IO (CBool)
    setHandlerWrapper x0
      = do x0obj <- qAbstractListModelFromPtr x0
           let rv =
                if (objectIsNull x0obj)
                 then return False
                 else _handler x0obj
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

foreign import ccall "qtc_QAbstractListModel_setHandler13" qtc_QAbstractListModel_setHandler13 :: Ptr (TQAbstractListModel a) -> CWString -> Ptr (Ptr (TQAbstractListModel x0) -> IO (CBool)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QAbstractListModel13 :: (Ptr (TQAbstractListModel x0) -> IO (CBool)) -> IO (FunPtr (Ptr (TQAbstractListModel x0) -> IO (CBool)))

foreign import ccall "wrapper" wrapSetHandler_QAbstractListModel13_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QAbstractListModelSc a) (QAbstractListModel x0 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractListModel13 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractListModel13_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractListModel_setHandler13 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractListModel x0) -> IO (CBool)
    setHandlerWrapper x0
      = do x0obj <- qAbstractListModelFromPtr x0
           let rv =
                if (objectIsNull x0obj)
                 then return False
                 else _handler x0obj
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

instance QhasChildren_h (QAbstractListModel ()) (()) where
 hasChildren_h x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractListModel_hasChildren cobj_x0

foreign import ccall "qtc_QAbstractListModel_hasChildren" qtc_QAbstractListModel_hasChildren :: Ptr (TQAbstractListModel a) -> IO CBool

instance QhasChildren_h (QAbstractListModelSc a) (()) where
 hasChildren_h x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractListModel_hasChildren cobj_x0

instance QhasChildren_h (QAbstractListModel ()) ((QModelIndex t1)) where
 hasChildren_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractListModel_hasChildren1 cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractListModel_hasChildren1" qtc_QAbstractListModel_hasChildren1 :: Ptr (TQAbstractListModel a) -> Ptr (TQModelIndex t1) -> IO CBool

instance QhasChildren_h (QAbstractListModelSc a) ((QModelIndex t1)) where
 hasChildren_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractListModel_hasChildren1 cobj_x0 cobj_x1

instance QsetHandler (QAbstractListModel ()) (QAbstractListModel x0 -> Int -> QtOrientation -> IO (QVariant t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractListModel14 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractListModel14_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractListModel_setHandler14 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractListModel x0) -> CInt -> CLong -> IO (Ptr (TQVariant t0))
    setHandlerWrapper x0 x1 x2
      = do x0obj <- qAbstractListModelFromPtr x0
           let x1int = fromCInt x1
           let x2enum = qEnum_fromInt $ fromCLong x2
           let rv =
                if (objectIsNull x0obj)
                 then return $ objectCast x0obj
                 else _handler x0obj x1int x2enum
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

foreign import ccall "qtc_QAbstractListModel_setHandler14" qtc_QAbstractListModel_setHandler14 :: Ptr (TQAbstractListModel a) -> CWString -> Ptr (Ptr (TQAbstractListModel x0) -> CInt -> CLong -> IO (Ptr (TQVariant t0))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QAbstractListModel14 :: (Ptr (TQAbstractListModel x0) -> CInt -> CLong -> IO (Ptr (TQVariant t0))) -> IO (FunPtr (Ptr (TQAbstractListModel x0) -> CInt -> CLong -> IO (Ptr (TQVariant t0))))

foreign import ccall "wrapper" wrapSetHandler_QAbstractListModel14_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QAbstractListModelSc a) (QAbstractListModel x0 -> Int -> QtOrientation -> IO (QVariant t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractListModel14 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractListModel14_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractListModel_setHandler14 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractListModel x0) -> CInt -> CLong -> IO (Ptr (TQVariant t0))
    setHandlerWrapper x0 x1 x2
      = do x0obj <- qAbstractListModelFromPtr x0
           let x1int = fromCInt x1
           let x2enum = qEnum_fromInt $ fromCLong x2
           let rv =
                if (objectIsNull x0obj)
                 then return $ objectCast x0obj
                 else _handler x0obj x1int x2enum
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

instance QsetHandler (QAbstractListModel ()) (QAbstractListModel x0 -> Int -> QtOrientation -> Int -> IO (QVariant t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractListModel15 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractListModel15_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractListModel_setHandler15 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractListModel x0) -> CInt -> CLong -> CInt -> IO (Ptr (TQVariant t0))
    setHandlerWrapper x0 x1 x2 x3
      = do x0obj <- qAbstractListModelFromPtr x0
           let x1int = fromCInt x1
           let x2enum = qEnum_fromInt $ fromCLong x2
           let x3int = fromCInt x3
           let rv =
                if (objectIsNull x0obj)
                 then return $ objectCast x0obj
                 else _handler x0obj x1int x2enum x3int
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

foreign import ccall "qtc_QAbstractListModel_setHandler15" qtc_QAbstractListModel_setHandler15 :: Ptr (TQAbstractListModel a) -> CWString -> Ptr (Ptr (TQAbstractListModel x0) -> CInt -> CLong -> CInt -> IO (Ptr (TQVariant t0))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QAbstractListModel15 :: (Ptr (TQAbstractListModel x0) -> CInt -> CLong -> CInt -> IO (Ptr (TQVariant t0))) -> IO (FunPtr (Ptr (TQAbstractListModel x0) -> CInt -> CLong -> CInt -> IO (Ptr (TQVariant t0))))

foreign import ccall "wrapper" wrapSetHandler_QAbstractListModel15_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QAbstractListModelSc a) (QAbstractListModel x0 -> Int -> QtOrientation -> Int -> IO (QVariant t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractListModel15 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractListModel15_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractListModel_setHandler15 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractListModel x0) -> CInt -> CLong -> CInt -> IO (Ptr (TQVariant t0))
    setHandlerWrapper x0 x1 x2 x3
      = do x0obj <- qAbstractListModelFromPtr x0
           let x1int = fromCInt x1
           let x2enum = qEnum_fromInt $ fromCLong x2
           let x3int = fromCInt x3
           let rv =
                if (objectIsNull x0obj)
                 then return $ objectCast x0obj
                 else _handler x0obj x1int x2enum x3int
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

instance QheaderData_h (QAbstractListModel ()) ((Int, QtOrientation)) where
 headerData_h x0 (x1, x2)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractListModel_headerData cobj_x0 (toCInt x1) (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QAbstractListModel_headerData" qtc_QAbstractListModel_headerData :: Ptr (TQAbstractListModel a) -> CInt -> CLong -> IO (Ptr (TQVariant ()))

instance QheaderData_h (QAbstractListModelSc a) ((Int, QtOrientation)) where
 headerData_h x0 (x1, x2)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractListModel_headerData cobj_x0 (toCInt x1) (toCLong $ qEnum_toInt x2)

instance QheaderData_h (QAbstractListModel ()) ((Int, QtOrientation, Int)) where
 headerData_h x0 (x1, x2, x3)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractListModel_headerData1 cobj_x0 (toCInt x1) (toCLong $ qEnum_toInt x2) (toCInt x3)

foreign import ccall "qtc_QAbstractListModel_headerData1" qtc_QAbstractListModel_headerData1 :: Ptr (TQAbstractListModel a) -> CInt -> CLong -> CInt -> IO (Ptr (TQVariant ()))

instance QheaderData_h (QAbstractListModelSc a) ((Int, QtOrientation, Int)) where
 headerData_h x0 (x1, x2, x3)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractListModel_headerData1 cobj_x0 (toCInt x1) (toCLong $ qEnum_toInt x2) (toCInt x3)

instance QsetHandler (QAbstractListModel ()) (QAbstractListModel x0 -> Int -> Int -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractListModel16 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractListModel16_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractListModel_setHandler16 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractListModel x0) -> CInt -> CInt -> IO (CBool)
    setHandlerWrapper x0 x1 x2
      = do x0obj <- qAbstractListModelFromPtr x0
           let x1int = fromCInt x1
           let x2int = fromCInt x2
           let rv =
                if (objectIsNull x0obj)
                 then return False
                 else _handler x0obj x1int x2int
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

foreign import ccall "qtc_QAbstractListModel_setHandler16" qtc_QAbstractListModel_setHandler16 :: Ptr (TQAbstractListModel a) -> CWString -> Ptr (Ptr (TQAbstractListModel x0) -> CInt -> CInt -> IO (CBool)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QAbstractListModel16 :: (Ptr (TQAbstractListModel x0) -> CInt -> CInt -> IO (CBool)) -> IO (FunPtr (Ptr (TQAbstractListModel x0) -> CInt -> CInt -> IO (CBool)))

foreign import ccall "wrapper" wrapSetHandler_QAbstractListModel16_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QAbstractListModelSc a) (QAbstractListModel x0 -> Int -> Int -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractListModel16 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractListModel16_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractListModel_setHandler16 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractListModel x0) -> CInt -> CInt -> IO (CBool)
    setHandlerWrapper x0 x1 x2
      = do x0obj <- qAbstractListModelFromPtr x0
           let x1int = fromCInt x1
           let x2int = fromCInt x2
           let rv =
                if (objectIsNull x0obj)
                 then return False
                 else _handler x0obj x1int x2int
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

instance QsetHandler (QAbstractListModel ()) (QAbstractListModel x0 -> Int -> Int -> QModelIndex t3 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractListModel17 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractListModel17_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractListModel_setHandler17 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractListModel x0) -> CInt -> CInt -> Ptr (TQModelIndex t3) -> IO (CBool)
    setHandlerWrapper x0 x1 x2 x3
      = do x0obj <- qAbstractListModelFromPtr x0
           let x1int = fromCInt x1
           let x2int = fromCInt x2
           x3obj <- objectFromPtr_nf x3
           let rv =
                if (objectIsNull x0obj)
                 then return False
                 else _handler x0obj x1int x2int x3obj
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

foreign import ccall "qtc_QAbstractListModel_setHandler17" qtc_QAbstractListModel_setHandler17 :: Ptr (TQAbstractListModel a) -> CWString -> Ptr (Ptr (TQAbstractListModel x0) -> CInt -> CInt -> Ptr (TQModelIndex t3) -> IO (CBool)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QAbstractListModel17 :: (Ptr (TQAbstractListModel x0) -> CInt -> CInt -> Ptr (TQModelIndex t3) -> IO (CBool)) -> IO (FunPtr (Ptr (TQAbstractListModel x0) -> CInt -> CInt -> Ptr (TQModelIndex t3) -> IO (CBool)))

foreign import ccall "wrapper" wrapSetHandler_QAbstractListModel17_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QAbstractListModelSc a) (QAbstractListModel x0 -> Int -> Int -> QModelIndex t3 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractListModel17 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractListModel17_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractListModel_setHandler17 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractListModel x0) -> CInt -> CInt -> Ptr (TQModelIndex t3) -> IO (CBool)
    setHandlerWrapper x0 x1 x2 x3
      = do x0obj <- qAbstractListModelFromPtr x0
           let x1int = fromCInt x1
           let x2int = fromCInt x2
           x3obj <- objectFromPtr_nf x3
           let rv =
                if (objectIsNull x0obj)
                 then return False
                 else _handler x0obj x1int x2int x3obj
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

instance QinsertColumns_h (QAbstractListModel ()) ((Int, Int)) where
 insertColumns_h x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractListModel_insertColumns cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QAbstractListModel_insertColumns" qtc_QAbstractListModel_insertColumns :: Ptr (TQAbstractListModel a) -> CInt -> CInt -> IO CBool

instance QinsertColumns_h (QAbstractListModelSc a) ((Int, Int)) where
 insertColumns_h x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractListModel_insertColumns cobj_x0 (toCInt x1) (toCInt x2)

instance QinsertColumns_h (QAbstractListModel ()) ((Int, Int, QModelIndex t3)) where
 insertColumns_h x0 (x1, x2, x3)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QAbstractListModel_insertColumns1 cobj_x0 (toCInt x1) (toCInt x2) cobj_x3

foreign import ccall "qtc_QAbstractListModel_insertColumns1" qtc_QAbstractListModel_insertColumns1 :: Ptr (TQAbstractListModel a) -> CInt -> CInt -> Ptr (TQModelIndex t3) -> IO CBool

instance QinsertColumns_h (QAbstractListModelSc a) ((Int, Int, QModelIndex t3)) where
 insertColumns_h x0 (x1, x2, x3)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QAbstractListModel_insertColumns1 cobj_x0 (toCInt x1) (toCInt x2) cobj_x3

instance QinsertRows_h (QAbstractListModel ()) ((Int, Int)) where
 insertRows_h x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractListModel_insertRows cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QAbstractListModel_insertRows" qtc_QAbstractListModel_insertRows :: Ptr (TQAbstractListModel a) -> CInt -> CInt -> IO CBool

instance QinsertRows_h (QAbstractListModelSc a) ((Int, Int)) where
 insertRows_h x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractListModel_insertRows cobj_x0 (toCInt x1) (toCInt x2)

instance QinsertRows_h (QAbstractListModel ()) ((Int, Int, QModelIndex t3)) where
 insertRows_h x0 (x1, x2, x3)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QAbstractListModel_insertRows1 cobj_x0 (toCInt x1) (toCInt x2) cobj_x3

foreign import ccall "qtc_QAbstractListModel_insertRows1" qtc_QAbstractListModel_insertRows1 :: Ptr (TQAbstractListModel a) -> CInt -> CInt -> Ptr (TQModelIndex t3) -> IO CBool

instance QinsertRows_h (QAbstractListModelSc a) ((Int, Int, QModelIndex t3)) where
 insertRows_h x0 (x1, x2, x3)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QAbstractListModel_insertRows1 cobj_x0 (toCInt x1) (toCInt x2) cobj_x3

instance Qparent_h (QAbstractListModel ()) ((QModelIndex t1)) where
 parent_h x0 (x1)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractListModel_parent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractListModel_parent" qtc_QAbstractListModel_parent :: Ptr (TQAbstractListModel a) -> Ptr (TQModelIndex t1) -> IO (Ptr (TQModelIndex ()))

instance Qparent_h (QAbstractListModelSc a) ((QModelIndex t1)) where
 parent_h x0 (x1)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractListModel_parent cobj_x0 cobj_x1

instance QremoveColumns_h (QAbstractListModel ()) ((Int, Int)) where
 removeColumns_h x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractListModel_removeColumns cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QAbstractListModel_removeColumns" qtc_QAbstractListModel_removeColumns :: Ptr (TQAbstractListModel a) -> CInt -> CInt -> IO CBool

instance QremoveColumns_h (QAbstractListModelSc a) ((Int, Int)) where
 removeColumns_h x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractListModel_removeColumns cobj_x0 (toCInt x1) (toCInt x2)

instance QremoveColumns_h (QAbstractListModel ()) ((Int, Int, QModelIndex t3)) where
 removeColumns_h x0 (x1, x2, x3)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QAbstractListModel_removeColumns1 cobj_x0 (toCInt x1) (toCInt x2) cobj_x3

foreign import ccall "qtc_QAbstractListModel_removeColumns1" qtc_QAbstractListModel_removeColumns1 :: Ptr (TQAbstractListModel a) -> CInt -> CInt -> Ptr (TQModelIndex t3) -> IO CBool

instance QremoveColumns_h (QAbstractListModelSc a) ((Int, Int, QModelIndex t3)) where
 removeColumns_h x0 (x1, x2, x3)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QAbstractListModel_removeColumns1 cobj_x0 (toCInt x1) (toCInt x2) cobj_x3

instance QremoveRows_h (QAbstractListModel ()) ((Int, Int)) where
 removeRows_h x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractListModel_removeRows cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QAbstractListModel_removeRows" qtc_QAbstractListModel_removeRows :: Ptr (TQAbstractListModel a) -> CInt -> CInt -> IO CBool

instance QremoveRows_h (QAbstractListModelSc a) ((Int, Int)) where
 removeRows_h x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractListModel_removeRows cobj_x0 (toCInt x1) (toCInt x2)

instance QremoveRows_h (QAbstractListModel ()) ((Int, Int, QModelIndex t3)) where
 removeRows_h x0 (x1, x2, x3)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QAbstractListModel_removeRows1 cobj_x0 (toCInt x1) (toCInt x2) cobj_x3

foreign import ccall "qtc_QAbstractListModel_removeRows1" qtc_QAbstractListModel_removeRows1 :: Ptr (TQAbstractListModel a) -> CInt -> CInt -> Ptr (TQModelIndex t3) -> IO CBool

instance QremoveRows_h (QAbstractListModelSc a) ((Int, Int, QModelIndex t3)) where
 removeRows_h x0 (x1, x2, x3)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QAbstractListModel_removeRows1 cobj_x0 (toCInt x1) (toCInt x2) cobj_x3

instance QsetHandler (QAbstractListModel ()) (QAbstractListModel x0 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractListModel18 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractListModel18_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractListModel_setHandler18 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractListModel x0) -> IO ()
    setHandlerWrapper x0
      = do x0obj <- qAbstractListModelFromPtr x0
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

foreign import ccall "qtc_QAbstractListModel_setHandler18" qtc_QAbstractListModel_setHandler18 :: Ptr (TQAbstractListModel a) -> CWString -> Ptr (Ptr (TQAbstractListModel x0) -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QAbstractListModel18 :: (Ptr (TQAbstractListModel x0) -> IO ()) -> IO (FunPtr (Ptr (TQAbstractListModel x0) -> IO ()))

foreign import ccall "wrapper" wrapSetHandler_QAbstractListModel18_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QAbstractListModelSc a) (QAbstractListModel x0 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractListModel18 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractListModel18_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractListModel_setHandler18 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractListModel x0) -> IO ()
    setHandlerWrapper x0
      = do x0obj <- qAbstractListModelFromPtr x0
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

instance Qrevert_h (QAbstractListModel ()) (()) where
 revert_h x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractListModel_revert cobj_x0

foreign import ccall "qtc_QAbstractListModel_revert" qtc_QAbstractListModel_revert :: Ptr (TQAbstractListModel a) -> IO ()

instance Qrevert_h (QAbstractListModelSc a) (()) where
 revert_h x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractListModel_revert cobj_x0

instance QrowCount_h (QAbstractListModel ()) (()) where
 rowCount_h x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractListModel_rowCount cobj_x0

foreign import ccall "qtc_QAbstractListModel_rowCount" qtc_QAbstractListModel_rowCount :: Ptr (TQAbstractListModel a) -> IO CInt

instance QrowCount_h (QAbstractListModelSc a) (()) where
 rowCount_h x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractListModel_rowCount cobj_x0

instance QrowCount_h (QAbstractListModel ()) ((QModelIndex t1)) where
 rowCount_h x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractListModel_rowCount1 cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractListModel_rowCount1" qtc_QAbstractListModel_rowCount1 :: Ptr (TQAbstractListModel a) -> Ptr (TQModelIndex t1) -> IO CInt

instance QrowCount_h (QAbstractListModelSc a) ((QModelIndex t1)) where
 rowCount_h x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractListModel_rowCount1 cobj_x0 cobj_x1

instance QsetHandler (QAbstractListModel ()) (QAbstractListModel x0 -> QModelIndex t1 -> QVariant t2 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractListModel19 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractListModel19_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractListModel_setHandler19 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractListModel x0) -> Ptr (TQModelIndex t1) -> Ptr (TQVariant t2) -> IO (CBool)
    setHandlerWrapper x0 x1 x2
      = do x0obj <- qAbstractListModelFromPtr x0
           x1obj <- objectFromPtr_nf x1
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

foreign import ccall "qtc_QAbstractListModel_setHandler19" qtc_QAbstractListModel_setHandler19 :: Ptr (TQAbstractListModel a) -> CWString -> Ptr (Ptr (TQAbstractListModel x0) -> Ptr (TQModelIndex t1) -> Ptr (TQVariant t2) -> IO (CBool)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QAbstractListModel19 :: (Ptr (TQAbstractListModel x0) -> Ptr (TQModelIndex t1) -> Ptr (TQVariant t2) -> IO (CBool)) -> IO (FunPtr (Ptr (TQAbstractListModel x0) -> Ptr (TQModelIndex t1) -> Ptr (TQVariant t2) -> IO (CBool)))

foreign import ccall "wrapper" wrapSetHandler_QAbstractListModel19_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QAbstractListModelSc a) (QAbstractListModel x0 -> QModelIndex t1 -> QVariant t2 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractListModel19 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractListModel19_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractListModel_setHandler19 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractListModel x0) -> Ptr (TQModelIndex t1) -> Ptr (TQVariant t2) -> IO (CBool)
    setHandlerWrapper x0 x1 x2
      = do x0obj <- qAbstractListModelFromPtr x0
           x1obj <- objectFromPtr_nf x1
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

instance QsetHandler (QAbstractListModel ()) (QAbstractListModel x0 -> QModelIndex t1 -> QVariant t2 -> Int -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractListModel20 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractListModel20_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractListModel_setHandler20 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractListModel x0) -> Ptr (TQModelIndex t1) -> Ptr (TQVariant t2) -> CInt -> IO (CBool)
    setHandlerWrapper x0 x1 x2 x3
      = do x0obj <- qAbstractListModelFromPtr x0
           x1obj <- objectFromPtr_nf x1
           x2obj <- objectFromPtr_nf x2
           let x3int = fromCInt x3
           let rv =
                if (objectIsNull x0obj)
                 then return False
                 else _handler x0obj x1obj x2obj x3int
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

foreign import ccall "qtc_QAbstractListModel_setHandler20" qtc_QAbstractListModel_setHandler20 :: Ptr (TQAbstractListModel a) -> CWString -> Ptr (Ptr (TQAbstractListModel x0) -> Ptr (TQModelIndex t1) -> Ptr (TQVariant t2) -> CInt -> IO (CBool)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QAbstractListModel20 :: (Ptr (TQAbstractListModel x0) -> Ptr (TQModelIndex t1) -> Ptr (TQVariant t2) -> CInt -> IO (CBool)) -> IO (FunPtr (Ptr (TQAbstractListModel x0) -> Ptr (TQModelIndex t1) -> Ptr (TQVariant t2) -> CInt -> IO (CBool)))

foreign import ccall "wrapper" wrapSetHandler_QAbstractListModel20_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QAbstractListModelSc a) (QAbstractListModel x0 -> QModelIndex t1 -> QVariant t2 -> Int -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractListModel20 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractListModel20_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractListModel_setHandler20 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractListModel x0) -> Ptr (TQModelIndex t1) -> Ptr (TQVariant t2) -> CInt -> IO (CBool)
    setHandlerWrapper x0 x1 x2 x3
      = do x0obj <- qAbstractListModelFromPtr x0
           x1obj <- objectFromPtr_nf x1
           x2obj <- objectFromPtr_nf x2
           let x3int = fromCInt x3
           let rv =
                if (objectIsNull x0obj)
                 then return False
                 else _handler x0obj x1obj x2obj x3int
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

instance QsetData_h (QAbstractListModel ()) ((QModelIndex t1, QVariant t2)) (IO (Bool)) where
 setData_h x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QAbstractListModel_setData cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QAbstractListModel_setData" qtc_QAbstractListModel_setData :: Ptr (TQAbstractListModel a) -> Ptr (TQModelIndex t1) -> Ptr (TQVariant t2) -> IO CBool

instance QsetData_h (QAbstractListModelSc a) ((QModelIndex t1, QVariant t2)) (IO (Bool)) where
 setData_h x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QAbstractListModel_setData cobj_x0 cobj_x1 cobj_x2

instance QsetData_h (QAbstractListModel ()) ((QModelIndex t1, QVariant t2, Int)) (IO (Bool)) where
 setData_h x0 (x1, x2, x3)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QAbstractListModel_setData1 cobj_x0 cobj_x1 cobj_x2 (toCInt x3)

foreign import ccall "qtc_QAbstractListModel_setData1" qtc_QAbstractListModel_setData1 :: Ptr (TQAbstractListModel a) -> Ptr (TQModelIndex t1) -> Ptr (TQVariant t2) -> CInt -> IO CBool

instance QsetData_h (QAbstractListModelSc a) ((QModelIndex t1, QVariant t2, Int)) (IO (Bool)) where
 setData_h x0 (x1, x2, x3)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QAbstractListModel_setData1 cobj_x0 cobj_x1 cobj_x2 (toCInt x3)

instance QsetHandler (QAbstractListModel ()) (QAbstractListModel x0 -> Int -> QtOrientation -> QVariant t3 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractListModel21 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractListModel21_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractListModel_setHandler21 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractListModel x0) -> CInt -> CLong -> Ptr (TQVariant t3) -> IO (CBool)
    setHandlerWrapper x0 x1 x2 x3
      = do x0obj <- qAbstractListModelFromPtr x0
           let x1int = fromCInt x1
           let x2enum = qEnum_fromInt $ fromCLong x2
           x3obj <- objectFromPtr_nf x3
           let rv =
                if (objectIsNull x0obj)
                 then return False
                 else _handler x0obj x1int x2enum x3obj
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

foreign import ccall "qtc_QAbstractListModel_setHandler21" qtc_QAbstractListModel_setHandler21 :: Ptr (TQAbstractListModel a) -> CWString -> Ptr (Ptr (TQAbstractListModel x0) -> CInt -> CLong -> Ptr (TQVariant t3) -> IO (CBool)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QAbstractListModel21 :: (Ptr (TQAbstractListModel x0) -> CInt -> CLong -> Ptr (TQVariant t3) -> IO (CBool)) -> IO (FunPtr (Ptr (TQAbstractListModel x0) -> CInt -> CLong -> Ptr (TQVariant t3) -> IO (CBool)))

foreign import ccall "wrapper" wrapSetHandler_QAbstractListModel21_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QAbstractListModelSc a) (QAbstractListModel x0 -> Int -> QtOrientation -> QVariant t3 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractListModel21 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractListModel21_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractListModel_setHandler21 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractListModel x0) -> CInt -> CLong -> Ptr (TQVariant t3) -> IO (CBool)
    setHandlerWrapper x0 x1 x2 x3
      = do x0obj <- qAbstractListModelFromPtr x0
           let x1int = fromCInt x1
           let x2enum = qEnum_fromInt $ fromCLong x2
           x3obj <- objectFromPtr_nf x3
           let rv =
                if (objectIsNull x0obj)
                 then return False
                 else _handler x0obj x1int x2enum x3obj
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

instance QsetHandler (QAbstractListModel ()) (QAbstractListModel x0 -> Int -> QtOrientation -> QVariant t3 -> Int -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractListModel22 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractListModel22_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractListModel_setHandler22 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractListModel x0) -> CInt -> CLong -> Ptr (TQVariant t3) -> CInt -> IO (CBool)
    setHandlerWrapper x0 x1 x2 x3 x4
      = do x0obj <- qAbstractListModelFromPtr x0
           let x1int = fromCInt x1
           let x2enum = qEnum_fromInt $ fromCLong x2
           x3obj <- objectFromPtr_nf x3
           let x4int = fromCInt x4
           let rv =
                if (objectIsNull x0obj)
                 then return False
                 else _handler x0obj x1int x2enum x3obj x4int
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

foreign import ccall "qtc_QAbstractListModel_setHandler22" qtc_QAbstractListModel_setHandler22 :: Ptr (TQAbstractListModel a) -> CWString -> Ptr (Ptr (TQAbstractListModel x0) -> CInt -> CLong -> Ptr (TQVariant t3) -> CInt -> IO (CBool)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QAbstractListModel22 :: (Ptr (TQAbstractListModel x0) -> CInt -> CLong -> Ptr (TQVariant t3) -> CInt -> IO (CBool)) -> IO (FunPtr (Ptr (TQAbstractListModel x0) -> CInt -> CLong -> Ptr (TQVariant t3) -> CInt -> IO (CBool)))

foreign import ccall "wrapper" wrapSetHandler_QAbstractListModel22_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QAbstractListModelSc a) (QAbstractListModel x0 -> Int -> QtOrientation -> QVariant t3 -> Int -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractListModel22 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractListModel22_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractListModel_setHandler22 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractListModel x0) -> CInt -> CLong -> Ptr (TQVariant t3) -> CInt -> IO (CBool)
    setHandlerWrapper x0 x1 x2 x3 x4
      = do x0obj <- qAbstractListModelFromPtr x0
           let x1int = fromCInt x1
           let x2enum = qEnum_fromInt $ fromCLong x2
           x3obj <- objectFromPtr_nf x3
           let x4int = fromCInt x4
           let rv =
                if (objectIsNull x0obj)
                 then return False
                 else _handler x0obj x1int x2enum x3obj x4int
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

instance QsetHeaderData_h (QAbstractListModel ()) ((Int, QtOrientation, QVariant t3)) where
 setHeaderData_h x0 (x1, x2, x3)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QAbstractListModel_setHeaderData cobj_x0 (toCInt x1) (toCLong $ qEnum_toInt x2) cobj_x3

foreign import ccall "qtc_QAbstractListModel_setHeaderData" qtc_QAbstractListModel_setHeaderData :: Ptr (TQAbstractListModel a) -> CInt -> CLong -> Ptr (TQVariant t3) -> IO CBool

instance QsetHeaderData_h (QAbstractListModelSc a) ((Int, QtOrientation, QVariant t3)) where
 setHeaderData_h x0 (x1, x2, x3)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QAbstractListModel_setHeaderData cobj_x0 (toCInt x1) (toCLong $ qEnum_toInt x2) cobj_x3

instance QsetHeaderData_h (QAbstractListModel ()) ((Int, QtOrientation, QVariant t3, Int)) where
 setHeaderData_h x0 (x1, x2, x3, x4)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QAbstractListModel_setHeaderData1 cobj_x0 (toCInt x1) (toCLong $ qEnum_toInt x2) cobj_x3 (toCInt x4)

foreign import ccall "qtc_QAbstractListModel_setHeaderData1" qtc_QAbstractListModel_setHeaderData1 :: Ptr (TQAbstractListModel a) -> CInt -> CLong -> Ptr (TQVariant t3) -> CInt -> IO CBool

instance QsetHeaderData_h (QAbstractListModelSc a) ((Int, QtOrientation, QVariant t3, Int)) where
 setHeaderData_h x0 (x1, x2, x3, x4)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QAbstractListModel_setHeaderData1 cobj_x0 (toCInt x1) (toCLong $ qEnum_toInt x2) cobj_x3 (toCInt x4)

instance QsetHandler (QAbstractListModel ()) (QAbstractListModel x0 -> Int -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractListModel23 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractListModel23_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractListModel_setHandler23 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractListModel x0) -> CInt -> IO ()
    setHandlerWrapper x0 x1
      = do x0obj <- qAbstractListModelFromPtr x0
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

foreign import ccall "qtc_QAbstractListModel_setHandler23" qtc_QAbstractListModel_setHandler23 :: Ptr (TQAbstractListModel a) -> CWString -> Ptr (Ptr (TQAbstractListModel x0) -> CInt -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QAbstractListModel23 :: (Ptr (TQAbstractListModel x0) -> CInt -> IO ()) -> IO (FunPtr (Ptr (TQAbstractListModel x0) -> CInt -> IO ()))

foreign import ccall "wrapper" wrapSetHandler_QAbstractListModel23_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QAbstractListModelSc a) (QAbstractListModel x0 -> Int -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractListModel23 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractListModel23_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractListModel_setHandler23 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractListModel x0) -> CInt -> IO ()
    setHandlerWrapper x0 x1
      = do x0obj <- qAbstractListModelFromPtr x0
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

instance QsetHandler (QAbstractListModel ()) (QAbstractListModel x0 -> Int -> SortOrder -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractListModel24 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractListModel24_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractListModel_setHandler24 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractListModel x0) -> CInt -> CLong -> IO ()
    setHandlerWrapper x0 x1 x2
      = do x0obj <- qAbstractListModelFromPtr x0
           let x1int = fromCInt x1
           let x2enum = qEnum_fromInt $ fromCLong x2
           if (objectIsNull x0obj)
            then return ()
            else _handler x0obj x1int x2enum

    setHandlerWrapper_d :: Ptr fun -> Ptr () -> Ptr fun_d -> IO ()
    setHandlerWrapper_d funptr stptr funptr_d
      = do when (stptr/=ptrNull)
            (freeStablePtr (castPtrToStablePtr stptr))
           when (funptr/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr))
           when (funptr_d/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr_d))
           return ()

foreign import ccall "qtc_QAbstractListModel_setHandler24" qtc_QAbstractListModel_setHandler24 :: Ptr (TQAbstractListModel a) -> CWString -> Ptr (Ptr (TQAbstractListModel x0) -> CInt -> CLong -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QAbstractListModel24 :: (Ptr (TQAbstractListModel x0) -> CInt -> CLong -> IO ()) -> IO (FunPtr (Ptr (TQAbstractListModel x0) -> CInt -> CLong -> IO ()))

foreign import ccall "wrapper" wrapSetHandler_QAbstractListModel24_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QAbstractListModelSc a) (QAbstractListModel x0 -> Int -> SortOrder -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractListModel24 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractListModel24_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractListModel_setHandler24 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractListModel x0) -> CInt -> CLong -> IO ()
    setHandlerWrapper x0 x1 x2
      = do x0obj <- qAbstractListModelFromPtr x0
           let x1int = fromCInt x1
           let x2enum = qEnum_fromInt $ fromCLong x2
           if (objectIsNull x0obj)
            then return ()
            else _handler x0obj x1int x2enum

    setHandlerWrapper_d :: Ptr fun -> Ptr () -> Ptr fun_d -> IO ()
    setHandlerWrapper_d funptr stptr funptr_d
      = do when (stptr/=ptrNull)
            (freeStablePtr (castPtrToStablePtr stptr))
           when (funptr/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr))
           when (funptr_d/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr_d))
           return ()

instance Qsort_h (QAbstractListModel ()) ((Int)) where
 sort_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractListModel_sort cobj_x0 (toCInt x1)

foreign import ccall "qtc_QAbstractListModel_sort" qtc_QAbstractListModel_sort :: Ptr (TQAbstractListModel a) -> CInt -> IO ()

instance Qsort_h (QAbstractListModelSc a) ((Int)) where
 sort_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractListModel_sort cobj_x0 (toCInt x1)

instance Qsort_h (QAbstractListModel ()) ((Int, SortOrder)) where
 sort_h x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractListModel_sort1 cobj_x0 (toCInt x1) (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QAbstractListModel_sort1" qtc_QAbstractListModel_sort1 :: Ptr (TQAbstractListModel a) -> CInt -> CLong -> IO ()

instance Qsort_h (QAbstractListModelSc a) ((Int, SortOrder)) where
 sort_h x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractListModel_sort1 cobj_x0 (toCInt x1) (toCLong $ qEnum_toInt x2)

instance QsetHandler (QAbstractListModel ()) (QAbstractListModel x0 -> QModelIndex t1 -> IO (QSize t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractListModel25 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractListModel25_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractListModel_setHandler25 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractListModel x0) -> Ptr (TQModelIndex t1) -> IO (Ptr (TQSize t0))
    setHandlerWrapper x0 x1
      = do x0obj <- qAbstractListModelFromPtr x0
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

foreign import ccall "qtc_QAbstractListModel_setHandler25" qtc_QAbstractListModel_setHandler25 :: Ptr (TQAbstractListModel a) -> CWString -> Ptr (Ptr (TQAbstractListModel x0) -> Ptr (TQModelIndex t1) -> IO (Ptr (TQSize t0))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QAbstractListModel25 :: (Ptr (TQAbstractListModel x0) -> Ptr (TQModelIndex t1) -> IO (Ptr (TQSize t0))) -> IO (FunPtr (Ptr (TQAbstractListModel x0) -> Ptr (TQModelIndex t1) -> IO (Ptr (TQSize t0))))

foreign import ccall "wrapper" wrapSetHandler_QAbstractListModel25_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QAbstractListModelSc a) (QAbstractListModel x0 -> QModelIndex t1 -> IO (QSize t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractListModel25 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractListModel25_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractListModel_setHandler25 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractListModel x0) -> Ptr (TQModelIndex t1) -> IO (Ptr (TQSize t0))
    setHandlerWrapper x0 x1
      = do x0obj <- qAbstractListModelFromPtr x0
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

instance Qqspan_h (QAbstractListModel ()) ((QModelIndex t1)) where
 qspan_h x0 (x1)
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractListModel_span cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractListModel_span" qtc_QAbstractListModel_span :: Ptr (TQAbstractListModel a) -> Ptr (TQModelIndex t1) -> IO (Ptr (TQSize ()))

instance Qqspan_h (QAbstractListModelSc a) ((QModelIndex t1)) where
 qspan_h x0 (x1)
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractListModel_span cobj_x0 cobj_x1

instance Qspan_h (QAbstractListModel ()) ((QModelIndex t1)) where
 span_h x0 (x1)
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractListModel_span_qth cobj_x0 cobj_x1 csize_ret_w csize_ret_h

foreign import ccall "qtc_QAbstractListModel_span_qth" qtc_QAbstractListModel_span_qth :: Ptr (TQAbstractListModel a) -> Ptr (TQModelIndex t1) -> Ptr CInt -> Ptr CInt -> IO ()

instance Qspan_h (QAbstractListModelSc a) ((QModelIndex t1)) where
 span_h x0 (x1)
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractListModel_span_qth cobj_x0 cobj_x1 csize_ret_w csize_ret_h

instance Qsubmit_h (QAbstractListModel ()) (()) where
 submit_h x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractListModel_submit cobj_x0

foreign import ccall "qtc_QAbstractListModel_submit" qtc_QAbstractListModel_submit :: Ptr (TQAbstractListModel a) -> IO CBool

instance Qsubmit_h (QAbstractListModelSc a) (()) where
 submit_h x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractListModel_submit cobj_x0

instance QsetHandler (QAbstractListModel ()) (QAbstractListModel x0 -> IO (DropActions)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractListModel26 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractListModel26_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractListModel_setHandler26 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractListModel x0) -> IO (CLong)
    setHandlerWrapper x0
      = do x0obj <- qAbstractListModelFromPtr x0
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

foreign import ccall "qtc_QAbstractListModel_setHandler26" qtc_QAbstractListModel_setHandler26 :: Ptr (TQAbstractListModel a) -> CWString -> Ptr (Ptr (TQAbstractListModel x0) -> IO (CLong)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QAbstractListModel26 :: (Ptr (TQAbstractListModel x0) -> IO (CLong)) -> IO (FunPtr (Ptr (TQAbstractListModel x0) -> IO (CLong)))

foreign import ccall "wrapper" wrapSetHandler_QAbstractListModel26_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QAbstractListModelSc a) (QAbstractListModel x0 -> IO (DropActions)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractListModel26 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractListModel26_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractListModel_setHandler26 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractListModel x0) -> IO (CLong)
    setHandlerWrapper x0
      = do x0obj <- qAbstractListModelFromPtr x0
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

instance QsupportedDropActions_h (QAbstractListModel ()) (()) where
 supportedDropActions_h x0 ()
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractListModel_supportedDropActions cobj_x0

foreign import ccall "qtc_QAbstractListModel_supportedDropActions" qtc_QAbstractListModel_supportedDropActions :: Ptr (TQAbstractListModel a) -> IO CLong

instance QsupportedDropActions_h (QAbstractListModelSc a) (()) where
 supportedDropActions_h x0 ()
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractListModel_supportedDropActions cobj_x0

instance QsetHandler (QAbstractListModel ()) (QAbstractListModel x0 -> QEvent t1 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractListModel27 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractListModel27_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractListModel_setHandler27 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractListModel x0) -> Ptr (TQEvent t1) -> IO (CBool)
    setHandlerWrapper x0 x1
      = do x0obj <- qAbstractListModelFromPtr x0
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

foreign import ccall "qtc_QAbstractListModel_setHandler27" qtc_QAbstractListModel_setHandler27 :: Ptr (TQAbstractListModel a) -> CWString -> Ptr (Ptr (TQAbstractListModel x0) -> Ptr (TQEvent t1) -> IO (CBool)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QAbstractListModel27 :: (Ptr (TQAbstractListModel x0) -> Ptr (TQEvent t1) -> IO (CBool)) -> IO (FunPtr (Ptr (TQAbstractListModel x0) -> Ptr (TQEvent t1) -> IO (CBool)))

foreign import ccall "wrapper" wrapSetHandler_QAbstractListModel27_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QAbstractListModelSc a) (QAbstractListModel x0 -> QEvent t1 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractListModel27 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractListModel27_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractListModel_setHandler27 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractListModel x0) -> Ptr (TQEvent t1) -> IO (CBool)
    setHandlerWrapper x0 x1
      = do x0obj <- qAbstractListModelFromPtr x0
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

instance Qevent_h (QAbstractListModel ()) ((QEvent t1)) where
 event_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractListModel_event cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractListModel_event" qtc_QAbstractListModel_event :: Ptr (TQAbstractListModel a) -> Ptr (TQEvent t1) -> IO CBool

instance Qevent_h (QAbstractListModelSc a) ((QEvent t1)) where
 event_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractListModel_event cobj_x0 cobj_x1

instance QsetHandler (QAbstractListModel ()) (QAbstractListModel x0 -> QObject t1 -> QEvent t2 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractListModel28 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractListModel28_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractListModel_setHandler28 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractListModel x0) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO (CBool)
    setHandlerWrapper x0 x1 x2
      = do x0obj <- qAbstractListModelFromPtr x0
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

foreign import ccall "qtc_QAbstractListModel_setHandler28" qtc_QAbstractListModel_setHandler28 :: Ptr (TQAbstractListModel a) -> CWString -> Ptr (Ptr (TQAbstractListModel x0) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO (CBool)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QAbstractListModel28 :: (Ptr (TQAbstractListModel x0) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO (CBool)) -> IO (FunPtr (Ptr (TQAbstractListModel x0) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO (CBool)))

foreign import ccall "wrapper" wrapSetHandler_QAbstractListModel28_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QAbstractListModelSc a) (QAbstractListModel x0 -> QObject t1 -> QEvent t2 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractListModel28 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractListModel28_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractListModel_setHandler28 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractListModel x0) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO (CBool)
    setHandlerWrapper x0 x1 x2
      = do x0obj <- qAbstractListModelFromPtr x0
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

instance QeventFilter_h (QAbstractListModel ()) ((QObject t1, QEvent t2)) where
 eventFilter_h x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QAbstractListModel_eventFilter cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QAbstractListModel_eventFilter" qtc_QAbstractListModel_eventFilter :: Ptr (TQAbstractListModel a) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO CBool

instance QeventFilter_h (QAbstractListModelSc a) ((QObject t1, QEvent t2)) where
 eventFilter_h x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QAbstractListModel_eventFilter cobj_x0 cobj_x1 cobj_x2

