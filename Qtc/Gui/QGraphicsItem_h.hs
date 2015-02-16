{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QGraphicsItem_h.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:20
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QGraphicsItem_h where

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

instance QunSetUserMethod (QGraphicsItem ()) where
 unSetUserMethod qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QGraphicsItem_unSetUserMethod cobj_qobj (toCInt 0) (toCInt evid)

foreign import ccall "qtc_QGraphicsItem_unSetUserMethod" qtc_QGraphicsItem_unSetUserMethod :: Ptr (TQGraphicsItem a) -> CInt -> CInt -> IO (CBool)

instance QunSetUserMethod (QGraphicsItemSc a) where
 unSetUserMethod qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QGraphicsItem_unSetUserMethod cobj_qobj (toCInt 0) (toCInt evid)

instance QunSetUserMethodVariant (QGraphicsItem ()) where
 unSetUserMethodVariant qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QGraphicsItem_unSetUserMethod cobj_qobj (toCInt 1) (toCInt evid)

instance QunSetUserMethodVariant (QGraphicsItemSc a) where
 unSetUserMethodVariant qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QGraphicsItem_unSetUserMethod cobj_qobj (toCInt 1) (toCInt evid)

instance QunSetUserMethodVariantList (QGraphicsItem ()) where
 unSetUserMethodVariantList qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QGraphicsItem_unSetUserMethod cobj_qobj (toCInt 2) (toCInt evid)

instance QunSetUserMethodVariantList (QGraphicsItemSc a) where
 unSetUserMethodVariantList qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QGraphicsItem_unSetUserMethod cobj_qobj (toCInt 2) (toCInt evid)

instance QsetUserMethod (QGraphicsItem ()) (QGraphicsItem x0 -> IO ()) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethod_QGraphicsItem setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethod_QGraphicsItem_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QGraphicsItem_setUserMethod cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQGraphicsItem x0) -> IO ()
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

foreign import ccall "qtc_QGraphicsItem_setUserMethod" qtc_QGraphicsItem_setUserMethod :: Ptr (TQGraphicsItem a) -> CInt -> Ptr (Ptr (TQGraphicsItem x0) -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetUserMethod_QGraphicsItem :: (Ptr (TQGraphicsItem x0) -> IO ()) -> IO (FunPtr (Ptr (TQGraphicsItem x0) -> IO ()))

foreign import ccall "wrapper" wrapSetUserMethod_QGraphicsItem_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetUserMethod (QGraphicsItemSc a) (QGraphicsItem x0 -> IO ()) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethod_QGraphicsItem setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethod_QGraphicsItem_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QGraphicsItem_setUserMethod cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQGraphicsItem x0) -> IO ()
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

instance QsetUserMethod (QGraphicsItem ()) (QGraphicsItem x0 -> QVariant () -> IO (QVariant ())) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethodVariant_QGraphicsItem setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethodVariant_QGraphicsItem_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QGraphicsItem_setUserMethodVariant cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQGraphicsItem x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))
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

foreign import ccall "qtc_QGraphicsItem_setUserMethodVariant" qtc_QGraphicsItem_setUserMethodVariant :: Ptr (TQGraphicsItem a) -> CInt -> Ptr (Ptr (TQGraphicsItem x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetUserMethodVariant_QGraphicsItem :: (Ptr (TQGraphicsItem x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))) -> IO (FunPtr (Ptr (TQGraphicsItem x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))))

foreign import ccall "wrapper" wrapSetUserMethodVariant_QGraphicsItem_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetUserMethod (QGraphicsItemSc a) (QGraphicsItem x0 -> QVariant () -> IO (QVariant ())) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethodVariant_QGraphicsItem setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethodVariant_QGraphicsItem_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QGraphicsItem_setUserMethodVariant cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQGraphicsItem x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))
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

instance QunSetHandler (QGraphicsItem ()) where 
 unSetHandler qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withCWString evid $ \cstr_evid ->
    qtc_QGraphicsItem_unSetHandler cobj_qobj cstr_evid

foreign import ccall "qtc_QGraphicsItem_unSetHandler" qtc_QGraphicsItem_unSetHandler :: Ptr (TQGraphicsItem a) -> CWString -> IO (CBool)

instance QunSetHandler (QGraphicsItemSc a) where 
 unSetHandler qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withCWString evid $ \cstr_evid ->
    qtc_QGraphicsItem_unSetHandler cobj_qobj cstr_evid

instance QsetHandler (QGraphicsItem ()) (QGraphicsItem x0 -> Int -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QGraphicsItem1 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QGraphicsItem1_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QGraphicsItem_setHandler1 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQGraphicsItem x0) -> CInt -> IO ()
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

foreign import ccall "qtc_QGraphicsItem_setHandler1" qtc_QGraphicsItem_setHandler1 :: Ptr (TQGraphicsItem a) -> CWString -> Ptr (Ptr (TQGraphicsItem x0) -> CInt -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QGraphicsItem1 :: (Ptr (TQGraphicsItem x0) -> CInt -> IO ()) -> IO (FunPtr (Ptr (TQGraphicsItem x0) -> CInt -> IO ()))

foreign import ccall "wrapper" wrapSetHandler_QGraphicsItem1_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QGraphicsItemSc a) (QGraphicsItem x0 -> Int -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QGraphicsItem1 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QGraphicsItem1_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QGraphicsItem_setHandler1 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQGraphicsItem x0) -> CInt -> IO ()
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

instance Qadvance_h (QGraphicsItem ()) ((Int)) where
 advance_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItem_advance cobj_x0 (toCInt x1)

foreign import ccall "qtc_QGraphicsItem_advance" qtc_QGraphicsItem_advance :: Ptr (TQGraphicsItem a) -> CInt -> IO ()

instance Qadvance_h (QGraphicsItemSc a) ((Int)) where
 advance_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItem_advance cobj_x0 (toCInt x1)

instance QsetHandler (QGraphicsItem ()) (QGraphicsItem x0 -> IO (QRectF t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QGraphicsItem2 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QGraphicsItem2_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QGraphicsItem_setHandler2 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQGraphicsItem x0) -> IO (Ptr (TQRectF t0))
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

foreign import ccall "qtc_QGraphicsItem_setHandler2" qtc_QGraphicsItem_setHandler2 :: Ptr (TQGraphicsItem a) -> CWString -> Ptr (Ptr (TQGraphicsItem x0) -> IO (Ptr (TQRectF t0))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QGraphicsItem2 :: (Ptr (TQGraphicsItem x0) -> IO (Ptr (TQRectF t0))) -> IO (FunPtr (Ptr (TQGraphicsItem x0) -> IO (Ptr (TQRectF t0))))

foreign import ccall "wrapper" wrapSetHandler_QGraphicsItem2_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QGraphicsItemSc a) (QGraphicsItem x0 -> IO (QRectF t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QGraphicsItem2 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QGraphicsItem2_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QGraphicsItem_setHandler2 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQGraphicsItem x0) -> IO (Ptr (TQRectF t0))
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

instance QqqboundingRect_h (QGraphicsItem ()) (()) where
 qqboundingRect_h x0 ()
  = withQRectFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItem_boundingRect cobj_x0

foreign import ccall "qtc_QGraphicsItem_boundingRect" qtc_QGraphicsItem_boundingRect :: Ptr (TQGraphicsItem a) -> IO (Ptr (TQRectF ()))

instance QqqboundingRect_h (QGraphicsItemSc a) (()) where
 qqboundingRect_h x0 ()
  = withQRectFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItem_boundingRect cobj_x0

instance QqboundingRect_h (QGraphicsItem ()) (()) where
 qboundingRect_h x0 ()
  = withRectFResult $ \crectf_ret_x crectf_ret_y crectf_ret_w crectf_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItem_boundingRect_qth cobj_x0 crectf_ret_x crectf_ret_y crectf_ret_w crectf_ret_h

foreign import ccall "qtc_QGraphicsItem_boundingRect_qth" qtc_QGraphicsItem_boundingRect_qth :: Ptr (TQGraphicsItem a) -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> IO ()

instance QqboundingRect_h (QGraphicsItemSc a) (()) where
 qboundingRect_h x0 ()
  = withRectFResult $ \crectf_ret_x crectf_ret_y crectf_ret_w crectf_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItem_boundingRect_qth cobj_x0 crectf_ret_x crectf_ret_y crectf_ret_w crectf_ret_h

instance QsetHandler (QGraphicsItem ()) (QGraphicsItem x0 -> QGraphicsItem t1 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QGraphicsItem3 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QGraphicsItem3_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QGraphicsItem_setHandler3 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQGraphicsItem x0) -> Ptr (TQGraphicsItem t1) -> IO (CBool)
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

foreign import ccall "qtc_QGraphicsItem_setHandler3" qtc_QGraphicsItem_setHandler3 :: Ptr (TQGraphicsItem a) -> CWString -> Ptr (Ptr (TQGraphicsItem x0) -> Ptr (TQGraphicsItem t1) -> IO (CBool)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QGraphicsItem3 :: (Ptr (TQGraphicsItem x0) -> Ptr (TQGraphicsItem t1) -> IO (CBool)) -> IO (FunPtr (Ptr (TQGraphicsItem x0) -> Ptr (TQGraphicsItem t1) -> IO (CBool)))

foreign import ccall "wrapper" wrapSetHandler_QGraphicsItem3_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QGraphicsItemSc a) (QGraphicsItem x0 -> QGraphicsItem t1 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QGraphicsItem3 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QGraphicsItem3_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QGraphicsItem_setHandler3 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQGraphicsItem x0) -> Ptr (TQGraphicsItem t1) -> IO (CBool)
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

instance QsetHandler (QGraphicsItem ()) (QGraphicsItem x0 -> QObject t1 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QGraphicsItem4 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QGraphicsItem4_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QGraphicsItem_setHandler4 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQGraphicsItem x0) -> Ptr (TQObject t1) -> IO (CBool)
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

foreign import ccall "qtc_QGraphicsItem_setHandler4" qtc_QGraphicsItem_setHandler4 :: Ptr (TQGraphicsItem a) -> CWString -> Ptr (Ptr (TQGraphicsItem x0) -> Ptr (TQObject t1) -> IO (CBool)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QGraphicsItem4 :: (Ptr (TQGraphicsItem x0) -> Ptr (TQObject t1) -> IO (CBool)) -> IO (FunPtr (Ptr (TQGraphicsItem x0) -> Ptr (TQObject t1) -> IO (CBool)))

foreign import ccall "wrapper" wrapSetHandler_QGraphicsItem4_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QGraphicsItemSc a) (QGraphicsItem x0 -> QObject t1 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QGraphicsItem4 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QGraphicsItem4_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QGraphicsItem_setHandler4 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQGraphicsItem x0) -> Ptr (TQObject t1) -> IO (CBool)
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

instance QsetHandler (QGraphicsItem ()) (QGraphicsItem x0 -> QGraphicsItem t1 -> ItemSelectionMode -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QGraphicsItem5 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QGraphicsItem5_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QGraphicsItem_setHandler5 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQGraphicsItem x0) -> Ptr (TQGraphicsItem t1) -> CLong -> IO (CBool)
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

foreign import ccall "qtc_QGraphicsItem_setHandler5" qtc_QGraphicsItem_setHandler5 :: Ptr (TQGraphicsItem a) -> CWString -> Ptr (Ptr (TQGraphicsItem x0) -> Ptr (TQGraphicsItem t1) -> CLong -> IO (CBool)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QGraphicsItem5 :: (Ptr (TQGraphicsItem x0) -> Ptr (TQGraphicsItem t1) -> CLong -> IO (CBool)) -> IO (FunPtr (Ptr (TQGraphicsItem x0) -> Ptr (TQGraphicsItem t1) -> CLong -> IO (CBool)))

foreign import ccall "wrapper" wrapSetHandler_QGraphicsItem5_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QGraphicsItemSc a) (QGraphicsItem x0 -> QGraphicsItem t1 -> ItemSelectionMode -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QGraphicsItem5 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QGraphicsItem5_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QGraphicsItem_setHandler5 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQGraphicsItem x0) -> Ptr (TQGraphicsItem t1) -> CLong -> IO (CBool)
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

instance QsetHandler (QGraphicsItem ()) (QGraphicsItem x0 -> QObject t1 -> ItemSelectionMode -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QGraphicsItem6 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QGraphicsItem6_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QGraphicsItem_setHandler6 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQGraphicsItem x0) -> Ptr (TQObject t1) -> CLong -> IO (CBool)
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

foreign import ccall "qtc_QGraphicsItem_setHandler6" qtc_QGraphicsItem_setHandler6 :: Ptr (TQGraphicsItem a) -> CWString -> Ptr (Ptr (TQGraphicsItem x0) -> Ptr (TQObject t1) -> CLong -> IO (CBool)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QGraphicsItem6 :: (Ptr (TQGraphicsItem x0) -> Ptr (TQObject t1) -> CLong -> IO (CBool)) -> IO (FunPtr (Ptr (TQGraphicsItem x0) -> Ptr (TQObject t1) -> CLong -> IO (CBool)))

foreign import ccall "wrapper" wrapSetHandler_QGraphicsItem6_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QGraphicsItemSc a) (QGraphicsItem x0 -> QObject t1 -> ItemSelectionMode -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QGraphicsItem6 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QGraphicsItem6_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QGraphicsItem_setHandler6 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQGraphicsItem x0) -> Ptr (TQObject t1) -> CLong -> IO (CBool)
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

instance QcollidesWithItem_h (QGraphicsItem ()) ((QGraphicsItem t1)) where
 collidesWithItem_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem_collidesWithItem cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsItem_collidesWithItem" qtc_QGraphicsItem_collidesWithItem :: Ptr (TQGraphicsItem a) -> Ptr (TQGraphicsItem t1) -> IO CBool

instance QcollidesWithItem_h (QGraphicsItemSc a) ((QGraphicsItem t1)) where
 collidesWithItem_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem_collidesWithItem cobj_x0 cobj_x1

instance QcollidesWithItem_h (QGraphicsItem ()) ((QGraphicsItem t1, ItemSelectionMode)) where
 collidesWithItem_h x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem_collidesWithItem1 cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QGraphicsItem_collidesWithItem1" qtc_QGraphicsItem_collidesWithItem1 :: Ptr (TQGraphicsItem a) -> Ptr (TQGraphicsItem t1) -> CLong -> IO CBool

instance QcollidesWithItem_h (QGraphicsItemSc a) ((QGraphicsItem t1, ItemSelectionMode)) where
 collidesWithItem_h x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem_collidesWithItem1 cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

instance QcollidesWithItem_h (QGraphicsItem ()) ((QGraphicsTextItem t1)) where
 collidesWithItem_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem_collidesWithItem_graphicstextitem cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsItem_collidesWithItem_graphicstextitem" qtc_QGraphicsItem_collidesWithItem_graphicstextitem :: Ptr (TQGraphicsItem a) -> Ptr (TQGraphicsTextItem t1) -> IO CBool

instance QcollidesWithItem_h (QGraphicsItemSc a) ((QGraphicsTextItem t1)) where
 collidesWithItem_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem_collidesWithItem_graphicstextitem cobj_x0 cobj_x1

instance QcollidesWithItem_h (QGraphicsItem ()) ((QGraphicsTextItem t1, ItemSelectionMode)) where
 collidesWithItem_h x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem_collidesWithItem1_graphicstextitem cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QGraphicsItem_collidesWithItem1_graphicstextitem" qtc_QGraphicsItem_collidesWithItem1_graphicstextitem :: Ptr (TQGraphicsItem a) -> Ptr (TQGraphicsTextItem t1) -> CLong -> IO CBool

instance QcollidesWithItem_h (QGraphicsItemSc a) ((QGraphicsTextItem t1, ItemSelectionMode)) where
 collidesWithItem_h x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem_collidesWithItem1_graphicstextitem cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

instance QsetHandler (QGraphicsItem ()) (QGraphicsItem x0 -> QPainterPath t1 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QGraphicsItem7 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QGraphicsItem7_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QGraphicsItem_setHandler7 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQGraphicsItem x0) -> Ptr (TQPainterPath t1) -> IO (CBool)
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

foreign import ccall "qtc_QGraphicsItem_setHandler7" qtc_QGraphicsItem_setHandler7 :: Ptr (TQGraphicsItem a) -> CWString -> Ptr (Ptr (TQGraphicsItem x0) -> Ptr (TQPainterPath t1) -> IO (CBool)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QGraphicsItem7 :: (Ptr (TQGraphicsItem x0) -> Ptr (TQPainterPath t1) -> IO (CBool)) -> IO (FunPtr (Ptr (TQGraphicsItem x0) -> Ptr (TQPainterPath t1) -> IO (CBool)))

foreign import ccall "wrapper" wrapSetHandler_QGraphicsItem7_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QGraphicsItemSc a) (QGraphicsItem x0 -> QPainterPath t1 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QGraphicsItem7 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QGraphicsItem7_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QGraphicsItem_setHandler7 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQGraphicsItem x0) -> Ptr (TQPainterPath t1) -> IO (CBool)
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

instance QsetHandler (QGraphicsItem ()) (QGraphicsItem x0 -> QPainterPath t1 -> ItemSelectionMode -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QGraphicsItem8 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QGraphicsItem8_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QGraphicsItem_setHandler8 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQGraphicsItem x0) -> Ptr (TQPainterPath t1) -> CLong -> IO (CBool)
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

foreign import ccall "qtc_QGraphicsItem_setHandler8" qtc_QGraphicsItem_setHandler8 :: Ptr (TQGraphicsItem a) -> CWString -> Ptr (Ptr (TQGraphicsItem x0) -> Ptr (TQPainterPath t1) -> CLong -> IO (CBool)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QGraphicsItem8 :: (Ptr (TQGraphicsItem x0) -> Ptr (TQPainterPath t1) -> CLong -> IO (CBool)) -> IO (FunPtr (Ptr (TQGraphicsItem x0) -> Ptr (TQPainterPath t1) -> CLong -> IO (CBool)))

foreign import ccall "wrapper" wrapSetHandler_QGraphicsItem8_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QGraphicsItemSc a) (QGraphicsItem x0 -> QPainterPath t1 -> ItemSelectionMode -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QGraphicsItem8 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QGraphicsItem8_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QGraphicsItem_setHandler8 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQGraphicsItem x0) -> Ptr (TQPainterPath t1) -> CLong -> IO (CBool)
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

instance QcollidesWithPath_h (QGraphicsItem ()) ((QPainterPath t1)) where
 collidesWithPath_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem_collidesWithPath cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsItem_collidesWithPath" qtc_QGraphicsItem_collidesWithPath :: Ptr (TQGraphicsItem a) -> Ptr (TQPainterPath t1) -> IO CBool

instance QcollidesWithPath_h (QGraphicsItemSc a) ((QPainterPath t1)) where
 collidesWithPath_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem_collidesWithPath cobj_x0 cobj_x1

instance QcollidesWithPath_h (QGraphicsItem ()) ((QPainterPath t1, ItemSelectionMode)) where
 collidesWithPath_h x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem_collidesWithPath1 cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QGraphicsItem_collidesWithPath1" qtc_QGraphicsItem_collidesWithPath1 :: Ptr (TQGraphicsItem a) -> Ptr (TQPainterPath t1) -> CLong -> IO CBool

instance QcollidesWithPath_h (QGraphicsItemSc a) ((QPainterPath t1, ItemSelectionMode)) where
 collidesWithPath_h x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem_collidesWithPath1 cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

instance QsetHandler (QGraphicsItem ()) (QGraphicsItem x0 -> QPointF t1 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QGraphicsItem9 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QGraphicsItem9_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QGraphicsItem_setHandler9 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQGraphicsItem x0) -> Ptr (TQPointF t1) -> IO (CBool)
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

foreign import ccall "qtc_QGraphicsItem_setHandler9" qtc_QGraphicsItem_setHandler9 :: Ptr (TQGraphicsItem a) -> CWString -> Ptr (Ptr (TQGraphicsItem x0) -> Ptr (TQPointF t1) -> IO (CBool)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QGraphicsItem9 :: (Ptr (TQGraphicsItem x0) -> Ptr (TQPointF t1) -> IO (CBool)) -> IO (FunPtr (Ptr (TQGraphicsItem x0) -> Ptr (TQPointF t1) -> IO (CBool)))

foreign import ccall "wrapper" wrapSetHandler_QGraphicsItem9_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QGraphicsItemSc a) (QGraphicsItem x0 -> QPointF t1 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QGraphicsItem9 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QGraphicsItem9_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QGraphicsItem_setHandler9 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQGraphicsItem x0) -> Ptr (TQPointF t1) -> IO (CBool)
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

instance Qqcontains_h (QGraphicsItem ()) ((PointF)) where
 qcontains_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCPointF x1 $ \cpointf_x1_x cpointf_x1_y -> 
    qtc_QGraphicsItem_contains_qth cobj_x0 cpointf_x1_x cpointf_x1_y 

foreign import ccall "qtc_QGraphicsItem_contains_qth" qtc_QGraphicsItem_contains_qth :: Ptr (TQGraphicsItem a) -> CDouble -> CDouble -> IO CBool

instance Qqcontains_h (QGraphicsItemSc a) ((PointF)) where
 qcontains_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCPointF x1 $ \cpointf_x1_x cpointf_x1_y -> 
    qtc_QGraphicsItem_contains_qth cobj_x0 cpointf_x1_x cpointf_x1_y 

instance Qqqcontains_h (QGraphicsItem ()) ((QPointF t1)) where
 qqcontains_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem_contains cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsItem_contains" qtc_QGraphicsItem_contains :: Ptr (TQGraphicsItem a) -> Ptr (TQPointF t1) -> IO CBool

instance Qqqcontains_h (QGraphicsItemSc a) ((QPointF t1)) where
 qqcontains_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem_contains cobj_x0 cobj_x1

instance QsetHandler (QGraphicsItem ()) (QGraphicsItem x0 -> QEvent t1 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QGraphicsItem10 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QGraphicsItem10_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QGraphicsItem_setHandler10 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQGraphicsItem x0) -> Ptr (TQEvent t1) -> IO ()
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

foreign import ccall "qtc_QGraphicsItem_setHandler10" qtc_QGraphicsItem_setHandler10 :: Ptr (TQGraphicsItem a) -> CWString -> Ptr (Ptr (TQGraphicsItem x0) -> Ptr (TQEvent t1) -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QGraphicsItem10 :: (Ptr (TQGraphicsItem x0) -> Ptr (TQEvent t1) -> IO ()) -> IO (FunPtr (Ptr (TQGraphicsItem x0) -> Ptr (TQEvent t1) -> IO ()))

foreign import ccall "wrapper" wrapSetHandler_QGraphicsItem10_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QGraphicsItemSc a) (QGraphicsItem x0 -> QEvent t1 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QGraphicsItem10 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QGraphicsItem10_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QGraphicsItem_setHandler10 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQGraphicsItem x0) -> Ptr (TQEvent t1) -> IO ()
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

instance QcontextMenuEvent_h (QGraphicsItem ()) ((QGraphicsSceneContextMenuEvent t1)) where
 contextMenuEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem_contextMenuEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsItem_contextMenuEvent" qtc_QGraphicsItem_contextMenuEvent :: Ptr (TQGraphicsItem a) -> Ptr (TQGraphicsSceneContextMenuEvent t1) -> IO ()

instance QcontextMenuEvent_h (QGraphicsItemSc a) ((QGraphicsSceneContextMenuEvent t1)) where
 contextMenuEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem_contextMenuEvent cobj_x0 cobj_x1

instance QdragEnterEvent_h (QGraphicsItem ()) ((QGraphicsSceneDragDropEvent t1)) where
 dragEnterEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem_dragEnterEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsItem_dragEnterEvent" qtc_QGraphicsItem_dragEnterEvent :: Ptr (TQGraphicsItem a) -> Ptr (TQGraphicsSceneDragDropEvent t1) -> IO ()

instance QdragEnterEvent_h (QGraphicsItemSc a) ((QGraphicsSceneDragDropEvent t1)) where
 dragEnterEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem_dragEnterEvent cobj_x0 cobj_x1

instance QdragLeaveEvent_h (QGraphicsItem ()) ((QGraphicsSceneDragDropEvent t1)) where
 dragLeaveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem_dragLeaveEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsItem_dragLeaveEvent" qtc_QGraphicsItem_dragLeaveEvent :: Ptr (TQGraphicsItem a) -> Ptr (TQGraphicsSceneDragDropEvent t1) -> IO ()

instance QdragLeaveEvent_h (QGraphicsItemSc a) ((QGraphicsSceneDragDropEvent t1)) where
 dragLeaveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem_dragLeaveEvent cobj_x0 cobj_x1

instance QdragMoveEvent_h (QGraphicsItem ()) ((QGraphicsSceneDragDropEvent t1)) where
 dragMoveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem_dragMoveEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsItem_dragMoveEvent" qtc_QGraphicsItem_dragMoveEvent :: Ptr (TQGraphicsItem a) -> Ptr (TQGraphicsSceneDragDropEvent t1) -> IO ()

instance QdragMoveEvent_h (QGraphicsItemSc a) ((QGraphicsSceneDragDropEvent t1)) where
 dragMoveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem_dragMoveEvent cobj_x0 cobj_x1

instance QdropEvent_h (QGraphicsItem ()) ((QGraphicsSceneDragDropEvent t1)) where
 dropEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem_dropEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsItem_dropEvent" qtc_QGraphicsItem_dropEvent :: Ptr (TQGraphicsItem a) -> Ptr (TQGraphicsSceneDragDropEvent t1) -> IO ()

instance QdropEvent_h (QGraphicsItemSc a) ((QGraphicsSceneDragDropEvent t1)) where
 dropEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem_dropEvent cobj_x0 cobj_x1

instance QfocusInEvent_h (QGraphicsItem ()) ((QFocusEvent t1)) where
 focusInEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem_focusInEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsItem_focusInEvent" qtc_QGraphicsItem_focusInEvent :: Ptr (TQGraphicsItem a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusInEvent_h (QGraphicsItemSc a) ((QFocusEvent t1)) where
 focusInEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem_focusInEvent cobj_x0 cobj_x1

instance QfocusOutEvent_h (QGraphicsItem ()) ((QFocusEvent t1)) where
 focusOutEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem_focusOutEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsItem_focusOutEvent" qtc_QGraphicsItem_focusOutEvent :: Ptr (TQGraphicsItem a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusOutEvent_h (QGraphicsItemSc a) ((QFocusEvent t1)) where
 focusOutEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem_focusOutEvent cobj_x0 cobj_x1

instance QhoverEnterEvent_h (QGraphicsItem ()) ((QGraphicsSceneHoverEvent t1)) where
 hoverEnterEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem_hoverEnterEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsItem_hoverEnterEvent" qtc_QGraphicsItem_hoverEnterEvent :: Ptr (TQGraphicsItem a) -> Ptr (TQGraphicsSceneHoverEvent t1) -> IO ()

instance QhoverEnterEvent_h (QGraphicsItemSc a) ((QGraphicsSceneHoverEvent t1)) where
 hoverEnterEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem_hoverEnterEvent cobj_x0 cobj_x1

instance QhoverLeaveEvent_h (QGraphicsItem ()) ((QGraphicsSceneHoverEvent t1)) where
 hoverLeaveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem_hoverLeaveEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsItem_hoverLeaveEvent" qtc_QGraphicsItem_hoverLeaveEvent :: Ptr (TQGraphicsItem a) -> Ptr (TQGraphicsSceneHoverEvent t1) -> IO ()

instance QhoverLeaveEvent_h (QGraphicsItemSc a) ((QGraphicsSceneHoverEvent t1)) where
 hoverLeaveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem_hoverLeaveEvent cobj_x0 cobj_x1

instance QhoverMoveEvent_h (QGraphicsItem ()) ((QGraphicsSceneHoverEvent t1)) where
 hoverMoveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem_hoverMoveEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsItem_hoverMoveEvent" qtc_QGraphicsItem_hoverMoveEvent :: Ptr (TQGraphicsItem a) -> Ptr (TQGraphicsSceneHoverEvent t1) -> IO ()

instance QhoverMoveEvent_h (QGraphicsItemSc a) ((QGraphicsSceneHoverEvent t1)) where
 hoverMoveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem_hoverMoveEvent cobj_x0 cobj_x1

instance QinputMethodEvent_h (QGraphicsItem ()) ((QInputMethodEvent t1)) where
 inputMethodEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem_inputMethodEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsItem_inputMethodEvent" qtc_QGraphicsItem_inputMethodEvent :: Ptr (TQGraphicsItem a) -> Ptr (TQInputMethodEvent t1) -> IO ()

instance QinputMethodEvent_h (QGraphicsItemSc a) ((QInputMethodEvent t1)) where
 inputMethodEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem_inputMethodEvent cobj_x0 cobj_x1

instance QsetHandler (QGraphicsItem ()) (QGraphicsItem x0 -> InputMethodQuery -> IO (QVariant t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QGraphicsItem11 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QGraphicsItem11_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QGraphicsItem_setHandler11 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQGraphicsItem x0) -> CLong -> IO (Ptr (TQVariant t0))
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

foreign import ccall "qtc_QGraphicsItem_setHandler11" qtc_QGraphicsItem_setHandler11 :: Ptr (TQGraphicsItem a) -> CWString -> Ptr (Ptr (TQGraphicsItem x0) -> CLong -> IO (Ptr (TQVariant t0))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QGraphicsItem11 :: (Ptr (TQGraphicsItem x0) -> CLong -> IO (Ptr (TQVariant t0))) -> IO (FunPtr (Ptr (TQGraphicsItem x0) -> CLong -> IO (Ptr (TQVariant t0))))

foreign import ccall "wrapper" wrapSetHandler_QGraphicsItem11_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QGraphicsItemSc a) (QGraphicsItem x0 -> InputMethodQuery -> IO (QVariant t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QGraphicsItem11 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QGraphicsItem11_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QGraphicsItem_setHandler11 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQGraphicsItem x0) -> CLong -> IO (Ptr (TQVariant t0))
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

instance QinputMethodQuery_h (QGraphicsItem ()) ((InputMethodQuery)) where
 inputMethodQuery_h x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItem_inputMethodQuery cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QGraphicsItem_inputMethodQuery" qtc_QGraphicsItem_inputMethodQuery :: Ptr (TQGraphicsItem a) -> CLong -> IO (Ptr (TQVariant ()))

instance QinputMethodQuery_h (QGraphicsItemSc a) ((InputMethodQuery)) where
 inputMethodQuery_h x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItem_inputMethodQuery cobj_x0 (toCLong $ qEnum_toInt x1)

instance QisObscuredBy_h (QGraphicsItem ()) ((QGraphicsItem t1)) where
 isObscuredBy_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem_isObscuredBy cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsItem_isObscuredBy" qtc_QGraphicsItem_isObscuredBy :: Ptr (TQGraphicsItem a) -> Ptr (TQGraphicsItem t1) -> IO CBool

instance QisObscuredBy_h (QGraphicsItemSc a) ((QGraphicsItem t1)) where
 isObscuredBy_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem_isObscuredBy cobj_x0 cobj_x1

instance QisObscuredBy_h (QGraphicsItem ()) ((QGraphicsTextItem t1)) where
 isObscuredBy_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem_isObscuredBy_graphicstextitem cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsItem_isObscuredBy_graphicstextitem" qtc_QGraphicsItem_isObscuredBy_graphicstextitem :: Ptr (TQGraphicsItem a) -> Ptr (TQGraphicsTextItem t1) -> IO CBool

instance QisObscuredBy_h (QGraphicsItemSc a) ((QGraphicsTextItem t1)) where
 isObscuredBy_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem_isObscuredBy_graphicstextitem cobj_x0 cobj_x1

instance QsetHandler (QGraphicsItem ()) (QGraphicsItem x0 -> GraphicsItemChange -> QVariant t2 -> IO (QVariant t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QGraphicsItem12 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QGraphicsItem12_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QGraphicsItem_setHandler12 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQGraphicsItem x0) -> CLong -> Ptr (TQVariant t2) -> IO (Ptr (TQVariant t0))
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

foreign import ccall "qtc_QGraphicsItem_setHandler12" qtc_QGraphicsItem_setHandler12 :: Ptr (TQGraphicsItem a) -> CWString -> Ptr (Ptr (TQGraphicsItem x0) -> CLong -> Ptr (TQVariant t2) -> IO (Ptr (TQVariant t0))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QGraphicsItem12 :: (Ptr (TQGraphicsItem x0) -> CLong -> Ptr (TQVariant t2) -> IO (Ptr (TQVariant t0))) -> IO (FunPtr (Ptr (TQGraphicsItem x0) -> CLong -> Ptr (TQVariant t2) -> IO (Ptr (TQVariant t0))))

foreign import ccall "wrapper" wrapSetHandler_QGraphicsItem12_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QGraphicsItemSc a) (QGraphicsItem x0 -> GraphicsItemChange -> QVariant t2 -> IO (QVariant t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QGraphicsItem12 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QGraphicsItem12_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QGraphicsItem_setHandler12 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQGraphicsItem x0) -> CLong -> Ptr (TQVariant t2) -> IO (Ptr (TQVariant t0))
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

instance QitemChange_h (QGraphicsItem ()) ((GraphicsItemChange, QVariant t2)) where
 itemChange_h x0 (x1, x2)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsItem_itemChange cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2

foreign import ccall "qtc_QGraphicsItem_itemChange" qtc_QGraphicsItem_itemChange :: Ptr (TQGraphicsItem a) -> CLong -> Ptr (TQVariant t2) -> IO (Ptr (TQVariant ()))

instance QitemChange_h (QGraphicsItemSc a) ((GraphicsItemChange, QVariant t2)) where
 itemChange_h x0 (x1, x2)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsItem_itemChange cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2

instance QkeyPressEvent_h (QGraphicsItem ()) ((QKeyEvent t1)) where
 keyPressEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem_keyPressEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsItem_keyPressEvent" qtc_QGraphicsItem_keyPressEvent :: Ptr (TQGraphicsItem a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyPressEvent_h (QGraphicsItemSc a) ((QKeyEvent t1)) where
 keyPressEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem_keyPressEvent cobj_x0 cobj_x1

instance QkeyReleaseEvent_h (QGraphicsItem ()) ((QKeyEvent t1)) where
 keyReleaseEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem_keyReleaseEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsItem_keyReleaseEvent" qtc_QGraphicsItem_keyReleaseEvent :: Ptr (TQGraphicsItem a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyReleaseEvent_h (QGraphicsItemSc a) ((QKeyEvent t1)) where
 keyReleaseEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem_keyReleaseEvent cobj_x0 cobj_x1

instance QmouseDoubleClickEvent_h (QGraphicsItem ()) ((QGraphicsSceneMouseEvent t1)) where
 mouseDoubleClickEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem_mouseDoubleClickEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsItem_mouseDoubleClickEvent" qtc_QGraphicsItem_mouseDoubleClickEvent :: Ptr (TQGraphicsItem a) -> Ptr (TQGraphicsSceneMouseEvent t1) -> IO ()

instance QmouseDoubleClickEvent_h (QGraphicsItemSc a) ((QGraphicsSceneMouseEvent t1)) where
 mouseDoubleClickEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem_mouseDoubleClickEvent cobj_x0 cobj_x1

instance QmouseMoveEvent_h (QGraphicsItem ()) ((QGraphicsSceneMouseEvent t1)) where
 mouseMoveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem_mouseMoveEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsItem_mouseMoveEvent" qtc_QGraphicsItem_mouseMoveEvent :: Ptr (TQGraphicsItem a) -> Ptr (TQGraphicsSceneMouseEvent t1) -> IO ()

instance QmouseMoveEvent_h (QGraphicsItemSc a) ((QGraphicsSceneMouseEvent t1)) where
 mouseMoveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem_mouseMoveEvent cobj_x0 cobj_x1

instance QmousePressEvent_h (QGraphicsItem ()) ((QGraphicsSceneMouseEvent t1)) where
 mousePressEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem_mousePressEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsItem_mousePressEvent" qtc_QGraphicsItem_mousePressEvent :: Ptr (TQGraphicsItem a) -> Ptr (TQGraphicsSceneMouseEvent t1) -> IO ()

instance QmousePressEvent_h (QGraphicsItemSc a) ((QGraphicsSceneMouseEvent t1)) where
 mousePressEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem_mousePressEvent cobj_x0 cobj_x1

instance QmouseReleaseEvent_h (QGraphicsItem ()) ((QGraphicsSceneMouseEvent t1)) where
 mouseReleaseEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem_mouseReleaseEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsItem_mouseReleaseEvent" qtc_QGraphicsItem_mouseReleaseEvent :: Ptr (TQGraphicsItem a) -> Ptr (TQGraphicsSceneMouseEvent t1) -> IO ()

instance QmouseReleaseEvent_h (QGraphicsItemSc a) ((QGraphicsSceneMouseEvent t1)) where
 mouseReleaseEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem_mouseReleaseEvent cobj_x0 cobj_x1

instance QsetHandler (QGraphicsItem ()) (QGraphicsItem x0 -> IO (QPainterPath t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QGraphicsItem13 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QGraphicsItem13_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QGraphicsItem_setHandler13 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQGraphicsItem x0) -> IO (Ptr (TQPainterPath t0))
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

foreign import ccall "qtc_QGraphicsItem_setHandler13" qtc_QGraphicsItem_setHandler13 :: Ptr (TQGraphicsItem a) -> CWString -> Ptr (Ptr (TQGraphicsItem x0) -> IO (Ptr (TQPainterPath t0))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QGraphicsItem13 :: (Ptr (TQGraphicsItem x0) -> IO (Ptr (TQPainterPath t0))) -> IO (FunPtr (Ptr (TQGraphicsItem x0) -> IO (Ptr (TQPainterPath t0))))

foreign import ccall "wrapper" wrapSetHandler_QGraphicsItem13_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QGraphicsItemSc a) (QGraphicsItem x0 -> IO (QPainterPath t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QGraphicsItem13 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QGraphicsItem13_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QGraphicsItem_setHandler13 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQGraphicsItem x0) -> IO (Ptr (TQPainterPath t0))
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

instance QopaqueArea_h (QGraphicsItem ()) (()) where
 opaqueArea_h x0 ()
  = withQPainterPathResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItem_opaqueArea cobj_x0

foreign import ccall "qtc_QGraphicsItem_opaqueArea" qtc_QGraphicsItem_opaqueArea :: Ptr (TQGraphicsItem a) -> IO (Ptr (TQPainterPath ()))

instance QopaqueArea_h (QGraphicsItemSc a) (()) where
 opaqueArea_h x0 ()
  = withQPainterPathResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItem_opaqueArea cobj_x0

instance QsetHandler (QGraphicsItem ()) (QGraphicsItem x0 -> QPainter t1 -> QStyleOption t2 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QGraphicsItem14 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QGraphicsItem14_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QGraphicsItem_setHandler14 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQGraphicsItem x0) -> Ptr (TQPainter t1) -> Ptr (TQStyleOption t2) -> IO ()
    setHandlerWrapper x0 x1 x2
      = do x0obj <- objectFromPtr_nf x0
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

foreign import ccall "qtc_QGraphicsItem_setHandler14" qtc_QGraphicsItem_setHandler14 :: Ptr (TQGraphicsItem a) -> CWString -> Ptr (Ptr (TQGraphicsItem x0) -> Ptr (TQPainter t1) -> Ptr (TQStyleOption t2) -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QGraphicsItem14 :: (Ptr (TQGraphicsItem x0) -> Ptr (TQPainter t1) -> Ptr (TQStyleOption t2) -> IO ()) -> IO (FunPtr (Ptr (TQGraphicsItem x0) -> Ptr (TQPainter t1) -> Ptr (TQStyleOption t2) -> IO ()))

foreign import ccall "wrapper" wrapSetHandler_QGraphicsItem14_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QGraphicsItemSc a) (QGraphicsItem x0 -> QPainter t1 -> QStyleOption t2 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QGraphicsItem14 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QGraphicsItem14_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QGraphicsItem_setHandler14 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQGraphicsItem x0) -> Ptr (TQPainter t1) -> Ptr (TQStyleOption t2) -> IO ()
    setHandlerWrapper x0 x1 x2
      = do x0obj <- objectFromPtr_nf x0
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

instance QsetHandler (QGraphicsItem ()) (QGraphicsItem x0 -> QPainter t1 -> QStyleOption t2 -> QObject t3 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QGraphicsItem15 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QGraphicsItem15_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QGraphicsItem_setHandler15 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQGraphicsItem x0) -> Ptr (TQPainter t1) -> Ptr (TQStyleOption t2) -> Ptr (TQObject t3) -> IO ()
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

foreign import ccall "qtc_QGraphicsItem_setHandler15" qtc_QGraphicsItem_setHandler15 :: Ptr (TQGraphicsItem a) -> CWString -> Ptr (Ptr (TQGraphicsItem x0) -> Ptr (TQPainter t1) -> Ptr (TQStyleOption t2) -> Ptr (TQObject t3) -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QGraphicsItem15 :: (Ptr (TQGraphicsItem x0) -> Ptr (TQPainter t1) -> Ptr (TQStyleOption t2) -> Ptr (TQObject t3) -> IO ()) -> IO (FunPtr (Ptr (TQGraphicsItem x0) -> Ptr (TQPainter t1) -> Ptr (TQStyleOption t2) -> Ptr (TQObject t3) -> IO ()))

foreign import ccall "wrapper" wrapSetHandler_QGraphicsItem15_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QGraphicsItemSc a) (QGraphicsItem x0 -> QPainter t1 -> QStyleOption t2 -> QObject t3 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QGraphicsItem15 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QGraphicsItem15_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QGraphicsItem_setHandler15 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQGraphicsItem x0) -> Ptr (TQPainter t1) -> Ptr (TQStyleOption t2) -> Ptr (TQObject t3) -> IO ()
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

instance Qpaint_h (QGraphicsItem ()) ((QPainter t1, QStyleOptionGraphicsItem t2)) where
 paint_h x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsItem_paint cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QGraphicsItem_paint" qtc_QGraphicsItem_paint :: Ptr (TQGraphicsItem a) -> Ptr (TQPainter t1) -> Ptr (TQStyleOptionGraphicsItem t2) -> IO ()

instance Qpaint_h (QGraphicsItemSc a) ((QPainter t1, QStyleOptionGraphicsItem t2)) where
 paint_h x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsItem_paint cobj_x0 cobj_x1 cobj_x2

instance Qpaint_h (QGraphicsItem ()) ((QPainter t1, QStyleOptionGraphicsItem t2, QWidget t3)) where
 paint_h x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QGraphicsItem_paint1 cobj_x0 cobj_x1 cobj_x2 cobj_x3

foreign import ccall "qtc_QGraphicsItem_paint1" qtc_QGraphicsItem_paint1 :: Ptr (TQGraphicsItem a) -> Ptr (TQPainter t1) -> Ptr (TQStyleOptionGraphicsItem t2) -> Ptr (TQWidget t3) -> IO ()

instance Qpaint_h (QGraphicsItemSc a) ((QPainter t1, QStyleOptionGraphicsItem t2, QWidget t3)) where
 paint_h x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QGraphicsItem_paint1 cobj_x0 cobj_x1 cobj_x2 cobj_x3

instance QsetHandler (QGraphicsItem ()) (QGraphicsItem x0 -> QEvent t1 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QGraphicsItem16 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QGraphicsItem16_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QGraphicsItem_setHandler16 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQGraphicsItem x0) -> Ptr (TQEvent t1) -> IO (CBool)
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

foreign import ccall "qtc_QGraphicsItem_setHandler16" qtc_QGraphicsItem_setHandler16 :: Ptr (TQGraphicsItem a) -> CWString -> Ptr (Ptr (TQGraphicsItem x0) -> Ptr (TQEvent t1) -> IO (CBool)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QGraphicsItem16 :: (Ptr (TQGraphicsItem x0) -> Ptr (TQEvent t1) -> IO (CBool)) -> IO (FunPtr (Ptr (TQGraphicsItem x0) -> Ptr (TQEvent t1) -> IO (CBool)))

foreign import ccall "wrapper" wrapSetHandler_QGraphicsItem16_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QGraphicsItemSc a) (QGraphicsItem x0 -> QEvent t1 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QGraphicsItem16 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QGraphicsItem16_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QGraphicsItem_setHandler16 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQGraphicsItem x0) -> Ptr (TQEvent t1) -> IO (CBool)
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

instance QsceneEvent_h (QGraphicsItem ()) ((QEvent t1)) where
 sceneEvent_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem_sceneEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsItem_sceneEvent" qtc_QGraphicsItem_sceneEvent :: Ptr (TQGraphicsItem a) -> Ptr (TQEvent t1) -> IO CBool

instance QsceneEvent_h (QGraphicsItemSc a) ((QEvent t1)) where
 sceneEvent_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem_sceneEvent cobj_x0 cobj_x1

instance QsetHandler (QGraphicsItem ()) (QGraphicsItem x0 -> QGraphicsItem t1 -> QEvent t2 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QGraphicsItem17 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QGraphicsItem17_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QGraphicsItem_setHandler17 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQGraphicsItem x0) -> Ptr (TQGraphicsItem t1) -> Ptr (TQEvent t2) -> IO (CBool)
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

foreign import ccall "qtc_QGraphicsItem_setHandler17" qtc_QGraphicsItem_setHandler17 :: Ptr (TQGraphicsItem a) -> CWString -> Ptr (Ptr (TQGraphicsItem x0) -> Ptr (TQGraphicsItem t1) -> Ptr (TQEvent t2) -> IO (CBool)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QGraphicsItem17 :: (Ptr (TQGraphicsItem x0) -> Ptr (TQGraphicsItem t1) -> Ptr (TQEvent t2) -> IO (CBool)) -> IO (FunPtr (Ptr (TQGraphicsItem x0) -> Ptr (TQGraphicsItem t1) -> Ptr (TQEvent t2) -> IO (CBool)))

foreign import ccall "wrapper" wrapSetHandler_QGraphicsItem17_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QGraphicsItemSc a) (QGraphicsItem x0 -> QGraphicsItem t1 -> QEvent t2 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QGraphicsItem17 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QGraphicsItem17_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QGraphicsItem_setHandler17 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQGraphicsItem x0) -> Ptr (TQGraphicsItem t1) -> Ptr (TQEvent t2) -> IO (CBool)
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

instance QsetHandler (QGraphicsItem ()) (QGraphicsItem x0 -> QObject t1 -> QEvent t2 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QGraphicsItem18 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QGraphicsItem18_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QGraphicsItem_setHandler18 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQGraphicsItem x0) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO (CBool)
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

foreign import ccall "qtc_QGraphicsItem_setHandler18" qtc_QGraphicsItem_setHandler18 :: Ptr (TQGraphicsItem a) -> CWString -> Ptr (Ptr (TQGraphicsItem x0) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO (CBool)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QGraphicsItem18 :: (Ptr (TQGraphicsItem x0) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO (CBool)) -> IO (FunPtr (Ptr (TQGraphicsItem x0) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO (CBool)))

foreign import ccall "wrapper" wrapSetHandler_QGraphicsItem18_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QGraphicsItemSc a) (QGraphicsItem x0 -> QObject t1 -> QEvent t2 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QGraphicsItem18 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QGraphicsItem18_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QGraphicsItem_setHandler18 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQGraphicsItem x0) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO (CBool)
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

instance QsceneEventFilter_h (QGraphicsItem ()) ((QGraphicsItem t1, QEvent t2)) where
 sceneEventFilter_h x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsItem_sceneEventFilter cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QGraphicsItem_sceneEventFilter" qtc_QGraphicsItem_sceneEventFilter :: Ptr (TQGraphicsItem a) -> Ptr (TQGraphicsItem t1) -> Ptr (TQEvent t2) -> IO CBool

instance QsceneEventFilter_h (QGraphicsItemSc a) ((QGraphicsItem t1, QEvent t2)) where
 sceneEventFilter_h x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsItem_sceneEventFilter cobj_x0 cobj_x1 cobj_x2

instance QsceneEventFilter_h (QGraphicsItem ()) ((QGraphicsTextItem t1, QEvent t2)) where
 sceneEventFilter_h x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsItem_sceneEventFilter_graphicstextitem cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QGraphicsItem_sceneEventFilter_graphicstextitem" qtc_QGraphicsItem_sceneEventFilter_graphicstextitem :: Ptr (TQGraphicsItem a) -> Ptr (TQGraphicsTextItem t1) -> Ptr (TQEvent t2) -> IO CBool

instance QsceneEventFilter_h (QGraphicsItemSc a) ((QGraphicsTextItem t1, QEvent t2)) where
 sceneEventFilter_h x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsItem_sceneEventFilter_graphicstextitem cobj_x0 cobj_x1 cobj_x2

instance Qshape_h (QGraphicsItem ()) (()) where
 shape_h x0 ()
  = withQPainterPathResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItem_shape cobj_x0

foreign import ccall "qtc_QGraphicsItem_shape" qtc_QGraphicsItem_shape :: Ptr (TQGraphicsItem a) -> IO (Ptr (TQPainterPath ()))

instance Qshape_h (QGraphicsItemSc a) (()) where
 shape_h x0 ()
  = withQPainterPathResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItem_shape cobj_x0

instance QsetHandler (QGraphicsItem ()) (QGraphicsItem x0 -> IO (Int)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QGraphicsItem19 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QGraphicsItem19_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QGraphicsItem_setHandler19 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQGraphicsItem x0) -> IO (CInt)
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

foreign import ccall "qtc_QGraphicsItem_setHandler19" qtc_QGraphicsItem_setHandler19 :: Ptr (TQGraphicsItem a) -> CWString -> Ptr (Ptr (TQGraphicsItem x0) -> IO (CInt)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QGraphicsItem19 :: (Ptr (TQGraphicsItem x0) -> IO (CInt)) -> IO (FunPtr (Ptr (TQGraphicsItem x0) -> IO (CInt)))

foreign import ccall "wrapper" wrapSetHandler_QGraphicsItem19_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QGraphicsItemSc a) (QGraphicsItem x0 -> IO (Int)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QGraphicsItem19 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QGraphicsItem19_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QGraphicsItem_setHandler19 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQGraphicsItem x0) -> IO (CInt)
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

instance Qqtype_h (QGraphicsItem ()) (()) where
 qtype_h x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItem_type cobj_x0

foreign import ccall "qtc_QGraphicsItem_type" qtc_QGraphicsItem_type :: Ptr (TQGraphicsItem a) -> IO CInt

instance Qqtype_h (QGraphicsItemSc a) (()) where
 qtype_h x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItem_type cobj_x0

instance QwheelEvent_h (QGraphicsItem ()) ((QGraphicsSceneWheelEvent t1)) where
 wheelEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem_wheelEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsItem_wheelEvent" qtc_QGraphicsItem_wheelEvent :: Ptr (TQGraphicsItem a) -> Ptr (TQGraphicsSceneWheelEvent t1) -> IO ()

instance QwheelEvent_h (QGraphicsItemSc a) ((QGraphicsSceneWheelEvent t1)) where
 wheelEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem_wheelEvent cobj_x0 cobj_x1

