{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QDesktopWidget_h.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:24
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QDesktopWidget_h (
  Qresized_h(..)
  ,QworkAreaResized_h(..)
  ) where

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

instance QunSetUserMethod (QDesktopWidget ()) where
 unSetUserMethod qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QDesktopWidget_unSetUserMethod cobj_qobj (toCInt 0) (toCInt evid)

foreign import ccall "qtc_QDesktopWidget_unSetUserMethod" qtc_QDesktopWidget_unSetUserMethod :: Ptr (TQDesktopWidget a) -> CInt -> CInt -> IO (CBool)

instance QunSetUserMethod (QDesktopWidgetSc a) where
 unSetUserMethod qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QDesktopWidget_unSetUserMethod cobj_qobj (toCInt 0) (toCInt evid)

instance QunSetUserMethodVariant (QDesktopWidget ()) where
 unSetUserMethodVariant qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QDesktopWidget_unSetUserMethod cobj_qobj (toCInt 1) (toCInt evid)

instance QunSetUserMethodVariant (QDesktopWidgetSc a) where
 unSetUserMethodVariant qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QDesktopWidget_unSetUserMethod cobj_qobj (toCInt 1) (toCInt evid)

instance QunSetUserMethodVariantList (QDesktopWidget ()) where
 unSetUserMethodVariantList qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QDesktopWidget_unSetUserMethod cobj_qobj (toCInt 2) (toCInt evid)

instance QunSetUserMethodVariantList (QDesktopWidgetSc a) where
 unSetUserMethodVariantList qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QDesktopWidget_unSetUserMethod cobj_qobj (toCInt 2) (toCInt evid)

instance QsetUserMethod (QDesktopWidget ()) (QDesktopWidget x0 -> IO ()) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethod_QDesktopWidget setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethod_QDesktopWidget_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QDesktopWidget_setUserMethod cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQDesktopWidget x0) -> IO ()
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

foreign import ccall "qtc_QDesktopWidget_setUserMethod" qtc_QDesktopWidget_setUserMethod :: Ptr (TQDesktopWidget a) -> CInt -> Ptr (Ptr (TQDesktopWidget x0) -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetUserMethod_QDesktopWidget :: (Ptr (TQDesktopWidget x0) -> IO ()) -> IO (FunPtr (Ptr (TQDesktopWidget x0) -> IO ()))

foreign import ccall "wrapper" wrapSetUserMethod_QDesktopWidget_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetUserMethod (QDesktopWidgetSc a) (QDesktopWidget x0 -> IO ()) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethod_QDesktopWidget setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethod_QDesktopWidget_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QDesktopWidget_setUserMethod cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQDesktopWidget x0) -> IO ()
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

instance QsetUserMethod (QDesktopWidget ()) (QDesktopWidget x0 -> QVariant () -> IO (QVariant ())) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethodVariant_QDesktopWidget setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethodVariant_QDesktopWidget_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QDesktopWidget_setUserMethodVariant cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQDesktopWidget x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))
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

foreign import ccall "qtc_QDesktopWidget_setUserMethodVariant" qtc_QDesktopWidget_setUserMethodVariant :: Ptr (TQDesktopWidget a) -> CInt -> Ptr (Ptr (TQDesktopWidget x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetUserMethodVariant_QDesktopWidget :: (Ptr (TQDesktopWidget x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))) -> IO (FunPtr (Ptr (TQDesktopWidget x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))))

foreign import ccall "wrapper" wrapSetUserMethodVariant_QDesktopWidget_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetUserMethod (QDesktopWidgetSc a) (QDesktopWidget x0 -> QVariant () -> IO (QVariant ())) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethodVariant_QDesktopWidget setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethodVariant_QDesktopWidget_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QDesktopWidget_setUserMethodVariant cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQDesktopWidget x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))
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

instance QunSetHandler (QDesktopWidget ()) where 
 unSetHandler qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withCWString evid $ \cstr_evid ->
    qtc_QDesktopWidget_unSetHandler cobj_qobj cstr_evid

foreign import ccall "qtc_QDesktopWidget_unSetHandler" qtc_QDesktopWidget_unSetHandler :: Ptr (TQDesktopWidget a) -> CWString -> IO (CBool)

instance QunSetHandler (QDesktopWidgetSc a) where 
 unSetHandler qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withCWString evid $ \cstr_evid ->
    qtc_QDesktopWidget_unSetHandler cobj_qobj cstr_evid

instance QsetHandler (QDesktopWidget ()) (QDesktopWidget x0 -> QEvent t1 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QDesktopWidget1 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QDesktopWidget1_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QDesktopWidget_setHandler1 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQDesktopWidget x0) -> Ptr (TQEvent t1) -> IO ()
    setHandlerWrapper x0 x1
      = do x0obj <- qDesktopWidgetFromPtr x0
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

foreign import ccall "qtc_QDesktopWidget_setHandler1" qtc_QDesktopWidget_setHandler1 :: Ptr (TQDesktopWidget a) -> CWString -> Ptr (Ptr (TQDesktopWidget x0) -> Ptr (TQEvent t1) -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QDesktopWidget1 :: (Ptr (TQDesktopWidget x0) -> Ptr (TQEvent t1) -> IO ()) -> IO (FunPtr (Ptr (TQDesktopWidget x0) -> Ptr (TQEvent t1) -> IO ()))

foreign import ccall "wrapper" wrapSetHandler_QDesktopWidget1_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QDesktopWidgetSc a) (QDesktopWidget x0 -> QEvent t1 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QDesktopWidget1 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QDesktopWidget1_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QDesktopWidget_setHandler1 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQDesktopWidget x0) -> Ptr (TQEvent t1) -> IO ()
    setHandlerWrapper x0 x1
      = do x0obj <- qDesktopWidgetFromPtr x0
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

instance QresizeEvent_h (QDesktopWidget ()) ((QResizeEvent t1)) where
 resizeEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDesktopWidget_resizeEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QDesktopWidget_resizeEvent" qtc_QDesktopWidget_resizeEvent :: Ptr (TQDesktopWidget a) -> Ptr (TQResizeEvent t1) -> IO ()

instance QresizeEvent_h (QDesktopWidgetSc a) ((QResizeEvent t1)) where
 resizeEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDesktopWidget_resizeEvent cobj_x0 cobj_x1

instance QsetHandler (QDesktopWidget ()) (QDesktopWidget x0 -> Int -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QDesktopWidget2 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QDesktopWidget2_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QDesktopWidget_setHandler2 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQDesktopWidget x0) -> CInt -> IO ()
    setHandlerWrapper x0 x1
      = do x0obj <- qDesktopWidgetFromPtr x0
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

foreign import ccall "qtc_QDesktopWidget_setHandler2" qtc_QDesktopWidget_setHandler2 :: Ptr (TQDesktopWidget a) -> CWString -> Ptr (Ptr (TQDesktopWidget x0) -> CInt -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QDesktopWidget2 :: (Ptr (TQDesktopWidget x0) -> CInt -> IO ()) -> IO (FunPtr (Ptr (TQDesktopWidget x0) -> CInt -> IO ()))

foreign import ccall "wrapper" wrapSetHandler_QDesktopWidget2_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QDesktopWidgetSc a) (QDesktopWidget x0 -> Int -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QDesktopWidget2 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QDesktopWidget2_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QDesktopWidget_setHandler2 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQDesktopWidget x0) -> CInt -> IO ()
    setHandlerWrapper x0 x1
      = do x0obj <- qDesktopWidgetFromPtr x0
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

class Qresized_h x0 x1 where
 resized_h :: x0 -> x1 -> IO ()

instance Qresized_h (QDesktopWidget ()) ((Int)) where
 resized_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDesktopWidget_resized cobj_x0 (toCInt x1)

foreign import ccall "qtc_QDesktopWidget_resized" qtc_QDesktopWidget_resized :: Ptr (TQDesktopWidget a) -> CInt -> IO ()

instance Qresized_h (QDesktopWidgetSc a) ((Int)) where
 resized_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDesktopWidget_resized cobj_x0 (toCInt x1)

class QworkAreaResized_h x0 x1 where
 workAreaResized_h :: x0 -> x1 -> IO ()

instance QworkAreaResized_h (QDesktopWidget ()) ((Int)) where
 workAreaResized_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDesktopWidget_workAreaResized cobj_x0 (toCInt x1)

foreign import ccall "qtc_QDesktopWidget_workAreaResized" qtc_QDesktopWidget_workAreaResized :: Ptr (TQDesktopWidget a) -> CInt -> IO ()

instance QworkAreaResized_h (QDesktopWidgetSc a) ((Int)) where
 workAreaResized_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDesktopWidget_workAreaResized cobj_x0 (toCInt x1)

instance QactionEvent_h (QDesktopWidget ()) ((QActionEvent t1)) where
 actionEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDesktopWidget_actionEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QDesktopWidget_actionEvent" qtc_QDesktopWidget_actionEvent :: Ptr (TQDesktopWidget a) -> Ptr (TQActionEvent t1) -> IO ()

instance QactionEvent_h (QDesktopWidgetSc a) ((QActionEvent t1)) where
 actionEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDesktopWidget_actionEvent cobj_x0 cobj_x1

instance QchangeEvent_h (QDesktopWidget ()) ((QEvent t1)) where
 changeEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDesktopWidget_changeEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QDesktopWidget_changeEvent" qtc_QDesktopWidget_changeEvent :: Ptr (TQDesktopWidget a) -> Ptr (TQEvent t1) -> IO ()

instance QchangeEvent_h (QDesktopWidgetSc a) ((QEvent t1)) where
 changeEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDesktopWidget_changeEvent cobj_x0 cobj_x1

instance QcloseEvent_h (QDesktopWidget ()) ((QCloseEvent t1)) where
 closeEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDesktopWidget_closeEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QDesktopWidget_closeEvent" qtc_QDesktopWidget_closeEvent :: Ptr (TQDesktopWidget a) -> Ptr (TQCloseEvent t1) -> IO ()

instance QcloseEvent_h (QDesktopWidgetSc a) ((QCloseEvent t1)) where
 closeEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDesktopWidget_closeEvent cobj_x0 cobj_x1

instance QcontextMenuEvent_h (QDesktopWidget ()) ((QContextMenuEvent t1)) where
 contextMenuEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDesktopWidget_contextMenuEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QDesktopWidget_contextMenuEvent" qtc_QDesktopWidget_contextMenuEvent :: Ptr (TQDesktopWidget a) -> Ptr (TQContextMenuEvent t1) -> IO ()

instance QcontextMenuEvent_h (QDesktopWidgetSc a) ((QContextMenuEvent t1)) where
 contextMenuEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDesktopWidget_contextMenuEvent cobj_x0 cobj_x1

instance QsetHandler (QDesktopWidget ()) (QDesktopWidget x0 -> IO (Int)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QDesktopWidget3 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QDesktopWidget3_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QDesktopWidget_setHandler3 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQDesktopWidget x0) -> IO (CInt)
    setHandlerWrapper x0
      = do x0obj <- qDesktopWidgetFromPtr x0
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

foreign import ccall "qtc_QDesktopWidget_setHandler3" qtc_QDesktopWidget_setHandler3 :: Ptr (TQDesktopWidget a) -> CWString -> Ptr (Ptr (TQDesktopWidget x0) -> IO (CInt)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QDesktopWidget3 :: (Ptr (TQDesktopWidget x0) -> IO (CInt)) -> IO (FunPtr (Ptr (TQDesktopWidget x0) -> IO (CInt)))

foreign import ccall "wrapper" wrapSetHandler_QDesktopWidget3_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QDesktopWidgetSc a) (QDesktopWidget x0 -> IO (Int)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QDesktopWidget3 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QDesktopWidget3_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QDesktopWidget_setHandler3 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQDesktopWidget x0) -> IO (CInt)
    setHandlerWrapper x0
      = do x0obj <- qDesktopWidgetFromPtr x0
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

instance QdevType_h (QDesktopWidget ()) (()) where
 devType_h x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDesktopWidget_devType cobj_x0

foreign import ccall "qtc_QDesktopWidget_devType" qtc_QDesktopWidget_devType :: Ptr (TQDesktopWidget a) -> IO CInt

instance QdevType_h (QDesktopWidgetSc a) (()) where
 devType_h x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDesktopWidget_devType cobj_x0

instance QdragEnterEvent_h (QDesktopWidget ()) ((QDragEnterEvent t1)) where
 dragEnterEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDesktopWidget_dragEnterEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QDesktopWidget_dragEnterEvent" qtc_QDesktopWidget_dragEnterEvent :: Ptr (TQDesktopWidget a) -> Ptr (TQDragEnterEvent t1) -> IO ()

instance QdragEnterEvent_h (QDesktopWidgetSc a) ((QDragEnterEvent t1)) where
 dragEnterEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDesktopWidget_dragEnterEvent cobj_x0 cobj_x1

instance QdragLeaveEvent_h (QDesktopWidget ()) ((QDragLeaveEvent t1)) where
 dragLeaveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDesktopWidget_dragLeaveEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QDesktopWidget_dragLeaveEvent" qtc_QDesktopWidget_dragLeaveEvent :: Ptr (TQDesktopWidget a) -> Ptr (TQDragLeaveEvent t1) -> IO ()

instance QdragLeaveEvent_h (QDesktopWidgetSc a) ((QDragLeaveEvent t1)) where
 dragLeaveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDesktopWidget_dragLeaveEvent cobj_x0 cobj_x1

instance QdragMoveEvent_h (QDesktopWidget ()) ((QDragMoveEvent t1)) where
 dragMoveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDesktopWidget_dragMoveEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QDesktopWidget_dragMoveEvent" qtc_QDesktopWidget_dragMoveEvent :: Ptr (TQDesktopWidget a) -> Ptr (TQDragMoveEvent t1) -> IO ()

instance QdragMoveEvent_h (QDesktopWidgetSc a) ((QDragMoveEvent t1)) where
 dragMoveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDesktopWidget_dragMoveEvent cobj_x0 cobj_x1

instance QdropEvent_h (QDesktopWidget ()) ((QDropEvent t1)) where
 dropEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDesktopWidget_dropEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QDesktopWidget_dropEvent" qtc_QDesktopWidget_dropEvent :: Ptr (TQDesktopWidget a) -> Ptr (TQDropEvent t1) -> IO ()

instance QdropEvent_h (QDesktopWidgetSc a) ((QDropEvent t1)) where
 dropEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDesktopWidget_dropEvent cobj_x0 cobj_x1

instance QenterEvent_h (QDesktopWidget ()) ((QEvent t1)) where
 enterEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDesktopWidget_enterEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QDesktopWidget_enterEvent" qtc_QDesktopWidget_enterEvent :: Ptr (TQDesktopWidget a) -> Ptr (TQEvent t1) -> IO ()

instance QenterEvent_h (QDesktopWidgetSc a) ((QEvent t1)) where
 enterEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDesktopWidget_enterEvent cobj_x0 cobj_x1

instance QsetHandler (QDesktopWidget ()) (QDesktopWidget x0 -> QEvent t1 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QDesktopWidget4 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QDesktopWidget4_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QDesktopWidget_setHandler4 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQDesktopWidget x0) -> Ptr (TQEvent t1) -> IO (CBool)
    setHandlerWrapper x0 x1
      = do x0obj <- qDesktopWidgetFromPtr x0
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

foreign import ccall "qtc_QDesktopWidget_setHandler4" qtc_QDesktopWidget_setHandler4 :: Ptr (TQDesktopWidget a) -> CWString -> Ptr (Ptr (TQDesktopWidget x0) -> Ptr (TQEvent t1) -> IO (CBool)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QDesktopWidget4 :: (Ptr (TQDesktopWidget x0) -> Ptr (TQEvent t1) -> IO (CBool)) -> IO (FunPtr (Ptr (TQDesktopWidget x0) -> Ptr (TQEvent t1) -> IO (CBool)))

foreign import ccall "wrapper" wrapSetHandler_QDesktopWidget4_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QDesktopWidgetSc a) (QDesktopWidget x0 -> QEvent t1 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QDesktopWidget4 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QDesktopWidget4_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QDesktopWidget_setHandler4 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQDesktopWidget x0) -> Ptr (TQEvent t1) -> IO (CBool)
    setHandlerWrapper x0 x1
      = do x0obj <- qDesktopWidgetFromPtr x0
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

instance Qevent_h (QDesktopWidget ()) ((QEvent t1)) where
 event_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDesktopWidget_event cobj_x0 cobj_x1

foreign import ccall "qtc_QDesktopWidget_event" qtc_QDesktopWidget_event :: Ptr (TQDesktopWidget a) -> Ptr (TQEvent t1) -> IO CBool

instance Qevent_h (QDesktopWidgetSc a) ((QEvent t1)) where
 event_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDesktopWidget_event cobj_x0 cobj_x1

instance QfocusInEvent_h (QDesktopWidget ()) ((QFocusEvent t1)) where
 focusInEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDesktopWidget_focusInEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QDesktopWidget_focusInEvent" qtc_QDesktopWidget_focusInEvent :: Ptr (TQDesktopWidget a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusInEvent_h (QDesktopWidgetSc a) ((QFocusEvent t1)) where
 focusInEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDesktopWidget_focusInEvent cobj_x0 cobj_x1

instance QfocusOutEvent_h (QDesktopWidget ()) ((QFocusEvent t1)) where
 focusOutEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDesktopWidget_focusOutEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QDesktopWidget_focusOutEvent" qtc_QDesktopWidget_focusOutEvent :: Ptr (TQDesktopWidget a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusOutEvent_h (QDesktopWidgetSc a) ((QFocusEvent t1)) where
 focusOutEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDesktopWidget_focusOutEvent cobj_x0 cobj_x1

instance QsetHandler (QDesktopWidget ()) (QDesktopWidget x0 -> Int -> IO (Int)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QDesktopWidget5 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QDesktopWidget5_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QDesktopWidget_setHandler5 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQDesktopWidget x0) -> CInt -> IO (CInt)
    setHandlerWrapper x0 x1
      = do x0obj <- qDesktopWidgetFromPtr x0
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

foreign import ccall "qtc_QDesktopWidget_setHandler5" qtc_QDesktopWidget_setHandler5 :: Ptr (TQDesktopWidget a) -> CWString -> Ptr (Ptr (TQDesktopWidget x0) -> CInt -> IO (CInt)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QDesktopWidget5 :: (Ptr (TQDesktopWidget x0) -> CInt -> IO (CInt)) -> IO (FunPtr (Ptr (TQDesktopWidget x0) -> CInt -> IO (CInt)))

foreign import ccall "wrapper" wrapSetHandler_QDesktopWidget5_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QDesktopWidgetSc a) (QDesktopWidget x0 -> Int -> IO (Int)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QDesktopWidget5 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QDesktopWidget5_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QDesktopWidget_setHandler5 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQDesktopWidget x0) -> CInt -> IO (CInt)
    setHandlerWrapper x0 x1
      = do x0obj <- qDesktopWidgetFromPtr x0
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

instance QheightForWidth_h (QDesktopWidget ()) ((Int)) where
 heightForWidth_h x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDesktopWidget_heightForWidth cobj_x0 (toCInt x1)

foreign import ccall "qtc_QDesktopWidget_heightForWidth" qtc_QDesktopWidget_heightForWidth :: Ptr (TQDesktopWidget a) -> CInt -> IO CInt

instance QheightForWidth_h (QDesktopWidgetSc a) ((Int)) where
 heightForWidth_h x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDesktopWidget_heightForWidth cobj_x0 (toCInt x1)

instance QhideEvent_h (QDesktopWidget ()) ((QHideEvent t1)) where
 hideEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDesktopWidget_hideEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QDesktopWidget_hideEvent" qtc_QDesktopWidget_hideEvent :: Ptr (TQDesktopWidget a) -> Ptr (TQHideEvent t1) -> IO ()

instance QhideEvent_h (QDesktopWidgetSc a) ((QHideEvent t1)) where
 hideEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDesktopWidget_hideEvent cobj_x0 cobj_x1

instance QsetHandler (QDesktopWidget ()) (QDesktopWidget x0 -> InputMethodQuery -> IO (QVariant t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QDesktopWidget6 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QDesktopWidget6_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QDesktopWidget_setHandler6 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQDesktopWidget x0) -> CLong -> IO (Ptr (TQVariant t0))
    setHandlerWrapper x0 x1
      = do x0obj <- qDesktopWidgetFromPtr x0
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

foreign import ccall "qtc_QDesktopWidget_setHandler6" qtc_QDesktopWidget_setHandler6 :: Ptr (TQDesktopWidget a) -> CWString -> Ptr (Ptr (TQDesktopWidget x0) -> CLong -> IO (Ptr (TQVariant t0))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QDesktopWidget6 :: (Ptr (TQDesktopWidget x0) -> CLong -> IO (Ptr (TQVariant t0))) -> IO (FunPtr (Ptr (TQDesktopWidget x0) -> CLong -> IO (Ptr (TQVariant t0))))

foreign import ccall "wrapper" wrapSetHandler_QDesktopWidget6_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QDesktopWidgetSc a) (QDesktopWidget x0 -> InputMethodQuery -> IO (QVariant t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QDesktopWidget6 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QDesktopWidget6_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QDesktopWidget_setHandler6 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQDesktopWidget x0) -> CLong -> IO (Ptr (TQVariant t0))
    setHandlerWrapper x0 x1
      = do x0obj <- qDesktopWidgetFromPtr x0
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

instance QinputMethodQuery_h (QDesktopWidget ()) ((InputMethodQuery)) where
 inputMethodQuery_h x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDesktopWidget_inputMethodQuery cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QDesktopWidget_inputMethodQuery" qtc_QDesktopWidget_inputMethodQuery :: Ptr (TQDesktopWidget a) -> CLong -> IO (Ptr (TQVariant ()))

instance QinputMethodQuery_h (QDesktopWidgetSc a) ((InputMethodQuery)) where
 inputMethodQuery_h x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDesktopWidget_inputMethodQuery cobj_x0 (toCLong $ qEnum_toInt x1)

instance QkeyPressEvent_h (QDesktopWidget ()) ((QKeyEvent t1)) where
 keyPressEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDesktopWidget_keyPressEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QDesktopWidget_keyPressEvent" qtc_QDesktopWidget_keyPressEvent :: Ptr (TQDesktopWidget a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyPressEvent_h (QDesktopWidgetSc a) ((QKeyEvent t1)) where
 keyPressEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDesktopWidget_keyPressEvent cobj_x0 cobj_x1

instance QkeyReleaseEvent_h (QDesktopWidget ()) ((QKeyEvent t1)) where
 keyReleaseEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDesktopWidget_keyReleaseEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QDesktopWidget_keyReleaseEvent" qtc_QDesktopWidget_keyReleaseEvent :: Ptr (TQDesktopWidget a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyReleaseEvent_h (QDesktopWidgetSc a) ((QKeyEvent t1)) where
 keyReleaseEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDesktopWidget_keyReleaseEvent cobj_x0 cobj_x1

instance QleaveEvent_h (QDesktopWidget ()) ((QEvent t1)) where
 leaveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDesktopWidget_leaveEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QDesktopWidget_leaveEvent" qtc_QDesktopWidget_leaveEvent :: Ptr (TQDesktopWidget a) -> Ptr (TQEvent t1) -> IO ()

instance QleaveEvent_h (QDesktopWidgetSc a) ((QEvent t1)) where
 leaveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDesktopWidget_leaveEvent cobj_x0 cobj_x1

instance QsetHandler (QDesktopWidget ()) (QDesktopWidget x0 -> IO (QSize t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QDesktopWidget7 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QDesktopWidget7_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QDesktopWidget_setHandler7 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQDesktopWidget x0) -> IO (Ptr (TQSize t0))
    setHandlerWrapper x0
      = do x0obj <- qDesktopWidgetFromPtr x0
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

foreign import ccall "qtc_QDesktopWidget_setHandler7" qtc_QDesktopWidget_setHandler7 :: Ptr (TQDesktopWidget a) -> CWString -> Ptr (Ptr (TQDesktopWidget x0) -> IO (Ptr (TQSize t0))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QDesktopWidget7 :: (Ptr (TQDesktopWidget x0) -> IO (Ptr (TQSize t0))) -> IO (FunPtr (Ptr (TQDesktopWidget x0) -> IO (Ptr (TQSize t0))))

foreign import ccall "wrapper" wrapSetHandler_QDesktopWidget7_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QDesktopWidgetSc a) (QDesktopWidget x0 -> IO (QSize t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QDesktopWidget7 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QDesktopWidget7_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QDesktopWidget_setHandler7 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQDesktopWidget x0) -> IO (Ptr (TQSize t0))
    setHandlerWrapper x0
      = do x0obj <- qDesktopWidgetFromPtr x0
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

instance QqminimumSizeHint_h (QDesktopWidget ()) (()) where
 qminimumSizeHint_h x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDesktopWidget_minimumSizeHint cobj_x0

foreign import ccall "qtc_QDesktopWidget_minimumSizeHint" qtc_QDesktopWidget_minimumSizeHint :: Ptr (TQDesktopWidget a) -> IO (Ptr (TQSize ()))

instance QqminimumSizeHint_h (QDesktopWidgetSc a) (()) where
 qminimumSizeHint_h x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDesktopWidget_minimumSizeHint cobj_x0

instance QminimumSizeHint_h (QDesktopWidget ()) (()) where
 minimumSizeHint_h x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDesktopWidget_minimumSizeHint_qth cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QDesktopWidget_minimumSizeHint_qth" qtc_QDesktopWidget_minimumSizeHint_qth :: Ptr (TQDesktopWidget a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QminimumSizeHint_h (QDesktopWidgetSc a) (()) where
 minimumSizeHint_h x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDesktopWidget_minimumSizeHint_qth cobj_x0 csize_ret_w csize_ret_h

instance QmouseDoubleClickEvent_h (QDesktopWidget ()) ((QMouseEvent t1)) where
 mouseDoubleClickEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDesktopWidget_mouseDoubleClickEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QDesktopWidget_mouseDoubleClickEvent" qtc_QDesktopWidget_mouseDoubleClickEvent :: Ptr (TQDesktopWidget a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseDoubleClickEvent_h (QDesktopWidgetSc a) ((QMouseEvent t1)) where
 mouseDoubleClickEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDesktopWidget_mouseDoubleClickEvent cobj_x0 cobj_x1

instance QmouseMoveEvent_h (QDesktopWidget ()) ((QMouseEvent t1)) where
 mouseMoveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDesktopWidget_mouseMoveEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QDesktopWidget_mouseMoveEvent" qtc_QDesktopWidget_mouseMoveEvent :: Ptr (TQDesktopWidget a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseMoveEvent_h (QDesktopWidgetSc a) ((QMouseEvent t1)) where
 mouseMoveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDesktopWidget_mouseMoveEvent cobj_x0 cobj_x1

instance QmousePressEvent_h (QDesktopWidget ()) ((QMouseEvent t1)) where
 mousePressEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDesktopWidget_mousePressEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QDesktopWidget_mousePressEvent" qtc_QDesktopWidget_mousePressEvent :: Ptr (TQDesktopWidget a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmousePressEvent_h (QDesktopWidgetSc a) ((QMouseEvent t1)) where
 mousePressEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDesktopWidget_mousePressEvent cobj_x0 cobj_x1

instance QmouseReleaseEvent_h (QDesktopWidget ()) ((QMouseEvent t1)) where
 mouseReleaseEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDesktopWidget_mouseReleaseEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QDesktopWidget_mouseReleaseEvent" qtc_QDesktopWidget_mouseReleaseEvent :: Ptr (TQDesktopWidget a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseReleaseEvent_h (QDesktopWidgetSc a) ((QMouseEvent t1)) where
 mouseReleaseEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDesktopWidget_mouseReleaseEvent cobj_x0 cobj_x1

instance QmoveEvent_h (QDesktopWidget ()) ((QMoveEvent t1)) where
 moveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDesktopWidget_moveEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QDesktopWidget_moveEvent" qtc_QDesktopWidget_moveEvent :: Ptr (TQDesktopWidget a) -> Ptr (TQMoveEvent t1) -> IO ()

instance QmoveEvent_h (QDesktopWidgetSc a) ((QMoveEvent t1)) where
 moveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDesktopWidget_moveEvent cobj_x0 cobj_x1

instance QsetHandler (QDesktopWidget ()) (QDesktopWidget x0 -> IO (QPaintEngine t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QDesktopWidget8 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QDesktopWidget8_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QDesktopWidget_setHandler8 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQDesktopWidget x0) -> IO (Ptr (TQPaintEngine t0))
    setHandlerWrapper x0
      = do x0obj <- qDesktopWidgetFromPtr x0
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

foreign import ccall "qtc_QDesktopWidget_setHandler8" qtc_QDesktopWidget_setHandler8 :: Ptr (TQDesktopWidget a) -> CWString -> Ptr (Ptr (TQDesktopWidget x0) -> IO (Ptr (TQPaintEngine t0))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QDesktopWidget8 :: (Ptr (TQDesktopWidget x0) -> IO (Ptr (TQPaintEngine t0))) -> IO (FunPtr (Ptr (TQDesktopWidget x0) -> IO (Ptr (TQPaintEngine t0))))

foreign import ccall "wrapper" wrapSetHandler_QDesktopWidget8_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QDesktopWidgetSc a) (QDesktopWidget x0 -> IO (QPaintEngine t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QDesktopWidget8 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QDesktopWidget8_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QDesktopWidget_setHandler8 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQDesktopWidget x0) -> IO (Ptr (TQPaintEngine t0))
    setHandlerWrapper x0
      = do x0obj <- qDesktopWidgetFromPtr x0
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

instance QpaintEngine_h (QDesktopWidget ()) (()) where
 paintEngine_h x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDesktopWidget_paintEngine cobj_x0

foreign import ccall "qtc_QDesktopWidget_paintEngine" qtc_QDesktopWidget_paintEngine :: Ptr (TQDesktopWidget a) -> IO (Ptr (TQPaintEngine ()))

instance QpaintEngine_h (QDesktopWidgetSc a) (()) where
 paintEngine_h x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDesktopWidget_paintEngine cobj_x0

instance QpaintEvent_h (QDesktopWidget ()) ((QPaintEvent t1)) where
 paintEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDesktopWidget_paintEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QDesktopWidget_paintEvent" qtc_QDesktopWidget_paintEvent :: Ptr (TQDesktopWidget a) -> Ptr (TQPaintEvent t1) -> IO ()

instance QpaintEvent_h (QDesktopWidgetSc a) ((QPaintEvent t1)) where
 paintEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDesktopWidget_paintEvent cobj_x0 cobj_x1

instance QsetHandler (QDesktopWidget ()) (QDesktopWidget x0 -> Bool -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QDesktopWidget9 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QDesktopWidget9_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QDesktopWidget_setHandler9 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQDesktopWidget x0) -> CBool -> IO ()
    setHandlerWrapper x0 x1
      = do x0obj <- qDesktopWidgetFromPtr x0
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

foreign import ccall "qtc_QDesktopWidget_setHandler9" qtc_QDesktopWidget_setHandler9 :: Ptr (TQDesktopWidget a) -> CWString -> Ptr (Ptr (TQDesktopWidget x0) -> CBool -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QDesktopWidget9 :: (Ptr (TQDesktopWidget x0) -> CBool -> IO ()) -> IO (FunPtr (Ptr (TQDesktopWidget x0) -> CBool -> IO ()))

foreign import ccall "wrapper" wrapSetHandler_QDesktopWidget9_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QDesktopWidgetSc a) (QDesktopWidget x0 -> Bool -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QDesktopWidget9 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QDesktopWidget9_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QDesktopWidget_setHandler9 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQDesktopWidget x0) -> CBool -> IO ()
    setHandlerWrapper x0 x1
      = do x0obj <- qDesktopWidgetFromPtr x0
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

instance QsetVisible_h (QDesktopWidget ()) ((Bool)) where
 setVisible_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDesktopWidget_setVisible cobj_x0 (toCBool x1)

foreign import ccall "qtc_QDesktopWidget_setVisible" qtc_QDesktopWidget_setVisible :: Ptr (TQDesktopWidget a) -> CBool -> IO ()

instance QsetVisible_h (QDesktopWidgetSc a) ((Bool)) where
 setVisible_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDesktopWidget_setVisible cobj_x0 (toCBool x1)

instance QshowEvent_h (QDesktopWidget ()) ((QShowEvent t1)) where
 showEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDesktopWidget_showEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QDesktopWidget_showEvent" qtc_QDesktopWidget_showEvent :: Ptr (TQDesktopWidget a) -> Ptr (TQShowEvent t1) -> IO ()

instance QshowEvent_h (QDesktopWidgetSc a) ((QShowEvent t1)) where
 showEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDesktopWidget_showEvent cobj_x0 cobj_x1

instance QqsizeHint_h (QDesktopWidget ()) (()) where
 qsizeHint_h x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDesktopWidget_sizeHint cobj_x0

foreign import ccall "qtc_QDesktopWidget_sizeHint" qtc_QDesktopWidget_sizeHint :: Ptr (TQDesktopWidget a) -> IO (Ptr (TQSize ()))

instance QqsizeHint_h (QDesktopWidgetSc a) (()) where
 qsizeHint_h x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDesktopWidget_sizeHint cobj_x0

instance QsizeHint_h (QDesktopWidget ()) (()) where
 sizeHint_h x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDesktopWidget_sizeHint_qth cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QDesktopWidget_sizeHint_qth" qtc_QDesktopWidget_sizeHint_qth :: Ptr (TQDesktopWidget a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QsizeHint_h (QDesktopWidgetSc a) (()) where
 sizeHint_h x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDesktopWidget_sizeHint_qth cobj_x0 csize_ret_w csize_ret_h

instance QtabletEvent_h (QDesktopWidget ()) ((QTabletEvent t1)) where
 tabletEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDesktopWidget_tabletEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QDesktopWidget_tabletEvent" qtc_QDesktopWidget_tabletEvent :: Ptr (TQDesktopWidget a) -> Ptr (TQTabletEvent t1) -> IO ()

instance QtabletEvent_h (QDesktopWidgetSc a) ((QTabletEvent t1)) where
 tabletEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDesktopWidget_tabletEvent cobj_x0 cobj_x1

instance QwheelEvent_h (QDesktopWidget ()) ((QWheelEvent t1)) where
 wheelEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDesktopWidget_wheelEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QDesktopWidget_wheelEvent" qtc_QDesktopWidget_wheelEvent :: Ptr (TQDesktopWidget a) -> Ptr (TQWheelEvent t1) -> IO ()

instance QwheelEvent_h (QDesktopWidgetSc a) ((QWheelEvent t1)) where
 wheelEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDesktopWidget_wheelEvent cobj_x0 cobj_x1

instance QsetHandler (QDesktopWidget ()) (QDesktopWidget x0 -> QObject t1 -> QEvent t2 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QDesktopWidget10 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QDesktopWidget10_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QDesktopWidget_setHandler10 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQDesktopWidget x0) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO (CBool)
    setHandlerWrapper x0 x1 x2
      = do x0obj <- qDesktopWidgetFromPtr x0
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

foreign import ccall "qtc_QDesktopWidget_setHandler10" qtc_QDesktopWidget_setHandler10 :: Ptr (TQDesktopWidget a) -> CWString -> Ptr (Ptr (TQDesktopWidget x0) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO (CBool)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QDesktopWidget10 :: (Ptr (TQDesktopWidget x0) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO (CBool)) -> IO (FunPtr (Ptr (TQDesktopWidget x0) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO (CBool)))

foreign import ccall "wrapper" wrapSetHandler_QDesktopWidget10_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QDesktopWidgetSc a) (QDesktopWidget x0 -> QObject t1 -> QEvent t2 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QDesktopWidget10 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QDesktopWidget10_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QDesktopWidget_setHandler10 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQDesktopWidget x0) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO (CBool)
    setHandlerWrapper x0 x1 x2
      = do x0obj <- qDesktopWidgetFromPtr x0
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

instance QeventFilter_h (QDesktopWidget ()) ((QObject t1, QEvent t2)) where
 eventFilter_h x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QDesktopWidget_eventFilter cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QDesktopWidget_eventFilter" qtc_QDesktopWidget_eventFilter :: Ptr (TQDesktopWidget a) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO CBool

instance QeventFilter_h (QDesktopWidgetSc a) ((QObject t1, QEvent t2)) where
 eventFilter_h x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QDesktopWidget_eventFilter cobj_x0 cobj_x1 cobj_x2

