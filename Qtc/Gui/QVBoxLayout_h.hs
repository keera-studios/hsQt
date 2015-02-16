{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QVBoxLayout_h.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:30
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QVBoxLayout_h where

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

instance QunSetUserMethod (QVBoxLayout ()) where
 unSetUserMethod qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QVBoxLayout_unSetUserMethod cobj_qobj (toCInt 0) (toCInt evid)

foreign import ccall "qtc_QVBoxLayout_unSetUserMethod" qtc_QVBoxLayout_unSetUserMethod :: Ptr (TQVBoxLayout a) -> CInt -> CInt -> IO (CBool)

instance QunSetUserMethod (QVBoxLayoutSc a) where
 unSetUserMethod qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QVBoxLayout_unSetUserMethod cobj_qobj (toCInt 0) (toCInt evid)

instance QunSetUserMethodVariant (QVBoxLayout ()) where
 unSetUserMethodVariant qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QVBoxLayout_unSetUserMethod cobj_qobj (toCInt 1) (toCInt evid)

instance QunSetUserMethodVariant (QVBoxLayoutSc a) where
 unSetUserMethodVariant qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QVBoxLayout_unSetUserMethod cobj_qobj (toCInt 1) (toCInt evid)

instance QunSetUserMethodVariantList (QVBoxLayout ()) where
 unSetUserMethodVariantList qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QVBoxLayout_unSetUserMethod cobj_qobj (toCInt 2) (toCInt evid)

instance QunSetUserMethodVariantList (QVBoxLayoutSc a) where
 unSetUserMethodVariantList qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QVBoxLayout_unSetUserMethod cobj_qobj (toCInt 2) (toCInt evid)

instance QsetUserMethod (QVBoxLayout ()) (QVBoxLayout x0 -> IO ()) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethod_QVBoxLayout setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethod_QVBoxLayout_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QVBoxLayout_setUserMethod cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQVBoxLayout x0) -> IO ()
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

foreign import ccall "qtc_QVBoxLayout_setUserMethod" qtc_QVBoxLayout_setUserMethod :: Ptr (TQVBoxLayout a) -> CInt -> Ptr (Ptr (TQVBoxLayout x0) -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetUserMethod_QVBoxLayout :: (Ptr (TQVBoxLayout x0) -> IO ()) -> IO (FunPtr (Ptr (TQVBoxLayout x0) -> IO ()))

foreign import ccall "wrapper" wrapSetUserMethod_QVBoxLayout_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetUserMethod (QVBoxLayoutSc a) (QVBoxLayout x0 -> IO ()) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethod_QVBoxLayout setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethod_QVBoxLayout_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QVBoxLayout_setUserMethod cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQVBoxLayout x0) -> IO ()
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

instance QsetUserMethod (QVBoxLayout ()) (QVBoxLayout x0 -> QVariant () -> IO (QVariant ())) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethodVariant_QVBoxLayout setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethodVariant_QVBoxLayout_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QVBoxLayout_setUserMethodVariant cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQVBoxLayout x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))
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

foreign import ccall "qtc_QVBoxLayout_setUserMethodVariant" qtc_QVBoxLayout_setUserMethodVariant :: Ptr (TQVBoxLayout a) -> CInt -> Ptr (Ptr (TQVBoxLayout x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetUserMethodVariant_QVBoxLayout :: (Ptr (TQVBoxLayout x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))) -> IO (FunPtr (Ptr (TQVBoxLayout x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))))

foreign import ccall "wrapper" wrapSetUserMethodVariant_QVBoxLayout_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetUserMethod (QVBoxLayoutSc a) (QVBoxLayout x0 -> QVariant () -> IO (QVariant ())) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethodVariant_QVBoxLayout setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethodVariant_QVBoxLayout_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QVBoxLayout_setUserMethodVariant cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQVBoxLayout x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))
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

instance QunSetHandler (QVBoxLayout ()) where 
 unSetHandler qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withCWString evid $ \cstr_evid ->
    qtc_QVBoxLayout_unSetHandler cobj_qobj cstr_evid

foreign import ccall "qtc_QVBoxLayout_unSetHandler" qtc_QVBoxLayout_unSetHandler :: Ptr (TQVBoxLayout a) -> CWString -> IO (CBool)

instance QunSetHandler (QVBoxLayoutSc a) where 
 unSetHandler qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withCWString evid $ \cstr_evid ->
    qtc_QVBoxLayout_unSetHandler cobj_qobj cstr_evid

instance QsetHandler (QVBoxLayout ()) (QVBoxLayout x0 -> QLayoutItem t1 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QVBoxLayout1 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QVBoxLayout1_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QVBoxLayout_setHandler1 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQVBoxLayout x0) -> Ptr (TQLayoutItem t1) -> IO ()
    setHandlerWrapper x0 x1
      = do x0obj <- qVBoxLayoutFromPtr x0
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

foreign import ccall "qtc_QVBoxLayout_setHandler1" qtc_QVBoxLayout_setHandler1 :: Ptr (TQVBoxLayout a) -> CWString -> Ptr (Ptr (TQVBoxLayout x0) -> Ptr (TQLayoutItem t1) -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QVBoxLayout1 :: (Ptr (TQVBoxLayout x0) -> Ptr (TQLayoutItem t1) -> IO ()) -> IO (FunPtr (Ptr (TQVBoxLayout x0) -> Ptr (TQLayoutItem t1) -> IO ()))

foreign import ccall "wrapper" wrapSetHandler_QVBoxLayout1_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QVBoxLayoutSc a) (QVBoxLayout x0 -> QLayoutItem t1 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QVBoxLayout1 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QVBoxLayout1_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QVBoxLayout_setHandler1 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQVBoxLayout x0) -> Ptr (TQLayoutItem t1) -> IO ()
    setHandlerWrapper x0 x1
      = do x0obj <- qVBoxLayoutFromPtr x0
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

instance QaddItem_h (QVBoxLayout ()) ((QLayoutItem t1)) where
 addItem_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QVBoxLayout_addItem cobj_x0 cobj_x1

foreign import ccall "qtc_QVBoxLayout_addItem" qtc_QVBoxLayout_addItem :: Ptr (TQVBoxLayout a) -> Ptr (TQLayoutItem t1) -> IO ()

instance QaddItem_h (QVBoxLayoutSc a) ((QLayoutItem t1)) where
 addItem_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QVBoxLayout_addItem cobj_x0 cobj_x1

instance QsetHandler (QVBoxLayout ()) (QVBoxLayout x0 -> IO (Int)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QVBoxLayout2 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QVBoxLayout2_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QVBoxLayout_setHandler2 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQVBoxLayout x0) -> IO (CInt)
    setHandlerWrapper x0
      = do x0obj <- qVBoxLayoutFromPtr x0
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

foreign import ccall "qtc_QVBoxLayout_setHandler2" qtc_QVBoxLayout_setHandler2 :: Ptr (TQVBoxLayout a) -> CWString -> Ptr (Ptr (TQVBoxLayout x0) -> IO (CInt)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QVBoxLayout2 :: (Ptr (TQVBoxLayout x0) -> IO (CInt)) -> IO (FunPtr (Ptr (TQVBoxLayout x0) -> IO (CInt)))

foreign import ccall "wrapper" wrapSetHandler_QVBoxLayout2_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QVBoxLayoutSc a) (QVBoxLayout x0 -> IO (Int)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QVBoxLayout2 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QVBoxLayout2_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QVBoxLayout_setHandler2 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQVBoxLayout x0) -> IO (CInt)
    setHandlerWrapper x0
      = do x0obj <- qVBoxLayoutFromPtr x0
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

instance Qcount_h (QVBoxLayout ()) (()) where
 count_h x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QVBoxLayout_count cobj_x0

foreign import ccall "qtc_QVBoxLayout_count" qtc_QVBoxLayout_count :: Ptr (TQVBoxLayout a) -> IO CInt

instance Qcount_h (QVBoxLayoutSc a) (()) where
 count_h x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QVBoxLayout_count cobj_x0

instance QsetHandler (QVBoxLayout ()) (QVBoxLayout x0 -> IO (Orientations)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QVBoxLayout3 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QVBoxLayout3_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QVBoxLayout_setHandler3 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQVBoxLayout x0) -> IO (CLong)
    setHandlerWrapper x0
      = do x0obj <- qVBoxLayoutFromPtr x0
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

foreign import ccall "qtc_QVBoxLayout_setHandler3" qtc_QVBoxLayout_setHandler3 :: Ptr (TQVBoxLayout a) -> CWString -> Ptr (Ptr (TQVBoxLayout x0) -> IO (CLong)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QVBoxLayout3 :: (Ptr (TQVBoxLayout x0) -> IO (CLong)) -> IO (FunPtr (Ptr (TQVBoxLayout x0) -> IO (CLong)))

foreign import ccall "wrapper" wrapSetHandler_QVBoxLayout3_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QVBoxLayoutSc a) (QVBoxLayout x0 -> IO (Orientations)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QVBoxLayout3 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QVBoxLayout3_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QVBoxLayout_setHandler3 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQVBoxLayout x0) -> IO (CLong)
    setHandlerWrapper x0
      = do x0obj <- qVBoxLayoutFromPtr x0
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

instance QexpandingDirections_h (QVBoxLayout ()) (()) where
 expandingDirections_h x0 ()
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QVBoxLayout_expandingDirections cobj_x0

foreign import ccall "qtc_QVBoxLayout_expandingDirections" qtc_QVBoxLayout_expandingDirections :: Ptr (TQVBoxLayout a) -> IO CLong

instance QexpandingDirections_h (QVBoxLayoutSc a) (()) where
 expandingDirections_h x0 ()
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QVBoxLayout_expandingDirections cobj_x0

instance QsetHandler (QVBoxLayout ()) (QVBoxLayout x0 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QVBoxLayout4 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QVBoxLayout4_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QVBoxLayout_setHandler4 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQVBoxLayout x0) -> IO (CBool)
    setHandlerWrapper x0
      = do x0obj <- qVBoxLayoutFromPtr x0
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

foreign import ccall "qtc_QVBoxLayout_setHandler4" qtc_QVBoxLayout_setHandler4 :: Ptr (TQVBoxLayout a) -> CWString -> Ptr (Ptr (TQVBoxLayout x0) -> IO (CBool)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QVBoxLayout4 :: (Ptr (TQVBoxLayout x0) -> IO (CBool)) -> IO (FunPtr (Ptr (TQVBoxLayout x0) -> IO (CBool)))

foreign import ccall "wrapper" wrapSetHandler_QVBoxLayout4_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QVBoxLayoutSc a) (QVBoxLayout x0 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QVBoxLayout4 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QVBoxLayout4_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QVBoxLayout_setHandler4 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQVBoxLayout x0) -> IO (CBool)
    setHandlerWrapper x0
      = do x0obj <- qVBoxLayoutFromPtr x0
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

instance QhasHeightForWidth_h (QVBoxLayout ()) (()) where
 hasHeightForWidth_h x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QVBoxLayout_hasHeightForWidth cobj_x0

foreign import ccall "qtc_QVBoxLayout_hasHeightForWidth" qtc_QVBoxLayout_hasHeightForWidth :: Ptr (TQVBoxLayout a) -> IO CBool

instance QhasHeightForWidth_h (QVBoxLayoutSc a) (()) where
 hasHeightForWidth_h x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QVBoxLayout_hasHeightForWidth cobj_x0

instance QsetHandler (QVBoxLayout ()) (QVBoxLayout x0 -> Int -> IO (Int)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QVBoxLayout5 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QVBoxLayout5_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QVBoxLayout_setHandler5 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQVBoxLayout x0) -> CInt -> IO (CInt)
    setHandlerWrapper x0 x1
      = do x0obj <- qVBoxLayoutFromPtr x0
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

foreign import ccall "qtc_QVBoxLayout_setHandler5" qtc_QVBoxLayout_setHandler5 :: Ptr (TQVBoxLayout a) -> CWString -> Ptr (Ptr (TQVBoxLayout x0) -> CInt -> IO (CInt)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QVBoxLayout5 :: (Ptr (TQVBoxLayout x0) -> CInt -> IO (CInt)) -> IO (FunPtr (Ptr (TQVBoxLayout x0) -> CInt -> IO (CInt)))

foreign import ccall "wrapper" wrapSetHandler_QVBoxLayout5_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QVBoxLayoutSc a) (QVBoxLayout x0 -> Int -> IO (Int)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QVBoxLayout5 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QVBoxLayout5_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QVBoxLayout_setHandler5 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQVBoxLayout x0) -> CInt -> IO (CInt)
    setHandlerWrapper x0 x1
      = do x0obj <- qVBoxLayoutFromPtr x0
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

instance QheightForWidth_h (QVBoxLayout ()) ((Int)) where
 heightForWidth_h x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QVBoxLayout_heightForWidth cobj_x0 (toCInt x1)

foreign import ccall "qtc_QVBoxLayout_heightForWidth" qtc_QVBoxLayout_heightForWidth :: Ptr (TQVBoxLayout a) -> CInt -> IO CInt

instance QheightForWidth_h (QVBoxLayoutSc a) ((Int)) where
 heightForWidth_h x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QVBoxLayout_heightForWidth cobj_x0 (toCInt x1)

instance QsetHandler (QVBoxLayout ()) (QVBoxLayout x0 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QVBoxLayout6 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QVBoxLayout6_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QVBoxLayout_setHandler6 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQVBoxLayout x0) -> IO ()
    setHandlerWrapper x0
      = do x0obj <- qVBoxLayoutFromPtr x0
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

foreign import ccall "qtc_QVBoxLayout_setHandler6" qtc_QVBoxLayout_setHandler6 :: Ptr (TQVBoxLayout a) -> CWString -> Ptr (Ptr (TQVBoxLayout x0) -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QVBoxLayout6 :: (Ptr (TQVBoxLayout x0) -> IO ()) -> IO (FunPtr (Ptr (TQVBoxLayout x0) -> IO ()))

foreign import ccall "wrapper" wrapSetHandler_QVBoxLayout6_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QVBoxLayoutSc a) (QVBoxLayout x0 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QVBoxLayout6 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QVBoxLayout6_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QVBoxLayout_setHandler6 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQVBoxLayout x0) -> IO ()
    setHandlerWrapper x0
      = do x0obj <- qVBoxLayoutFromPtr x0
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

instance Qinvalidate_h (QVBoxLayout ()) (()) where
 invalidate_h x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QVBoxLayout_invalidate cobj_x0

foreign import ccall "qtc_QVBoxLayout_invalidate" qtc_QVBoxLayout_invalidate :: Ptr (TQVBoxLayout a) -> IO ()

instance Qinvalidate_h (QVBoxLayoutSc a) (()) where
 invalidate_h x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QVBoxLayout_invalidate cobj_x0

instance QsetHandler (QVBoxLayout ()) (QVBoxLayout x0 -> Int -> IO (QLayoutItem t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QVBoxLayout7 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QVBoxLayout7_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QVBoxLayout_setHandler7 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQVBoxLayout x0) -> CInt -> IO (Ptr (TQLayoutItem t0))
    setHandlerWrapper x0 x1
      = do x0obj <- qVBoxLayoutFromPtr x0
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

foreign import ccall "qtc_QVBoxLayout_setHandler7" qtc_QVBoxLayout_setHandler7 :: Ptr (TQVBoxLayout a) -> CWString -> Ptr (Ptr (TQVBoxLayout x0) -> CInt -> IO (Ptr (TQLayoutItem t0))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QVBoxLayout7 :: (Ptr (TQVBoxLayout x0) -> CInt -> IO (Ptr (TQLayoutItem t0))) -> IO (FunPtr (Ptr (TQVBoxLayout x0) -> CInt -> IO (Ptr (TQLayoutItem t0))))

foreign import ccall "wrapper" wrapSetHandler_QVBoxLayout7_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QVBoxLayoutSc a) (QVBoxLayout x0 -> Int -> IO (QLayoutItem t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QVBoxLayout7 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QVBoxLayout7_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QVBoxLayout_setHandler7 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQVBoxLayout x0) -> CInt -> IO (Ptr (TQLayoutItem t0))
    setHandlerWrapper x0 x1
      = do x0obj <- qVBoxLayoutFromPtr x0
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

instance QitemAt_h (QVBoxLayout ()) ((Int)) where
 itemAt_h x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QVBoxLayout_itemAt cobj_x0 (toCInt x1)

foreign import ccall "qtc_QVBoxLayout_itemAt" qtc_QVBoxLayout_itemAt :: Ptr (TQVBoxLayout a) -> CInt -> IO (Ptr (TQLayoutItem ()))

instance QitemAt_h (QVBoxLayoutSc a) ((Int)) where
 itemAt_h x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QVBoxLayout_itemAt cobj_x0 (toCInt x1)

instance QsetHandler (QVBoxLayout ()) (QVBoxLayout x0 -> IO (QSize t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QVBoxLayout8 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QVBoxLayout8_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QVBoxLayout_setHandler8 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQVBoxLayout x0) -> IO (Ptr (TQSize t0))
    setHandlerWrapper x0
      = do x0obj <- qVBoxLayoutFromPtr x0
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

foreign import ccall "qtc_QVBoxLayout_setHandler8" qtc_QVBoxLayout_setHandler8 :: Ptr (TQVBoxLayout a) -> CWString -> Ptr (Ptr (TQVBoxLayout x0) -> IO (Ptr (TQSize t0))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QVBoxLayout8 :: (Ptr (TQVBoxLayout x0) -> IO (Ptr (TQSize t0))) -> IO (FunPtr (Ptr (TQVBoxLayout x0) -> IO (Ptr (TQSize t0))))

foreign import ccall "wrapper" wrapSetHandler_QVBoxLayout8_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QVBoxLayoutSc a) (QVBoxLayout x0 -> IO (QSize t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QVBoxLayout8 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QVBoxLayout8_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QVBoxLayout_setHandler8 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQVBoxLayout x0) -> IO (Ptr (TQSize t0))
    setHandlerWrapper x0
      = do x0obj <- qVBoxLayoutFromPtr x0
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

instance QqmaximumSize_h (QVBoxLayout ()) (()) where
 qmaximumSize_h x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QVBoxLayout_maximumSize cobj_x0

foreign import ccall "qtc_QVBoxLayout_maximumSize" qtc_QVBoxLayout_maximumSize :: Ptr (TQVBoxLayout a) -> IO (Ptr (TQSize ()))

instance QqmaximumSize_h (QVBoxLayoutSc a) (()) where
 qmaximumSize_h x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QVBoxLayout_maximumSize cobj_x0

instance QmaximumSize_h (QVBoxLayout ()) (()) where
 maximumSize_h x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QVBoxLayout_maximumSize_qth cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QVBoxLayout_maximumSize_qth" qtc_QVBoxLayout_maximumSize_qth :: Ptr (TQVBoxLayout a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QmaximumSize_h (QVBoxLayoutSc a) (()) where
 maximumSize_h x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QVBoxLayout_maximumSize_qth cobj_x0 csize_ret_w csize_ret_h

instance QminimumHeightForWidth_h (QVBoxLayout ()) ((Int)) where
 minimumHeightForWidth_h x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QVBoxLayout_minimumHeightForWidth cobj_x0 (toCInt x1)

foreign import ccall "qtc_QVBoxLayout_minimumHeightForWidth" qtc_QVBoxLayout_minimumHeightForWidth :: Ptr (TQVBoxLayout a) -> CInt -> IO CInt

instance QminimumHeightForWidth_h (QVBoxLayoutSc a) ((Int)) where
 minimumHeightForWidth_h x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QVBoxLayout_minimumHeightForWidth cobj_x0 (toCInt x1)

instance QqminimumSize_h (QVBoxLayout ()) (()) where
 qminimumSize_h x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QVBoxLayout_minimumSize cobj_x0

foreign import ccall "qtc_QVBoxLayout_minimumSize" qtc_QVBoxLayout_minimumSize :: Ptr (TQVBoxLayout a) -> IO (Ptr (TQSize ()))

instance QqminimumSize_h (QVBoxLayoutSc a) (()) where
 qminimumSize_h x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QVBoxLayout_minimumSize cobj_x0

instance QminimumSize_h (QVBoxLayout ()) (()) where
 minimumSize_h x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QVBoxLayout_minimumSize_qth cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QVBoxLayout_minimumSize_qth" qtc_QVBoxLayout_minimumSize_qth :: Ptr (TQVBoxLayout a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QminimumSize_h (QVBoxLayoutSc a) (()) where
 minimumSize_h x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QVBoxLayout_minimumSize_qth cobj_x0 csize_ret_w csize_ret_h

instance QsetHandler (QVBoxLayout ()) (QVBoxLayout x0 -> QRect t1 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QVBoxLayout9 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QVBoxLayout9_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QVBoxLayout_setHandler9 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQVBoxLayout x0) -> Ptr (TQRect t1) -> IO ()
    setHandlerWrapper x0 x1
      = do x0obj <- qVBoxLayoutFromPtr x0
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

foreign import ccall "qtc_QVBoxLayout_setHandler9" qtc_QVBoxLayout_setHandler9 :: Ptr (TQVBoxLayout a) -> CWString -> Ptr (Ptr (TQVBoxLayout x0) -> Ptr (TQRect t1) -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QVBoxLayout9 :: (Ptr (TQVBoxLayout x0) -> Ptr (TQRect t1) -> IO ()) -> IO (FunPtr (Ptr (TQVBoxLayout x0) -> Ptr (TQRect t1) -> IO ()))

foreign import ccall "wrapper" wrapSetHandler_QVBoxLayout9_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QVBoxLayoutSc a) (QVBoxLayout x0 -> QRect t1 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QVBoxLayout9 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QVBoxLayout9_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QVBoxLayout_setHandler9 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQVBoxLayout x0) -> Ptr (TQRect t1) -> IO ()
    setHandlerWrapper x0 x1
      = do x0obj <- qVBoxLayoutFromPtr x0
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

instance QqsetGeometry_h (QVBoxLayout ()) ((QRect t1)) where
 qsetGeometry_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QVBoxLayout_setGeometry cobj_x0 cobj_x1

foreign import ccall "qtc_QVBoxLayout_setGeometry" qtc_QVBoxLayout_setGeometry :: Ptr (TQVBoxLayout a) -> Ptr (TQRect t1) -> IO ()

instance QqsetGeometry_h (QVBoxLayoutSc a) ((QRect t1)) where
 qsetGeometry_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QVBoxLayout_setGeometry cobj_x0 cobj_x1

instance QsetGeometry_h (QVBoxLayout ()) ((Rect)) where
 setGeometry_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QVBoxLayout_setGeometry_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

foreign import ccall "qtc_QVBoxLayout_setGeometry_qth" qtc_QVBoxLayout_setGeometry_qth :: Ptr (TQVBoxLayout a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QsetGeometry_h (QVBoxLayoutSc a) ((Rect)) where
 setGeometry_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QVBoxLayout_setGeometry_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

instance QqsizeHint_h (QVBoxLayout ()) (()) where
 qsizeHint_h x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QVBoxLayout_sizeHint cobj_x0

foreign import ccall "qtc_QVBoxLayout_sizeHint" qtc_QVBoxLayout_sizeHint :: Ptr (TQVBoxLayout a) -> IO (Ptr (TQSize ()))

instance QqsizeHint_h (QVBoxLayoutSc a) (()) where
 qsizeHint_h x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QVBoxLayout_sizeHint cobj_x0

instance QsizeHint_h (QVBoxLayout ()) (()) where
 sizeHint_h x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QVBoxLayout_sizeHint_qth cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QVBoxLayout_sizeHint_qth" qtc_QVBoxLayout_sizeHint_qth :: Ptr (TQVBoxLayout a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QsizeHint_h (QVBoxLayoutSc a) (()) where
 sizeHint_h x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QVBoxLayout_sizeHint_qth cobj_x0 csize_ret_w csize_ret_h

instance QtakeAt_h (QVBoxLayout ()) ((Int)) where
 takeAt_h x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QVBoxLayout_takeAt cobj_x0 (toCInt x1)

foreign import ccall "qtc_QVBoxLayout_takeAt" qtc_QVBoxLayout_takeAt :: Ptr (TQVBoxLayout a) -> CInt -> IO (Ptr (TQLayoutItem ()))

instance QtakeAt_h (QVBoxLayoutSc a) ((Int)) where
 takeAt_h x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QVBoxLayout_takeAt cobj_x0 (toCInt x1)

instance QsetHandler (QVBoxLayout ()) (QVBoxLayout x0 -> QObject t1 -> IO (Int)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QVBoxLayout10 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QVBoxLayout10_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QVBoxLayout_setHandler10 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQVBoxLayout x0) -> Ptr (TQObject t1) -> IO (CInt)
    setHandlerWrapper x0 x1
      = do x0obj <- qVBoxLayoutFromPtr x0
           x1obj <- qObjectFromPtr x1
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

foreign import ccall "qtc_QVBoxLayout_setHandler10" qtc_QVBoxLayout_setHandler10 :: Ptr (TQVBoxLayout a) -> CWString -> Ptr (Ptr (TQVBoxLayout x0) -> Ptr (TQObject t1) -> IO (CInt)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QVBoxLayout10 :: (Ptr (TQVBoxLayout x0) -> Ptr (TQObject t1) -> IO (CInt)) -> IO (FunPtr (Ptr (TQVBoxLayout x0) -> Ptr (TQObject t1) -> IO (CInt)))

foreign import ccall "wrapper" wrapSetHandler_QVBoxLayout10_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QVBoxLayoutSc a) (QVBoxLayout x0 -> QObject t1 -> IO (Int)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QVBoxLayout10 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QVBoxLayout10_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QVBoxLayout_setHandler10 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQVBoxLayout x0) -> Ptr (TQObject t1) -> IO (CInt)
    setHandlerWrapper x0 x1
      = do x0obj <- qVBoxLayoutFromPtr x0
           x1obj <- qObjectFromPtr x1
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

instance QindexOf_h (QVBoxLayout ()) ((QWidget t1)) where
 indexOf_h x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QVBoxLayout_indexOf cobj_x0 cobj_x1

foreign import ccall "qtc_QVBoxLayout_indexOf" qtc_QVBoxLayout_indexOf :: Ptr (TQVBoxLayout a) -> Ptr (TQWidget t1) -> IO CInt

instance QindexOf_h (QVBoxLayoutSc a) ((QWidget t1)) where
 indexOf_h x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QVBoxLayout_indexOf cobj_x0 cobj_x1

instance QqisEmpty_h (QVBoxLayout ()) (()) where
 qisEmpty_h x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QVBoxLayout_isEmpty cobj_x0

foreign import ccall "qtc_QVBoxLayout_isEmpty" qtc_QVBoxLayout_isEmpty :: Ptr (TQVBoxLayout a) -> IO CBool

instance QqisEmpty_h (QVBoxLayoutSc a) (()) where
 qisEmpty_h x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QVBoxLayout_isEmpty cobj_x0

instance QsetHandler (QVBoxLayout ()) (QVBoxLayout x0 -> IO (QObject t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QVBoxLayout11 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QVBoxLayout11_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QVBoxLayout_setHandler11 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQVBoxLayout x0) -> IO (Ptr (TQObject t0))
    setHandlerWrapper x0
      = do x0obj <- qVBoxLayoutFromPtr x0
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

foreign import ccall "qtc_QVBoxLayout_setHandler11" qtc_QVBoxLayout_setHandler11 :: Ptr (TQVBoxLayout a) -> CWString -> Ptr (Ptr (TQVBoxLayout x0) -> IO (Ptr (TQObject t0))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QVBoxLayout11 :: (Ptr (TQVBoxLayout x0) -> IO (Ptr (TQObject t0))) -> IO (FunPtr (Ptr (TQVBoxLayout x0) -> IO (Ptr (TQObject t0))))

foreign import ccall "wrapper" wrapSetHandler_QVBoxLayout11_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QVBoxLayoutSc a) (QVBoxLayout x0 -> IO (QObject t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QVBoxLayout11 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QVBoxLayout11_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QVBoxLayout_setHandler11 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQVBoxLayout x0) -> IO (Ptr (TQObject t0))
    setHandlerWrapper x0
      = do x0obj <- qVBoxLayoutFromPtr x0
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

instance Qlayout_h (QVBoxLayout ()) (()) where
 layout_h x0 ()
  = withQLayoutResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QVBoxLayout_layout cobj_x0

foreign import ccall "qtc_QVBoxLayout_layout" qtc_QVBoxLayout_layout :: Ptr (TQVBoxLayout a) -> IO (Ptr (TQLayout ()))

instance Qlayout_h (QVBoxLayoutSc a) (()) where
 layout_h x0 ()
  = withQLayoutResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QVBoxLayout_layout cobj_x0

instance QsetHandler (QVBoxLayout ()) (QVBoxLayout x0 -> IO (QRect t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QVBoxLayout12 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QVBoxLayout12_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QVBoxLayout_setHandler12 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQVBoxLayout x0) -> IO (Ptr (TQRect t0))
    setHandlerWrapper x0
      = do x0obj <- qVBoxLayoutFromPtr x0
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

foreign import ccall "qtc_QVBoxLayout_setHandler12" qtc_QVBoxLayout_setHandler12 :: Ptr (TQVBoxLayout a) -> CWString -> Ptr (Ptr (TQVBoxLayout x0) -> IO (Ptr (TQRect t0))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QVBoxLayout12 :: (Ptr (TQVBoxLayout x0) -> IO (Ptr (TQRect t0))) -> IO (FunPtr (Ptr (TQVBoxLayout x0) -> IO (Ptr (TQRect t0))))

foreign import ccall "wrapper" wrapSetHandler_QVBoxLayout12_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QVBoxLayoutSc a) (QVBoxLayout x0 -> IO (QRect t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QVBoxLayout12 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QVBoxLayout12_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QVBoxLayout_setHandler12 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQVBoxLayout x0) -> IO (Ptr (TQRect t0))
    setHandlerWrapper x0
      = do x0obj <- qVBoxLayoutFromPtr x0
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

instance Qqgeometry_h (QVBoxLayout ()) (()) where
 qgeometry_h x0 ()
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QVBoxLayout_geometry cobj_x0

foreign import ccall "qtc_QVBoxLayout_geometry" qtc_QVBoxLayout_geometry :: Ptr (TQVBoxLayout a) -> IO (Ptr (TQRect ()))

instance Qqgeometry_h (QVBoxLayoutSc a) (()) where
 qgeometry_h x0 ()
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QVBoxLayout_geometry cobj_x0

instance Qgeometry_h (QVBoxLayout ()) (()) where
 geometry_h x0 ()
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QVBoxLayout_geometry_qth cobj_x0 crect_ret_x crect_ret_y crect_ret_w crect_ret_h

foreign import ccall "qtc_QVBoxLayout_geometry_qth" qtc_QVBoxLayout_geometry_qth :: Ptr (TQVBoxLayout a) -> Ptr CInt -> Ptr CInt -> Ptr CInt -> Ptr CInt -> IO ()

instance Qgeometry_h (QVBoxLayoutSc a) (()) where
 geometry_h x0 ()
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QVBoxLayout_geometry_qth cobj_x0 crect_ret_x crect_ret_y crect_ret_w crect_ret_h

instance QsetHandler (QVBoxLayout ()) (QVBoxLayout x0 -> IO (QLayoutItem t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QVBoxLayout13 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QVBoxLayout13_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QVBoxLayout_setHandler13 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQVBoxLayout x0) -> IO (Ptr (TQLayoutItem t0))
    setHandlerWrapper x0
      = do x0obj <- qVBoxLayoutFromPtr x0
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

foreign import ccall "qtc_QVBoxLayout_setHandler13" qtc_QVBoxLayout_setHandler13 :: Ptr (TQVBoxLayout a) -> CWString -> Ptr (Ptr (TQVBoxLayout x0) -> IO (Ptr (TQLayoutItem t0))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QVBoxLayout13 :: (Ptr (TQVBoxLayout x0) -> IO (Ptr (TQLayoutItem t0))) -> IO (FunPtr (Ptr (TQVBoxLayout x0) -> IO (Ptr (TQLayoutItem t0))))

foreign import ccall "wrapper" wrapSetHandler_QVBoxLayout13_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QVBoxLayoutSc a) (QVBoxLayout x0 -> IO (QLayoutItem t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QVBoxLayout13 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QVBoxLayout13_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QVBoxLayout_setHandler13 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQVBoxLayout x0) -> IO (Ptr (TQLayoutItem t0))
    setHandlerWrapper x0
      = do x0obj <- qVBoxLayoutFromPtr x0
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

instance QspacerItem_h (QVBoxLayout ()) (()) where
 spacerItem_h x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QVBoxLayout_spacerItem cobj_x0

foreign import ccall "qtc_QVBoxLayout_spacerItem" qtc_QVBoxLayout_spacerItem :: Ptr (TQVBoxLayout a) -> IO (Ptr (TQSpacerItem ()))

instance QspacerItem_h (QVBoxLayoutSc a) (()) where
 spacerItem_h x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QVBoxLayout_spacerItem cobj_x0

instance Qwidget_h (QVBoxLayout ()) (()) where
 widget_h x0 ()
  = withQWidgetResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QVBoxLayout_widget cobj_x0

foreign import ccall "qtc_QVBoxLayout_widget" qtc_QVBoxLayout_widget :: Ptr (TQVBoxLayout a) -> IO (Ptr (TQWidget ()))

instance Qwidget_h (QVBoxLayoutSc a) (()) where
 widget_h x0 ()
  = withQWidgetResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QVBoxLayout_widget cobj_x0

instance QsetHandler (QVBoxLayout ()) (QVBoxLayout x0 -> QEvent t1 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QVBoxLayout14 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QVBoxLayout14_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QVBoxLayout_setHandler14 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQVBoxLayout x0) -> Ptr (TQEvent t1) -> IO (CBool)
    setHandlerWrapper x0 x1
      = do x0obj <- qVBoxLayoutFromPtr x0
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

foreign import ccall "qtc_QVBoxLayout_setHandler14" qtc_QVBoxLayout_setHandler14 :: Ptr (TQVBoxLayout a) -> CWString -> Ptr (Ptr (TQVBoxLayout x0) -> Ptr (TQEvent t1) -> IO (CBool)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QVBoxLayout14 :: (Ptr (TQVBoxLayout x0) -> Ptr (TQEvent t1) -> IO (CBool)) -> IO (FunPtr (Ptr (TQVBoxLayout x0) -> Ptr (TQEvent t1) -> IO (CBool)))

foreign import ccall "wrapper" wrapSetHandler_QVBoxLayout14_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QVBoxLayoutSc a) (QVBoxLayout x0 -> QEvent t1 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QVBoxLayout14 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QVBoxLayout14_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QVBoxLayout_setHandler14 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQVBoxLayout x0) -> Ptr (TQEvent t1) -> IO (CBool)
    setHandlerWrapper x0 x1
      = do x0obj <- qVBoxLayoutFromPtr x0
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

instance Qevent_h (QVBoxLayout ()) ((QEvent t1)) where
 event_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QVBoxLayout_event cobj_x0 cobj_x1

foreign import ccall "qtc_QVBoxLayout_event" qtc_QVBoxLayout_event :: Ptr (TQVBoxLayout a) -> Ptr (TQEvent t1) -> IO CBool

instance Qevent_h (QVBoxLayoutSc a) ((QEvent t1)) where
 event_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QVBoxLayout_event cobj_x0 cobj_x1

instance QsetHandler (QVBoxLayout ()) (QVBoxLayout x0 -> QObject t1 -> QEvent t2 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QVBoxLayout15 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QVBoxLayout15_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QVBoxLayout_setHandler15 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQVBoxLayout x0) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO (CBool)
    setHandlerWrapper x0 x1 x2
      = do x0obj <- qVBoxLayoutFromPtr x0
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

foreign import ccall "qtc_QVBoxLayout_setHandler15" qtc_QVBoxLayout_setHandler15 :: Ptr (TQVBoxLayout a) -> CWString -> Ptr (Ptr (TQVBoxLayout x0) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO (CBool)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QVBoxLayout15 :: (Ptr (TQVBoxLayout x0) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO (CBool)) -> IO (FunPtr (Ptr (TQVBoxLayout x0) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO (CBool)))

foreign import ccall "wrapper" wrapSetHandler_QVBoxLayout15_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QVBoxLayoutSc a) (QVBoxLayout x0 -> QObject t1 -> QEvent t2 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QVBoxLayout15 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QVBoxLayout15_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QVBoxLayout_setHandler15 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQVBoxLayout x0) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO (CBool)
    setHandlerWrapper x0 x1 x2
      = do x0obj <- qVBoxLayoutFromPtr x0
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

instance QeventFilter_h (QVBoxLayout ()) ((QObject t1, QEvent t2)) where
 eventFilter_h x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QVBoxLayout_eventFilter cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QVBoxLayout_eventFilter" qtc_QVBoxLayout_eventFilter :: Ptr (TQVBoxLayout a) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO CBool

instance QeventFilter_h (QVBoxLayoutSc a) ((QObject t1, QEvent t2)) where
 eventFilter_h x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QVBoxLayout_eventFilter cobj_x0 cobj_x1 cobj_x2

