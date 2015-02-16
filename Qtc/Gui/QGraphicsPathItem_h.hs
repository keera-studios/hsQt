{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QGraphicsPathItem_h.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:25
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QGraphicsPathItem_h where

import Foreign.C.Types
import Qtc.Enums.Base
import Qtc.Enums.Core.Qt
import Qtc.Enums.Gui.QGraphicsItem

import Qtc.Classes.Base
import Qtc.Classes.Qccs_h
import Qtc.Classes.Core_h
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core
import Qtc.Classes.Gui_h
import Qtc.ClassTypes.Gui
import Foreign.Marshal.Array

instance QunSetUserMethod (QGraphicsPathItem ()) where
 unSetUserMethod qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QGraphicsPathItem_unSetUserMethod cobj_qobj (toCInt 0) (toCInt evid)

foreign import ccall "qtc_QGraphicsPathItem_unSetUserMethod" qtc_QGraphicsPathItem_unSetUserMethod :: Ptr (TQGraphicsPathItem a) -> CInt -> CInt -> IO (CBool)

instance QunSetUserMethod (QGraphicsPathItemSc a) where
 unSetUserMethod qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QGraphicsPathItem_unSetUserMethod cobj_qobj (toCInt 0) (toCInt evid)

instance QunSetUserMethodVariant (QGraphicsPathItem ()) where
 unSetUserMethodVariant qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QGraphicsPathItem_unSetUserMethod cobj_qobj (toCInt 1) (toCInt evid)

instance QunSetUserMethodVariant (QGraphicsPathItemSc a) where
 unSetUserMethodVariant qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QGraphicsPathItem_unSetUserMethod cobj_qobj (toCInt 1) (toCInt evid)

instance QunSetUserMethodVariantList (QGraphicsPathItem ()) where
 unSetUserMethodVariantList qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QGraphicsPathItem_unSetUserMethod cobj_qobj (toCInt 2) (toCInt evid)

instance QunSetUserMethodVariantList (QGraphicsPathItemSc a) where
 unSetUserMethodVariantList qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QGraphicsPathItem_unSetUserMethod cobj_qobj (toCInt 2) (toCInt evid)

instance QsetUserMethod (QGraphicsPathItem ()) (QGraphicsPathItem x0 -> IO ()) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethod_QGraphicsPathItem setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethod_QGraphicsPathItem_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QGraphicsPathItem_setUserMethod cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQGraphicsPathItem x0) -> IO ()
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

foreign import ccall "qtc_QGraphicsPathItem_setUserMethod" qtc_QGraphicsPathItem_setUserMethod :: Ptr (TQGraphicsPathItem a) -> CInt -> Ptr (Ptr (TQGraphicsPathItem x0) -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetUserMethod_QGraphicsPathItem :: (Ptr (TQGraphicsPathItem x0) -> IO ()) -> IO (FunPtr (Ptr (TQGraphicsPathItem x0) -> IO ()))

foreign import ccall "wrapper" wrapSetUserMethod_QGraphicsPathItem_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetUserMethod (QGraphicsPathItemSc a) (QGraphicsPathItem x0 -> IO ()) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethod_QGraphicsPathItem setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethod_QGraphicsPathItem_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QGraphicsPathItem_setUserMethod cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQGraphicsPathItem x0) -> IO ()
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

instance QsetUserMethod (QGraphicsPathItem ()) (QGraphicsPathItem x0 -> QVariant () -> IO (QVariant ())) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethodVariant_QGraphicsPathItem setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethodVariant_QGraphicsPathItem_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QGraphicsPathItem_setUserMethodVariant cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQGraphicsPathItem x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))
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

foreign import ccall "qtc_QGraphicsPathItem_setUserMethodVariant" qtc_QGraphicsPathItem_setUserMethodVariant :: Ptr (TQGraphicsPathItem a) -> CInt -> Ptr (Ptr (TQGraphicsPathItem x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetUserMethodVariant_QGraphicsPathItem :: (Ptr (TQGraphicsPathItem x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))) -> IO (FunPtr (Ptr (TQGraphicsPathItem x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))))

foreign import ccall "wrapper" wrapSetUserMethodVariant_QGraphicsPathItem_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetUserMethod (QGraphicsPathItemSc a) (QGraphicsPathItem x0 -> QVariant () -> IO (QVariant ())) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethodVariant_QGraphicsPathItem setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethodVariant_QGraphicsPathItem_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QGraphicsPathItem_setUserMethodVariant cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQGraphicsPathItem x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))
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

instance QunSetHandler (QGraphicsPathItem ()) where 
 unSetHandler qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withCWString evid $ \cstr_evid ->
    qtc_QGraphicsPathItem_unSetHandler cobj_qobj cstr_evid

foreign import ccall "qtc_QGraphicsPathItem_unSetHandler" qtc_QGraphicsPathItem_unSetHandler :: Ptr (TQGraphicsPathItem a) -> CWString -> IO (CBool)

instance QunSetHandler (QGraphicsPathItemSc a) where 
 unSetHandler qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withCWString evid $ \cstr_evid ->
    qtc_QGraphicsPathItem_unSetHandler cobj_qobj cstr_evid

instance QsetHandler (QGraphicsPathItem ()) (QGraphicsPathItem x0 -> IO (QRectF t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QGraphicsPathItem1 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QGraphicsPathItem1_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QGraphicsPathItem_setHandler1 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQGraphicsPathItem x0) -> IO (Ptr (TQRectF t0))
    setHandlerWrapper x0
      = do x0obj <- objectFromPtr_nf x0
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

foreign import ccall "qtc_QGraphicsPathItem_setHandler1" qtc_QGraphicsPathItem_setHandler1 :: Ptr (TQGraphicsPathItem a) -> CWString -> Ptr (Ptr (TQGraphicsPathItem x0) -> IO (Ptr (TQRectF t0))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QGraphicsPathItem1 :: (Ptr (TQGraphicsPathItem x0) -> IO (Ptr (TQRectF t0))) -> IO (FunPtr (Ptr (TQGraphicsPathItem x0) -> IO (Ptr (TQRectF t0))))

foreign import ccall "wrapper" wrapSetHandler_QGraphicsPathItem1_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QGraphicsPathItemSc a) (QGraphicsPathItem x0 -> IO (QRectF t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QGraphicsPathItem1 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QGraphicsPathItem1_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QGraphicsPathItem_setHandler1 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQGraphicsPathItem x0) -> IO (Ptr (TQRectF t0))
    setHandlerWrapper x0
      = do x0obj <- objectFromPtr_nf x0
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

instance QqqboundingRect_h (QGraphicsPathItem ()) (()) where
 qqboundingRect_h x0 ()
  = withQRectFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsPathItem_boundingRect cobj_x0

foreign import ccall "qtc_QGraphicsPathItem_boundingRect" qtc_QGraphicsPathItem_boundingRect :: Ptr (TQGraphicsPathItem a) -> IO (Ptr (TQRectF ()))

instance QqqboundingRect_h (QGraphicsPathItemSc a) (()) where
 qqboundingRect_h x0 ()
  = withQRectFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsPathItem_boundingRect cobj_x0

instance QqboundingRect_h (QGraphicsPathItem ()) (()) where
 qboundingRect_h x0 ()
  = withRectFResult $ \crectf_ret_x crectf_ret_y crectf_ret_w crectf_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsPathItem_boundingRect_qth cobj_x0 crectf_ret_x crectf_ret_y crectf_ret_w crectf_ret_h

foreign import ccall "qtc_QGraphicsPathItem_boundingRect_qth" qtc_QGraphicsPathItem_boundingRect_qth :: Ptr (TQGraphicsPathItem a) -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> IO ()

instance QqboundingRect_h (QGraphicsPathItemSc a) (()) where
 qboundingRect_h x0 ()
  = withRectFResult $ \crectf_ret_x crectf_ret_y crectf_ret_w crectf_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsPathItem_boundingRect_qth cobj_x0 crectf_ret_x crectf_ret_y crectf_ret_w crectf_ret_h

instance QsetHandler (QGraphicsPathItem ()) (QGraphicsPathItem x0 -> QPointF t1 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QGraphicsPathItem2 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QGraphicsPathItem2_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QGraphicsPathItem_setHandler2 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQGraphicsPathItem x0) -> Ptr (TQPointF t1) -> IO (CBool)
    setHandlerWrapper x0 x1
      = do x0obj <- objectFromPtr_nf x0
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

foreign import ccall "qtc_QGraphicsPathItem_setHandler2" qtc_QGraphicsPathItem_setHandler2 :: Ptr (TQGraphicsPathItem a) -> CWString -> Ptr (Ptr (TQGraphicsPathItem x0) -> Ptr (TQPointF t1) -> IO (CBool)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QGraphicsPathItem2 :: (Ptr (TQGraphicsPathItem x0) -> Ptr (TQPointF t1) -> IO (CBool)) -> IO (FunPtr (Ptr (TQGraphicsPathItem x0) -> Ptr (TQPointF t1) -> IO (CBool)))

foreign import ccall "wrapper" wrapSetHandler_QGraphicsPathItem2_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QGraphicsPathItemSc a) (QGraphicsPathItem x0 -> QPointF t1 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QGraphicsPathItem2 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QGraphicsPathItem2_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QGraphicsPathItem_setHandler2 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQGraphicsPathItem x0) -> Ptr (TQPointF t1) -> IO (CBool)
    setHandlerWrapper x0 x1
      = do x0obj <- objectFromPtr_nf x0
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

instance Qqcontains_h (QGraphicsPathItem ()) ((PointF)) where
 qcontains_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCPointF x1 $ \cpointf_x1_x cpointf_x1_y -> 
    qtc_QGraphicsPathItem_contains_qth cobj_x0 cpointf_x1_x cpointf_x1_y 

foreign import ccall "qtc_QGraphicsPathItem_contains_qth" qtc_QGraphicsPathItem_contains_qth :: Ptr (TQGraphicsPathItem a) -> CDouble -> CDouble -> IO CBool

instance Qqcontains_h (QGraphicsPathItemSc a) ((PointF)) where
 qcontains_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCPointF x1 $ \cpointf_x1_x cpointf_x1_y -> 
    qtc_QGraphicsPathItem_contains_qth cobj_x0 cpointf_x1_x cpointf_x1_y 

instance Qqqcontains_h (QGraphicsPathItem ()) ((QPointF t1)) where
 qqcontains_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPathItem_contains cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsPathItem_contains" qtc_QGraphicsPathItem_contains :: Ptr (TQGraphicsPathItem a) -> Ptr (TQPointF t1) -> IO CBool

instance Qqqcontains_h (QGraphicsPathItemSc a) ((QPointF t1)) where
 qqcontains_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPathItem_contains cobj_x0 cobj_x1

instance QsetHandler (QGraphicsPathItem ()) (QGraphicsPathItem x0 -> QGraphicsItem t1 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QGraphicsPathItem3 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QGraphicsPathItem3_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QGraphicsPathItem_setHandler3 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQGraphicsPathItem x0) -> Ptr (TQGraphicsItem t1) -> IO (CBool)
    setHandlerWrapper x0 x1
      = do x0obj <- objectFromPtr_nf x0
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

foreign import ccall "qtc_QGraphicsPathItem_setHandler3" qtc_QGraphicsPathItem_setHandler3 :: Ptr (TQGraphicsPathItem a) -> CWString -> Ptr (Ptr (TQGraphicsPathItem x0) -> Ptr (TQGraphicsItem t1) -> IO (CBool)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QGraphicsPathItem3 :: (Ptr (TQGraphicsPathItem x0) -> Ptr (TQGraphicsItem t1) -> IO (CBool)) -> IO (FunPtr (Ptr (TQGraphicsPathItem x0) -> Ptr (TQGraphicsItem t1) -> IO (CBool)))

foreign import ccall "wrapper" wrapSetHandler_QGraphicsPathItem3_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QGraphicsPathItemSc a) (QGraphicsPathItem x0 -> QGraphicsItem t1 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QGraphicsPathItem3 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QGraphicsPathItem3_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QGraphicsPathItem_setHandler3 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQGraphicsPathItem x0) -> Ptr (TQGraphicsItem t1) -> IO (CBool)
    setHandlerWrapper x0 x1
      = do x0obj <- objectFromPtr_nf x0
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

instance QsetHandler (QGraphicsPathItem ()) (QGraphicsPathItem x0 -> QObject t1 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QGraphicsPathItem4 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QGraphicsPathItem4_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QGraphicsPathItem_setHandler4 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQGraphicsPathItem x0) -> Ptr (TQObject t1) -> IO (CBool)
    setHandlerWrapper x0 x1
      = do x0obj <- objectFromPtr_nf x0
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

foreign import ccall "qtc_QGraphicsPathItem_setHandler4" qtc_QGraphicsPathItem_setHandler4 :: Ptr (TQGraphicsPathItem a) -> CWString -> Ptr (Ptr (TQGraphicsPathItem x0) -> Ptr (TQObject t1) -> IO (CBool)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QGraphicsPathItem4 :: (Ptr (TQGraphicsPathItem x0) -> Ptr (TQObject t1) -> IO (CBool)) -> IO (FunPtr (Ptr (TQGraphicsPathItem x0) -> Ptr (TQObject t1) -> IO (CBool)))

foreign import ccall "wrapper" wrapSetHandler_QGraphicsPathItem4_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QGraphicsPathItemSc a) (QGraphicsPathItem x0 -> QObject t1 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QGraphicsPathItem4 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QGraphicsPathItem4_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QGraphicsPathItem_setHandler4 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQGraphicsPathItem x0) -> Ptr (TQObject t1) -> IO (CBool)
    setHandlerWrapper x0 x1
      = do x0obj <- objectFromPtr_nf x0
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

instance QisObscuredBy_h (QGraphicsPathItem ()) ((QGraphicsItem t1)) where
 isObscuredBy_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPathItem_isObscuredBy cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsPathItem_isObscuredBy" qtc_QGraphicsPathItem_isObscuredBy :: Ptr (TQGraphicsPathItem a) -> Ptr (TQGraphicsItem t1) -> IO CBool

instance QisObscuredBy_h (QGraphicsPathItemSc a) ((QGraphicsItem t1)) where
 isObscuredBy_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPathItem_isObscuredBy cobj_x0 cobj_x1

instance QisObscuredBy_h (QGraphicsPathItem ()) ((QGraphicsTextItem t1)) where
 isObscuredBy_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPathItem_isObscuredBy_graphicstextitem cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsPathItem_isObscuredBy_graphicstextitem" qtc_QGraphicsPathItem_isObscuredBy_graphicstextitem :: Ptr (TQGraphicsPathItem a) -> Ptr (TQGraphicsTextItem t1) -> IO CBool

instance QisObscuredBy_h (QGraphicsPathItemSc a) ((QGraphicsTextItem t1)) where
 isObscuredBy_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPathItem_isObscuredBy_graphicstextitem cobj_x0 cobj_x1

instance QsetHandler (QGraphicsPathItem ()) (QGraphicsPathItem x0 -> IO (QPainterPath t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QGraphicsPathItem5 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QGraphicsPathItem5_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QGraphicsPathItem_setHandler5 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQGraphicsPathItem x0) -> IO (Ptr (TQPainterPath t0))
    setHandlerWrapper x0
      = do x0obj <- objectFromPtr_nf x0
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

foreign import ccall "qtc_QGraphicsPathItem_setHandler5" qtc_QGraphicsPathItem_setHandler5 :: Ptr (TQGraphicsPathItem a) -> CWString -> Ptr (Ptr (TQGraphicsPathItem x0) -> IO (Ptr (TQPainterPath t0))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QGraphicsPathItem5 :: (Ptr (TQGraphicsPathItem x0) -> IO (Ptr (TQPainterPath t0))) -> IO (FunPtr (Ptr (TQGraphicsPathItem x0) -> IO (Ptr (TQPainterPath t0))))

foreign import ccall "wrapper" wrapSetHandler_QGraphicsPathItem5_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QGraphicsPathItemSc a) (QGraphicsPathItem x0 -> IO (QPainterPath t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QGraphicsPathItem5 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QGraphicsPathItem5_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QGraphicsPathItem_setHandler5 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQGraphicsPathItem x0) -> IO (Ptr (TQPainterPath t0))
    setHandlerWrapper x0
      = do x0obj <- objectFromPtr_nf x0
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

instance QopaqueArea_h (QGraphicsPathItem ()) (()) where
 opaqueArea_h x0 ()
  = withQPainterPathResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsPathItem_opaqueArea cobj_x0

foreign import ccall "qtc_QGraphicsPathItem_opaqueArea" qtc_QGraphicsPathItem_opaqueArea :: Ptr (TQGraphicsPathItem a) -> IO (Ptr (TQPainterPath ()))

instance QopaqueArea_h (QGraphicsPathItemSc a) (()) where
 opaqueArea_h x0 ()
  = withQPainterPathResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsPathItem_opaqueArea cobj_x0

instance QsetHandler (QGraphicsPathItem ()) (QGraphicsPathItem x0 -> QPainter t1 -> QStyleOption t2 -> QObject t3 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QGraphicsPathItem6 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QGraphicsPathItem6_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QGraphicsPathItem_setHandler6 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQGraphicsPathItem x0) -> Ptr (TQPainter t1) -> Ptr (TQStyleOption t2) -> Ptr (TQObject t3) -> IO ()
    setHandlerWrapper x0 x1 x2 x3
      = do x0obj <- objectFromPtr_nf x0
           x1obj <- objectFromPtr_nf x1
           x2obj <- objectFromPtr_nf x2
           x3obj <- qObjectFromPtr x3
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

foreign import ccall "qtc_QGraphicsPathItem_setHandler6" qtc_QGraphicsPathItem_setHandler6 :: Ptr (TQGraphicsPathItem a) -> CWString -> Ptr (Ptr (TQGraphicsPathItem x0) -> Ptr (TQPainter t1) -> Ptr (TQStyleOption t2) -> Ptr (TQObject t3) -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QGraphicsPathItem6 :: (Ptr (TQGraphicsPathItem x0) -> Ptr (TQPainter t1) -> Ptr (TQStyleOption t2) -> Ptr (TQObject t3) -> IO ()) -> IO (FunPtr (Ptr (TQGraphicsPathItem x0) -> Ptr (TQPainter t1) -> Ptr (TQStyleOption t2) -> Ptr (TQObject t3) -> IO ()))

foreign import ccall "wrapper" wrapSetHandler_QGraphicsPathItem6_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QGraphicsPathItemSc a) (QGraphicsPathItem x0 -> QPainter t1 -> QStyleOption t2 -> QObject t3 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QGraphicsPathItem6 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QGraphicsPathItem6_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QGraphicsPathItem_setHandler6 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQGraphicsPathItem x0) -> Ptr (TQPainter t1) -> Ptr (TQStyleOption t2) -> Ptr (TQObject t3) -> IO ()
    setHandlerWrapper x0 x1 x2 x3
      = do x0obj <- objectFromPtr_nf x0
           x1obj <- objectFromPtr_nf x1
           x2obj <- objectFromPtr_nf x2
           x3obj <- qObjectFromPtr x3
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

instance Qpaint_h (QGraphicsPathItem ()) ((QPainter t1, QStyleOptionGraphicsItem t2, QWidget t3)) where
 paint_h x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QGraphicsPathItem_paint1 cobj_x0 cobj_x1 cobj_x2 cobj_x3

foreign import ccall "qtc_QGraphicsPathItem_paint1" qtc_QGraphicsPathItem_paint1 :: Ptr (TQGraphicsPathItem a) -> Ptr (TQPainter t1) -> Ptr (TQStyleOptionGraphicsItem t2) -> Ptr (TQWidget t3) -> IO ()

instance Qpaint_h (QGraphicsPathItemSc a) ((QPainter t1, QStyleOptionGraphicsItem t2, QWidget t3)) where
 paint_h x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QGraphicsPathItem_paint1 cobj_x0 cobj_x1 cobj_x2 cobj_x3

instance Qshape_h (QGraphicsPathItem ()) (()) where
 shape_h x0 ()
  = withQPainterPathResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsPathItem_shape cobj_x0

foreign import ccall "qtc_QGraphicsPathItem_shape" qtc_QGraphicsPathItem_shape :: Ptr (TQGraphicsPathItem a) -> IO (Ptr (TQPainterPath ()))

instance Qshape_h (QGraphicsPathItemSc a) (()) where
 shape_h x0 ()
  = withQPainterPathResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsPathItem_shape cobj_x0

instance QsetHandler (QGraphicsPathItem ()) (QGraphicsPathItem x0 -> IO (Int)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QGraphicsPathItem7 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QGraphicsPathItem7_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QGraphicsPathItem_setHandler7 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQGraphicsPathItem x0) -> IO (CInt)
    setHandlerWrapper x0
      = do x0obj <- objectFromPtr_nf x0
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

foreign import ccall "qtc_QGraphicsPathItem_setHandler7" qtc_QGraphicsPathItem_setHandler7 :: Ptr (TQGraphicsPathItem a) -> CWString -> Ptr (Ptr (TQGraphicsPathItem x0) -> IO (CInt)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QGraphicsPathItem7 :: (Ptr (TQGraphicsPathItem x0) -> IO (CInt)) -> IO (FunPtr (Ptr (TQGraphicsPathItem x0) -> IO (CInt)))

foreign import ccall "wrapper" wrapSetHandler_QGraphicsPathItem7_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QGraphicsPathItemSc a) (QGraphicsPathItem x0 -> IO (Int)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QGraphicsPathItem7 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QGraphicsPathItem7_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QGraphicsPathItem_setHandler7 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQGraphicsPathItem x0) -> IO (CInt)
    setHandlerWrapper x0
      = do x0obj <- objectFromPtr_nf x0
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

instance Qqtype_h (QGraphicsPathItem ()) (()) where
 qtype_h x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsPathItem_type cobj_x0

foreign import ccall "qtc_QGraphicsPathItem_type" qtc_QGraphicsPathItem_type :: Ptr (TQGraphicsPathItem a) -> IO CInt

instance Qqtype_h (QGraphicsPathItemSc a) (()) where
 qtype_h x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsPathItem_type cobj_x0

instance QsetHandler (QGraphicsPathItem ()) (QGraphicsPathItem x0 -> Int -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QGraphicsPathItem8 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QGraphicsPathItem8_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QGraphicsPathItem_setHandler8 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQGraphicsPathItem x0) -> CInt -> IO ()
    setHandlerWrapper x0 x1
      = do x0obj <- objectFromPtr_nf x0
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

foreign import ccall "qtc_QGraphicsPathItem_setHandler8" qtc_QGraphicsPathItem_setHandler8 :: Ptr (TQGraphicsPathItem a) -> CWString -> Ptr (Ptr (TQGraphicsPathItem x0) -> CInt -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QGraphicsPathItem8 :: (Ptr (TQGraphicsPathItem x0) -> CInt -> IO ()) -> IO (FunPtr (Ptr (TQGraphicsPathItem x0) -> CInt -> IO ()))

foreign import ccall "wrapper" wrapSetHandler_QGraphicsPathItem8_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QGraphicsPathItemSc a) (QGraphicsPathItem x0 -> Int -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QGraphicsPathItem8 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QGraphicsPathItem8_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QGraphicsPathItem_setHandler8 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQGraphicsPathItem x0) -> CInt -> IO ()
    setHandlerWrapper x0 x1
      = do x0obj <- objectFromPtr_nf x0
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

instance Qadvance_h (QGraphicsPathItem ()) ((Int)) where
 advance_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsPathItem_advance cobj_x0 (toCInt x1)

foreign import ccall "qtc_QGraphicsPathItem_advance" qtc_QGraphicsPathItem_advance :: Ptr (TQGraphicsPathItem a) -> CInt -> IO ()

instance Qadvance_h (QGraphicsPathItemSc a) ((Int)) where
 advance_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsPathItem_advance cobj_x0 (toCInt x1)

instance QsetHandler (QGraphicsPathItem ()) (QGraphicsPathItem x0 -> QGraphicsItem t1 -> ItemSelectionMode -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QGraphicsPathItem9 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QGraphicsPathItem9_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QGraphicsPathItem_setHandler9 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQGraphicsPathItem x0) -> Ptr (TQGraphicsItem t1) -> CLong -> IO (CBool)
    setHandlerWrapper x0 x1 x2
      = do x0obj <- objectFromPtr_nf x0
           x1obj <- objectFromPtr_nf x1
           let x2enum = qEnum_fromInt $ fromCLong x2
           let rv =
                if (objectIsNull x0obj)
                 then return False
                 else _handler x0obj x1obj x2enum
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

foreign import ccall "qtc_QGraphicsPathItem_setHandler9" qtc_QGraphicsPathItem_setHandler9 :: Ptr (TQGraphicsPathItem a) -> CWString -> Ptr (Ptr (TQGraphicsPathItem x0) -> Ptr (TQGraphicsItem t1) -> CLong -> IO (CBool)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QGraphicsPathItem9 :: (Ptr (TQGraphicsPathItem x0) -> Ptr (TQGraphicsItem t1) -> CLong -> IO (CBool)) -> IO (FunPtr (Ptr (TQGraphicsPathItem x0) -> Ptr (TQGraphicsItem t1) -> CLong -> IO (CBool)))

foreign import ccall "wrapper" wrapSetHandler_QGraphicsPathItem9_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QGraphicsPathItemSc a) (QGraphicsPathItem x0 -> QGraphicsItem t1 -> ItemSelectionMode -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QGraphicsPathItem9 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QGraphicsPathItem9_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QGraphicsPathItem_setHandler9 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQGraphicsPathItem x0) -> Ptr (TQGraphicsItem t1) -> CLong -> IO (CBool)
    setHandlerWrapper x0 x1 x2
      = do x0obj <- objectFromPtr_nf x0
           x1obj <- objectFromPtr_nf x1
           let x2enum = qEnum_fromInt $ fromCLong x2
           let rv =
                if (objectIsNull x0obj)
                 then return False
                 else _handler x0obj x1obj x2enum
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

instance QsetHandler (QGraphicsPathItem ()) (QGraphicsPathItem x0 -> QObject t1 -> ItemSelectionMode -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QGraphicsPathItem10 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QGraphicsPathItem10_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QGraphicsPathItem_setHandler10 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQGraphicsPathItem x0) -> Ptr (TQObject t1) -> CLong -> IO (CBool)
    setHandlerWrapper x0 x1 x2
      = do x0obj <- objectFromPtr_nf x0
           x1obj <- qObjectFromPtr x1
           let x2enum = qEnum_fromInt $ fromCLong x2
           let rv =
                if (objectIsNull x0obj)
                 then return False
                 else _handler x0obj x1obj x2enum
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

foreign import ccall "qtc_QGraphicsPathItem_setHandler10" qtc_QGraphicsPathItem_setHandler10 :: Ptr (TQGraphicsPathItem a) -> CWString -> Ptr (Ptr (TQGraphicsPathItem x0) -> Ptr (TQObject t1) -> CLong -> IO (CBool)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QGraphicsPathItem10 :: (Ptr (TQGraphicsPathItem x0) -> Ptr (TQObject t1) -> CLong -> IO (CBool)) -> IO (FunPtr (Ptr (TQGraphicsPathItem x0) -> Ptr (TQObject t1) -> CLong -> IO (CBool)))

foreign import ccall "wrapper" wrapSetHandler_QGraphicsPathItem10_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QGraphicsPathItemSc a) (QGraphicsPathItem x0 -> QObject t1 -> ItemSelectionMode -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QGraphicsPathItem10 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QGraphicsPathItem10_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QGraphicsPathItem_setHandler10 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQGraphicsPathItem x0) -> Ptr (TQObject t1) -> CLong -> IO (CBool)
    setHandlerWrapper x0 x1 x2
      = do x0obj <- objectFromPtr_nf x0
           x1obj <- qObjectFromPtr x1
           let x2enum = qEnum_fromInt $ fromCLong x2
           let rv =
                if (objectIsNull x0obj)
                 then return False
                 else _handler x0obj x1obj x2enum
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

instance QcollidesWithItem_h (QGraphicsPathItem ()) ((QGraphicsItem t1)) where
 collidesWithItem_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPathItem_collidesWithItem cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsPathItem_collidesWithItem" qtc_QGraphicsPathItem_collidesWithItem :: Ptr (TQGraphicsPathItem a) -> Ptr (TQGraphicsItem t1) -> IO CBool

instance QcollidesWithItem_h (QGraphicsPathItemSc a) ((QGraphicsItem t1)) where
 collidesWithItem_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPathItem_collidesWithItem cobj_x0 cobj_x1

instance QcollidesWithItem_h (QGraphicsPathItem ()) ((QGraphicsItem t1, ItemSelectionMode)) where
 collidesWithItem_h x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPathItem_collidesWithItem1 cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QGraphicsPathItem_collidesWithItem1" qtc_QGraphicsPathItem_collidesWithItem1 :: Ptr (TQGraphicsPathItem a) -> Ptr (TQGraphicsItem t1) -> CLong -> IO CBool

instance QcollidesWithItem_h (QGraphicsPathItemSc a) ((QGraphicsItem t1, ItemSelectionMode)) where
 collidesWithItem_h x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPathItem_collidesWithItem1 cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

instance QcollidesWithItem_h (QGraphicsPathItem ()) ((QGraphicsTextItem t1)) where
 collidesWithItem_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPathItem_collidesWithItem_graphicstextitem cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsPathItem_collidesWithItem_graphicstextitem" qtc_QGraphicsPathItem_collidesWithItem_graphicstextitem :: Ptr (TQGraphicsPathItem a) -> Ptr (TQGraphicsTextItem t1) -> IO CBool

instance QcollidesWithItem_h (QGraphicsPathItemSc a) ((QGraphicsTextItem t1)) where
 collidesWithItem_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPathItem_collidesWithItem_graphicstextitem cobj_x0 cobj_x1

instance QcollidesWithItem_h (QGraphicsPathItem ()) ((QGraphicsTextItem t1, ItemSelectionMode)) where
 collidesWithItem_h x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPathItem_collidesWithItem1_graphicstextitem cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QGraphicsPathItem_collidesWithItem1_graphicstextitem" qtc_QGraphicsPathItem_collidesWithItem1_graphicstextitem :: Ptr (TQGraphicsPathItem a) -> Ptr (TQGraphicsTextItem t1) -> CLong -> IO CBool

instance QcollidesWithItem_h (QGraphicsPathItemSc a) ((QGraphicsTextItem t1, ItemSelectionMode)) where
 collidesWithItem_h x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPathItem_collidesWithItem1_graphicstextitem cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

instance QsetHandler (QGraphicsPathItem ()) (QGraphicsPathItem x0 -> QPainterPath t1 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QGraphicsPathItem11 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QGraphicsPathItem11_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QGraphicsPathItem_setHandler11 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQGraphicsPathItem x0) -> Ptr (TQPainterPath t1) -> IO (CBool)
    setHandlerWrapper x0 x1
      = do x0obj <- objectFromPtr_nf x0
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

foreign import ccall "qtc_QGraphicsPathItem_setHandler11" qtc_QGraphicsPathItem_setHandler11 :: Ptr (TQGraphicsPathItem a) -> CWString -> Ptr (Ptr (TQGraphicsPathItem x0) -> Ptr (TQPainterPath t1) -> IO (CBool)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QGraphicsPathItem11 :: (Ptr (TQGraphicsPathItem x0) -> Ptr (TQPainterPath t1) -> IO (CBool)) -> IO (FunPtr (Ptr (TQGraphicsPathItem x0) -> Ptr (TQPainterPath t1) -> IO (CBool)))

foreign import ccall "wrapper" wrapSetHandler_QGraphicsPathItem11_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QGraphicsPathItemSc a) (QGraphicsPathItem x0 -> QPainterPath t1 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QGraphicsPathItem11 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QGraphicsPathItem11_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QGraphicsPathItem_setHandler11 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQGraphicsPathItem x0) -> Ptr (TQPainterPath t1) -> IO (CBool)
    setHandlerWrapper x0 x1
      = do x0obj <- objectFromPtr_nf x0
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

instance QsetHandler (QGraphicsPathItem ()) (QGraphicsPathItem x0 -> QPainterPath t1 -> ItemSelectionMode -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QGraphicsPathItem12 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QGraphicsPathItem12_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QGraphicsPathItem_setHandler12 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQGraphicsPathItem x0) -> Ptr (TQPainterPath t1) -> CLong -> IO (CBool)
    setHandlerWrapper x0 x1 x2
      = do x0obj <- objectFromPtr_nf x0
           x1obj <- objectFromPtr_nf x1
           let x2enum = qEnum_fromInt $ fromCLong x2
           let rv =
                if (objectIsNull x0obj)
                 then return False
                 else _handler x0obj x1obj x2enum
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

foreign import ccall "qtc_QGraphicsPathItem_setHandler12" qtc_QGraphicsPathItem_setHandler12 :: Ptr (TQGraphicsPathItem a) -> CWString -> Ptr (Ptr (TQGraphicsPathItem x0) -> Ptr (TQPainterPath t1) -> CLong -> IO (CBool)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QGraphicsPathItem12 :: (Ptr (TQGraphicsPathItem x0) -> Ptr (TQPainterPath t1) -> CLong -> IO (CBool)) -> IO (FunPtr (Ptr (TQGraphicsPathItem x0) -> Ptr (TQPainterPath t1) -> CLong -> IO (CBool)))

foreign import ccall "wrapper" wrapSetHandler_QGraphicsPathItem12_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QGraphicsPathItemSc a) (QGraphicsPathItem x0 -> QPainterPath t1 -> ItemSelectionMode -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QGraphicsPathItem12 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QGraphicsPathItem12_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QGraphicsPathItem_setHandler12 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQGraphicsPathItem x0) -> Ptr (TQPainterPath t1) -> CLong -> IO (CBool)
    setHandlerWrapper x0 x1 x2
      = do x0obj <- objectFromPtr_nf x0
           x1obj <- objectFromPtr_nf x1
           let x2enum = qEnum_fromInt $ fromCLong x2
           let rv =
                if (objectIsNull x0obj)
                 then return False
                 else _handler x0obj x1obj x2enum
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

instance QcollidesWithPath_h (QGraphicsPathItem ()) ((QPainterPath t1)) where
 collidesWithPath_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPathItem_collidesWithPath cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsPathItem_collidesWithPath" qtc_QGraphicsPathItem_collidesWithPath :: Ptr (TQGraphicsPathItem a) -> Ptr (TQPainterPath t1) -> IO CBool

instance QcollidesWithPath_h (QGraphicsPathItemSc a) ((QPainterPath t1)) where
 collidesWithPath_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPathItem_collidesWithPath cobj_x0 cobj_x1

instance QcollidesWithPath_h (QGraphicsPathItem ()) ((QPainterPath t1, ItemSelectionMode)) where
 collidesWithPath_h x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPathItem_collidesWithPath1 cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QGraphicsPathItem_collidesWithPath1" qtc_QGraphicsPathItem_collidesWithPath1 :: Ptr (TQGraphicsPathItem a) -> Ptr (TQPainterPath t1) -> CLong -> IO CBool

instance QcollidesWithPath_h (QGraphicsPathItemSc a) ((QPainterPath t1, ItemSelectionMode)) where
 collidesWithPath_h x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPathItem_collidesWithPath1 cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

instance QsetHandler (QGraphicsPathItem ()) (QGraphicsPathItem x0 -> QEvent t1 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QGraphicsPathItem13 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QGraphicsPathItem13_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QGraphicsPathItem_setHandler13 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQGraphicsPathItem x0) -> Ptr (TQEvent t1) -> IO ()
    setHandlerWrapper x0 x1
      = do x0obj <- objectFromPtr_nf x0
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

foreign import ccall "qtc_QGraphicsPathItem_setHandler13" qtc_QGraphicsPathItem_setHandler13 :: Ptr (TQGraphicsPathItem a) -> CWString -> Ptr (Ptr (TQGraphicsPathItem x0) -> Ptr (TQEvent t1) -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QGraphicsPathItem13 :: (Ptr (TQGraphicsPathItem x0) -> Ptr (TQEvent t1) -> IO ()) -> IO (FunPtr (Ptr (TQGraphicsPathItem x0) -> Ptr (TQEvent t1) -> IO ()))

foreign import ccall "wrapper" wrapSetHandler_QGraphicsPathItem13_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QGraphicsPathItemSc a) (QGraphicsPathItem x0 -> QEvent t1 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QGraphicsPathItem13 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QGraphicsPathItem13_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QGraphicsPathItem_setHandler13 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQGraphicsPathItem x0) -> Ptr (TQEvent t1) -> IO ()
    setHandlerWrapper x0 x1
      = do x0obj <- objectFromPtr_nf x0
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

instance QcontextMenuEvent_h (QGraphicsPathItem ()) ((QGraphicsSceneContextMenuEvent t1)) where
 contextMenuEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPathItem_contextMenuEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsPathItem_contextMenuEvent" qtc_QGraphicsPathItem_contextMenuEvent :: Ptr (TQGraphicsPathItem a) -> Ptr (TQGraphicsSceneContextMenuEvent t1) -> IO ()

instance QcontextMenuEvent_h (QGraphicsPathItemSc a) ((QGraphicsSceneContextMenuEvent t1)) where
 contextMenuEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPathItem_contextMenuEvent cobj_x0 cobj_x1

instance QdragEnterEvent_h (QGraphicsPathItem ()) ((QGraphicsSceneDragDropEvent t1)) where
 dragEnterEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPathItem_dragEnterEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsPathItem_dragEnterEvent" qtc_QGraphicsPathItem_dragEnterEvent :: Ptr (TQGraphicsPathItem a) -> Ptr (TQGraphicsSceneDragDropEvent t1) -> IO ()

instance QdragEnterEvent_h (QGraphicsPathItemSc a) ((QGraphicsSceneDragDropEvent t1)) where
 dragEnterEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPathItem_dragEnterEvent cobj_x0 cobj_x1

instance QdragLeaveEvent_h (QGraphicsPathItem ()) ((QGraphicsSceneDragDropEvent t1)) where
 dragLeaveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPathItem_dragLeaveEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsPathItem_dragLeaveEvent" qtc_QGraphicsPathItem_dragLeaveEvent :: Ptr (TQGraphicsPathItem a) -> Ptr (TQGraphicsSceneDragDropEvent t1) -> IO ()

instance QdragLeaveEvent_h (QGraphicsPathItemSc a) ((QGraphicsSceneDragDropEvent t1)) where
 dragLeaveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPathItem_dragLeaveEvent cobj_x0 cobj_x1

instance QdragMoveEvent_h (QGraphicsPathItem ()) ((QGraphicsSceneDragDropEvent t1)) where
 dragMoveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPathItem_dragMoveEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsPathItem_dragMoveEvent" qtc_QGraphicsPathItem_dragMoveEvent :: Ptr (TQGraphicsPathItem a) -> Ptr (TQGraphicsSceneDragDropEvent t1) -> IO ()

instance QdragMoveEvent_h (QGraphicsPathItemSc a) ((QGraphicsSceneDragDropEvent t1)) where
 dragMoveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPathItem_dragMoveEvent cobj_x0 cobj_x1

instance QdropEvent_h (QGraphicsPathItem ()) ((QGraphicsSceneDragDropEvent t1)) where
 dropEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPathItem_dropEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsPathItem_dropEvent" qtc_QGraphicsPathItem_dropEvent :: Ptr (TQGraphicsPathItem a) -> Ptr (TQGraphicsSceneDragDropEvent t1) -> IO ()

instance QdropEvent_h (QGraphicsPathItemSc a) ((QGraphicsSceneDragDropEvent t1)) where
 dropEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPathItem_dropEvent cobj_x0 cobj_x1

instance QfocusInEvent_h (QGraphicsPathItem ()) ((QFocusEvent t1)) where
 focusInEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPathItem_focusInEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsPathItem_focusInEvent" qtc_QGraphicsPathItem_focusInEvent :: Ptr (TQGraphicsPathItem a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusInEvent_h (QGraphicsPathItemSc a) ((QFocusEvent t1)) where
 focusInEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPathItem_focusInEvent cobj_x0 cobj_x1

instance QfocusOutEvent_h (QGraphicsPathItem ()) ((QFocusEvent t1)) where
 focusOutEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPathItem_focusOutEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsPathItem_focusOutEvent" qtc_QGraphicsPathItem_focusOutEvent :: Ptr (TQGraphicsPathItem a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusOutEvent_h (QGraphicsPathItemSc a) ((QFocusEvent t1)) where
 focusOutEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPathItem_focusOutEvent cobj_x0 cobj_x1

instance QhoverEnterEvent_h (QGraphicsPathItem ()) ((QGraphicsSceneHoverEvent t1)) where
 hoverEnterEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPathItem_hoverEnterEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsPathItem_hoverEnterEvent" qtc_QGraphicsPathItem_hoverEnterEvent :: Ptr (TQGraphicsPathItem a) -> Ptr (TQGraphicsSceneHoverEvent t1) -> IO ()

instance QhoverEnterEvent_h (QGraphicsPathItemSc a) ((QGraphicsSceneHoverEvent t1)) where
 hoverEnterEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPathItem_hoverEnterEvent cobj_x0 cobj_x1

instance QhoverLeaveEvent_h (QGraphicsPathItem ()) ((QGraphicsSceneHoverEvent t1)) where
 hoverLeaveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPathItem_hoverLeaveEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsPathItem_hoverLeaveEvent" qtc_QGraphicsPathItem_hoverLeaveEvent :: Ptr (TQGraphicsPathItem a) -> Ptr (TQGraphicsSceneHoverEvent t1) -> IO ()

instance QhoverLeaveEvent_h (QGraphicsPathItemSc a) ((QGraphicsSceneHoverEvent t1)) where
 hoverLeaveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPathItem_hoverLeaveEvent cobj_x0 cobj_x1

instance QhoverMoveEvent_h (QGraphicsPathItem ()) ((QGraphicsSceneHoverEvent t1)) where
 hoverMoveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPathItem_hoverMoveEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsPathItem_hoverMoveEvent" qtc_QGraphicsPathItem_hoverMoveEvent :: Ptr (TQGraphicsPathItem a) -> Ptr (TQGraphicsSceneHoverEvent t1) -> IO ()

instance QhoverMoveEvent_h (QGraphicsPathItemSc a) ((QGraphicsSceneHoverEvent t1)) where
 hoverMoveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPathItem_hoverMoveEvent cobj_x0 cobj_x1

instance QinputMethodEvent_h (QGraphicsPathItem ()) ((QInputMethodEvent t1)) where
 inputMethodEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPathItem_inputMethodEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsPathItem_inputMethodEvent" qtc_QGraphicsPathItem_inputMethodEvent :: Ptr (TQGraphicsPathItem a) -> Ptr (TQInputMethodEvent t1) -> IO ()

instance QinputMethodEvent_h (QGraphicsPathItemSc a) ((QInputMethodEvent t1)) where
 inputMethodEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPathItem_inputMethodEvent cobj_x0 cobj_x1

instance QsetHandler (QGraphicsPathItem ()) (QGraphicsPathItem x0 -> InputMethodQuery -> IO (QVariant t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QGraphicsPathItem14 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QGraphicsPathItem14_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QGraphicsPathItem_setHandler14 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQGraphicsPathItem x0) -> CLong -> IO (Ptr (TQVariant t0))
    setHandlerWrapper x0 x1
      = do x0obj <- objectFromPtr_nf x0
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

foreign import ccall "qtc_QGraphicsPathItem_setHandler14" qtc_QGraphicsPathItem_setHandler14 :: Ptr (TQGraphicsPathItem a) -> CWString -> Ptr (Ptr (TQGraphicsPathItem x0) -> CLong -> IO (Ptr (TQVariant t0))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QGraphicsPathItem14 :: (Ptr (TQGraphicsPathItem x0) -> CLong -> IO (Ptr (TQVariant t0))) -> IO (FunPtr (Ptr (TQGraphicsPathItem x0) -> CLong -> IO (Ptr (TQVariant t0))))

foreign import ccall "wrapper" wrapSetHandler_QGraphicsPathItem14_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QGraphicsPathItemSc a) (QGraphicsPathItem x0 -> InputMethodQuery -> IO (QVariant t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QGraphicsPathItem14 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QGraphicsPathItem14_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QGraphicsPathItem_setHandler14 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQGraphicsPathItem x0) -> CLong -> IO (Ptr (TQVariant t0))
    setHandlerWrapper x0 x1
      = do x0obj <- objectFromPtr_nf x0
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

instance QinputMethodQuery_h (QGraphicsPathItem ()) ((InputMethodQuery)) where
 inputMethodQuery_h x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsPathItem_inputMethodQuery cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QGraphicsPathItem_inputMethodQuery" qtc_QGraphicsPathItem_inputMethodQuery :: Ptr (TQGraphicsPathItem a) -> CLong -> IO (Ptr (TQVariant ()))

instance QinputMethodQuery_h (QGraphicsPathItemSc a) ((InputMethodQuery)) where
 inputMethodQuery_h x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsPathItem_inputMethodQuery cobj_x0 (toCLong $ qEnum_toInt x1)

instance QsetHandler (QGraphicsPathItem ()) (QGraphicsPathItem x0 -> GraphicsItemChange -> QVariant t2 -> IO (QVariant t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QGraphicsPathItem15 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QGraphicsPathItem15_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QGraphicsPathItem_setHandler15 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQGraphicsPathItem x0) -> CLong -> Ptr (TQVariant t2) -> IO (Ptr (TQVariant t0))
    setHandlerWrapper x0 x1 x2
      = do x0obj <- objectFromPtr_nf x0
           let x1enum = qEnum_fromInt $ fromCLong x1
           x2obj <- objectFromPtr_nf x2
           let rv =
                if (objectIsNull x0obj)
                 then return $ objectCast x0obj
                 else _handler x0obj x1enum x2obj
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

foreign import ccall "qtc_QGraphicsPathItem_setHandler15" qtc_QGraphicsPathItem_setHandler15 :: Ptr (TQGraphicsPathItem a) -> CWString -> Ptr (Ptr (TQGraphicsPathItem x0) -> CLong -> Ptr (TQVariant t2) -> IO (Ptr (TQVariant t0))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QGraphicsPathItem15 :: (Ptr (TQGraphicsPathItem x0) -> CLong -> Ptr (TQVariant t2) -> IO (Ptr (TQVariant t0))) -> IO (FunPtr (Ptr (TQGraphicsPathItem x0) -> CLong -> Ptr (TQVariant t2) -> IO (Ptr (TQVariant t0))))

foreign import ccall "wrapper" wrapSetHandler_QGraphicsPathItem15_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QGraphicsPathItemSc a) (QGraphicsPathItem x0 -> GraphicsItemChange -> QVariant t2 -> IO (QVariant t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QGraphicsPathItem15 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QGraphicsPathItem15_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QGraphicsPathItem_setHandler15 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQGraphicsPathItem x0) -> CLong -> Ptr (TQVariant t2) -> IO (Ptr (TQVariant t0))
    setHandlerWrapper x0 x1 x2
      = do x0obj <- objectFromPtr_nf x0
           let x1enum = qEnum_fromInt $ fromCLong x1
           x2obj <- objectFromPtr_nf x2
           let rv =
                if (objectIsNull x0obj)
                 then return $ objectCast x0obj
                 else _handler x0obj x1enum x2obj
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

instance QitemChange_h (QGraphicsPathItem ()) ((GraphicsItemChange, QVariant t2)) where
 itemChange_h x0 (x1, x2)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsPathItem_itemChange cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2

foreign import ccall "qtc_QGraphicsPathItem_itemChange" qtc_QGraphicsPathItem_itemChange :: Ptr (TQGraphicsPathItem a) -> CLong -> Ptr (TQVariant t2) -> IO (Ptr (TQVariant ()))

instance QitemChange_h (QGraphicsPathItemSc a) ((GraphicsItemChange, QVariant t2)) where
 itemChange_h x0 (x1, x2)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsPathItem_itemChange cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2

instance QkeyPressEvent_h (QGraphicsPathItem ()) ((QKeyEvent t1)) where
 keyPressEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPathItem_keyPressEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsPathItem_keyPressEvent" qtc_QGraphicsPathItem_keyPressEvent :: Ptr (TQGraphicsPathItem a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyPressEvent_h (QGraphicsPathItemSc a) ((QKeyEvent t1)) where
 keyPressEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPathItem_keyPressEvent cobj_x0 cobj_x1

instance QkeyReleaseEvent_h (QGraphicsPathItem ()) ((QKeyEvent t1)) where
 keyReleaseEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPathItem_keyReleaseEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsPathItem_keyReleaseEvent" qtc_QGraphicsPathItem_keyReleaseEvent :: Ptr (TQGraphicsPathItem a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyReleaseEvent_h (QGraphicsPathItemSc a) ((QKeyEvent t1)) where
 keyReleaseEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPathItem_keyReleaseEvent cobj_x0 cobj_x1

instance QmouseDoubleClickEvent_h (QGraphicsPathItem ()) ((QGraphicsSceneMouseEvent t1)) where
 mouseDoubleClickEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPathItem_mouseDoubleClickEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsPathItem_mouseDoubleClickEvent" qtc_QGraphicsPathItem_mouseDoubleClickEvent :: Ptr (TQGraphicsPathItem a) -> Ptr (TQGraphicsSceneMouseEvent t1) -> IO ()

instance QmouseDoubleClickEvent_h (QGraphicsPathItemSc a) ((QGraphicsSceneMouseEvent t1)) where
 mouseDoubleClickEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPathItem_mouseDoubleClickEvent cobj_x0 cobj_x1

instance QmouseMoveEvent_h (QGraphicsPathItem ()) ((QGraphicsSceneMouseEvent t1)) where
 mouseMoveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPathItem_mouseMoveEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsPathItem_mouseMoveEvent" qtc_QGraphicsPathItem_mouseMoveEvent :: Ptr (TQGraphicsPathItem a) -> Ptr (TQGraphicsSceneMouseEvent t1) -> IO ()

instance QmouseMoveEvent_h (QGraphicsPathItemSc a) ((QGraphicsSceneMouseEvent t1)) where
 mouseMoveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPathItem_mouseMoveEvent cobj_x0 cobj_x1

instance QmousePressEvent_h (QGraphicsPathItem ()) ((QGraphicsSceneMouseEvent t1)) where
 mousePressEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPathItem_mousePressEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsPathItem_mousePressEvent" qtc_QGraphicsPathItem_mousePressEvent :: Ptr (TQGraphicsPathItem a) -> Ptr (TQGraphicsSceneMouseEvent t1) -> IO ()

instance QmousePressEvent_h (QGraphicsPathItemSc a) ((QGraphicsSceneMouseEvent t1)) where
 mousePressEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPathItem_mousePressEvent cobj_x0 cobj_x1

instance QmouseReleaseEvent_h (QGraphicsPathItem ()) ((QGraphicsSceneMouseEvent t1)) where
 mouseReleaseEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPathItem_mouseReleaseEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsPathItem_mouseReleaseEvent" qtc_QGraphicsPathItem_mouseReleaseEvent :: Ptr (TQGraphicsPathItem a) -> Ptr (TQGraphicsSceneMouseEvent t1) -> IO ()

instance QmouseReleaseEvent_h (QGraphicsPathItemSc a) ((QGraphicsSceneMouseEvent t1)) where
 mouseReleaseEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPathItem_mouseReleaseEvent cobj_x0 cobj_x1

instance QsetHandler (QGraphicsPathItem ()) (QGraphicsPathItem x0 -> QEvent t1 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QGraphicsPathItem16 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QGraphicsPathItem16_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QGraphicsPathItem_setHandler16 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQGraphicsPathItem x0) -> Ptr (TQEvent t1) -> IO (CBool)
    setHandlerWrapper x0 x1
      = do x0obj <- objectFromPtr_nf x0
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

foreign import ccall "qtc_QGraphicsPathItem_setHandler16" qtc_QGraphicsPathItem_setHandler16 :: Ptr (TQGraphicsPathItem a) -> CWString -> Ptr (Ptr (TQGraphicsPathItem x0) -> Ptr (TQEvent t1) -> IO (CBool)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QGraphicsPathItem16 :: (Ptr (TQGraphicsPathItem x0) -> Ptr (TQEvent t1) -> IO (CBool)) -> IO (FunPtr (Ptr (TQGraphicsPathItem x0) -> Ptr (TQEvent t1) -> IO (CBool)))

foreign import ccall "wrapper" wrapSetHandler_QGraphicsPathItem16_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QGraphicsPathItemSc a) (QGraphicsPathItem x0 -> QEvent t1 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QGraphicsPathItem16 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QGraphicsPathItem16_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QGraphicsPathItem_setHandler16 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQGraphicsPathItem x0) -> Ptr (TQEvent t1) -> IO (CBool)
    setHandlerWrapper x0 x1
      = do x0obj <- objectFromPtr_nf x0
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

instance QsceneEvent_h (QGraphicsPathItem ()) ((QEvent t1)) where
 sceneEvent_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPathItem_sceneEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsPathItem_sceneEvent" qtc_QGraphicsPathItem_sceneEvent :: Ptr (TQGraphicsPathItem a) -> Ptr (TQEvent t1) -> IO CBool

instance QsceneEvent_h (QGraphicsPathItemSc a) ((QEvent t1)) where
 sceneEvent_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPathItem_sceneEvent cobj_x0 cobj_x1

instance QsetHandler (QGraphicsPathItem ()) (QGraphicsPathItem x0 -> QGraphicsItem t1 -> QEvent t2 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QGraphicsPathItem17 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QGraphicsPathItem17_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QGraphicsPathItem_setHandler17 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQGraphicsPathItem x0) -> Ptr (TQGraphicsItem t1) -> Ptr (TQEvent t2) -> IO (CBool)
    setHandlerWrapper x0 x1 x2
      = do x0obj <- objectFromPtr_nf x0
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

foreign import ccall "qtc_QGraphicsPathItem_setHandler17" qtc_QGraphicsPathItem_setHandler17 :: Ptr (TQGraphicsPathItem a) -> CWString -> Ptr (Ptr (TQGraphicsPathItem x0) -> Ptr (TQGraphicsItem t1) -> Ptr (TQEvent t2) -> IO (CBool)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QGraphicsPathItem17 :: (Ptr (TQGraphicsPathItem x0) -> Ptr (TQGraphicsItem t1) -> Ptr (TQEvent t2) -> IO (CBool)) -> IO (FunPtr (Ptr (TQGraphicsPathItem x0) -> Ptr (TQGraphicsItem t1) -> Ptr (TQEvent t2) -> IO (CBool)))

foreign import ccall "wrapper" wrapSetHandler_QGraphicsPathItem17_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QGraphicsPathItemSc a) (QGraphicsPathItem x0 -> QGraphicsItem t1 -> QEvent t2 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QGraphicsPathItem17 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QGraphicsPathItem17_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QGraphicsPathItem_setHandler17 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQGraphicsPathItem x0) -> Ptr (TQGraphicsItem t1) -> Ptr (TQEvent t2) -> IO (CBool)
    setHandlerWrapper x0 x1 x2
      = do x0obj <- objectFromPtr_nf x0
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

instance QsetHandler (QGraphicsPathItem ()) (QGraphicsPathItem x0 -> QObject t1 -> QEvent t2 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QGraphicsPathItem18 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QGraphicsPathItem18_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QGraphicsPathItem_setHandler18 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQGraphicsPathItem x0) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO (CBool)
    setHandlerWrapper x0 x1 x2
      = do x0obj <- objectFromPtr_nf x0
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

foreign import ccall "qtc_QGraphicsPathItem_setHandler18" qtc_QGraphicsPathItem_setHandler18 :: Ptr (TQGraphicsPathItem a) -> CWString -> Ptr (Ptr (TQGraphicsPathItem x0) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO (CBool)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QGraphicsPathItem18 :: (Ptr (TQGraphicsPathItem x0) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO (CBool)) -> IO (FunPtr (Ptr (TQGraphicsPathItem x0) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO (CBool)))

foreign import ccall "wrapper" wrapSetHandler_QGraphicsPathItem18_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QGraphicsPathItemSc a) (QGraphicsPathItem x0 -> QObject t1 -> QEvent t2 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QGraphicsPathItem18 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QGraphicsPathItem18_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QGraphicsPathItem_setHandler18 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQGraphicsPathItem x0) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO (CBool)
    setHandlerWrapper x0 x1 x2
      = do x0obj <- objectFromPtr_nf x0
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

instance QsceneEventFilter_h (QGraphicsPathItem ()) ((QGraphicsItem t1, QEvent t2)) where
 sceneEventFilter_h x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsPathItem_sceneEventFilter cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QGraphicsPathItem_sceneEventFilter" qtc_QGraphicsPathItem_sceneEventFilter :: Ptr (TQGraphicsPathItem a) -> Ptr (TQGraphicsItem t1) -> Ptr (TQEvent t2) -> IO CBool

instance QsceneEventFilter_h (QGraphicsPathItemSc a) ((QGraphicsItem t1, QEvent t2)) where
 sceneEventFilter_h x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsPathItem_sceneEventFilter cobj_x0 cobj_x1 cobj_x2

instance QsceneEventFilter_h (QGraphicsPathItem ()) ((QGraphicsTextItem t1, QEvent t2)) where
 sceneEventFilter_h x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsPathItem_sceneEventFilter_graphicstextitem cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QGraphicsPathItem_sceneEventFilter_graphicstextitem" qtc_QGraphicsPathItem_sceneEventFilter_graphicstextitem :: Ptr (TQGraphicsPathItem a) -> Ptr (TQGraphicsTextItem t1) -> Ptr (TQEvent t2) -> IO CBool

instance QsceneEventFilter_h (QGraphicsPathItemSc a) ((QGraphicsTextItem t1, QEvent t2)) where
 sceneEventFilter_h x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsPathItem_sceneEventFilter_graphicstextitem cobj_x0 cobj_x1 cobj_x2

instance QwheelEvent_h (QGraphicsPathItem ()) ((QGraphicsSceneWheelEvent t1)) where
 wheelEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPathItem_wheelEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsPathItem_wheelEvent" qtc_QGraphicsPathItem_wheelEvent :: Ptr (TQGraphicsPathItem a) -> Ptr (TQGraphicsSceneWheelEvent t1) -> IO ()

instance QwheelEvent_h (QGraphicsPathItemSc a) ((QGraphicsSceneWheelEvent t1)) where
 wheelEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPathItem_wheelEvent cobj_x0 cobj_x1

