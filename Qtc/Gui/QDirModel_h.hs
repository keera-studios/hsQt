{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QDirModel_h.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:21
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QDirModel_h where

import Foreign.C.Types
import Qtc.Enums.Base
import Qtc.Enums.Core.Qt

import Qtc.Classes.Base
import Qtc.Classes.Qccs_h
import Qtc.Classes.Core_h
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core
import Qtc.Classes.Gui_h
import Qtc.ClassTypes.Gui
import Foreign.Marshal.Array

instance QunSetUserMethod (QDirModel ()) where
 unSetUserMethod qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QDirModel_unSetUserMethod cobj_qobj (toCInt 0) (toCInt evid)

foreign import ccall "qtc_QDirModel_unSetUserMethod" qtc_QDirModel_unSetUserMethod :: Ptr (TQDirModel a) -> CInt -> CInt -> IO (CBool)

instance QunSetUserMethod (QDirModelSc a) where
 unSetUserMethod qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QDirModel_unSetUserMethod cobj_qobj (toCInt 0) (toCInt evid)

instance QunSetUserMethodVariant (QDirModel ()) where
 unSetUserMethodVariant qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QDirModel_unSetUserMethod cobj_qobj (toCInt 1) (toCInt evid)

instance QunSetUserMethodVariant (QDirModelSc a) where
 unSetUserMethodVariant qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QDirModel_unSetUserMethod cobj_qobj (toCInt 1) (toCInt evid)

instance QunSetUserMethodVariantList (QDirModel ()) where
 unSetUserMethodVariantList qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QDirModel_unSetUserMethod cobj_qobj (toCInt 2) (toCInt evid)

instance QunSetUserMethodVariantList (QDirModelSc a) where
 unSetUserMethodVariantList qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QDirModel_unSetUserMethod cobj_qobj (toCInt 2) (toCInt evid)

instance QsetUserMethod (QDirModel ()) (QDirModel x0 -> IO ()) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethod_QDirModel setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethod_QDirModel_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QDirModel_setUserMethod cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQDirModel x0) -> IO ()
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

foreign import ccall "qtc_QDirModel_setUserMethod" qtc_QDirModel_setUserMethod :: Ptr (TQDirModel a) -> CInt -> Ptr (Ptr (TQDirModel x0) -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetUserMethod_QDirModel :: (Ptr (TQDirModel x0) -> IO ()) -> IO (FunPtr (Ptr (TQDirModel x0) -> IO ()))

foreign import ccall "wrapper" wrapSetUserMethod_QDirModel_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetUserMethod (QDirModelSc a) (QDirModel x0 -> IO ()) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethod_QDirModel setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethod_QDirModel_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QDirModel_setUserMethod cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQDirModel x0) -> IO ()
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

instance QsetUserMethod (QDirModel ()) (QDirModel x0 -> QVariant () -> IO (QVariant ())) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethodVariant_QDirModel setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethodVariant_QDirModel_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QDirModel_setUserMethodVariant cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQDirModel x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))
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

foreign import ccall "qtc_QDirModel_setUserMethodVariant" qtc_QDirModel_setUserMethodVariant :: Ptr (TQDirModel a) -> CInt -> Ptr (Ptr (TQDirModel x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetUserMethodVariant_QDirModel :: (Ptr (TQDirModel x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))) -> IO (FunPtr (Ptr (TQDirModel x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))))

foreign import ccall "wrapper" wrapSetUserMethodVariant_QDirModel_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetUserMethod (QDirModelSc a) (QDirModel x0 -> QVariant () -> IO (QVariant ())) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethodVariant_QDirModel setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethodVariant_QDirModel_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QDirModel_setUserMethodVariant cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQDirModel x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))
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

instance QunSetHandler (QDirModel ()) where 
 unSetHandler qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withCWString evid $ \cstr_evid ->
    qtc_QDirModel_unSetHandler cobj_qobj cstr_evid

foreign import ccall "qtc_QDirModel_unSetHandler" qtc_QDirModel_unSetHandler :: Ptr (TQDirModel a) -> CWString -> IO (CBool)

instance QunSetHandler (QDirModelSc a) where 
 unSetHandler qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withCWString evid $ \cstr_evid ->
    qtc_QDirModel_unSetHandler cobj_qobj cstr_evid

instance QsetHandler (QDirModel ()) (QDirModel x0 -> IO (Int)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QDirModel1 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QDirModel1_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QDirModel_setHandler1 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQDirModel x0) -> IO (CInt)
    setHandlerWrapper x0
      = do x0obj <- qDirModelFromPtr x0
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

foreign import ccall "qtc_QDirModel_setHandler1" qtc_QDirModel_setHandler1 :: Ptr (TQDirModel a) -> CWString -> Ptr (Ptr (TQDirModel x0) -> IO (CInt)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QDirModel1 :: (Ptr (TQDirModel x0) -> IO (CInt)) -> IO (FunPtr (Ptr (TQDirModel x0) -> IO (CInt)))

foreign import ccall "wrapper" wrapSetHandler_QDirModel1_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QDirModelSc a) (QDirModel x0 -> IO (Int)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QDirModel1 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QDirModel1_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QDirModel_setHandler1 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQDirModel x0) -> IO (CInt)
    setHandlerWrapper x0
      = do x0obj <- qDirModelFromPtr x0
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

instance QsetHandler (QDirModel ()) (QDirModel x0 -> QModelIndex t1 -> IO (Int)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QDirModel2 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QDirModel2_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QDirModel_setHandler2 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQDirModel x0) -> Ptr (TQModelIndex t1) -> IO (CInt)
    setHandlerWrapper x0 x1
      = do x0obj <- qDirModelFromPtr x0
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

foreign import ccall "qtc_QDirModel_setHandler2" qtc_QDirModel_setHandler2 :: Ptr (TQDirModel a) -> CWString -> Ptr (Ptr (TQDirModel x0) -> Ptr (TQModelIndex t1) -> IO (CInt)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QDirModel2 :: (Ptr (TQDirModel x0) -> Ptr (TQModelIndex t1) -> IO (CInt)) -> IO (FunPtr (Ptr (TQDirModel x0) -> Ptr (TQModelIndex t1) -> IO (CInt)))

foreign import ccall "wrapper" wrapSetHandler_QDirModel2_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QDirModelSc a) (QDirModel x0 -> QModelIndex t1 -> IO (Int)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QDirModel2 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QDirModel2_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QDirModel_setHandler2 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQDirModel x0) -> Ptr (TQModelIndex t1) -> IO (CInt)
    setHandlerWrapper x0 x1
      = do x0obj <- qDirModelFromPtr x0
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

instance QcolumnCount_h (QDirModel ()) (()) where
 columnCount_h x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDirModel_columnCount cobj_x0

foreign import ccall "qtc_QDirModel_columnCount" qtc_QDirModel_columnCount :: Ptr (TQDirModel a) -> IO CInt

instance QcolumnCount_h (QDirModelSc a) (()) where
 columnCount_h x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDirModel_columnCount cobj_x0

instance QcolumnCount_h (QDirModel ()) ((QModelIndex t1)) where
 columnCount_h x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDirModel_columnCount1 cobj_x0 cobj_x1

foreign import ccall "qtc_QDirModel_columnCount1" qtc_QDirModel_columnCount1 :: Ptr (TQDirModel a) -> Ptr (TQModelIndex t1) -> IO CInt

instance QcolumnCount_h (QDirModelSc a) ((QModelIndex t1)) where
 columnCount_h x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDirModel_columnCount1 cobj_x0 cobj_x1

instance QsetHandler (QDirModel ()) (QDirModel x0 -> QModelIndex t1 -> IO (QVariant t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QDirModel3 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QDirModel3_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QDirModel_setHandler3 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQDirModel x0) -> Ptr (TQModelIndex t1) -> IO (Ptr (TQVariant t0))
    setHandlerWrapper x0 x1
      = do x0obj <- qDirModelFromPtr x0
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

foreign import ccall "qtc_QDirModel_setHandler3" qtc_QDirModel_setHandler3 :: Ptr (TQDirModel a) -> CWString -> Ptr (Ptr (TQDirModel x0) -> Ptr (TQModelIndex t1) -> IO (Ptr (TQVariant t0))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QDirModel3 :: (Ptr (TQDirModel x0) -> Ptr (TQModelIndex t1) -> IO (Ptr (TQVariant t0))) -> IO (FunPtr (Ptr (TQDirModel x0) -> Ptr (TQModelIndex t1) -> IO (Ptr (TQVariant t0))))

foreign import ccall "wrapper" wrapSetHandler_QDirModel3_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QDirModelSc a) (QDirModel x0 -> QModelIndex t1 -> IO (QVariant t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QDirModel3 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QDirModel3_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QDirModel_setHandler3 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQDirModel x0) -> Ptr (TQModelIndex t1) -> IO (Ptr (TQVariant t0))
    setHandlerWrapper x0 x1
      = do x0obj <- qDirModelFromPtr x0
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

instance QsetHandler (QDirModel ()) (QDirModel x0 -> QModelIndex t1 -> Int -> IO (QVariant t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QDirModel4 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QDirModel4_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QDirModel_setHandler4 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQDirModel x0) -> Ptr (TQModelIndex t1) -> CInt -> IO (Ptr (TQVariant t0))
    setHandlerWrapper x0 x1 x2
      = do x0obj <- qDirModelFromPtr x0
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

foreign import ccall "qtc_QDirModel_setHandler4" qtc_QDirModel_setHandler4 :: Ptr (TQDirModel a) -> CWString -> Ptr (Ptr (TQDirModel x0) -> Ptr (TQModelIndex t1) -> CInt -> IO (Ptr (TQVariant t0))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QDirModel4 :: (Ptr (TQDirModel x0) -> Ptr (TQModelIndex t1) -> CInt -> IO (Ptr (TQVariant t0))) -> IO (FunPtr (Ptr (TQDirModel x0) -> Ptr (TQModelIndex t1) -> CInt -> IO (Ptr (TQVariant t0))))

foreign import ccall "wrapper" wrapSetHandler_QDirModel4_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QDirModelSc a) (QDirModel x0 -> QModelIndex t1 -> Int -> IO (QVariant t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QDirModel4 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QDirModel4_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QDirModel_setHandler4 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQDirModel x0) -> Ptr (TQModelIndex t1) -> CInt -> IO (Ptr (TQVariant t0))
    setHandlerWrapper x0 x1 x2
      = do x0obj <- qDirModelFromPtr x0
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

instance Qqdata_h (QDirModel ()) ((QModelIndex t1)) where
 qdata_h x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDirModel_data cobj_x0 cobj_x1

foreign import ccall "qtc_QDirModel_data" qtc_QDirModel_data :: Ptr (TQDirModel a) -> Ptr (TQModelIndex t1) -> IO (Ptr (TQVariant ()))

instance Qqdata_h (QDirModelSc a) ((QModelIndex t1)) where
 qdata_h x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDirModel_data cobj_x0 cobj_x1

instance Qqdata_h (QDirModel ()) ((QModelIndex t1, Int)) where
 qdata_h x0 (x1, x2)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDirModel_data1 cobj_x0 cobj_x1 (toCInt x2)

foreign import ccall "qtc_QDirModel_data1" qtc_QDirModel_data1 :: Ptr (TQDirModel a) -> Ptr (TQModelIndex t1) -> CInt -> IO (Ptr (TQVariant ()))

instance Qqdata_h (QDirModelSc a) ((QModelIndex t1, Int)) where
 qdata_h x0 (x1, x2)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDirModel_data1 cobj_x0 cobj_x1 (toCInt x2)

instance QsetHandler (QDirModel ()) (QDirModel x0 -> QObject t1 -> DropAction -> Int -> Int -> QModelIndex t5 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QDirModel5 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QDirModel5_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QDirModel_setHandler5 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQDirModel x0) -> Ptr (TQObject t1) -> CLong -> CInt -> CInt -> Ptr (TQModelIndex t5) -> IO (CBool)
    setHandlerWrapper x0 x1 x2 x3 x4 x5
      = do x0obj <- qDirModelFromPtr x0
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

foreign import ccall "qtc_QDirModel_setHandler5" qtc_QDirModel_setHandler5 :: Ptr (TQDirModel a) -> CWString -> Ptr (Ptr (TQDirModel x0) -> Ptr (TQObject t1) -> CLong -> CInt -> CInt -> Ptr (TQModelIndex t5) -> IO (CBool)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QDirModel5 :: (Ptr (TQDirModel x0) -> Ptr (TQObject t1) -> CLong -> CInt -> CInt -> Ptr (TQModelIndex t5) -> IO (CBool)) -> IO (FunPtr (Ptr (TQDirModel x0) -> Ptr (TQObject t1) -> CLong -> CInt -> CInt -> Ptr (TQModelIndex t5) -> IO (CBool)))

foreign import ccall "wrapper" wrapSetHandler_QDirModel5_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QDirModelSc a) (QDirModel x0 -> QObject t1 -> DropAction -> Int -> Int -> QModelIndex t5 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QDirModel5 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QDirModel5_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QDirModel_setHandler5 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQDirModel x0) -> Ptr (TQObject t1) -> CLong -> CInt -> CInt -> Ptr (TQModelIndex t5) -> IO (CBool)
    setHandlerWrapper x0 x1 x2 x3 x4 x5
      = do x0obj <- qDirModelFromPtr x0
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

instance QdropMimeData_h (QDirModel ()) ((QMimeData t1, DropAction, Int, Int, QModelIndex t5)) where
 dropMimeData_h x0 (x1, x2, x3, x4, x5)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x5 $ \cobj_x5 ->
    qtc_QDirModel_dropMimeData cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2) (toCInt x3) (toCInt x4) cobj_x5

foreign import ccall "qtc_QDirModel_dropMimeData" qtc_QDirModel_dropMimeData :: Ptr (TQDirModel a) -> Ptr (TQMimeData t1) -> CLong -> CInt -> CInt -> Ptr (TQModelIndex t5) -> IO CBool

instance QdropMimeData_h (QDirModelSc a) ((QMimeData t1, DropAction, Int, Int, QModelIndex t5)) where
 dropMimeData_h x0 (x1, x2, x3, x4, x5)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x5 $ \cobj_x5 ->
    qtc_QDirModel_dropMimeData cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2) (toCInt x3) (toCInt x4) cobj_x5

instance QsetHandler (QDirModel ()) (QDirModel x0 -> QModelIndex t1 -> IO (ItemFlags)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QDirModel6 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QDirModel6_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QDirModel_setHandler6 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQDirModel x0) -> Ptr (TQModelIndex t1) -> IO (CLong)
    setHandlerWrapper x0 x1
      = do x0obj <- qDirModelFromPtr x0
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

foreign import ccall "qtc_QDirModel_setHandler6" qtc_QDirModel_setHandler6 :: Ptr (TQDirModel a) -> CWString -> Ptr (Ptr (TQDirModel x0) -> Ptr (TQModelIndex t1) -> IO (CLong)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QDirModel6 :: (Ptr (TQDirModel x0) -> Ptr (TQModelIndex t1) -> IO (CLong)) -> IO (FunPtr (Ptr (TQDirModel x0) -> Ptr (TQModelIndex t1) -> IO (CLong)))

foreign import ccall "wrapper" wrapSetHandler_QDirModel6_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QDirModelSc a) (QDirModel x0 -> QModelIndex t1 -> IO (ItemFlags)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QDirModel6 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QDirModel6_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QDirModel_setHandler6 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQDirModel x0) -> Ptr (TQModelIndex t1) -> IO (CLong)
    setHandlerWrapper x0 x1
      = do x0obj <- qDirModelFromPtr x0
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

instance Qflags_h (QDirModel ()) ((QModelIndex t1)) where
 flags_h x0 (x1)
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDirModel_flags cobj_x0 cobj_x1

foreign import ccall "qtc_QDirModel_flags" qtc_QDirModel_flags :: Ptr (TQDirModel a) -> Ptr (TQModelIndex t1) -> IO CLong

instance Qflags_h (QDirModelSc a) ((QModelIndex t1)) where
 flags_h x0 (x1)
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDirModel_flags cobj_x0 cobj_x1

instance QsetHandler (QDirModel ()) (QDirModel x0 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QDirModel7 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QDirModel7_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QDirModel_setHandler7 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQDirModel x0) -> IO (CBool)
    setHandlerWrapper x0
      = do x0obj <- qDirModelFromPtr x0
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

foreign import ccall "qtc_QDirModel_setHandler7" qtc_QDirModel_setHandler7 :: Ptr (TQDirModel a) -> CWString -> Ptr (Ptr (TQDirModel x0) -> IO (CBool)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QDirModel7 :: (Ptr (TQDirModel x0) -> IO (CBool)) -> IO (FunPtr (Ptr (TQDirModel x0) -> IO (CBool)))

foreign import ccall "wrapper" wrapSetHandler_QDirModel7_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QDirModelSc a) (QDirModel x0 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QDirModel7 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QDirModel7_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QDirModel_setHandler7 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQDirModel x0) -> IO (CBool)
    setHandlerWrapper x0
      = do x0obj <- qDirModelFromPtr x0
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

instance QsetHandler (QDirModel ()) (QDirModel x0 -> QModelIndex t1 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QDirModel8 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QDirModel8_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QDirModel_setHandler8 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQDirModel x0) -> Ptr (TQModelIndex t1) -> IO (CBool)
    setHandlerWrapper x0 x1
      = do x0obj <- qDirModelFromPtr x0
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

foreign import ccall "qtc_QDirModel_setHandler8" qtc_QDirModel_setHandler8 :: Ptr (TQDirModel a) -> CWString -> Ptr (Ptr (TQDirModel x0) -> Ptr (TQModelIndex t1) -> IO (CBool)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QDirModel8 :: (Ptr (TQDirModel x0) -> Ptr (TQModelIndex t1) -> IO (CBool)) -> IO (FunPtr (Ptr (TQDirModel x0) -> Ptr (TQModelIndex t1) -> IO (CBool)))

foreign import ccall "wrapper" wrapSetHandler_QDirModel8_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QDirModelSc a) (QDirModel x0 -> QModelIndex t1 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QDirModel8 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QDirModel8_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QDirModel_setHandler8 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQDirModel x0) -> Ptr (TQModelIndex t1) -> IO (CBool)
    setHandlerWrapper x0 x1
      = do x0obj <- qDirModelFromPtr x0
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

instance QhasChildren_h (QDirModel ()) (()) where
 hasChildren_h x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDirModel_hasChildren cobj_x0

foreign import ccall "qtc_QDirModel_hasChildren" qtc_QDirModel_hasChildren :: Ptr (TQDirModel a) -> IO CBool

instance QhasChildren_h (QDirModelSc a) (()) where
 hasChildren_h x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDirModel_hasChildren cobj_x0

instance QhasChildren_h (QDirModel ()) ((QModelIndex t1)) where
 hasChildren_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDirModel_hasChildren1 cobj_x0 cobj_x1

foreign import ccall "qtc_QDirModel_hasChildren1" qtc_QDirModel_hasChildren1 :: Ptr (TQDirModel a) -> Ptr (TQModelIndex t1) -> IO CBool

instance QhasChildren_h (QDirModelSc a) ((QModelIndex t1)) where
 hasChildren_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDirModel_hasChildren1 cobj_x0 cobj_x1

instance QsetHandler (QDirModel ()) (QDirModel x0 -> Int -> QtOrientation -> IO (QVariant t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QDirModel9 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QDirModel9_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QDirModel_setHandler9 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQDirModel x0) -> CInt -> CLong -> IO (Ptr (TQVariant t0))
    setHandlerWrapper x0 x1 x2
      = do x0obj <- qDirModelFromPtr x0
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

foreign import ccall "qtc_QDirModel_setHandler9" qtc_QDirModel_setHandler9 :: Ptr (TQDirModel a) -> CWString -> Ptr (Ptr (TQDirModel x0) -> CInt -> CLong -> IO (Ptr (TQVariant t0))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QDirModel9 :: (Ptr (TQDirModel x0) -> CInt -> CLong -> IO (Ptr (TQVariant t0))) -> IO (FunPtr (Ptr (TQDirModel x0) -> CInt -> CLong -> IO (Ptr (TQVariant t0))))

foreign import ccall "wrapper" wrapSetHandler_QDirModel9_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QDirModelSc a) (QDirModel x0 -> Int -> QtOrientation -> IO (QVariant t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QDirModel9 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QDirModel9_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QDirModel_setHandler9 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQDirModel x0) -> CInt -> CLong -> IO (Ptr (TQVariant t0))
    setHandlerWrapper x0 x1 x2
      = do x0obj <- qDirModelFromPtr x0
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

instance QsetHandler (QDirModel ()) (QDirModel x0 -> Int -> QtOrientation -> Int -> IO (QVariant t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QDirModel10 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QDirModel10_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QDirModel_setHandler10 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQDirModel x0) -> CInt -> CLong -> CInt -> IO (Ptr (TQVariant t0))
    setHandlerWrapper x0 x1 x2 x3
      = do x0obj <- qDirModelFromPtr x0
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

foreign import ccall "qtc_QDirModel_setHandler10" qtc_QDirModel_setHandler10 :: Ptr (TQDirModel a) -> CWString -> Ptr (Ptr (TQDirModel x0) -> CInt -> CLong -> CInt -> IO (Ptr (TQVariant t0))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QDirModel10 :: (Ptr (TQDirModel x0) -> CInt -> CLong -> CInt -> IO (Ptr (TQVariant t0))) -> IO (FunPtr (Ptr (TQDirModel x0) -> CInt -> CLong -> CInt -> IO (Ptr (TQVariant t0))))

foreign import ccall "wrapper" wrapSetHandler_QDirModel10_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QDirModelSc a) (QDirModel x0 -> Int -> QtOrientation -> Int -> IO (QVariant t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QDirModel10 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QDirModel10_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QDirModel_setHandler10 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQDirModel x0) -> CInt -> CLong -> CInt -> IO (Ptr (TQVariant t0))
    setHandlerWrapper x0 x1 x2 x3
      = do x0obj <- qDirModelFromPtr x0
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

instance QheaderData_h (QDirModel ()) ((Int, QtOrientation)) where
 headerData_h x0 (x1, x2)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDirModel_headerData cobj_x0 (toCInt x1) (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QDirModel_headerData" qtc_QDirModel_headerData :: Ptr (TQDirModel a) -> CInt -> CLong -> IO (Ptr (TQVariant ()))

instance QheaderData_h (QDirModelSc a) ((Int, QtOrientation)) where
 headerData_h x0 (x1, x2)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDirModel_headerData cobj_x0 (toCInt x1) (toCLong $ qEnum_toInt x2)

instance QheaderData_h (QDirModel ()) ((Int, QtOrientation, Int)) where
 headerData_h x0 (x1, x2, x3)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDirModel_headerData1 cobj_x0 (toCInt x1) (toCLong $ qEnum_toInt x2) (toCInt x3)

foreign import ccall "qtc_QDirModel_headerData1" qtc_QDirModel_headerData1 :: Ptr (TQDirModel a) -> CInt -> CLong -> CInt -> IO (Ptr (TQVariant ()))

instance QheaderData_h (QDirModelSc a) ((Int, QtOrientation, Int)) where
 headerData_h x0 (x1, x2, x3)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDirModel_headerData1 cobj_x0 (toCInt x1) (toCLong $ qEnum_toInt x2) (toCInt x3)

instance QsetHandler (QDirModel ()) (QDirModel x0 -> Int -> Int -> IO (QModelIndex t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QDirModel11 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QDirModel11_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QDirModel_setHandler11 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQDirModel x0) -> CInt -> CInt -> IO (Ptr (TQModelIndex t0))
    setHandlerWrapper x0 x1 x2
      = do x0obj <- qDirModelFromPtr x0
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

foreign import ccall "qtc_QDirModel_setHandler11" qtc_QDirModel_setHandler11 :: Ptr (TQDirModel a) -> CWString -> Ptr (Ptr (TQDirModel x0) -> CInt -> CInt -> IO (Ptr (TQModelIndex t0))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QDirModel11 :: (Ptr (TQDirModel x0) -> CInt -> CInt -> IO (Ptr (TQModelIndex t0))) -> IO (FunPtr (Ptr (TQDirModel x0) -> CInt -> CInt -> IO (Ptr (TQModelIndex t0))))

foreign import ccall "wrapper" wrapSetHandler_QDirModel11_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QDirModelSc a) (QDirModel x0 -> Int -> Int -> IO (QModelIndex t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QDirModel11 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QDirModel11_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QDirModel_setHandler11 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQDirModel x0) -> CInt -> CInt -> IO (Ptr (TQModelIndex t0))
    setHandlerWrapper x0 x1 x2
      = do x0obj <- qDirModelFromPtr x0
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

instance QsetHandler (QDirModel ()) (QDirModel x0 -> Int -> Int -> QModelIndex t3 -> IO (QModelIndex t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QDirModel12 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QDirModel12_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QDirModel_setHandler12 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQDirModel x0) -> CInt -> CInt -> Ptr (TQModelIndex t3) -> IO (Ptr (TQModelIndex t0))
    setHandlerWrapper x0 x1 x2 x3
      = do x0obj <- qDirModelFromPtr x0
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

foreign import ccall "qtc_QDirModel_setHandler12" qtc_QDirModel_setHandler12 :: Ptr (TQDirModel a) -> CWString -> Ptr (Ptr (TQDirModel x0) -> CInt -> CInt -> Ptr (TQModelIndex t3) -> IO (Ptr (TQModelIndex t0))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QDirModel12 :: (Ptr (TQDirModel x0) -> CInt -> CInt -> Ptr (TQModelIndex t3) -> IO (Ptr (TQModelIndex t0))) -> IO (FunPtr (Ptr (TQDirModel x0) -> CInt -> CInt -> Ptr (TQModelIndex t3) -> IO (Ptr (TQModelIndex t0))))

foreign import ccall "wrapper" wrapSetHandler_QDirModel12_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QDirModelSc a) (QDirModel x0 -> Int -> Int -> QModelIndex t3 -> IO (QModelIndex t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QDirModel12 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QDirModel12_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QDirModel_setHandler12 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQDirModel x0) -> CInt -> CInt -> Ptr (TQModelIndex t3) -> IO (Ptr (TQModelIndex t0))
    setHandlerWrapper x0 x1 x2 x3
      = do x0obj <- qDirModelFromPtr x0
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

instance Qindex_h (QDirModel ()) ((Int, Int)) where
 index_h x0 (x1, x2)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDirModel_index2 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QDirModel_index2" qtc_QDirModel_index2 :: Ptr (TQDirModel a) -> CInt -> CInt -> IO (Ptr (TQModelIndex ()))

instance Qindex_h (QDirModelSc a) ((Int, Int)) where
 index_h x0 (x1, x2)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDirModel_index2 cobj_x0 (toCInt x1) (toCInt x2)

instance Qindex_h (QDirModel ()) ((Int, Int, QModelIndex t3)) where
 index_h x0 (x1, x2, x3)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QDirModel_index3 cobj_x0 (toCInt x1) (toCInt x2) cobj_x3

foreign import ccall "qtc_QDirModel_index3" qtc_QDirModel_index3 :: Ptr (TQDirModel a) -> CInt -> CInt -> Ptr (TQModelIndex t3) -> IO (Ptr (TQModelIndex ()))

instance Qindex_h (QDirModelSc a) ((Int, Int, QModelIndex t3)) where
 index_h x0 (x1, x2, x3)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QDirModel_index3 cobj_x0 (toCInt x1) (toCInt x2) cobj_x3

instance QsetHandler (QDirModel ()) (QDirModel x0 -> QModelIndex t1 -> IO (QModelIndex t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QDirModel13 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QDirModel13_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QDirModel_setHandler13 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQDirModel x0) -> Ptr (TQModelIndex t1) -> IO (Ptr (TQModelIndex t0))
    setHandlerWrapper x0 x1
      = do x0obj <- qDirModelFromPtr x0
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

foreign import ccall "qtc_QDirModel_setHandler13" qtc_QDirModel_setHandler13 :: Ptr (TQDirModel a) -> CWString -> Ptr (Ptr (TQDirModel x0) -> Ptr (TQModelIndex t1) -> IO (Ptr (TQModelIndex t0))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QDirModel13 :: (Ptr (TQDirModel x0) -> Ptr (TQModelIndex t1) -> IO (Ptr (TQModelIndex t0))) -> IO (FunPtr (Ptr (TQDirModel x0) -> Ptr (TQModelIndex t1) -> IO (Ptr (TQModelIndex t0))))

foreign import ccall "wrapper" wrapSetHandler_QDirModel13_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QDirModelSc a) (QDirModel x0 -> QModelIndex t1 -> IO (QModelIndex t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QDirModel13 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QDirModel13_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QDirModel_setHandler13 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQDirModel x0) -> Ptr (TQModelIndex t1) -> IO (Ptr (TQModelIndex t0))
    setHandlerWrapper x0 x1
      = do x0obj <- qDirModelFromPtr x0
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

instance Qparent_h (QDirModel ()) ((QModelIndex t1)) where
 parent_h x0 (x1)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDirModel_parent1 cobj_x0 cobj_x1

foreign import ccall "qtc_QDirModel_parent1" qtc_QDirModel_parent1 :: Ptr (TQDirModel a) -> Ptr (TQModelIndex t1) -> IO (Ptr (TQModelIndex ()))

instance Qparent_h (QDirModelSc a) ((QModelIndex t1)) where
 parent_h x0 (x1)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDirModel_parent1 cobj_x0 cobj_x1

instance QrowCount_h (QDirModel ()) (()) where
 rowCount_h x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDirModel_rowCount cobj_x0

foreign import ccall "qtc_QDirModel_rowCount" qtc_QDirModel_rowCount :: Ptr (TQDirModel a) -> IO CInt

instance QrowCount_h (QDirModelSc a) (()) where
 rowCount_h x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDirModel_rowCount cobj_x0

instance QrowCount_h (QDirModel ()) ((QModelIndex t1)) where
 rowCount_h x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDirModel_rowCount1 cobj_x0 cobj_x1

foreign import ccall "qtc_QDirModel_rowCount1" qtc_QDirModel_rowCount1 :: Ptr (TQDirModel a) -> Ptr (TQModelIndex t1) -> IO CInt

instance QrowCount_h (QDirModelSc a) ((QModelIndex t1)) where
 rowCount_h x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDirModel_rowCount1 cobj_x0 cobj_x1

instance QsetHandler (QDirModel ()) (QDirModel x0 -> QModelIndex t1 -> QVariant t2 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QDirModel14 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QDirModel14_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QDirModel_setHandler14 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQDirModel x0) -> Ptr (TQModelIndex t1) -> Ptr (TQVariant t2) -> IO (CBool)
    setHandlerWrapper x0 x1 x2
      = do x0obj <- qDirModelFromPtr x0
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

foreign import ccall "qtc_QDirModel_setHandler14" qtc_QDirModel_setHandler14 :: Ptr (TQDirModel a) -> CWString -> Ptr (Ptr (TQDirModel x0) -> Ptr (TQModelIndex t1) -> Ptr (TQVariant t2) -> IO (CBool)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QDirModel14 :: (Ptr (TQDirModel x0) -> Ptr (TQModelIndex t1) -> Ptr (TQVariant t2) -> IO (CBool)) -> IO (FunPtr (Ptr (TQDirModel x0) -> Ptr (TQModelIndex t1) -> Ptr (TQVariant t2) -> IO (CBool)))

foreign import ccall "wrapper" wrapSetHandler_QDirModel14_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QDirModelSc a) (QDirModel x0 -> QModelIndex t1 -> QVariant t2 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QDirModel14 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QDirModel14_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QDirModel_setHandler14 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQDirModel x0) -> Ptr (TQModelIndex t1) -> Ptr (TQVariant t2) -> IO (CBool)
    setHandlerWrapper x0 x1 x2
      = do x0obj <- qDirModelFromPtr x0
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

instance QsetHandler (QDirModel ()) (QDirModel x0 -> QModelIndex t1 -> QVariant t2 -> Int -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QDirModel15 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QDirModel15_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QDirModel_setHandler15 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQDirModel x0) -> Ptr (TQModelIndex t1) -> Ptr (TQVariant t2) -> CInt -> IO (CBool)
    setHandlerWrapper x0 x1 x2 x3
      = do x0obj <- qDirModelFromPtr x0
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

foreign import ccall "qtc_QDirModel_setHandler15" qtc_QDirModel_setHandler15 :: Ptr (TQDirModel a) -> CWString -> Ptr (Ptr (TQDirModel x0) -> Ptr (TQModelIndex t1) -> Ptr (TQVariant t2) -> CInt -> IO (CBool)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QDirModel15 :: (Ptr (TQDirModel x0) -> Ptr (TQModelIndex t1) -> Ptr (TQVariant t2) -> CInt -> IO (CBool)) -> IO (FunPtr (Ptr (TQDirModel x0) -> Ptr (TQModelIndex t1) -> Ptr (TQVariant t2) -> CInt -> IO (CBool)))

foreign import ccall "wrapper" wrapSetHandler_QDirModel15_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QDirModelSc a) (QDirModel x0 -> QModelIndex t1 -> QVariant t2 -> Int -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QDirModel15 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QDirModel15_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QDirModel_setHandler15 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQDirModel x0) -> Ptr (TQModelIndex t1) -> Ptr (TQVariant t2) -> CInt -> IO (CBool)
    setHandlerWrapper x0 x1 x2 x3
      = do x0obj <- qDirModelFromPtr x0
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

instance QsetData_h (QDirModel ()) ((QModelIndex t1, QVariant t2)) (IO (Bool)) where
 setData_h x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QDirModel_setData cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QDirModel_setData" qtc_QDirModel_setData :: Ptr (TQDirModel a) -> Ptr (TQModelIndex t1) -> Ptr (TQVariant t2) -> IO CBool

instance QsetData_h (QDirModelSc a) ((QModelIndex t1, QVariant t2)) (IO (Bool)) where
 setData_h x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QDirModel_setData cobj_x0 cobj_x1 cobj_x2

instance QsetData_h (QDirModel ()) ((QModelIndex t1, QVariant t2, Int)) (IO (Bool)) where
 setData_h x0 (x1, x2, x3)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QDirModel_setData1 cobj_x0 cobj_x1 cobj_x2 (toCInt x3)

foreign import ccall "qtc_QDirModel_setData1" qtc_QDirModel_setData1 :: Ptr (TQDirModel a) -> Ptr (TQModelIndex t1) -> Ptr (TQVariant t2) -> CInt -> IO CBool

instance QsetData_h (QDirModelSc a) ((QModelIndex t1, QVariant t2, Int)) (IO (Bool)) where
 setData_h x0 (x1, x2, x3)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QDirModel_setData1 cobj_x0 cobj_x1 cobj_x2 (toCInt x3)

instance QsetHandler (QDirModel ()) (QDirModel x0 -> Int -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QDirModel16 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QDirModel16_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QDirModel_setHandler16 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQDirModel x0) -> CInt -> IO ()
    setHandlerWrapper x0 x1
      = do x0obj <- qDirModelFromPtr x0
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

foreign import ccall "qtc_QDirModel_setHandler16" qtc_QDirModel_setHandler16 :: Ptr (TQDirModel a) -> CWString -> Ptr (Ptr (TQDirModel x0) -> CInt -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QDirModel16 :: (Ptr (TQDirModel x0) -> CInt -> IO ()) -> IO (FunPtr (Ptr (TQDirModel x0) -> CInt -> IO ()))

foreign import ccall "wrapper" wrapSetHandler_QDirModel16_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QDirModelSc a) (QDirModel x0 -> Int -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QDirModel16 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QDirModel16_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QDirModel_setHandler16 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQDirModel x0) -> CInt -> IO ()
    setHandlerWrapper x0 x1
      = do x0obj <- qDirModelFromPtr x0
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

instance QsetHandler (QDirModel ()) (QDirModel x0 -> Int -> SortOrder -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QDirModel17 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QDirModel17_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QDirModel_setHandler17 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQDirModel x0) -> CInt -> CLong -> IO ()
    setHandlerWrapper x0 x1 x2
      = do x0obj <- qDirModelFromPtr x0
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

foreign import ccall "qtc_QDirModel_setHandler17" qtc_QDirModel_setHandler17 :: Ptr (TQDirModel a) -> CWString -> Ptr (Ptr (TQDirModel x0) -> CInt -> CLong -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QDirModel17 :: (Ptr (TQDirModel x0) -> CInt -> CLong -> IO ()) -> IO (FunPtr (Ptr (TQDirModel x0) -> CInt -> CLong -> IO ()))

foreign import ccall "wrapper" wrapSetHandler_QDirModel17_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QDirModelSc a) (QDirModel x0 -> Int -> SortOrder -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QDirModel17 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QDirModel17_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QDirModel_setHandler17 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQDirModel x0) -> CInt -> CLong -> IO ()
    setHandlerWrapper x0 x1 x2
      = do x0obj <- qDirModelFromPtr x0
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

instance Qsort_h (QDirModel ()) ((Int)) where
 sort_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDirModel_sort cobj_x0 (toCInt x1)

foreign import ccall "qtc_QDirModel_sort" qtc_QDirModel_sort :: Ptr (TQDirModel a) -> CInt -> IO ()

instance Qsort_h (QDirModelSc a) ((Int)) where
 sort_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDirModel_sort cobj_x0 (toCInt x1)

instance Qsort_h (QDirModel ()) ((Int, SortOrder)) where
 sort_h x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDirModel_sort1 cobj_x0 (toCInt x1) (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QDirModel_sort1" qtc_QDirModel_sort1 :: Ptr (TQDirModel a) -> CInt -> CLong -> IO ()

instance Qsort_h (QDirModelSc a) ((Int, SortOrder)) where
 sort_h x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDirModel_sort1 cobj_x0 (toCInt x1) (toCLong $ qEnum_toInt x2)

instance QsetHandler (QDirModel ()) (QDirModel x0 -> IO (DropActions)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QDirModel18 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QDirModel18_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QDirModel_setHandler18 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQDirModel x0) -> IO (CLong)
    setHandlerWrapper x0
      = do x0obj <- qDirModelFromPtr x0
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

foreign import ccall "qtc_QDirModel_setHandler18" qtc_QDirModel_setHandler18 :: Ptr (TQDirModel a) -> CWString -> Ptr (Ptr (TQDirModel x0) -> IO (CLong)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QDirModel18 :: (Ptr (TQDirModel x0) -> IO (CLong)) -> IO (FunPtr (Ptr (TQDirModel x0) -> IO (CLong)))

foreign import ccall "wrapper" wrapSetHandler_QDirModel18_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QDirModelSc a) (QDirModel x0 -> IO (DropActions)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QDirModel18 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QDirModel18_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QDirModel_setHandler18 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQDirModel x0) -> IO (CLong)
    setHandlerWrapper x0
      = do x0obj <- qDirModelFromPtr x0
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

instance QsupportedDropActions_h (QDirModel ()) (()) where
 supportedDropActions_h x0 ()
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDirModel_supportedDropActions cobj_x0

foreign import ccall "qtc_QDirModel_supportedDropActions" qtc_QDirModel_supportedDropActions :: Ptr (TQDirModel a) -> IO CLong

instance QsupportedDropActions_h (QDirModelSc a) (()) where
 supportedDropActions_h x0 ()
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDirModel_supportedDropActions cobj_x0

instance Qbuddy_h (QDirModel ()) ((QModelIndex t1)) where
 buddy_h x0 (x1)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDirModel_buddy cobj_x0 cobj_x1

foreign import ccall "qtc_QDirModel_buddy" qtc_QDirModel_buddy :: Ptr (TQDirModel a) -> Ptr (TQModelIndex t1) -> IO (Ptr (TQModelIndex ()))

instance Qbuddy_h (QDirModelSc a) ((QModelIndex t1)) where
 buddy_h x0 (x1)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDirModel_buddy cobj_x0 cobj_x1

instance QcanFetchMore_h (QDirModel ()) ((QModelIndex t1)) where
 canFetchMore_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDirModel_canFetchMore cobj_x0 cobj_x1

foreign import ccall "qtc_QDirModel_canFetchMore" qtc_QDirModel_canFetchMore :: Ptr (TQDirModel a) -> Ptr (TQModelIndex t1) -> IO CBool

instance QcanFetchMore_h (QDirModelSc a) ((QModelIndex t1)) where
 canFetchMore_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDirModel_canFetchMore cobj_x0 cobj_x1

instance QsetHandler (QDirModel ()) (QDirModel x0 -> QModelIndex t1 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QDirModel19 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QDirModel19_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QDirModel_setHandler19 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQDirModel x0) -> Ptr (TQModelIndex t1) -> IO ()
    setHandlerWrapper x0 x1
      = do x0obj <- qDirModelFromPtr x0
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

foreign import ccall "qtc_QDirModel_setHandler19" qtc_QDirModel_setHandler19 :: Ptr (TQDirModel a) -> CWString -> Ptr (Ptr (TQDirModel x0) -> Ptr (TQModelIndex t1) -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QDirModel19 :: (Ptr (TQDirModel x0) -> Ptr (TQModelIndex t1) -> IO ()) -> IO (FunPtr (Ptr (TQDirModel x0) -> Ptr (TQModelIndex t1) -> IO ()))

foreign import ccall "wrapper" wrapSetHandler_QDirModel19_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QDirModelSc a) (QDirModel x0 -> QModelIndex t1 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QDirModel19 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QDirModel19_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QDirModel_setHandler19 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQDirModel x0) -> Ptr (TQModelIndex t1) -> IO ()
    setHandlerWrapper x0 x1
      = do x0obj <- qDirModelFromPtr x0
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

instance QfetchMore_h (QDirModel ()) ((QModelIndex t1)) where
 fetchMore_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDirModel_fetchMore cobj_x0 cobj_x1

foreign import ccall "qtc_QDirModel_fetchMore" qtc_QDirModel_fetchMore :: Ptr (TQDirModel a) -> Ptr (TQModelIndex t1) -> IO ()

instance QfetchMore_h (QDirModelSc a) ((QModelIndex t1)) where
 fetchMore_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDirModel_fetchMore cobj_x0 cobj_x1

instance QsetHandler (QDirModel ()) (QDirModel x0 -> Int -> Int -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QDirModel20 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QDirModel20_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QDirModel_setHandler20 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQDirModel x0) -> CInt -> CInt -> IO (CBool)
    setHandlerWrapper x0 x1 x2
      = do x0obj <- qDirModelFromPtr x0
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

foreign import ccall "qtc_QDirModel_setHandler20" qtc_QDirModel_setHandler20 :: Ptr (TQDirModel a) -> CWString -> Ptr (Ptr (TQDirModel x0) -> CInt -> CInt -> IO (CBool)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QDirModel20 :: (Ptr (TQDirModel x0) -> CInt -> CInt -> IO (CBool)) -> IO (FunPtr (Ptr (TQDirModel x0) -> CInt -> CInt -> IO (CBool)))

foreign import ccall "wrapper" wrapSetHandler_QDirModel20_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QDirModelSc a) (QDirModel x0 -> Int -> Int -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QDirModel20 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QDirModel20_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QDirModel_setHandler20 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQDirModel x0) -> CInt -> CInt -> IO (CBool)
    setHandlerWrapper x0 x1 x2
      = do x0obj <- qDirModelFromPtr x0
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

instance QsetHandler (QDirModel ()) (QDirModel x0 -> Int -> Int -> QModelIndex t3 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QDirModel21 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QDirModel21_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QDirModel_setHandler21 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQDirModel x0) -> CInt -> CInt -> Ptr (TQModelIndex t3) -> IO (CBool)
    setHandlerWrapper x0 x1 x2 x3
      = do x0obj <- qDirModelFromPtr x0
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

foreign import ccall "qtc_QDirModel_setHandler21" qtc_QDirModel_setHandler21 :: Ptr (TQDirModel a) -> CWString -> Ptr (Ptr (TQDirModel x0) -> CInt -> CInt -> Ptr (TQModelIndex t3) -> IO (CBool)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QDirModel21 :: (Ptr (TQDirModel x0) -> CInt -> CInt -> Ptr (TQModelIndex t3) -> IO (CBool)) -> IO (FunPtr (Ptr (TQDirModel x0) -> CInt -> CInt -> Ptr (TQModelIndex t3) -> IO (CBool)))

foreign import ccall "wrapper" wrapSetHandler_QDirModel21_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QDirModelSc a) (QDirModel x0 -> Int -> Int -> QModelIndex t3 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QDirModel21 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QDirModel21_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QDirModel_setHandler21 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQDirModel x0) -> CInt -> CInt -> Ptr (TQModelIndex t3) -> IO (CBool)
    setHandlerWrapper x0 x1 x2 x3
      = do x0obj <- qDirModelFromPtr x0
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

instance QinsertColumns_h (QDirModel ()) ((Int, Int)) where
 insertColumns_h x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDirModel_insertColumns cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QDirModel_insertColumns" qtc_QDirModel_insertColumns :: Ptr (TQDirModel a) -> CInt -> CInt -> IO CBool

instance QinsertColumns_h (QDirModelSc a) ((Int, Int)) where
 insertColumns_h x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDirModel_insertColumns cobj_x0 (toCInt x1) (toCInt x2)

instance QinsertColumns_h (QDirModel ()) ((Int, Int, QModelIndex t3)) where
 insertColumns_h x0 (x1, x2, x3)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QDirModel_insertColumns1 cobj_x0 (toCInt x1) (toCInt x2) cobj_x3

foreign import ccall "qtc_QDirModel_insertColumns1" qtc_QDirModel_insertColumns1 :: Ptr (TQDirModel a) -> CInt -> CInt -> Ptr (TQModelIndex t3) -> IO CBool

instance QinsertColumns_h (QDirModelSc a) ((Int, Int, QModelIndex t3)) where
 insertColumns_h x0 (x1, x2, x3)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QDirModel_insertColumns1 cobj_x0 (toCInt x1) (toCInt x2) cobj_x3

instance QinsertRows_h (QDirModel ()) ((Int, Int)) where
 insertRows_h x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDirModel_insertRows cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QDirModel_insertRows" qtc_QDirModel_insertRows :: Ptr (TQDirModel a) -> CInt -> CInt -> IO CBool

instance QinsertRows_h (QDirModelSc a) ((Int, Int)) where
 insertRows_h x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDirModel_insertRows cobj_x0 (toCInt x1) (toCInt x2)

instance QinsertRows_h (QDirModel ()) ((Int, Int, QModelIndex t3)) where
 insertRows_h x0 (x1, x2, x3)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QDirModel_insertRows1 cobj_x0 (toCInt x1) (toCInt x2) cobj_x3

foreign import ccall "qtc_QDirModel_insertRows1" qtc_QDirModel_insertRows1 :: Ptr (TQDirModel a) -> CInt -> CInt -> Ptr (TQModelIndex t3) -> IO CBool

instance QinsertRows_h (QDirModelSc a) ((Int, Int, QModelIndex t3)) where
 insertRows_h x0 (x1, x2, x3)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QDirModel_insertRows1 cobj_x0 (toCInt x1) (toCInt x2) cobj_x3

instance QremoveColumns_h (QDirModel ()) ((Int, Int)) where
 removeColumns_h x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDirModel_removeColumns cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QDirModel_removeColumns" qtc_QDirModel_removeColumns :: Ptr (TQDirModel a) -> CInt -> CInt -> IO CBool

instance QremoveColumns_h (QDirModelSc a) ((Int, Int)) where
 removeColumns_h x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDirModel_removeColumns cobj_x0 (toCInt x1) (toCInt x2)

instance QremoveColumns_h (QDirModel ()) ((Int, Int, QModelIndex t3)) where
 removeColumns_h x0 (x1, x2, x3)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QDirModel_removeColumns1 cobj_x0 (toCInt x1) (toCInt x2) cobj_x3

foreign import ccall "qtc_QDirModel_removeColumns1" qtc_QDirModel_removeColumns1 :: Ptr (TQDirModel a) -> CInt -> CInt -> Ptr (TQModelIndex t3) -> IO CBool

instance QremoveColumns_h (QDirModelSc a) ((Int, Int, QModelIndex t3)) where
 removeColumns_h x0 (x1, x2, x3)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QDirModel_removeColumns1 cobj_x0 (toCInt x1) (toCInt x2) cobj_x3

instance QremoveRows_h (QDirModel ()) ((Int, Int)) where
 removeRows_h x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDirModel_removeRows cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QDirModel_removeRows" qtc_QDirModel_removeRows :: Ptr (TQDirModel a) -> CInt -> CInt -> IO CBool

instance QremoveRows_h (QDirModelSc a) ((Int, Int)) where
 removeRows_h x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDirModel_removeRows cobj_x0 (toCInt x1) (toCInt x2)

instance QremoveRows_h (QDirModel ()) ((Int, Int, QModelIndex t3)) where
 removeRows_h x0 (x1, x2, x3)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QDirModel_removeRows1 cobj_x0 (toCInt x1) (toCInt x2) cobj_x3

foreign import ccall "qtc_QDirModel_removeRows1" qtc_QDirModel_removeRows1 :: Ptr (TQDirModel a) -> CInt -> CInt -> Ptr (TQModelIndex t3) -> IO CBool

instance QremoveRows_h (QDirModelSc a) ((Int, Int, QModelIndex t3)) where
 removeRows_h x0 (x1, x2, x3)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QDirModel_removeRows1 cobj_x0 (toCInt x1) (toCInt x2) cobj_x3

instance QsetHandler (QDirModel ()) (QDirModel x0 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QDirModel22 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QDirModel22_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QDirModel_setHandler22 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQDirModel x0) -> IO ()
    setHandlerWrapper x0
      = do x0obj <- qDirModelFromPtr x0
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

foreign import ccall "qtc_QDirModel_setHandler22" qtc_QDirModel_setHandler22 :: Ptr (TQDirModel a) -> CWString -> Ptr (Ptr (TQDirModel x0) -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QDirModel22 :: (Ptr (TQDirModel x0) -> IO ()) -> IO (FunPtr (Ptr (TQDirModel x0) -> IO ()))

foreign import ccall "wrapper" wrapSetHandler_QDirModel22_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QDirModelSc a) (QDirModel x0 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QDirModel22 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QDirModel22_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QDirModel_setHandler22 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQDirModel x0) -> IO ()
    setHandlerWrapper x0
      = do x0obj <- qDirModelFromPtr x0
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

instance Qrevert_h (QDirModel ()) (()) where
 revert_h x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDirModel_revert cobj_x0

foreign import ccall "qtc_QDirModel_revert" qtc_QDirModel_revert :: Ptr (TQDirModel a) -> IO ()

instance Qrevert_h (QDirModelSc a) (()) where
 revert_h x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDirModel_revert cobj_x0

instance QsetHandler (QDirModel ()) (QDirModel x0 -> Int -> QtOrientation -> QVariant t3 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QDirModel23 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QDirModel23_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QDirModel_setHandler23 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQDirModel x0) -> CInt -> CLong -> Ptr (TQVariant t3) -> IO (CBool)
    setHandlerWrapper x0 x1 x2 x3
      = do x0obj <- qDirModelFromPtr x0
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

foreign import ccall "qtc_QDirModel_setHandler23" qtc_QDirModel_setHandler23 :: Ptr (TQDirModel a) -> CWString -> Ptr (Ptr (TQDirModel x0) -> CInt -> CLong -> Ptr (TQVariant t3) -> IO (CBool)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QDirModel23 :: (Ptr (TQDirModel x0) -> CInt -> CLong -> Ptr (TQVariant t3) -> IO (CBool)) -> IO (FunPtr (Ptr (TQDirModel x0) -> CInt -> CLong -> Ptr (TQVariant t3) -> IO (CBool)))

foreign import ccall "wrapper" wrapSetHandler_QDirModel23_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QDirModelSc a) (QDirModel x0 -> Int -> QtOrientation -> QVariant t3 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QDirModel23 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QDirModel23_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QDirModel_setHandler23 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQDirModel x0) -> CInt -> CLong -> Ptr (TQVariant t3) -> IO (CBool)
    setHandlerWrapper x0 x1 x2 x3
      = do x0obj <- qDirModelFromPtr x0
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

instance QsetHandler (QDirModel ()) (QDirModel x0 -> Int -> QtOrientation -> QVariant t3 -> Int -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QDirModel24 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QDirModel24_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QDirModel_setHandler24 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQDirModel x0) -> CInt -> CLong -> Ptr (TQVariant t3) -> CInt -> IO (CBool)
    setHandlerWrapper x0 x1 x2 x3 x4
      = do x0obj <- qDirModelFromPtr x0
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

foreign import ccall "qtc_QDirModel_setHandler24" qtc_QDirModel_setHandler24 :: Ptr (TQDirModel a) -> CWString -> Ptr (Ptr (TQDirModel x0) -> CInt -> CLong -> Ptr (TQVariant t3) -> CInt -> IO (CBool)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QDirModel24 :: (Ptr (TQDirModel x0) -> CInt -> CLong -> Ptr (TQVariant t3) -> CInt -> IO (CBool)) -> IO (FunPtr (Ptr (TQDirModel x0) -> CInt -> CLong -> Ptr (TQVariant t3) -> CInt -> IO (CBool)))

foreign import ccall "wrapper" wrapSetHandler_QDirModel24_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QDirModelSc a) (QDirModel x0 -> Int -> QtOrientation -> QVariant t3 -> Int -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QDirModel24 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QDirModel24_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QDirModel_setHandler24 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQDirModel x0) -> CInt -> CLong -> Ptr (TQVariant t3) -> CInt -> IO (CBool)
    setHandlerWrapper x0 x1 x2 x3 x4
      = do x0obj <- qDirModelFromPtr x0
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

instance QsetHeaderData_h (QDirModel ()) ((Int, QtOrientation, QVariant t3)) where
 setHeaderData_h x0 (x1, x2, x3)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QDirModel_setHeaderData cobj_x0 (toCInt x1) (toCLong $ qEnum_toInt x2) cobj_x3

foreign import ccall "qtc_QDirModel_setHeaderData" qtc_QDirModel_setHeaderData :: Ptr (TQDirModel a) -> CInt -> CLong -> Ptr (TQVariant t3) -> IO CBool

instance QsetHeaderData_h (QDirModelSc a) ((Int, QtOrientation, QVariant t3)) where
 setHeaderData_h x0 (x1, x2, x3)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QDirModel_setHeaderData cobj_x0 (toCInt x1) (toCLong $ qEnum_toInt x2) cobj_x3

instance QsetHeaderData_h (QDirModel ()) ((Int, QtOrientation, QVariant t3, Int)) where
 setHeaderData_h x0 (x1, x2, x3, x4)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QDirModel_setHeaderData1 cobj_x0 (toCInt x1) (toCLong $ qEnum_toInt x2) cobj_x3 (toCInt x4)

foreign import ccall "qtc_QDirModel_setHeaderData1" qtc_QDirModel_setHeaderData1 :: Ptr (TQDirModel a) -> CInt -> CLong -> Ptr (TQVariant t3) -> CInt -> IO CBool

instance QsetHeaderData_h (QDirModelSc a) ((Int, QtOrientation, QVariant t3, Int)) where
 setHeaderData_h x0 (x1, x2, x3, x4)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QDirModel_setHeaderData1 cobj_x0 (toCInt x1) (toCLong $ qEnum_toInt x2) cobj_x3 (toCInt x4)

instance QsetHandler (QDirModel ()) (QDirModel x0 -> QModelIndex t1 -> IO (QSize t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QDirModel25 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QDirModel25_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QDirModel_setHandler25 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQDirModel x0) -> Ptr (TQModelIndex t1) -> IO (Ptr (TQSize t0))
    setHandlerWrapper x0 x1
      = do x0obj <- qDirModelFromPtr x0
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

foreign import ccall "qtc_QDirModel_setHandler25" qtc_QDirModel_setHandler25 :: Ptr (TQDirModel a) -> CWString -> Ptr (Ptr (TQDirModel x0) -> Ptr (TQModelIndex t1) -> IO (Ptr (TQSize t0))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QDirModel25 :: (Ptr (TQDirModel x0) -> Ptr (TQModelIndex t1) -> IO (Ptr (TQSize t0))) -> IO (FunPtr (Ptr (TQDirModel x0) -> Ptr (TQModelIndex t1) -> IO (Ptr (TQSize t0))))

foreign import ccall "wrapper" wrapSetHandler_QDirModel25_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QDirModelSc a) (QDirModel x0 -> QModelIndex t1 -> IO (QSize t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QDirModel25 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QDirModel25_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QDirModel_setHandler25 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQDirModel x0) -> Ptr (TQModelIndex t1) -> IO (Ptr (TQSize t0))
    setHandlerWrapper x0 x1
      = do x0obj <- qDirModelFromPtr x0
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

instance Qqspan_h (QDirModel ()) ((QModelIndex t1)) where
 qspan_h x0 (x1)
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDirModel_span cobj_x0 cobj_x1

foreign import ccall "qtc_QDirModel_span" qtc_QDirModel_span :: Ptr (TQDirModel a) -> Ptr (TQModelIndex t1) -> IO (Ptr (TQSize ()))

instance Qqspan_h (QDirModelSc a) ((QModelIndex t1)) where
 qspan_h x0 (x1)
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDirModel_span cobj_x0 cobj_x1

instance Qspan_h (QDirModel ()) ((QModelIndex t1)) where
 span_h x0 (x1)
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDirModel_span_qth cobj_x0 cobj_x1 csize_ret_w csize_ret_h

foreign import ccall "qtc_QDirModel_span_qth" qtc_QDirModel_span_qth :: Ptr (TQDirModel a) -> Ptr (TQModelIndex t1) -> Ptr CInt -> Ptr CInt -> IO ()

instance Qspan_h (QDirModelSc a) ((QModelIndex t1)) where
 span_h x0 (x1)
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDirModel_span_qth cobj_x0 cobj_x1 csize_ret_w csize_ret_h

instance Qsubmit_h (QDirModel ()) (()) where
 submit_h x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDirModel_submit cobj_x0

foreign import ccall "qtc_QDirModel_submit" qtc_QDirModel_submit :: Ptr (TQDirModel a) -> IO CBool

instance Qsubmit_h (QDirModelSc a) (()) where
 submit_h x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDirModel_submit cobj_x0

instance QsetHandler (QDirModel ()) (QDirModel x0 -> QEvent t1 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QDirModel26 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QDirModel26_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QDirModel_setHandler26 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQDirModel x0) -> Ptr (TQEvent t1) -> IO (CBool)
    setHandlerWrapper x0 x1
      = do x0obj <- qDirModelFromPtr x0
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

foreign import ccall "qtc_QDirModel_setHandler26" qtc_QDirModel_setHandler26 :: Ptr (TQDirModel a) -> CWString -> Ptr (Ptr (TQDirModel x0) -> Ptr (TQEvent t1) -> IO (CBool)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QDirModel26 :: (Ptr (TQDirModel x0) -> Ptr (TQEvent t1) -> IO (CBool)) -> IO (FunPtr (Ptr (TQDirModel x0) -> Ptr (TQEvent t1) -> IO (CBool)))

foreign import ccall "wrapper" wrapSetHandler_QDirModel26_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QDirModelSc a) (QDirModel x0 -> QEvent t1 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QDirModel26 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QDirModel26_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QDirModel_setHandler26 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQDirModel x0) -> Ptr (TQEvent t1) -> IO (CBool)
    setHandlerWrapper x0 x1
      = do x0obj <- qDirModelFromPtr x0
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

instance Qevent_h (QDirModel ()) ((QEvent t1)) where
 event_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDirModel_event cobj_x0 cobj_x1

foreign import ccall "qtc_QDirModel_event" qtc_QDirModel_event :: Ptr (TQDirModel a) -> Ptr (TQEvent t1) -> IO CBool

instance Qevent_h (QDirModelSc a) ((QEvent t1)) where
 event_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDirModel_event cobj_x0 cobj_x1

instance QsetHandler (QDirModel ()) (QDirModel x0 -> QObject t1 -> QEvent t2 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QDirModel27 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QDirModel27_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QDirModel_setHandler27 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQDirModel x0) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO (CBool)
    setHandlerWrapper x0 x1 x2
      = do x0obj <- qDirModelFromPtr x0
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

foreign import ccall "qtc_QDirModel_setHandler27" qtc_QDirModel_setHandler27 :: Ptr (TQDirModel a) -> CWString -> Ptr (Ptr (TQDirModel x0) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO (CBool)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QDirModel27 :: (Ptr (TQDirModel x0) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO (CBool)) -> IO (FunPtr (Ptr (TQDirModel x0) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO (CBool)))

foreign import ccall "wrapper" wrapSetHandler_QDirModel27_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QDirModelSc a) (QDirModel x0 -> QObject t1 -> QEvent t2 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QDirModel27 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QDirModel27_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QDirModel_setHandler27 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQDirModel x0) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO (CBool)
    setHandlerWrapper x0 x1 x2
      = do x0obj <- qDirModelFromPtr x0
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

instance QeventFilter_h (QDirModel ()) ((QObject t1, QEvent t2)) where
 eventFilter_h x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QDirModel_eventFilter cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QDirModel_eventFilter" qtc_QDirModel_eventFilter :: Ptr (TQDirModel a) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO CBool

instance QeventFilter_h (QDirModelSc a) ((QObject t1, QEvent t2)) where
 eventFilter_h x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QDirModel_eventFilter cobj_x0 cobj_x1 cobj_x2

