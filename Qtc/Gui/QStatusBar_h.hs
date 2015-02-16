{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QStatusBar_h.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:29
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QStatusBar_h where

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

instance QunSetUserMethod (QStatusBar ()) where
 unSetUserMethod qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QStatusBar_unSetUserMethod cobj_qobj (toCInt 0) (toCInt evid)

foreign import ccall "qtc_QStatusBar_unSetUserMethod" qtc_QStatusBar_unSetUserMethod :: Ptr (TQStatusBar a) -> CInt -> CInt -> IO (CBool)

instance QunSetUserMethod (QStatusBarSc a) where
 unSetUserMethod qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QStatusBar_unSetUserMethod cobj_qobj (toCInt 0) (toCInt evid)

instance QunSetUserMethodVariant (QStatusBar ()) where
 unSetUserMethodVariant qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QStatusBar_unSetUserMethod cobj_qobj (toCInt 1) (toCInt evid)

instance QunSetUserMethodVariant (QStatusBarSc a) where
 unSetUserMethodVariant qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QStatusBar_unSetUserMethod cobj_qobj (toCInt 1) (toCInt evid)

instance QunSetUserMethodVariantList (QStatusBar ()) where
 unSetUserMethodVariantList qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QStatusBar_unSetUserMethod cobj_qobj (toCInt 2) (toCInt evid)

instance QunSetUserMethodVariantList (QStatusBarSc a) where
 unSetUserMethodVariantList qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QStatusBar_unSetUserMethod cobj_qobj (toCInt 2) (toCInt evid)

instance QsetUserMethod (QStatusBar ()) (QStatusBar x0 -> IO ()) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethod_QStatusBar setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethod_QStatusBar_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QStatusBar_setUserMethod cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQStatusBar x0) -> IO ()
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

foreign import ccall "qtc_QStatusBar_setUserMethod" qtc_QStatusBar_setUserMethod :: Ptr (TQStatusBar a) -> CInt -> Ptr (Ptr (TQStatusBar x0) -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetUserMethod_QStatusBar :: (Ptr (TQStatusBar x0) -> IO ()) -> IO (FunPtr (Ptr (TQStatusBar x0) -> IO ()))

foreign import ccall "wrapper" wrapSetUserMethod_QStatusBar_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetUserMethod (QStatusBarSc a) (QStatusBar x0 -> IO ()) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethod_QStatusBar setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethod_QStatusBar_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QStatusBar_setUserMethod cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQStatusBar x0) -> IO ()
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

instance QsetUserMethod (QStatusBar ()) (QStatusBar x0 -> QVariant () -> IO (QVariant ())) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethodVariant_QStatusBar setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethodVariant_QStatusBar_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QStatusBar_setUserMethodVariant cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQStatusBar x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))
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

foreign import ccall "qtc_QStatusBar_setUserMethodVariant" qtc_QStatusBar_setUserMethodVariant :: Ptr (TQStatusBar a) -> CInt -> Ptr (Ptr (TQStatusBar x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetUserMethodVariant_QStatusBar :: (Ptr (TQStatusBar x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))) -> IO (FunPtr (Ptr (TQStatusBar x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))))

foreign import ccall "wrapper" wrapSetUserMethodVariant_QStatusBar_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetUserMethod (QStatusBarSc a) (QStatusBar x0 -> QVariant () -> IO (QVariant ())) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethodVariant_QStatusBar setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethodVariant_QStatusBar_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QStatusBar_setUserMethodVariant cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQStatusBar x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))
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

instance QunSetHandler (QStatusBar ()) where 
 unSetHandler qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withCWString evid $ \cstr_evid ->
    qtc_QStatusBar_unSetHandler cobj_qobj cstr_evid

foreign import ccall "qtc_QStatusBar_unSetHandler" qtc_QStatusBar_unSetHandler :: Ptr (TQStatusBar a) -> CWString -> IO (CBool)

instance QunSetHandler (QStatusBarSc a) where 
 unSetHandler qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withCWString evid $ \cstr_evid ->
    qtc_QStatusBar_unSetHandler cobj_qobj cstr_evid

instance QsetHandler (QStatusBar ()) (QStatusBar x0 -> QEvent t1 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QStatusBar1 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QStatusBar1_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QStatusBar_setHandler1 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQStatusBar x0) -> Ptr (TQEvent t1) -> IO (CBool)
    setHandlerWrapper x0 x1
      = do x0obj <- qStatusBarFromPtr x0
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

foreign import ccall "qtc_QStatusBar_setHandler1" qtc_QStatusBar_setHandler1 :: Ptr (TQStatusBar a) -> CWString -> Ptr (Ptr (TQStatusBar x0) -> Ptr (TQEvent t1) -> IO (CBool)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QStatusBar1 :: (Ptr (TQStatusBar x0) -> Ptr (TQEvent t1) -> IO (CBool)) -> IO (FunPtr (Ptr (TQStatusBar x0) -> Ptr (TQEvent t1) -> IO (CBool)))

foreign import ccall "wrapper" wrapSetHandler_QStatusBar1_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QStatusBarSc a) (QStatusBar x0 -> QEvent t1 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QStatusBar1 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QStatusBar1_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QStatusBar_setHandler1 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQStatusBar x0) -> Ptr (TQEvent t1) -> IO (CBool)
    setHandlerWrapper x0 x1
      = do x0obj <- qStatusBarFromPtr x0
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

instance Qevent_h (QStatusBar ()) ((QEvent t1)) where
 event_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStatusBar_event cobj_x0 cobj_x1

foreign import ccall "qtc_QStatusBar_event" qtc_QStatusBar_event :: Ptr (TQStatusBar a) -> Ptr (TQEvent t1) -> IO CBool

instance Qevent_h (QStatusBarSc a) ((QEvent t1)) where
 event_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStatusBar_event cobj_x0 cobj_x1

instance QsetHandler (QStatusBar ()) (QStatusBar x0 -> QEvent t1 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QStatusBar2 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QStatusBar2_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QStatusBar_setHandler2 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQStatusBar x0) -> Ptr (TQEvent t1) -> IO ()
    setHandlerWrapper x0 x1
      = do x0obj <- qStatusBarFromPtr x0
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

foreign import ccall "qtc_QStatusBar_setHandler2" qtc_QStatusBar_setHandler2 :: Ptr (TQStatusBar a) -> CWString -> Ptr (Ptr (TQStatusBar x0) -> Ptr (TQEvent t1) -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QStatusBar2 :: (Ptr (TQStatusBar x0) -> Ptr (TQEvent t1) -> IO ()) -> IO (FunPtr (Ptr (TQStatusBar x0) -> Ptr (TQEvent t1) -> IO ()))

foreign import ccall "wrapper" wrapSetHandler_QStatusBar2_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QStatusBarSc a) (QStatusBar x0 -> QEvent t1 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QStatusBar2 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QStatusBar2_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QStatusBar_setHandler2 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQStatusBar x0) -> Ptr (TQEvent t1) -> IO ()
    setHandlerWrapper x0 x1
      = do x0obj <- qStatusBarFromPtr x0
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

instance QpaintEvent_h (QStatusBar ()) ((QPaintEvent t1)) where
 paintEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStatusBar_paintEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QStatusBar_paintEvent" qtc_QStatusBar_paintEvent :: Ptr (TQStatusBar a) -> Ptr (TQPaintEvent t1) -> IO ()

instance QpaintEvent_h (QStatusBarSc a) ((QPaintEvent t1)) where
 paintEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStatusBar_paintEvent cobj_x0 cobj_x1

instance QresizeEvent_h (QStatusBar ()) ((QResizeEvent t1)) where
 resizeEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStatusBar_resizeEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QStatusBar_resizeEvent" qtc_QStatusBar_resizeEvent :: Ptr (TQStatusBar a) -> Ptr (TQResizeEvent t1) -> IO ()

instance QresizeEvent_h (QStatusBarSc a) ((QResizeEvent t1)) where
 resizeEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStatusBar_resizeEvent cobj_x0 cobj_x1

instance QactionEvent_h (QStatusBar ()) ((QActionEvent t1)) where
 actionEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStatusBar_actionEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QStatusBar_actionEvent" qtc_QStatusBar_actionEvent :: Ptr (TQStatusBar a) -> Ptr (TQActionEvent t1) -> IO ()

instance QactionEvent_h (QStatusBarSc a) ((QActionEvent t1)) where
 actionEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStatusBar_actionEvent cobj_x0 cobj_x1

instance QchangeEvent_h (QStatusBar ()) ((QEvent t1)) where
 changeEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStatusBar_changeEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QStatusBar_changeEvent" qtc_QStatusBar_changeEvent :: Ptr (TQStatusBar a) -> Ptr (TQEvent t1) -> IO ()

instance QchangeEvent_h (QStatusBarSc a) ((QEvent t1)) where
 changeEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStatusBar_changeEvent cobj_x0 cobj_x1

instance QcloseEvent_h (QStatusBar ()) ((QCloseEvent t1)) where
 closeEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStatusBar_closeEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QStatusBar_closeEvent" qtc_QStatusBar_closeEvent :: Ptr (TQStatusBar a) -> Ptr (TQCloseEvent t1) -> IO ()

instance QcloseEvent_h (QStatusBarSc a) ((QCloseEvent t1)) where
 closeEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStatusBar_closeEvent cobj_x0 cobj_x1

instance QcontextMenuEvent_h (QStatusBar ()) ((QContextMenuEvent t1)) where
 contextMenuEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStatusBar_contextMenuEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QStatusBar_contextMenuEvent" qtc_QStatusBar_contextMenuEvent :: Ptr (TQStatusBar a) -> Ptr (TQContextMenuEvent t1) -> IO ()

instance QcontextMenuEvent_h (QStatusBarSc a) ((QContextMenuEvent t1)) where
 contextMenuEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStatusBar_contextMenuEvent cobj_x0 cobj_x1

instance QsetHandler (QStatusBar ()) (QStatusBar x0 -> IO (Int)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QStatusBar3 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QStatusBar3_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QStatusBar_setHandler3 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQStatusBar x0) -> IO (CInt)
    setHandlerWrapper x0
      = do x0obj <- qStatusBarFromPtr x0
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

foreign import ccall "qtc_QStatusBar_setHandler3" qtc_QStatusBar_setHandler3 :: Ptr (TQStatusBar a) -> CWString -> Ptr (Ptr (TQStatusBar x0) -> IO (CInt)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QStatusBar3 :: (Ptr (TQStatusBar x0) -> IO (CInt)) -> IO (FunPtr (Ptr (TQStatusBar x0) -> IO (CInt)))

foreign import ccall "wrapper" wrapSetHandler_QStatusBar3_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QStatusBarSc a) (QStatusBar x0 -> IO (Int)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QStatusBar3 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QStatusBar3_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QStatusBar_setHandler3 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQStatusBar x0) -> IO (CInt)
    setHandlerWrapper x0
      = do x0obj <- qStatusBarFromPtr x0
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

instance QdevType_h (QStatusBar ()) (()) where
 devType_h x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStatusBar_devType cobj_x0

foreign import ccall "qtc_QStatusBar_devType" qtc_QStatusBar_devType :: Ptr (TQStatusBar a) -> IO CInt

instance QdevType_h (QStatusBarSc a) (()) where
 devType_h x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStatusBar_devType cobj_x0

instance QdragEnterEvent_h (QStatusBar ()) ((QDragEnterEvent t1)) where
 dragEnterEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStatusBar_dragEnterEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QStatusBar_dragEnterEvent" qtc_QStatusBar_dragEnterEvent :: Ptr (TQStatusBar a) -> Ptr (TQDragEnterEvent t1) -> IO ()

instance QdragEnterEvent_h (QStatusBarSc a) ((QDragEnterEvent t1)) where
 dragEnterEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStatusBar_dragEnterEvent cobj_x0 cobj_x1

instance QdragLeaveEvent_h (QStatusBar ()) ((QDragLeaveEvent t1)) where
 dragLeaveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStatusBar_dragLeaveEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QStatusBar_dragLeaveEvent" qtc_QStatusBar_dragLeaveEvent :: Ptr (TQStatusBar a) -> Ptr (TQDragLeaveEvent t1) -> IO ()

instance QdragLeaveEvent_h (QStatusBarSc a) ((QDragLeaveEvent t1)) where
 dragLeaveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStatusBar_dragLeaveEvent cobj_x0 cobj_x1

instance QdragMoveEvent_h (QStatusBar ()) ((QDragMoveEvent t1)) where
 dragMoveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStatusBar_dragMoveEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QStatusBar_dragMoveEvent" qtc_QStatusBar_dragMoveEvent :: Ptr (TQStatusBar a) -> Ptr (TQDragMoveEvent t1) -> IO ()

instance QdragMoveEvent_h (QStatusBarSc a) ((QDragMoveEvent t1)) where
 dragMoveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStatusBar_dragMoveEvent cobj_x0 cobj_x1

instance QdropEvent_h (QStatusBar ()) ((QDropEvent t1)) where
 dropEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStatusBar_dropEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QStatusBar_dropEvent" qtc_QStatusBar_dropEvent :: Ptr (TQStatusBar a) -> Ptr (TQDropEvent t1) -> IO ()

instance QdropEvent_h (QStatusBarSc a) ((QDropEvent t1)) where
 dropEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStatusBar_dropEvent cobj_x0 cobj_x1

instance QenterEvent_h (QStatusBar ()) ((QEvent t1)) where
 enterEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStatusBar_enterEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QStatusBar_enterEvent" qtc_QStatusBar_enterEvent :: Ptr (TQStatusBar a) -> Ptr (TQEvent t1) -> IO ()

instance QenterEvent_h (QStatusBarSc a) ((QEvent t1)) where
 enterEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStatusBar_enterEvent cobj_x0 cobj_x1

instance QfocusInEvent_h (QStatusBar ()) ((QFocusEvent t1)) where
 focusInEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStatusBar_focusInEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QStatusBar_focusInEvent" qtc_QStatusBar_focusInEvent :: Ptr (TQStatusBar a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusInEvent_h (QStatusBarSc a) ((QFocusEvent t1)) where
 focusInEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStatusBar_focusInEvent cobj_x0 cobj_x1

instance QfocusOutEvent_h (QStatusBar ()) ((QFocusEvent t1)) where
 focusOutEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStatusBar_focusOutEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QStatusBar_focusOutEvent" qtc_QStatusBar_focusOutEvent :: Ptr (TQStatusBar a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusOutEvent_h (QStatusBarSc a) ((QFocusEvent t1)) where
 focusOutEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStatusBar_focusOutEvent cobj_x0 cobj_x1

instance QsetHandler (QStatusBar ()) (QStatusBar x0 -> Int -> IO (Int)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QStatusBar4 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QStatusBar4_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QStatusBar_setHandler4 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQStatusBar x0) -> CInt -> IO (CInt)
    setHandlerWrapper x0 x1
      = do x0obj <- qStatusBarFromPtr x0
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

foreign import ccall "qtc_QStatusBar_setHandler4" qtc_QStatusBar_setHandler4 :: Ptr (TQStatusBar a) -> CWString -> Ptr (Ptr (TQStatusBar x0) -> CInt -> IO (CInt)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QStatusBar4 :: (Ptr (TQStatusBar x0) -> CInt -> IO (CInt)) -> IO (FunPtr (Ptr (TQStatusBar x0) -> CInt -> IO (CInt)))

foreign import ccall "wrapper" wrapSetHandler_QStatusBar4_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QStatusBarSc a) (QStatusBar x0 -> Int -> IO (Int)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QStatusBar4 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QStatusBar4_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QStatusBar_setHandler4 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQStatusBar x0) -> CInt -> IO (CInt)
    setHandlerWrapper x0 x1
      = do x0obj <- qStatusBarFromPtr x0
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

instance QheightForWidth_h (QStatusBar ()) ((Int)) where
 heightForWidth_h x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStatusBar_heightForWidth cobj_x0 (toCInt x1)

foreign import ccall "qtc_QStatusBar_heightForWidth" qtc_QStatusBar_heightForWidth :: Ptr (TQStatusBar a) -> CInt -> IO CInt

instance QheightForWidth_h (QStatusBarSc a) ((Int)) where
 heightForWidth_h x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStatusBar_heightForWidth cobj_x0 (toCInt x1)

instance QhideEvent_h (QStatusBar ()) ((QHideEvent t1)) where
 hideEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStatusBar_hideEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QStatusBar_hideEvent" qtc_QStatusBar_hideEvent :: Ptr (TQStatusBar a) -> Ptr (TQHideEvent t1) -> IO ()

instance QhideEvent_h (QStatusBarSc a) ((QHideEvent t1)) where
 hideEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStatusBar_hideEvent cobj_x0 cobj_x1

instance QsetHandler (QStatusBar ()) (QStatusBar x0 -> InputMethodQuery -> IO (QVariant t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QStatusBar5 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QStatusBar5_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QStatusBar_setHandler5 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQStatusBar x0) -> CLong -> IO (Ptr (TQVariant t0))
    setHandlerWrapper x0 x1
      = do x0obj <- qStatusBarFromPtr x0
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

foreign import ccall "qtc_QStatusBar_setHandler5" qtc_QStatusBar_setHandler5 :: Ptr (TQStatusBar a) -> CWString -> Ptr (Ptr (TQStatusBar x0) -> CLong -> IO (Ptr (TQVariant t0))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QStatusBar5 :: (Ptr (TQStatusBar x0) -> CLong -> IO (Ptr (TQVariant t0))) -> IO (FunPtr (Ptr (TQStatusBar x0) -> CLong -> IO (Ptr (TQVariant t0))))

foreign import ccall "wrapper" wrapSetHandler_QStatusBar5_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QStatusBarSc a) (QStatusBar x0 -> InputMethodQuery -> IO (QVariant t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QStatusBar5 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QStatusBar5_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QStatusBar_setHandler5 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQStatusBar x0) -> CLong -> IO (Ptr (TQVariant t0))
    setHandlerWrapper x0 x1
      = do x0obj <- qStatusBarFromPtr x0
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

instance QinputMethodQuery_h (QStatusBar ()) ((InputMethodQuery)) where
 inputMethodQuery_h x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStatusBar_inputMethodQuery cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QStatusBar_inputMethodQuery" qtc_QStatusBar_inputMethodQuery :: Ptr (TQStatusBar a) -> CLong -> IO (Ptr (TQVariant ()))

instance QinputMethodQuery_h (QStatusBarSc a) ((InputMethodQuery)) where
 inputMethodQuery_h x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStatusBar_inputMethodQuery cobj_x0 (toCLong $ qEnum_toInt x1)

instance QkeyPressEvent_h (QStatusBar ()) ((QKeyEvent t1)) where
 keyPressEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStatusBar_keyPressEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QStatusBar_keyPressEvent" qtc_QStatusBar_keyPressEvent :: Ptr (TQStatusBar a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyPressEvent_h (QStatusBarSc a) ((QKeyEvent t1)) where
 keyPressEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStatusBar_keyPressEvent cobj_x0 cobj_x1

instance QkeyReleaseEvent_h (QStatusBar ()) ((QKeyEvent t1)) where
 keyReleaseEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStatusBar_keyReleaseEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QStatusBar_keyReleaseEvent" qtc_QStatusBar_keyReleaseEvent :: Ptr (TQStatusBar a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyReleaseEvent_h (QStatusBarSc a) ((QKeyEvent t1)) where
 keyReleaseEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStatusBar_keyReleaseEvent cobj_x0 cobj_x1

instance QleaveEvent_h (QStatusBar ()) ((QEvent t1)) where
 leaveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStatusBar_leaveEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QStatusBar_leaveEvent" qtc_QStatusBar_leaveEvent :: Ptr (TQStatusBar a) -> Ptr (TQEvent t1) -> IO ()

instance QleaveEvent_h (QStatusBarSc a) ((QEvent t1)) where
 leaveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStatusBar_leaveEvent cobj_x0 cobj_x1

instance QsetHandler (QStatusBar ()) (QStatusBar x0 -> IO (QSize t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QStatusBar6 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QStatusBar6_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QStatusBar_setHandler6 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQStatusBar x0) -> IO (Ptr (TQSize t0))
    setHandlerWrapper x0
      = do x0obj <- qStatusBarFromPtr x0
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

foreign import ccall "qtc_QStatusBar_setHandler6" qtc_QStatusBar_setHandler6 :: Ptr (TQStatusBar a) -> CWString -> Ptr (Ptr (TQStatusBar x0) -> IO (Ptr (TQSize t0))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QStatusBar6 :: (Ptr (TQStatusBar x0) -> IO (Ptr (TQSize t0))) -> IO (FunPtr (Ptr (TQStatusBar x0) -> IO (Ptr (TQSize t0))))

foreign import ccall "wrapper" wrapSetHandler_QStatusBar6_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QStatusBarSc a) (QStatusBar x0 -> IO (QSize t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QStatusBar6 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QStatusBar6_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QStatusBar_setHandler6 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQStatusBar x0) -> IO (Ptr (TQSize t0))
    setHandlerWrapper x0
      = do x0obj <- qStatusBarFromPtr x0
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

instance QqminimumSizeHint_h (QStatusBar ()) (()) where
 qminimumSizeHint_h x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStatusBar_minimumSizeHint cobj_x0

foreign import ccall "qtc_QStatusBar_minimumSizeHint" qtc_QStatusBar_minimumSizeHint :: Ptr (TQStatusBar a) -> IO (Ptr (TQSize ()))

instance QqminimumSizeHint_h (QStatusBarSc a) (()) where
 qminimumSizeHint_h x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStatusBar_minimumSizeHint cobj_x0

instance QminimumSizeHint_h (QStatusBar ()) (()) where
 minimumSizeHint_h x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStatusBar_minimumSizeHint_qth cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QStatusBar_minimumSizeHint_qth" qtc_QStatusBar_minimumSizeHint_qth :: Ptr (TQStatusBar a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QminimumSizeHint_h (QStatusBarSc a) (()) where
 minimumSizeHint_h x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStatusBar_minimumSizeHint_qth cobj_x0 csize_ret_w csize_ret_h

instance QmouseDoubleClickEvent_h (QStatusBar ()) ((QMouseEvent t1)) where
 mouseDoubleClickEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStatusBar_mouseDoubleClickEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QStatusBar_mouseDoubleClickEvent" qtc_QStatusBar_mouseDoubleClickEvent :: Ptr (TQStatusBar a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseDoubleClickEvent_h (QStatusBarSc a) ((QMouseEvent t1)) where
 mouseDoubleClickEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStatusBar_mouseDoubleClickEvent cobj_x0 cobj_x1

instance QmouseMoveEvent_h (QStatusBar ()) ((QMouseEvent t1)) where
 mouseMoveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStatusBar_mouseMoveEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QStatusBar_mouseMoveEvent" qtc_QStatusBar_mouseMoveEvent :: Ptr (TQStatusBar a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseMoveEvent_h (QStatusBarSc a) ((QMouseEvent t1)) where
 mouseMoveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStatusBar_mouseMoveEvent cobj_x0 cobj_x1

instance QmousePressEvent_h (QStatusBar ()) ((QMouseEvent t1)) where
 mousePressEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStatusBar_mousePressEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QStatusBar_mousePressEvent" qtc_QStatusBar_mousePressEvent :: Ptr (TQStatusBar a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmousePressEvent_h (QStatusBarSc a) ((QMouseEvent t1)) where
 mousePressEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStatusBar_mousePressEvent cobj_x0 cobj_x1

instance QmouseReleaseEvent_h (QStatusBar ()) ((QMouseEvent t1)) where
 mouseReleaseEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStatusBar_mouseReleaseEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QStatusBar_mouseReleaseEvent" qtc_QStatusBar_mouseReleaseEvent :: Ptr (TQStatusBar a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseReleaseEvent_h (QStatusBarSc a) ((QMouseEvent t1)) where
 mouseReleaseEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStatusBar_mouseReleaseEvent cobj_x0 cobj_x1

instance QmoveEvent_h (QStatusBar ()) ((QMoveEvent t1)) where
 moveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStatusBar_moveEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QStatusBar_moveEvent" qtc_QStatusBar_moveEvent :: Ptr (TQStatusBar a) -> Ptr (TQMoveEvent t1) -> IO ()

instance QmoveEvent_h (QStatusBarSc a) ((QMoveEvent t1)) where
 moveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStatusBar_moveEvent cobj_x0 cobj_x1

instance QsetHandler (QStatusBar ()) (QStatusBar x0 -> IO (QPaintEngine t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QStatusBar7 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QStatusBar7_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QStatusBar_setHandler7 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQStatusBar x0) -> IO (Ptr (TQPaintEngine t0))
    setHandlerWrapper x0
      = do x0obj <- qStatusBarFromPtr x0
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

foreign import ccall "qtc_QStatusBar_setHandler7" qtc_QStatusBar_setHandler7 :: Ptr (TQStatusBar a) -> CWString -> Ptr (Ptr (TQStatusBar x0) -> IO (Ptr (TQPaintEngine t0))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QStatusBar7 :: (Ptr (TQStatusBar x0) -> IO (Ptr (TQPaintEngine t0))) -> IO (FunPtr (Ptr (TQStatusBar x0) -> IO (Ptr (TQPaintEngine t0))))

foreign import ccall "wrapper" wrapSetHandler_QStatusBar7_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QStatusBarSc a) (QStatusBar x0 -> IO (QPaintEngine t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QStatusBar7 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QStatusBar7_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QStatusBar_setHandler7 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQStatusBar x0) -> IO (Ptr (TQPaintEngine t0))
    setHandlerWrapper x0
      = do x0obj <- qStatusBarFromPtr x0
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

instance QpaintEngine_h (QStatusBar ()) (()) where
 paintEngine_h x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStatusBar_paintEngine cobj_x0

foreign import ccall "qtc_QStatusBar_paintEngine" qtc_QStatusBar_paintEngine :: Ptr (TQStatusBar a) -> IO (Ptr (TQPaintEngine ()))

instance QpaintEngine_h (QStatusBarSc a) (()) where
 paintEngine_h x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStatusBar_paintEngine cobj_x0

instance QsetHandler (QStatusBar ()) (QStatusBar x0 -> Bool -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QStatusBar8 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QStatusBar8_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QStatusBar_setHandler8 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQStatusBar x0) -> CBool -> IO ()
    setHandlerWrapper x0 x1
      = do x0obj <- qStatusBarFromPtr x0
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

foreign import ccall "qtc_QStatusBar_setHandler8" qtc_QStatusBar_setHandler8 :: Ptr (TQStatusBar a) -> CWString -> Ptr (Ptr (TQStatusBar x0) -> CBool -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QStatusBar8 :: (Ptr (TQStatusBar x0) -> CBool -> IO ()) -> IO (FunPtr (Ptr (TQStatusBar x0) -> CBool -> IO ()))

foreign import ccall "wrapper" wrapSetHandler_QStatusBar8_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QStatusBarSc a) (QStatusBar x0 -> Bool -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QStatusBar8 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QStatusBar8_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QStatusBar_setHandler8 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQStatusBar x0) -> CBool -> IO ()
    setHandlerWrapper x0 x1
      = do x0obj <- qStatusBarFromPtr x0
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

instance QsetVisible_h (QStatusBar ()) ((Bool)) where
 setVisible_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStatusBar_setVisible cobj_x0 (toCBool x1)

foreign import ccall "qtc_QStatusBar_setVisible" qtc_QStatusBar_setVisible :: Ptr (TQStatusBar a) -> CBool -> IO ()

instance QsetVisible_h (QStatusBarSc a) ((Bool)) where
 setVisible_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStatusBar_setVisible cobj_x0 (toCBool x1)

instance QshowEvent_h (QStatusBar ()) ((QShowEvent t1)) where
 showEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStatusBar_showEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QStatusBar_showEvent" qtc_QStatusBar_showEvent :: Ptr (TQStatusBar a) -> Ptr (TQShowEvent t1) -> IO ()

instance QshowEvent_h (QStatusBarSc a) ((QShowEvent t1)) where
 showEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStatusBar_showEvent cobj_x0 cobj_x1

instance QqsizeHint_h (QStatusBar ()) (()) where
 qsizeHint_h x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStatusBar_sizeHint cobj_x0

foreign import ccall "qtc_QStatusBar_sizeHint" qtc_QStatusBar_sizeHint :: Ptr (TQStatusBar a) -> IO (Ptr (TQSize ()))

instance QqsizeHint_h (QStatusBarSc a) (()) where
 qsizeHint_h x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStatusBar_sizeHint cobj_x0

instance QsizeHint_h (QStatusBar ()) (()) where
 sizeHint_h x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStatusBar_sizeHint_qth cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QStatusBar_sizeHint_qth" qtc_QStatusBar_sizeHint_qth :: Ptr (TQStatusBar a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QsizeHint_h (QStatusBarSc a) (()) where
 sizeHint_h x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStatusBar_sizeHint_qth cobj_x0 csize_ret_w csize_ret_h

instance QtabletEvent_h (QStatusBar ()) ((QTabletEvent t1)) where
 tabletEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStatusBar_tabletEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QStatusBar_tabletEvent" qtc_QStatusBar_tabletEvent :: Ptr (TQStatusBar a) -> Ptr (TQTabletEvent t1) -> IO ()

instance QtabletEvent_h (QStatusBarSc a) ((QTabletEvent t1)) where
 tabletEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStatusBar_tabletEvent cobj_x0 cobj_x1

instance QwheelEvent_h (QStatusBar ()) ((QWheelEvent t1)) where
 wheelEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStatusBar_wheelEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QStatusBar_wheelEvent" qtc_QStatusBar_wheelEvent :: Ptr (TQStatusBar a) -> Ptr (TQWheelEvent t1) -> IO ()

instance QwheelEvent_h (QStatusBarSc a) ((QWheelEvent t1)) where
 wheelEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStatusBar_wheelEvent cobj_x0 cobj_x1

instance QsetHandler (QStatusBar ()) (QStatusBar x0 -> QObject t1 -> QEvent t2 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QStatusBar9 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QStatusBar9_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QStatusBar_setHandler9 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQStatusBar x0) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO (CBool)
    setHandlerWrapper x0 x1 x2
      = do x0obj <- qStatusBarFromPtr x0
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

foreign import ccall "qtc_QStatusBar_setHandler9" qtc_QStatusBar_setHandler9 :: Ptr (TQStatusBar a) -> CWString -> Ptr (Ptr (TQStatusBar x0) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO (CBool)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QStatusBar9 :: (Ptr (TQStatusBar x0) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO (CBool)) -> IO (FunPtr (Ptr (TQStatusBar x0) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO (CBool)))

foreign import ccall "wrapper" wrapSetHandler_QStatusBar9_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QStatusBarSc a) (QStatusBar x0 -> QObject t1 -> QEvent t2 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QStatusBar9 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QStatusBar9_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QStatusBar_setHandler9 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQStatusBar x0) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO (CBool)
    setHandlerWrapper x0 x1 x2
      = do x0obj <- qStatusBarFromPtr x0
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

instance QeventFilter_h (QStatusBar ()) ((QObject t1, QEvent t2)) where
 eventFilter_h x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QStatusBar_eventFilter cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QStatusBar_eventFilter" qtc_QStatusBar_eventFilter :: Ptr (TQStatusBar a) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO CBool

instance QeventFilter_h (QStatusBarSc a) ((QObject t1, QEvent t2)) where
 eventFilter_h x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QStatusBar_eventFilter cobj_x0 cobj_x1 cobj_x2

