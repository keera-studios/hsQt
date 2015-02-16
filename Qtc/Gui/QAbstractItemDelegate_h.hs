{-# OPTIONS -fglasgow-exts -#include "../include/gui/qtc_hs_QAbstractItemDelegate_h.h" #-}
-----------------------------------------------------------------------------
{-| Module    : QAbstractItemDelegate_h.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:21
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QAbstractItemDelegate_h (
  QeditorEvent_h(..)
  ) where

import Foreign.C.Types
import Qtc.Enums.Base

import Qtc.Classes.Base
import Qtc.Classes.Qccs_h
import Qtc.Classes.Core_h
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core
import Qtc.Classes.Gui_h
import Qtc.ClassTypes.Gui
import Foreign.Marshal.Array

instance QunSetUserMethod (QAbstractItemDelegate ()) where
 unSetUserMethod qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QAbstractItemDelegate_unSetUserMethod cobj_qobj (toCInt 0) (toCInt evid)

foreign import ccall "qtc_QAbstractItemDelegate_unSetUserMethod" qtc_QAbstractItemDelegate_unSetUserMethod :: Ptr (TQAbstractItemDelegate a) -> CInt -> CInt -> IO (CBool)

instance QunSetUserMethod (QAbstractItemDelegateSc a) where
 unSetUserMethod qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QAbstractItemDelegate_unSetUserMethod cobj_qobj (toCInt 0) (toCInt evid)

instance QunSetUserMethodVariant (QAbstractItemDelegate ()) where
 unSetUserMethodVariant qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QAbstractItemDelegate_unSetUserMethod cobj_qobj (toCInt 1) (toCInt evid)

instance QunSetUserMethodVariant (QAbstractItemDelegateSc a) where
 unSetUserMethodVariant qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QAbstractItemDelegate_unSetUserMethod cobj_qobj (toCInt 1) (toCInt evid)

instance QunSetUserMethodVariantList (QAbstractItemDelegate ()) where
 unSetUserMethodVariantList qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QAbstractItemDelegate_unSetUserMethod cobj_qobj (toCInt 2) (toCInt evid)

instance QunSetUserMethodVariantList (QAbstractItemDelegateSc a) where
 unSetUserMethodVariantList qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QAbstractItemDelegate_unSetUserMethod cobj_qobj (toCInt 2) (toCInt evid)

instance QsetUserMethod (QAbstractItemDelegate ()) (QAbstractItemDelegate x0 -> IO ()) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethod_QAbstractItemDelegate setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethod_QAbstractItemDelegate_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QAbstractItemDelegate_setUserMethod cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQAbstractItemDelegate x0) -> IO ()
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

foreign import ccall "qtc_QAbstractItemDelegate_setUserMethod" qtc_QAbstractItemDelegate_setUserMethod :: Ptr (TQAbstractItemDelegate a) -> CInt -> Ptr (Ptr (TQAbstractItemDelegate x0) -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetUserMethod_QAbstractItemDelegate :: (Ptr (TQAbstractItemDelegate x0) -> IO ()) -> IO (FunPtr (Ptr (TQAbstractItemDelegate x0) -> IO ()))

foreign import ccall "wrapper" wrapSetUserMethod_QAbstractItemDelegate_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetUserMethod (QAbstractItemDelegateSc a) (QAbstractItemDelegate x0 -> IO ()) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethod_QAbstractItemDelegate setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethod_QAbstractItemDelegate_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QAbstractItemDelegate_setUserMethod cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQAbstractItemDelegate x0) -> IO ()
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

instance QsetUserMethod (QAbstractItemDelegate ()) (QAbstractItemDelegate x0 -> QVariant () -> IO (QVariant ())) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethodVariant_QAbstractItemDelegate setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethodVariant_QAbstractItemDelegate_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QAbstractItemDelegate_setUserMethodVariant cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQAbstractItemDelegate x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))
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

foreign import ccall "qtc_QAbstractItemDelegate_setUserMethodVariant" qtc_QAbstractItemDelegate_setUserMethodVariant :: Ptr (TQAbstractItemDelegate a) -> CInt -> Ptr (Ptr (TQAbstractItemDelegate x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetUserMethodVariant_QAbstractItemDelegate :: (Ptr (TQAbstractItemDelegate x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))) -> IO (FunPtr (Ptr (TQAbstractItemDelegate x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))))

foreign import ccall "wrapper" wrapSetUserMethodVariant_QAbstractItemDelegate_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetUserMethod (QAbstractItemDelegateSc a) (QAbstractItemDelegate x0 -> QVariant () -> IO (QVariant ())) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethodVariant_QAbstractItemDelegate setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethodVariant_QAbstractItemDelegate_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QAbstractItemDelegate_setUserMethodVariant cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQAbstractItemDelegate x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))
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

instance QunSetHandler (QAbstractItemDelegate ()) where 
 unSetHandler qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withCWString evid $ \cstr_evid ->
    qtc_QAbstractItemDelegate_unSetHandler cobj_qobj cstr_evid

foreign import ccall "qtc_QAbstractItemDelegate_unSetHandler" qtc_QAbstractItemDelegate_unSetHandler :: Ptr (TQAbstractItemDelegate a) -> CWString -> IO (CBool)

instance QunSetHandler (QAbstractItemDelegateSc a) where 
 unSetHandler qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withCWString evid $ \cstr_evid ->
    qtc_QAbstractItemDelegate_unSetHandler cobj_qobj cstr_evid

instance QsetHandler (QAbstractItemDelegate ()) (QAbstractItemDelegate x0 -> QObject t1 -> QStyleOption t2 -> QModelIndex t3 -> IO (QObject t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractItemDelegate1 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractItemDelegate1_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractItemDelegate_setHandler1 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractItemDelegate x0) -> Ptr (TQObject t1) -> Ptr (TQStyleOption t2) -> Ptr (TQModelIndex t3) -> IO (Ptr (TQObject t0))
    setHandlerWrapper x0 x1 x2 x3
      = do x0obj <- qAbstractItemDelegateFromPtr x0
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

foreign import ccall "qtc_QAbstractItemDelegate_setHandler1" qtc_QAbstractItemDelegate_setHandler1 :: Ptr (TQAbstractItemDelegate a) -> CWString -> Ptr (Ptr (TQAbstractItemDelegate x0) -> Ptr (TQObject t1) -> Ptr (TQStyleOption t2) -> Ptr (TQModelIndex t3) -> IO (Ptr (TQObject t0))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QAbstractItemDelegate1 :: (Ptr (TQAbstractItemDelegate x0) -> Ptr (TQObject t1) -> Ptr (TQStyleOption t2) -> Ptr (TQModelIndex t3) -> IO (Ptr (TQObject t0))) -> IO (FunPtr (Ptr (TQAbstractItemDelegate x0) -> Ptr (TQObject t1) -> Ptr (TQStyleOption t2) -> Ptr (TQModelIndex t3) -> IO (Ptr (TQObject t0))))

foreign import ccall "wrapper" wrapSetHandler_QAbstractItemDelegate1_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QAbstractItemDelegateSc a) (QAbstractItemDelegate x0 -> QObject t1 -> QStyleOption t2 -> QModelIndex t3 -> IO (QObject t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractItemDelegate1 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractItemDelegate1_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractItemDelegate_setHandler1 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractItemDelegate x0) -> Ptr (TQObject t1) -> Ptr (TQStyleOption t2) -> Ptr (TQModelIndex t3) -> IO (Ptr (TQObject t0))
    setHandlerWrapper x0 x1 x2 x3
      = do x0obj <- qAbstractItemDelegateFromPtr x0
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

instance QcreateEditor_h (QAbstractItemDelegate ()) ((QWidget t1, QStyleOptionViewItem t2, QModelIndex t3)) where
 createEditor_h x0 (x1, x2, x3)
  = withQWidgetResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QAbstractItemDelegate_createEditor cobj_x0 cobj_x1 cobj_x2 cobj_x3

foreign import ccall "qtc_QAbstractItemDelegate_createEditor" qtc_QAbstractItemDelegate_createEditor :: Ptr (TQAbstractItemDelegate a) -> Ptr (TQWidget t1) -> Ptr (TQStyleOptionViewItem t2) -> Ptr (TQModelIndex t3) -> IO (Ptr (TQWidget ()))

instance QcreateEditor_h (QAbstractItemDelegateSc a) ((QWidget t1, QStyleOptionViewItem t2, QModelIndex t3)) where
 createEditor_h x0 (x1, x2, x3)
  = withQWidgetResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QAbstractItemDelegate_createEditor cobj_x0 cobj_x1 cobj_x2 cobj_x3

instance QsetHandler (QAbstractItemDelegate ()) (QAbstractItemDelegate x0 -> QEvent t1 -> QObject t2 -> QStyleOption t3 -> QModelIndex t4 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractItemDelegate2 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractItemDelegate2_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractItemDelegate_setHandler2 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractItemDelegate x0) -> Ptr (TQEvent t1) -> Ptr (TQObject t2) -> Ptr (TQStyleOption t3) -> Ptr (TQModelIndex t4) -> IO (CBool)
    setHandlerWrapper x0 x1 x2 x3 x4
      = do x0obj <- qAbstractItemDelegateFromPtr x0
           x1obj <- objectFromPtr_nf x1
           x2obj <- qObjectFromPtr x2
           x3obj <- objectFromPtr_nf x3
           x4obj <- objectFromPtr_nf x4
           let rv =
                if (objectIsNull x0obj)
                 then return False
                 else _handler x0obj x1obj x2obj x3obj x4obj
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

foreign import ccall "qtc_QAbstractItemDelegate_setHandler2" qtc_QAbstractItemDelegate_setHandler2 :: Ptr (TQAbstractItemDelegate a) -> CWString -> Ptr (Ptr (TQAbstractItemDelegate x0) -> Ptr (TQEvent t1) -> Ptr (TQObject t2) -> Ptr (TQStyleOption t3) -> Ptr (TQModelIndex t4) -> IO (CBool)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QAbstractItemDelegate2 :: (Ptr (TQAbstractItemDelegate x0) -> Ptr (TQEvent t1) -> Ptr (TQObject t2) -> Ptr (TQStyleOption t3) -> Ptr (TQModelIndex t4) -> IO (CBool)) -> IO (FunPtr (Ptr (TQAbstractItemDelegate x0) -> Ptr (TQEvent t1) -> Ptr (TQObject t2) -> Ptr (TQStyleOption t3) -> Ptr (TQModelIndex t4) -> IO (CBool)))

foreign import ccall "wrapper" wrapSetHandler_QAbstractItemDelegate2_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QAbstractItemDelegateSc a) (QAbstractItemDelegate x0 -> QEvent t1 -> QObject t2 -> QStyleOption t3 -> QModelIndex t4 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractItemDelegate2 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractItemDelegate2_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractItemDelegate_setHandler2 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractItemDelegate x0) -> Ptr (TQEvent t1) -> Ptr (TQObject t2) -> Ptr (TQStyleOption t3) -> Ptr (TQModelIndex t4) -> IO (CBool)
    setHandlerWrapper x0 x1 x2 x3 x4
      = do x0obj <- qAbstractItemDelegateFromPtr x0
           x1obj <- objectFromPtr_nf x1
           x2obj <- qObjectFromPtr x2
           x3obj <- objectFromPtr_nf x3
           x4obj <- objectFromPtr_nf x4
           let rv =
                if (objectIsNull x0obj)
                 then return False
                 else _handler x0obj x1obj x2obj x3obj x4obj
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

class QeditorEvent_h x0 x1 where
 editorEvent_h :: x0 -> x1 -> IO (Bool)

instance QeditorEvent_h (QAbstractItemDelegate ()) ((QEvent t1, QAbstractItemModel t2, QStyleOptionViewItem t3, QModelIndex t4)) where
 editorEvent_h x0 (x1, x2, x3, x4)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    withObjectPtr x4 $ \cobj_x4 ->
    qtc_QAbstractItemDelegate_editorEvent cobj_x0 cobj_x1 cobj_x2 cobj_x3 cobj_x4

foreign import ccall "qtc_QAbstractItemDelegate_editorEvent" qtc_QAbstractItemDelegate_editorEvent :: Ptr (TQAbstractItemDelegate a) -> Ptr (TQEvent t1) -> Ptr (TQAbstractItemModel t2) -> Ptr (TQStyleOptionViewItem t3) -> Ptr (TQModelIndex t4) -> IO CBool

instance QeditorEvent_h (QAbstractItemDelegateSc a) ((QEvent t1, QAbstractItemModel t2, QStyleOptionViewItem t3, QModelIndex t4)) where
 editorEvent_h x0 (x1, x2, x3, x4)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    withObjectPtr x4 $ \cobj_x4 ->
    qtc_QAbstractItemDelegate_editorEvent cobj_x0 cobj_x1 cobj_x2 cobj_x3 cobj_x4

instance QsetHandler (QAbstractItemDelegate ()) (QAbstractItemDelegate x0 -> QPainter t1 -> QStyleOption t2 -> QModelIndex t3 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractItemDelegate3 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractItemDelegate3_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractItemDelegate_setHandler3 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractItemDelegate x0) -> Ptr (TQPainter t1) -> Ptr (TQStyleOption t2) -> Ptr (TQModelIndex t3) -> IO ()
    setHandlerWrapper x0 x1 x2 x3
      = do x0obj <- qAbstractItemDelegateFromPtr x0
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

foreign import ccall "qtc_QAbstractItemDelegate_setHandler3" qtc_QAbstractItemDelegate_setHandler3 :: Ptr (TQAbstractItemDelegate a) -> CWString -> Ptr (Ptr (TQAbstractItemDelegate x0) -> Ptr (TQPainter t1) -> Ptr (TQStyleOption t2) -> Ptr (TQModelIndex t3) -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QAbstractItemDelegate3 :: (Ptr (TQAbstractItemDelegate x0) -> Ptr (TQPainter t1) -> Ptr (TQStyleOption t2) -> Ptr (TQModelIndex t3) -> IO ()) -> IO (FunPtr (Ptr (TQAbstractItemDelegate x0) -> Ptr (TQPainter t1) -> Ptr (TQStyleOption t2) -> Ptr (TQModelIndex t3) -> IO ()))

foreign import ccall "wrapper" wrapSetHandler_QAbstractItemDelegate3_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QAbstractItemDelegateSc a) (QAbstractItemDelegate x0 -> QPainter t1 -> QStyleOption t2 -> QModelIndex t3 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractItemDelegate3 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractItemDelegate3_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractItemDelegate_setHandler3 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractItemDelegate x0) -> Ptr (TQPainter t1) -> Ptr (TQStyleOption t2) -> Ptr (TQModelIndex t3) -> IO ()
    setHandlerWrapper x0 x1 x2 x3
      = do x0obj <- qAbstractItemDelegateFromPtr x0
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

instance Qpaint_h (QAbstractItemDelegate ()) ((QPainter t1, QStyleOptionViewItem t2, QModelIndex t3)) where
 paint_h x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QAbstractItemDelegate_paint cobj_x0 cobj_x1 cobj_x2 cobj_x3

foreign import ccall "qtc_QAbstractItemDelegate_paint" qtc_QAbstractItemDelegate_paint :: Ptr (TQAbstractItemDelegate a) -> Ptr (TQPainter t1) -> Ptr (TQStyleOptionViewItem t2) -> Ptr (TQModelIndex t3) -> IO ()

instance Qpaint_h (QAbstractItemDelegateSc a) ((QPainter t1, QStyleOptionViewItem t2, QModelIndex t3)) where
 paint_h x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QAbstractItemDelegate_paint cobj_x0 cobj_x1 cobj_x2 cobj_x3

instance QsetHandler (QAbstractItemDelegate ()) (QAbstractItemDelegate x0 -> QObject t1 -> QModelIndex t2 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractItemDelegate4 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractItemDelegate4_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractItemDelegate_setHandler4 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractItemDelegate x0) -> Ptr (TQObject t1) -> Ptr (TQModelIndex t2) -> IO ()
    setHandlerWrapper x0 x1 x2
      = do x0obj <- qAbstractItemDelegateFromPtr x0
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

foreign import ccall "qtc_QAbstractItemDelegate_setHandler4" qtc_QAbstractItemDelegate_setHandler4 :: Ptr (TQAbstractItemDelegate a) -> CWString -> Ptr (Ptr (TQAbstractItemDelegate x0) -> Ptr (TQObject t1) -> Ptr (TQModelIndex t2) -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QAbstractItemDelegate4 :: (Ptr (TQAbstractItemDelegate x0) -> Ptr (TQObject t1) -> Ptr (TQModelIndex t2) -> IO ()) -> IO (FunPtr (Ptr (TQAbstractItemDelegate x0) -> Ptr (TQObject t1) -> Ptr (TQModelIndex t2) -> IO ()))

foreign import ccall "wrapper" wrapSetHandler_QAbstractItemDelegate4_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QAbstractItemDelegateSc a) (QAbstractItemDelegate x0 -> QObject t1 -> QModelIndex t2 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractItemDelegate4 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractItemDelegate4_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractItemDelegate_setHandler4 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractItemDelegate x0) -> Ptr (TQObject t1) -> Ptr (TQModelIndex t2) -> IO ()
    setHandlerWrapper x0 x1 x2
      = do x0obj <- qAbstractItemDelegateFromPtr x0
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

instance QsetEditorData_h (QAbstractItemDelegate ()) ((QWidget t1, QModelIndex t2)) where
 setEditorData_h x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QAbstractItemDelegate_setEditorData cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QAbstractItemDelegate_setEditorData" qtc_QAbstractItemDelegate_setEditorData :: Ptr (TQAbstractItemDelegate a) -> Ptr (TQWidget t1) -> Ptr (TQModelIndex t2) -> IO ()

instance QsetEditorData_h (QAbstractItemDelegateSc a) ((QWidget t1, QModelIndex t2)) where
 setEditorData_h x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QAbstractItemDelegate_setEditorData cobj_x0 cobj_x1 cobj_x2

instance QsetHandler (QAbstractItemDelegate ()) (QAbstractItemDelegate x0 -> QObject t1 -> QObject t2 -> QModelIndex t3 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractItemDelegate5 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractItemDelegate5_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractItemDelegate_setHandler5 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractItemDelegate x0) -> Ptr (TQObject t1) -> Ptr (TQObject t2) -> Ptr (TQModelIndex t3) -> IO ()
    setHandlerWrapper x0 x1 x2 x3
      = do x0obj <- qAbstractItemDelegateFromPtr x0
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

foreign import ccall "qtc_QAbstractItemDelegate_setHandler5" qtc_QAbstractItemDelegate_setHandler5 :: Ptr (TQAbstractItemDelegate a) -> CWString -> Ptr (Ptr (TQAbstractItemDelegate x0) -> Ptr (TQObject t1) -> Ptr (TQObject t2) -> Ptr (TQModelIndex t3) -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QAbstractItemDelegate5 :: (Ptr (TQAbstractItemDelegate x0) -> Ptr (TQObject t1) -> Ptr (TQObject t2) -> Ptr (TQModelIndex t3) -> IO ()) -> IO (FunPtr (Ptr (TQAbstractItemDelegate x0) -> Ptr (TQObject t1) -> Ptr (TQObject t2) -> Ptr (TQModelIndex t3) -> IO ()))

foreign import ccall "wrapper" wrapSetHandler_QAbstractItemDelegate5_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QAbstractItemDelegateSc a) (QAbstractItemDelegate x0 -> QObject t1 -> QObject t2 -> QModelIndex t3 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractItemDelegate5 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractItemDelegate5_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractItemDelegate_setHandler5 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractItemDelegate x0) -> Ptr (TQObject t1) -> Ptr (TQObject t2) -> Ptr (TQModelIndex t3) -> IO ()
    setHandlerWrapper x0 x1 x2 x3
      = do x0obj <- qAbstractItemDelegateFromPtr x0
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

instance QsetModelData_h (QAbstractItemDelegate ()) ((QWidget t1, QAbstractItemModel t2, QModelIndex t3)) where
 setModelData_h x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QAbstractItemDelegate_setModelData cobj_x0 cobj_x1 cobj_x2 cobj_x3

foreign import ccall "qtc_QAbstractItemDelegate_setModelData" qtc_QAbstractItemDelegate_setModelData :: Ptr (TQAbstractItemDelegate a) -> Ptr (TQWidget t1) -> Ptr (TQAbstractItemModel t2) -> Ptr (TQModelIndex t3) -> IO ()

instance QsetModelData_h (QAbstractItemDelegateSc a) ((QWidget t1, QAbstractItemModel t2, QModelIndex t3)) where
 setModelData_h x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QAbstractItemDelegate_setModelData cobj_x0 cobj_x1 cobj_x2 cobj_x3

instance QsetHandler (QAbstractItemDelegate ()) (QAbstractItemDelegate x0 -> QStyleOption t1 -> QModelIndex t2 -> IO (QSize t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractItemDelegate6 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractItemDelegate6_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractItemDelegate_setHandler6 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractItemDelegate x0) -> Ptr (TQStyleOption t1) -> Ptr (TQModelIndex t2) -> IO (Ptr (TQSize t0))
    setHandlerWrapper x0 x1 x2
      = do x0obj <- qAbstractItemDelegateFromPtr x0
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

foreign import ccall "qtc_QAbstractItemDelegate_setHandler6" qtc_QAbstractItemDelegate_setHandler6 :: Ptr (TQAbstractItemDelegate a) -> CWString -> Ptr (Ptr (TQAbstractItemDelegate x0) -> Ptr (TQStyleOption t1) -> Ptr (TQModelIndex t2) -> IO (Ptr (TQSize t0))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QAbstractItemDelegate6 :: (Ptr (TQAbstractItemDelegate x0) -> Ptr (TQStyleOption t1) -> Ptr (TQModelIndex t2) -> IO (Ptr (TQSize t0))) -> IO (FunPtr (Ptr (TQAbstractItemDelegate x0) -> Ptr (TQStyleOption t1) -> Ptr (TQModelIndex t2) -> IO (Ptr (TQSize t0))))

foreign import ccall "wrapper" wrapSetHandler_QAbstractItemDelegate6_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QAbstractItemDelegateSc a) (QAbstractItemDelegate x0 -> QStyleOption t1 -> QModelIndex t2 -> IO (QSize t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractItemDelegate6 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractItemDelegate6_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractItemDelegate_setHandler6 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractItemDelegate x0) -> Ptr (TQStyleOption t1) -> Ptr (TQModelIndex t2) -> IO (Ptr (TQSize t0))
    setHandlerWrapper x0 x1 x2
      = do x0obj <- qAbstractItemDelegateFromPtr x0
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

instance QqsizeHint_h (QAbstractItemDelegate ()) ((QStyleOptionViewItem t1, QModelIndex t2)) where
 qsizeHint_h x0 (x1, x2)
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QAbstractItemDelegate_sizeHint cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QAbstractItemDelegate_sizeHint" qtc_QAbstractItemDelegate_sizeHint :: Ptr (TQAbstractItemDelegate a) -> Ptr (TQStyleOptionViewItem t1) -> Ptr (TQModelIndex t2) -> IO (Ptr (TQSize ()))

instance QqsizeHint_h (QAbstractItemDelegateSc a) ((QStyleOptionViewItem t1, QModelIndex t2)) where
 qsizeHint_h x0 (x1, x2)
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QAbstractItemDelegate_sizeHint cobj_x0 cobj_x1 cobj_x2

instance QsizeHint_h (QAbstractItemDelegate ()) ((QStyleOptionViewItem t1, QModelIndex t2)) where
 sizeHint_h x0 (x1, x2)
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QAbstractItemDelegate_sizeHint_qth cobj_x0 cobj_x1 cobj_x2 csize_ret_w csize_ret_h

foreign import ccall "qtc_QAbstractItemDelegate_sizeHint_qth" qtc_QAbstractItemDelegate_sizeHint_qth :: Ptr (TQAbstractItemDelegate a) -> Ptr (TQStyleOptionViewItem t1) -> Ptr (TQModelIndex t2) -> Ptr CInt -> Ptr CInt -> IO ()

instance QsizeHint_h (QAbstractItemDelegateSc a) ((QStyleOptionViewItem t1, QModelIndex t2)) where
 sizeHint_h x0 (x1, x2)
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QAbstractItemDelegate_sizeHint_qth cobj_x0 cobj_x1 cobj_x2 csize_ret_w csize_ret_h

instance QsetHandler (QAbstractItemDelegate ()) (QAbstractItemDelegate x0 -> QObject t1 -> QStyleOption t2 -> QModelIndex t3 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractItemDelegate7 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractItemDelegate7_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractItemDelegate_setHandler7 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractItemDelegate x0) -> Ptr (TQObject t1) -> Ptr (TQStyleOption t2) -> Ptr (TQModelIndex t3) -> IO ()
    setHandlerWrapper x0 x1 x2 x3
      = do x0obj <- qAbstractItemDelegateFromPtr x0
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

foreign import ccall "qtc_QAbstractItemDelegate_setHandler7" qtc_QAbstractItemDelegate_setHandler7 :: Ptr (TQAbstractItemDelegate a) -> CWString -> Ptr (Ptr (TQAbstractItemDelegate x0) -> Ptr (TQObject t1) -> Ptr (TQStyleOption t2) -> Ptr (TQModelIndex t3) -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QAbstractItemDelegate7 :: (Ptr (TQAbstractItemDelegate x0) -> Ptr (TQObject t1) -> Ptr (TQStyleOption t2) -> Ptr (TQModelIndex t3) -> IO ()) -> IO (FunPtr (Ptr (TQAbstractItemDelegate x0) -> Ptr (TQObject t1) -> Ptr (TQStyleOption t2) -> Ptr (TQModelIndex t3) -> IO ()))

foreign import ccall "wrapper" wrapSetHandler_QAbstractItemDelegate7_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QAbstractItemDelegateSc a) (QAbstractItemDelegate x0 -> QObject t1 -> QStyleOption t2 -> QModelIndex t3 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractItemDelegate7 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractItemDelegate7_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractItemDelegate_setHandler7 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractItemDelegate x0) -> Ptr (TQObject t1) -> Ptr (TQStyleOption t2) -> Ptr (TQModelIndex t3) -> IO ()
    setHandlerWrapper x0 x1 x2 x3
      = do x0obj <- qAbstractItemDelegateFromPtr x0
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

instance QupdateEditorGeometry_h (QAbstractItemDelegate ()) ((QWidget t1, QStyleOptionViewItem t2, QModelIndex t3)) where
 updateEditorGeometry_h x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QAbstractItemDelegate_updateEditorGeometry cobj_x0 cobj_x1 cobj_x2 cobj_x3

foreign import ccall "qtc_QAbstractItemDelegate_updateEditorGeometry" qtc_QAbstractItemDelegate_updateEditorGeometry :: Ptr (TQAbstractItemDelegate a) -> Ptr (TQWidget t1) -> Ptr (TQStyleOptionViewItem t2) -> Ptr (TQModelIndex t3) -> IO ()

instance QupdateEditorGeometry_h (QAbstractItemDelegateSc a) ((QWidget t1, QStyleOptionViewItem t2, QModelIndex t3)) where
 updateEditorGeometry_h x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QAbstractItemDelegate_updateEditorGeometry cobj_x0 cobj_x1 cobj_x2 cobj_x3

instance QsetHandler (QAbstractItemDelegate ()) (QAbstractItemDelegate x0 -> QEvent t1 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractItemDelegate8 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractItemDelegate8_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractItemDelegate_setHandler8 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractItemDelegate x0) -> Ptr (TQEvent t1) -> IO (CBool)
    setHandlerWrapper x0 x1
      = do x0obj <- qAbstractItemDelegateFromPtr x0
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

foreign import ccall "qtc_QAbstractItemDelegate_setHandler8" qtc_QAbstractItemDelegate_setHandler8 :: Ptr (TQAbstractItemDelegate a) -> CWString -> Ptr (Ptr (TQAbstractItemDelegate x0) -> Ptr (TQEvent t1) -> IO (CBool)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QAbstractItemDelegate8 :: (Ptr (TQAbstractItemDelegate x0) -> Ptr (TQEvent t1) -> IO (CBool)) -> IO (FunPtr (Ptr (TQAbstractItemDelegate x0) -> Ptr (TQEvent t1) -> IO (CBool)))

foreign import ccall "wrapper" wrapSetHandler_QAbstractItemDelegate8_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QAbstractItemDelegateSc a) (QAbstractItemDelegate x0 -> QEvent t1 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractItemDelegate8 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractItemDelegate8_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractItemDelegate_setHandler8 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractItemDelegate x0) -> Ptr (TQEvent t1) -> IO (CBool)
    setHandlerWrapper x0 x1
      = do x0obj <- qAbstractItemDelegateFromPtr x0
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

instance Qevent_h (QAbstractItemDelegate ()) ((QEvent t1)) where
 event_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemDelegate_event cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractItemDelegate_event" qtc_QAbstractItemDelegate_event :: Ptr (TQAbstractItemDelegate a) -> Ptr (TQEvent t1) -> IO CBool

instance Qevent_h (QAbstractItemDelegateSc a) ((QEvent t1)) where
 event_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemDelegate_event cobj_x0 cobj_x1

instance QsetHandler (QAbstractItemDelegate ()) (QAbstractItemDelegate x0 -> QObject t1 -> QEvent t2 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractItemDelegate9 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractItemDelegate9_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractItemDelegate_setHandler9 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractItemDelegate x0) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO (CBool)
    setHandlerWrapper x0 x1 x2
      = do x0obj <- qAbstractItemDelegateFromPtr x0
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

foreign import ccall "qtc_QAbstractItemDelegate_setHandler9" qtc_QAbstractItemDelegate_setHandler9 :: Ptr (TQAbstractItemDelegate a) -> CWString -> Ptr (Ptr (TQAbstractItemDelegate x0) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO (CBool)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QAbstractItemDelegate9 :: (Ptr (TQAbstractItemDelegate x0) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO (CBool)) -> IO (FunPtr (Ptr (TQAbstractItemDelegate x0) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO (CBool)))

foreign import ccall "wrapper" wrapSetHandler_QAbstractItemDelegate9_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QAbstractItemDelegateSc a) (QAbstractItemDelegate x0 -> QObject t1 -> QEvent t2 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractItemDelegate9 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractItemDelegate9_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractItemDelegate_setHandler9 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractItemDelegate x0) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO (CBool)
    setHandlerWrapper x0 x1 x2
      = do x0obj <- qAbstractItemDelegateFromPtr x0
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

instance QeventFilter_h (QAbstractItemDelegate ()) ((QObject t1, QEvent t2)) where
 eventFilter_h x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QAbstractItemDelegate_eventFilter cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QAbstractItemDelegate_eventFilter" qtc_QAbstractItemDelegate_eventFilter :: Ptr (TQAbstractItemDelegate a) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO CBool

instance QeventFilter_h (QAbstractItemDelegateSc a) ((QObject t1, QEvent t2)) where
 eventFilter_h x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QAbstractItemDelegate_eventFilter cobj_x0 cobj_x1 cobj_x2

