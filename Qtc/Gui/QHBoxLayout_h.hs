{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QHBoxLayout_h.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:25
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QHBoxLayout_h where

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

instance QunSetUserMethod (QHBoxLayout ()) where
 unSetUserMethod qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QHBoxLayout_unSetUserMethod cobj_qobj (toCInt 0) (toCInt evid)

foreign import ccall "qtc_QHBoxLayout_unSetUserMethod" qtc_QHBoxLayout_unSetUserMethod :: Ptr (TQHBoxLayout a) -> CInt -> CInt -> IO (CBool)

instance QunSetUserMethod (QHBoxLayoutSc a) where
 unSetUserMethod qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QHBoxLayout_unSetUserMethod cobj_qobj (toCInt 0) (toCInt evid)

instance QunSetUserMethodVariant (QHBoxLayout ()) where
 unSetUserMethodVariant qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QHBoxLayout_unSetUserMethod cobj_qobj (toCInt 1) (toCInt evid)

instance QunSetUserMethodVariant (QHBoxLayoutSc a) where
 unSetUserMethodVariant qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QHBoxLayout_unSetUserMethod cobj_qobj (toCInt 1) (toCInt evid)

instance QunSetUserMethodVariantList (QHBoxLayout ()) where
 unSetUserMethodVariantList qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QHBoxLayout_unSetUserMethod cobj_qobj (toCInt 2) (toCInt evid)

instance QunSetUserMethodVariantList (QHBoxLayoutSc a) where
 unSetUserMethodVariantList qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QHBoxLayout_unSetUserMethod cobj_qobj (toCInt 2) (toCInt evid)

instance QsetUserMethod (QHBoxLayout ()) (QHBoxLayout x0 -> IO ()) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethod_QHBoxLayout setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethod_QHBoxLayout_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QHBoxLayout_setUserMethod cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQHBoxLayout x0) -> IO ()
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

foreign import ccall "qtc_QHBoxLayout_setUserMethod" qtc_QHBoxLayout_setUserMethod :: Ptr (TQHBoxLayout a) -> CInt -> Ptr (Ptr (TQHBoxLayout x0) -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetUserMethod_QHBoxLayout :: (Ptr (TQHBoxLayout x0) -> IO ()) -> IO (FunPtr (Ptr (TQHBoxLayout x0) -> IO ()))

foreign import ccall "wrapper" wrapSetUserMethod_QHBoxLayout_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetUserMethod (QHBoxLayoutSc a) (QHBoxLayout x0 -> IO ()) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethod_QHBoxLayout setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethod_QHBoxLayout_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QHBoxLayout_setUserMethod cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQHBoxLayout x0) -> IO ()
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

instance QsetUserMethod (QHBoxLayout ()) (QHBoxLayout x0 -> QVariant () -> IO (QVariant ())) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethodVariant_QHBoxLayout setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethodVariant_QHBoxLayout_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QHBoxLayout_setUserMethodVariant cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQHBoxLayout x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))
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

foreign import ccall "qtc_QHBoxLayout_setUserMethodVariant" qtc_QHBoxLayout_setUserMethodVariant :: Ptr (TQHBoxLayout a) -> CInt -> Ptr (Ptr (TQHBoxLayout x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetUserMethodVariant_QHBoxLayout :: (Ptr (TQHBoxLayout x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))) -> IO (FunPtr (Ptr (TQHBoxLayout x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))))

foreign import ccall "wrapper" wrapSetUserMethodVariant_QHBoxLayout_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetUserMethod (QHBoxLayoutSc a) (QHBoxLayout x0 -> QVariant () -> IO (QVariant ())) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethodVariant_QHBoxLayout setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethodVariant_QHBoxLayout_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QHBoxLayout_setUserMethodVariant cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQHBoxLayout x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))
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

instance QunSetHandler (QHBoxLayout ()) where 
 unSetHandler qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withCWString evid $ \cstr_evid ->
    qtc_QHBoxLayout_unSetHandler cobj_qobj cstr_evid

foreign import ccall "qtc_QHBoxLayout_unSetHandler" qtc_QHBoxLayout_unSetHandler :: Ptr (TQHBoxLayout a) -> CWString -> IO (CBool)

instance QunSetHandler (QHBoxLayoutSc a) where 
 unSetHandler qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withCWString evid $ \cstr_evid ->
    qtc_QHBoxLayout_unSetHandler cobj_qobj cstr_evid

instance QsetHandler (QHBoxLayout ()) (QHBoxLayout x0 -> QLayoutItem t1 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QHBoxLayout1 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QHBoxLayout1_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QHBoxLayout_setHandler1 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQHBoxLayout x0) -> Ptr (TQLayoutItem t1) -> IO ()
    setHandlerWrapper x0 x1
      = do x0obj <- qHBoxLayoutFromPtr x0
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

foreign import ccall "qtc_QHBoxLayout_setHandler1" qtc_QHBoxLayout_setHandler1 :: Ptr (TQHBoxLayout a) -> CWString -> Ptr (Ptr (TQHBoxLayout x0) -> Ptr (TQLayoutItem t1) -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QHBoxLayout1 :: (Ptr (TQHBoxLayout x0) -> Ptr (TQLayoutItem t1) -> IO ()) -> IO (FunPtr (Ptr (TQHBoxLayout x0) -> Ptr (TQLayoutItem t1) -> IO ()))

foreign import ccall "wrapper" wrapSetHandler_QHBoxLayout1_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QHBoxLayoutSc a) (QHBoxLayout x0 -> QLayoutItem t1 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QHBoxLayout1 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QHBoxLayout1_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QHBoxLayout_setHandler1 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQHBoxLayout x0) -> Ptr (TQLayoutItem t1) -> IO ()
    setHandlerWrapper x0 x1
      = do x0obj <- qHBoxLayoutFromPtr x0
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

instance QaddItem_h (QHBoxLayout ()) ((QLayoutItem t1)) where
 addItem_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHBoxLayout_addItem cobj_x0 cobj_x1

foreign import ccall "qtc_QHBoxLayout_addItem" qtc_QHBoxLayout_addItem :: Ptr (TQHBoxLayout a) -> Ptr (TQLayoutItem t1) -> IO ()

instance QaddItem_h (QHBoxLayoutSc a) ((QLayoutItem t1)) where
 addItem_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHBoxLayout_addItem cobj_x0 cobj_x1

instance QsetHandler (QHBoxLayout ()) (QHBoxLayout x0 -> IO (Int)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QHBoxLayout2 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QHBoxLayout2_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QHBoxLayout_setHandler2 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQHBoxLayout x0) -> IO (CInt)
    setHandlerWrapper x0
      = do x0obj <- qHBoxLayoutFromPtr x0
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

foreign import ccall "qtc_QHBoxLayout_setHandler2" qtc_QHBoxLayout_setHandler2 :: Ptr (TQHBoxLayout a) -> CWString -> Ptr (Ptr (TQHBoxLayout x0) -> IO (CInt)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QHBoxLayout2 :: (Ptr (TQHBoxLayout x0) -> IO (CInt)) -> IO (FunPtr (Ptr (TQHBoxLayout x0) -> IO (CInt)))

foreign import ccall "wrapper" wrapSetHandler_QHBoxLayout2_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QHBoxLayoutSc a) (QHBoxLayout x0 -> IO (Int)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QHBoxLayout2 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QHBoxLayout2_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QHBoxLayout_setHandler2 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQHBoxLayout x0) -> IO (CInt)
    setHandlerWrapper x0
      = do x0obj <- qHBoxLayoutFromPtr x0
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

instance Qcount_h (QHBoxLayout ()) (()) where
 count_h x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHBoxLayout_count cobj_x0

foreign import ccall "qtc_QHBoxLayout_count" qtc_QHBoxLayout_count :: Ptr (TQHBoxLayout a) -> IO CInt

instance Qcount_h (QHBoxLayoutSc a) (()) where
 count_h x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHBoxLayout_count cobj_x0

instance QsetHandler (QHBoxLayout ()) (QHBoxLayout x0 -> IO (Orientations)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QHBoxLayout3 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QHBoxLayout3_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QHBoxLayout_setHandler3 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQHBoxLayout x0) -> IO (CLong)
    setHandlerWrapper x0
      = do x0obj <- qHBoxLayoutFromPtr x0
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

foreign import ccall "qtc_QHBoxLayout_setHandler3" qtc_QHBoxLayout_setHandler3 :: Ptr (TQHBoxLayout a) -> CWString -> Ptr (Ptr (TQHBoxLayout x0) -> IO (CLong)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QHBoxLayout3 :: (Ptr (TQHBoxLayout x0) -> IO (CLong)) -> IO (FunPtr (Ptr (TQHBoxLayout x0) -> IO (CLong)))

foreign import ccall "wrapper" wrapSetHandler_QHBoxLayout3_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QHBoxLayoutSc a) (QHBoxLayout x0 -> IO (Orientations)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QHBoxLayout3 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QHBoxLayout3_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QHBoxLayout_setHandler3 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQHBoxLayout x0) -> IO (CLong)
    setHandlerWrapper x0
      = do x0obj <- qHBoxLayoutFromPtr x0
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

instance QexpandingDirections_h (QHBoxLayout ()) (()) where
 expandingDirections_h x0 ()
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHBoxLayout_expandingDirections cobj_x0

foreign import ccall "qtc_QHBoxLayout_expandingDirections" qtc_QHBoxLayout_expandingDirections :: Ptr (TQHBoxLayout a) -> IO CLong

instance QexpandingDirections_h (QHBoxLayoutSc a) (()) where
 expandingDirections_h x0 ()
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHBoxLayout_expandingDirections cobj_x0

instance QsetHandler (QHBoxLayout ()) (QHBoxLayout x0 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QHBoxLayout4 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QHBoxLayout4_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QHBoxLayout_setHandler4 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQHBoxLayout x0) -> IO (CBool)
    setHandlerWrapper x0
      = do x0obj <- qHBoxLayoutFromPtr x0
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

foreign import ccall "qtc_QHBoxLayout_setHandler4" qtc_QHBoxLayout_setHandler4 :: Ptr (TQHBoxLayout a) -> CWString -> Ptr (Ptr (TQHBoxLayout x0) -> IO (CBool)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QHBoxLayout4 :: (Ptr (TQHBoxLayout x0) -> IO (CBool)) -> IO (FunPtr (Ptr (TQHBoxLayout x0) -> IO (CBool)))

foreign import ccall "wrapper" wrapSetHandler_QHBoxLayout4_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QHBoxLayoutSc a) (QHBoxLayout x0 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QHBoxLayout4 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QHBoxLayout4_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QHBoxLayout_setHandler4 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQHBoxLayout x0) -> IO (CBool)
    setHandlerWrapper x0
      = do x0obj <- qHBoxLayoutFromPtr x0
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

instance QhasHeightForWidth_h (QHBoxLayout ()) (()) where
 hasHeightForWidth_h x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHBoxLayout_hasHeightForWidth cobj_x0

foreign import ccall "qtc_QHBoxLayout_hasHeightForWidth" qtc_QHBoxLayout_hasHeightForWidth :: Ptr (TQHBoxLayout a) -> IO CBool

instance QhasHeightForWidth_h (QHBoxLayoutSc a) (()) where
 hasHeightForWidth_h x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHBoxLayout_hasHeightForWidth cobj_x0

instance QsetHandler (QHBoxLayout ()) (QHBoxLayout x0 -> Int -> IO (Int)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QHBoxLayout5 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QHBoxLayout5_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QHBoxLayout_setHandler5 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQHBoxLayout x0) -> CInt -> IO (CInt)
    setHandlerWrapper x0 x1
      = do x0obj <- qHBoxLayoutFromPtr x0
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

foreign import ccall "qtc_QHBoxLayout_setHandler5" qtc_QHBoxLayout_setHandler5 :: Ptr (TQHBoxLayout a) -> CWString -> Ptr (Ptr (TQHBoxLayout x0) -> CInt -> IO (CInt)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QHBoxLayout5 :: (Ptr (TQHBoxLayout x0) -> CInt -> IO (CInt)) -> IO (FunPtr (Ptr (TQHBoxLayout x0) -> CInt -> IO (CInt)))

foreign import ccall "wrapper" wrapSetHandler_QHBoxLayout5_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QHBoxLayoutSc a) (QHBoxLayout x0 -> Int -> IO (Int)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QHBoxLayout5 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QHBoxLayout5_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QHBoxLayout_setHandler5 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQHBoxLayout x0) -> CInt -> IO (CInt)
    setHandlerWrapper x0 x1
      = do x0obj <- qHBoxLayoutFromPtr x0
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

instance QheightForWidth_h (QHBoxLayout ()) ((Int)) where
 heightForWidth_h x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHBoxLayout_heightForWidth cobj_x0 (toCInt x1)

foreign import ccall "qtc_QHBoxLayout_heightForWidth" qtc_QHBoxLayout_heightForWidth :: Ptr (TQHBoxLayout a) -> CInt -> IO CInt

instance QheightForWidth_h (QHBoxLayoutSc a) ((Int)) where
 heightForWidth_h x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHBoxLayout_heightForWidth cobj_x0 (toCInt x1)

instance QsetHandler (QHBoxLayout ()) (QHBoxLayout x0 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QHBoxLayout6 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QHBoxLayout6_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QHBoxLayout_setHandler6 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQHBoxLayout x0) -> IO ()
    setHandlerWrapper x0
      = do x0obj <- qHBoxLayoutFromPtr x0
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

foreign import ccall "qtc_QHBoxLayout_setHandler6" qtc_QHBoxLayout_setHandler6 :: Ptr (TQHBoxLayout a) -> CWString -> Ptr (Ptr (TQHBoxLayout x0) -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QHBoxLayout6 :: (Ptr (TQHBoxLayout x0) -> IO ()) -> IO (FunPtr (Ptr (TQHBoxLayout x0) -> IO ()))

foreign import ccall "wrapper" wrapSetHandler_QHBoxLayout6_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QHBoxLayoutSc a) (QHBoxLayout x0 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QHBoxLayout6 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QHBoxLayout6_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QHBoxLayout_setHandler6 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQHBoxLayout x0) -> IO ()
    setHandlerWrapper x0
      = do x0obj <- qHBoxLayoutFromPtr x0
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

instance Qinvalidate_h (QHBoxLayout ()) (()) where
 invalidate_h x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHBoxLayout_invalidate cobj_x0

foreign import ccall "qtc_QHBoxLayout_invalidate" qtc_QHBoxLayout_invalidate :: Ptr (TQHBoxLayout a) -> IO ()

instance Qinvalidate_h (QHBoxLayoutSc a) (()) where
 invalidate_h x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHBoxLayout_invalidate cobj_x0

instance QsetHandler (QHBoxLayout ()) (QHBoxLayout x0 -> Int -> IO (QLayoutItem t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QHBoxLayout7 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QHBoxLayout7_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QHBoxLayout_setHandler7 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQHBoxLayout x0) -> CInt -> IO (Ptr (TQLayoutItem t0))
    setHandlerWrapper x0 x1
      = do x0obj <- qHBoxLayoutFromPtr x0
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

foreign import ccall "qtc_QHBoxLayout_setHandler7" qtc_QHBoxLayout_setHandler7 :: Ptr (TQHBoxLayout a) -> CWString -> Ptr (Ptr (TQHBoxLayout x0) -> CInt -> IO (Ptr (TQLayoutItem t0))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QHBoxLayout7 :: (Ptr (TQHBoxLayout x0) -> CInt -> IO (Ptr (TQLayoutItem t0))) -> IO (FunPtr (Ptr (TQHBoxLayout x0) -> CInt -> IO (Ptr (TQLayoutItem t0))))

foreign import ccall "wrapper" wrapSetHandler_QHBoxLayout7_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QHBoxLayoutSc a) (QHBoxLayout x0 -> Int -> IO (QLayoutItem t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QHBoxLayout7 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QHBoxLayout7_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QHBoxLayout_setHandler7 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQHBoxLayout x0) -> CInt -> IO (Ptr (TQLayoutItem t0))
    setHandlerWrapper x0 x1
      = do x0obj <- qHBoxLayoutFromPtr x0
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

instance QitemAt_h (QHBoxLayout ()) ((Int)) where
 itemAt_h x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHBoxLayout_itemAt cobj_x0 (toCInt x1)

foreign import ccall "qtc_QHBoxLayout_itemAt" qtc_QHBoxLayout_itemAt :: Ptr (TQHBoxLayout a) -> CInt -> IO (Ptr (TQLayoutItem ()))

instance QitemAt_h (QHBoxLayoutSc a) ((Int)) where
 itemAt_h x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHBoxLayout_itemAt cobj_x0 (toCInt x1)

instance QsetHandler (QHBoxLayout ()) (QHBoxLayout x0 -> IO (QSize t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QHBoxLayout8 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QHBoxLayout8_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QHBoxLayout_setHandler8 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQHBoxLayout x0) -> IO (Ptr (TQSize t0))
    setHandlerWrapper x0
      = do x0obj <- qHBoxLayoutFromPtr x0
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

foreign import ccall "qtc_QHBoxLayout_setHandler8" qtc_QHBoxLayout_setHandler8 :: Ptr (TQHBoxLayout a) -> CWString -> Ptr (Ptr (TQHBoxLayout x0) -> IO (Ptr (TQSize t0))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QHBoxLayout8 :: (Ptr (TQHBoxLayout x0) -> IO (Ptr (TQSize t0))) -> IO (FunPtr (Ptr (TQHBoxLayout x0) -> IO (Ptr (TQSize t0))))

foreign import ccall "wrapper" wrapSetHandler_QHBoxLayout8_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QHBoxLayoutSc a) (QHBoxLayout x0 -> IO (QSize t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QHBoxLayout8 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QHBoxLayout8_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QHBoxLayout_setHandler8 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQHBoxLayout x0) -> IO (Ptr (TQSize t0))
    setHandlerWrapper x0
      = do x0obj <- qHBoxLayoutFromPtr x0
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

instance QqmaximumSize_h (QHBoxLayout ()) (()) where
 qmaximumSize_h x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHBoxLayout_maximumSize cobj_x0

foreign import ccall "qtc_QHBoxLayout_maximumSize" qtc_QHBoxLayout_maximumSize :: Ptr (TQHBoxLayout a) -> IO (Ptr (TQSize ()))

instance QqmaximumSize_h (QHBoxLayoutSc a) (()) where
 qmaximumSize_h x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHBoxLayout_maximumSize cobj_x0

instance QmaximumSize_h (QHBoxLayout ()) (()) where
 maximumSize_h x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHBoxLayout_maximumSize_qth cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QHBoxLayout_maximumSize_qth" qtc_QHBoxLayout_maximumSize_qth :: Ptr (TQHBoxLayout a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QmaximumSize_h (QHBoxLayoutSc a) (()) where
 maximumSize_h x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHBoxLayout_maximumSize_qth cobj_x0 csize_ret_w csize_ret_h

instance QminimumHeightForWidth_h (QHBoxLayout ()) ((Int)) where
 minimumHeightForWidth_h x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHBoxLayout_minimumHeightForWidth cobj_x0 (toCInt x1)

foreign import ccall "qtc_QHBoxLayout_minimumHeightForWidth" qtc_QHBoxLayout_minimumHeightForWidth :: Ptr (TQHBoxLayout a) -> CInt -> IO CInt

instance QminimumHeightForWidth_h (QHBoxLayoutSc a) ((Int)) where
 minimumHeightForWidth_h x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHBoxLayout_minimumHeightForWidth cobj_x0 (toCInt x1)

instance QqminimumSize_h (QHBoxLayout ()) (()) where
 qminimumSize_h x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHBoxLayout_minimumSize cobj_x0

foreign import ccall "qtc_QHBoxLayout_minimumSize" qtc_QHBoxLayout_minimumSize :: Ptr (TQHBoxLayout a) -> IO (Ptr (TQSize ()))

instance QqminimumSize_h (QHBoxLayoutSc a) (()) where
 qminimumSize_h x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHBoxLayout_minimumSize cobj_x0

instance QminimumSize_h (QHBoxLayout ()) (()) where
 minimumSize_h x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHBoxLayout_minimumSize_qth cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QHBoxLayout_minimumSize_qth" qtc_QHBoxLayout_minimumSize_qth :: Ptr (TQHBoxLayout a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QminimumSize_h (QHBoxLayoutSc a) (()) where
 minimumSize_h x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHBoxLayout_minimumSize_qth cobj_x0 csize_ret_w csize_ret_h

instance QsetHandler (QHBoxLayout ()) (QHBoxLayout x0 -> QRect t1 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QHBoxLayout9 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QHBoxLayout9_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QHBoxLayout_setHandler9 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQHBoxLayout x0) -> Ptr (TQRect t1) -> IO ()
    setHandlerWrapper x0 x1
      = do x0obj <- qHBoxLayoutFromPtr x0
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

foreign import ccall "qtc_QHBoxLayout_setHandler9" qtc_QHBoxLayout_setHandler9 :: Ptr (TQHBoxLayout a) -> CWString -> Ptr (Ptr (TQHBoxLayout x0) -> Ptr (TQRect t1) -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QHBoxLayout9 :: (Ptr (TQHBoxLayout x0) -> Ptr (TQRect t1) -> IO ()) -> IO (FunPtr (Ptr (TQHBoxLayout x0) -> Ptr (TQRect t1) -> IO ()))

foreign import ccall "wrapper" wrapSetHandler_QHBoxLayout9_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QHBoxLayoutSc a) (QHBoxLayout x0 -> QRect t1 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QHBoxLayout9 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QHBoxLayout9_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QHBoxLayout_setHandler9 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQHBoxLayout x0) -> Ptr (TQRect t1) -> IO ()
    setHandlerWrapper x0 x1
      = do x0obj <- qHBoxLayoutFromPtr x0
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

instance QqsetGeometry_h (QHBoxLayout ()) ((QRect t1)) where
 qsetGeometry_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHBoxLayout_setGeometry cobj_x0 cobj_x1

foreign import ccall "qtc_QHBoxLayout_setGeometry" qtc_QHBoxLayout_setGeometry :: Ptr (TQHBoxLayout a) -> Ptr (TQRect t1) -> IO ()

instance QqsetGeometry_h (QHBoxLayoutSc a) ((QRect t1)) where
 qsetGeometry_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHBoxLayout_setGeometry cobj_x0 cobj_x1

instance QsetGeometry_h (QHBoxLayout ()) ((Rect)) where
 setGeometry_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QHBoxLayout_setGeometry_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

foreign import ccall "qtc_QHBoxLayout_setGeometry_qth" qtc_QHBoxLayout_setGeometry_qth :: Ptr (TQHBoxLayout a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QsetGeometry_h (QHBoxLayoutSc a) ((Rect)) where
 setGeometry_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QHBoxLayout_setGeometry_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

instance QqsizeHint_h (QHBoxLayout ()) (()) where
 qsizeHint_h x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHBoxLayout_sizeHint cobj_x0

foreign import ccall "qtc_QHBoxLayout_sizeHint" qtc_QHBoxLayout_sizeHint :: Ptr (TQHBoxLayout a) -> IO (Ptr (TQSize ()))

instance QqsizeHint_h (QHBoxLayoutSc a) (()) where
 qsizeHint_h x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHBoxLayout_sizeHint cobj_x0

instance QsizeHint_h (QHBoxLayout ()) (()) where
 sizeHint_h x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHBoxLayout_sizeHint_qth cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QHBoxLayout_sizeHint_qth" qtc_QHBoxLayout_sizeHint_qth :: Ptr (TQHBoxLayout a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QsizeHint_h (QHBoxLayoutSc a) (()) where
 sizeHint_h x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHBoxLayout_sizeHint_qth cobj_x0 csize_ret_w csize_ret_h

instance QtakeAt_h (QHBoxLayout ()) ((Int)) where
 takeAt_h x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHBoxLayout_takeAt cobj_x0 (toCInt x1)

foreign import ccall "qtc_QHBoxLayout_takeAt" qtc_QHBoxLayout_takeAt :: Ptr (TQHBoxLayout a) -> CInt -> IO (Ptr (TQLayoutItem ()))

instance QtakeAt_h (QHBoxLayoutSc a) ((Int)) where
 takeAt_h x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHBoxLayout_takeAt cobj_x0 (toCInt x1)

instance QsetHandler (QHBoxLayout ()) (QHBoxLayout x0 -> QObject t1 -> IO (Int)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QHBoxLayout10 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QHBoxLayout10_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QHBoxLayout_setHandler10 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQHBoxLayout x0) -> Ptr (TQObject t1) -> IO (CInt)
    setHandlerWrapper x0 x1
      = do x0obj <- qHBoxLayoutFromPtr x0
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

foreign import ccall "qtc_QHBoxLayout_setHandler10" qtc_QHBoxLayout_setHandler10 :: Ptr (TQHBoxLayout a) -> CWString -> Ptr (Ptr (TQHBoxLayout x0) -> Ptr (TQObject t1) -> IO (CInt)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QHBoxLayout10 :: (Ptr (TQHBoxLayout x0) -> Ptr (TQObject t1) -> IO (CInt)) -> IO (FunPtr (Ptr (TQHBoxLayout x0) -> Ptr (TQObject t1) -> IO (CInt)))

foreign import ccall "wrapper" wrapSetHandler_QHBoxLayout10_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QHBoxLayoutSc a) (QHBoxLayout x0 -> QObject t1 -> IO (Int)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QHBoxLayout10 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QHBoxLayout10_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QHBoxLayout_setHandler10 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQHBoxLayout x0) -> Ptr (TQObject t1) -> IO (CInt)
    setHandlerWrapper x0 x1
      = do x0obj <- qHBoxLayoutFromPtr x0
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

instance QindexOf_h (QHBoxLayout ()) ((QWidget t1)) where
 indexOf_h x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHBoxLayout_indexOf cobj_x0 cobj_x1

foreign import ccall "qtc_QHBoxLayout_indexOf" qtc_QHBoxLayout_indexOf :: Ptr (TQHBoxLayout a) -> Ptr (TQWidget t1) -> IO CInt

instance QindexOf_h (QHBoxLayoutSc a) ((QWidget t1)) where
 indexOf_h x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHBoxLayout_indexOf cobj_x0 cobj_x1

instance QqisEmpty_h (QHBoxLayout ()) (()) where
 qisEmpty_h x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHBoxLayout_isEmpty cobj_x0

foreign import ccall "qtc_QHBoxLayout_isEmpty" qtc_QHBoxLayout_isEmpty :: Ptr (TQHBoxLayout a) -> IO CBool

instance QqisEmpty_h (QHBoxLayoutSc a) (()) where
 qisEmpty_h x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHBoxLayout_isEmpty cobj_x0

instance QsetHandler (QHBoxLayout ()) (QHBoxLayout x0 -> IO (QObject t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QHBoxLayout11 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QHBoxLayout11_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QHBoxLayout_setHandler11 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQHBoxLayout x0) -> IO (Ptr (TQObject t0))
    setHandlerWrapper x0
      = do x0obj <- qHBoxLayoutFromPtr x0
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

foreign import ccall "qtc_QHBoxLayout_setHandler11" qtc_QHBoxLayout_setHandler11 :: Ptr (TQHBoxLayout a) -> CWString -> Ptr (Ptr (TQHBoxLayout x0) -> IO (Ptr (TQObject t0))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QHBoxLayout11 :: (Ptr (TQHBoxLayout x0) -> IO (Ptr (TQObject t0))) -> IO (FunPtr (Ptr (TQHBoxLayout x0) -> IO (Ptr (TQObject t0))))

foreign import ccall "wrapper" wrapSetHandler_QHBoxLayout11_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QHBoxLayoutSc a) (QHBoxLayout x0 -> IO (QObject t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QHBoxLayout11 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QHBoxLayout11_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QHBoxLayout_setHandler11 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQHBoxLayout x0) -> IO (Ptr (TQObject t0))
    setHandlerWrapper x0
      = do x0obj <- qHBoxLayoutFromPtr x0
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

instance Qlayout_h (QHBoxLayout ()) (()) where
 layout_h x0 ()
  = withQLayoutResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHBoxLayout_layout cobj_x0

foreign import ccall "qtc_QHBoxLayout_layout" qtc_QHBoxLayout_layout :: Ptr (TQHBoxLayout a) -> IO (Ptr (TQLayout ()))

instance Qlayout_h (QHBoxLayoutSc a) (()) where
 layout_h x0 ()
  = withQLayoutResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHBoxLayout_layout cobj_x0

instance QsetHandler (QHBoxLayout ()) (QHBoxLayout x0 -> IO (QRect t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QHBoxLayout12 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QHBoxLayout12_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QHBoxLayout_setHandler12 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQHBoxLayout x0) -> IO (Ptr (TQRect t0))
    setHandlerWrapper x0
      = do x0obj <- qHBoxLayoutFromPtr x0
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

foreign import ccall "qtc_QHBoxLayout_setHandler12" qtc_QHBoxLayout_setHandler12 :: Ptr (TQHBoxLayout a) -> CWString -> Ptr (Ptr (TQHBoxLayout x0) -> IO (Ptr (TQRect t0))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QHBoxLayout12 :: (Ptr (TQHBoxLayout x0) -> IO (Ptr (TQRect t0))) -> IO (FunPtr (Ptr (TQHBoxLayout x0) -> IO (Ptr (TQRect t0))))

foreign import ccall "wrapper" wrapSetHandler_QHBoxLayout12_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QHBoxLayoutSc a) (QHBoxLayout x0 -> IO (QRect t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QHBoxLayout12 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QHBoxLayout12_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QHBoxLayout_setHandler12 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQHBoxLayout x0) -> IO (Ptr (TQRect t0))
    setHandlerWrapper x0
      = do x0obj <- qHBoxLayoutFromPtr x0
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

instance Qqgeometry_h (QHBoxLayout ()) (()) where
 qgeometry_h x0 ()
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHBoxLayout_geometry cobj_x0

foreign import ccall "qtc_QHBoxLayout_geometry" qtc_QHBoxLayout_geometry :: Ptr (TQHBoxLayout a) -> IO (Ptr (TQRect ()))

instance Qqgeometry_h (QHBoxLayoutSc a) (()) where
 qgeometry_h x0 ()
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHBoxLayout_geometry cobj_x0

instance Qgeometry_h (QHBoxLayout ()) (()) where
 geometry_h x0 ()
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHBoxLayout_geometry_qth cobj_x0 crect_ret_x crect_ret_y crect_ret_w crect_ret_h

foreign import ccall "qtc_QHBoxLayout_geometry_qth" qtc_QHBoxLayout_geometry_qth :: Ptr (TQHBoxLayout a) -> Ptr CInt -> Ptr CInt -> Ptr CInt -> Ptr CInt -> IO ()

instance Qgeometry_h (QHBoxLayoutSc a) (()) where
 geometry_h x0 ()
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHBoxLayout_geometry_qth cobj_x0 crect_ret_x crect_ret_y crect_ret_w crect_ret_h

instance QsetHandler (QHBoxLayout ()) (QHBoxLayout x0 -> IO (QLayoutItem t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QHBoxLayout13 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QHBoxLayout13_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QHBoxLayout_setHandler13 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQHBoxLayout x0) -> IO (Ptr (TQLayoutItem t0))
    setHandlerWrapper x0
      = do x0obj <- qHBoxLayoutFromPtr x0
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

foreign import ccall "qtc_QHBoxLayout_setHandler13" qtc_QHBoxLayout_setHandler13 :: Ptr (TQHBoxLayout a) -> CWString -> Ptr (Ptr (TQHBoxLayout x0) -> IO (Ptr (TQLayoutItem t0))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QHBoxLayout13 :: (Ptr (TQHBoxLayout x0) -> IO (Ptr (TQLayoutItem t0))) -> IO (FunPtr (Ptr (TQHBoxLayout x0) -> IO (Ptr (TQLayoutItem t0))))

foreign import ccall "wrapper" wrapSetHandler_QHBoxLayout13_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QHBoxLayoutSc a) (QHBoxLayout x0 -> IO (QLayoutItem t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QHBoxLayout13 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QHBoxLayout13_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QHBoxLayout_setHandler13 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQHBoxLayout x0) -> IO (Ptr (TQLayoutItem t0))
    setHandlerWrapper x0
      = do x0obj <- qHBoxLayoutFromPtr x0
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

instance QspacerItem_h (QHBoxLayout ()) (()) where
 spacerItem_h x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHBoxLayout_spacerItem cobj_x0

foreign import ccall "qtc_QHBoxLayout_spacerItem" qtc_QHBoxLayout_spacerItem :: Ptr (TQHBoxLayout a) -> IO (Ptr (TQSpacerItem ()))

instance QspacerItem_h (QHBoxLayoutSc a) (()) where
 spacerItem_h x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHBoxLayout_spacerItem cobj_x0

instance Qwidget_h (QHBoxLayout ()) (()) where
 widget_h x0 ()
  = withQWidgetResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHBoxLayout_widget cobj_x0

foreign import ccall "qtc_QHBoxLayout_widget" qtc_QHBoxLayout_widget :: Ptr (TQHBoxLayout a) -> IO (Ptr (TQWidget ()))

instance Qwidget_h (QHBoxLayoutSc a) (()) where
 widget_h x0 ()
  = withQWidgetResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHBoxLayout_widget cobj_x0

instance QsetHandler (QHBoxLayout ()) (QHBoxLayout x0 -> QEvent t1 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QHBoxLayout14 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QHBoxLayout14_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QHBoxLayout_setHandler14 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQHBoxLayout x0) -> Ptr (TQEvent t1) -> IO (CBool)
    setHandlerWrapper x0 x1
      = do x0obj <- qHBoxLayoutFromPtr x0
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

foreign import ccall "qtc_QHBoxLayout_setHandler14" qtc_QHBoxLayout_setHandler14 :: Ptr (TQHBoxLayout a) -> CWString -> Ptr (Ptr (TQHBoxLayout x0) -> Ptr (TQEvent t1) -> IO (CBool)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QHBoxLayout14 :: (Ptr (TQHBoxLayout x0) -> Ptr (TQEvent t1) -> IO (CBool)) -> IO (FunPtr (Ptr (TQHBoxLayout x0) -> Ptr (TQEvent t1) -> IO (CBool)))

foreign import ccall "wrapper" wrapSetHandler_QHBoxLayout14_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QHBoxLayoutSc a) (QHBoxLayout x0 -> QEvent t1 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QHBoxLayout14 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QHBoxLayout14_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QHBoxLayout_setHandler14 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQHBoxLayout x0) -> Ptr (TQEvent t1) -> IO (CBool)
    setHandlerWrapper x0 x1
      = do x0obj <- qHBoxLayoutFromPtr x0
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

instance Qevent_h (QHBoxLayout ()) ((QEvent t1)) where
 event_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHBoxLayout_event cobj_x0 cobj_x1

foreign import ccall "qtc_QHBoxLayout_event" qtc_QHBoxLayout_event :: Ptr (TQHBoxLayout a) -> Ptr (TQEvent t1) -> IO CBool

instance Qevent_h (QHBoxLayoutSc a) ((QEvent t1)) where
 event_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHBoxLayout_event cobj_x0 cobj_x1

instance QsetHandler (QHBoxLayout ()) (QHBoxLayout x0 -> QObject t1 -> QEvent t2 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QHBoxLayout15 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QHBoxLayout15_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QHBoxLayout_setHandler15 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQHBoxLayout x0) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO (CBool)
    setHandlerWrapper x0 x1 x2
      = do x0obj <- qHBoxLayoutFromPtr x0
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

foreign import ccall "qtc_QHBoxLayout_setHandler15" qtc_QHBoxLayout_setHandler15 :: Ptr (TQHBoxLayout a) -> CWString -> Ptr (Ptr (TQHBoxLayout x0) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO (CBool)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QHBoxLayout15 :: (Ptr (TQHBoxLayout x0) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO (CBool)) -> IO (FunPtr (Ptr (TQHBoxLayout x0) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO (CBool)))

foreign import ccall "wrapper" wrapSetHandler_QHBoxLayout15_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QHBoxLayoutSc a) (QHBoxLayout x0 -> QObject t1 -> QEvent t2 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QHBoxLayout15 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QHBoxLayout15_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QHBoxLayout_setHandler15 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQHBoxLayout x0) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO (CBool)
    setHandlerWrapper x0 x1 x2
      = do x0obj <- qHBoxLayoutFromPtr x0
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

instance QeventFilter_h (QHBoxLayout ()) ((QObject t1, QEvent t2)) where
 eventFilter_h x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QHBoxLayout_eventFilter cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QHBoxLayout_eventFilter" qtc_QHBoxLayout_eventFilter :: Ptr (TQHBoxLayout a) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO CBool

instance QeventFilter_h (QHBoxLayoutSc a) ((QObject t1, QEvent t2)) where
 eventFilter_h x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QHBoxLayout_eventFilter cobj_x0 cobj_x1 cobj_x2

