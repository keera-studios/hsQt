{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QAbstractPrintDialog_h.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:20
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QAbstractPrintDialog_h where

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

instance QunSetUserMethod (QAbstractPrintDialog ()) where
 unSetUserMethod qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QAbstractPrintDialog_unSetUserMethod cobj_qobj (toCInt 0) (toCInt evid)

foreign import ccall "qtc_QAbstractPrintDialog_unSetUserMethod" qtc_QAbstractPrintDialog_unSetUserMethod :: Ptr (TQAbstractPrintDialog a) -> CInt -> CInt -> IO (CBool)

instance QunSetUserMethod (QAbstractPrintDialogSc a) where
 unSetUserMethod qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QAbstractPrintDialog_unSetUserMethod cobj_qobj (toCInt 0) (toCInt evid)

instance QunSetUserMethodVariant (QAbstractPrintDialog ()) where
 unSetUserMethodVariant qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QAbstractPrintDialog_unSetUserMethod cobj_qobj (toCInt 1) (toCInt evid)

instance QunSetUserMethodVariant (QAbstractPrintDialogSc a) where
 unSetUserMethodVariant qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QAbstractPrintDialog_unSetUserMethod cobj_qobj (toCInt 1) (toCInt evid)

instance QunSetUserMethodVariantList (QAbstractPrintDialog ()) where
 unSetUserMethodVariantList qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QAbstractPrintDialog_unSetUserMethod cobj_qobj (toCInt 2) (toCInt evid)

instance QunSetUserMethodVariantList (QAbstractPrintDialogSc a) where
 unSetUserMethodVariantList qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QAbstractPrintDialog_unSetUserMethod cobj_qobj (toCInt 2) (toCInt evid)

instance QsetUserMethod (QAbstractPrintDialog ()) (QAbstractPrintDialog x0 -> IO ()) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethod_QAbstractPrintDialog setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethod_QAbstractPrintDialog_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QAbstractPrintDialog_setUserMethod cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQAbstractPrintDialog x0) -> IO ()
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

foreign import ccall "qtc_QAbstractPrintDialog_setUserMethod" qtc_QAbstractPrintDialog_setUserMethod :: Ptr (TQAbstractPrintDialog a) -> CInt -> Ptr (Ptr (TQAbstractPrintDialog x0) -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetUserMethod_QAbstractPrintDialog :: (Ptr (TQAbstractPrintDialog x0) -> IO ()) -> IO (FunPtr (Ptr (TQAbstractPrintDialog x0) -> IO ()))

foreign import ccall "wrapper" wrapSetUserMethod_QAbstractPrintDialog_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetUserMethod (QAbstractPrintDialogSc a) (QAbstractPrintDialog x0 -> IO ()) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethod_QAbstractPrintDialog setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethod_QAbstractPrintDialog_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QAbstractPrintDialog_setUserMethod cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQAbstractPrintDialog x0) -> IO ()
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

instance QsetUserMethod (QAbstractPrintDialog ()) (QAbstractPrintDialog x0 -> QVariant () -> IO (QVariant ())) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethodVariant_QAbstractPrintDialog setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethodVariant_QAbstractPrintDialog_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QAbstractPrintDialog_setUserMethodVariant cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQAbstractPrintDialog x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))
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

foreign import ccall "qtc_QAbstractPrintDialog_setUserMethodVariant" qtc_QAbstractPrintDialog_setUserMethodVariant :: Ptr (TQAbstractPrintDialog a) -> CInt -> Ptr (Ptr (TQAbstractPrintDialog x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetUserMethodVariant_QAbstractPrintDialog :: (Ptr (TQAbstractPrintDialog x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))) -> IO (FunPtr (Ptr (TQAbstractPrintDialog x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))))

foreign import ccall "wrapper" wrapSetUserMethodVariant_QAbstractPrintDialog_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetUserMethod (QAbstractPrintDialogSc a) (QAbstractPrintDialog x0 -> QVariant () -> IO (QVariant ())) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethodVariant_QAbstractPrintDialog setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethodVariant_QAbstractPrintDialog_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QAbstractPrintDialog_setUserMethodVariant cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQAbstractPrintDialog x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))
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

instance QunSetHandler (QAbstractPrintDialog ()) where 
 unSetHandler qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withCWString evid $ \cstr_evid ->
    qtc_QAbstractPrintDialog_unSetHandler cobj_qobj cstr_evid

foreign import ccall "qtc_QAbstractPrintDialog_unSetHandler" qtc_QAbstractPrintDialog_unSetHandler :: Ptr (TQAbstractPrintDialog a) -> CWString -> IO (CBool)

instance QunSetHandler (QAbstractPrintDialogSc a) where 
 unSetHandler qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withCWString evid $ \cstr_evid ->
    qtc_QAbstractPrintDialog_unSetHandler cobj_qobj cstr_evid

instance QsetHandler (QAbstractPrintDialog ()) (QAbstractPrintDialog x0 -> IO (Int)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractPrintDialog1 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractPrintDialog1_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractPrintDialog_setHandler1 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractPrintDialog x0) -> IO (CInt)
    setHandlerWrapper x0
      = do x0obj <- qAbstractPrintDialogFromPtr x0
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

foreign import ccall "qtc_QAbstractPrintDialog_setHandler1" qtc_QAbstractPrintDialog_setHandler1 :: Ptr (TQAbstractPrintDialog a) -> CWString -> Ptr (Ptr (TQAbstractPrintDialog x0) -> IO (CInt)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QAbstractPrintDialog1 :: (Ptr (TQAbstractPrintDialog x0) -> IO (CInt)) -> IO (FunPtr (Ptr (TQAbstractPrintDialog x0) -> IO (CInt)))

foreign import ccall "wrapper" wrapSetHandler_QAbstractPrintDialog1_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QAbstractPrintDialogSc a) (QAbstractPrintDialog x0 -> IO (Int)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractPrintDialog1 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractPrintDialog1_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractPrintDialog_setHandler1 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractPrintDialog x0) -> IO (CInt)
    setHandlerWrapper x0
      = do x0obj <- qAbstractPrintDialogFromPtr x0
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

instance Qexec_h (QAbstractPrintDialog ()) (()) where
 exec_h x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPrintDialog_exec cobj_x0

foreign import ccall "qtc_QAbstractPrintDialog_exec" qtc_QAbstractPrintDialog_exec :: Ptr (TQAbstractPrintDialog a) -> IO CInt

instance Qexec_h (QAbstractPrintDialogSc a) (()) where
 exec_h x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPrintDialog_exec cobj_x0

instance QsetHandler (QAbstractPrintDialog ()) (QAbstractPrintDialog x0 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractPrintDialog2 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractPrintDialog2_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractPrintDialog_setHandler2 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractPrintDialog x0) -> IO ()
    setHandlerWrapper x0
      = do x0obj <- qAbstractPrintDialogFromPtr x0
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

foreign import ccall "qtc_QAbstractPrintDialog_setHandler2" qtc_QAbstractPrintDialog_setHandler2 :: Ptr (TQAbstractPrintDialog a) -> CWString -> Ptr (Ptr (TQAbstractPrintDialog x0) -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QAbstractPrintDialog2 :: (Ptr (TQAbstractPrintDialog x0) -> IO ()) -> IO (FunPtr (Ptr (TQAbstractPrintDialog x0) -> IO ()))

foreign import ccall "wrapper" wrapSetHandler_QAbstractPrintDialog2_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QAbstractPrintDialogSc a) (QAbstractPrintDialog x0 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractPrintDialog2 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractPrintDialog2_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractPrintDialog_setHandler2 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractPrintDialog x0) -> IO ()
    setHandlerWrapper x0
      = do x0obj <- qAbstractPrintDialogFromPtr x0
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

instance Qaccept_h (QAbstractPrintDialog ()) (()) where
 accept_h x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPrintDialog_accept cobj_x0

foreign import ccall "qtc_QAbstractPrintDialog_accept" qtc_QAbstractPrintDialog_accept :: Ptr (TQAbstractPrintDialog a) -> IO ()

instance Qaccept_h (QAbstractPrintDialogSc a) (()) where
 accept_h x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPrintDialog_accept cobj_x0

instance QsetHandler (QAbstractPrintDialog ()) (QAbstractPrintDialog x0 -> QEvent t1 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractPrintDialog3 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractPrintDialog3_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractPrintDialog_setHandler3 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractPrintDialog x0) -> Ptr (TQEvent t1) -> IO ()
    setHandlerWrapper x0 x1
      = do x0obj <- qAbstractPrintDialogFromPtr x0
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

foreign import ccall "qtc_QAbstractPrintDialog_setHandler3" qtc_QAbstractPrintDialog_setHandler3 :: Ptr (TQAbstractPrintDialog a) -> CWString -> Ptr (Ptr (TQAbstractPrintDialog x0) -> Ptr (TQEvent t1) -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QAbstractPrintDialog3 :: (Ptr (TQAbstractPrintDialog x0) -> Ptr (TQEvent t1) -> IO ()) -> IO (FunPtr (Ptr (TQAbstractPrintDialog x0) -> Ptr (TQEvent t1) -> IO ()))

foreign import ccall "wrapper" wrapSetHandler_QAbstractPrintDialog3_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QAbstractPrintDialogSc a) (QAbstractPrintDialog x0 -> QEvent t1 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractPrintDialog3 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractPrintDialog3_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractPrintDialog_setHandler3 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractPrintDialog x0) -> Ptr (TQEvent t1) -> IO ()
    setHandlerWrapper x0 x1
      = do x0obj <- qAbstractPrintDialogFromPtr x0
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

instance QcloseEvent_h (QAbstractPrintDialog ()) ((QCloseEvent t1)) where
 closeEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPrintDialog_closeEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractPrintDialog_closeEvent" qtc_QAbstractPrintDialog_closeEvent :: Ptr (TQAbstractPrintDialog a) -> Ptr (TQCloseEvent t1) -> IO ()

instance QcloseEvent_h (QAbstractPrintDialogSc a) ((QCloseEvent t1)) where
 closeEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPrintDialog_closeEvent cobj_x0 cobj_x1

instance QcontextMenuEvent_h (QAbstractPrintDialog ()) ((QContextMenuEvent t1)) where
 contextMenuEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPrintDialog_contextMenuEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractPrintDialog_contextMenuEvent" qtc_QAbstractPrintDialog_contextMenuEvent :: Ptr (TQAbstractPrintDialog a) -> Ptr (TQContextMenuEvent t1) -> IO ()

instance QcontextMenuEvent_h (QAbstractPrintDialogSc a) ((QContextMenuEvent t1)) where
 contextMenuEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPrintDialog_contextMenuEvent cobj_x0 cobj_x1

instance QsetHandler (QAbstractPrintDialog ()) (QAbstractPrintDialog x0 -> Int -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractPrintDialog4 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractPrintDialog4_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractPrintDialog_setHandler4 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractPrintDialog x0) -> CInt -> IO ()
    setHandlerWrapper x0 x1
      = do x0obj <- qAbstractPrintDialogFromPtr x0
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

foreign import ccall "qtc_QAbstractPrintDialog_setHandler4" qtc_QAbstractPrintDialog_setHandler4 :: Ptr (TQAbstractPrintDialog a) -> CWString -> Ptr (Ptr (TQAbstractPrintDialog x0) -> CInt -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QAbstractPrintDialog4 :: (Ptr (TQAbstractPrintDialog x0) -> CInt -> IO ()) -> IO (FunPtr (Ptr (TQAbstractPrintDialog x0) -> CInt -> IO ()))

foreign import ccall "wrapper" wrapSetHandler_QAbstractPrintDialog4_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QAbstractPrintDialogSc a) (QAbstractPrintDialog x0 -> Int -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractPrintDialog4 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractPrintDialog4_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractPrintDialog_setHandler4 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractPrintDialog x0) -> CInt -> IO ()
    setHandlerWrapper x0 x1
      = do x0obj <- qAbstractPrintDialogFromPtr x0
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

instance Qdone_h (QAbstractPrintDialog ()) ((Int)) where
 done_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPrintDialog_done cobj_x0 (toCInt x1)

foreign import ccall "qtc_QAbstractPrintDialog_done" qtc_QAbstractPrintDialog_done :: Ptr (TQAbstractPrintDialog a) -> CInt -> IO ()

instance Qdone_h (QAbstractPrintDialogSc a) ((Int)) where
 done_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPrintDialog_done cobj_x0 (toCInt x1)

instance QsetHandler (QAbstractPrintDialog ()) (QAbstractPrintDialog x0 -> QEvent t1 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractPrintDialog5 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractPrintDialog5_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractPrintDialog_setHandler5 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractPrintDialog x0) -> Ptr (TQEvent t1) -> IO (CBool)
    setHandlerWrapper x0 x1
      = do x0obj <- qAbstractPrintDialogFromPtr x0
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

foreign import ccall "qtc_QAbstractPrintDialog_setHandler5" qtc_QAbstractPrintDialog_setHandler5 :: Ptr (TQAbstractPrintDialog a) -> CWString -> Ptr (Ptr (TQAbstractPrintDialog x0) -> Ptr (TQEvent t1) -> IO (CBool)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QAbstractPrintDialog5 :: (Ptr (TQAbstractPrintDialog x0) -> Ptr (TQEvent t1) -> IO (CBool)) -> IO (FunPtr (Ptr (TQAbstractPrintDialog x0) -> Ptr (TQEvent t1) -> IO (CBool)))

foreign import ccall "wrapper" wrapSetHandler_QAbstractPrintDialog5_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QAbstractPrintDialogSc a) (QAbstractPrintDialog x0 -> QEvent t1 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractPrintDialog5 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractPrintDialog5_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractPrintDialog_setHandler5 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractPrintDialog x0) -> Ptr (TQEvent t1) -> IO (CBool)
    setHandlerWrapper x0 x1
      = do x0obj <- qAbstractPrintDialogFromPtr x0
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

instance Qevent_h (QAbstractPrintDialog ()) ((QEvent t1)) where
 event_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPrintDialog_event cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractPrintDialog_event" qtc_QAbstractPrintDialog_event :: Ptr (TQAbstractPrintDialog a) -> Ptr (TQEvent t1) -> IO CBool

instance Qevent_h (QAbstractPrintDialogSc a) ((QEvent t1)) where
 event_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPrintDialog_event cobj_x0 cobj_x1

instance QkeyPressEvent_h (QAbstractPrintDialog ()) ((QKeyEvent t1)) where
 keyPressEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPrintDialog_keyPressEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractPrintDialog_keyPressEvent" qtc_QAbstractPrintDialog_keyPressEvent :: Ptr (TQAbstractPrintDialog a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyPressEvent_h (QAbstractPrintDialogSc a) ((QKeyEvent t1)) where
 keyPressEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPrintDialog_keyPressEvent cobj_x0 cobj_x1

instance QsetHandler (QAbstractPrintDialog ()) (QAbstractPrintDialog x0 -> IO (QSize t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractPrintDialog6 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractPrintDialog6_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractPrintDialog_setHandler6 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractPrintDialog x0) -> IO (Ptr (TQSize t0))
    setHandlerWrapper x0
      = do x0obj <- qAbstractPrintDialogFromPtr x0
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

foreign import ccall "qtc_QAbstractPrintDialog_setHandler6" qtc_QAbstractPrintDialog_setHandler6 :: Ptr (TQAbstractPrintDialog a) -> CWString -> Ptr (Ptr (TQAbstractPrintDialog x0) -> IO (Ptr (TQSize t0))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QAbstractPrintDialog6 :: (Ptr (TQAbstractPrintDialog x0) -> IO (Ptr (TQSize t0))) -> IO (FunPtr (Ptr (TQAbstractPrintDialog x0) -> IO (Ptr (TQSize t0))))

foreign import ccall "wrapper" wrapSetHandler_QAbstractPrintDialog6_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QAbstractPrintDialogSc a) (QAbstractPrintDialog x0 -> IO (QSize t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractPrintDialog6 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractPrintDialog6_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractPrintDialog_setHandler6 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractPrintDialog x0) -> IO (Ptr (TQSize t0))
    setHandlerWrapper x0
      = do x0obj <- qAbstractPrintDialogFromPtr x0
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

instance QqminimumSizeHint_h (QAbstractPrintDialog ()) (()) where
 qminimumSizeHint_h x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPrintDialog_minimumSizeHint cobj_x0

foreign import ccall "qtc_QAbstractPrintDialog_minimumSizeHint" qtc_QAbstractPrintDialog_minimumSizeHint :: Ptr (TQAbstractPrintDialog a) -> IO (Ptr (TQSize ()))

instance QqminimumSizeHint_h (QAbstractPrintDialogSc a) (()) where
 qminimumSizeHint_h x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPrintDialog_minimumSizeHint cobj_x0

instance QminimumSizeHint_h (QAbstractPrintDialog ()) (()) where
 minimumSizeHint_h x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPrintDialog_minimumSizeHint_qth cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QAbstractPrintDialog_minimumSizeHint_qth" qtc_QAbstractPrintDialog_minimumSizeHint_qth :: Ptr (TQAbstractPrintDialog a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QminimumSizeHint_h (QAbstractPrintDialogSc a) (()) where
 minimumSizeHint_h x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPrintDialog_minimumSizeHint_qth cobj_x0 csize_ret_w csize_ret_h

instance Qreject_h (QAbstractPrintDialog ()) (()) where
 reject_h x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPrintDialog_reject cobj_x0

foreign import ccall "qtc_QAbstractPrintDialog_reject" qtc_QAbstractPrintDialog_reject :: Ptr (TQAbstractPrintDialog a) -> IO ()

instance Qreject_h (QAbstractPrintDialogSc a) (()) where
 reject_h x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPrintDialog_reject cobj_x0

instance QresizeEvent_h (QAbstractPrintDialog ()) ((QResizeEvent t1)) where
 resizeEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPrintDialog_resizeEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractPrintDialog_resizeEvent" qtc_QAbstractPrintDialog_resizeEvent :: Ptr (TQAbstractPrintDialog a) -> Ptr (TQResizeEvent t1) -> IO ()

instance QresizeEvent_h (QAbstractPrintDialogSc a) ((QResizeEvent t1)) where
 resizeEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPrintDialog_resizeEvent cobj_x0 cobj_x1

instance QsetHandler (QAbstractPrintDialog ()) (QAbstractPrintDialog x0 -> Bool -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractPrintDialog7 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractPrintDialog7_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractPrintDialog_setHandler7 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractPrintDialog x0) -> CBool -> IO ()
    setHandlerWrapper x0 x1
      = do x0obj <- qAbstractPrintDialogFromPtr x0
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

foreign import ccall "qtc_QAbstractPrintDialog_setHandler7" qtc_QAbstractPrintDialog_setHandler7 :: Ptr (TQAbstractPrintDialog a) -> CWString -> Ptr (Ptr (TQAbstractPrintDialog x0) -> CBool -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QAbstractPrintDialog7 :: (Ptr (TQAbstractPrintDialog x0) -> CBool -> IO ()) -> IO (FunPtr (Ptr (TQAbstractPrintDialog x0) -> CBool -> IO ()))

foreign import ccall "wrapper" wrapSetHandler_QAbstractPrintDialog7_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QAbstractPrintDialogSc a) (QAbstractPrintDialog x0 -> Bool -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractPrintDialog7 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractPrintDialog7_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractPrintDialog_setHandler7 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractPrintDialog x0) -> CBool -> IO ()
    setHandlerWrapper x0 x1
      = do x0obj <- qAbstractPrintDialogFromPtr x0
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

instance QsetVisible_h (QAbstractPrintDialog ()) ((Bool)) where
 setVisible_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPrintDialog_setVisible cobj_x0 (toCBool x1)

foreign import ccall "qtc_QAbstractPrintDialog_setVisible" qtc_QAbstractPrintDialog_setVisible :: Ptr (TQAbstractPrintDialog a) -> CBool -> IO ()

instance QsetVisible_h (QAbstractPrintDialogSc a) ((Bool)) where
 setVisible_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPrintDialog_setVisible cobj_x0 (toCBool x1)

instance QshowEvent_h (QAbstractPrintDialog ()) ((QShowEvent t1)) where
 showEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPrintDialog_showEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractPrintDialog_showEvent" qtc_QAbstractPrintDialog_showEvent :: Ptr (TQAbstractPrintDialog a) -> Ptr (TQShowEvent t1) -> IO ()

instance QshowEvent_h (QAbstractPrintDialogSc a) ((QShowEvent t1)) where
 showEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPrintDialog_showEvent cobj_x0 cobj_x1

instance QqsizeHint_h (QAbstractPrintDialog ()) (()) where
 qsizeHint_h x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPrintDialog_sizeHint cobj_x0

foreign import ccall "qtc_QAbstractPrintDialog_sizeHint" qtc_QAbstractPrintDialog_sizeHint :: Ptr (TQAbstractPrintDialog a) -> IO (Ptr (TQSize ()))

instance QqsizeHint_h (QAbstractPrintDialogSc a) (()) where
 qsizeHint_h x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPrintDialog_sizeHint cobj_x0

instance QsizeHint_h (QAbstractPrintDialog ()) (()) where
 sizeHint_h x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPrintDialog_sizeHint_qth cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QAbstractPrintDialog_sizeHint_qth" qtc_QAbstractPrintDialog_sizeHint_qth :: Ptr (TQAbstractPrintDialog a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QsizeHint_h (QAbstractPrintDialogSc a) (()) where
 sizeHint_h x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPrintDialog_sizeHint_qth cobj_x0 csize_ret_w csize_ret_h

instance QactionEvent_h (QAbstractPrintDialog ()) ((QActionEvent t1)) where
 actionEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPrintDialog_actionEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractPrintDialog_actionEvent" qtc_QAbstractPrintDialog_actionEvent :: Ptr (TQAbstractPrintDialog a) -> Ptr (TQActionEvent t1) -> IO ()

instance QactionEvent_h (QAbstractPrintDialogSc a) ((QActionEvent t1)) where
 actionEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPrintDialog_actionEvent cobj_x0 cobj_x1

instance QchangeEvent_h (QAbstractPrintDialog ()) ((QEvent t1)) where
 changeEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPrintDialog_changeEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractPrintDialog_changeEvent" qtc_QAbstractPrintDialog_changeEvent :: Ptr (TQAbstractPrintDialog a) -> Ptr (TQEvent t1) -> IO ()

instance QchangeEvent_h (QAbstractPrintDialogSc a) ((QEvent t1)) where
 changeEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPrintDialog_changeEvent cobj_x0 cobj_x1

instance QdevType_h (QAbstractPrintDialog ()) (()) where
 devType_h x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPrintDialog_devType cobj_x0

foreign import ccall "qtc_QAbstractPrintDialog_devType" qtc_QAbstractPrintDialog_devType :: Ptr (TQAbstractPrintDialog a) -> IO CInt

instance QdevType_h (QAbstractPrintDialogSc a) (()) where
 devType_h x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPrintDialog_devType cobj_x0

instance QdragEnterEvent_h (QAbstractPrintDialog ()) ((QDragEnterEvent t1)) where
 dragEnterEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPrintDialog_dragEnterEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractPrintDialog_dragEnterEvent" qtc_QAbstractPrintDialog_dragEnterEvent :: Ptr (TQAbstractPrintDialog a) -> Ptr (TQDragEnterEvent t1) -> IO ()

instance QdragEnterEvent_h (QAbstractPrintDialogSc a) ((QDragEnterEvent t1)) where
 dragEnterEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPrintDialog_dragEnterEvent cobj_x0 cobj_x1

instance QdragLeaveEvent_h (QAbstractPrintDialog ()) ((QDragLeaveEvent t1)) where
 dragLeaveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPrintDialog_dragLeaveEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractPrintDialog_dragLeaveEvent" qtc_QAbstractPrintDialog_dragLeaveEvent :: Ptr (TQAbstractPrintDialog a) -> Ptr (TQDragLeaveEvent t1) -> IO ()

instance QdragLeaveEvent_h (QAbstractPrintDialogSc a) ((QDragLeaveEvent t1)) where
 dragLeaveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPrintDialog_dragLeaveEvent cobj_x0 cobj_x1

instance QdragMoveEvent_h (QAbstractPrintDialog ()) ((QDragMoveEvent t1)) where
 dragMoveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPrintDialog_dragMoveEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractPrintDialog_dragMoveEvent" qtc_QAbstractPrintDialog_dragMoveEvent :: Ptr (TQAbstractPrintDialog a) -> Ptr (TQDragMoveEvent t1) -> IO ()

instance QdragMoveEvent_h (QAbstractPrintDialogSc a) ((QDragMoveEvent t1)) where
 dragMoveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPrintDialog_dragMoveEvent cobj_x0 cobj_x1

instance QdropEvent_h (QAbstractPrintDialog ()) ((QDropEvent t1)) where
 dropEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPrintDialog_dropEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractPrintDialog_dropEvent" qtc_QAbstractPrintDialog_dropEvent :: Ptr (TQAbstractPrintDialog a) -> Ptr (TQDropEvent t1) -> IO ()

instance QdropEvent_h (QAbstractPrintDialogSc a) ((QDropEvent t1)) where
 dropEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPrintDialog_dropEvent cobj_x0 cobj_x1

instance QenterEvent_h (QAbstractPrintDialog ()) ((QEvent t1)) where
 enterEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPrintDialog_enterEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractPrintDialog_enterEvent" qtc_QAbstractPrintDialog_enterEvent :: Ptr (TQAbstractPrintDialog a) -> Ptr (TQEvent t1) -> IO ()

instance QenterEvent_h (QAbstractPrintDialogSc a) ((QEvent t1)) where
 enterEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPrintDialog_enterEvent cobj_x0 cobj_x1

instance QfocusInEvent_h (QAbstractPrintDialog ()) ((QFocusEvent t1)) where
 focusInEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPrintDialog_focusInEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractPrintDialog_focusInEvent" qtc_QAbstractPrintDialog_focusInEvent :: Ptr (TQAbstractPrintDialog a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusInEvent_h (QAbstractPrintDialogSc a) ((QFocusEvent t1)) where
 focusInEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPrintDialog_focusInEvent cobj_x0 cobj_x1

instance QfocusOutEvent_h (QAbstractPrintDialog ()) ((QFocusEvent t1)) where
 focusOutEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPrintDialog_focusOutEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractPrintDialog_focusOutEvent" qtc_QAbstractPrintDialog_focusOutEvent :: Ptr (TQAbstractPrintDialog a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusOutEvent_h (QAbstractPrintDialogSc a) ((QFocusEvent t1)) where
 focusOutEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPrintDialog_focusOutEvent cobj_x0 cobj_x1

instance QsetHandler (QAbstractPrintDialog ()) (QAbstractPrintDialog x0 -> Int -> IO (Int)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractPrintDialog8 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractPrintDialog8_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractPrintDialog_setHandler8 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractPrintDialog x0) -> CInt -> IO (CInt)
    setHandlerWrapper x0 x1
      = do x0obj <- qAbstractPrintDialogFromPtr x0
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

foreign import ccall "qtc_QAbstractPrintDialog_setHandler8" qtc_QAbstractPrintDialog_setHandler8 :: Ptr (TQAbstractPrintDialog a) -> CWString -> Ptr (Ptr (TQAbstractPrintDialog x0) -> CInt -> IO (CInt)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QAbstractPrintDialog8 :: (Ptr (TQAbstractPrintDialog x0) -> CInt -> IO (CInt)) -> IO (FunPtr (Ptr (TQAbstractPrintDialog x0) -> CInt -> IO (CInt)))

foreign import ccall "wrapper" wrapSetHandler_QAbstractPrintDialog8_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QAbstractPrintDialogSc a) (QAbstractPrintDialog x0 -> Int -> IO (Int)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractPrintDialog8 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractPrintDialog8_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractPrintDialog_setHandler8 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractPrintDialog x0) -> CInt -> IO (CInt)
    setHandlerWrapper x0 x1
      = do x0obj <- qAbstractPrintDialogFromPtr x0
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

instance QheightForWidth_h (QAbstractPrintDialog ()) ((Int)) where
 heightForWidth_h x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPrintDialog_heightForWidth cobj_x0 (toCInt x1)

foreign import ccall "qtc_QAbstractPrintDialog_heightForWidth" qtc_QAbstractPrintDialog_heightForWidth :: Ptr (TQAbstractPrintDialog a) -> CInt -> IO CInt

instance QheightForWidth_h (QAbstractPrintDialogSc a) ((Int)) where
 heightForWidth_h x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPrintDialog_heightForWidth cobj_x0 (toCInt x1)

instance QhideEvent_h (QAbstractPrintDialog ()) ((QHideEvent t1)) where
 hideEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPrintDialog_hideEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractPrintDialog_hideEvent" qtc_QAbstractPrintDialog_hideEvent :: Ptr (TQAbstractPrintDialog a) -> Ptr (TQHideEvent t1) -> IO ()

instance QhideEvent_h (QAbstractPrintDialogSc a) ((QHideEvent t1)) where
 hideEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPrintDialog_hideEvent cobj_x0 cobj_x1

instance QsetHandler (QAbstractPrintDialog ()) (QAbstractPrintDialog x0 -> InputMethodQuery -> IO (QVariant t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractPrintDialog9 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractPrintDialog9_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractPrintDialog_setHandler9 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractPrintDialog x0) -> CLong -> IO (Ptr (TQVariant t0))
    setHandlerWrapper x0 x1
      = do x0obj <- qAbstractPrintDialogFromPtr x0
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

foreign import ccall "qtc_QAbstractPrintDialog_setHandler9" qtc_QAbstractPrintDialog_setHandler9 :: Ptr (TQAbstractPrintDialog a) -> CWString -> Ptr (Ptr (TQAbstractPrintDialog x0) -> CLong -> IO (Ptr (TQVariant t0))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QAbstractPrintDialog9 :: (Ptr (TQAbstractPrintDialog x0) -> CLong -> IO (Ptr (TQVariant t0))) -> IO (FunPtr (Ptr (TQAbstractPrintDialog x0) -> CLong -> IO (Ptr (TQVariant t0))))

foreign import ccall "wrapper" wrapSetHandler_QAbstractPrintDialog9_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QAbstractPrintDialogSc a) (QAbstractPrintDialog x0 -> InputMethodQuery -> IO (QVariant t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractPrintDialog9 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractPrintDialog9_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractPrintDialog_setHandler9 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractPrintDialog x0) -> CLong -> IO (Ptr (TQVariant t0))
    setHandlerWrapper x0 x1
      = do x0obj <- qAbstractPrintDialogFromPtr x0
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

instance QinputMethodQuery_h (QAbstractPrintDialog ()) ((InputMethodQuery)) where
 inputMethodQuery_h x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPrintDialog_inputMethodQuery cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QAbstractPrintDialog_inputMethodQuery" qtc_QAbstractPrintDialog_inputMethodQuery :: Ptr (TQAbstractPrintDialog a) -> CLong -> IO (Ptr (TQVariant ()))

instance QinputMethodQuery_h (QAbstractPrintDialogSc a) ((InputMethodQuery)) where
 inputMethodQuery_h x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPrintDialog_inputMethodQuery cobj_x0 (toCLong $ qEnum_toInt x1)

instance QkeyReleaseEvent_h (QAbstractPrintDialog ()) ((QKeyEvent t1)) where
 keyReleaseEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPrintDialog_keyReleaseEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractPrintDialog_keyReleaseEvent" qtc_QAbstractPrintDialog_keyReleaseEvent :: Ptr (TQAbstractPrintDialog a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyReleaseEvent_h (QAbstractPrintDialogSc a) ((QKeyEvent t1)) where
 keyReleaseEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPrintDialog_keyReleaseEvent cobj_x0 cobj_x1

instance QleaveEvent_h (QAbstractPrintDialog ()) ((QEvent t1)) where
 leaveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPrintDialog_leaveEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractPrintDialog_leaveEvent" qtc_QAbstractPrintDialog_leaveEvent :: Ptr (TQAbstractPrintDialog a) -> Ptr (TQEvent t1) -> IO ()

instance QleaveEvent_h (QAbstractPrintDialogSc a) ((QEvent t1)) where
 leaveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPrintDialog_leaveEvent cobj_x0 cobj_x1

instance QmouseDoubleClickEvent_h (QAbstractPrintDialog ()) ((QMouseEvent t1)) where
 mouseDoubleClickEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPrintDialog_mouseDoubleClickEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractPrintDialog_mouseDoubleClickEvent" qtc_QAbstractPrintDialog_mouseDoubleClickEvent :: Ptr (TQAbstractPrintDialog a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseDoubleClickEvent_h (QAbstractPrintDialogSc a) ((QMouseEvent t1)) where
 mouseDoubleClickEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPrintDialog_mouseDoubleClickEvent cobj_x0 cobj_x1

instance QmouseMoveEvent_h (QAbstractPrintDialog ()) ((QMouseEvent t1)) where
 mouseMoveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPrintDialog_mouseMoveEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractPrintDialog_mouseMoveEvent" qtc_QAbstractPrintDialog_mouseMoveEvent :: Ptr (TQAbstractPrintDialog a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseMoveEvent_h (QAbstractPrintDialogSc a) ((QMouseEvent t1)) where
 mouseMoveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPrintDialog_mouseMoveEvent cobj_x0 cobj_x1

instance QmousePressEvent_h (QAbstractPrintDialog ()) ((QMouseEvent t1)) where
 mousePressEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPrintDialog_mousePressEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractPrintDialog_mousePressEvent" qtc_QAbstractPrintDialog_mousePressEvent :: Ptr (TQAbstractPrintDialog a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmousePressEvent_h (QAbstractPrintDialogSc a) ((QMouseEvent t1)) where
 mousePressEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPrintDialog_mousePressEvent cobj_x0 cobj_x1

instance QmouseReleaseEvent_h (QAbstractPrintDialog ()) ((QMouseEvent t1)) where
 mouseReleaseEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPrintDialog_mouseReleaseEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractPrintDialog_mouseReleaseEvent" qtc_QAbstractPrintDialog_mouseReleaseEvent :: Ptr (TQAbstractPrintDialog a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseReleaseEvent_h (QAbstractPrintDialogSc a) ((QMouseEvent t1)) where
 mouseReleaseEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPrintDialog_mouseReleaseEvent cobj_x0 cobj_x1

instance QmoveEvent_h (QAbstractPrintDialog ()) ((QMoveEvent t1)) where
 moveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPrintDialog_moveEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractPrintDialog_moveEvent" qtc_QAbstractPrintDialog_moveEvent :: Ptr (TQAbstractPrintDialog a) -> Ptr (TQMoveEvent t1) -> IO ()

instance QmoveEvent_h (QAbstractPrintDialogSc a) ((QMoveEvent t1)) where
 moveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPrintDialog_moveEvent cobj_x0 cobj_x1

instance QsetHandler (QAbstractPrintDialog ()) (QAbstractPrintDialog x0 -> IO (QPaintEngine t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractPrintDialog10 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractPrintDialog10_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractPrintDialog_setHandler10 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractPrintDialog x0) -> IO (Ptr (TQPaintEngine t0))
    setHandlerWrapper x0
      = do x0obj <- qAbstractPrintDialogFromPtr x0
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

foreign import ccall "qtc_QAbstractPrintDialog_setHandler10" qtc_QAbstractPrintDialog_setHandler10 :: Ptr (TQAbstractPrintDialog a) -> CWString -> Ptr (Ptr (TQAbstractPrintDialog x0) -> IO (Ptr (TQPaintEngine t0))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QAbstractPrintDialog10 :: (Ptr (TQAbstractPrintDialog x0) -> IO (Ptr (TQPaintEngine t0))) -> IO (FunPtr (Ptr (TQAbstractPrintDialog x0) -> IO (Ptr (TQPaintEngine t0))))

foreign import ccall "wrapper" wrapSetHandler_QAbstractPrintDialog10_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QAbstractPrintDialogSc a) (QAbstractPrintDialog x0 -> IO (QPaintEngine t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractPrintDialog10 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractPrintDialog10_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractPrintDialog_setHandler10 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractPrintDialog x0) -> IO (Ptr (TQPaintEngine t0))
    setHandlerWrapper x0
      = do x0obj <- qAbstractPrintDialogFromPtr x0
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

instance QpaintEngine_h (QAbstractPrintDialog ()) (()) where
 paintEngine_h x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPrintDialog_paintEngine cobj_x0

foreign import ccall "qtc_QAbstractPrintDialog_paintEngine" qtc_QAbstractPrintDialog_paintEngine :: Ptr (TQAbstractPrintDialog a) -> IO (Ptr (TQPaintEngine ()))

instance QpaintEngine_h (QAbstractPrintDialogSc a) (()) where
 paintEngine_h x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPrintDialog_paintEngine cobj_x0

instance QpaintEvent_h (QAbstractPrintDialog ()) ((QPaintEvent t1)) where
 paintEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPrintDialog_paintEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractPrintDialog_paintEvent" qtc_QAbstractPrintDialog_paintEvent :: Ptr (TQAbstractPrintDialog a) -> Ptr (TQPaintEvent t1) -> IO ()

instance QpaintEvent_h (QAbstractPrintDialogSc a) ((QPaintEvent t1)) where
 paintEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPrintDialog_paintEvent cobj_x0 cobj_x1

instance QtabletEvent_h (QAbstractPrintDialog ()) ((QTabletEvent t1)) where
 tabletEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPrintDialog_tabletEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractPrintDialog_tabletEvent" qtc_QAbstractPrintDialog_tabletEvent :: Ptr (TQAbstractPrintDialog a) -> Ptr (TQTabletEvent t1) -> IO ()

instance QtabletEvent_h (QAbstractPrintDialogSc a) ((QTabletEvent t1)) where
 tabletEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPrintDialog_tabletEvent cobj_x0 cobj_x1

instance QwheelEvent_h (QAbstractPrintDialog ()) ((QWheelEvent t1)) where
 wheelEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPrintDialog_wheelEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractPrintDialog_wheelEvent" qtc_QAbstractPrintDialog_wheelEvent :: Ptr (TQAbstractPrintDialog a) -> Ptr (TQWheelEvent t1) -> IO ()

instance QwheelEvent_h (QAbstractPrintDialogSc a) ((QWheelEvent t1)) where
 wheelEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPrintDialog_wheelEvent cobj_x0 cobj_x1

