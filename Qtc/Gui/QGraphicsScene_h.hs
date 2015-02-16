{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QGraphicsScene_h.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:26
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QGraphicsScene_h (
  QhelpEvent_h(..)
  ) where

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

instance QunSetUserMethod (QGraphicsScene ()) where
 unSetUserMethod qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QGraphicsScene_unSetUserMethod cobj_qobj (toCInt 0) (toCInt evid)

foreign import ccall "qtc_QGraphicsScene_unSetUserMethod" qtc_QGraphicsScene_unSetUserMethod :: Ptr (TQGraphicsScene a) -> CInt -> CInt -> IO (CBool)

instance QunSetUserMethod (QGraphicsSceneSc a) where
 unSetUserMethod qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QGraphicsScene_unSetUserMethod cobj_qobj (toCInt 0) (toCInt evid)

instance QunSetUserMethodVariant (QGraphicsScene ()) where
 unSetUserMethodVariant qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QGraphicsScene_unSetUserMethod cobj_qobj (toCInt 1) (toCInt evid)

instance QunSetUserMethodVariant (QGraphicsSceneSc a) where
 unSetUserMethodVariant qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QGraphicsScene_unSetUserMethod cobj_qobj (toCInt 1) (toCInt evid)

instance QunSetUserMethodVariantList (QGraphicsScene ()) where
 unSetUserMethodVariantList qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QGraphicsScene_unSetUserMethod cobj_qobj (toCInt 2) (toCInt evid)

instance QunSetUserMethodVariantList (QGraphicsSceneSc a) where
 unSetUserMethodVariantList qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QGraphicsScene_unSetUserMethod cobj_qobj (toCInt 2) (toCInt evid)

instance QsetUserMethod (QGraphicsScene ()) (QGraphicsScene x0 -> IO ()) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethod_QGraphicsScene setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethod_QGraphicsScene_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QGraphicsScene_setUserMethod cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQGraphicsScene x0) -> IO ()
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

foreign import ccall "qtc_QGraphicsScene_setUserMethod" qtc_QGraphicsScene_setUserMethod :: Ptr (TQGraphicsScene a) -> CInt -> Ptr (Ptr (TQGraphicsScene x0) -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetUserMethod_QGraphicsScene :: (Ptr (TQGraphicsScene x0) -> IO ()) -> IO (FunPtr (Ptr (TQGraphicsScene x0) -> IO ()))

foreign import ccall "wrapper" wrapSetUserMethod_QGraphicsScene_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetUserMethod (QGraphicsSceneSc a) (QGraphicsScene x0 -> IO ()) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethod_QGraphicsScene setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethod_QGraphicsScene_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QGraphicsScene_setUserMethod cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQGraphicsScene x0) -> IO ()
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

instance QsetUserMethod (QGraphicsScene ()) (QGraphicsScene x0 -> QVariant () -> IO (QVariant ())) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethodVariant_QGraphicsScene setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethodVariant_QGraphicsScene_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QGraphicsScene_setUserMethodVariant cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQGraphicsScene x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))
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

foreign import ccall "qtc_QGraphicsScene_setUserMethodVariant" qtc_QGraphicsScene_setUserMethodVariant :: Ptr (TQGraphicsScene a) -> CInt -> Ptr (Ptr (TQGraphicsScene x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetUserMethodVariant_QGraphicsScene :: (Ptr (TQGraphicsScene x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))) -> IO (FunPtr (Ptr (TQGraphicsScene x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))))

foreign import ccall "wrapper" wrapSetUserMethodVariant_QGraphicsScene_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetUserMethod (QGraphicsSceneSc a) (QGraphicsScene x0 -> QVariant () -> IO (QVariant ())) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethodVariant_QGraphicsScene setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethodVariant_QGraphicsScene_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QGraphicsScene_setUserMethodVariant cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQGraphicsScene x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))
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

instance QunSetHandler (QGraphicsScene ()) where 
 unSetHandler qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withCWString evid $ \cstr_evid ->
    qtc_QGraphicsScene_unSetHandler cobj_qobj cstr_evid

foreign import ccall "qtc_QGraphicsScene_unSetHandler" qtc_QGraphicsScene_unSetHandler :: Ptr (TQGraphicsScene a) -> CWString -> IO (CBool)

instance QunSetHandler (QGraphicsSceneSc a) where 
 unSetHandler qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withCWString evid $ \cstr_evid ->
    qtc_QGraphicsScene_unSetHandler cobj_qobj cstr_evid

instance QsetHandler (QGraphicsScene ()) (QGraphicsScene x0 -> QEvent t1 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QGraphicsScene1 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QGraphicsScene1_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QGraphicsScene_setHandler1 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQGraphicsScene x0) -> Ptr (TQEvent t1) -> IO ()
    setHandlerWrapper x0 x1
      = do x0obj <- qGraphicsSceneFromPtr x0
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

foreign import ccall "qtc_QGraphicsScene_setHandler1" qtc_QGraphicsScene_setHandler1 :: Ptr (TQGraphicsScene a) -> CWString -> Ptr (Ptr (TQGraphicsScene x0) -> Ptr (TQEvent t1) -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QGraphicsScene1 :: (Ptr (TQGraphicsScene x0) -> Ptr (TQEvent t1) -> IO ()) -> IO (FunPtr (Ptr (TQGraphicsScene x0) -> Ptr (TQEvent t1) -> IO ()))

foreign import ccall "wrapper" wrapSetHandler_QGraphicsScene1_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QGraphicsSceneSc a) (QGraphicsScene x0 -> QEvent t1 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QGraphicsScene1 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QGraphicsScene1_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QGraphicsScene_setHandler1 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQGraphicsScene x0) -> Ptr (TQEvent t1) -> IO ()
    setHandlerWrapper x0 x1
      = do x0obj <- qGraphicsSceneFromPtr x0
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

instance QcontextMenuEvent_h (QGraphicsScene ()) ((QGraphicsSceneContextMenuEvent t1)) where
 contextMenuEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsScene_contextMenuEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsScene_contextMenuEvent" qtc_QGraphicsScene_contextMenuEvent :: Ptr (TQGraphicsScene a) -> Ptr (TQGraphicsSceneContextMenuEvent t1) -> IO ()

instance QcontextMenuEvent_h (QGraphicsSceneSc a) ((QGraphicsSceneContextMenuEvent t1)) where
 contextMenuEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsScene_contextMenuEvent cobj_x0 cobj_x1

instance QdragEnterEvent_h (QGraphicsScene ()) ((QGraphicsSceneDragDropEvent t1)) where
 dragEnterEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsScene_dragEnterEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsScene_dragEnterEvent" qtc_QGraphicsScene_dragEnterEvent :: Ptr (TQGraphicsScene a) -> Ptr (TQGraphicsSceneDragDropEvent t1) -> IO ()

instance QdragEnterEvent_h (QGraphicsSceneSc a) ((QGraphicsSceneDragDropEvent t1)) where
 dragEnterEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsScene_dragEnterEvent cobj_x0 cobj_x1

instance QdragLeaveEvent_h (QGraphicsScene ()) ((QGraphicsSceneDragDropEvent t1)) where
 dragLeaveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsScene_dragLeaveEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsScene_dragLeaveEvent" qtc_QGraphicsScene_dragLeaveEvent :: Ptr (TQGraphicsScene a) -> Ptr (TQGraphicsSceneDragDropEvent t1) -> IO ()

instance QdragLeaveEvent_h (QGraphicsSceneSc a) ((QGraphicsSceneDragDropEvent t1)) where
 dragLeaveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsScene_dragLeaveEvent cobj_x0 cobj_x1

instance QdragMoveEvent_h (QGraphicsScene ()) ((QGraphicsSceneDragDropEvent t1)) where
 dragMoveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsScene_dragMoveEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsScene_dragMoveEvent" qtc_QGraphicsScene_dragMoveEvent :: Ptr (TQGraphicsScene a) -> Ptr (TQGraphicsSceneDragDropEvent t1) -> IO ()

instance QdragMoveEvent_h (QGraphicsSceneSc a) ((QGraphicsSceneDragDropEvent t1)) where
 dragMoveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsScene_dragMoveEvent cobj_x0 cobj_x1

instance QsetHandler (QGraphicsScene ()) (QGraphicsScene x0 -> QPainter t1 -> QRectF t2 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QGraphicsScene2 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QGraphicsScene2_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QGraphicsScene_setHandler2 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQGraphicsScene x0) -> Ptr (TQPainter t1) -> Ptr (TQRectF t2) -> IO ()
    setHandlerWrapper x0 x1 x2
      = do x0obj <- qGraphicsSceneFromPtr x0
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

foreign import ccall "qtc_QGraphicsScene_setHandler2" qtc_QGraphicsScene_setHandler2 :: Ptr (TQGraphicsScene a) -> CWString -> Ptr (Ptr (TQGraphicsScene x0) -> Ptr (TQPainter t1) -> Ptr (TQRectF t2) -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QGraphicsScene2 :: (Ptr (TQGraphicsScene x0) -> Ptr (TQPainter t1) -> Ptr (TQRectF t2) -> IO ()) -> IO (FunPtr (Ptr (TQGraphicsScene x0) -> Ptr (TQPainter t1) -> Ptr (TQRectF t2) -> IO ()))

foreign import ccall "wrapper" wrapSetHandler_QGraphicsScene2_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QGraphicsSceneSc a) (QGraphicsScene x0 -> QPainter t1 -> QRectF t2 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QGraphicsScene2 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QGraphicsScene2_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QGraphicsScene_setHandler2 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQGraphicsScene x0) -> Ptr (TQPainter t1) -> Ptr (TQRectF t2) -> IO ()
    setHandlerWrapper x0 x1 x2
      = do x0obj <- qGraphicsSceneFromPtr x0
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

instance QqdrawBackground_h (QGraphicsScene ()) ((QPainter t1, QRectF t2)) where
 qdrawBackground_h x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsScene_drawBackground cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QGraphicsScene_drawBackground" qtc_QGraphicsScene_drawBackground :: Ptr (TQGraphicsScene a) -> Ptr (TQPainter t1) -> Ptr (TQRectF t2) -> IO ()

instance QqdrawBackground_h (QGraphicsSceneSc a) ((QPainter t1, QRectF t2)) where
 qdrawBackground_h x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsScene_drawBackground cobj_x0 cobj_x1 cobj_x2

instance QdrawBackground_h (QGraphicsScene ()) ((QPainter t1, RectF)) where
 drawBackground_h x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCRectF x2 $ \crectf_x2_x crectf_x2_y  crectf_x2_w crectf_x2_h -> 
    qtc_QGraphicsScene_drawBackground_qth cobj_x0 cobj_x1 crectf_x2_x crectf_x2_y crectf_x2_w crectf_x2_h 

foreign import ccall "qtc_QGraphicsScene_drawBackground_qth" qtc_QGraphicsScene_drawBackground_qth :: Ptr (TQGraphicsScene a) -> Ptr (TQPainter t1) -> CDouble -> CDouble -> CDouble -> CDouble -> IO ()

instance QdrawBackground_h (QGraphicsSceneSc a) ((QPainter t1, RectF)) where
 drawBackground_h x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCRectF x2 $ \crectf_x2_x crectf_x2_y  crectf_x2_w crectf_x2_h -> 
    qtc_QGraphicsScene_drawBackground_qth cobj_x0 cobj_x1 crectf_x2_x crectf_x2_y crectf_x2_w crectf_x2_h 

instance QqdrawForeground_h (QGraphicsScene ()) ((QPainter t1, QRectF t2)) where
 qdrawForeground_h x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsScene_drawForeground cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QGraphicsScene_drawForeground" qtc_QGraphicsScene_drawForeground :: Ptr (TQGraphicsScene a) -> Ptr (TQPainter t1) -> Ptr (TQRectF t2) -> IO ()

instance QqdrawForeground_h (QGraphicsSceneSc a) ((QPainter t1, QRectF t2)) where
 qdrawForeground_h x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsScene_drawForeground cobj_x0 cobj_x1 cobj_x2

instance QdrawForeground_h (QGraphicsScene ()) ((QPainter t1, RectF)) where
 drawForeground_h x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCRectF x2 $ \crectf_x2_x crectf_x2_y  crectf_x2_w crectf_x2_h -> 
    qtc_QGraphicsScene_drawForeground_qth cobj_x0 cobj_x1 crectf_x2_x crectf_x2_y crectf_x2_w crectf_x2_h 

foreign import ccall "qtc_QGraphicsScene_drawForeground_qth" qtc_QGraphicsScene_drawForeground_qth :: Ptr (TQGraphicsScene a) -> Ptr (TQPainter t1) -> CDouble -> CDouble -> CDouble -> CDouble -> IO ()

instance QdrawForeground_h (QGraphicsSceneSc a) ((QPainter t1, RectF)) where
 drawForeground_h x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCRectF x2 $ \crectf_x2_x crectf_x2_y  crectf_x2_w crectf_x2_h -> 
    qtc_QGraphicsScene_drawForeground_qth cobj_x0 cobj_x1 crectf_x2_x crectf_x2_y crectf_x2_w crectf_x2_h 

instance QsetHandler (QGraphicsScene ()) (QGraphicsScene x0 -> QPainter t1 -> Int -> [QGraphicsItem t3] -> [QStyleOptionGraphicsItem t4] -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QGraphicsScene3 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QGraphicsScene3_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QGraphicsScene_setHandler3 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQGraphicsScene x0) -> Ptr (TQPainter t1) -> CInt -> CInt -> Ptr (Ptr (TQGraphicsItem t3)) -> CInt -> Ptr (Ptr (TQStyleOptionGraphicsItem t4)) -> IO ()
    setHandlerWrapper x0 x1 x2 _l3 x3 _l4 x4
      = do x0obj <- qGraphicsSceneFromPtr x0
           x1obj <- objectFromPtr_nf x1
           let x2int = fromCInt x2
           let lx3 = fromCInt _l3
           xps3 <- peekArray lx3 x3
           x3obj <- objectListFromPtrList_nf xps3
           let lx4 = fromCInt _l4
           xps4 <- peekArray lx4 x4
           x4obj <- objectListFromPtrList_nf xps4
           if (objectIsNull x0obj)
            then return ()
            else _handler x0obj x1obj x2int x3obj x4obj

    setHandlerWrapper_d :: Ptr fun -> Ptr () -> Ptr fun_d -> IO ()
    setHandlerWrapper_d funptr stptr funptr_d
      = do when (stptr/=ptrNull)
            (freeStablePtr (castPtrToStablePtr stptr))
           when (funptr/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr))
           when (funptr_d/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr_d))
           return ()

foreign import ccall "qtc_QGraphicsScene_setHandler3" qtc_QGraphicsScene_setHandler3 :: Ptr (TQGraphicsScene a) -> CWString -> Ptr (Ptr (TQGraphicsScene x0) -> Ptr (TQPainter t1) -> CInt -> CInt -> Ptr (Ptr (TQGraphicsItem t3)) -> CInt -> Ptr (Ptr (TQStyleOptionGraphicsItem t4)) -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QGraphicsScene3 :: (Ptr (TQGraphicsScene x0) -> Ptr (TQPainter t1) -> CInt -> CInt -> Ptr (Ptr (TQGraphicsItem t3)) -> CInt -> Ptr (Ptr (TQStyleOptionGraphicsItem t4)) -> IO ()) -> IO (FunPtr (Ptr (TQGraphicsScene x0) -> Ptr (TQPainter t1) -> CInt -> CInt -> Ptr (Ptr (TQGraphicsItem t3)) -> CInt -> Ptr (Ptr (TQStyleOptionGraphicsItem t4)) -> IO ()))

foreign import ccall "wrapper" wrapSetHandler_QGraphicsScene3_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QGraphicsSceneSc a) (QGraphicsScene x0 -> QPainter t1 -> Int -> [QGraphicsItem t3] -> [QStyleOptionGraphicsItem t4] -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QGraphicsScene3 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QGraphicsScene3_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QGraphicsScene_setHandler3 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQGraphicsScene x0) -> Ptr (TQPainter t1) -> CInt -> CInt -> Ptr (Ptr (TQGraphicsItem t3)) -> CInt -> Ptr (Ptr (TQStyleOptionGraphicsItem t4)) -> IO ()
    setHandlerWrapper x0 x1 x2 _l3 x3 _l4 x4
      = do x0obj <- qGraphicsSceneFromPtr x0
           x1obj <- objectFromPtr_nf x1
           let x2int = fromCInt x2
           let lx3 = fromCInt _l3
           xps3 <- peekArray lx3 x3
           x3obj <- objectListFromPtrList_nf xps3
           let lx4 = fromCInt _l4
           xps4 <- peekArray lx4 x4
           x4obj <- objectListFromPtrList_nf xps4
           if (objectIsNull x0obj)
            then return ()
            else _handler x0obj x1obj x2int x3obj x4obj

    setHandlerWrapper_d :: Ptr fun -> Ptr () -> Ptr fun_d -> IO ()
    setHandlerWrapper_d funptr stptr funptr_d
      = do when (stptr/=ptrNull)
            (freeStablePtr (castPtrToStablePtr stptr))
           when (funptr/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr))
           when (funptr_d/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr_d))
           return ()

instance QsetHandler (QGraphicsScene ()) (QGraphicsScene x0 -> QPainter t1 -> Int -> [QGraphicsItem t3] -> [QStyleOptionGraphicsItem t4] -> QObject t5 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QGraphicsScene4 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QGraphicsScene4_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QGraphicsScene_setHandler4 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQGraphicsScene x0) -> Ptr (TQPainter t1) -> CInt -> CInt -> Ptr (Ptr (TQGraphicsItem t3)) -> CInt -> Ptr (Ptr (TQStyleOptionGraphicsItem t4)) -> Ptr (TQObject t5) -> IO ()
    setHandlerWrapper x0 x1 x2 _l3 x3 _l4 x4 x5
      = do x0obj <- qGraphicsSceneFromPtr x0
           x1obj <- objectFromPtr_nf x1
           let x2int = fromCInt x2
           let lx3 = fromCInt _l3
           xps3 <- peekArray lx3 x3
           x3obj <- objectListFromPtrList_nf xps3
           let lx4 = fromCInt _l4
           xps4 <- peekArray lx4 x4
           x4obj <- objectListFromPtrList_nf xps4
           x5obj <- qObjectFromPtr x5
           if (objectIsNull x0obj)
            then return ()
            else _handler x0obj x1obj x2int x3obj x4obj x5obj

    setHandlerWrapper_d :: Ptr fun -> Ptr () -> Ptr fun_d -> IO ()
    setHandlerWrapper_d funptr stptr funptr_d
      = do when (stptr/=ptrNull)
            (freeStablePtr (castPtrToStablePtr stptr))
           when (funptr/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr))
           when (funptr_d/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr_d))
           return ()

foreign import ccall "qtc_QGraphicsScene_setHandler4" qtc_QGraphicsScene_setHandler4 :: Ptr (TQGraphicsScene a) -> CWString -> Ptr (Ptr (TQGraphicsScene x0) -> Ptr (TQPainter t1) -> CInt -> CInt -> Ptr (Ptr (TQGraphicsItem t3)) -> CInt -> Ptr (Ptr (TQStyleOptionGraphicsItem t4)) -> Ptr (TQObject t5) -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QGraphicsScene4 :: (Ptr (TQGraphicsScene x0) -> Ptr (TQPainter t1) -> CInt -> CInt -> Ptr (Ptr (TQGraphicsItem t3)) -> CInt -> Ptr (Ptr (TQStyleOptionGraphicsItem t4)) -> Ptr (TQObject t5) -> IO ()) -> IO (FunPtr (Ptr (TQGraphicsScene x0) -> Ptr (TQPainter t1) -> CInt -> CInt -> Ptr (Ptr (TQGraphicsItem t3)) -> CInt -> Ptr (Ptr (TQStyleOptionGraphicsItem t4)) -> Ptr (TQObject t5) -> IO ()))

foreign import ccall "wrapper" wrapSetHandler_QGraphicsScene4_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QGraphicsSceneSc a) (QGraphicsScene x0 -> QPainter t1 -> Int -> [QGraphicsItem t3] -> [QStyleOptionGraphicsItem t4] -> QObject t5 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QGraphicsScene4 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QGraphicsScene4_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QGraphicsScene_setHandler4 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQGraphicsScene x0) -> Ptr (TQPainter t1) -> CInt -> CInt -> Ptr (Ptr (TQGraphicsItem t3)) -> CInt -> Ptr (Ptr (TQStyleOptionGraphicsItem t4)) -> Ptr (TQObject t5) -> IO ()
    setHandlerWrapper x0 x1 x2 _l3 x3 _l4 x4 x5
      = do x0obj <- qGraphicsSceneFromPtr x0
           x1obj <- objectFromPtr_nf x1
           let x2int = fromCInt x2
           let lx3 = fromCInt _l3
           xps3 <- peekArray lx3 x3
           x3obj <- objectListFromPtrList_nf xps3
           let lx4 = fromCInt _l4
           xps4 <- peekArray lx4 x4
           x4obj <- objectListFromPtrList_nf xps4
           x5obj <- qObjectFromPtr x5
           if (objectIsNull x0obj)
            then return ()
            else _handler x0obj x1obj x2int x3obj x4obj x5obj

    setHandlerWrapper_d :: Ptr fun -> Ptr () -> Ptr fun_d -> IO ()
    setHandlerWrapper_d funptr stptr funptr_d
      = do when (stptr/=ptrNull)
            (freeStablePtr (castPtrToStablePtr stptr))
           when (funptr/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr))
           when (funptr_d/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr_d))
           return ()

instance QdrawItems_h (QGraphicsScene ()) ((QPainter t1, Int, [QGraphicsItem t3], [QStyleOptionGraphicsItem t4])) where
 drawItems_h x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withQListObject x3 $ \cqlistlen_x3 cqlistobj_x3 ->
    withQListObject x4 $ \cqlistlen_x4 cqlistobj_x4 ->
    qtc_QGraphicsScene_drawItems cobj_x0 cobj_x1 (toCInt x2) cqlistlen_x3 cqlistobj_x3 cqlistlen_x4 cqlistobj_x4

foreign import ccall "qtc_QGraphicsScene_drawItems" qtc_QGraphicsScene_drawItems :: Ptr (TQGraphicsScene a) -> Ptr (TQPainter t1) -> CInt -> CInt -> Ptr (Ptr (TQGraphicsItem t3)) -> CInt -> Ptr (Ptr (TQStyleOptionGraphicsItem t4)) -> IO ()

instance QdrawItems_h (QGraphicsSceneSc a) ((QPainter t1, Int, [QGraphicsItem t3], [QStyleOptionGraphicsItem t4])) where
 drawItems_h x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withQListObject x3 $ \cqlistlen_x3 cqlistobj_x3 ->
    withQListObject x4 $ \cqlistlen_x4 cqlistobj_x4 ->
    qtc_QGraphicsScene_drawItems cobj_x0 cobj_x1 (toCInt x2) cqlistlen_x3 cqlistobj_x3 cqlistlen_x4 cqlistobj_x4

instance QdrawItems_h (QGraphicsScene ()) ((QPainter t1, Int, [QGraphicsItem t3], [QStyleOptionGraphicsItem t4], QWidget t5)) where
 drawItems_h x0 (x1, x2, x3, x4, x5)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withQListObject x3 $ \cqlistlen_x3 cqlistobj_x3 ->
    withQListObject x4 $ \cqlistlen_x4 cqlistobj_x4 ->
    withObjectPtr x5 $ \cobj_x5 ->
    qtc_QGraphicsScene_drawItems1 cobj_x0 cobj_x1 (toCInt x2) cqlistlen_x3 cqlistobj_x3 cqlistlen_x4 cqlistobj_x4 cobj_x5

foreign import ccall "qtc_QGraphicsScene_drawItems1" qtc_QGraphicsScene_drawItems1 :: Ptr (TQGraphicsScene a) -> Ptr (TQPainter t1) -> CInt -> CInt -> Ptr (Ptr (TQGraphicsItem t3)) -> CInt -> Ptr (Ptr (TQStyleOptionGraphicsItem t4)) -> Ptr (TQWidget t5) -> IO ()

instance QdrawItems_h (QGraphicsSceneSc a) ((QPainter t1, Int, [QGraphicsItem t3], [QStyleOptionGraphicsItem t4], QWidget t5)) where
 drawItems_h x0 (x1, x2, x3, x4, x5)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withQListObject x3 $ \cqlistlen_x3 cqlistobj_x3 ->
    withQListObject x4 $ \cqlistlen_x4 cqlistobj_x4 ->
    withObjectPtr x5 $ \cobj_x5 ->
    qtc_QGraphicsScene_drawItems1 cobj_x0 cobj_x1 (toCInt x2) cqlistlen_x3 cqlistobj_x3 cqlistlen_x4 cqlistobj_x4 cobj_x5

instance QdropEvent_h (QGraphicsScene ()) ((QGraphicsSceneDragDropEvent t1)) where
 dropEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsScene_dropEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsScene_dropEvent" qtc_QGraphicsScene_dropEvent :: Ptr (TQGraphicsScene a) -> Ptr (TQGraphicsSceneDragDropEvent t1) -> IO ()

instance QdropEvent_h (QGraphicsSceneSc a) ((QGraphicsSceneDragDropEvent t1)) where
 dropEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsScene_dropEvent cobj_x0 cobj_x1

instance QsetHandler (QGraphicsScene ()) (QGraphicsScene x0 -> QEvent t1 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QGraphicsScene5 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QGraphicsScene5_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QGraphicsScene_setHandler5 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQGraphicsScene x0) -> Ptr (TQEvent t1) -> IO (CBool)
    setHandlerWrapper x0 x1
      = do x0obj <- qGraphicsSceneFromPtr x0
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

foreign import ccall "qtc_QGraphicsScene_setHandler5" qtc_QGraphicsScene_setHandler5 :: Ptr (TQGraphicsScene a) -> CWString -> Ptr (Ptr (TQGraphicsScene x0) -> Ptr (TQEvent t1) -> IO (CBool)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QGraphicsScene5 :: (Ptr (TQGraphicsScene x0) -> Ptr (TQEvent t1) -> IO (CBool)) -> IO (FunPtr (Ptr (TQGraphicsScene x0) -> Ptr (TQEvent t1) -> IO (CBool)))

foreign import ccall "wrapper" wrapSetHandler_QGraphicsScene5_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QGraphicsSceneSc a) (QGraphicsScene x0 -> QEvent t1 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QGraphicsScene5 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QGraphicsScene5_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QGraphicsScene_setHandler5 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQGraphicsScene x0) -> Ptr (TQEvent t1) -> IO (CBool)
    setHandlerWrapper x0 x1
      = do x0obj <- qGraphicsSceneFromPtr x0
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

instance Qevent_h (QGraphicsScene ()) ((QEvent t1)) where
 event_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsScene_event cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsScene_event" qtc_QGraphicsScene_event :: Ptr (TQGraphicsScene a) -> Ptr (TQEvent t1) -> IO CBool

instance Qevent_h (QGraphicsSceneSc a) ((QEvent t1)) where
 event_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsScene_event cobj_x0 cobj_x1

instance QfocusInEvent_h (QGraphicsScene ()) ((QFocusEvent t1)) where
 focusInEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsScene_focusInEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsScene_focusInEvent" qtc_QGraphicsScene_focusInEvent :: Ptr (TQGraphicsScene a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusInEvent_h (QGraphicsSceneSc a) ((QFocusEvent t1)) where
 focusInEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsScene_focusInEvent cobj_x0 cobj_x1

instance QfocusOutEvent_h (QGraphicsScene ()) ((QFocusEvent t1)) where
 focusOutEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsScene_focusOutEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsScene_focusOutEvent" qtc_QGraphicsScene_focusOutEvent :: Ptr (TQGraphicsScene a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusOutEvent_h (QGraphicsSceneSc a) ((QFocusEvent t1)) where
 focusOutEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsScene_focusOutEvent cobj_x0 cobj_x1

class QhelpEvent_h x0 x1 where
 helpEvent_h :: x0 -> x1 -> IO ()

instance QhelpEvent_h (QGraphicsScene ()) ((QGraphicsSceneHelpEvent t1)) where
 helpEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsScene_helpEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsScene_helpEvent" qtc_QGraphicsScene_helpEvent :: Ptr (TQGraphicsScene a) -> Ptr (TQGraphicsSceneHelpEvent t1) -> IO ()

instance QhelpEvent_h (QGraphicsSceneSc a) ((QGraphicsSceneHelpEvent t1)) where
 helpEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsScene_helpEvent cobj_x0 cobj_x1

instance QinputMethodEvent_h (QGraphicsScene ()) ((QInputMethodEvent t1)) where
 inputMethodEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsScene_inputMethodEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsScene_inputMethodEvent" qtc_QGraphicsScene_inputMethodEvent :: Ptr (TQGraphicsScene a) -> Ptr (TQInputMethodEvent t1) -> IO ()

instance QinputMethodEvent_h (QGraphicsSceneSc a) ((QInputMethodEvent t1)) where
 inputMethodEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsScene_inputMethodEvent cobj_x0 cobj_x1

instance QsetHandler (QGraphicsScene ()) (QGraphicsScene x0 -> InputMethodQuery -> IO (QVariant t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QGraphicsScene6 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QGraphicsScene6_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QGraphicsScene_setHandler6 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQGraphicsScene x0) -> CLong -> IO (Ptr (TQVariant t0))
    setHandlerWrapper x0 x1
      = do x0obj <- qGraphicsSceneFromPtr x0
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

foreign import ccall "qtc_QGraphicsScene_setHandler6" qtc_QGraphicsScene_setHandler6 :: Ptr (TQGraphicsScene a) -> CWString -> Ptr (Ptr (TQGraphicsScene x0) -> CLong -> IO (Ptr (TQVariant t0))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QGraphicsScene6 :: (Ptr (TQGraphicsScene x0) -> CLong -> IO (Ptr (TQVariant t0))) -> IO (FunPtr (Ptr (TQGraphicsScene x0) -> CLong -> IO (Ptr (TQVariant t0))))

foreign import ccall "wrapper" wrapSetHandler_QGraphicsScene6_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QGraphicsSceneSc a) (QGraphicsScene x0 -> InputMethodQuery -> IO (QVariant t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QGraphicsScene6 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QGraphicsScene6_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QGraphicsScene_setHandler6 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQGraphicsScene x0) -> CLong -> IO (Ptr (TQVariant t0))
    setHandlerWrapper x0 x1
      = do x0obj <- qGraphicsSceneFromPtr x0
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

instance QinputMethodQuery_h (QGraphicsScene ()) ((InputMethodQuery)) where
 inputMethodQuery_h x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsScene_inputMethodQuery cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QGraphicsScene_inputMethodQuery" qtc_QGraphicsScene_inputMethodQuery :: Ptr (TQGraphicsScene a) -> CLong -> IO (Ptr (TQVariant ()))

instance QinputMethodQuery_h (QGraphicsSceneSc a) ((InputMethodQuery)) where
 inputMethodQuery_h x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsScene_inputMethodQuery cobj_x0 (toCLong $ qEnum_toInt x1)

instance QkeyPressEvent_h (QGraphicsScene ()) ((QKeyEvent t1)) where
 keyPressEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsScene_keyPressEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsScene_keyPressEvent" qtc_QGraphicsScene_keyPressEvent :: Ptr (TQGraphicsScene a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyPressEvent_h (QGraphicsSceneSc a) ((QKeyEvent t1)) where
 keyPressEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsScene_keyPressEvent cobj_x0 cobj_x1

instance QkeyReleaseEvent_h (QGraphicsScene ()) ((QKeyEvent t1)) where
 keyReleaseEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsScene_keyReleaseEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsScene_keyReleaseEvent" qtc_QGraphicsScene_keyReleaseEvent :: Ptr (TQGraphicsScene a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyReleaseEvent_h (QGraphicsSceneSc a) ((QKeyEvent t1)) where
 keyReleaseEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsScene_keyReleaseEvent cobj_x0 cobj_x1

instance QmouseDoubleClickEvent_h (QGraphicsScene ()) ((QGraphicsSceneMouseEvent t1)) where
 mouseDoubleClickEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsScene_mouseDoubleClickEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsScene_mouseDoubleClickEvent" qtc_QGraphicsScene_mouseDoubleClickEvent :: Ptr (TQGraphicsScene a) -> Ptr (TQGraphicsSceneMouseEvent t1) -> IO ()

instance QmouseDoubleClickEvent_h (QGraphicsSceneSc a) ((QGraphicsSceneMouseEvent t1)) where
 mouseDoubleClickEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsScene_mouseDoubleClickEvent cobj_x0 cobj_x1

instance QmouseMoveEvent_h (QGraphicsScene ()) ((QGraphicsSceneMouseEvent t1)) where
 mouseMoveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsScene_mouseMoveEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsScene_mouseMoveEvent" qtc_QGraphicsScene_mouseMoveEvent :: Ptr (TQGraphicsScene a) -> Ptr (TQGraphicsSceneMouseEvent t1) -> IO ()

instance QmouseMoveEvent_h (QGraphicsSceneSc a) ((QGraphicsSceneMouseEvent t1)) where
 mouseMoveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsScene_mouseMoveEvent cobj_x0 cobj_x1

instance QmousePressEvent_h (QGraphicsScene ()) ((QGraphicsSceneMouseEvent t1)) where
 mousePressEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsScene_mousePressEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsScene_mousePressEvent" qtc_QGraphicsScene_mousePressEvent :: Ptr (TQGraphicsScene a) -> Ptr (TQGraphicsSceneMouseEvent t1) -> IO ()

instance QmousePressEvent_h (QGraphicsSceneSc a) ((QGraphicsSceneMouseEvent t1)) where
 mousePressEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsScene_mousePressEvent cobj_x0 cobj_x1

instance QmouseReleaseEvent_h (QGraphicsScene ()) ((QGraphicsSceneMouseEvent t1)) where
 mouseReleaseEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsScene_mouseReleaseEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsScene_mouseReleaseEvent" qtc_QGraphicsScene_mouseReleaseEvent :: Ptr (TQGraphicsScene a) -> Ptr (TQGraphicsSceneMouseEvent t1) -> IO ()

instance QmouseReleaseEvent_h (QGraphicsSceneSc a) ((QGraphicsSceneMouseEvent t1)) where
 mouseReleaseEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsScene_mouseReleaseEvent cobj_x0 cobj_x1

instance QwheelEvent_h (QGraphicsScene ()) ((QGraphicsSceneWheelEvent t1)) where
 wheelEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsScene_wheelEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsScene_wheelEvent" qtc_QGraphicsScene_wheelEvent :: Ptr (TQGraphicsScene a) -> Ptr (TQGraphicsSceneWheelEvent t1) -> IO ()

instance QwheelEvent_h (QGraphicsSceneSc a) ((QGraphicsSceneWheelEvent t1)) where
 wheelEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsScene_wheelEvent cobj_x0 cobj_x1

instance QsetHandler (QGraphicsScene ()) (QGraphicsScene x0 -> QObject t1 -> QEvent t2 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QGraphicsScene7 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QGraphicsScene7_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QGraphicsScene_setHandler7 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQGraphicsScene x0) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO (CBool)
    setHandlerWrapper x0 x1 x2
      = do x0obj <- qGraphicsSceneFromPtr x0
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

foreign import ccall "qtc_QGraphicsScene_setHandler7" qtc_QGraphicsScene_setHandler7 :: Ptr (TQGraphicsScene a) -> CWString -> Ptr (Ptr (TQGraphicsScene x0) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO (CBool)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QGraphicsScene7 :: (Ptr (TQGraphicsScene x0) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO (CBool)) -> IO (FunPtr (Ptr (TQGraphicsScene x0) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO (CBool)))

foreign import ccall "wrapper" wrapSetHandler_QGraphicsScene7_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QGraphicsSceneSc a) (QGraphicsScene x0 -> QObject t1 -> QEvent t2 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QGraphicsScene7 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QGraphicsScene7_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QGraphicsScene_setHandler7 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQGraphicsScene x0) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO (CBool)
    setHandlerWrapper x0 x1 x2
      = do x0obj <- qGraphicsSceneFromPtr x0
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

instance QeventFilter_h (QGraphicsScene ()) ((QObject t1, QEvent t2)) where
 eventFilter_h x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsScene_eventFilter cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QGraphicsScene_eventFilter" qtc_QGraphicsScene_eventFilter :: Ptr (TQGraphicsScene a) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO CBool

instance QeventFilter_h (QGraphicsSceneSc a) ((QObject t1, QEvent t2)) where
 eventFilter_h x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsScene_eventFilter cobj_x0 cobj_x1 cobj_x2

