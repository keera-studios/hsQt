{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QGraphicsSimpleTextItem_h.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:26
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QGraphicsSimpleTextItem_h where

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

instance QunSetUserMethod (QGraphicsSimpleTextItem ()) where
 unSetUserMethod qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QGraphicsSimpleTextItem_unSetUserMethod cobj_qobj (toCInt 0) (toCInt evid)

foreign import ccall "qtc_QGraphicsSimpleTextItem_unSetUserMethod" qtc_QGraphicsSimpleTextItem_unSetUserMethod :: Ptr (TQGraphicsSimpleTextItem a) -> CInt -> CInt -> IO (CBool)

instance QunSetUserMethod (QGraphicsSimpleTextItemSc a) where
 unSetUserMethod qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QGraphicsSimpleTextItem_unSetUserMethod cobj_qobj (toCInt 0) (toCInt evid)

instance QunSetUserMethodVariant (QGraphicsSimpleTextItem ()) where
 unSetUserMethodVariant qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QGraphicsSimpleTextItem_unSetUserMethod cobj_qobj (toCInt 1) (toCInt evid)

instance QunSetUserMethodVariant (QGraphicsSimpleTextItemSc a) where
 unSetUserMethodVariant qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QGraphicsSimpleTextItem_unSetUserMethod cobj_qobj (toCInt 1) (toCInt evid)

instance QunSetUserMethodVariantList (QGraphicsSimpleTextItem ()) where
 unSetUserMethodVariantList qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QGraphicsSimpleTextItem_unSetUserMethod cobj_qobj (toCInt 2) (toCInt evid)

instance QunSetUserMethodVariantList (QGraphicsSimpleTextItemSc a) where
 unSetUserMethodVariantList qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QGraphicsSimpleTextItem_unSetUserMethod cobj_qobj (toCInt 2) (toCInt evid)

instance QsetUserMethod (QGraphicsSimpleTextItem ()) (QGraphicsSimpleTextItem x0 -> IO ()) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethod_QGraphicsSimpleTextItem setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethod_QGraphicsSimpleTextItem_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QGraphicsSimpleTextItem_setUserMethod cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQGraphicsSimpleTextItem x0) -> IO ()
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

foreign import ccall "qtc_QGraphicsSimpleTextItem_setUserMethod" qtc_QGraphicsSimpleTextItem_setUserMethod :: Ptr (TQGraphicsSimpleTextItem a) -> CInt -> Ptr (Ptr (TQGraphicsSimpleTextItem x0) -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetUserMethod_QGraphicsSimpleTextItem :: (Ptr (TQGraphicsSimpleTextItem x0) -> IO ()) -> IO (FunPtr (Ptr (TQGraphicsSimpleTextItem x0) -> IO ()))

foreign import ccall "wrapper" wrapSetUserMethod_QGraphicsSimpleTextItem_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetUserMethod (QGraphicsSimpleTextItemSc a) (QGraphicsSimpleTextItem x0 -> IO ()) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethod_QGraphicsSimpleTextItem setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethod_QGraphicsSimpleTextItem_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QGraphicsSimpleTextItem_setUserMethod cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQGraphicsSimpleTextItem x0) -> IO ()
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

instance QsetUserMethod (QGraphicsSimpleTextItem ()) (QGraphicsSimpleTextItem x0 -> QVariant () -> IO (QVariant ())) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethodVariant_QGraphicsSimpleTextItem setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethodVariant_QGraphicsSimpleTextItem_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QGraphicsSimpleTextItem_setUserMethodVariant cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQGraphicsSimpleTextItem x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))
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

foreign import ccall "qtc_QGraphicsSimpleTextItem_setUserMethodVariant" qtc_QGraphicsSimpleTextItem_setUserMethodVariant :: Ptr (TQGraphicsSimpleTextItem a) -> CInt -> Ptr (Ptr (TQGraphicsSimpleTextItem x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetUserMethodVariant_QGraphicsSimpleTextItem :: (Ptr (TQGraphicsSimpleTextItem x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))) -> IO (FunPtr (Ptr (TQGraphicsSimpleTextItem x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))))

foreign import ccall "wrapper" wrapSetUserMethodVariant_QGraphicsSimpleTextItem_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetUserMethod (QGraphicsSimpleTextItemSc a) (QGraphicsSimpleTextItem x0 -> QVariant () -> IO (QVariant ())) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethodVariant_QGraphicsSimpleTextItem setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethodVariant_QGraphicsSimpleTextItem_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QGraphicsSimpleTextItem_setUserMethodVariant cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQGraphicsSimpleTextItem x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))
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

instance QunSetHandler (QGraphicsSimpleTextItem ()) where 
 unSetHandler qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withCWString evid $ \cstr_evid ->
    qtc_QGraphicsSimpleTextItem_unSetHandler cobj_qobj cstr_evid

foreign import ccall "qtc_QGraphicsSimpleTextItem_unSetHandler" qtc_QGraphicsSimpleTextItem_unSetHandler :: Ptr (TQGraphicsSimpleTextItem a) -> CWString -> IO (CBool)

instance QunSetHandler (QGraphicsSimpleTextItemSc a) where 
 unSetHandler qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withCWString evid $ \cstr_evid ->
    qtc_QGraphicsSimpleTextItem_unSetHandler cobj_qobj cstr_evid

instance QsetHandler (QGraphicsSimpleTextItem ()) (QGraphicsSimpleTextItem x0 -> IO (QRectF t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QGraphicsSimpleTextItem1 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QGraphicsSimpleTextItem1_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QGraphicsSimpleTextItem_setHandler1 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQGraphicsSimpleTextItem x0) -> IO (Ptr (TQRectF t0))
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

foreign import ccall "qtc_QGraphicsSimpleTextItem_setHandler1" qtc_QGraphicsSimpleTextItem_setHandler1 :: Ptr (TQGraphicsSimpleTextItem a) -> CWString -> Ptr (Ptr (TQGraphicsSimpleTextItem x0) -> IO (Ptr (TQRectF t0))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QGraphicsSimpleTextItem1 :: (Ptr (TQGraphicsSimpleTextItem x0) -> IO (Ptr (TQRectF t0))) -> IO (FunPtr (Ptr (TQGraphicsSimpleTextItem x0) -> IO (Ptr (TQRectF t0))))

foreign import ccall "wrapper" wrapSetHandler_QGraphicsSimpleTextItem1_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QGraphicsSimpleTextItemSc a) (QGraphicsSimpleTextItem x0 -> IO (QRectF t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QGraphicsSimpleTextItem1 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QGraphicsSimpleTextItem1_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QGraphicsSimpleTextItem_setHandler1 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQGraphicsSimpleTextItem x0) -> IO (Ptr (TQRectF t0))
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

instance QqqboundingRect_h (QGraphicsSimpleTextItem ()) (()) where
 qqboundingRect_h x0 ()
  = withQRectFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsSimpleTextItem_boundingRect cobj_x0

foreign import ccall "qtc_QGraphicsSimpleTextItem_boundingRect" qtc_QGraphicsSimpleTextItem_boundingRect :: Ptr (TQGraphicsSimpleTextItem a) -> IO (Ptr (TQRectF ()))

instance QqqboundingRect_h (QGraphicsSimpleTextItemSc a) (()) where
 qqboundingRect_h x0 ()
  = withQRectFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsSimpleTextItem_boundingRect cobj_x0

instance QqboundingRect_h (QGraphicsSimpleTextItem ()) (()) where
 qboundingRect_h x0 ()
  = withRectFResult $ \crectf_ret_x crectf_ret_y crectf_ret_w crectf_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsSimpleTextItem_boundingRect_qth cobj_x0 crectf_ret_x crectf_ret_y crectf_ret_w crectf_ret_h

foreign import ccall "qtc_QGraphicsSimpleTextItem_boundingRect_qth" qtc_QGraphicsSimpleTextItem_boundingRect_qth :: Ptr (TQGraphicsSimpleTextItem a) -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> IO ()

instance QqboundingRect_h (QGraphicsSimpleTextItemSc a) (()) where
 qboundingRect_h x0 ()
  = withRectFResult $ \crectf_ret_x crectf_ret_y crectf_ret_w crectf_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsSimpleTextItem_boundingRect_qth cobj_x0 crectf_ret_x crectf_ret_y crectf_ret_w crectf_ret_h

instance QsetHandler (QGraphicsSimpleTextItem ()) (QGraphicsSimpleTextItem x0 -> QPointF t1 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QGraphicsSimpleTextItem2 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QGraphicsSimpleTextItem2_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QGraphicsSimpleTextItem_setHandler2 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQGraphicsSimpleTextItem x0) -> Ptr (TQPointF t1) -> IO (CBool)
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

foreign import ccall "qtc_QGraphicsSimpleTextItem_setHandler2" qtc_QGraphicsSimpleTextItem_setHandler2 :: Ptr (TQGraphicsSimpleTextItem a) -> CWString -> Ptr (Ptr (TQGraphicsSimpleTextItem x0) -> Ptr (TQPointF t1) -> IO (CBool)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QGraphicsSimpleTextItem2 :: (Ptr (TQGraphicsSimpleTextItem x0) -> Ptr (TQPointF t1) -> IO (CBool)) -> IO (FunPtr (Ptr (TQGraphicsSimpleTextItem x0) -> Ptr (TQPointF t1) -> IO (CBool)))

foreign import ccall "wrapper" wrapSetHandler_QGraphicsSimpleTextItem2_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QGraphicsSimpleTextItemSc a) (QGraphicsSimpleTextItem x0 -> QPointF t1 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QGraphicsSimpleTextItem2 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QGraphicsSimpleTextItem2_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QGraphicsSimpleTextItem_setHandler2 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQGraphicsSimpleTextItem x0) -> Ptr (TQPointF t1) -> IO (CBool)
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

instance Qqcontains_h (QGraphicsSimpleTextItem ()) ((PointF)) where
 qcontains_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCPointF x1 $ \cpointf_x1_x cpointf_x1_y -> 
    qtc_QGraphicsSimpleTextItem_contains_qth cobj_x0 cpointf_x1_x cpointf_x1_y 

foreign import ccall "qtc_QGraphicsSimpleTextItem_contains_qth" qtc_QGraphicsSimpleTextItem_contains_qth :: Ptr (TQGraphicsSimpleTextItem a) -> CDouble -> CDouble -> IO CBool

instance Qqcontains_h (QGraphicsSimpleTextItemSc a) ((PointF)) where
 qcontains_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCPointF x1 $ \cpointf_x1_x cpointf_x1_y -> 
    qtc_QGraphicsSimpleTextItem_contains_qth cobj_x0 cpointf_x1_x cpointf_x1_y 

instance Qqqcontains_h (QGraphicsSimpleTextItem ()) ((QPointF t1)) where
 qqcontains_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsSimpleTextItem_contains cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsSimpleTextItem_contains" qtc_QGraphicsSimpleTextItem_contains :: Ptr (TQGraphicsSimpleTextItem a) -> Ptr (TQPointF t1) -> IO CBool

instance Qqqcontains_h (QGraphicsSimpleTextItemSc a) ((QPointF t1)) where
 qqcontains_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsSimpleTextItem_contains cobj_x0 cobj_x1

instance QsetHandler (QGraphicsSimpleTextItem ()) (QGraphicsSimpleTextItem x0 -> QGraphicsItem t1 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QGraphicsSimpleTextItem3 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QGraphicsSimpleTextItem3_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QGraphicsSimpleTextItem_setHandler3 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQGraphicsSimpleTextItem x0) -> Ptr (TQGraphicsItem t1) -> IO (CBool)
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

foreign import ccall "qtc_QGraphicsSimpleTextItem_setHandler3" qtc_QGraphicsSimpleTextItem_setHandler3 :: Ptr (TQGraphicsSimpleTextItem a) -> CWString -> Ptr (Ptr (TQGraphicsSimpleTextItem x0) -> Ptr (TQGraphicsItem t1) -> IO (CBool)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QGraphicsSimpleTextItem3 :: (Ptr (TQGraphicsSimpleTextItem x0) -> Ptr (TQGraphicsItem t1) -> IO (CBool)) -> IO (FunPtr (Ptr (TQGraphicsSimpleTextItem x0) -> Ptr (TQGraphicsItem t1) -> IO (CBool)))

foreign import ccall "wrapper" wrapSetHandler_QGraphicsSimpleTextItem3_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QGraphicsSimpleTextItemSc a) (QGraphicsSimpleTextItem x0 -> QGraphicsItem t1 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QGraphicsSimpleTextItem3 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QGraphicsSimpleTextItem3_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QGraphicsSimpleTextItem_setHandler3 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQGraphicsSimpleTextItem x0) -> Ptr (TQGraphicsItem t1) -> IO (CBool)
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

instance QsetHandler (QGraphicsSimpleTextItem ()) (QGraphicsSimpleTextItem x0 -> QObject t1 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QGraphicsSimpleTextItem4 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QGraphicsSimpleTextItem4_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QGraphicsSimpleTextItem_setHandler4 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQGraphicsSimpleTextItem x0) -> Ptr (TQObject t1) -> IO (CBool)
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

foreign import ccall "qtc_QGraphicsSimpleTextItem_setHandler4" qtc_QGraphicsSimpleTextItem_setHandler4 :: Ptr (TQGraphicsSimpleTextItem a) -> CWString -> Ptr (Ptr (TQGraphicsSimpleTextItem x0) -> Ptr (TQObject t1) -> IO (CBool)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QGraphicsSimpleTextItem4 :: (Ptr (TQGraphicsSimpleTextItem x0) -> Ptr (TQObject t1) -> IO (CBool)) -> IO (FunPtr (Ptr (TQGraphicsSimpleTextItem x0) -> Ptr (TQObject t1) -> IO (CBool)))

foreign import ccall "wrapper" wrapSetHandler_QGraphicsSimpleTextItem4_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QGraphicsSimpleTextItemSc a) (QGraphicsSimpleTextItem x0 -> QObject t1 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QGraphicsSimpleTextItem4 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QGraphicsSimpleTextItem4_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QGraphicsSimpleTextItem_setHandler4 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQGraphicsSimpleTextItem x0) -> Ptr (TQObject t1) -> IO (CBool)
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

instance QisObscuredBy_h (QGraphicsSimpleTextItem ()) ((QGraphicsItem t1)) where
 isObscuredBy_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsSimpleTextItem_isObscuredBy cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsSimpleTextItem_isObscuredBy" qtc_QGraphicsSimpleTextItem_isObscuredBy :: Ptr (TQGraphicsSimpleTextItem a) -> Ptr (TQGraphicsItem t1) -> IO CBool

instance QisObscuredBy_h (QGraphicsSimpleTextItemSc a) ((QGraphicsItem t1)) where
 isObscuredBy_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsSimpleTextItem_isObscuredBy cobj_x0 cobj_x1

instance QisObscuredBy_h (QGraphicsSimpleTextItem ()) ((QGraphicsTextItem t1)) where
 isObscuredBy_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsSimpleTextItem_isObscuredBy_graphicstextitem cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsSimpleTextItem_isObscuredBy_graphicstextitem" qtc_QGraphicsSimpleTextItem_isObscuredBy_graphicstextitem :: Ptr (TQGraphicsSimpleTextItem a) -> Ptr (TQGraphicsTextItem t1) -> IO CBool

instance QisObscuredBy_h (QGraphicsSimpleTextItemSc a) ((QGraphicsTextItem t1)) where
 isObscuredBy_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsSimpleTextItem_isObscuredBy_graphicstextitem cobj_x0 cobj_x1

instance QsetHandler (QGraphicsSimpleTextItem ()) (QGraphicsSimpleTextItem x0 -> IO (QPainterPath t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QGraphicsSimpleTextItem5 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QGraphicsSimpleTextItem5_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QGraphicsSimpleTextItem_setHandler5 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQGraphicsSimpleTextItem x0) -> IO (Ptr (TQPainterPath t0))
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

foreign import ccall "qtc_QGraphicsSimpleTextItem_setHandler5" qtc_QGraphicsSimpleTextItem_setHandler5 :: Ptr (TQGraphicsSimpleTextItem a) -> CWString -> Ptr (Ptr (TQGraphicsSimpleTextItem x0) -> IO (Ptr (TQPainterPath t0))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QGraphicsSimpleTextItem5 :: (Ptr (TQGraphicsSimpleTextItem x0) -> IO (Ptr (TQPainterPath t0))) -> IO (FunPtr (Ptr (TQGraphicsSimpleTextItem x0) -> IO (Ptr (TQPainterPath t0))))

foreign import ccall "wrapper" wrapSetHandler_QGraphicsSimpleTextItem5_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QGraphicsSimpleTextItemSc a) (QGraphicsSimpleTextItem x0 -> IO (QPainterPath t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QGraphicsSimpleTextItem5 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QGraphicsSimpleTextItem5_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QGraphicsSimpleTextItem_setHandler5 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQGraphicsSimpleTextItem x0) -> IO (Ptr (TQPainterPath t0))
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

instance QopaqueArea_h (QGraphicsSimpleTextItem ()) (()) where
 opaqueArea_h x0 ()
  = withQPainterPathResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsSimpleTextItem_opaqueArea cobj_x0

foreign import ccall "qtc_QGraphicsSimpleTextItem_opaqueArea" qtc_QGraphicsSimpleTextItem_opaqueArea :: Ptr (TQGraphicsSimpleTextItem a) -> IO (Ptr (TQPainterPath ()))

instance QopaqueArea_h (QGraphicsSimpleTextItemSc a) (()) where
 opaqueArea_h x0 ()
  = withQPainterPathResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsSimpleTextItem_opaqueArea cobj_x0

instance QsetHandler (QGraphicsSimpleTextItem ()) (QGraphicsSimpleTextItem x0 -> QPainter t1 -> QStyleOption t2 -> QObject t3 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QGraphicsSimpleTextItem6 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QGraphicsSimpleTextItem6_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QGraphicsSimpleTextItem_setHandler6 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQGraphicsSimpleTextItem x0) -> Ptr (TQPainter t1) -> Ptr (TQStyleOption t2) -> Ptr (TQObject t3) -> IO ()
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

foreign import ccall "qtc_QGraphicsSimpleTextItem_setHandler6" qtc_QGraphicsSimpleTextItem_setHandler6 :: Ptr (TQGraphicsSimpleTextItem a) -> CWString -> Ptr (Ptr (TQGraphicsSimpleTextItem x0) -> Ptr (TQPainter t1) -> Ptr (TQStyleOption t2) -> Ptr (TQObject t3) -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QGraphicsSimpleTextItem6 :: (Ptr (TQGraphicsSimpleTextItem x0) -> Ptr (TQPainter t1) -> Ptr (TQStyleOption t2) -> Ptr (TQObject t3) -> IO ()) -> IO (FunPtr (Ptr (TQGraphicsSimpleTextItem x0) -> Ptr (TQPainter t1) -> Ptr (TQStyleOption t2) -> Ptr (TQObject t3) -> IO ()))

foreign import ccall "wrapper" wrapSetHandler_QGraphicsSimpleTextItem6_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QGraphicsSimpleTextItemSc a) (QGraphicsSimpleTextItem x0 -> QPainter t1 -> QStyleOption t2 -> QObject t3 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QGraphicsSimpleTextItem6 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QGraphicsSimpleTextItem6_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QGraphicsSimpleTextItem_setHandler6 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQGraphicsSimpleTextItem x0) -> Ptr (TQPainter t1) -> Ptr (TQStyleOption t2) -> Ptr (TQObject t3) -> IO ()
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

instance Qpaint_h (QGraphicsSimpleTextItem ()) ((QPainter t1, QStyleOptionGraphicsItem t2, QWidget t3)) where
 paint_h x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QGraphicsSimpleTextItem_paint cobj_x0 cobj_x1 cobj_x2 cobj_x3

foreign import ccall "qtc_QGraphicsSimpleTextItem_paint" qtc_QGraphicsSimpleTextItem_paint :: Ptr (TQGraphicsSimpleTextItem a) -> Ptr (TQPainter t1) -> Ptr (TQStyleOptionGraphicsItem t2) -> Ptr (TQWidget t3) -> IO ()

instance Qpaint_h (QGraphicsSimpleTextItemSc a) ((QPainter t1, QStyleOptionGraphicsItem t2, QWidget t3)) where
 paint_h x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QGraphicsSimpleTextItem_paint cobj_x0 cobj_x1 cobj_x2 cobj_x3

instance Qshape_h (QGraphicsSimpleTextItem ()) (()) where
 shape_h x0 ()
  = withQPainterPathResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsSimpleTextItem_shape cobj_x0

foreign import ccall "qtc_QGraphicsSimpleTextItem_shape" qtc_QGraphicsSimpleTextItem_shape :: Ptr (TQGraphicsSimpleTextItem a) -> IO (Ptr (TQPainterPath ()))

instance Qshape_h (QGraphicsSimpleTextItemSc a) (()) where
 shape_h x0 ()
  = withQPainterPathResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsSimpleTextItem_shape cobj_x0

instance QsetHandler (QGraphicsSimpleTextItem ()) (QGraphicsSimpleTextItem x0 -> IO (Int)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QGraphicsSimpleTextItem7 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QGraphicsSimpleTextItem7_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QGraphicsSimpleTextItem_setHandler7 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQGraphicsSimpleTextItem x0) -> IO (CInt)
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

foreign import ccall "qtc_QGraphicsSimpleTextItem_setHandler7" qtc_QGraphicsSimpleTextItem_setHandler7 :: Ptr (TQGraphicsSimpleTextItem a) -> CWString -> Ptr (Ptr (TQGraphicsSimpleTextItem x0) -> IO (CInt)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QGraphicsSimpleTextItem7 :: (Ptr (TQGraphicsSimpleTextItem x0) -> IO (CInt)) -> IO (FunPtr (Ptr (TQGraphicsSimpleTextItem x0) -> IO (CInt)))

foreign import ccall "wrapper" wrapSetHandler_QGraphicsSimpleTextItem7_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QGraphicsSimpleTextItemSc a) (QGraphicsSimpleTextItem x0 -> IO (Int)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QGraphicsSimpleTextItem7 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QGraphicsSimpleTextItem7_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QGraphicsSimpleTextItem_setHandler7 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQGraphicsSimpleTextItem x0) -> IO (CInt)
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

instance Qqtype_h (QGraphicsSimpleTextItem ()) (()) where
 qtype_h x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsSimpleTextItem_type cobj_x0

foreign import ccall "qtc_QGraphicsSimpleTextItem_type" qtc_QGraphicsSimpleTextItem_type :: Ptr (TQGraphicsSimpleTextItem a) -> IO CInt

instance Qqtype_h (QGraphicsSimpleTextItemSc a) (()) where
 qtype_h x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsSimpleTextItem_type cobj_x0

instance QsetHandler (QGraphicsSimpleTextItem ()) (QGraphicsSimpleTextItem x0 -> Int -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QGraphicsSimpleTextItem8 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QGraphicsSimpleTextItem8_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QGraphicsSimpleTextItem_setHandler8 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQGraphicsSimpleTextItem x0) -> CInt -> IO ()
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

foreign import ccall "qtc_QGraphicsSimpleTextItem_setHandler8" qtc_QGraphicsSimpleTextItem_setHandler8 :: Ptr (TQGraphicsSimpleTextItem a) -> CWString -> Ptr (Ptr (TQGraphicsSimpleTextItem x0) -> CInt -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QGraphicsSimpleTextItem8 :: (Ptr (TQGraphicsSimpleTextItem x0) -> CInt -> IO ()) -> IO (FunPtr (Ptr (TQGraphicsSimpleTextItem x0) -> CInt -> IO ()))

foreign import ccall "wrapper" wrapSetHandler_QGraphicsSimpleTextItem8_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QGraphicsSimpleTextItemSc a) (QGraphicsSimpleTextItem x0 -> Int -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QGraphicsSimpleTextItem8 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QGraphicsSimpleTextItem8_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QGraphicsSimpleTextItem_setHandler8 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQGraphicsSimpleTextItem x0) -> CInt -> IO ()
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

instance Qadvance_h (QGraphicsSimpleTextItem ()) ((Int)) where
 advance_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsSimpleTextItem_advance cobj_x0 (toCInt x1)

foreign import ccall "qtc_QGraphicsSimpleTextItem_advance" qtc_QGraphicsSimpleTextItem_advance :: Ptr (TQGraphicsSimpleTextItem a) -> CInt -> IO ()

instance Qadvance_h (QGraphicsSimpleTextItemSc a) ((Int)) where
 advance_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsSimpleTextItem_advance cobj_x0 (toCInt x1)

instance QsetHandler (QGraphicsSimpleTextItem ()) (QGraphicsSimpleTextItem x0 -> QGraphicsItem t1 -> ItemSelectionMode -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QGraphicsSimpleTextItem9 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QGraphicsSimpleTextItem9_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QGraphicsSimpleTextItem_setHandler9 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQGraphicsSimpleTextItem x0) -> Ptr (TQGraphicsItem t1) -> CLong -> IO (CBool)
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

foreign import ccall "qtc_QGraphicsSimpleTextItem_setHandler9" qtc_QGraphicsSimpleTextItem_setHandler9 :: Ptr (TQGraphicsSimpleTextItem a) -> CWString -> Ptr (Ptr (TQGraphicsSimpleTextItem x0) -> Ptr (TQGraphicsItem t1) -> CLong -> IO (CBool)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QGraphicsSimpleTextItem9 :: (Ptr (TQGraphicsSimpleTextItem x0) -> Ptr (TQGraphicsItem t1) -> CLong -> IO (CBool)) -> IO (FunPtr (Ptr (TQGraphicsSimpleTextItem x0) -> Ptr (TQGraphicsItem t1) -> CLong -> IO (CBool)))

foreign import ccall "wrapper" wrapSetHandler_QGraphicsSimpleTextItem9_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QGraphicsSimpleTextItemSc a) (QGraphicsSimpleTextItem x0 -> QGraphicsItem t1 -> ItemSelectionMode -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QGraphicsSimpleTextItem9 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QGraphicsSimpleTextItem9_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QGraphicsSimpleTextItem_setHandler9 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQGraphicsSimpleTextItem x0) -> Ptr (TQGraphicsItem t1) -> CLong -> IO (CBool)
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

instance QsetHandler (QGraphicsSimpleTextItem ()) (QGraphicsSimpleTextItem x0 -> QObject t1 -> ItemSelectionMode -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QGraphicsSimpleTextItem10 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QGraphicsSimpleTextItem10_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QGraphicsSimpleTextItem_setHandler10 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQGraphicsSimpleTextItem x0) -> Ptr (TQObject t1) -> CLong -> IO (CBool)
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

foreign import ccall "qtc_QGraphicsSimpleTextItem_setHandler10" qtc_QGraphicsSimpleTextItem_setHandler10 :: Ptr (TQGraphicsSimpleTextItem a) -> CWString -> Ptr (Ptr (TQGraphicsSimpleTextItem x0) -> Ptr (TQObject t1) -> CLong -> IO (CBool)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QGraphicsSimpleTextItem10 :: (Ptr (TQGraphicsSimpleTextItem x0) -> Ptr (TQObject t1) -> CLong -> IO (CBool)) -> IO (FunPtr (Ptr (TQGraphicsSimpleTextItem x0) -> Ptr (TQObject t1) -> CLong -> IO (CBool)))

foreign import ccall "wrapper" wrapSetHandler_QGraphicsSimpleTextItem10_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QGraphicsSimpleTextItemSc a) (QGraphicsSimpleTextItem x0 -> QObject t1 -> ItemSelectionMode -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QGraphicsSimpleTextItem10 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QGraphicsSimpleTextItem10_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QGraphicsSimpleTextItem_setHandler10 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQGraphicsSimpleTextItem x0) -> Ptr (TQObject t1) -> CLong -> IO (CBool)
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

instance QcollidesWithItem_h (QGraphicsSimpleTextItem ()) ((QGraphicsItem t1)) where
 collidesWithItem_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsSimpleTextItem_collidesWithItem cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsSimpleTextItem_collidesWithItem" qtc_QGraphicsSimpleTextItem_collidesWithItem :: Ptr (TQGraphicsSimpleTextItem a) -> Ptr (TQGraphicsItem t1) -> IO CBool

instance QcollidesWithItem_h (QGraphicsSimpleTextItemSc a) ((QGraphicsItem t1)) where
 collidesWithItem_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsSimpleTextItem_collidesWithItem cobj_x0 cobj_x1

instance QcollidesWithItem_h (QGraphicsSimpleTextItem ()) ((QGraphicsItem t1, ItemSelectionMode)) where
 collidesWithItem_h x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsSimpleTextItem_collidesWithItem1 cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QGraphicsSimpleTextItem_collidesWithItem1" qtc_QGraphicsSimpleTextItem_collidesWithItem1 :: Ptr (TQGraphicsSimpleTextItem a) -> Ptr (TQGraphicsItem t1) -> CLong -> IO CBool

instance QcollidesWithItem_h (QGraphicsSimpleTextItemSc a) ((QGraphicsItem t1, ItemSelectionMode)) where
 collidesWithItem_h x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsSimpleTextItem_collidesWithItem1 cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

instance QcollidesWithItem_h (QGraphicsSimpleTextItem ()) ((QGraphicsTextItem t1)) where
 collidesWithItem_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsSimpleTextItem_collidesWithItem_graphicstextitem cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsSimpleTextItem_collidesWithItem_graphicstextitem" qtc_QGraphicsSimpleTextItem_collidesWithItem_graphicstextitem :: Ptr (TQGraphicsSimpleTextItem a) -> Ptr (TQGraphicsTextItem t1) -> IO CBool

instance QcollidesWithItem_h (QGraphicsSimpleTextItemSc a) ((QGraphicsTextItem t1)) where
 collidesWithItem_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsSimpleTextItem_collidesWithItem_graphicstextitem cobj_x0 cobj_x1

instance QcollidesWithItem_h (QGraphicsSimpleTextItem ()) ((QGraphicsTextItem t1, ItemSelectionMode)) where
 collidesWithItem_h x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsSimpleTextItem_collidesWithItem1_graphicstextitem cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QGraphicsSimpleTextItem_collidesWithItem1_graphicstextitem" qtc_QGraphicsSimpleTextItem_collidesWithItem1_graphicstextitem :: Ptr (TQGraphicsSimpleTextItem a) -> Ptr (TQGraphicsTextItem t1) -> CLong -> IO CBool

instance QcollidesWithItem_h (QGraphicsSimpleTextItemSc a) ((QGraphicsTextItem t1, ItemSelectionMode)) where
 collidesWithItem_h x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsSimpleTextItem_collidesWithItem1_graphicstextitem cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

instance QsetHandler (QGraphicsSimpleTextItem ()) (QGraphicsSimpleTextItem x0 -> QPainterPath t1 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QGraphicsSimpleTextItem11 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QGraphicsSimpleTextItem11_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QGraphicsSimpleTextItem_setHandler11 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQGraphicsSimpleTextItem x0) -> Ptr (TQPainterPath t1) -> IO (CBool)
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

foreign import ccall "qtc_QGraphicsSimpleTextItem_setHandler11" qtc_QGraphicsSimpleTextItem_setHandler11 :: Ptr (TQGraphicsSimpleTextItem a) -> CWString -> Ptr (Ptr (TQGraphicsSimpleTextItem x0) -> Ptr (TQPainterPath t1) -> IO (CBool)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QGraphicsSimpleTextItem11 :: (Ptr (TQGraphicsSimpleTextItem x0) -> Ptr (TQPainterPath t1) -> IO (CBool)) -> IO (FunPtr (Ptr (TQGraphicsSimpleTextItem x0) -> Ptr (TQPainterPath t1) -> IO (CBool)))

foreign import ccall "wrapper" wrapSetHandler_QGraphicsSimpleTextItem11_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QGraphicsSimpleTextItemSc a) (QGraphicsSimpleTextItem x0 -> QPainterPath t1 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QGraphicsSimpleTextItem11 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QGraphicsSimpleTextItem11_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QGraphicsSimpleTextItem_setHandler11 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQGraphicsSimpleTextItem x0) -> Ptr (TQPainterPath t1) -> IO (CBool)
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

instance QsetHandler (QGraphicsSimpleTextItem ()) (QGraphicsSimpleTextItem x0 -> QPainterPath t1 -> ItemSelectionMode -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QGraphicsSimpleTextItem12 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QGraphicsSimpleTextItem12_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QGraphicsSimpleTextItem_setHandler12 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQGraphicsSimpleTextItem x0) -> Ptr (TQPainterPath t1) -> CLong -> IO (CBool)
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

foreign import ccall "qtc_QGraphicsSimpleTextItem_setHandler12" qtc_QGraphicsSimpleTextItem_setHandler12 :: Ptr (TQGraphicsSimpleTextItem a) -> CWString -> Ptr (Ptr (TQGraphicsSimpleTextItem x0) -> Ptr (TQPainterPath t1) -> CLong -> IO (CBool)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QGraphicsSimpleTextItem12 :: (Ptr (TQGraphicsSimpleTextItem x0) -> Ptr (TQPainterPath t1) -> CLong -> IO (CBool)) -> IO (FunPtr (Ptr (TQGraphicsSimpleTextItem x0) -> Ptr (TQPainterPath t1) -> CLong -> IO (CBool)))

foreign import ccall "wrapper" wrapSetHandler_QGraphicsSimpleTextItem12_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QGraphicsSimpleTextItemSc a) (QGraphicsSimpleTextItem x0 -> QPainterPath t1 -> ItemSelectionMode -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QGraphicsSimpleTextItem12 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QGraphicsSimpleTextItem12_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QGraphicsSimpleTextItem_setHandler12 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQGraphicsSimpleTextItem x0) -> Ptr (TQPainterPath t1) -> CLong -> IO (CBool)
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

instance QcollidesWithPath_h (QGraphicsSimpleTextItem ()) ((QPainterPath t1)) where
 collidesWithPath_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsSimpleTextItem_collidesWithPath cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsSimpleTextItem_collidesWithPath" qtc_QGraphicsSimpleTextItem_collidesWithPath :: Ptr (TQGraphicsSimpleTextItem a) -> Ptr (TQPainterPath t1) -> IO CBool

instance QcollidesWithPath_h (QGraphicsSimpleTextItemSc a) ((QPainterPath t1)) where
 collidesWithPath_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsSimpleTextItem_collidesWithPath cobj_x0 cobj_x1

instance QcollidesWithPath_h (QGraphicsSimpleTextItem ()) ((QPainterPath t1, ItemSelectionMode)) where
 collidesWithPath_h x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsSimpleTextItem_collidesWithPath1 cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QGraphicsSimpleTextItem_collidesWithPath1" qtc_QGraphicsSimpleTextItem_collidesWithPath1 :: Ptr (TQGraphicsSimpleTextItem a) -> Ptr (TQPainterPath t1) -> CLong -> IO CBool

instance QcollidesWithPath_h (QGraphicsSimpleTextItemSc a) ((QPainterPath t1, ItemSelectionMode)) where
 collidesWithPath_h x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsSimpleTextItem_collidesWithPath1 cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

instance QsetHandler (QGraphicsSimpleTextItem ()) (QGraphicsSimpleTextItem x0 -> QEvent t1 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QGraphicsSimpleTextItem13 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QGraphicsSimpleTextItem13_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QGraphicsSimpleTextItem_setHandler13 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQGraphicsSimpleTextItem x0) -> Ptr (TQEvent t1) -> IO ()
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

foreign import ccall "qtc_QGraphicsSimpleTextItem_setHandler13" qtc_QGraphicsSimpleTextItem_setHandler13 :: Ptr (TQGraphicsSimpleTextItem a) -> CWString -> Ptr (Ptr (TQGraphicsSimpleTextItem x0) -> Ptr (TQEvent t1) -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QGraphicsSimpleTextItem13 :: (Ptr (TQGraphicsSimpleTextItem x0) -> Ptr (TQEvent t1) -> IO ()) -> IO (FunPtr (Ptr (TQGraphicsSimpleTextItem x0) -> Ptr (TQEvent t1) -> IO ()))

foreign import ccall "wrapper" wrapSetHandler_QGraphicsSimpleTextItem13_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QGraphicsSimpleTextItemSc a) (QGraphicsSimpleTextItem x0 -> QEvent t1 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QGraphicsSimpleTextItem13 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QGraphicsSimpleTextItem13_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QGraphicsSimpleTextItem_setHandler13 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQGraphicsSimpleTextItem x0) -> Ptr (TQEvent t1) -> IO ()
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

instance QcontextMenuEvent_h (QGraphicsSimpleTextItem ()) ((QGraphicsSceneContextMenuEvent t1)) where
 contextMenuEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsSimpleTextItem_contextMenuEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsSimpleTextItem_contextMenuEvent" qtc_QGraphicsSimpleTextItem_contextMenuEvent :: Ptr (TQGraphicsSimpleTextItem a) -> Ptr (TQGraphicsSceneContextMenuEvent t1) -> IO ()

instance QcontextMenuEvent_h (QGraphicsSimpleTextItemSc a) ((QGraphicsSceneContextMenuEvent t1)) where
 contextMenuEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsSimpleTextItem_contextMenuEvent cobj_x0 cobj_x1

instance QdragEnterEvent_h (QGraphicsSimpleTextItem ()) ((QGraphicsSceneDragDropEvent t1)) where
 dragEnterEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsSimpleTextItem_dragEnterEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsSimpleTextItem_dragEnterEvent" qtc_QGraphicsSimpleTextItem_dragEnterEvent :: Ptr (TQGraphicsSimpleTextItem a) -> Ptr (TQGraphicsSceneDragDropEvent t1) -> IO ()

instance QdragEnterEvent_h (QGraphicsSimpleTextItemSc a) ((QGraphicsSceneDragDropEvent t1)) where
 dragEnterEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsSimpleTextItem_dragEnterEvent cobj_x0 cobj_x1

instance QdragLeaveEvent_h (QGraphicsSimpleTextItem ()) ((QGraphicsSceneDragDropEvent t1)) where
 dragLeaveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsSimpleTextItem_dragLeaveEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsSimpleTextItem_dragLeaveEvent" qtc_QGraphicsSimpleTextItem_dragLeaveEvent :: Ptr (TQGraphicsSimpleTextItem a) -> Ptr (TQGraphicsSceneDragDropEvent t1) -> IO ()

instance QdragLeaveEvent_h (QGraphicsSimpleTextItemSc a) ((QGraphicsSceneDragDropEvent t1)) where
 dragLeaveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsSimpleTextItem_dragLeaveEvent cobj_x0 cobj_x1

instance QdragMoveEvent_h (QGraphicsSimpleTextItem ()) ((QGraphicsSceneDragDropEvent t1)) where
 dragMoveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsSimpleTextItem_dragMoveEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsSimpleTextItem_dragMoveEvent" qtc_QGraphicsSimpleTextItem_dragMoveEvent :: Ptr (TQGraphicsSimpleTextItem a) -> Ptr (TQGraphicsSceneDragDropEvent t1) -> IO ()

instance QdragMoveEvent_h (QGraphicsSimpleTextItemSc a) ((QGraphicsSceneDragDropEvent t1)) where
 dragMoveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsSimpleTextItem_dragMoveEvent cobj_x0 cobj_x1

instance QdropEvent_h (QGraphicsSimpleTextItem ()) ((QGraphicsSceneDragDropEvent t1)) where
 dropEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsSimpleTextItem_dropEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsSimpleTextItem_dropEvent" qtc_QGraphicsSimpleTextItem_dropEvent :: Ptr (TQGraphicsSimpleTextItem a) -> Ptr (TQGraphicsSceneDragDropEvent t1) -> IO ()

instance QdropEvent_h (QGraphicsSimpleTextItemSc a) ((QGraphicsSceneDragDropEvent t1)) where
 dropEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsSimpleTextItem_dropEvent cobj_x0 cobj_x1

instance QfocusInEvent_h (QGraphicsSimpleTextItem ()) ((QFocusEvent t1)) where
 focusInEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsSimpleTextItem_focusInEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsSimpleTextItem_focusInEvent" qtc_QGraphicsSimpleTextItem_focusInEvent :: Ptr (TQGraphicsSimpleTextItem a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusInEvent_h (QGraphicsSimpleTextItemSc a) ((QFocusEvent t1)) where
 focusInEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsSimpleTextItem_focusInEvent cobj_x0 cobj_x1

instance QfocusOutEvent_h (QGraphicsSimpleTextItem ()) ((QFocusEvent t1)) where
 focusOutEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsSimpleTextItem_focusOutEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsSimpleTextItem_focusOutEvent" qtc_QGraphicsSimpleTextItem_focusOutEvent :: Ptr (TQGraphicsSimpleTextItem a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusOutEvent_h (QGraphicsSimpleTextItemSc a) ((QFocusEvent t1)) where
 focusOutEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsSimpleTextItem_focusOutEvent cobj_x0 cobj_x1

instance QhoverEnterEvent_h (QGraphicsSimpleTextItem ()) ((QGraphicsSceneHoverEvent t1)) where
 hoverEnterEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsSimpleTextItem_hoverEnterEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsSimpleTextItem_hoverEnterEvent" qtc_QGraphicsSimpleTextItem_hoverEnterEvent :: Ptr (TQGraphicsSimpleTextItem a) -> Ptr (TQGraphicsSceneHoverEvent t1) -> IO ()

instance QhoverEnterEvent_h (QGraphicsSimpleTextItemSc a) ((QGraphicsSceneHoverEvent t1)) where
 hoverEnterEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsSimpleTextItem_hoverEnterEvent cobj_x0 cobj_x1

instance QhoverLeaveEvent_h (QGraphicsSimpleTextItem ()) ((QGraphicsSceneHoverEvent t1)) where
 hoverLeaveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsSimpleTextItem_hoverLeaveEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsSimpleTextItem_hoverLeaveEvent" qtc_QGraphicsSimpleTextItem_hoverLeaveEvent :: Ptr (TQGraphicsSimpleTextItem a) -> Ptr (TQGraphicsSceneHoverEvent t1) -> IO ()

instance QhoverLeaveEvent_h (QGraphicsSimpleTextItemSc a) ((QGraphicsSceneHoverEvent t1)) where
 hoverLeaveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsSimpleTextItem_hoverLeaveEvent cobj_x0 cobj_x1

instance QhoverMoveEvent_h (QGraphicsSimpleTextItem ()) ((QGraphicsSceneHoverEvent t1)) where
 hoverMoveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsSimpleTextItem_hoverMoveEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsSimpleTextItem_hoverMoveEvent" qtc_QGraphicsSimpleTextItem_hoverMoveEvent :: Ptr (TQGraphicsSimpleTextItem a) -> Ptr (TQGraphicsSceneHoverEvent t1) -> IO ()

instance QhoverMoveEvent_h (QGraphicsSimpleTextItemSc a) ((QGraphicsSceneHoverEvent t1)) where
 hoverMoveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsSimpleTextItem_hoverMoveEvent cobj_x0 cobj_x1

instance QinputMethodEvent_h (QGraphicsSimpleTextItem ()) ((QInputMethodEvent t1)) where
 inputMethodEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsSimpleTextItem_inputMethodEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsSimpleTextItem_inputMethodEvent" qtc_QGraphicsSimpleTextItem_inputMethodEvent :: Ptr (TQGraphicsSimpleTextItem a) -> Ptr (TQInputMethodEvent t1) -> IO ()

instance QinputMethodEvent_h (QGraphicsSimpleTextItemSc a) ((QInputMethodEvent t1)) where
 inputMethodEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsSimpleTextItem_inputMethodEvent cobj_x0 cobj_x1

instance QsetHandler (QGraphicsSimpleTextItem ()) (QGraphicsSimpleTextItem x0 -> InputMethodQuery -> IO (QVariant t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QGraphicsSimpleTextItem14 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QGraphicsSimpleTextItem14_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QGraphicsSimpleTextItem_setHandler14 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQGraphicsSimpleTextItem x0) -> CLong -> IO (Ptr (TQVariant t0))
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

foreign import ccall "qtc_QGraphicsSimpleTextItem_setHandler14" qtc_QGraphicsSimpleTextItem_setHandler14 :: Ptr (TQGraphicsSimpleTextItem a) -> CWString -> Ptr (Ptr (TQGraphicsSimpleTextItem x0) -> CLong -> IO (Ptr (TQVariant t0))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QGraphicsSimpleTextItem14 :: (Ptr (TQGraphicsSimpleTextItem x0) -> CLong -> IO (Ptr (TQVariant t0))) -> IO (FunPtr (Ptr (TQGraphicsSimpleTextItem x0) -> CLong -> IO (Ptr (TQVariant t0))))

foreign import ccall "wrapper" wrapSetHandler_QGraphicsSimpleTextItem14_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QGraphicsSimpleTextItemSc a) (QGraphicsSimpleTextItem x0 -> InputMethodQuery -> IO (QVariant t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QGraphicsSimpleTextItem14 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QGraphicsSimpleTextItem14_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QGraphicsSimpleTextItem_setHandler14 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQGraphicsSimpleTextItem x0) -> CLong -> IO (Ptr (TQVariant t0))
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

instance QinputMethodQuery_h (QGraphicsSimpleTextItem ()) ((InputMethodQuery)) where
 inputMethodQuery_h x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsSimpleTextItem_inputMethodQuery cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QGraphicsSimpleTextItem_inputMethodQuery" qtc_QGraphicsSimpleTextItem_inputMethodQuery :: Ptr (TQGraphicsSimpleTextItem a) -> CLong -> IO (Ptr (TQVariant ()))

instance QinputMethodQuery_h (QGraphicsSimpleTextItemSc a) ((InputMethodQuery)) where
 inputMethodQuery_h x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsSimpleTextItem_inputMethodQuery cobj_x0 (toCLong $ qEnum_toInt x1)

instance QsetHandler (QGraphicsSimpleTextItem ()) (QGraphicsSimpleTextItem x0 -> GraphicsItemChange -> QVariant t2 -> IO (QVariant t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QGraphicsSimpleTextItem15 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QGraphicsSimpleTextItem15_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QGraphicsSimpleTextItem_setHandler15 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQGraphicsSimpleTextItem x0) -> CLong -> Ptr (TQVariant t2) -> IO (Ptr (TQVariant t0))
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

foreign import ccall "qtc_QGraphicsSimpleTextItem_setHandler15" qtc_QGraphicsSimpleTextItem_setHandler15 :: Ptr (TQGraphicsSimpleTextItem a) -> CWString -> Ptr (Ptr (TQGraphicsSimpleTextItem x0) -> CLong -> Ptr (TQVariant t2) -> IO (Ptr (TQVariant t0))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QGraphicsSimpleTextItem15 :: (Ptr (TQGraphicsSimpleTextItem x0) -> CLong -> Ptr (TQVariant t2) -> IO (Ptr (TQVariant t0))) -> IO (FunPtr (Ptr (TQGraphicsSimpleTextItem x0) -> CLong -> Ptr (TQVariant t2) -> IO (Ptr (TQVariant t0))))

foreign import ccall "wrapper" wrapSetHandler_QGraphicsSimpleTextItem15_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QGraphicsSimpleTextItemSc a) (QGraphicsSimpleTextItem x0 -> GraphicsItemChange -> QVariant t2 -> IO (QVariant t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QGraphicsSimpleTextItem15 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QGraphicsSimpleTextItem15_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QGraphicsSimpleTextItem_setHandler15 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQGraphicsSimpleTextItem x0) -> CLong -> Ptr (TQVariant t2) -> IO (Ptr (TQVariant t0))
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

instance QitemChange_h (QGraphicsSimpleTextItem ()) ((GraphicsItemChange, QVariant t2)) where
 itemChange_h x0 (x1, x2)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsSimpleTextItem_itemChange cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2

foreign import ccall "qtc_QGraphicsSimpleTextItem_itemChange" qtc_QGraphicsSimpleTextItem_itemChange :: Ptr (TQGraphicsSimpleTextItem a) -> CLong -> Ptr (TQVariant t2) -> IO (Ptr (TQVariant ()))

instance QitemChange_h (QGraphicsSimpleTextItemSc a) ((GraphicsItemChange, QVariant t2)) where
 itemChange_h x0 (x1, x2)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsSimpleTextItem_itemChange cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2

instance QkeyPressEvent_h (QGraphicsSimpleTextItem ()) ((QKeyEvent t1)) where
 keyPressEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsSimpleTextItem_keyPressEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsSimpleTextItem_keyPressEvent" qtc_QGraphicsSimpleTextItem_keyPressEvent :: Ptr (TQGraphicsSimpleTextItem a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyPressEvent_h (QGraphicsSimpleTextItemSc a) ((QKeyEvent t1)) where
 keyPressEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsSimpleTextItem_keyPressEvent cobj_x0 cobj_x1

instance QkeyReleaseEvent_h (QGraphicsSimpleTextItem ()) ((QKeyEvent t1)) where
 keyReleaseEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsSimpleTextItem_keyReleaseEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsSimpleTextItem_keyReleaseEvent" qtc_QGraphicsSimpleTextItem_keyReleaseEvent :: Ptr (TQGraphicsSimpleTextItem a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyReleaseEvent_h (QGraphicsSimpleTextItemSc a) ((QKeyEvent t1)) where
 keyReleaseEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsSimpleTextItem_keyReleaseEvent cobj_x0 cobj_x1

instance QmouseDoubleClickEvent_h (QGraphicsSimpleTextItem ()) ((QGraphicsSceneMouseEvent t1)) where
 mouseDoubleClickEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsSimpleTextItem_mouseDoubleClickEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsSimpleTextItem_mouseDoubleClickEvent" qtc_QGraphicsSimpleTextItem_mouseDoubleClickEvent :: Ptr (TQGraphicsSimpleTextItem a) -> Ptr (TQGraphicsSceneMouseEvent t1) -> IO ()

instance QmouseDoubleClickEvent_h (QGraphicsSimpleTextItemSc a) ((QGraphicsSceneMouseEvent t1)) where
 mouseDoubleClickEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsSimpleTextItem_mouseDoubleClickEvent cobj_x0 cobj_x1

instance QmouseMoveEvent_h (QGraphicsSimpleTextItem ()) ((QGraphicsSceneMouseEvent t1)) where
 mouseMoveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsSimpleTextItem_mouseMoveEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsSimpleTextItem_mouseMoveEvent" qtc_QGraphicsSimpleTextItem_mouseMoveEvent :: Ptr (TQGraphicsSimpleTextItem a) -> Ptr (TQGraphicsSceneMouseEvent t1) -> IO ()

instance QmouseMoveEvent_h (QGraphicsSimpleTextItemSc a) ((QGraphicsSceneMouseEvent t1)) where
 mouseMoveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsSimpleTextItem_mouseMoveEvent cobj_x0 cobj_x1

instance QmousePressEvent_h (QGraphicsSimpleTextItem ()) ((QGraphicsSceneMouseEvent t1)) where
 mousePressEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsSimpleTextItem_mousePressEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsSimpleTextItem_mousePressEvent" qtc_QGraphicsSimpleTextItem_mousePressEvent :: Ptr (TQGraphicsSimpleTextItem a) -> Ptr (TQGraphicsSceneMouseEvent t1) -> IO ()

instance QmousePressEvent_h (QGraphicsSimpleTextItemSc a) ((QGraphicsSceneMouseEvent t1)) where
 mousePressEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsSimpleTextItem_mousePressEvent cobj_x0 cobj_x1

instance QmouseReleaseEvent_h (QGraphicsSimpleTextItem ()) ((QGraphicsSceneMouseEvent t1)) where
 mouseReleaseEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsSimpleTextItem_mouseReleaseEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsSimpleTextItem_mouseReleaseEvent" qtc_QGraphicsSimpleTextItem_mouseReleaseEvent :: Ptr (TQGraphicsSimpleTextItem a) -> Ptr (TQGraphicsSceneMouseEvent t1) -> IO ()

instance QmouseReleaseEvent_h (QGraphicsSimpleTextItemSc a) ((QGraphicsSceneMouseEvent t1)) where
 mouseReleaseEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsSimpleTextItem_mouseReleaseEvent cobj_x0 cobj_x1

instance QsetHandler (QGraphicsSimpleTextItem ()) (QGraphicsSimpleTextItem x0 -> QEvent t1 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QGraphicsSimpleTextItem16 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QGraphicsSimpleTextItem16_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QGraphicsSimpleTextItem_setHandler16 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQGraphicsSimpleTextItem x0) -> Ptr (TQEvent t1) -> IO (CBool)
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

foreign import ccall "qtc_QGraphicsSimpleTextItem_setHandler16" qtc_QGraphicsSimpleTextItem_setHandler16 :: Ptr (TQGraphicsSimpleTextItem a) -> CWString -> Ptr (Ptr (TQGraphicsSimpleTextItem x0) -> Ptr (TQEvent t1) -> IO (CBool)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QGraphicsSimpleTextItem16 :: (Ptr (TQGraphicsSimpleTextItem x0) -> Ptr (TQEvent t1) -> IO (CBool)) -> IO (FunPtr (Ptr (TQGraphicsSimpleTextItem x0) -> Ptr (TQEvent t1) -> IO (CBool)))

foreign import ccall "wrapper" wrapSetHandler_QGraphicsSimpleTextItem16_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QGraphicsSimpleTextItemSc a) (QGraphicsSimpleTextItem x0 -> QEvent t1 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QGraphicsSimpleTextItem16 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QGraphicsSimpleTextItem16_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QGraphicsSimpleTextItem_setHandler16 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQGraphicsSimpleTextItem x0) -> Ptr (TQEvent t1) -> IO (CBool)
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

instance QsceneEvent_h (QGraphicsSimpleTextItem ()) ((QEvent t1)) where
 sceneEvent_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsSimpleTextItem_sceneEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsSimpleTextItem_sceneEvent" qtc_QGraphicsSimpleTextItem_sceneEvent :: Ptr (TQGraphicsSimpleTextItem a) -> Ptr (TQEvent t1) -> IO CBool

instance QsceneEvent_h (QGraphicsSimpleTextItemSc a) ((QEvent t1)) where
 sceneEvent_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsSimpleTextItem_sceneEvent cobj_x0 cobj_x1

instance QsetHandler (QGraphicsSimpleTextItem ()) (QGraphicsSimpleTextItem x0 -> QGraphicsItem t1 -> QEvent t2 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QGraphicsSimpleTextItem17 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QGraphicsSimpleTextItem17_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QGraphicsSimpleTextItem_setHandler17 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQGraphicsSimpleTextItem x0) -> Ptr (TQGraphicsItem t1) -> Ptr (TQEvent t2) -> IO (CBool)
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

foreign import ccall "qtc_QGraphicsSimpleTextItem_setHandler17" qtc_QGraphicsSimpleTextItem_setHandler17 :: Ptr (TQGraphicsSimpleTextItem a) -> CWString -> Ptr (Ptr (TQGraphicsSimpleTextItem x0) -> Ptr (TQGraphicsItem t1) -> Ptr (TQEvent t2) -> IO (CBool)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QGraphicsSimpleTextItem17 :: (Ptr (TQGraphicsSimpleTextItem x0) -> Ptr (TQGraphicsItem t1) -> Ptr (TQEvent t2) -> IO (CBool)) -> IO (FunPtr (Ptr (TQGraphicsSimpleTextItem x0) -> Ptr (TQGraphicsItem t1) -> Ptr (TQEvent t2) -> IO (CBool)))

foreign import ccall "wrapper" wrapSetHandler_QGraphicsSimpleTextItem17_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QGraphicsSimpleTextItemSc a) (QGraphicsSimpleTextItem x0 -> QGraphicsItem t1 -> QEvent t2 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QGraphicsSimpleTextItem17 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QGraphicsSimpleTextItem17_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QGraphicsSimpleTextItem_setHandler17 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQGraphicsSimpleTextItem x0) -> Ptr (TQGraphicsItem t1) -> Ptr (TQEvent t2) -> IO (CBool)
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

instance QsetHandler (QGraphicsSimpleTextItem ()) (QGraphicsSimpleTextItem x0 -> QObject t1 -> QEvent t2 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QGraphicsSimpleTextItem18 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QGraphicsSimpleTextItem18_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QGraphicsSimpleTextItem_setHandler18 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQGraphicsSimpleTextItem x0) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO (CBool)
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

foreign import ccall "qtc_QGraphicsSimpleTextItem_setHandler18" qtc_QGraphicsSimpleTextItem_setHandler18 :: Ptr (TQGraphicsSimpleTextItem a) -> CWString -> Ptr (Ptr (TQGraphicsSimpleTextItem x0) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO (CBool)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QGraphicsSimpleTextItem18 :: (Ptr (TQGraphicsSimpleTextItem x0) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO (CBool)) -> IO (FunPtr (Ptr (TQGraphicsSimpleTextItem x0) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO (CBool)))

foreign import ccall "wrapper" wrapSetHandler_QGraphicsSimpleTextItem18_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QGraphicsSimpleTextItemSc a) (QGraphicsSimpleTextItem x0 -> QObject t1 -> QEvent t2 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QGraphicsSimpleTextItem18 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QGraphicsSimpleTextItem18_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QGraphicsSimpleTextItem_setHandler18 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQGraphicsSimpleTextItem x0) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO (CBool)
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

instance QsceneEventFilter_h (QGraphicsSimpleTextItem ()) ((QGraphicsItem t1, QEvent t2)) where
 sceneEventFilter_h x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsSimpleTextItem_sceneEventFilter cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QGraphicsSimpleTextItem_sceneEventFilter" qtc_QGraphicsSimpleTextItem_sceneEventFilter :: Ptr (TQGraphicsSimpleTextItem a) -> Ptr (TQGraphicsItem t1) -> Ptr (TQEvent t2) -> IO CBool

instance QsceneEventFilter_h (QGraphicsSimpleTextItemSc a) ((QGraphicsItem t1, QEvent t2)) where
 sceneEventFilter_h x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsSimpleTextItem_sceneEventFilter cobj_x0 cobj_x1 cobj_x2

instance QsceneEventFilter_h (QGraphicsSimpleTextItem ()) ((QGraphicsTextItem t1, QEvent t2)) where
 sceneEventFilter_h x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsSimpleTextItem_sceneEventFilter_graphicstextitem cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QGraphicsSimpleTextItem_sceneEventFilter_graphicstextitem" qtc_QGraphicsSimpleTextItem_sceneEventFilter_graphicstextitem :: Ptr (TQGraphicsSimpleTextItem a) -> Ptr (TQGraphicsTextItem t1) -> Ptr (TQEvent t2) -> IO CBool

instance QsceneEventFilter_h (QGraphicsSimpleTextItemSc a) ((QGraphicsTextItem t1, QEvent t2)) where
 sceneEventFilter_h x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsSimpleTextItem_sceneEventFilter_graphicstextitem cobj_x0 cobj_x1 cobj_x2

instance QwheelEvent_h (QGraphicsSimpleTextItem ()) ((QGraphicsSceneWheelEvent t1)) where
 wheelEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsSimpleTextItem_wheelEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsSimpleTextItem_wheelEvent" qtc_QGraphicsSimpleTextItem_wheelEvent :: Ptr (TQGraphicsSimpleTextItem a) -> Ptr (TQGraphicsSceneWheelEvent t1) -> IO ()

instance QwheelEvent_h (QGraphicsSimpleTextItemSc a) ((QGraphicsSceneWheelEvent t1)) where
 wheelEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsSimpleTextItem_wheelEvent cobj_x0 cobj_x1

