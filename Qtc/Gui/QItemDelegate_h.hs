{-# OPTIONS -fglasgow-exts -#include "../include/gui/qtc_hs_QItemDelegate_h.h" #-}
-----------------------------------------------------------------------------
{-| Module    : QItemDelegate_h.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:20
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QItemDelegate_h where

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

instance QunSetUserMethod (QItemDelegate ()) where
 unSetUserMethod qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QItemDelegate_unSetUserMethod cobj_qobj (toCInt 0) (toCInt evid)

foreign import ccall "qtc_QItemDelegate_unSetUserMethod" qtc_QItemDelegate_unSetUserMethod :: Ptr (TQItemDelegate a) -> CInt -> CInt -> IO (CBool)

instance QunSetUserMethod (QItemDelegateSc a) where
 unSetUserMethod qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QItemDelegate_unSetUserMethod cobj_qobj (toCInt 0) (toCInt evid)

instance QunSetUserMethodVariant (QItemDelegate ()) where
 unSetUserMethodVariant qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QItemDelegate_unSetUserMethod cobj_qobj (toCInt 1) (toCInt evid)

instance QunSetUserMethodVariant (QItemDelegateSc a) where
 unSetUserMethodVariant qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QItemDelegate_unSetUserMethod cobj_qobj (toCInt 1) (toCInt evid)

instance QunSetUserMethodVariantList (QItemDelegate ()) where
 unSetUserMethodVariantList qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QItemDelegate_unSetUserMethod cobj_qobj (toCInt 2) (toCInt evid)

instance QunSetUserMethodVariantList (QItemDelegateSc a) where
 unSetUserMethodVariantList qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QItemDelegate_unSetUserMethod cobj_qobj (toCInt 2) (toCInt evid)

instance QsetUserMethod (QItemDelegate ()) (QItemDelegate x0 -> IO ()) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethod_QItemDelegate setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethod_QItemDelegate_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QItemDelegate_setUserMethod cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQItemDelegate x0) -> IO ()
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

foreign import ccall "qtc_QItemDelegate_setUserMethod" qtc_QItemDelegate_setUserMethod :: Ptr (TQItemDelegate a) -> CInt -> Ptr (Ptr (TQItemDelegate x0) -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetUserMethod_QItemDelegate :: (Ptr (TQItemDelegate x0) -> IO ()) -> IO (FunPtr (Ptr (TQItemDelegate x0) -> IO ()))

foreign import ccall "wrapper" wrapSetUserMethod_QItemDelegate_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetUserMethod (QItemDelegateSc a) (QItemDelegate x0 -> IO ()) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethod_QItemDelegate setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethod_QItemDelegate_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QItemDelegate_setUserMethod cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQItemDelegate x0) -> IO ()
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

instance QsetUserMethod (QItemDelegate ()) (QItemDelegate x0 -> QVariant () -> IO (QVariant ())) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethodVariant_QItemDelegate setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethodVariant_QItemDelegate_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QItemDelegate_setUserMethodVariant cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQItemDelegate x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))
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

foreign import ccall "qtc_QItemDelegate_setUserMethodVariant" qtc_QItemDelegate_setUserMethodVariant :: Ptr (TQItemDelegate a) -> CInt -> Ptr (Ptr (TQItemDelegate x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetUserMethodVariant_QItemDelegate :: (Ptr (TQItemDelegate x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))) -> IO (FunPtr (Ptr (TQItemDelegate x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))))

foreign import ccall "wrapper" wrapSetUserMethodVariant_QItemDelegate_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetUserMethod (QItemDelegateSc a) (QItemDelegate x0 -> QVariant () -> IO (QVariant ())) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethodVariant_QItemDelegate setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethodVariant_QItemDelegate_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QItemDelegate_setUserMethodVariant cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQItemDelegate x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))
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

instance QunSetHandler (QItemDelegate ()) where 
 unSetHandler qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withCWString evid $ \cstr_evid ->
    qtc_QItemDelegate_unSetHandler cobj_qobj cstr_evid

foreign import ccall "qtc_QItemDelegate_unSetHandler" qtc_QItemDelegate_unSetHandler :: Ptr (TQItemDelegate a) -> CWString -> IO (CBool)

instance QunSetHandler (QItemDelegateSc a) where 
 unSetHandler qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withCWString evid $ \cstr_evid ->
    qtc_QItemDelegate_unSetHandler cobj_qobj cstr_evid

instance QsetHandler (QItemDelegate ()) (QItemDelegate x0 -> QObject t1 -> QStyleOption t2 -> QModelIndex t3 -> IO (QObject t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QItemDelegate1 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QItemDelegate1_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QItemDelegate_setHandler1 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQItemDelegate x0) -> Ptr (TQObject t1) -> Ptr (TQStyleOption t2) -> Ptr (TQModelIndex t3) -> IO (Ptr (TQObject t0))
    setHandlerWrapper x0 x1 x2 x3
      = do x0obj <- qItemDelegateFromPtr x0
           x1obj <- qObjectFromPtr x1
           x2obj <- objectFromPtr_nf x2
           x3obj <- objectFromPtr_nf x3
           let rv =
                if (objectIsNull x0obj)
                 then return $ objectCast x0obj
                 else _handler x0obj x1obj x2obj x3obj
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

foreign import ccall "qtc_QItemDelegate_setHandler1" qtc_QItemDelegate_setHandler1 :: Ptr (TQItemDelegate a) -> CWString -> Ptr (Ptr (TQItemDelegate x0) -> Ptr (TQObject t1) -> Ptr (TQStyleOption t2) -> Ptr (TQModelIndex t3) -> IO (Ptr (TQObject t0))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QItemDelegate1 :: (Ptr (TQItemDelegate x0) -> Ptr (TQObject t1) -> Ptr (TQStyleOption t2) -> Ptr (TQModelIndex t3) -> IO (Ptr (TQObject t0))) -> IO (FunPtr (Ptr (TQItemDelegate x0) -> Ptr (TQObject t1) -> Ptr (TQStyleOption t2) -> Ptr (TQModelIndex t3) -> IO (Ptr (TQObject t0))))

foreign import ccall "wrapper" wrapSetHandler_QItemDelegate1_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QItemDelegateSc a) (QItemDelegate x0 -> QObject t1 -> QStyleOption t2 -> QModelIndex t3 -> IO (QObject t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QItemDelegate1 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QItemDelegate1_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QItemDelegate_setHandler1 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQItemDelegate x0) -> Ptr (TQObject t1) -> Ptr (TQStyleOption t2) -> Ptr (TQModelIndex t3) -> IO (Ptr (TQObject t0))
    setHandlerWrapper x0 x1 x2 x3
      = do x0obj <- qItemDelegateFromPtr x0
           x1obj <- qObjectFromPtr x1
           x2obj <- objectFromPtr_nf x2
           x3obj <- objectFromPtr_nf x3
           let rv =
                if (objectIsNull x0obj)
                 then return $ objectCast x0obj
                 else _handler x0obj x1obj x2obj x3obj
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

instance QcreateEditor_h (QItemDelegate ()) ((QWidget t1, QStyleOptionViewItem t2, QModelIndex t3)) where
 createEditor_h x0 (x1, x2, x3)
  = withQWidgetResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QItemDelegate_createEditor cobj_x0 cobj_x1 cobj_x2 cobj_x3

foreign import ccall "qtc_QItemDelegate_createEditor" qtc_QItemDelegate_createEditor :: Ptr (TQItemDelegate a) -> Ptr (TQWidget t1) -> Ptr (TQStyleOptionViewItem t2) -> Ptr (TQModelIndex t3) -> IO (Ptr (TQWidget ()))

instance QcreateEditor_h (QItemDelegateSc a) ((QWidget t1, QStyleOptionViewItem t2, QModelIndex t3)) where
 createEditor_h x0 (x1, x2, x3)
  = withQWidgetResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QItemDelegate_createEditor cobj_x0 cobj_x1 cobj_x2 cobj_x3

instance QsetHandler (QItemDelegate ()) (QItemDelegate x0 -> QPainter t1 -> QStyleOption t2 -> QModelIndex t3 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QItemDelegate2 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QItemDelegate2_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QItemDelegate_setHandler2 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQItemDelegate x0) -> Ptr (TQPainter t1) -> Ptr (TQStyleOption t2) -> Ptr (TQModelIndex t3) -> IO ()
    setHandlerWrapper x0 x1 x2 x3
      = do x0obj <- qItemDelegateFromPtr x0
           x1obj <- objectFromPtr_nf x1
           x2obj <- objectFromPtr_nf x2
           x3obj <- objectFromPtr_nf x3
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

foreign import ccall "qtc_QItemDelegate_setHandler2" qtc_QItemDelegate_setHandler2 :: Ptr (TQItemDelegate a) -> CWString -> Ptr (Ptr (TQItemDelegate x0) -> Ptr (TQPainter t1) -> Ptr (TQStyleOption t2) -> Ptr (TQModelIndex t3) -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QItemDelegate2 :: (Ptr (TQItemDelegate x0) -> Ptr (TQPainter t1) -> Ptr (TQStyleOption t2) -> Ptr (TQModelIndex t3) -> IO ()) -> IO (FunPtr (Ptr (TQItemDelegate x0) -> Ptr (TQPainter t1) -> Ptr (TQStyleOption t2) -> Ptr (TQModelIndex t3) -> IO ()))

foreign import ccall "wrapper" wrapSetHandler_QItemDelegate2_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QItemDelegateSc a) (QItemDelegate x0 -> QPainter t1 -> QStyleOption t2 -> QModelIndex t3 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QItemDelegate2 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QItemDelegate2_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QItemDelegate_setHandler2 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQItemDelegate x0) -> Ptr (TQPainter t1) -> Ptr (TQStyleOption t2) -> Ptr (TQModelIndex t3) -> IO ()
    setHandlerWrapper x0 x1 x2 x3
      = do x0obj <- qItemDelegateFromPtr x0
           x1obj <- objectFromPtr_nf x1
           x2obj <- objectFromPtr_nf x2
           x3obj <- objectFromPtr_nf x3
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

instance Qpaint_h (QItemDelegate ()) ((QPainter t1, QStyleOptionViewItem t2, QModelIndex t3)) where
 paint_h x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QItemDelegate_paint cobj_x0 cobj_x1 cobj_x2 cobj_x3

foreign import ccall "qtc_QItemDelegate_paint" qtc_QItemDelegate_paint :: Ptr (TQItemDelegate a) -> Ptr (TQPainter t1) -> Ptr (TQStyleOptionViewItem t2) -> Ptr (TQModelIndex t3) -> IO ()

instance Qpaint_h (QItemDelegateSc a) ((QPainter t1, QStyleOptionViewItem t2, QModelIndex t3)) where
 paint_h x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QItemDelegate_paint cobj_x0 cobj_x1 cobj_x2 cobj_x3

instance QsetHandler (QItemDelegate ()) (QItemDelegate x0 -> QObject t1 -> QModelIndex t2 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QItemDelegate3 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QItemDelegate3_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QItemDelegate_setHandler3 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQItemDelegate x0) -> Ptr (TQObject t1) -> Ptr (TQModelIndex t2) -> IO ()
    setHandlerWrapper x0 x1 x2
      = do x0obj <- qItemDelegateFromPtr x0
           x1obj <- qObjectFromPtr x1
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

foreign import ccall "qtc_QItemDelegate_setHandler3" qtc_QItemDelegate_setHandler3 :: Ptr (TQItemDelegate a) -> CWString -> Ptr (Ptr (TQItemDelegate x0) -> Ptr (TQObject t1) -> Ptr (TQModelIndex t2) -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QItemDelegate3 :: (Ptr (TQItemDelegate x0) -> Ptr (TQObject t1) -> Ptr (TQModelIndex t2) -> IO ()) -> IO (FunPtr (Ptr (TQItemDelegate x0) -> Ptr (TQObject t1) -> Ptr (TQModelIndex t2) -> IO ()))

foreign import ccall "wrapper" wrapSetHandler_QItemDelegate3_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QItemDelegateSc a) (QItemDelegate x0 -> QObject t1 -> QModelIndex t2 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QItemDelegate3 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QItemDelegate3_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QItemDelegate_setHandler3 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQItemDelegate x0) -> Ptr (TQObject t1) -> Ptr (TQModelIndex t2) -> IO ()
    setHandlerWrapper x0 x1 x2
      = do x0obj <- qItemDelegateFromPtr x0
           x1obj <- qObjectFromPtr x1
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

instance QsetEditorData_h (QItemDelegate ()) ((QWidget t1, QModelIndex t2)) where
 setEditorData_h x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QItemDelegate_setEditorData cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QItemDelegate_setEditorData" qtc_QItemDelegate_setEditorData :: Ptr (TQItemDelegate a) -> Ptr (TQWidget t1) -> Ptr (TQModelIndex t2) -> IO ()

instance QsetEditorData_h (QItemDelegateSc a) ((QWidget t1, QModelIndex t2)) where
 setEditorData_h x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QItemDelegate_setEditorData cobj_x0 cobj_x1 cobj_x2

instance QsetHandler (QItemDelegate ()) (QItemDelegate x0 -> QObject t1 -> QObject t2 -> QModelIndex t3 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QItemDelegate4 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QItemDelegate4_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QItemDelegate_setHandler4 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQItemDelegate x0) -> Ptr (TQObject t1) -> Ptr (TQObject t2) -> Ptr (TQModelIndex t3) -> IO ()
    setHandlerWrapper x0 x1 x2 x3
      = do x0obj <- qItemDelegateFromPtr x0
           x1obj <- qObjectFromPtr x1
           x2obj <- qObjectFromPtr x2
           x3obj <- objectFromPtr_nf x3
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

foreign import ccall "qtc_QItemDelegate_setHandler4" qtc_QItemDelegate_setHandler4 :: Ptr (TQItemDelegate a) -> CWString -> Ptr (Ptr (TQItemDelegate x0) -> Ptr (TQObject t1) -> Ptr (TQObject t2) -> Ptr (TQModelIndex t3) -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QItemDelegate4 :: (Ptr (TQItemDelegate x0) -> Ptr (TQObject t1) -> Ptr (TQObject t2) -> Ptr (TQModelIndex t3) -> IO ()) -> IO (FunPtr (Ptr (TQItemDelegate x0) -> Ptr (TQObject t1) -> Ptr (TQObject t2) -> Ptr (TQModelIndex t3) -> IO ()))

foreign import ccall "wrapper" wrapSetHandler_QItemDelegate4_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QItemDelegateSc a) (QItemDelegate x0 -> QObject t1 -> QObject t2 -> QModelIndex t3 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QItemDelegate4 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QItemDelegate4_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QItemDelegate_setHandler4 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQItemDelegate x0) -> Ptr (TQObject t1) -> Ptr (TQObject t2) -> Ptr (TQModelIndex t3) -> IO ()
    setHandlerWrapper x0 x1 x2 x3
      = do x0obj <- qItemDelegateFromPtr x0
           x1obj <- qObjectFromPtr x1
           x2obj <- qObjectFromPtr x2
           x3obj <- objectFromPtr_nf x3
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

instance QsetModelData_h (QItemDelegate ()) ((QWidget t1, QAbstractItemModel t2, QModelIndex t3)) where
 setModelData_h x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QItemDelegate_setModelData cobj_x0 cobj_x1 cobj_x2 cobj_x3

foreign import ccall "qtc_QItemDelegate_setModelData" qtc_QItemDelegate_setModelData :: Ptr (TQItemDelegate a) -> Ptr (TQWidget t1) -> Ptr (TQAbstractItemModel t2) -> Ptr (TQModelIndex t3) -> IO ()

instance QsetModelData_h (QItemDelegateSc a) ((QWidget t1, QAbstractItemModel t2, QModelIndex t3)) where
 setModelData_h x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QItemDelegate_setModelData cobj_x0 cobj_x1 cobj_x2 cobj_x3

instance QsetHandler (QItemDelegate ()) (QItemDelegate x0 -> QStyleOption t1 -> QModelIndex t2 -> IO (QSize t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QItemDelegate5 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QItemDelegate5_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QItemDelegate_setHandler5 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQItemDelegate x0) -> Ptr (TQStyleOption t1) -> Ptr (TQModelIndex t2) -> IO (Ptr (TQSize t0))
    setHandlerWrapper x0 x1 x2
      = do x0obj <- qItemDelegateFromPtr x0
           x1obj <- objectFromPtr_nf x1
           x2obj <- objectFromPtr_nf x2
           let rv =
                if (objectIsNull x0obj)
                 then return $ objectCast x0obj
                 else _handler x0obj x1obj x2obj
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

foreign import ccall "qtc_QItemDelegate_setHandler5" qtc_QItemDelegate_setHandler5 :: Ptr (TQItemDelegate a) -> CWString -> Ptr (Ptr (TQItemDelegate x0) -> Ptr (TQStyleOption t1) -> Ptr (TQModelIndex t2) -> IO (Ptr (TQSize t0))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QItemDelegate5 :: (Ptr (TQItemDelegate x0) -> Ptr (TQStyleOption t1) -> Ptr (TQModelIndex t2) -> IO (Ptr (TQSize t0))) -> IO (FunPtr (Ptr (TQItemDelegate x0) -> Ptr (TQStyleOption t1) -> Ptr (TQModelIndex t2) -> IO (Ptr (TQSize t0))))

foreign import ccall "wrapper" wrapSetHandler_QItemDelegate5_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QItemDelegateSc a) (QItemDelegate x0 -> QStyleOption t1 -> QModelIndex t2 -> IO (QSize t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QItemDelegate5 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QItemDelegate5_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QItemDelegate_setHandler5 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQItemDelegate x0) -> Ptr (TQStyleOption t1) -> Ptr (TQModelIndex t2) -> IO (Ptr (TQSize t0))
    setHandlerWrapper x0 x1 x2
      = do x0obj <- qItemDelegateFromPtr x0
           x1obj <- objectFromPtr_nf x1
           x2obj <- objectFromPtr_nf x2
           let rv =
                if (objectIsNull x0obj)
                 then return $ objectCast x0obj
                 else _handler x0obj x1obj x2obj
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

instance QqsizeHint_h (QItemDelegate ()) ((QStyleOptionViewItem t1, QModelIndex t2)) where
 qsizeHint_h x0 (x1, x2)
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QItemDelegate_sizeHint cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QItemDelegate_sizeHint" qtc_QItemDelegate_sizeHint :: Ptr (TQItemDelegate a) -> Ptr (TQStyleOptionViewItem t1) -> Ptr (TQModelIndex t2) -> IO (Ptr (TQSize ()))

instance QqsizeHint_h (QItemDelegateSc a) ((QStyleOptionViewItem t1, QModelIndex t2)) where
 qsizeHint_h x0 (x1, x2)
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QItemDelegate_sizeHint cobj_x0 cobj_x1 cobj_x2

instance QsizeHint_h (QItemDelegate ()) ((QStyleOptionViewItem t1, QModelIndex t2)) where
 sizeHint_h x0 (x1, x2)
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QItemDelegate_sizeHint_qth cobj_x0 cobj_x1 cobj_x2 csize_ret_w csize_ret_h

foreign import ccall "qtc_QItemDelegate_sizeHint_qth" qtc_QItemDelegate_sizeHint_qth :: Ptr (TQItemDelegate a) -> Ptr (TQStyleOptionViewItem t1) -> Ptr (TQModelIndex t2) -> Ptr CInt -> Ptr CInt -> IO ()

instance QsizeHint_h (QItemDelegateSc a) ((QStyleOptionViewItem t1, QModelIndex t2)) where
 sizeHint_h x0 (x1, x2)
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QItemDelegate_sizeHint_qth cobj_x0 cobj_x1 cobj_x2 csize_ret_w csize_ret_h

instance QsetHandler (QItemDelegate ()) (QItemDelegate x0 -> QObject t1 -> QStyleOption t2 -> QModelIndex t3 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QItemDelegate6 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QItemDelegate6_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QItemDelegate_setHandler6 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQItemDelegate x0) -> Ptr (TQObject t1) -> Ptr (TQStyleOption t2) -> Ptr (TQModelIndex t3) -> IO ()
    setHandlerWrapper x0 x1 x2 x3
      = do x0obj <- qItemDelegateFromPtr x0
           x1obj <- qObjectFromPtr x1
           x2obj <- objectFromPtr_nf x2
           x3obj <- objectFromPtr_nf x3
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

foreign import ccall "qtc_QItemDelegate_setHandler6" qtc_QItemDelegate_setHandler6 :: Ptr (TQItemDelegate a) -> CWString -> Ptr (Ptr (TQItemDelegate x0) -> Ptr (TQObject t1) -> Ptr (TQStyleOption t2) -> Ptr (TQModelIndex t3) -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QItemDelegate6 :: (Ptr (TQItemDelegate x0) -> Ptr (TQObject t1) -> Ptr (TQStyleOption t2) -> Ptr (TQModelIndex t3) -> IO ()) -> IO (FunPtr (Ptr (TQItemDelegate x0) -> Ptr (TQObject t1) -> Ptr (TQStyleOption t2) -> Ptr (TQModelIndex t3) -> IO ()))

foreign import ccall "wrapper" wrapSetHandler_QItemDelegate6_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QItemDelegateSc a) (QItemDelegate x0 -> QObject t1 -> QStyleOption t2 -> QModelIndex t3 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QItemDelegate6 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QItemDelegate6_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QItemDelegate_setHandler6 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQItemDelegate x0) -> Ptr (TQObject t1) -> Ptr (TQStyleOption t2) -> Ptr (TQModelIndex t3) -> IO ()
    setHandlerWrapper x0 x1 x2 x3
      = do x0obj <- qItemDelegateFromPtr x0
           x1obj <- qObjectFromPtr x1
           x2obj <- objectFromPtr_nf x2
           x3obj <- objectFromPtr_nf x3
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

instance QupdateEditorGeometry_h (QItemDelegate ()) ((QWidget t1, QStyleOptionViewItem t2, QModelIndex t3)) where
 updateEditorGeometry_h x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QItemDelegate_updateEditorGeometry cobj_x0 cobj_x1 cobj_x2 cobj_x3

foreign import ccall "qtc_QItemDelegate_updateEditorGeometry" qtc_QItemDelegate_updateEditorGeometry :: Ptr (TQItemDelegate a) -> Ptr (TQWidget t1) -> Ptr (TQStyleOptionViewItem t2) -> Ptr (TQModelIndex t3) -> IO ()

instance QupdateEditorGeometry_h (QItemDelegateSc a) ((QWidget t1, QStyleOptionViewItem t2, QModelIndex t3)) where
 updateEditorGeometry_h x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QItemDelegate_updateEditorGeometry cobj_x0 cobj_x1 cobj_x2 cobj_x3

instance QsetHandler (QItemDelegate ()) (QItemDelegate x0 -> QEvent t1 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QItemDelegate7 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QItemDelegate7_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QItemDelegate_setHandler7 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQItemDelegate x0) -> Ptr (TQEvent t1) -> IO (CBool)
    setHandlerWrapper x0 x1
      = do x0obj <- qItemDelegateFromPtr x0
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

foreign import ccall "qtc_QItemDelegate_setHandler7" qtc_QItemDelegate_setHandler7 :: Ptr (TQItemDelegate a) -> CWString -> Ptr (Ptr (TQItemDelegate x0) -> Ptr (TQEvent t1) -> IO (CBool)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QItemDelegate7 :: (Ptr (TQItemDelegate x0) -> Ptr (TQEvent t1) -> IO (CBool)) -> IO (FunPtr (Ptr (TQItemDelegate x0) -> Ptr (TQEvent t1) -> IO (CBool)))

foreign import ccall "wrapper" wrapSetHandler_QItemDelegate7_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QItemDelegateSc a) (QItemDelegate x0 -> QEvent t1 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QItemDelegate7 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QItemDelegate7_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QItemDelegate_setHandler7 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQItemDelegate x0) -> Ptr (TQEvent t1) -> IO (CBool)
    setHandlerWrapper x0 x1
      = do x0obj <- qItemDelegateFromPtr x0
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

instance Qevent_h (QItemDelegate ()) ((QEvent t1)) where
 event_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QItemDelegate_event cobj_x0 cobj_x1

foreign import ccall "qtc_QItemDelegate_event" qtc_QItemDelegate_event :: Ptr (TQItemDelegate a) -> Ptr (TQEvent t1) -> IO CBool

instance Qevent_h (QItemDelegateSc a) ((QEvent t1)) where
 event_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QItemDelegate_event cobj_x0 cobj_x1

