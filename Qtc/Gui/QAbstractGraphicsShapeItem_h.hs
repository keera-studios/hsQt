{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QAbstractGraphicsShapeItem_h.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:15
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QAbstractGraphicsShapeItem_h where

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

instance QunSetUserMethod (QAbstractGraphicsShapeItem ()) where
 unSetUserMethod qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QAbstractGraphicsShapeItem_unSetUserMethod cobj_qobj (toCInt 0) (toCInt evid)

foreign import ccall "qtc_QAbstractGraphicsShapeItem_unSetUserMethod" qtc_QAbstractGraphicsShapeItem_unSetUserMethod :: Ptr (TQAbstractGraphicsShapeItem a) -> CInt -> CInt -> IO (CBool)

instance QunSetUserMethod (QAbstractGraphicsShapeItemSc a) where
 unSetUserMethod qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QAbstractGraphicsShapeItem_unSetUserMethod cobj_qobj (toCInt 0) (toCInt evid)

instance QunSetUserMethodVariant (QAbstractGraphicsShapeItem ()) where
 unSetUserMethodVariant qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QAbstractGraphicsShapeItem_unSetUserMethod cobj_qobj (toCInt 1) (toCInt evid)

instance QunSetUserMethodVariant (QAbstractGraphicsShapeItemSc a) where
 unSetUserMethodVariant qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QAbstractGraphicsShapeItem_unSetUserMethod cobj_qobj (toCInt 1) (toCInt evid)

instance QunSetUserMethodVariantList (QAbstractGraphicsShapeItem ()) where
 unSetUserMethodVariantList qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QAbstractGraphicsShapeItem_unSetUserMethod cobj_qobj (toCInt 2) (toCInt evid)

instance QunSetUserMethodVariantList (QAbstractGraphicsShapeItemSc a) where
 unSetUserMethodVariantList qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QAbstractGraphicsShapeItem_unSetUserMethod cobj_qobj (toCInt 2) (toCInt evid)

instance QsetUserMethod (QAbstractGraphicsShapeItem ()) (QAbstractGraphicsShapeItem x0 -> IO ()) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethod_QAbstractGraphicsShapeItem setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethod_QAbstractGraphicsShapeItem_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QAbstractGraphicsShapeItem_setUserMethod cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQAbstractGraphicsShapeItem x0) -> IO ()
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

foreign import ccall "qtc_QAbstractGraphicsShapeItem_setUserMethod" qtc_QAbstractGraphicsShapeItem_setUserMethod :: Ptr (TQAbstractGraphicsShapeItem a) -> CInt -> Ptr (Ptr (TQAbstractGraphicsShapeItem x0) -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetUserMethod_QAbstractGraphicsShapeItem :: (Ptr (TQAbstractGraphicsShapeItem x0) -> IO ()) -> IO (FunPtr (Ptr (TQAbstractGraphicsShapeItem x0) -> IO ()))

foreign import ccall "wrapper" wrapSetUserMethod_QAbstractGraphicsShapeItem_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetUserMethod (QAbstractGraphicsShapeItemSc a) (QAbstractGraphicsShapeItem x0 -> IO ()) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethod_QAbstractGraphicsShapeItem setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethod_QAbstractGraphicsShapeItem_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QAbstractGraphicsShapeItem_setUserMethod cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQAbstractGraphicsShapeItem x0) -> IO ()
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

instance QsetUserMethod (QAbstractGraphicsShapeItem ()) (QAbstractGraphicsShapeItem x0 -> QVariant () -> IO (QVariant ())) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethodVariant_QAbstractGraphicsShapeItem setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethodVariant_QAbstractGraphicsShapeItem_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QAbstractGraphicsShapeItem_setUserMethodVariant cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQAbstractGraphicsShapeItem x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))
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

foreign import ccall "qtc_QAbstractGraphicsShapeItem_setUserMethodVariant" qtc_QAbstractGraphicsShapeItem_setUserMethodVariant :: Ptr (TQAbstractGraphicsShapeItem a) -> CInt -> Ptr (Ptr (TQAbstractGraphicsShapeItem x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetUserMethodVariant_QAbstractGraphicsShapeItem :: (Ptr (TQAbstractGraphicsShapeItem x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))) -> IO (FunPtr (Ptr (TQAbstractGraphicsShapeItem x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))))

foreign import ccall "wrapper" wrapSetUserMethodVariant_QAbstractGraphicsShapeItem_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetUserMethod (QAbstractGraphicsShapeItemSc a) (QAbstractGraphicsShapeItem x0 -> QVariant () -> IO (QVariant ())) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethodVariant_QAbstractGraphicsShapeItem setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethodVariant_QAbstractGraphicsShapeItem_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QAbstractGraphicsShapeItem_setUserMethodVariant cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQAbstractGraphicsShapeItem x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))
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

instance QunSetHandler (QAbstractGraphicsShapeItem ()) where 
 unSetHandler qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withCWString evid $ \cstr_evid ->
    qtc_QAbstractGraphicsShapeItem_unSetHandler cobj_qobj cstr_evid

foreign import ccall "qtc_QAbstractGraphicsShapeItem_unSetHandler" qtc_QAbstractGraphicsShapeItem_unSetHandler :: Ptr (TQAbstractGraphicsShapeItem a) -> CWString -> IO (CBool)

instance QunSetHandler (QAbstractGraphicsShapeItemSc a) where 
 unSetHandler qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withCWString evid $ \cstr_evid ->
    qtc_QAbstractGraphicsShapeItem_unSetHandler cobj_qobj cstr_evid

instance QsetHandler (QAbstractGraphicsShapeItem ()) (QAbstractGraphicsShapeItem x0 -> QGraphicsItem t1 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractGraphicsShapeItem1 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractGraphicsShapeItem1_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractGraphicsShapeItem_setHandler1 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractGraphicsShapeItem x0) -> Ptr (TQGraphicsItem t1) -> IO (CBool)
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

foreign import ccall "qtc_QAbstractGraphicsShapeItem_setHandler1" qtc_QAbstractGraphicsShapeItem_setHandler1 :: Ptr (TQAbstractGraphicsShapeItem a) -> CWString -> Ptr (Ptr (TQAbstractGraphicsShapeItem x0) -> Ptr (TQGraphicsItem t1) -> IO (CBool)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QAbstractGraphicsShapeItem1 :: (Ptr (TQAbstractGraphicsShapeItem x0) -> Ptr (TQGraphicsItem t1) -> IO (CBool)) -> IO (FunPtr (Ptr (TQAbstractGraphicsShapeItem x0) -> Ptr (TQGraphicsItem t1) -> IO (CBool)))

foreign import ccall "wrapper" wrapSetHandler_QAbstractGraphicsShapeItem1_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QAbstractGraphicsShapeItemSc a) (QAbstractGraphicsShapeItem x0 -> QGraphicsItem t1 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractGraphicsShapeItem1 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractGraphicsShapeItem1_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractGraphicsShapeItem_setHandler1 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractGraphicsShapeItem x0) -> Ptr (TQGraphicsItem t1) -> IO (CBool)
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

instance QsetHandler (QAbstractGraphicsShapeItem ()) (QAbstractGraphicsShapeItem x0 -> QObject t1 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractGraphicsShapeItem2 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractGraphicsShapeItem2_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractGraphicsShapeItem_setHandler2 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractGraphicsShapeItem x0) -> Ptr (TQObject t1) -> IO (CBool)
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

foreign import ccall "qtc_QAbstractGraphicsShapeItem_setHandler2" qtc_QAbstractGraphicsShapeItem_setHandler2 :: Ptr (TQAbstractGraphicsShapeItem a) -> CWString -> Ptr (Ptr (TQAbstractGraphicsShapeItem x0) -> Ptr (TQObject t1) -> IO (CBool)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QAbstractGraphicsShapeItem2 :: (Ptr (TQAbstractGraphicsShapeItem x0) -> Ptr (TQObject t1) -> IO (CBool)) -> IO (FunPtr (Ptr (TQAbstractGraphicsShapeItem x0) -> Ptr (TQObject t1) -> IO (CBool)))

foreign import ccall "wrapper" wrapSetHandler_QAbstractGraphicsShapeItem2_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QAbstractGraphicsShapeItemSc a) (QAbstractGraphicsShapeItem x0 -> QObject t1 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractGraphicsShapeItem2 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractGraphicsShapeItem2_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractGraphicsShapeItem_setHandler2 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractGraphicsShapeItem x0) -> Ptr (TQObject t1) -> IO (CBool)
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

instance QisObscuredBy_h (QAbstractGraphicsShapeItem ()) ((QGraphicsItem t1)) where
 isObscuredBy_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractGraphicsShapeItem_isObscuredBy cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractGraphicsShapeItem_isObscuredBy" qtc_QAbstractGraphicsShapeItem_isObscuredBy :: Ptr (TQAbstractGraphicsShapeItem a) -> Ptr (TQGraphicsItem t1) -> IO CBool

instance QisObscuredBy_h (QAbstractGraphicsShapeItemSc a) ((QGraphicsItem t1)) where
 isObscuredBy_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractGraphicsShapeItem_isObscuredBy cobj_x0 cobj_x1

instance QisObscuredBy_h (QAbstractGraphicsShapeItem ()) ((QGraphicsTextItem t1)) where
 isObscuredBy_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractGraphicsShapeItem_isObscuredBy_graphicstextitem cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractGraphicsShapeItem_isObscuredBy_graphicstextitem" qtc_QAbstractGraphicsShapeItem_isObscuredBy_graphicstextitem :: Ptr (TQAbstractGraphicsShapeItem a) -> Ptr (TQGraphicsTextItem t1) -> IO CBool

instance QisObscuredBy_h (QAbstractGraphicsShapeItemSc a) ((QGraphicsTextItem t1)) where
 isObscuredBy_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractGraphicsShapeItem_isObscuredBy_graphicstextitem cobj_x0 cobj_x1

instance QsetHandler (QAbstractGraphicsShapeItem ()) (QAbstractGraphicsShapeItem x0 -> IO (QPainterPath t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractGraphicsShapeItem3 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractGraphicsShapeItem3_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractGraphicsShapeItem_setHandler3 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractGraphicsShapeItem x0) -> IO (Ptr (TQPainterPath t0))
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

foreign import ccall "qtc_QAbstractGraphicsShapeItem_setHandler3" qtc_QAbstractGraphicsShapeItem_setHandler3 :: Ptr (TQAbstractGraphicsShapeItem a) -> CWString -> Ptr (Ptr (TQAbstractGraphicsShapeItem x0) -> IO (Ptr (TQPainterPath t0))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QAbstractGraphicsShapeItem3 :: (Ptr (TQAbstractGraphicsShapeItem x0) -> IO (Ptr (TQPainterPath t0))) -> IO (FunPtr (Ptr (TQAbstractGraphicsShapeItem x0) -> IO (Ptr (TQPainterPath t0))))

foreign import ccall "wrapper" wrapSetHandler_QAbstractGraphicsShapeItem3_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QAbstractGraphicsShapeItemSc a) (QAbstractGraphicsShapeItem x0 -> IO (QPainterPath t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractGraphicsShapeItem3 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractGraphicsShapeItem3_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractGraphicsShapeItem_setHandler3 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractGraphicsShapeItem x0) -> IO (Ptr (TQPainterPath t0))
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

instance QopaqueArea_h (QAbstractGraphicsShapeItem ()) (()) where
 opaqueArea_h x0 ()
  = withQPainterPathResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractGraphicsShapeItem_opaqueArea cobj_x0

foreign import ccall "qtc_QAbstractGraphicsShapeItem_opaqueArea" qtc_QAbstractGraphicsShapeItem_opaqueArea :: Ptr (TQAbstractGraphicsShapeItem a) -> IO (Ptr (TQPainterPath ()))

instance QopaqueArea_h (QAbstractGraphicsShapeItemSc a) (()) where
 opaqueArea_h x0 ()
  = withQPainterPathResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractGraphicsShapeItem_opaqueArea cobj_x0

instance QsetHandler (QAbstractGraphicsShapeItem ()) (QAbstractGraphicsShapeItem x0 -> Int -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractGraphicsShapeItem4 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractGraphicsShapeItem4_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractGraphicsShapeItem_setHandler4 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractGraphicsShapeItem x0) -> CInt -> IO ()
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

foreign import ccall "qtc_QAbstractGraphicsShapeItem_setHandler4" qtc_QAbstractGraphicsShapeItem_setHandler4 :: Ptr (TQAbstractGraphicsShapeItem a) -> CWString -> Ptr (Ptr (TQAbstractGraphicsShapeItem x0) -> CInt -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QAbstractGraphicsShapeItem4 :: (Ptr (TQAbstractGraphicsShapeItem x0) -> CInt -> IO ()) -> IO (FunPtr (Ptr (TQAbstractGraphicsShapeItem x0) -> CInt -> IO ()))

foreign import ccall "wrapper" wrapSetHandler_QAbstractGraphicsShapeItem4_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QAbstractGraphicsShapeItemSc a) (QAbstractGraphicsShapeItem x0 -> Int -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractGraphicsShapeItem4 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractGraphicsShapeItem4_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractGraphicsShapeItem_setHandler4 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractGraphicsShapeItem x0) -> CInt -> IO ()
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

instance Qadvance_h (QAbstractGraphicsShapeItem ()) ((Int)) where
 advance_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractGraphicsShapeItem_advance cobj_x0 (toCInt x1)

foreign import ccall "qtc_QAbstractGraphicsShapeItem_advance" qtc_QAbstractGraphicsShapeItem_advance :: Ptr (TQAbstractGraphicsShapeItem a) -> CInt -> IO ()

instance Qadvance_h (QAbstractGraphicsShapeItemSc a) ((Int)) where
 advance_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractGraphicsShapeItem_advance cobj_x0 (toCInt x1)

instance QsetHandler (QAbstractGraphicsShapeItem ()) (QAbstractGraphicsShapeItem x0 -> IO (QRectF t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractGraphicsShapeItem5 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractGraphicsShapeItem5_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractGraphicsShapeItem_setHandler5 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractGraphicsShapeItem x0) -> IO (Ptr (TQRectF t0))
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

foreign import ccall "qtc_QAbstractGraphicsShapeItem_setHandler5" qtc_QAbstractGraphicsShapeItem_setHandler5 :: Ptr (TQAbstractGraphicsShapeItem a) -> CWString -> Ptr (Ptr (TQAbstractGraphicsShapeItem x0) -> IO (Ptr (TQRectF t0))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QAbstractGraphicsShapeItem5 :: (Ptr (TQAbstractGraphicsShapeItem x0) -> IO (Ptr (TQRectF t0))) -> IO (FunPtr (Ptr (TQAbstractGraphicsShapeItem x0) -> IO (Ptr (TQRectF t0))))

foreign import ccall "wrapper" wrapSetHandler_QAbstractGraphicsShapeItem5_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QAbstractGraphicsShapeItemSc a) (QAbstractGraphicsShapeItem x0 -> IO (QRectF t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractGraphicsShapeItem5 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractGraphicsShapeItem5_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractGraphicsShapeItem_setHandler5 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractGraphicsShapeItem x0) -> IO (Ptr (TQRectF t0))
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

instance QqqboundingRect_h (QAbstractGraphicsShapeItem ()) (()) where
 qqboundingRect_h x0 ()
  = withQRectFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractGraphicsShapeItem_boundingRect cobj_x0

foreign import ccall "qtc_QAbstractGraphicsShapeItem_boundingRect" qtc_QAbstractGraphicsShapeItem_boundingRect :: Ptr (TQAbstractGraphicsShapeItem a) -> IO (Ptr (TQRectF ()))

instance QqqboundingRect_h (QAbstractGraphicsShapeItemSc a) (()) where
 qqboundingRect_h x0 ()
  = withQRectFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractGraphicsShapeItem_boundingRect cobj_x0

instance QqboundingRect_h (QAbstractGraphicsShapeItem ()) (()) where
 qboundingRect_h x0 ()
  = withRectFResult $ \crectf_ret_x crectf_ret_y crectf_ret_w crectf_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractGraphicsShapeItem_boundingRect_qth cobj_x0 crectf_ret_x crectf_ret_y crectf_ret_w crectf_ret_h

foreign import ccall "qtc_QAbstractGraphicsShapeItem_boundingRect_qth" qtc_QAbstractGraphicsShapeItem_boundingRect_qth :: Ptr (TQAbstractGraphicsShapeItem a) -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> IO ()

instance QqboundingRect_h (QAbstractGraphicsShapeItemSc a) (()) where
 qboundingRect_h x0 ()
  = withRectFResult $ \crectf_ret_x crectf_ret_y crectf_ret_w crectf_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractGraphicsShapeItem_boundingRect_qth cobj_x0 crectf_ret_x crectf_ret_y crectf_ret_w crectf_ret_h

instance QsetHandler (QAbstractGraphicsShapeItem ()) (QAbstractGraphicsShapeItem x0 -> QGraphicsItem t1 -> ItemSelectionMode -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractGraphicsShapeItem6 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractGraphicsShapeItem6_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractGraphicsShapeItem_setHandler6 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractGraphicsShapeItem x0) -> Ptr (TQGraphicsItem t1) -> CLong -> IO (CBool)
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

foreign import ccall "qtc_QAbstractGraphicsShapeItem_setHandler6" qtc_QAbstractGraphicsShapeItem_setHandler6 :: Ptr (TQAbstractGraphicsShapeItem a) -> CWString -> Ptr (Ptr (TQAbstractGraphicsShapeItem x0) -> Ptr (TQGraphicsItem t1) -> CLong -> IO (CBool)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QAbstractGraphicsShapeItem6 :: (Ptr (TQAbstractGraphicsShapeItem x0) -> Ptr (TQGraphicsItem t1) -> CLong -> IO (CBool)) -> IO (FunPtr (Ptr (TQAbstractGraphicsShapeItem x0) -> Ptr (TQGraphicsItem t1) -> CLong -> IO (CBool)))

foreign import ccall "wrapper" wrapSetHandler_QAbstractGraphicsShapeItem6_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QAbstractGraphicsShapeItemSc a) (QAbstractGraphicsShapeItem x0 -> QGraphicsItem t1 -> ItemSelectionMode -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractGraphicsShapeItem6 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractGraphicsShapeItem6_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractGraphicsShapeItem_setHandler6 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractGraphicsShapeItem x0) -> Ptr (TQGraphicsItem t1) -> CLong -> IO (CBool)
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

instance QsetHandler (QAbstractGraphicsShapeItem ()) (QAbstractGraphicsShapeItem x0 -> QObject t1 -> ItemSelectionMode -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractGraphicsShapeItem7 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractGraphicsShapeItem7_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractGraphicsShapeItem_setHandler7 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractGraphicsShapeItem x0) -> Ptr (TQObject t1) -> CLong -> IO (CBool)
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

foreign import ccall "qtc_QAbstractGraphicsShapeItem_setHandler7" qtc_QAbstractGraphicsShapeItem_setHandler7 :: Ptr (TQAbstractGraphicsShapeItem a) -> CWString -> Ptr (Ptr (TQAbstractGraphicsShapeItem x0) -> Ptr (TQObject t1) -> CLong -> IO (CBool)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QAbstractGraphicsShapeItem7 :: (Ptr (TQAbstractGraphicsShapeItem x0) -> Ptr (TQObject t1) -> CLong -> IO (CBool)) -> IO (FunPtr (Ptr (TQAbstractGraphicsShapeItem x0) -> Ptr (TQObject t1) -> CLong -> IO (CBool)))

foreign import ccall "wrapper" wrapSetHandler_QAbstractGraphicsShapeItem7_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QAbstractGraphicsShapeItemSc a) (QAbstractGraphicsShapeItem x0 -> QObject t1 -> ItemSelectionMode -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractGraphicsShapeItem7 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractGraphicsShapeItem7_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractGraphicsShapeItem_setHandler7 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractGraphicsShapeItem x0) -> Ptr (TQObject t1) -> CLong -> IO (CBool)
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

instance QcollidesWithItem_h (QAbstractGraphicsShapeItem ()) ((QGraphicsItem t1)) where
 collidesWithItem_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractGraphicsShapeItem_collidesWithItem cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractGraphicsShapeItem_collidesWithItem" qtc_QAbstractGraphicsShapeItem_collidesWithItem :: Ptr (TQAbstractGraphicsShapeItem a) -> Ptr (TQGraphicsItem t1) -> IO CBool

instance QcollidesWithItem_h (QAbstractGraphicsShapeItemSc a) ((QGraphicsItem t1)) where
 collidesWithItem_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractGraphicsShapeItem_collidesWithItem cobj_x0 cobj_x1

instance QcollidesWithItem_h (QAbstractGraphicsShapeItem ()) ((QGraphicsItem t1, ItemSelectionMode)) where
 collidesWithItem_h x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractGraphicsShapeItem_collidesWithItem1 cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QAbstractGraphicsShapeItem_collidesWithItem1" qtc_QAbstractGraphicsShapeItem_collidesWithItem1 :: Ptr (TQAbstractGraphicsShapeItem a) -> Ptr (TQGraphicsItem t1) -> CLong -> IO CBool

instance QcollidesWithItem_h (QAbstractGraphicsShapeItemSc a) ((QGraphicsItem t1, ItemSelectionMode)) where
 collidesWithItem_h x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractGraphicsShapeItem_collidesWithItem1 cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

instance QcollidesWithItem_h (QAbstractGraphicsShapeItem ()) ((QGraphicsTextItem t1)) where
 collidesWithItem_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractGraphicsShapeItem_collidesWithItem_graphicstextitem cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractGraphicsShapeItem_collidesWithItem_graphicstextitem" qtc_QAbstractGraphicsShapeItem_collidesWithItem_graphicstextitem :: Ptr (TQAbstractGraphicsShapeItem a) -> Ptr (TQGraphicsTextItem t1) -> IO CBool

instance QcollidesWithItem_h (QAbstractGraphicsShapeItemSc a) ((QGraphicsTextItem t1)) where
 collidesWithItem_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractGraphicsShapeItem_collidesWithItem_graphicstextitem cobj_x0 cobj_x1

instance QcollidesWithItem_h (QAbstractGraphicsShapeItem ()) ((QGraphicsTextItem t1, ItemSelectionMode)) where
 collidesWithItem_h x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractGraphicsShapeItem_collidesWithItem1_graphicstextitem cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QAbstractGraphicsShapeItem_collidesWithItem1_graphicstextitem" qtc_QAbstractGraphicsShapeItem_collidesWithItem1_graphicstextitem :: Ptr (TQAbstractGraphicsShapeItem a) -> Ptr (TQGraphicsTextItem t1) -> CLong -> IO CBool

instance QcollidesWithItem_h (QAbstractGraphicsShapeItemSc a) ((QGraphicsTextItem t1, ItemSelectionMode)) where
 collidesWithItem_h x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractGraphicsShapeItem_collidesWithItem1_graphicstextitem cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

instance QsetHandler (QAbstractGraphicsShapeItem ()) (QAbstractGraphicsShapeItem x0 -> QPainterPath t1 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractGraphicsShapeItem8 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractGraphicsShapeItem8_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractGraphicsShapeItem_setHandler8 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractGraphicsShapeItem x0) -> Ptr (TQPainterPath t1) -> IO (CBool)
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

foreign import ccall "qtc_QAbstractGraphicsShapeItem_setHandler8" qtc_QAbstractGraphicsShapeItem_setHandler8 :: Ptr (TQAbstractGraphicsShapeItem a) -> CWString -> Ptr (Ptr (TQAbstractGraphicsShapeItem x0) -> Ptr (TQPainterPath t1) -> IO (CBool)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QAbstractGraphicsShapeItem8 :: (Ptr (TQAbstractGraphicsShapeItem x0) -> Ptr (TQPainterPath t1) -> IO (CBool)) -> IO (FunPtr (Ptr (TQAbstractGraphicsShapeItem x0) -> Ptr (TQPainterPath t1) -> IO (CBool)))

foreign import ccall "wrapper" wrapSetHandler_QAbstractGraphicsShapeItem8_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QAbstractGraphicsShapeItemSc a) (QAbstractGraphicsShapeItem x0 -> QPainterPath t1 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractGraphicsShapeItem8 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractGraphicsShapeItem8_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractGraphicsShapeItem_setHandler8 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractGraphicsShapeItem x0) -> Ptr (TQPainterPath t1) -> IO (CBool)
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

instance QsetHandler (QAbstractGraphicsShapeItem ()) (QAbstractGraphicsShapeItem x0 -> QPainterPath t1 -> ItemSelectionMode -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractGraphicsShapeItem9 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractGraphicsShapeItem9_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractGraphicsShapeItem_setHandler9 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractGraphicsShapeItem x0) -> Ptr (TQPainterPath t1) -> CLong -> IO (CBool)
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

foreign import ccall "qtc_QAbstractGraphicsShapeItem_setHandler9" qtc_QAbstractGraphicsShapeItem_setHandler9 :: Ptr (TQAbstractGraphicsShapeItem a) -> CWString -> Ptr (Ptr (TQAbstractGraphicsShapeItem x0) -> Ptr (TQPainterPath t1) -> CLong -> IO (CBool)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QAbstractGraphicsShapeItem9 :: (Ptr (TQAbstractGraphicsShapeItem x0) -> Ptr (TQPainterPath t1) -> CLong -> IO (CBool)) -> IO (FunPtr (Ptr (TQAbstractGraphicsShapeItem x0) -> Ptr (TQPainterPath t1) -> CLong -> IO (CBool)))

foreign import ccall "wrapper" wrapSetHandler_QAbstractGraphicsShapeItem9_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QAbstractGraphicsShapeItemSc a) (QAbstractGraphicsShapeItem x0 -> QPainterPath t1 -> ItemSelectionMode -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractGraphicsShapeItem9 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractGraphicsShapeItem9_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractGraphicsShapeItem_setHandler9 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractGraphicsShapeItem x0) -> Ptr (TQPainterPath t1) -> CLong -> IO (CBool)
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

instance QcollidesWithPath_h (QAbstractGraphicsShapeItem ()) ((QPainterPath t1)) where
 collidesWithPath_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractGraphicsShapeItem_collidesWithPath cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractGraphicsShapeItem_collidesWithPath" qtc_QAbstractGraphicsShapeItem_collidesWithPath :: Ptr (TQAbstractGraphicsShapeItem a) -> Ptr (TQPainterPath t1) -> IO CBool

instance QcollidesWithPath_h (QAbstractGraphicsShapeItemSc a) ((QPainterPath t1)) where
 collidesWithPath_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractGraphicsShapeItem_collidesWithPath cobj_x0 cobj_x1

instance QcollidesWithPath_h (QAbstractGraphicsShapeItem ()) ((QPainterPath t1, ItemSelectionMode)) where
 collidesWithPath_h x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractGraphicsShapeItem_collidesWithPath1 cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QAbstractGraphicsShapeItem_collidesWithPath1" qtc_QAbstractGraphicsShapeItem_collidesWithPath1 :: Ptr (TQAbstractGraphicsShapeItem a) -> Ptr (TQPainterPath t1) -> CLong -> IO CBool

instance QcollidesWithPath_h (QAbstractGraphicsShapeItemSc a) ((QPainterPath t1, ItemSelectionMode)) where
 collidesWithPath_h x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractGraphicsShapeItem_collidesWithPath1 cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

instance QsetHandler (QAbstractGraphicsShapeItem ()) (QAbstractGraphicsShapeItem x0 -> QPointF t1 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractGraphicsShapeItem10 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractGraphicsShapeItem10_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractGraphicsShapeItem_setHandler10 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractGraphicsShapeItem x0) -> Ptr (TQPointF t1) -> IO (CBool)
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

foreign import ccall "qtc_QAbstractGraphicsShapeItem_setHandler10" qtc_QAbstractGraphicsShapeItem_setHandler10 :: Ptr (TQAbstractGraphicsShapeItem a) -> CWString -> Ptr (Ptr (TQAbstractGraphicsShapeItem x0) -> Ptr (TQPointF t1) -> IO (CBool)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QAbstractGraphicsShapeItem10 :: (Ptr (TQAbstractGraphicsShapeItem x0) -> Ptr (TQPointF t1) -> IO (CBool)) -> IO (FunPtr (Ptr (TQAbstractGraphicsShapeItem x0) -> Ptr (TQPointF t1) -> IO (CBool)))

foreign import ccall "wrapper" wrapSetHandler_QAbstractGraphicsShapeItem10_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QAbstractGraphicsShapeItemSc a) (QAbstractGraphicsShapeItem x0 -> QPointF t1 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractGraphicsShapeItem10 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractGraphicsShapeItem10_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractGraphicsShapeItem_setHandler10 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractGraphicsShapeItem x0) -> Ptr (TQPointF t1) -> IO (CBool)
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

instance Qqcontains_h (QAbstractGraphicsShapeItem ()) ((PointF)) where
 qcontains_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCPointF x1 $ \cpointf_x1_x cpointf_x1_y -> 
    qtc_QAbstractGraphicsShapeItem_contains_qth cobj_x0 cpointf_x1_x cpointf_x1_y 

foreign import ccall "qtc_QAbstractGraphicsShapeItem_contains_qth" qtc_QAbstractGraphicsShapeItem_contains_qth :: Ptr (TQAbstractGraphicsShapeItem a) -> CDouble -> CDouble -> IO CBool

instance Qqcontains_h (QAbstractGraphicsShapeItemSc a) ((PointF)) where
 qcontains_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCPointF x1 $ \cpointf_x1_x cpointf_x1_y -> 
    qtc_QAbstractGraphicsShapeItem_contains_qth cobj_x0 cpointf_x1_x cpointf_x1_y 

instance Qqqcontains_h (QAbstractGraphicsShapeItem ()) ((QPointF t1)) where
 qqcontains_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractGraphicsShapeItem_contains cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractGraphicsShapeItem_contains" qtc_QAbstractGraphicsShapeItem_contains :: Ptr (TQAbstractGraphicsShapeItem a) -> Ptr (TQPointF t1) -> IO CBool

instance Qqqcontains_h (QAbstractGraphicsShapeItemSc a) ((QPointF t1)) where
 qqcontains_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractGraphicsShapeItem_contains cobj_x0 cobj_x1

instance QsetHandler (QAbstractGraphicsShapeItem ()) (QAbstractGraphicsShapeItem x0 -> QEvent t1 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractGraphicsShapeItem11 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractGraphicsShapeItem11_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractGraphicsShapeItem_setHandler11 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractGraphicsShapeItem x0) -> Ptr (TQEvent t1) -> IO ()
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

foreign import ccall "qtc_QAbstractGraphicsShapeItem_setHandler11" qtc_QAbstractGraphicsShapeItem_setHandler11 :: Ptr (TQAbstractGraphicsShapeItem a) -> CWString -> Ptr (Ptr (TQAbstractGraphicsShapeItem x0) -> Ptr (TQEvent t1) -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QAbstractGraphicsShapeItem11 :: (Ptr (TQAbstractGraphicsShapeItem x0) -> Ptr (TQEvent t1) -> IO ()) -> IO (FunPtr (Ptr (TQAbstractGraphicsShapeItem x0) -> Ptr (TQEvent t1) -> IO ()))

foreign import ccall "wrapper" wrapSetHandler_QAbstractGraphicsShapeItem11_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QAbstractGraphicsShapeItemSc a) (QAbstractGraphicsShapeItem x0 -> QEvent t1 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractGraphicsShapeItem11 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractGraphicsShapeItem11_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractGraphicsShapeItem_setHandler11 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractGraphicsShapeItem x0) -> Ptr (TQEvent t1) -> IO ()
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

instance QcontextMenuEvent_h (QAbstractGraphicsShapeItem ()) ((QGraphicsSceneContextMenuEvent t1)) where
 contextMenuEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractGraphicsShapeItem_contextMenuEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractGraphicsShapeItem_contextMenuEvent" qtc_QAbstractGraphicsShapeItem_contextMenuEvent :: Ptr (TQAbstractGraphicsShapeItem a) -> Ptr (TQGraphicsSceneContextMenuEvent t1) -> IO ()

instance QcontextMenuEvent_h (QAbstractGraphicsShapeItemSc a) ((QGraphicsSceneContextMenuEvent t1)) where
 contextMenuEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractGraphicsShapeItem_contextMenuEvent cobj_x0 cobj_x1

instance QdragEnterEvent_h (QAbstractGraphicsShapeItem ()) ((QGraphicsSceneDragDropEvent t1)) where
 dragEnterEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractGraphicsShapeItem_dragEnterEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractGraphicsShapeItem_dragEnterEvent" qtc_QAbstractGraphicsShapeItem_dragEnterEvent :: Ptr (TQAbstractGraphicsShapeItem a) -> Ptr (TQGraphicsSceneDragDropEvent t1) -> IO ()

instance QdragEnterEvent_h (QAbstractGraphicsShapeItemSc a) ((QGraphicsSceneDragDropEvent t1)) where
 dragEnterEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractGraphicsShapeItem_dragEnterEvent cobj_x0 cobj_x1

instance QdragLeaveEvent_h (QAbstractGraphicsShapeItem ()) ((QGraphicsSceneDragDropEvent t1)) where
 dragLeaveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractGraphicsShapeItem_dragLeaveEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractGraphicsShapeItem_dragLeaveEvent" qtc_QAbstractGraphicsShapeItem_dragLeaveEvent :: Ptr (TQAbstractGraphicsShapeItem a) -> Ptr (TQGraphicsSceneDragDropEvent t1) -> IO ()

instance QdragLeaveEvent_h (QAbstractGraphicsShapeItemSc a) ((QGraphicsSceneDragDropEvent t1)) where
 dragLeaveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractGraphicsShapeItem_dragLeaveEvent cobj_x0 cobj_x1

instance QdragMoveEvent_h (QAbstractGraphicsShapeItem ()) ((QGraphicsSceneDragDropEvent t1)) where
 dragMoveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractGraphicsShapeItem_dragMoveEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractGraphicsShapeItem_dragMoveEvent" qtc_QAbstractGraphicsShapeItem_dragMoveEvent :: Ptr (TQAbstractGraphicsShapeItem a) -> Ptr (TQGraphicsSceneDragDropEvent t1) -> IO ()

instance QdragMoveEvent_h (QAbstractGraphicsShapeItemSc a) ((QGraphicsSceneDragDropEvent t1)) where
 dragMoveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractGraphicsShapeItem_dragMoveEvent cobj_x0 cobj_x1

instance QdropEvent_h (QAbstractGraphicsShapeItem ()) ((QGraphicsSceneDragDropEvent t1)) where
 dropEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractGraphicsShapeItem_dropEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractGraphicsShapeItem_dropEvent" qtc_QAbstractGraphicsShapeItem_dropEvent :: Ptr (TQAbstractGraphicsShapeItem a) -> Ptr (TQGraphicsSceneDragDropEvent t1) -> IO ()

instance QdropEvent_h (QAbstractGraphicsShapeItemSc a) ((QGraphicsSceneDragDropEvent t1)) where
 dropEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractGraphicsShapeItem_dropEvent cobj_x0 cobj_x1

instance QfocusInEvent_h (QAbstractGraphicsShapeItem ()) ((QFocusEvent t1)) where
 focusInEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractGraphicsShapeItem_focusInEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractGraphicsShapeItem_focusInEvent" qtc_QAbstractGraphicsShapeItem_focusInEvent :: Ptr (TQAbstractGraphicsShapeItem a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusInEvent_h (QAbstractGraphicsShapeItemSc a) ((QFocusEvent t1)) where
 focusInEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractGraphicsShapeItem_focusInEvent cobj_x0 cobj_x1

instance QfocusOutEvent_h (QAbstractGraphicsShapeItem ()) ((QFocusEvent t1)) where
 focusOutEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractGraphicsShapeItem_focusOutEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractGraphicsShapeItem_focusOutEvent" qtc_QAbstractGraphicsShapeItem_focusOutEvent :: Ptr (TQAbstractGraphicsShapeItem a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusOutEvent_h (QAbstractGraphicsShapeItemSc a) ((QFocusEvent t1)) where
 focusOutEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractGraphicsShapeItem_focusOutEvent cobj_x0 cobj_x1

instance QhoverEnterEvent_h (QAbstractGraphicsShapeItem ()) ((QGraphicsSceneHoverEvent t1)) where
 hoverEnterEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractGraphicsShapeItem_hoverEnterEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractGraphicsShapeItem_hoverEnterEvent" qtc_QAbstractGraphicsShapeItem_hoverEnterEvent :: Ptr (TQAbstractGraphicsShapeItem a) -> Ptr (TQGraphicsSceneHoverEvent t1) -> IO ()

instance QhoverEnterEvent_h (QAbstractGraphicsShapeItemSc a) ((QGraphicsSceneHoverEvent t1)) where
 hoverEnterEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractGraphicsShapeItem_hoverEnterEvent cobj_x0 cobj_x1

instance QhoverLeaveEvent_h (QAbstractGraphicsShapeItem ()) ((QGraphicsSceneHoverEvent t1)) where
 hoverLeaveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractGraphicsShapeItem_hoverLeaveEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractGraphicsShapeItem_hoverLeaveEvent" qtc_QAbstractGraphicsShapeItem_hoverLeaveEvent :: Ptr (TQAbstractGraphicsShapeItem a) -> Ptr (TQGraphicsSceneHoverEvent t1) -> IO ()

instance QhoverLeaveEvent_h (QAbstractGraphicsShapeItemSc a) ((QGraphicsSceneHoverEvent t1)) where
 hoverLeaveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractGraphicsShapeItem_hoverLeaveEvent cobj_x0 cobj_x1

instance QhoverMoveEvent_h (QAbstractGraphicsShapeItem ()) ((QGraphicsSceneHoverEvent t1)) where
 hoverMoveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractGraphicsShapeItem_hoverMoveEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractGraphicsShapeItem_hoverMoveEvent" qtc_QAbstractGraphicsShapeItem_hoverMoveEvent :: Ptr (TQAbstractGraphicsShapeItem a) -> Ptr (TQGraphicsSceneHoverEvent t1) -> IO ()

instance QhoverMoveEvent_h (QAbstractGraphicsShapeItemSc a) ((QGraphicsSceneHoverEvent t1)) where
 hoverMoveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractGraphicsShapeItem_hoverMoveEvent cobj_x0 cobj_x1

instance QinputMethodEvent_h (QAbstractGraphicsShapeItem ()) ((QInputMethodEvent t1)) where
 inputMethodEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractGraphicsShapeItem_inputMethodEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractGraphicsShapeItem_inputMethodEvent" qtc_QAbstractGraphicsShapeItem_inputMethodEvent :: Ptr (TQAbstractGraphicsShapeItem a) -> Ptr (TQInputMethodEvent t1) -> IO ()

instance QinputMethodEvent_h (QAbstractGraphicsShapeItemSc a) ((QInputMethodEvent t1)) where
 inputMethodEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractGraphicsShapeItem_inputMethodEvent cobj_x0 cobj_x1

instance QsetHandler (QAbstractGraphicsShapeItem ()) (QAbstractGraphicsShapeItem x0 -> InputMethodQuery -> IO (QVariant t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractGraphicsShapeItem12 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractGraphicsShapeItem12_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractGraphicsShapeItem_setHandler12 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractGraphicsShapeItem x0) -> CLong -> IO (Ptr (TQVariant t0))
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

foreign import ccall "qtc_QAbstractGraphicsShapeItem_setHandler12" qtc_QAbstractGraphicsShapeItem_setHandler12 :: Ptr (TQAbstractGraphicsShapeItem a) -> CWString -> Ptr (Ptr (TQAbstractGraphicsShapeItem x0) -> CLong -> IO (Ptr (TQVariant t0))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QAbstractGraphicsShapeItem12 :: (Ptr (TQAbstractGraphicsShapeItem x0) -> CLong -> IO (Ptr (TQVariant t0))) -> IO (FunPtr (Ptr (TQAbstractGraphicsShapeItem x0) -> CLong -> IO (Ptr (TQVariant t0))))

foreign import ccall "wrapper" wrapSetHandler_QAbstractGraphicsShapeItem12_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QAbstractGraphicsShapeItemSc a) (QAbstractGraphicsShapeItem x0 -> InputMethodQuery -> IO (QVariant t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractGraphicsShapeItem12 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractGraphicsShapeItem12_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractGraphicsShapeItem_setHandler12 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractGraphicsShapeItem x0) -> CLong -> IO (Ptr (TQVariant t0))
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

instance QinputMethodQuery_h (QAbstractGraphicsShapeItem ()) ((InputMethodQuery)) where
 inputMethodQuery_h x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractGraphicsShapeItem_inputMethodQuery cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QAbstractGraphicsShapeItem_inputMethodQuery" qtc_QAbstractGraphicsShapeItem_inputMethodQuery :: Ptr (TQAbstractGraphicsShapeItem a) -> CLong -> IO (Ptr (TQVariant ()))

instance QinputMethodQuery_h (QAbstractGraphicsShapeItemSc a) ((InputMethodQuery)) where
 inputMethodQuery_h x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractGraphicsShapeItem_inputMethodQuery cobj_x0 (toCLong $ qEnum_toInt x1)

instance QsetHandler (QAbstractGraphicsShapeItem ()) (QAbstractGraphicsShapeItem x0 -> GraphicsItemChange -> QVariant t2 -> IO (QVariant t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractGraphicsShapeItem13 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractGraphicsShapeItem13_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractGraphicsShapeItem_setHandler13 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractGraphicsShapeItem x0) -> CLong -> Ptr (TQVariant t2) -> IO (Ptr (TQVariant t0))
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

foreign import ccall "qtc_QAbstractGraphicsShapeItem_setHandler13" qtc_QAbstractGraphicsShapeItem_setHandler13 :: Ptr (TQAbstractGraphicsShapeItem a) -> CWString -> Ptr (Ptr (TQAbstractGraphicsShapeItem x0) -> CLong -> Ptr (TQVariant t2) -> IO (Ptr (TQVariant t0))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QAbstractGraphicsShapeItem13 :: (Ptr (TQAbstractGraphicsShapeItem x0) -> CLong -> Ptr (TQVariant t2) -> IO (Ptr (TQVariant t0))) -> IO (FunPtr (Ptr (TQAbstractGraphicsShapeItem x0) -> CLong -> Ptr (TQVariant t2) -> IO (Ptr (TQVariant t0))))

foreign import ccall "wrapper" wrapSetHandler_QAbstractGraphicsShapeItem13_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QAbstractGraphicsShapeItemSc a) (QAbstractGraphicsShapeItem x0 -> GraphicsItemChange -> QVariant t2 -> IO (QVariant t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractGraphicsShapeItem13 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractGraphicsShapeItem13_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractGraphicsShapeItem_setHandler13 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractGraphicsShapeItem x0) -> CLong -> Ptr (TQVariant t2) -> IO (Ptr (TQVariant t0))
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

instance QitemChange_h (QAbstractGraphicsShapeItem ()) ((GraphicsItemChange, QVariant t2)) where
 itemChange_h x0 (x1, x2)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QAbstractGraphicsShapeItem_itemChange cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2

foreign import ccall "qtc_QAbstractGraphicsShapeItem_itemChange" qtc_QAbstractGraphicsShapeItem_itemChange :: Ptr (TQAbstractGraphicsShapeItem a) -> CLong -> Ptr (TQVariant t2) -> IO (Ptr (TQVariant ()))

instance QitemChange_h (QAbstractGraphicsShapeItemSc a) ((GraphicsItemChange, QVariant t2)) where
 itemChange_h x0 (x1, x2)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QAbstractGraphicsShapeItem_itemChange cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2

instance QkeyPressEvent_h (QAbstractGraphicsShapeItem ()) ((QKeyEvent t1)) where
 keyPressEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractGraphicsShapeItem_keyPressEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractGraphicsShapeItem_keyPressEvent" qtc_QAbstractGraphicsShapeItem_keyPressEvent :: Ptr (TQAbstractGraphicsShapeItem a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyPressEvent_h (QAbstractGraphicsShapeItemSc a) ((QKeyEvent t1)) where
 keyPressEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractGraphicsShapeItem_keyPressEvent cobj_x0 cobj_x1

instance QkeyReleaseEvent_h (QAbstractGraphicsShapeItem ()) ((QKeyEvent t1)) where
 keyReleaseEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractGraphicsShapeItem_keyReleaseEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractGraphicsShapeItem_keyReleaseEvent" qtc_QAbstractGraphicsShapeItem_keyReleaseEvent :: Ptr (TQAbstractGraphicsShapeItem a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyReleaseEvent_h (QAbstractGraphicsShapeItemSc a) ((QKeyEvent t1)) where
 keyReleaseEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractGraphicsShapeItem_keyReleaseEvent cobj_x0 cobj_x1

instance QmouseDoubleClickEvent_h (QAbstractGraphicsShapeItem ()) ((QGraphicsSceneMouseEvent t1)) where
 mouseDoubleClickEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractGraphicsShapeItem_mouseDoubleClickEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractGraphicsShapeItem_mouseDoubleClickEvent" qtc_QAbstractGraphicsShapeItem_mouseDoubleClickEvent :: Ptr (TQAbstractGraphicsShapeItem a) -> Ptr (TQGraphicsSceneMouseEvent t1) -> IO ()

instance QmouseDoubleClickEvent_h (QAbstractGraphicsShapeItemSc a) ((QGraphicsSceneMouseEvent t1)) where
 mouseDoubleClickEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractGraphicsShapeItem_mouseDoubleClickEvent cobj_x0 cobj_x1

instance QmouseMoveEvent_h (QAbstractGraphicsShapeItem ()) ((QGraphicsSceneMouseEvent t1)) where
 mouseMoveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractGraphicsShapeItem_mouseMoveEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractGraphicsShapeItem_mouseMoveEvent" qtc_QAbstractGraphicsShapeItem_mouseMoveEvent :: Ptr (TQAbstractGraphicsShapeItem a) -> Ptr (TQGraphicsSceneMouseEvent t1) -> IO ()

instance QmouseMoveEvent_h (QAbstractGraphicsShapeItemSc a) ((QGraphicsSceneMouseEvent t1)) where
 mouseMoveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractGraphicsShapeItem_mouseMoveEvent cobj_x0 cobj_x1

instance QmousePressEvent_h (QAbstractGraphicsShapeItem ()) ((QGraphicsSceneMouseEvent t1)) where
 mousePressEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractGraphicsShapeItem_mousePressEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractGraphicsShapeItem_mousePressEvent" qtc_QAbstractGraphicsShapeItem_mousePressEvent :: Ptr (TQAbstractGraphicsShapeItem a) -> Ptr (TQGraphicsSceneMouseEvent t1) -> IO ()

instance QmousePressEvent_h (QAbstractGraphicsShapeItemSc a) ((QGraphicsSceneMouseEvent t1)) where
 mousePressEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractGraphicsShapeItem_mousePressEvent cobj_x0 cobj_x1

instance QmouseReleaseEvent_h (QAbstractGraphicsShapeItem ()) ((QGraphicsSceneMouseEvent t1)) where
 mouseReleaseEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractGraphicsShapeItem_mouseReleaseEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractGraphicsShapeItem_mouseReleaseEvent" qtc_QAbstractGraphicsShapeItem_mouseReleaseEvent :: Ptr (TQAbstractGraphicsShapeItem a) -> Ptr (TQGraphicsSceneMouseEvent t1) -> IO ()

instance QmouseReleaseEvent_h (QAbstractGraphicsShapeItemSc a) ((QGraphicsSceneMouseEvent t1)) where
 mouseReleaseEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractGraphicsShapeItem_mouseReleaseEvent cobj_x0 cobj_x1

instance QsetHandler (QAbstractGraphicsShapeItem ()) (QAbstractGraphicsShapeItem x0 -> QPainter t1 -> QStyleOption t2 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractGraphicsShapeItem14 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractGraphicsShapeItem14_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractGraphicsShapeItem_setHandler14 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractGraphicsShapeItem x0) -> Ptr (TQPainter t1) -> Ptr (TQStyleOption t2) -> IO ()
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

foreign import ccall "qtc_QAbstractGraphicsShapeItem_setHandler14" qtc_QAbstractGraphicsShapeItem_setHandler14 :: Ptr (TQAbstractGraphicsShapeItem a) -> CWString -> Ptr (Ptr (TQAbstractGraphicsShapeItem x0) -> Ptr (TQPainter t1) -> Ptr (TQStyleOption t2) -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QAbstractGraphicsShapeItem14 :: (Ptr (TQAbstractGraphicsShapeItem x0) -> Ptr (TQPainter t1) -> Ptr (TQStyleOption t2) -> IO ()) -> IO (FunPtr (Ptr (TQAbstractGraphicsShapeItem x0) -> Ptr (TQPainter t1) -> Ptr (TQStyleOption t2) -> IO ()))

foreign import ccall "wrapper" wrapSetHandler_QAbstractGraphicsShapeItem14_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QAbstractGraphicsShapeItemSc a) (QAbstractGraphicsShapeItem x0 -> QPainter t1 -> QStyleOption t2 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractGraphicsShapeItem14 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractGraphicsShapeItem14_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractGraphicsShapeItem_setHandler14 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractGraphicsShapeItem x0) -> Ptr (TQPainter t1) -> Ptr (TQStyleOption t2) -> IO ()
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

instance QsetHandler (QAbstractGraphicsShapeItem ()) (QAbstractGraphicsShapeItem x0 -> QPainter t1 -> QStyleOption t2 -> QObject t3 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractGraphicsShapeItem15 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractGraphicsShapeItem15_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractGraphicsShapeItem_setHandler15 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractGraphicsShapeItem x0) -> Ptr (TQPainter t1) -> Ptr (TQStyleOption t2) -> Ptr (TQObject t3) -> IO ()
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

foreign import ccall "qtc_QAbstractGraphicsShapeItem_setHandler15" qtc_QAbstractGraphicsShapeItem_setHandler15 :: Ptr (TQAbstractGraphicsShapeItem a) -> CWString -> Ptr (Ptr (TQAbstractGraphicsShapeItem x0) -> Ptr (TQPainter t1) -> Ptr (TQStyleOption t2) -> Ptr (TQObject t3) -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QAbstractGraphicsShapeItem15 :: (Ptr (TQAbstractGraphicsShapeItem x0) -> Ptr (TQPainter t1) -> Ptr (TQStyleOption t2) -> Ptr (TQObject t3) -> IO ()) -> IO (FunPtr (Ptr (TQAbstractGraphicsShapeItem x0) -> Ptr (TQPainter t1) -> Ptr (TQStyleOption t2) -> Ptr (TQObject t3) -> IO ()))

foreign import ccall "wrapper" wrapSetHandler_QAbstractGraphicsShapeItem15_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QAbstractGraphicsShapeItemSc a) (QAbstractGraphicsShapeItem x0 -> QPainter t1 -> QStyleOption t2 -> QObject t3 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractGraphicsShapeItem15 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractGraphicsShapeItem15_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractGraphicsShapeItem_setHandler15 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractGraphicsShapeItem x0) -> Ptr (TQPainter t1) -> Ptr (TQStyleOption t2) -> Ptr (TQObject t3) -> IO ()
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

instance Qpaint_h (QAbstractGraphicsShapeItem ()) ((QPainter t1, QStyleOptionGraphicsItem t2)) where
 paint_h x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QAbstractGraphicsShapeItem_paint cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QAbstractGraphicsShapeItem_paint" qtc_QAbstractGraphicsShapeItem_paint :: Ptr (TQAbstractGraphicsShapeItem a) -> Ptr (TQPainter t1) -> Ptr (TQStyleOptionGraphicsItem t2) -> IO ()

instance Qpaint_h (QAbstractGraphicsShapeItemSc a) ((QPainter t1, QStyleOptionGraphicsItem t2)) where
 paint_h x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QAbstractGraphicsShapeItem_paint cobj_x0 cobj_x1 cobj_x2

instance Qpaint_h (QAbstractGraphicsShapeItem ()) ((QPainter t1, QStyleOptionGraphicsItem t2, QWidget t3)) where
 paint_h x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QAbstractGraphicsShapeItem_paint1 cobj_x0 cobj_x1 cobj_x2 cobj_x3

foreign import ccall "qtc_QAbstractGraphicsShapeItem_paint1" qtc_QAbstractGraphicsShapeItem_paint1 :: Ptr (TQAbstractGraphicsShapeItem a) -> Ptr (TQPainter t1) -> Ptr (TQStyleOptionGraphicsItem t2) -> Ptr (TQWidget t3) -> IO ()

instance Qpaint_h (QAbstractGraphicsShapeItemSc a) ((QPainter t1, QStyleOptionGraphicsItem t2, QWidget t3)) where
 paint_h x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QAbstractGraphicsShapeItem_paint1 cobj_x0 cobj_x1 cobj_x2 cobj_x3

instance QsetHandler (QAbstractGraphicsShapeItem ()) (QAbstractGraphicsShapeItem x0 -> QEvent t1 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractGraphicsShapeItem16 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractGraphicsShapeItem16_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractGraphicsShapeItem_setHandler16 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractGraphicsShapeItem x0) -> Ptr (TQEvent t1) -> IO (CBool)
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

foreign import ccall "qtc_QAbstractGraphicsShapeItem_setHandler16" qtc_QAbstractGraphicsShapeItem_setHandler16 :: Ptr (TQAbstractGraphicsShapeItem a) -> CWString -> Ptr (Ptr (TQAbstractGraphicsShapeItem x0) -> Ptr (TQEvent t1) -> IO (CBool)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QAbstractGraphicsShapeItem16 :: (Ptr (TQAbstractGraphicsShapeItem x0) -> Ptr (TQEvent t1) -> IO (CBool)) -> IO (FunPtr (Ptr (TQAbstractGraphicsShapeItem x0) -> Ptr (TQEvent t1) -> IO (CBool)))

foreign import ccall "wrapper" wrapSetHandler_QAbstractGraphicsShapeItem16_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QAbstractGraphicsShapeItemSc a) (QAbstractGraphicsShapeItem x0 -> QEvent t1 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractGraphicsShapeItem16 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractGraphicsShapeItem16_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractGraphicsShapeItem_setHandler16 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractGraphicsShapeItem x0) -> Ptr (TQEvent t1) -> IO (CBool)
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

instance QsceneEvent_h (QAbstractGraphicsShapeItem ()) ((QEvent t1)) where
 sceneEvent_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractGraphicsShapeItem_sceneEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractGraphicsShapeItem_sceneEvent" qtc_QAbstractGraphicsShapeItem_sceneEvent :: Ptr (TQAbstractGraphicsShapeItem a) -> Ptr (TQEvent t1) -> IO CBool

instance QsceneEvent_h (QAbstractGraphicsShapeItemSc a) ((QEvent t1)) where
 sceneEvent_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractGraphicsShapeItem_sceneEvent cobj_x0 cobj_x1

instance QsetHandler (QAbstractGraphicsShapeItem ()) (QAbstractGraphicsShapeItem x0 -> QGraphicsItem t1 -> QEvent t2 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractGraphicsShapeItem17 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractGraphicsShapeItem17_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractGraphicsShapeItem_setHandler17 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractGraphicsShapeItem x0) -> Ptr (TQGraphicsItem t1) -> Ptr (TQEvent t2) -> IO (CBool)
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

foreign import ccall "qtc_QAbstractGraphicsShapeItem_setHandler17" qtc_QAbstractGraphicsShapeItem_setHandler17 :: Ptr (TQAbstractGraphicsShapeItem a) -> CWString -> Ptr (Ptr (TQAbstractGraphicsShapeItem x0) -> Ptr (TQGraphicsItem t1) -> Ptr (TQEvent t2) -> IO (CBool)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QAbstractGraphicsShapeItem17 :: (Ptr (TQAbstractGraphicsShapeItem x0) -> Ptr (TQGraphicsItem t1) -> Ptr (TQEvent t2) -> IO (CBool)) -> IO (FunPtr (Ptr (TQAbstractGraphicsShapeItem x0) -> Ptr (TQGraphicsItem t1) -> Ptr (TQEvent t2) -> IO (CBool)))

foreign import ccall "wrapper" wrapSetHandler_QAbstractGraphicsShapeItem17_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QAbstractGraphicsShapeItemSc a) (QAbstractGraphicsShapeItem x0 -> QGraphicsItem t1 -> QEvent t2 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractGraphicsShapeItem17 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractGraphicsShapeItem17_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractGraphicsShapeItem_setHandler17 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractGraphicsShapeItem x0) -> Ptr (TQGraphicsItem t1) -> Ptr (TQEvent t2) -> IO (CBool)
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

instance QsetHandler (QAbstractGraphicsShapeItem ()) (QAbstractGraphicsShapeItem x0 -> QObject t1 -> QEvent t2 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractGraphicsShapeItem18 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractGraphicsShapeItem18_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractGraphicsShapeItem_setHandler18 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractGraphicsShapeItem x0) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO (CBool)
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

foreign import ccall "qtc_QAbstractGraphicsShapeItem_setHandler18" qtc_QAbstractGraphicsShapeItem_setHandler18 :: Ptr (TQAbstractGraphicsShapeItem a) -> CWString -> Ptr (Ptr (TQAbstractGraphicsShapeItem x0) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO (CBool)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QAbstractGraphicsShapeItem18 :: (Ptr (TQAbstractGraphicsShapeItem x0) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO (CBool)) -> IO (FunPtr (Ptr (TQAbstractGraphicsShapeItem x0) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO (CBool)))

foreign import ccall "wrapper" wrapSetHandler_QAbstractGraphicsShapeItem18_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QAbstractGraphicsShapeItemSc a) (QAbstractGraphicsShapeItem x0 -> QObject t1 -> QEvent t2 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractGraphicsShapeItem18 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractGraphicsShapeItem18_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractGraphicsShapeItem_setHandler18 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractGraphicsShapeItem x0) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO (CBool)
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

instance QsceneEventFilter_h (QAbstractGraphicsShapeItem ()) ((QGraphicsItem t1, QEvent t2)) where
 sceneEventFilter_h x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QAbstractGraphicsShapeItem_sceneEventFilter cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QAbstractGraphicsShapeItem_sceneEventFilter" qtc_QAbstractGraphicsShapeItem_sceneEventFilter :: Ptr (TQAbstractGraphicsShapeItem a) -> Ptr (TQGraphicsItem t1) -> Ptr (TQEvent t2) -> IO CBool

instance QsceneEventFilter_h (QAbstractGraphicsShapeItemSc a) ((QGraphicsItem t1, QEvent t2)) where
 sceneEventFilter_h x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QAbstractGraphicsShapeItem_sceneEventFilter cobj_x0 cobj_x1 cobj_x2

instance QsceneEventFilter_h (QAbstractGraphicsShapeItem ()) ((QGraphicsTextItem t1, QEvent t2)) where
 sceneEventFilter_h x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QAbstractGraphicsShapeItem_sceneEventFilter_graphicstextitem cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QAbstractGraphicsShapeItem_sceneEventFilter_graphicstextitem" qtc_QAbstractGraphicsShapeItem_sceneEventFilter_graphicstextitem :: Ptr (TQAbstractGraphicsShapeItem a) -> Ptr (TQGraphicsTextItem t1) -> Ptr (TQEvent t2) -> IO CBool

instance QsceneEventFilter_h (QAbstractGraphicsShapeItemSc a) ((QGraphicsTextItem t1, QEvent t2)) where
 sceneEventFilter_h x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QAbstractGraphicsShapeItem_sceneEventFilter_graphicstextitem cobj_x0 cobj_x1 cobj_x2

instance Qshape_h (QAbstractGraphicsShapeItem ()) (()) where
 shape_h x0 ()
  = withQPainterPathResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractGraphicsShapeItem_shape cobj_x0

foreign import ccall "qtc_QAbstractGraphicsShapeItem_shape" qtc_QAbstractGraphicsShapeItem_shape :: Ptr (TQAbstractGraphicsShapeItem a) -> IO (Ptr (TQPainterPath ()))

instance Qshape_h (QAbstractGraphicsShapeItemSc a) (()) where
 shape_h x0 ()
  = withQPainterPathResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractGraphicsShapeItem_shape cobj_x0

instance QsetHandler (QAbstractGraphicsShapeItem ()) (QAbstractGraphicsShapeItem x0 -> IO (Int)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractGraphicsShapeItem19 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractGraphicsShapeItem19_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractGraphicsShapeItem_setHandler19 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractGraphicsShapeItem x0) -> IO (CInt)
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

foreign import ccall "qtc_QAbstractGraphicsShapeItem_setHandler19" qtc_QAbstractGraphicsShapeItem_setHandler19 :: Ptr (TQAbstractGraphicsShapeItem a) -> CWString -> Ptr (Ptr (TQAbstractGraphicsShapeItem x0) -> IO (CInt)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QAbstractGraphicsShapeItem19 :: (Ptr (TQAbstractGraphicsShapeItem x0) -> IO (CInt)) -> IO (FunPtr (Ptr (TQAbstractGraphicsShapeItem x0) -> IO (CInt)))

foreign import ccall "wrapper" wrapSetHandler_QAbstractGraphicsShapeItem19_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QAbstractGraphicsShapeItemSc a) (QAbstractGraphicsShapeItem x0 -> IO (Int)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractGraphicsShapeItem19 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractGraphicsShapeItem19_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractGraphicsShapeItem_setHandler19 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractGraphicsShapeItem x0) -> IO (CInt)
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

instance Qqtype_h (QAbstractGraphicsShapeItem ()) (()) where
 qtype_h x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractGraphicsShapeItem_type cobj_x0

foreign import ccall "qtc_QAbstractGraphicsShapeItem_type" qtc_QAbstractGraphicsShapeItem_type :: Ptr (TQAbstractGraphicsShapeItem a) -> IO CInt

instance Qqtype_h (QAbstractGraphicsShapeItemSc a) (()) where
 qtype_h x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractGraphicsShapeItem_type cobj_x0

instance QwheelEvent_h (QAbstractGraphicsShapeItem ()) ((QGraphicsSceneWheelEvent t1)) where
 wheelEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractGraphicsShapeItem_wheelEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractGraphicsShapeItem_wheelEvent" qtc_QAbstractGraphicsShapeItem_wheelEvent :: Ptr (TQAbstractGraphicsShapeItem a) -> Ptr (TQGraphicsSceneWheelEvent t1) -> IO ()

instance QwheelEvent_h (QAbstractGraphicsShapeItemSc a) ((QGraphicsSceneWheelEvent t1)) where
 wheelEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractGraphicsShapeItem_wheelEvent cobj_x0 cobj_x1

