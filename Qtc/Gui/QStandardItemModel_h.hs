{-# OPTIONS -fglasgow-exts -#include "../include/gui/qtc_hs_QStandardItemModel_h.h" #-}
-----------------------------------------------------------------------------
{-| Module    : QStandardItemModel_h.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:20
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QStandardItemModel_h where

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

instance QunSetUserMethod (QStandardItemModel ()) where
 unSetUserMethod qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QStandardItemModel_unSetUserMethod cobj_qobj (toCInt 0) (toCInt evid)

foreign import ccall "qtc_QStandardItemModel_unSetUserMethod" qtc_QStandardItemModel_unSetUserMethod :: Ptr (TQStandardItemModel a) -> CInt -> CInt -> IO (CBool)

instance QunSetUserMethod (QStandardItemModelSc a) where
 unSetUserMethod qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QStandardItemModel_unSetUserMethod cobj_qobj (toCInt 0) (toCInt evid)

instance QunSetUserMethodVariant (QStandardItemModel ()) where
 unSetUserMethodVariant qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QStandardItemModel_unSetUserMethod cobj_qobj (toCInt 1) (toCInt evid)

instance QunSetUserMethodVariant (QStandardItemModelSc a) where
 unSetUserMethodVariant qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QStandardItemModel_unSetUserMethod cobj_qobj (toCInt 1) (toCInt evid)

instance QunSetUserMethodVariantList (QStandardItemModel ()) where
 unSetUserMethodVariantList qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QStandardItemModel_unSetUserMethod cobj_qobj (toCInt 2) (toCInt evid)

instance QunSetUserMethodVariantList (QStandardItemModelSc a) where
 unSetUserMethodVariantList qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QStandardItemModel_unSetUserMethod cobj_qobj (toCInt 2) (toCInt evid)

instance QsetUserMethod (QStandardItemModel ()) (QStandardItemModel x0 -> IO ()) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethod_QStandardItemModel setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethod_QStandardItemModel_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QStandardItemModel_setUserMethod cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQStandardItemModel x0) -> IO ()
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

foreign import ccall "qtc_QStandardItemModel_setUserMethod" qtc_QStandardItemModel_setUserMethod :: Ptr (TQStandardItemModel a) -> CInt -> Ptr (Ptr (TQStandardItemModel x0) -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetUserMethod_QStandardItemModel :: (Ptr (TQStandardItemModel x0) -> IO ()) -> IO (FunPtr (Ptr (TQStandardItemModel x0) -> IO ()))

foreign import ccall "wrapper" wrapSetUserMethod_QStandardItemModel_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetUserMethod (QStandardItemModelSc a) (QStandardItemModel x0 -> IO ()) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethod_QStandardItemModel setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethod_QStandardItemModel_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QStandardItemModel_setUserMethod cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQStandardItemModel x0) -> IO ()
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

instance QsetUserMethod (QStandardItemModel ()) (QStandardItemModel x0 -> QVariant () -> IO (QVariant ())) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethodVariant_QStandardItemModel setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethodVariant_QStandardItemModel_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QStandardItemModel_setUserMethodVariant cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQStandardItemModel x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))
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

foreign import ccall "qtc_QStandardItemModel_setUserMethodVariant" qtc_QStandardItemModel_setUserMethodVariant :: Ptr (TQStandardItemModel a) -> CInt -> Ptr (Ptr (TQStandardItemModel x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetUserMethodVariant_QStandardItemModel :: (Ptr (TQStandardItemModel x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))) -> IO (FunPtr (Ptr (TQStandardItemModel x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))))

foreign import ccall "wrapper" wrapSetUserMethodVariant_QStandardItemModel_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetUserMethod (QStandardItemModelSc a) (QStandardItemModel x0 -> QVariant () -> IO (QVariant ())) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethodVariant_QStandardItemModel setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethodVariant_QStandardItemModel_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QStandardItemModel_setUserMethodVariant cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQStandardItemModel x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))
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

instance QunSetHandler (QStandardItemModel ()) where 
 unSetHandler qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withCWString evid $ \cstr_evid ->
    qtc_QStandardItemModel_unSetHandler cobj_qobj cstr_evid

foreign import ccall "qtc_QStandardItemModel_unSetHandler" qtc_QStandardItemModel_unSetHandler :: Ptr (TQStandardItemModel a) -> CWString -> IO (CBool)

instance QunSetHandler (QStandardItemModelSc a) where 
 unSetHandler qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withCWString evid $ \cstr_evid ->
    qtc_QStandardItemModel_unSetHandler cobj_qobj cstr_evid

instance QsetHandler (QStandardItemModel ()) (QStandardItemModel x0 -> QModelIndex t1 -> IO (Int)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QStandardItemModel1 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QStandardItemModel1_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QStandardItemModel_setHandler1 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQStandardItemModel x0) -> Ptr (TQModelIndex t1) -> IO (CInt)
    setHandlerWrapper x0 x1
      = do x0obj <- qStandardItemModelFromPtr x0
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

foreign import ccall "qtc_QStandardItemModel_setHandler1" qtc_QStandardItemModel_setHandler1 :: Ptr (TQStandardItemModel a) -> CWString -> Ptr (Ptr (TQStandardItemModel x0) -> Ptr (TQModelIndex t1) -> IO (CInt)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QStandardItemModel1 :: (Ptr (TQStandardItemModel x0) -> Ptr (TQModelIndex t1) -> IO (CInt)) -> IO (FunPtr (Ptr (TQStandardItemModel x0) -> Ptr (TQModelIndex t1) -> IO (CInt)))

foreign import ccall "wrapper" wrapSetHandler_QStandardItemModel1_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QStandardItemModelSc a) (QStandardItemModel x0 -> QModelIndex t1 -> IO (Int)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QStandardItemModel1 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QStandardItemModel1_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QStandardItemModel_setHandler1 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQStandardItemModel x0) -> Ptr (TQModelIndex t1) -> IO (CInt)
    setHandlerWrapper x0 x1
      = do x0obj <- qStandardItemModelFromPtr x0
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

instance QcolumnCount_h (QStandardItemModel ()) ((QModelIndex t1)) where
 columnCount_h x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStandardItemModel_columnCount1 cobj_x0 cobj_x1

foreign import ccall "qtc_QStandardItemModel_columnCount1" qtc_QStandardItemModel_columnCount1 :: Ptr (TQStandardItemModel a) -> Ptr (TQModelIndex t1) -> IO CInt

instance QcolumnCount_h (QStandardItemModelSc a) ((QModelIndex t1)) where
 columnCount_h x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStandardItemModel_columnCount1 cobj_x0 cobj_x1

instance QsetHandler (QStandardItemModel ()) (QStandardItemModel x0 -> QModelIndex t1 -> Int -> IO (QVariant t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QStandardItemModel2 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QStandardItemModel2_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QStandardItemModel_setHandler2 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQStandardItemModel x0) -> Ptr (TQModelIndex t1) -> CInt -> IO (Ptr (TQVariant t0))
    setHandlerWrapper x0 x1 x2
      = do x0obj <- qStandardItemModelFromPtr x0
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

foreign import ccall "qtc_QStandardItemModel_setHandler2" qtc_QStandardItemModel_setHandler2 :: Ptr (TQStandardItemModel a) -> CWString -> Ptr (Ptr (TQStandardItemModel x0) -> Ptr (TQModelIndex t1) -> CInt -> IO (Ptr (TQVariant t0))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QStandardItemModel2 :: (Ptr (TQStandardItemModel x0) -> Ptr (TQModelIndex t1) -> CInt -> IO (Ptr (TQVariant t0))) -> IO (FunPtr (Ptr (TQStandardItemModel x0) -> Ptr (TQModelIndex t1) -> CInt -> IO (Ptr (TQVariant t0))))

foreign import ccall "wrapper" wrapSetHandler_QStandardItemModel2_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QStandardItemModelSc a) (QStandardItemModel x0 -> QModelIndex t1 -> Int -> IO (QVariant t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QStandardItemModel2 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QStandardItemModel2_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QStandardItemModel_setHandler2 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQStandardItemModel x0) -> Ptr (TQModelIndex t1) -> CInt -> IO (Ptr (TQVariant t0))
    setHandlerWrapper x0 x1 x2
      = do x0obj <- qStandardItemModelFromPtr x0
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

instance Qqdata_h (QStandardItemModel ()) ((QModelIndex t1, Int)) where
 qdata_h x0 (x1, x2)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStandardItemModel_data1 cobj_x0 cobj_x1 (toCInt x2)

foreign import ccall "qtc_QStandardItemModel_data1" qtc_QStandardItemModel_data1 :: Ptr (TQStandardItemModel a) -> Ptr (TQModelIndex t1) -> CInt -> IO (Ptr (TQVariant ()))

instance Qqdata_h (QStandardItemModelSc a) ((QModelIndex t1, Int)) where
 qdata_h x0 (x1, x2)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStandardItemModel_data1 cobj_x0 cobj_x1 (toCInt x2)

instance QsetHandler (QStandardItemModel ()) (QStandardItemModel x0 -> QModelIndex t1 -> IO (ItemFlags)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QStandardItemModel3 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QStandardItemModel3_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QStandardItemModel_setHandler3 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQStandardItemModel x0) -> Ptr (TQModelIndex t1) -> IO (CLong)
    setHandlerWrapper x0 x1
      = do x0obj <- qStandardItemModelFromPtr x0
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

foreign import ccall "qtc_QStandardItemModel_setHandler3" qtc_QStandardItemModel_setHandler3 :: Ptr (TQStandardItemModel a) -> CWString -> Ptr (Ptr (TQStandardItemModel x0) -> Ptr (TQModelIndex t1) -> IO (CLong)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QStandardItemModel3 :: (Ptr (TQStandardItemModel x0) -> Ptr (TQModelIndex t1) -> IO (CLong)) -> IO (FunPtr (Ptr (TQStandardItemModel x0) -> Ptr (TQModelIndex t1) -> IO (CLong)))

foreign import ccall "wrapper" wrapSetHandler_QStandardItemModel3_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QStandardItemModelSc a) (QStandardItemModel x0 -> QModelIndex t1 -> IO (ItemFlags)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QStandardItemModel3 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QStandardItemModel3_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QStandardItemModel_setHandler3 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQStandardItemModel x0) -> Ptr (TQModelIndex t1) -> IO (CLong)
    setHandlerWrapper x0 x1
      = do x0obj <- qStandardItemModelFromPtr x0
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

instance Qflags_h (QStandardItemModel ()) ((QModelIndex t1)) where
 flags_h x0 (x1)
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStandardItemModel_flags cobj_x0 cobj_x1

foreign import ccall "qtc_QStandardItemModel_flags" qtc_QStandardItemModel_flags :: Ptr (TQStandardItemModel a) -> Ptr (TQModelIndex t1) -> IO CLong

instance Qflags_h (QStandardItemModelSc a) ((QModelIndex t1)) where
 flags_h x0 (x1)
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStandardItemModel_flags cobj_x0 cobj_x1

instance QsetHandler (QStandardItemModel ()) (QStandardItemModel x0 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QStandardItemModel4 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QStandardItemModel4_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QStandardItemModel_setHandler4 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQStandardItemModel x0) -> IO (CBool)
    setHandlerWrapper x0
      = do x0obj <- qStandardItemModelFromPtr x0
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

foreign import ccall "qtc_QStandardItemModel_setHandler4" qtc_QStandardItemModel_setHandler4 :: Ptr (TQStandardItemModel a) -> CWString -> Ptr (Ptr (TQStandardItemModel x0) -> IO (CBool)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QStandardItemModel4 :: (Ptr (TQStandardItemModel x0) -> IO (CBool)) -> IO (FunPtr (Ptr (TQStandardItemModel x0) -> IO (CBool)))

foreign import ccall "wrapper" wrapSetHandler_QStandardItemModel4_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QStandardItemModelSc a) (QStandardItemModel x0 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QStandardItemModel4 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QStandardItemModel4_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QStandardItemModel_setHandler4 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQStandardItemModel x0) -> IO (CBool)
    setHandlerWrapper x0
      = do x0obj <- qStandardItemModelFromPtr x0
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

instance QsetHandler (QStandardItemModel ()) (QStandardItemModel x0 -> QModelIndex t1 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QStandardItemModel5 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QStandardItemModel5_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QStandardItemModel_setHandler5 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQStandardItemModel x0) -> Ptr (TQModelIndex t1) -> IO (CBool)
    setHandlerWrapper x0 x1
      = do x0obj <- qStandardItemModelFromPtr x0
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

foreign import ccall "qtc_QStandardItemModel_setHandler5" qtc_QStandardItemModel_setHandler5 :: Ptr (TQStandardItemModel a) -> CWString -> Ptr (Ptr (TQStandardItemModel x0) -> Ptr (TQModelIndex t1) -> IO (CBool)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QStandardItemModel5 :: (Ptr (TQStandardItemModel x0) -> Ptr (TQModelIndex t1) -> IO (CBool)) -> IO (FunPtr (Ptr (TQStandardItemModel x0) -> Ptr (TQModelIndex t1) -> IO (CBool)))

foreign import ccall "wrapper" wrapSetHandler_QStandardItemModel5_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QStandardItemModelSc a) (QStandardItemModel x0 -> QModelIndex t1 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QStandardItemModel5 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QStandardItemModel5_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QStandardItemModel_setHandler5 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQStandardItemModel x0) -> Ptr (TQModelIndex t1) -> IO (CBool)
    setHandlerWrapper x0 x1
      = do x0obj <- qStandardItemModelFromPtr x0
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

instance QhasChildren_h (QStandardItemModel ()) (()) where
 hasChildren_h x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStandardItemModel_hasChildren cobj_x0

foreign import ccall "qtc_QStandardItemModel_hasChildren" qtc_QStandardItemModel_hasChildren :: Ptr (TQStandardItemModel a) -> IO CBool

instance QhasChildren_h (QStandardItemModelSc a) (()) where
 hasChildren_h x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStandardItemModel_hasChildren cobj_x0

instance QhasChildren_h (QStandardItemModel ()) ((QModelIndex t1)) where
 hasChildren_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStandardItemModel_hasChildren1 cobj_x0 cobj_x1

foreign import ccall "qtc_QStandardItemModel_hasChildren1" qtc_QStandardItemModel_hasChildren1 :: Ptr (TQStandardItemModel a) -> Ptr (TQModelIndex t1) -> IO CBool

instance QhasChildren_h (QStandardItemModelSc a) ((QModelIndex t1)) where
 hasChildren_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStandardItemModel_hasChildren1 cobj_x0 cobj_x1

instance QsetHandler (QStandardItemModel ()) (QStandardItemModel x0 -> Int -> QtOrientation -> IO (QVariant t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QStandardItemModel6 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QStandardItemModel6_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QStandardItemModel_setHandler6 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQStandardItemModel x0) -> CInt -> CLong -> IO (Ptr (TQVariant t0))
    setHandlerWrapper x0 x1 x2
      = do x0obj <- qStandardItemModelFromPtr x0
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

foreign import ccall "qtc_QStandardItemModel_setHandler6" qtc_QStandardItemModel_setHandler6 :: Ptr (TQStandardItemModel a) -> CWString -> Ptr (Ptr (TQStandardItemModel x0) -> CInt -> CLong -> IO (Ptr (TQVariant t0))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QStandardItemModel6 :: (Ptr (TQStandardItemModel x0) -> CInt -> CLong -> IO (Ptr (TQVariant t0))) -> IO (FunPtr (Ptr (TQStandardItemModel x0) -> CInt -> CLong -> IO (Ptr (TQVariant t0))))

foreign import ccall "wrapper" wrapSetHandler_QStandardItemModel6_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QStandardItemModelSc a) (QStandardItemModel x0 -> Int -> QtOrientation -> IO (QVariant t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QStandardItemModel6 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QStandardItemModel6_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QStandardItemModel_setHandler6 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQStandardItemModel x0) -> CInt -> CLong -> IO (Ptr (TQVariant t0))
    setHandlerWrapper x0 x1 x2
      = do x0obj <- qStandardItemModelFromPtr x0
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

instance QsetHandler (QStandardItemModel ()) (QStandardItemModel x0 -> Int -> QtOrientation -> Int -> IO (QVariant t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QStandardItemModel7 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QStandardItemModel7_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QStandardItemModel_setHandler7 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQStandardItemModel x0) -> CInt -> CLong -> CInt -> IO (Ptr (TQVariant t0))
    setHandlerWrapper x0 x1 x2 x3
      = do x0obj <- qStandardItemModelFromPtr x0
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

foreign import ccall "qtc_QStandardItemModel_setHandler7" qtc_QStandardItemModel_setHandler7 :: Ptr (TQStandardItemModel a) -> CWString -> Ptr (Ptr (TQStandardItemModel x0) -> CInt -> CLong -> CInt -> IO (Ptr (TQVariant t0))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QStandardItemModel7 :: (Ptr (TQStandardItemModel x0) -> CInt -> CLong -> CInt -> IO (Ptr (TQVariant t0))) -> IO (FunPtr (Ptr (TQStandardItemModel x0) -> CInt -> CLong -> CInt -> IO (Ptr (TQVariant t0))))

foreign import ccall "wrapper" wrapSetHandler_QStandardItemModel7_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QStandardItemModelSc a) (QStandardItemModel x0 -> Int -> QtOrientation -> Int -> IO (QVariant t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QStandardItemModel7 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QStandardItemModel7_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QStandardItemModel_setHandler7 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQStandardItemModel x0) -> CInt -> CLong -> CInt -> IO (Ptr (TQVariant t0))
    setHandlerWrapper x0 x1 x2 x3
      = do x0obj <- qStandardItemModelFromPtr x0
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

instance QheaderData_h (QStandardItemModel ()) ((Int, QtOrientation)) where
 headerData_h x0 (x1, x2)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStandardItemModel_headerData cobj_x0 (toCInt x1) (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QStandardItemModel_headerData" qtc_QStandardItemModel_headerData :: Ptr (TQStandardItemModel a) -> CInt -> CLong -> IO (Ptr (TQVariant ()))

instance QheaderData_h (QStandardItemModelSc a) ((Int, QtOrientation)) where
 headerData_h x0 (x1, x2)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStandardItemModel_headerData cobj_x0 (toCInt x1) (toCLong $ qEnum_toInt x2)

instance QheaderData_h (QStandardItemModel ()) ((Int, QtOrientation, Int)) where
 headerData_h x0 (x1, x2, x3)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStandardItemModel_headerData1 cobj_x0 (toCInt x1) (toCLong $ qEnum_toInt x2) (toCInt x3)

foreign import ccall "qtc_QStandardItemModel_headerData1" qtc_QStandardItemModel_headerData1 :: Ptr (TQStandardItemModel a) -> CInt -> CLong -> CInt -> IO (Ptr (TQVariant ()))

instance QheaderData_h (QStandardItemModelSc a) ((Int, QtOrientation, Int)) where
 headerData_h x0 (x1, x2, x3)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStandardItemModel_headerData1 cobj_x0 (toCInt x1) (toCLong $ qEnum_toInt x2) (toCInt x3)

instance QsetHandler (QStandardItemModel ()) (QStandardItemModel x0 -> Int -> Int -> QModelIndex t3 -> IO (QModelIndex t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QStandardItemModel8 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QStandardItemModel8_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QStandardItemModel_setHandler8 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQStandardItemModel x0) -> CInt -> CInt -> Ptr (TQModelIndex t3) -> IO (Ptr (TQModelIndex t0))
    setHandlerWrapper x0 x1 x2 x3
      = do x0obj <- qStandardItemModelFromPtr x0
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

foreign import ccall "qtc_QStandardItemModel_setHandler8" qtc_QStandardItemModel_setHandler8 :: Ptr (TQStandardItemModel a) -> CWString -> Ptr (Ptr (TQStandardItemModel x0) -> CInt -> CInt -> Ptr (TQModelIndex t3) -> IO (Ptr (TQModelIndex t0))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QStandardItemModel8 :: (Ptr (TQStandardItemModel x0) -> CInt -> CInt -> Ptr (TQModelIndex t3) -> IO (Ptr (TQModelIndex t0))) -> IO (FunPtr (Ptr (TQStandardItemModel x0) -> CInt -> CInt -> Ptr (TQModelIndex t3) -> IO (Ptr (TQModelIndex t0))))

foreign import ccall "wrapper" wrapSetHandler_QStandardItemModel8_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QStandardItemModelSc a) (QStandardItemModel x0 -> Int -> Int -> QModelIndex t3 -> IO (QModelIndex t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QStandardItemModel8 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QStandardItemModel8_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QStandardItemModel_setHandler8 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQStandardItemModel x0) -> CInt -> CInt -> Ptr (TQModelIndex t3) -> IO (Ptr (TQModelIndex t0))
    setHandlerWrapper x0 x1 x2 x3
      = do x0obj <- qStandardItemModelFromPtr x0
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

instance Qindex_h (QStandardItemModel ()) ((Int, Int, QModelIndex t3)) where
 index_h x0 (x1, x2, x3)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QStandardItemModel_index1 cobj_x0 (toCInt x1) (toCInt x2) cobj_x3

foreign import ccall "qtc_QStandardItemModel_index1" qtc_QStandardItemModel_index1 :: Ptr (TQStandardItemModel a) -> CInt -> CInt -> Ptr (TQModelIndex t3) -> IO (Ptr (TQModelIndex ()))

instance Qindex_h (QStandardItemModelSc a) ((Int, Int, QModelIndex t3)) where
 index_h x0 (x1, x2, x3)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QStandardItemModel_index1 cobj_x0 (toCInt x1) (toCInt x2) cobj_x3

instance QsetHandler (QStandardItemModel ()) (QStandardItemModel x0 -> Int -> Int -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QStandardItemModel9 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QStandardItemModel9_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QStandardItemModel_setHandler9 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQStandardItemModel x0) -> CInt -> CInt -> IO (CBool)
    setHandlerWrapper x0 x1 x2
      = do x0obj <- qStandardItemModelFromPtr x0
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

foreign import ccall "qtc_QStandardItemModel_setHandler9" qtc_QStandardItemModel_setHandler9 :: Ptr (TQStandardItemModel a) -> CWString -> Ptr (Ptr (TQStandardItemModel x0) -> CInt -> CInt -> IO (CBool)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QStandardItemModel9 :: (Ptr (TQStandardItemModel x0) -> CInt -> CInt -> IO (CBool)) -> IO (FunPtr (Ptr (TQStandardItemModel x0) -> CInt -> CInt -> IO (CBool)))

foreign import ccall "wrapper" wrapSetHandler_QStandardItemModel9_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QStandardItemModelSc a) (QStandardItemModel x0 -> Int -> Int -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QStandardItemModel9 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QStandardItemModel9_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QStandardItemModel_setHandler9 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQStandardItemModel x0) -> CInt -> CInt -> IO (CBool)
    setHandlerWrapper x0 x1 x2
      = do x0obj <- qStandardItemModelFromPtr x0
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

instance QsetHandler (QStandardItemModel ()) (QStandardItemModel x0 -> Int -> Int -> QModelIndex t3 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QStandardItemModel10 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QStandardItemModel10_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QStandardItemModel_setHandler10 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQStandardItemModel x0) -> CInt -> CInt -> Ptr (TQModelIndex t3) -> IO (CBool)
    setHandlerWrapper x0 x1 x2 x3
      = do x0obj <- qStandardItemModelFromPtr x0
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

foreign import ccall "qtc_QStandardItemModel_setHandler10" qtc_QStandardItemModel_setHandler10 :: Ptr (TQStandardItemModel a) -> CWString -> Ptr (Ptr (TQStandardItemModel x0) -> CInt -> CInt -> Ptr (TQModelIndex t3) -> IO (CBool)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QStandardItemModel10 :: (Ptr (TQStandardItemModel x0) -> CInt -> CInt -> Ptr (TQModelIndex t3) -> IO (CBool)) -> IO (FunPtr (Ptr (TQStandardItemModel x0) -> CInt -> CInt -> Ptr (TQModelIndex t3) -> IO (CBool)))

foreign import ccall "wrapper" wrapSetHandler_QStandardItemModel10_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QStandardItemModelSc a) (QStandardItemModel x0 -> Int -> Int -> QModelIndex t3 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QStandardItemModel10 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QStandardItemModel10_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QStandardItemModel_setHandler10 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQStandardItemModel x0) -> CInt -> CInt -> Ptr (TQModelIndex t3) -> IO (CBool)
    setHandlerWrapper x0 x1 x2 x3
      = do x0obj <- qStandardItemModelFromPtr x0
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

instance QinsertColumns_h (QStandardItemModel ()) ((Int, Int)) where
 insertColumns_h x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStandardItemModel_insertColumns cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QStandardItemModel_insertColumns" qtc_QStandardItemModel_insertColumns :: Ptr (TQStandardItemModel a) -> CInt -> CInt -> IO CBool

instance QinsertColumns_h (QStandardItemModelSc a) ((Int, Int)) where
 insertColumns_h x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStandardItemModel_insertColumns cobj_x0 (toCInt x1) (toCInt x2)

instance QinsertColumns_h (QStandardItemModel ()) ((Int, Int, QModelIndex t3)) where
 insertColumns_h x0 (x1, x2, x3)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QStandardItemModel_insertColumns1 cobj_x0 (toCInt x1) (toCInt x2) cobj_x3

foreign import ccall "qtc_QStandardItemModel_insertColumns1" qtc_QStandardItemModel_insertColumns1 :: Ptr (TQStandardItemModel a) -> CInt -> CInt -> Ptr (TQModelIndex t3) -> IO CBool

instance QinsertColumns_h (QStandardItemModelSc a) ((Int, Int, QModelIndex t3)) where
 insertColumns_h x0 (x1, x2, x3)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QStandardItemModel_insertColumns1 cobj_x0 (toCInt x1) (toCInt x2) cobj_x3

instance QinsertRows_h (QStandardItemModel ()) ((Int, Int)) where
 insertRows_h x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStandardItemModel_insertRows cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QStandardItemModel_insertRows" qtc_QStandardItemModel_insertRows :: Ptr (TQStandardItemModel a) -> CInt -> CInt -> IO CBool

instance QinsertRows_h (QStandardItemModelSc a) ((Int, Int)) where
 insertRows_h x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStandardItemModel_insertRows cobj_x0 (toCInt x1) (toCInt x2)

instance QinsertRows_h (QStandardItemModel ()) ((Int, Int, QModelIndex t3)) where
 insertRows_h x0 (x1, x2, x3)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QStandardItemModel_insertRows1 cobj_x0 (toCInt x1) (toCInt x2) cobj_x3

foreign import ccall "qtc_QStandardItemModel_insertRows1" qtc_QStandardItemModel_insertRows1 :: Ptr (TQStandardItemModel a) -> CInt -> CInt -> Ptr (TQModelIndex t3) -> IO CBool

instance QinsertRows_h (QStandardItemModelSc a) ((Int, Int, QModelIndex t3)) where
 insertRows_h x0 (x1, x2, x3)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QStandardItemModel_insertRows1 cobj_x0 (toCInt x1) (toCInt x2) cobj_x3

instance QsetHandler (QStandardItemModel ()) (QStandardItemModel x0 -> QModelIndex t1 -> IO (QModelIndex t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QStandardItemModel11 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QStandardItemModel11_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QStandardItemModel_setHandler11 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQStandardItemModel x0) -> Ptr (TQModelIndex t1) -> IO (Ptr (TQModelIndex t0))
    setHandlerWrapper x0 x1
      = do x0obj <- qStandardItemModelFromPtr x0
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

foreign import ccall "qtc_QStandardItemModel_setHandler11" qtc_QStandardItemModel_setHandler11 :: Ptr (TQStandardItemModel a) -> CWString -> Ptr (Ptr (TQStandardItemModel x0) -> Ptr (TQModelIndex t1) -> IO (Ptr (TQModelIndex t0))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QStandardItemModel11 :: (Ptr (TQStandardItemModel x0) -> Ptr (TQModelIndex t1) -> IO (Ptr (TQModelIndex t0))) -> IO (FunPtr (Ptr (TQStandardItemModel x0) -> Ptr (TQModelIndex t1) -> IO (Ptr (TQModelIndex t0))))

foreign import ccall "wrapper" wrapSetHandler_QStandardItemModel11_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QStandardItemModelSc a) (QStandardItemModel x0 -> QModelIndex t1 -> IO (QModelIndex t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QStandardItemModel11 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QStandardItemModel11_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QStandardItemModel_setHandler11 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQStandardItemModel x0) -> Ptr (TQModelIndex t1) -> IO (Ptr (TQModelIndex t0))
    setHandlerWrapper x0 x1
      = do x0obj <- qStandardItemModelFromPtr x0
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

instance Qparent_h (QStandardItemModel ()) ((QModelIndex t1)) where
 parent_h x0 (x1)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStandardItemModel_parent1 cobj_x0 cobj_x1

foreign import ccall "qtc_QStandardItemModel_parent1" qtc_QStandardItemModel_parent1 :: Ptr (TQStandardItemModel a) -> Ptr (TQModelIndex t1) -> IO (Ptr (TQModelIndex ()))

instance Qparent_h (QStandardItemModelSc a) ((QModelIndex t1)) where
 parent_h x0 (x1)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStandardItemModel_parent1 cobj_x0 cobj_x1

instance QremoveColumns_h (QStandardItemModel ()) ((Int, Int)) where
 removeColumns_h x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStandardItemModel_removeColumns cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QStandardItemModel_removeColumns" qtc_QStandardItemModel_removeColumns :: Ptr (TQStandardItemModel a) -> CInt -> CInt -> IO CBool

instance QremoveColumns_h (QStandardItemModelSc a) ((Int, Int)) where
 removeColumns_h x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStandardItemModel_removeColumns cobj_x0 (toCInt x1) (toCInt x2)

instance QremoveColumns_h (QStandardItemModel ()) ((Int, Int, QModelIndex t3)) where
 removeColumns_h x0 (x1, x2, x3)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QStandardItemModel_removeColumns1 cobj_x0 (toCInt x1) (toCInt x2) cobj_x3

foreign import ccall "qtc_QStandardItemModel_removeColumns1" qtc_QStandardItemModel_removeColumns1 :: Ptr (TQStandardItemModel a) -> CInt -> CInt -> Ptr (TQModelIndex t3) -> IO CBool

instance QremoveColumns_h (QStandardItemModelSc a) ((Int, Int, QModelIndex t3)) where
 removeColumns_h x0 (x1, x2, x3)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QStandardItemModel_removeColumns1 cobj_x0 (toCInt x1) (toCInt x2) cobj_x3

instance QremoveRows_h (QStandardItemModel ()) ((Int, Int)) where
 removeRows_h x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStandardItemModel_removeRows cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QStandardItemModel_removeRows" qtc_QStandardItemModel_removeRows :: Ptr (TQStandardItemModel a) -> CInt -> CInt -> IO CBool

instance QremoveRows_h (QStandardItemModelSc a) ((Int, Int)) where
 removeRows_h x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStandardItemModel_removeRows cobj_x0 (toCInt x1) (toCInt x2)

instance QremoveRows_h (QStandardItemModel ()) ((Int, Int, QModelIndex t3)) where
 removeRows_h x0 (x1, x2, x3)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QStandardItemModel_removeRows1 cobj_x0 (toCInt x1) (toCInt x2) cobj_x3

foreign import ccall "qtc_QStandardItemModel_removeRows1" qtc_QStandardItemModel_removeRows1 :: Ptr (TQStandardItemModel a) -> CInt -> CInt -> Ptr (TQModelIndex t3) -> IO CBool

instance QremoveRows_h (QStandardItemModelSc a) ((Int, Int, QModelIndex t3)) where
 removeRows_h x0 (x1, x2, x3)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QStandardItemModel_removeRows1 cobj_x0 (toCInt x1) (toCInt x2) cobj_x3

instance QrowCount_h (QStandardItemModel ()) ((QModelIndex t1)) where
 rowCount_h x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStandardItemModel_rowCount1 cobj_x0 cobj_x1

foreign import ccall "qtc_QStandardItemModel_rowCount1" qtc_QStandardItemModel_rowCount1 :: Ptr (TQStandardItemModel a) -> Ptr (TQModelIndex t1) -> IO CInt

instance QrowCount_h (QStandardItemModelSc a) ((QModelIndex t1)) where
 rowCount_h x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStandardItemModel_rowCount1 cobj_x0 cobj_x1

instance QsetHandler (QStandardItemModel ()) (QStandardItemModel x0 -> QModelIndex t1 -> QVariant t2 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QStandardItemModel12 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QStandardItemModel12_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QStandardItemModel_setHandler12 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQStandardItemModel x0) -> Ptr (TQModelIndex t1) -> Ptr (TQVariant t2) -> IO (CBool)
    setHandlerWrapper x0 x1 x2
      = do x0obj <- qStandardItemModelFromPtr x0
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

foreign import ccall "qtc_QStandardItemModel_setHandler12" qtc_QStandardItemModel_setHandler12 :: Ptr (TQStandardItemModel a) -> CWString -> Ptr (Ptr (TQStandardItemModel x0) -> Ptr (TQModelIndex t1) -> Ptr (TQVariant t2) -> IO (CBool)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QStandardItemModel12 :: (Ptr (TQStandardItemModel x0) -> Ptr (TQModelIndex t1) -> Ptr (TQVariant t2) -> IO (CBool)) -> IO (FunPtr (Ptr (TQStandardItemModel x0) -> Ptr (TQModelIndex t1) -> Ptr (TQVariant t2) -> IO (CBool)))

foreign import ccall "wrapper" wrapSetHandler_QStandardItemModel12_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QStandardItemModelSc a) (QStandardItemModel x0 -> QModelIndex t1 -> QVariant t2 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QStandardItemModel12 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QStandardItemModel12_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QStandardItemModel_setHandler12 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQStandardItemModel x0) -> Ptr (TQModelIndex t1) -> Ptr (TQVariant t2) -> IO (CBool)
    setHandlerWrapper x0 x1 x2
      = do x0obj <- qStandardItemModelFromPtr x0
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

instance QsetHandler (QStandardItemModel ()) (QStandardItemModel x0 -> QModelIndex t1 -> QVariant t2 -> Int -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QStandardItemModel13 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QStandardItemModel13_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QStandardItemModel_setHandler13 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQStandardItemModel x0) -> Ptr (TQModelIndex t1) -> Ptr (TQVariant t2) -> CInt -> IO (CBool)
    setHandlerWrapper x0 x1 x2 x3
      = do x0obj <- qStandardItemModelFromPtr x0
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

foreign import ccall "qtc_QStandardItemModel_setHandler13" qtc_QStandardItemModel_setHandler13 :: Ptr (TQStandardItemModel a) -> CWString -> Ptr (Ptr (TQStandardItemModel x0) -> Ptr (TQModelIndex t1) -> Ptr (TQVariant t2) -> CInt -> IO (CBool)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QStandardItemModel13 :: (Ptr (TQStandardItemModel x0) -> Ptr (TQModelIndex t1) -> Ptr (TQVariant t2) -> CInt -> IO (CBool)) -> IO (FunPtr (Ptr (TQStandardItemModel x0) -> Ptr (TQModelIndex t1) -> Ptr (TQVariant t2) -> CInt -> IO (CBool)))

foreign import ccall "wrapper" wrapSetHandler_QStandardItemModel13_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QStandardItemModelSc a) (QStandardItemModel x0 -> QModelIndex t1 -> QVariant t2 -> Int -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QStandardItemModel13 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QStandardItemModel13_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QStandardItemModel_setHandler13 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQStandardItemModel x0) -> Ptr (TQModelIndex t1) -> Ptr (TQVariant t2) -> CInt -> IO (CBool)
    setHandlerWrapper x0 x1 x2 x3
      = do x0obj <- qStandardItemModelFromPtr x0
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

instance QsetData_h (QStandardItemModel ()) ((QModelIndex t1, QVariant t2)) (IO (Bool)) where
 setData_h x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QStandardItemModel_setData cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QStandardItemModel_setData" qtc_QStandardItemModel_setData :: Ptr (TQStandardItemModel a) -> Ptr (TQModelIndex t1) -> Ptr (TQVariant t2) -> IO CBool

instance QsetData_h (QStandardItemModelSc a) ((QModelIndex t1, QVariant t2)) (IO (Bool)) where
 setData_h x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QStandardItemModel_setData cobj_x0 cobj_x1 cobj_x2

instance QsetData_h (QStandardItemModel ()) ((QModelIndex t1, QVariant t2, Int)) (IO (Bool)) where
 setData_h x0 (x1, x2, x3)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QStandardItemModel_setData1 cobj_x0 cobj_x1 cobj_x2 (toCInt x3)

foreign import ccall "qtc_QStandardItemModel_setData1" qtc_QStandardItemModel_setData1 :: Ptr (TQStandardItemModel a) -> Ptr (TQModelIndex t1) -> Ptr (TQVariant t2) -> CInt -> IO CBool

instance QsetData_h (QStandardItemModelSc a) ((QModelIndex t1, QVariant t2, Int)) (IO (Bool)) where
 setData_h x0 (x1, x2, x3)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QStandardItemModel_setData1 cobj_x0 cobj_x1 cobj_x2 (toCInt x3)

instance QsetHandler (QStandardItemModel ()) (QStandardItemModel x0 -> Int -> QtOrientation -> QVariant t3 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QStandardItemModel14 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QStandardItemModel14_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QStandardItemModel_setHandler14 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQStandardItemModel x0) -> CInt -> CLong -> Ptr (TQVariant t3) -> IO (CBool)
    setHandlerWrapper x0 x1 x2 x3
      = do x0obj <- qStandardItemModelFromPtr x0
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

foreign import ccall "qtc_QStandardItemModel_setHandler14" qtc_QStandardItemModel_setHandler14 :: Ptr (TQStandardItemModel a) -> CWString -> Ptr (Ptr (TQStandardItemModel x0) -> CInt -> CLong -> Ptr (TQVariant t3) -> IO (CBool)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QStandardItemModel14 :: (Ptr (TQStandardItemModel x0) -> CInt -> CLong -> Ptr (TQVariant t3) -> IO (CBool)) -> IO (FunPtr (Ptr (TQStandardItemModel x0) -> CInt -> CLong -> Ptr (TQVariant t3) -> IO (CBool)))

foreign import ccall "wrapper" wrapSetHandler_QStandardItemModel14_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QStandardItemModelSc a) (QStandardItemModel x0 -> Int -> QtOrientation -> QVariant t3 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QStandardItemModel14 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QStandardItemModel14_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QStandardItemModel_setHandler14 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQStandardItemModel x0) -> CInt -> CLong -> Ptr (TQVariant t3) -> IO (CBool)
    setHandlerWrapper x0 x1 x2 x3
      = do x0obj <- qStandardItemModelFromPtr x0
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

instance QsetHandler (QStandardItemModel ()) (QStandardItemModel x0 -> Int -> QtOrientation -> QVariant t3 -> Int -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QStandardItemModel15 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QStandardItemModel15_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QStandardItemModel_setHandler15 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQStandardItemModel x0) -> CInt -> CLong -> Ptr (TQVariant t3) -> CInt -> IO (CBool)
    setHandlerWrapper x0 x1 x2 x3 x4
      = do x0obj <- qStandardItemModelFromPtr x0
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

foreign import ccall "qtc_QStandardItemModel_setHandler15" qtc_QStandardItemModel_setHandler15 :: Ptr (TQStandardItemModel a) -> CWString -> Ptr (Ptr (TQStandardItemModel x0) -> CInt -> CLong -> Ptr (TQVariant t3) -> CInt -> IO (CBool)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QStandardItemModel15 :: (Ptr (TQStandardItemModel x0) -> CInt -> CLong -> Ptr (TQVariant t3) -> CInt -> IO (CBool)) -> IO (FunPtr (Ptr (TQStandardItemModel x0) -> CInt -> CLong -> Ptr (TQVariant t3) -> CInt -> IO (CBool)))

foreign import ccall "wrapper" wrapSetHandler_QStandardItemModel15_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QStandardItemModelSc a) (QStandardItemModel x0 -> Int -> QtOrientation -> QVariant t3 -> Int -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QStandardItemModel15 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QStandardItemModel15_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QStandardItemModel_setHandler15 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQStandardItemModel x0) -> CInt -> CLong -> Ptr (TQVariant t3) -> CInt -> IO (CBool)
    setHandlerWrapper x0 x1 x2 x3 x4
      = do x0obj <- qStandardItemModelFromPtr x0
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

instance QsetHeaderData_h (QStandardItemModel ()) ((Int, QtOrientation, QVariant t3)) where
 setHeaderData_h x0 (x1, x2, x3)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QStandardItemModel_setHeaderData cobj_x0 (toCInt x1) (toCLong $ qEnum_toInt x2) cobj_x3

foreign import ccall "qtc_QStandardItemModel_setHeaderData" qtc_QStandardItemModel_setHeaderData :: Ptr (TQStandardItemModel a) -> CInt -> CLong -> Ptr (TQVariant t3) -> IO CBool

instance QsetHeaderData_h (QStandardItemModelSc a) ((Int, QtOrientation, QVariant t3)) where
 setHeaderData_h x0 (x1, x2, x3)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QStandardItemModel_setHeaderData cobj_x0 (toCInt x1) (toCLong $ qEnum_toInt x2) cobj_x3

instance QsetHeaderData_h (QStandardItemModel ()) ((Int, QtOrientation, QVariant t3, Int)) where
 setHeaderData_h x0 (x1, x2, x3, x4)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QStandardItemModel_setHeaderData1 cobj_x0 (toCInt x1) (toCLong $ qEnum_toInt x2) cobj_x3 (toCInt x4)

foreign import ccall "qtc_QStandardItemModel_setHeaderData1" qtc_QStandardItemModel_setHeaderData1 :: Ptr (TQStandardItemModel a) -> CInt -> CLong -> Ptr (TQVariant t3) -> CInt -> IO CBool

instance QsetHeaderData_h (QStandardItemModelSc a) ((Int, QtOrientation, QVariant t3, Int)) where
 setHeaderData_h x0 (x1, x2, x3, x4)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QStandardItemModel_setHeaderData1 cobj_x0 (toCInt x1) (toCLong $ qEnum_toInt x2) cobj_x3 (toCInt x4)

instance QsetHandler (QStandardItemModel ()) (QStandardItemModel x0 -> Int -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QStandardItemModel16 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QStandardItemModel16_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QStandardItemModel_setHandler16 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQStandardItemModel x0) -> CInt -> IO ()
    setHandlerWrapper x0 x1
      = do x0obj <- qStandardItemModelFromPtr x0
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

foreign import ccall "qtc_QStandardItemModel_setHandler16" qtc_QStandardItemModel_setHandler16 :: Ptr (TQStandardItemModel a) -> CWString -> Ptr (Ptr (TQStandardItemModel x0) -> CInt -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QStandardItemModel16 :: (Ptr (TQStandardItemModel x0) -> CInt -> IO ()) -> IO (FunPtr (Ptr (TQStandardItemModel x0) -> CInt -> IO ()))

foreign import ccall "wrapper" wrapSetHandler_QStandardItemModel16_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QStandardItemModelSc a) (QStandardItemModel x0 -> Int -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QStandardItemModel16 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QStandardItemModel16_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QStandardItemModel_setHandler16 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQStandardItemModel x0) -> CInt -> IO ()
    setHandlerWrapper x0 x1
      = do x0obj <- qStandardItemModelFromPtr x0
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

instance QsetHandler (QStandardItemModel ()) (QStandardItemModel x0 -> Int -> SortOrder -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QStandardItemModel17 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QStandardItemModel17_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QStandardItemModel_setHandler17 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQStandardItemModel x0) -> CInt -> CLong -> IO ()
    setHandlerWrapper x0 x1 x2
      = do x0obj <- qStandardItemModelFromPtr x0
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

foreign import ccall "qtc_QStandardItemModel_setHandler17" qtc_QStandardItemModel_setHandler17 :: Ptr (TQStandardItemModel a) -> CWString -> Ptr (Ptr (TQStandardItemModel x0) -> CInt -> CLong -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QStandardItemModel17 :: (Ptr (TQStandardItemModel x0) -> CInt -> CLong -> IO ()) -> IO (FunPtr (Ptr (TQStandardItemModel x0) -> CInt -> CLong -> IO ()))

foreign import ccall "wrapper" wrapSetHandler_QStandardItemModel17_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QStandardItemModelSc a) (QStandardItemModel x0 -> Int -> SortOrder -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QStandardItemModel17 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QStandardItemModel17_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QStandardItemModel_setHandler17 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQStandardItemModel x0) -> CInt -> CLong -> IO ()
    setHandlerWrapper x0 x1 x2
      = do x0obj <- qStandardItemModelFromPtr x0
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

instance Qsort_h (QStandardItemModel ()) ((Int)) where
 sort_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStandardItemModel_sort cobj_x0 (toCInt x1)

foreign import ccall "qtc_QStandardItemModel_sort" qtc_QStandardItemModel_sort :: Ptr (TQStandardItemModel a) -> CInt -> IO ()

instance Qsort_h (QStandardItemModelSc a) ((Int)) where
 sort_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStandardItemModel_sort cobj_x0 (toCInt x1)

instance Qsort_h (QStandardItemModel ()) ((Int, SortOrder)) where
 sort_h x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStandardItemModel_sort1 cobj_x0 (toCInt x1) (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QStandardItemModel_sort1" qtc_QStandardItemModel_sort1 :: Ptr (TQStandardItemModel a) -> CInt -> CLong -> IO ()

instance Qsort_h (QStandardItemModelSc a) ((Int, SortOrder)) where
 sort_h x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStandardItemModel_sort1 cobj_x0 (toCInt x1) (toCLong $ qEnum_toInt x2)

instance QsetHandler (QStandardItemModel ()) (QStandardItemModel x0 -> IO (DropActions)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QStandardItemModel18 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QStandardItemModel18_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QStandardItemModel_setHandler18 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQStandardItemModel x0) -> IO (CLong)
    setHandlerWrapper x0
      = do x0obj <- qStandardItemModelFromPtr x0
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

foreign import ccall "qtc_QStandardItemModel_setHandler18" qtc_QStandardItemModel_setHandler18 :: Ptr (TQStandardItemModel a) -> CWString -> Ptr (Ptr (TQStandardItemModel x0) -> IO (CLong)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QStandardItemModel18 :: (Ptr (TQStandardItemModel x0) -> IO (CLong)) -> IO (FunPtr (Ptr (TQStandardItemModel x0) -> IO (CLong)))

foreign import ccall "wrapper" wrapSetHandler_QStandardItemModel18_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QStandardItemModelSc a) (QStandardItemModel x0 -> IO (DropActions)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QStandardItemModel18 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QStandardItemModel18_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QStandardItemModel_setHandler18 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQStandardItemModel x0) -> IO (CLong)
    setHandlerWrapper x0
      = do x0obj <- qStandardItemModelFromPtr x0
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

instance QsupportedDropActions_h (QStandardItemModel ()) (()) where
 supportedDropActions_h x0 ()
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStandardItemModel_supportedDropActions cobj_x0

foreign import ccall "qtc_QStandardItemModel_supportedDropActions" qtc_QStandardItemModel_supportedDropActions :: Ptr (TQStandardItemModel a) -> IO CLong

instance QsupportedDropActions_h (QStandardItemModelSc a) (()) where
 supportedDropActions_h x0 ()
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStandardItemModel_supportedDropActions cobj_x0

instance Qbuddy_h (QStandardItemModel ()) ((QModelIndex t1)) where
 buddy_h x0 (x1)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStandardItemModel_buddy cobj_x0 cobj_x1

foreign import ccall "qtc_QStandardItemModel_buddy" qtc_QStandardItemModel_buddy :: Ptr (TQStandardItemModel a) -> Ptr (TQModelIndex t1) -> IO (Ptr (TQModelIndex ()))

instance Qbuddy_h (QStandardItemModelSc a) ((QModelIndex t1)) where
 buddy_h x0 (x1)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStandardItemModel_buddy cobj_x0 cobj_x1

instance QcanFetchMore_h (QStandardItemModel ()) ((QModelIndex t1)) where
 canFetchMore_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStandardItemModel_canFetchMore cobj_x0 cobj_x1

foreign import ccall "qtc_QStandardItemModel_canFetchMore" qtc_QStandardItemModel_canFetchMore :: Ptr (TQStandardItemModel a) -> Ptr (TQModelIndex t1) -> IO CBool

instance QcanFetchMore_h (QStandardItemModelSc a) ((QModelIndex t1)) where
 canFetchMore_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStandardItemModel_canFetchMore cobj_x0 cobj_x1

instance QsetHandler (QStandardItemModel ()) (QStandardItemModel x0 -> QObject t1 -> DropAction -> Int -> Int -> QModelIndex t5 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QStandardItemModel19 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QStandardItemModel19_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QStandardItemModel_setHandler19 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQStandardItemModel x0) -> Ptr (TQObject t1) -> CLong -> CInt -> CInt -> Ptr (TQModelIndex t5) -> IO (CBool)
    setHandlerWrapper x0 x1 x2 x3 x4 x5
      = do x0obj <- qStandardItemModelFromPtr x0
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

foreign import ccall "qtc_QStandardItemModel_setHandler19" qtc_QStandardItemModel_setHandler19 :: Ptr (TQStandardItemModel a) -> CWString -> Ptr (Ptr (TQStandardItemModel x0) -> Ptr (TQObject t1) -> CLong -> CInt -> CInt -> Ptr (TQModelIndex t5) -> IO (CBool)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QStandardItemModel19 :: (Ptr (TQStandardItemModel x0) -> Ptr (TQObject t1) -> CLong -> CInt -> CInt -> Ptr (TQModelIndex t5) -> IO (CBool)) -> IO (FunPtr (Ptr (TQStandardItemModel x0) -> Ptr (TQObject t1) -> CLong -> CInt -> CInt -> Ptr (TQModelIndex t5) -> IO (CBool)))

foreign import ccall "wrapper" wrapSetHandler_QStandardItemModel19_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QStandardItemModelSc a) (QStandardItemModel x0 -> QObject t1 -> DropAction -> Int -> Int -> QModelIndex t5 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QStandardItemModel19 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QStandardItemModel19_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QStandardItemModel_setHandler19 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQStandardItemModel x0) -> Ptr (TQObject t1) -> CLong -> CInt -> CInt -> Ptr (TQModelIndex t5) -> IO (CBool)
    setHandlerWrapper x0 x1 x2 x3 x4 x5
      = do x0obj <- qStandardItemModelFromPtr x0
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

instance QdropMimeData_h (QStandardItemModel ()) ((QMimeData t1, DropAction, Int, Int, QModelIndex t5)) where
 dropMimeData_h x0 (x1, x2, x3, x4, x5)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x5 $ \cobj_x5 ->
    qtc_QStandardItemModel_dropMimeData cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2) (toCInt x3) (toCInt x4) cobj_x5

foreign import ccall "qtc_QStandardItemModel_dropMimeData" qtc_QStandardItemModel_dropMimeData :: Ptr (TQStandardItemModel a) -> Ptr (TQMimeData t1) -> CLong -> CInt -> CInt -> Ptr (TQModelIndex t5) -> IO CBool

instance QdropMimeData_h (QStandardItemModelSc a) ((QMimeData t1, DropAction, Int, Int, QModelIndex t5)) where
 dropMimeData_h x0 (x1, x2, x3, x4, x5)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x5 $ \cobj_x5 ->
    qtc_QStandardItemModel_dropMimeData cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2) (toCInt x3) (toCInt x4) cobj_x5

instance QsetHandler (QStandardItemModel ()) (QStandardItemModel x0 -> QModelIndex t1 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QStandardItemModel20 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QStandardItemModel20_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QStandardItemModel_setHandler20 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQStandardItemModel x0) -> Ptr (TQModelIndex t1) -> IO ()
    setHandlerWrapper x0 x1
      = do x0obj <- qStandardItemModelFromPtr x0
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

foreign import ccall "qtc_QStandardItemModel_setHandler20" qtc_QStandardItemModel_setHandler20 :: Ptr (TQStandardItemModel a) -> CWString -> Ptr (Ptr (TQStandardItemModel x0) -> Ptr (TQModelIndex t1) -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QStandardItemModel20 :: (Ptr (TQStandardItemModel x0) -> Ptr (TQModelIndex t1) -> IO ()) -> IO (FunPtr (Ptr (TQStandardItemModel x0) -> Ptr (TQModelIndex t1) -> IO ()))

foreign import ccall "wrapper" wrapSetHandler_QStandardItemModel20_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QStandardItemModelSc a) (QStandardItemModel x0 -> QModelIndex t1 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QStandardItemModel20 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QStandardItemModel20_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QStandardItemModel_setHandler20 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQStandardItemModel x0) -> Ptr (TQModelIndex t1) -> IO ()
    setHandlerWrapper x0 x1
      = do x0obj <- qStandardItemModelFromPtr x0
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

instance QfetchMore_h (QStandardItemModel ()) ((QModelIndex t1)) where
 fetchMore_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStandardItemModel_fetchMore cobj_x0 cobj_x1

foreign import ccall "qtc_QStandardItemModel_fetchMore" qtc_QStandardItemModel_fetchMore :: Ptr (TQStandardItemModel a) -> Ptr (TQModelIndex t1) -> IO ()

instance QfetchMore_h (QStandardItemModelSc a) ((QModelIndex t1)) where
 fetchMore_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStandardItemModel_fetchMore cobj_x0 cobj_x1

instance QsetHandler (QStandardItemModel ()) (QStandardItemModel x0 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QStandardItemModel21 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QStandardItemModel21_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QStandardItemModel_setHandler21 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQStandardItemModel x0) -> IO ()
    setHandlerWrapper x0
      = do x0obj <- qStandardItemModelFromPtr x0
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

foreign import ccall "qtc_QStandardItemModel_setHandler21" qtc_QStandardItemModel_setHandler21 :: Ptr (TQStandardItemModel a) -> CWString -> Ptr (Ptr (TQStandardItemModel x0) -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QStandardItemModel21 :: (Ptr (TQStandardItemModel x0) -> IO ()) -> IO (FunPtr (Ptr (TQStandardItemModel x0) -> IO ()))

foreign import ccall "wrapper" wrapSetHandler_QStandardItemModel21_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QStandardItemModelSc a) (QStandardItemModel x0 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QStandardItemModel21 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QStandardItemModel21_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QStandardItemModel_setHandler21 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQStandardItemModel x0) -> IO ()
    setHandlerWrapper x0
      = do x0obj <- qStandardItemModelFromPtr x0
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

instance Qrevert_h (QStandardItemModel ()) (()) where
 revert_h x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStandardItemModel_revert cobj_x0

foreign import ccall "qtc_QStandardItemModel_revert" qtc_QStandardItemModel_revert :: Ptr (TQStandardItemModel a) -> IO ()

instance Qrevert_h (QStandardItemModelSc a) (()) where
 revert_h x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStandardItemModel_revert cobj_x0

instance QsetHandler (QStandardItemModel ()) (QStandardItemModel x0 -> QModelIndex t1 -> IO (QSize t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QStandardItemModel22 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QStandardItemModel22_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QStandardItemModel_setHandler22 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQStandardItemModel x0) -> Ptr (TQModelIndex t1) -> IO (Ptr (TQSize t0))
    setHandlerWrapper x0 x1
      = do x0obj <- qStandardItemModelFromPtr x0
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

foreign import ccall "qtc_QStandardItemModel_setHandler22" qtc_QStandardItemModel_setHandler22 :: Ptr (TQStandardItemModel a) -> CWString -> Ptr (Ptr (TQStandardItemModel x0) -> Ptr (TQModelIndex t1) -> IO (Ptr (TQSize t0))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QStandardItemModel22 :: (Ptr (TQStandardItemModel x0) -> Ptr (TQModelIndex t1) -> IO (Ptr (TQSize t0))) -> IO (FunPtr (Ptr (TQStandardItemModel x0) -> Ptr (TQModelIndex t1) -> IO (Ptr (TQSize t0))))

foreign import ccall "wrapper" wrapSetHandler_QStandardItemModel22_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QStandardItemModelSc a) (QStandardItemModel x0 -> QModelIndex t1 -> IO (QSize t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QStandardItemModel22 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QStandardItemModel22_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QStandardItemModel_setHandler22 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQStandardItemModel x0) -> Ptr (TQModelIndex t1) -> IO (Ptr (TQSize t0))
    setHandlerWrapper x0 x1
      = do x0obj <- qStandardItemModelFromPtr x0
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

instance Qqspan_h (QStandardItemModel ()) ((QModelIndex t1)) where
 qspan_h x0 (x1)
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStandardItemModel_span cobj_x0 cobj_x1

foreign import ccall "qtc_QStandardItemModel_span" qtc_QStandardItemModel_span :: Ptr (TQStandardItemModel a) -> Ptr (TQModelIndex t1) -> IO (Ptr (TQSize ()))

instance Qqspan_h (QStandardItemModelSc a) ((QModelIndex t1)) where
 qspan_h x0 (x1)
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStandardItemModel_span cobj_x0 cobj_x1

instance Qspan_h (QStandardItemModel ()) ((QModelIndex t1)) where
 span_h x0 (x1)
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStandardItemModel_span_qth cobj_x0 cobj_x1 csize_ret_w csize_ret_h

foreign import ccall "qtc_QStandardItemModel_span_qth" qtc_QStandardItemModel_span_qth :: Ptr (TQStandardItemModel a) -> Ptr (TQModelIndex t1) -> Ptr CInt -> Ptr CInt -> IO ()

instance Qspan_h (QStandardItemModelSc a) ((QModelIndex t1)) where
 span_h x0 (x1)
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStandardItemModel_span_qth cobj_x0 cobj_x1 csize_ret_w csize_ret_h

instance Qsubmit_h (QStandardItemModel ()) (()) where
 submit_h x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStandardItemModel_submit cobj_x0

foreign import ccall "qtc_QStandardItemModel_submit" qtc_QStandardItemModel_submit :: Ptr (TQStandardItemModel a) -> IO CBool

instance Qsubmit_h (QStandardItemModelSc a) (()) where
 submit_h x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStandardItemModel_submit cobj_x0

instance QsetHandler (QStandardItemModel ()) (QStandardItemModel x0 -> QEvent t1 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QStandardItemModel23 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QStandardItemModel23_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QStandardItemModel_setHandler23 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQStandardItemModel x0) -> Ptr (TQEvent t1) -> IO (CBool)
    setHandlerWrapper x0 x1
      = do x0obj <- qStandardItemModelFromPtr x0
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

foreign import ccall "qtc_QStandardItemModel_setHandler23" qtc_QStandardItemModel_setHandler23 :: Ptr (TQStandardItemModel a) -> CWString -> Ptr (Ptr (TQStandardItemModel x0) -> Ptr (TQEvent t1) -> IO (CBool)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QStandardItemModel23 :: (Ptr (TQStandardItemModel x0) -> Ptr (TQEvent t1) -> IO (CBool)) -> IO (FunPtr (Ptr (TQStandardItemModel x0) -> Ptr (TQEvent t1) -> IO (CBool)))

foreign import ccall "wrapper" wrapSetHandler_QStandardItemModel23_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QStandardItemModelSc a) (QStandardItemModel x0 -> QEvent t1 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QStandardItemModel23 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QStandardItemModel23_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QStandardItemModel_setHandler23 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQStandardItemModel x0) -> Ptr (TQEvent t1) -> IO (CBool)
    setHandlerWrapper x0 x1
      = do x0obj <- qStandardItemModelFromPtr x0
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

instance Qevent_h (QStandardItemModel ()) ((QEvent t1)) where
 event_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStandardItemModel_event cobj_x0 cobj_x1

foreign import ccall "qtc_QStandardItemModel_event" qtc_QStandardItemModel_event :: Ptr (TQStandardItemModel a) -> Ptr (TQEvent t1) -> IO CBool

instance Qevent_h (QStandardItemModelSc a) ((QEvent t1)) where
 event_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStandardItemModel_event cobj_x0 cobj_x1

instance QsetHandler (QStandardItemModel ()) (QStandardItemModel x0 -> QObject t1 -> QEvent t2 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QStandardItemModel24 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QStandardItemModel24_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QStandardItemModel_setHandler24 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQStandardItemModel x0) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO (CBool)
    setHandlerWrapper x0 x1 x2
      = do x0obj <- qStandardItemModelFromPtr x0
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

foreign import ccall "qtc_QStandardItemModel_setHandler24" qtc_QStandardItemModel_setHandler24 :: Ptr (TQStandardItemModel a) -> CWString -> Ptr (Ptr (TQStandardItemModel x0) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO (CBool)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QStandardItemModel24 :: (Ptr (TQStandardItemModel x0) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO (CBool)) -> IO (FunPtr (Ptr (TQStandardItemModel x0) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO (CBool)))

foreign import ccall "wrapper" wrapSetHandler_QStandardItemModel24_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QStandardItemModelSc a) (QStandardItemModel x0 -> QObject t1 -> QEvent t2 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QStandardItemModel24 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QStandardItemModel24_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QStandardItemModel_setHandler24 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQStandardItemModel x0) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO (CBool)
    setHandlerWrapper x0 x1 x2
      = do x0obj <- qStandardItemModelFromPtr x0
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

instance QeventFilter_h (QStandardItemModel ()) ((QObject t1, QEvent t2)) where
 eventFilter_h x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QStandardItemModel_eventFilter cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QStandardItemModel_eventFilter" qtc_QStandardItemModel_eventFilter :: Ptr (TQStandardItemModel a) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO CBool

instance QeventFilter_h (QStandardItemModelSc a) ((QObject t1, QEvent t2)) where
 eventFilter_h x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QStandardItemModel_eventFilter cobj_x0 cobj_x1 cobj_x2

