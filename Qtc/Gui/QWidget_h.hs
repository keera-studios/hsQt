{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QWidget_h.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:23
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QWidget_h where

import Foreign.C.Types
import Qtc.Enums.Base
import Qtc.Enums.Gui.QPaintDevice
import Qtc.Enums.Core.Qt

import Qtc.Classes.Base
import Qtc.Classes.Qccs_h
import Qtc.Classes.Core_h
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core
import Qtc.Classes.Gui_h
import Qtc.ClassTypes.Gui
import Foreign.Marshal.Array

instance QunSetUserMethod (QWidget ()) where
 unSetUserMethod qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QWidget_unSetUserMethod cobj_qobj (toCInt 0) (toCInt evid)

foreign import ccall "qtc_QWidget_unSetUserMethod" qtc_QWidget_unSetUserMethod :: Ptr (TQWidget a) -> CInt -> CInt -> IO (CBool)

instance QunSetUserMethod (QWidgetSc a) where
 unSetUserMethod qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QWidget_unSetUserMethod cobj_qobj (toCInt 0) (toCInt evid)

instance QunSetUserMethodVariant (QWidget ()) where
 unSetUserMethodVariant qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QWidget_unSetUserMethod cobj_qobj (toCInt 1) (toCInt evid)

instance QunSetUserMethodVariant (QWidgetSc a) where
 unSetUserMethodVariant qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QWidget_unSetUserMethod cobj_qobj (toCInt 1) (toCInt evid)

instance QunSetUserMethodVariantList (QWidget ()) where
 unSetUserMethodVariantList qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QWidget_unSetUserMethod cobj_qobj (toCInt 2) (toCInt evid)

instance QunSetUserMethodVariantList (QWidgetSc a) where
 unSetUserMethodVariantList qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QWidget_unSetUserMethod cobj_qobj (toCInt 2) (toCInt evid)

instance QsetUserMethod (QWidget ()) (QWidget x0 -> IO ()) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethod_QWidget setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethod_QWidget_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QWidget_setUserMethod cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQWidget x0) -> IO ()
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

foreign import ccall "qtc_QWidget_setUserMethod" qtc_QWidget_setUserMethod :: Ptr (TQWidget a) -> CInt -> Ptr (Ptr (TQWidget x0) -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetUserMethod_QWidget :: (Ptr (TQWidget x0) -> IO ()) -> IO (FunPtr (Ptr (TQWidget x0) -> IO ()))

foreign import ccall "wrapper" wrapSetUserMethod_QWidget_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetUserMethod (QWidgetSc a) (QWidget x0 -> IO ()) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethod_QWidget setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethod_QWidget_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QWidget_setUserMethod cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQWidget x0) -> IO ()
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

instance QsetUserMethod (QWidget ()) (QWidget x0 -> QVariant () -> IO (QVariant ())) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethodVariant_QWidget setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethodVariant_QWidget_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QWidget_setUserMethodVariant cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQWidget x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))
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

foreign import ccall "qtc_QWidget_setUserMethodVariant" qtc_QWidget_setUserMethodVariant :: Ptr (TQWidget a) -> CInt -> Ptr (Ptr (TQWidget x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetUserMethodVariant_QWidget :: (Ptr (TQWidget x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))) -> IO (FunPtr (Ptr (TQWidget x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))))

foreign import ccall "wrapper" wrapSetUserMethodVariant_QWidget_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetUserMethod (QWidgetSc a) (QWidget x0 -> QVariant () -> IO (QVariant ())) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethodVariant_QWidget setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethodVariant_QWidget_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QWidget_setUserMethodVariant cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQWidget x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))
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

instance QunSetHandler (QWidget ()) where 
 unSetHandler qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withCWString evid $ \cstr_evid ->
    qtc_QWidget_unSetHandler cobj_qobj cstr_evid

foreign import ccall "qtc_QWidget_unSetHandler" qtc_QWidget_unSetHandler :: Ptr (TQWidget a) -> CWString -> IO (CBool)

instance QunSetHandler (QWidgetSc a) where 
 unSetHandler qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withCWString evid $ \cstr_evid ->
    qtc_QWidget_unSetHandler cobj_qobj cstr_evid

instance QsetHandler (QWidget ()) (QWidget x0 -> QEvent t1 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QWidget1 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QWidget1_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QWidget_setHandler1 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQWidget x0) -> Ptr (TQEvent t1) -> IO ()
    setHandlerWrapper x0 x1
      = do x0obj <- qWidgetFromPtr x0
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

foreign import ccall "qtc_QWidget_setHandler1" qtc_QWidget_setHandler1 :: Ptr (TQWidget a) -> CWString -> Ptr (Ptr (TQWidget x0) -> Ptr (TQEvent t1) -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QWidget1 :: (Ptr (TQWidget x0) -> Ptr (TQEvent t1) -> IO ()) -> IO (FunPtr (Ptr (TQWidget x0) -> Ptr (TQEvent t1) -> IO ()))

foreign import ccall "wrapper" wrapSetHandler_QWidget1_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QWidgetSc a) (QWidget x0 -> QEvent t1 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QWidget1 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QWidget1_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QWidget_setHandler1 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQWidget x0) -> Ptr (TQEvent t1) -> IO ()
    setHandlerWrapper x0 x1
      = do x0obj <- qWidgetFromPtr x0
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

instance QactionEvent_h (QWidget ()) ((QActionEvent t1)) where
 actionEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_actionEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QWidget_actionEvent" qtc_QWidget_actionEvent :: Ptr (TQWidget a) -> Ptr (TQActionEvent t1) -> IO ()

instance QactionEvent_h (QWidgetSc a) ((QActionEvent t1)) where
 actionEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_actionEvent cobj_x0 cobj_x1

instance QchangeEvent_h (QWidget ()) ((QEvent t1)) where
 changeEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_changeEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QWidget_changeEvent" qtc_QWidget_changeEvent :: Ptr (TQWidget a) -> Ptr (TQEvent t1) -> IO ()

instance QchangeEvent_h (QWidgetSc a) ((QEvent t1)) where
 changeEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_changeEvent cobj_x0 cobj_x1

instance QcloseEvent_h (QWidget ()) ((QCloseEvent t1)) where
 closeEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_closeEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QWidget_closeEvent" qtc_QWidget_closeEvent :: Ptr (TQWidget a) -> Ptr (TQCloseEvent t1) -> IO ()

instance QcloseEvent_h (QWidgetSc a) ((QCloseEvent t1)) where
 closeEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_closeEvent cobj_x0 cobj_x1

instance QcontextMenuEvent_h (QWidget ()) ((QContextMenuEvent t1)) where
 contextMenuEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_contextMenuEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QWidget_contextMenuEvent" qtc_QWidget_contextMenuEvent :: Ptr (TQWidget a) -> Ptr (TQContextMenuEvent t1) -> IO ()

instance QcontextMenuEvent_h (QWidgetSc a) ((QContextMenuEvent t1)) where
 contextMenuEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_contextMenuEvent cobj_x0 cobj_x1

instance QsetHandler (QWidget ()) (QWidget x0 -> IO (Int)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QWidget2 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QWidget2_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QWidget_setHandler2 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQWidget x0) -> IO (CInt)
    setHandlerWrapper x0
      = do x0obj <- qWidgetFromPtr x0
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

foreign import ccall "qtc_QWidget_setHandler2" qtc_QWidget_setHandler2 :: Ptr (TQWidget a) -> CWString -> Ptr (Ptr (TQWidget x0) -> IO (CInt)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QWidget2 :: (Ptr (TQWidget x0) -> IO (CInt)) -> IO (FunPtr (Ptr (TQWidget x0) -> IO (CInt)))

foreign import ccall "wrapper" wrapSetHandler_QWidget2_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QWidgetSc a) (QWidget x0 -> IO (Int)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QWidget2 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QWidget2_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QWidget_setHandler2 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQWidget x0) -> IO (CInt)
    setHandlerWrapper x0
      = do x0obj <- qWidgetFromPtr x0
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

instance QdevType_h (QWidget ()) (()) where
 devType_h x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_devType cobj_x0

foreign import ccall "qtc_QWidget_devType" qtc_QWidget_devType :: Ptr (TQWidget a) -> IO CInt

instance QdevType_h (QWidgetSc a) (()) where
 devType_h x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_devType cobj_x0

instance QdragEnterEvent_h (QWidget ()) ((QDragEnterEvent t1)) where
 dragEnterEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_dragEnterEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QWidget_dragEnterEvent" qtc_QWidget_dragEnterEvent :: Ptr (TQWidget a) -> Ptr (TQDragEnterEvent t1) -> IO ()

instance QdragEnterEvent_h (QWidgetSc a) ((QDragEnterEvent t1)) where
 dragEnterEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_dragEnterEvent cobj_x0 cobj_x1

instance QdragLeaveEvent_h (QWidget ()) ((QDragLeaveEvent t1)) where
 dragLeaveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_dragLeaveEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QWidget_dragLeaveEvent" qtc_QWidget_dragLeaveEvent :: Ptr (TQWidget a) -> Ptr (TQDragLeaveEvent t1) -> IO ()

instance QdragLeaveEvent_h (QWidgetSc a) ((QDragLeaveEvent t1)) where
 dragLeaveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_dragLeaveEvent cobj_x0 cobj_x1

instance QdragMoveEvent_h (QWidget ()) ((QDragMoveEvent t1)) where
 dragMoveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_dragMoveEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QWidget_dragMoveEvent" qtc_QWidget_dragMoveEvent :: Ptr (TQWidget a) -> Ptr (TQDragMoveEvent t1) -> IO ()

instance QdragMoveEvent_h (QWidgetSc a) ((QDragMoveEvent t1)) where
 dragMoveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_dragMoveEvent cobj_x0 cobj_x1

instance QdropEvent_h (QWidget ()) ((QDropEvent t1)) where
 dropEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_dropEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QWidget_dropEvent" qtc_QWidget_dropEvent :: Ptr (TQWidget a) -> Ptr (TQDropEvent t1) -> IO ()

instance QdropEvent_h (QWidgetSc a) ((QDropEvent t1)) where
 dropEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_dropEvent cobj_x0 cobj_x1

instance QenterEvent_h (QWidget ()) ((QEvent t1)) where
 enterEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_enterEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QWidget_enterEvent" qtc_QWidget_enterEvent :: Ptr (TQWidget a) -> Ptr (TQEvent t1) -> IO ()

instance QenterEvent_h (QWidgetSc a) ((QEvent t1)) where
 enterEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_enterEvent cobj_x0 cobj_x1

instance QsetHandler (QWidget ()) (QWidget x0 -> QEvent t1 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QWidget3 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QWidget3_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QWidget_setHandler3 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQWidget x0) -> Ptr (TQEvent t1) -> IO (CBool)
    setHandlerWrapper x0 x1
      = do x0obj <- qWidgetFromPtr x0
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

foreign import ccall "qtc_QWidget_setHandler3" qtc_QWidget_setHandler3 :: Ptr (TQWidget a) -> CWString -> Ptr (Ptr (TQWidget x0) -> Ptr (TQEvent t1) -> IO (CBool)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QWidget3 :: (Ptr (TQWidget x0) -> Ptr (TQEvent t1) -> IO (CBool)) -> IO (FunPtr (Ptr (TQWidget x0) -> Ptr (TQEvent t1) -> IO (CBool)))

foreign import ccall "wrapper" wrapSetHandler_QWidget3_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QWidgetSc a) (QWidget x0 -> QEvent t1 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QWidget3 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QWidget3_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QWidget_setHandler3 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQWidget x0) -> Ptr (TQEvent t1) -> IO (CBool)
    setHandlerWrapper x0 x1
      = do x0obj <- qWidgetFromPtr x0
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

instance Qevent_h (QWidget ()) ((QEvent t1)) where
 event_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_event cobj_x0 cobj_x1

foreign import ccall "qtc_QWidget_event" qtc_QWidget_event :: Ptr (TQWidget a) -> Ptr (TQEvent t1) -> IO CBool

instance Qevent_h (QWidgetSc a) ((QEvent t1)) where
 event_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_event cobj_x0 cobj_x1

instance QfocusInEvent_h (QWidget ()) ((QFocusEvent t1)) where
 focusInEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_focusInEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QWidget_focusInEvent" qtc_QWidget_focusInEvent :: Ptr (TQWidget a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusInEvent_h (QWidgetSc a) ((QFocusEvent t1)) where
 focusInEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_focusInEvent cobj_x0 cobj_x1

instance QfocusOutEvent_h (QWidget ()) ((QFocusEvent t1)) where
 focusOutEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_focusOutEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QWidget_focusOutEvent" qtc_QWidget_focusOutEvent :: Ptr (TQWidget a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusOutEvent_h (QWidgetSc a) ((QFocusEvent t1)) where
 focusOutEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_focusOutEvent cobj_x0 cobj_x1

instance QsetHandler (QWidget ()) (QWidget x0 -> Int -> IO (Int)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QWidget4 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QWidget4_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QWidget_setHandler4 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQWidget x0) -> CInt -> IO (CInt)
    setHandlerWrapper x0 x1
      = do x0obj <- qWidgetFromPtr x0
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

foreign import ccall "qtc_QWidget_setHandler4" qtc_QWidget_setHandler4 :: Ptr (TQWidget a) -> CWString -> Ptr (Ptr (TQWidget x0) -> CInt -> IO (CInt)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QWidget4 :: (Ptr (TQWidget x0) -> CInt -> IO (CInt)) -> IO (FunPtr (Ptr (TQWidget x0) -> CInt -> IO (CInt)))

foreign import ccall "wrapper" wrapSetHandler_QWidget4_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QWidgetSc a) (QWidget x0 -> Int -> IO (Int)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QWidget4 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QWidget4_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QWidget_setHandler4 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQWidget x0) -> CInt -> IO (CInt)
    setHandlerWrapper x0 x1
      = do x0obj <- qWidgetFromPtr x0
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

instance QheightForWidth_h (QWidget ()) ((Int)) where
 heightForWidth_h x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_heightForWidth cobj_x0 (toCInt x1)

foreign import ccall "qtc_QWidget_heightForWidth" qtc_QWidget_heightForWidth :: Ptr (TQWidget a) -> CInt -> IO CInt

instance QheightForWidth_h (QWidgetSc a) ((Int)) where
 heightForWidth_h x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_heightForWidth cobj_x0 (toCInt x1)

instance QhideEvent_h (QWidget ()) ((QHideEvent t1)) where
 hideEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_hideEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QWidget_hideEvent" qtc_QWidget_hideEvent :: Ptr (TQWidget a) -> Ptr (TQHideEvent t1) -> IO ()

instance QhideEvent_h (QWidgetSc a) ((QHideEvent t1)) where
 hideEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_hideEvent cobj_x0 cobj_x1

instance QsetHandler (QWidget ()) (QWidget x0 -> InputMethodQuery -> IO (QVariant t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QWidget5 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QWidget5_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QWidget_setHandler5 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQWidget x0) -> CLong -> IO (Ptr (TQVariant t0))
    setHandlerWrapper x0 x1
      = do x0obj <- qWidgetFromPtr x0
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

foreign import ccall "qtc_QWidget_setHandler5" qtc_QWidget_setHandler5 :: Ptr (TQWidget a) -> CWString -> Ptr (Ptr (TQWidget x0) -> CLong -> IO (Ptr (TQVariant t0))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QWidget5 :: (Ptr (TQWidget x0) -> CLong -> IO (Ptr (TQVariant t0))) -> IO (FunPtr (Ptr (TQWidget x0) -> CLong -> IO (Ptr (TQVariant t0))))

foreign import ccall "wrapper" wrapSetHandler_QWidget5_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QWidgetSc a) (QWidget x0 -> InputMethodQuery -> IO (QVariant t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QWidget5 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QWidget5_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QWidget_setHandler5 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQWidget x0) -> CLong -> IO (Ptr (TQVariant t0))
    setHandlerWrapper x0 x1
      = do x0obj <- qWidgetFromPtr x0
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

instance QinputMethodQuery_h (QWidget ()) ((InputMethodQuery)) where
 inputMethodQuery_h x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_inputMethodQuery cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QWidget_inputMethodQuery" qtc_QWidget_inputMethodQuery :: Ptr (TQWidget a) -> CLong -> IO (Ptr (TQVariant ()))

instance QinputMethodQuery_h (QWidgetSc a) ((InputMethodQuery)) where
 inputMethodQuery_h x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_inputMethodQuery cobj_x0 (toCLong $ qEnum_toInt x1)

instance QkeyPressEvent_h (QWidget ()) ((QKeyEvent t1)) where
 keyPressEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_keyPressEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QWidget_keyPressEvent" qtc_QWidget_keyPressEvent :: Ptr (TQWidget a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyPressEvent_h (QWidgetSc a) ((QKeyEvent t1)) where
 keyPressEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_keyPressEvent cobj_x0 cobj_x1

instance QkeyReleaseEvent_h (QWidget ()) ((QKeyEvent t1)) where
 keyReleaseEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_keyReleaseEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QWidget_keyReleaseEvent" qtc_QWidget_keyReleaseEvent :: Ptr (TQWidget a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyReleaseEvent_h (QWidgetSc a) ((QKeyEvent t1)) where
 keyReleaseEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_keyReleaseEvent cobj_x0 cobj_x1

instance QleaveEvent_h (QWidget ()) ((QEvent t1)) where
 leaveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_leaveEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QWidget_leaveEvent" qtc_QWidget_leaveEvent :: Ptr (TQWidget a) -> Ptr (TQEvent t1) -> IO ()

instance QleaveEvent_h (QWidgetSc a) ((QEvent t1)) where
 leaveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_leaveEvent cobj_x0 cobj_x1

instance QsetHandler (QWidget ()) (QWidget x0 -> IO (QSize t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QWidget6 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QWidget6_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QWidget_setHandler6 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQWidget x0) -> IO (Ptr (TQSize t0))
    setHandlerWrapper x0
      = do x0obj <- qWidgetFromPtr x0
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

foreign import ccall "qtc_QWidget_setHandler6" qtc_QWidget_setHandler6 :: Ptr (TQWidget a) -> CWString -> Ptr (Ptr (TQWidget x0) -> IO (Ptr (TQSize t0))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QWidget6 :: (Ptr (TQWidget x0) -> IO (Ptr (TQSize t0))) -> IO (FunPtr (Ptr (TQWidget x0) -> IO (Ptr (TQSize t0))))

foreign import ccall "wrapper" wrapSetHandler_QWidget6_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QWidgetSc a) (QWidget x0 -> IO (QSize t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QWidget6 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QWidget6_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QWidget_setHandler6 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQWidget x0) -> IO (Ptr (TQSize t0))
    setHandlerWrapper x0
      = do x0obj <- qWidgetFromPtr x0
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

instance QqminimumSizeHint_h (QWidget ()) (()) where
 qminimumSizeHint_h x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_minimumSizeHint cobj_x0

foreign import ccall "qtc_QWidget_minimumSizeHint" qtc_QWidget_minimumSizeHint :: Ptr (TQWidget a) -> IO (Ptr (TQSize ()))

instance QqminimumSizeHint_h (QWidgetSc a) (()) where
 qminimumSizeHint_h x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_minimumSizeHint cobj_x0

instance QminimumSizeHint_h (QWidget ()) (()) where
 minimumSizeHint_h x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_minimumSizeHint_qth cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QWidget_minimumSizeHint_qth" qtc_QWidget_minimumSizeHint_qth :: Ptr (TQWidget a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QminimumSizeHint_h (QWidgetSc a) (()) where
 minimumSizeHint_h x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_minimumSizeHint_qth cobj_x0 csize_ret_w csize_ret_h

instance QmouseDoubleClickEvent_h (QWidget ()) ((QMouseEvent t1)) where
 mouseDoubleClickEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_mouseDoubleClickEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QWidget_mouseDoubleClickEvent" qtc_QWidget_mouseDoubleClickEvent :: Ptr (TQWidget a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseDoubleClickEvent_h (QWidgetSc a) ((QMouseEvent t1)) where
 mouseDoubleClickEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_mouseDoubleClickEvent cobj_x0 cobj_x1

instance QmouseMoveEvent_h (QWidget ()) ((QMouseEvent t1)) where
 mouseMoveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_mouseMoveEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QWidget_mouseMoveEvent" qtc_QWidget_mouseMoveEvent :: Ptr (TQWidget a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseMoveEvent_h (QWidgetSc a) ((QMouseEvent t1)) where
 mouseMoveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_mouseMoveEvent cobj_x0 cobj_x1

instance QmousePressEvent_h (QWidget ()) ((QMouseEvent t1)) where
 mousePressEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_mousePressEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QWidget_mousePressEvent" qtc_QWidget_mousePressEvent :: Ptr (TQWidget a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmousePressEvent_h (QWidgetSc a) ((QMouseEvent t1)) where
 mousePressEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_mousePressEvent cobj_x0 cobj_x1

instance QmouseReleaseEvent_h (QWidget ()) ((QMouseEvent t1)) where
 mouseReleaseEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_mouseReleaseEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QWidget_mouseReleaseEvent" qtc_QWidget_mouseReleaseEvent :: Ptr (TQWidget a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseReleaseEvent_h (QWidgetSc a) ((QMouseEvent t1)) where
 mouseReleaseEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_mouseReleaseEvent cobj_x0 cobj_x1

instance QmoveEvent_h (QWidget ()) ((QMoveEvent t1)) where
 moveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_moveEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QWidget_moveEvent" qtc_QWidget_moveEvent :: Ptr (TQWidget a) -> Ptr (TQMoveEvent t1) -> IO ()

instance QmoveEvent_h (QWidgetSc a) ((QMoveEvent t1)) where
 moveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_moveEvent cobj_x0 cobj_x1

instance QsetHandler (QWidget ()) (QWidget x0 -> IO (QPaintEngine t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QWidget7 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QWidget7_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QWidget_setHandler7 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQWidget x0) -> IO (Ptr (TQPaintEngine t0))
    setHandlerWrapper x0
      = do x0obj <- qWidgetFromPtr x0
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

foreign import ccall "qtc_QWidget_setHandler7" qtc_QWidget_setHandler7 :: Ptr (TQWidget a) -> CWString -> Ptr (Ptr (TQWidget x0) -> IO (Ptr (TQPaintEngine t0))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QWidget7 :: (Ptr (TQWidget x0) -> IO (Ptr (TQPaintEngine t0))) -> IO (FunPtr (Ptr (TQWidget x0) -> IO (Ptr (TQPaintEngine t0))))

foreign import ccall "wrapper" wrapSetHandler_QWidget7_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QWidgetSc a) (QWidget x0 -> IO (QPaintEngine t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QWidget7 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QWidget7_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QWidget_setHandler7 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQWidget x0) -> IO (Ptr (TQPaintEngine t0))
    setHandlerWrapper x0
      = do x0obj <- qWidgetFromPtr x0
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

instance QpaintEngine_h (QWidget ()) (()) where
 paintEngine_h x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_paintEngine cobj_x0

foreign import ccall "qtc_QWidget_paintEngine" qtc_QWidget_paintEngine :: Ptr (TQWidget a) -> IO (Ptr (TQPaintEngine ()))

instance QpaintEngine_h (QWidgetSc a) (()) where
 paintEngine_h x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_paintEngine cobj_x0

instance QpaintEvent_h (QWidget ()) ((QPaintEvent t1)) where
 paintEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_paintEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QWidget_paintEvent" qtc_QWidget_paintEvent :: Ptr (TQWidget a) -> Ptr (TQPaintEvent t1) -> IO ()

instance QpaintEvent_h (QWidgetSc a) ((QPaintEvent t1)) where
 paintEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_paintEvent cobj_x0 cobj_x1

instance QresizeEvent_h (QWidget ()) ((QResizeEvent t1)) where
 resizeEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_resizeEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QWidget_resizeEvent" qtc_QWidget_resizeEvent :: Ptr (TQWidget a) -> Ptr (TQResizeEvent t1) -> IO ()

instance QresizeEvent_h (QWidgetSc a) ((QResizeEvent t1)) where
 resizeEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_resizeEvent cobj_x0 cobj_x1

instance QsetHandler (QWidget ()) (QWidget x0 -> Bool -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QWidget8 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QWidget8_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QWidget_setHandler8 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQWidget x0) -> CBool -> IO ()
    setHandlerWrapper x0 x1
      = do x0obj <- qWidgetFromPtr x0
           let x1bool = fromCBool x1
           if (objectIsNull x0obj)
            then return ()
            else _handler x0obj x1bool

    setHandlerWrapper_d :: Ptr fun -> Ptr () -> Ptr fun_d -> IO ()
    setHandlerWrapper_d funptr stptr funptr_d
      = do when (stptr/=ptrNull)
            (freeStablePtr (castPtrToStablePtr stptr))
           when (funptr/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr))
           when (funptr_d/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr_d))
           return ()

foreign import ccall "qtc_QWidget_setHandler8" qtc_QWidget_setHandler8 :: Ptr (TQWidget a) -> CWString -> Ptr (Ptr (TQWidget x0) -> CBool -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QWidget8 :: (Ptr (TQWidget x0) -> CBool -> IO ()) -> IO (FunPtr (Ptr (TQWidget x0) -> CBool -> IO ()))

foreign import ccall "wrapper" wrapSetHandler_QWidget8_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QWidgetSc a) (QWidget x0 -> Bool -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QWidget8 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QWidget8_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QWidget_setHandler8 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQWidget x0) -> CBool -> IO ()
    setHandlerWrapper x0 x1
      = do x0obj <- qWidgetFromPtr x0
           let x1bool = fromCBool x1
           if (objectIsNull x0obj)
            then return ()
            else _handler x0obj x1bool

    setHandlerWrapper_d :: Ptr fun -> Ptr () -> Ptr fun_d -> IO ()
    setHandlerWrapper_d funptr stptr funptr_d
      = do when (stptr/=ptrNull)
            (freeStablePtr (castPtrToStablePtr stptr))
           when (funptr/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr))
           when (funptr_d/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr_d))
           return ()

instance QsetVisible_h (QWidget ()) ((Bool)) where
 setVisible_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_setVisible cobj_x0 (toCBool x1)

foreign import ccall "qtc_QWidget_setVisible" qtc_QWidget_setVisible :: Ptr (TQWidget a) -> CBool -> IO ()

instance QsetVisible_h (QWidgetSc a) ((Bool)) where
 setVisible_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_setVisible cobj_x0 (toCBool x1)

instance QshowEvent_h (QWidget ()) ((QShowEvent t1)) where
 showEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_showEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QWidget_showEvent" qtc_QWidget_showEvent :: Ptr (TQWidget a) -> Ptr (TQShowEvent t1) -> IO ()

instance QshowEvent_h (QWidgetSc a) ((QShowEvent t1)) where
 showEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_showEvent cobj_x0 cobj_x1

instance QqsizeHint_h (QWidget ()) (()) where
 qsizeHint_h x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_sizeHint cobj_x0

foreign import ccall "qtc_QWidget_sizeHint" qtc_QWidget_sizeHint :: Ptr (TQWidget a) -> IO (Ptr (TQSize ()))

instance QqsizeHint_h (QWidgetSc a) (()) where
 qsizeHint_h x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_sizeHint cobj_x0

instance QsizeHint_h (QWidget ()) (()) where
 sizeHint_h x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_sizeHint_qth cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QWidget_sizeHint_qth" qtc_QWidget_sizeHint_qth :: Ptr (TQWidget a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QsizeHint_h (QWidgetSc a) (()) where
 sizeHint_h x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_sizeHint_qth cobj_x0 csize_ret_w csize_ret_h

instance QtabletEvent_h (QWidget ()) ((QTabletEvent t1)) where
 tabletEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_tabletEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QWidget_tabletEvent" qtc_QWidget_tabletEvent :: Ptr (TQWidget a) -> Ptr (TQTabletEvent t1) -> IO ()

instance QtabletEvent_h (QWidgetSc a) ((QTabletEvent t1)) where
 tabletEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_tabletEvent cobj_x0 cobj_x1

instance QwheelEvent_h (QWidget ()) ((QWheelEvent t1)) where
 wheelEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_wheelEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QWidget_wheelEvent" qtc_QWidget_wheelEvent :: Ptr (TQWidget a) -> Ptr (TQWheelEvent t1) -> IO ()

instance QwheelEvent_h (QWidgetSc a) ((QWheelEvent t1)) where
 wheelEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_wheelEvent cobj_x0 cobj_x1

instance QsetHandler (QWidget ()) (QWidget x0 -> QObject t1 -> QEvent t2 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QWidget9 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QWidget9_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QWidget_setHandler9 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQWidget x0) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO (CBool)
    setHandlerWrapper x0 x1 x2
      = do x0obj <- qWidgetFromPtr x0
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

foreign import ccall "qtc_QWidget_setHandler9" qtc_QWidget_setHandler9 :: Ptr (TQWidget a) -> CWString -> Ptr (Ptr (TQWidget x0) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO (CBool)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QWidget9 :: (Ptr (TQWidget x0) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO (CBool)) -> IO (FunPtr (Ptr (TQWidget x0) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO (CBool)))

foreign import ccall "wrapper" wrapSetHandler_QWidget9_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QWidgetSc a) (QWidget x0 -> QObject t1 -> QEvent t2 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QWidget9 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QWidget9_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QWidget_setHandler9 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQWidget x0) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO (CBool)
    setHandlerWrapper x0 x1 x2
      = do x0obj <- qWidgetFromPtr x0
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

instance QeventFilter_h (QWidget ()) ((QObject t1, QEvent t2)) where
 eventFilter_h x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QWidget_eventFilter cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QWidget_eventFilter" qtc_QWidget_eventFilter :: Ptr (TQWidget a) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO CBool

instance QeventFilter_h (QWidgetSc a) ((QObject t1, QEvent t2)) where
 eventFilter_h x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QWidget_eventFilter cobj_x0 cobj_x1 cobj_x2

