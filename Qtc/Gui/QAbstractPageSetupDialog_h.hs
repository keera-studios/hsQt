{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QAbstractPageSetupDialog_h.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:28
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QAbstractPageSetupDialog_h where

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

instance QunSetUserMethod (QAbstractPageSetupDialog ()) where
 unSetUserMethod qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QAbstractPageSetupDialog_unSetUserMethod cobj_qobj (toCInt 0) (toCInt evid)

foreign import ccall "qtc_QAbstractPageSetupDialog_unSetUserMethod" qtc_QAbstractPageSetupDialog_unSetUserMethod :: Ptr (TQAbstractPageSetupDialog a) -> CInt -> CInt -> IO (CBool)

instance QunSetUserMethod (QAbstractPageSetupDialogSc a) where
 unSetUserMethod qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QAbstractPageSetupDialog_unSetUserMethod cobj_qobj (toCInt 0) (toCInt evid)

instance QunSetUserMethodVariant (QAbstractPageSetupDialog ()) where
 unSetUserMethodVariant qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QAbstractPageSetupDialog_unSetUserMethod cobj_qobj (toCInt 1) (toCInt evid)

instance QunSetUserMethodVariant (QAbstractPageSetupDialogSc a) where
 unSetUserMethodVariant qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QAbstractPageSetupDialog_unSetUserMethod cobj_qobj (toCInt 1) (toCInt evid)

instance QunSetUserMethodVariantList (QAbstractPageSetupDialog ()) where
 unSetUserMethodVariantList qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QAbstractPageSetupDialog_unSetUserMethod cobj_qobj (toCInt 2) (toCInt evid)

instance QunSetUserMethodVariantList (QAbstractPageSetupDialogSc a) where
 unSetUserMethodVariantList qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QAbstractPageSetupDialog_unSetUserMethod cobj_qobj (toCInt 2) (toCInt evid)

instance QsetUserMethod (QAbstractPageSetupDialog ()) (QAbstractPageSetupDialog x0 -> IO ()) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethod_QAbstractPageSetupDialog setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethod_QAbstractPageSetupDialog_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QAbstractPageSetupDialog_setUserMethod cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQAbstractPageSetupDialog x0) -> IO ()
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

foreign import ccall "qtc_QAbstractPageSetupDialog_setUserMethod" qtc_QAbstractPageSetupDialog_setUserMethod :: Ptr (TQAbstractPageSetupDialog a) -> CInt -> Ptr (Ptr (TQAbstractPageSetupDialog x0) -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetUserMethod_QAbstractPageSetupDialog :: (Ptr (TQAbstractPageSetupDialog x0) -> IO ()) -> IO (FunPtr (Ptr (TQAbstractPageSetupDialog x0) -> IO ()))

foreign import ccall "wrapper" wrapSetUserMethod_QAbstractPageSetupDialog_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetUserMethod (QAbstractPageSetupDialogSc a) (QAbstractPageSetupDialog x0 -> IO ()) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethod_QAbstractPageSetupDialog setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethod_QAbstractPageSetupDialog_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QAbstractPageSetupDialog_setUserMethod cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQAbstractPageSetupDialog x0) -> IO ()
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

instance QsetUserMethod (QAbstractPageSetupDialog ()) (QAbstractPageSetupDialog x0 -> QVariant () -> IO (QVariant ())) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethodVariant_QAbstractPageSetupDialog setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethodVariant_QAbstractPageSetupDialog_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QAbstractPageSetupDialog_setUserMethodVariant cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQAbstractPageSetupDialog x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))
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

foreign import ccall "qtc_QAbstractPageSetupDialog_setUserMethodVariant" qtc_QAbstractPageSetupDialog_setUserMethodVariant :: Ptr (TQAbstractPageSetupDialog a) -> CInt -> Ptr (Ptr (TQAbstractPageSetupDialog x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetUserMethodVariant_QAbstractPageSetupDialog :: (Ptr (TQAbstractPageSetupDialog x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))) -> IO (FunPtr (Ptr (TQAbstractPageSetupDialog x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))))

foreign import ccall "wrapper" wrapSetUserMethodVariant_QAbstractPageSetupDialog_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetUserMethod (QAbstractPageSetupDialogSc a) (QAbstractPageSetupDialog x0 -> QVariant () -> IO (QVariant ())) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethodVariant_QAbstractPageSetupDialog setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethodVariant_QAbstractPageSetupDialog_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QAbstractPageSetupDialog_setUserMethodVariant cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQAbstractPageSetupDialog x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))
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

instance QunSetHandler (QAbstractPageSetupDialog ()) where 
 unSetHandler qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withCWString evid $ \cstr_evid ->
    qtc_QAbstractPageSetupDialog_unSetHandler cobj_qobj cstr_evid

foreign import ccall "qtc_QAbstractPageSetupDialog_unSetHandler" qtc_QAbstractPageSetupDialog_unSetHandler :: Ptr (TQAbstractPageSetupDialog a) -> CWString -> IO (CBool)

instance QunSetHandler (QAbstractPageSetupDialogSc a) where 
 unSetHandler qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withCWString evid $ \cstr_evid ->
    qtc_QAbstractPageSetupDialog_unSetHandler cobj_qobj cstr_evid

instance QsetHandler (QAbstractPageSetupDialog ()) (QAbstractPageSetupDialog x0 -> IO (Int)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractPageSetupDialog1 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractPageSetupDialog1_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractPageSetupDialog_setHandler1 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractPageSetupDialog x0) -> IO (CInt)
    setHandlerWrapper x0
      = do x0obj <- qAbstractPageSetupDialogFromPtr x0
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

foreign import ccall "qtc_QAbstractPageSetupDialog_setHandler1" qtc_QAbstractPageSetupDialog_setHandler1 :: Ptr (TQAbstractPageSetupDialog a) -> CWString -> Ptr (Ptr (TQAbstractPageSetupDialog x0) -> IO (CInt)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QAbstractPageSetupDialog1 :: (Ptr (TQAbstractPageSetupDialog x0) -> IO (CInt)) -> IO (FunPtr (Ptr (TQAbstractPageSetupDialog x0) -> IO (CInt)))

foreign import ccall "wrapper" wrapSetHandler_QAbstractPageSetupDialog1_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QAbstractPageSetupDialogSc a) (QAbstractPageSetupDialog x0 -> IO (Int)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractPageSetupDialog1 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractPageSetupDialog1_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractPageSetupDialog_setHandler1 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractPageSetupDialog x0) -> IO (CInt)
    setHandlerWrapper x0
      = do x0obj <- qAbstractPageSetupDialogFromPtr x0
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

instance Qexec_h (QAbstractPageSetupDialog ()) (()) where
 exec_h x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPageSetupDialog_exec cobj_x0

foreign import ccall "qtc_QAbstractPageSetupDialog_exec" qtc_QAbstractPageSetupDialog_exec :: Ptr (TQAbstractPageSetupDialog a) -> IO CInt

instance Qexec_h (QAbstractPageSetupDialogSc a) (()) where
 exec_h x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPageSetupDialog_exec cobj_x0

instance QsetHandler (QAbstractPageSetupDialog ()) (QAbstractPageSetupDialog x0 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractPageSetupDialog2 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractPageSetupDialog2_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractPageSetupDialog_setHandler2 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractPageSetupDialog x0) -> IO ()
    setHandlerWrapper x0
      = do x0obj <- qAbstractPageSetupDialogFromPtr x0
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

foreign import ccall "qtc_QAbstractPageSetupDialog_setHandler2" qtc_QAbstractPageSetupDialog_setHandler2 :: Ptr (TQAbstractPageSetupDialog a) -> CWString -> Ptr (Ptr (TQAbstractPageSetupDialog x0) -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QAbstractPageSetupDialog2 :: (Ptr (TQAbstractPageSetupDialog x0) -> IO ()) -> IO (FunPtr (Ptr (TQAbstractPageSetupDialog x0) -> IO ()))

foreign import ccall "wrapper" wrapSetHandler_QAbstractPageSetupDialog2_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QAbstractPageSetupDialogSc a) (QAbstractPageSetupDialog x0 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractPageSetupDialog2 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractPageSetupDialog2_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractPageSetupDialog_setHandler2 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractPageSetupDialog x0) -> IO ()
    setHandlerWrapper x0
      = do x0obj <- qAbstractPageSetupDialogFromPtr x0
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

instance Qaccept_h (QAbstractPageSetupDialog ()) (()) where
 accept_h x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPageSetupDialog_accept cobj_x0

foreign import ccall "qtc_QAbstractPageSetupDialog_accept" qtc_QAbstractPageSetupDialog_accept :: Ptr (TQAbstractPageSetupDialog a) -> IO ()

instance Qaccept_h (QAbstractPageSetupDialogSc a) (()) where
 accept_h x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPageSetupDialog_accept cobj_x0

instance QsetHandler (QAbstractPageSetupDialog ()) (QAbstractPageSetupDialog x0 -> QEvent t1 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractPageSetupDialog3 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractPageSetupDialog3_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractPageSetupDialog_setHandler3 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractPageSetupDialog x0) -> Ptr (TQEvent t1) -> IO ()
    setHandlerWrapper x0 x1
      = do x0obj <- qAbstractPageSetupDialogFromPtr x0
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

foreign import ccall "qtc_QAbstractPageSetupDialog_setHandler3" qtc_QAbstractPageSetupDialog_setHandler3 :: Ptr (TQAbstractPageSetupDialog a) -> CWString -> Ptr (Ptr (TQAbstractPageSetupDialog x0) -> Ptr (TQEvent t1) -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QAbstractPageSetupDialog3 :: (Ptr (TQAbstractPageSetupDialog x0) -> Ptr (TQEvent t1) -> IO ()) -> IO (FunPtr (Ptr (TQAbstractPageSetupDialog x0) -> Ptr (TQEvent t1) -> IO ()))

foreign import ccall "wrapper" wrapSetHandler_QAbstractPageSetupDialog3_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QAbstractPageSetupDialogSc a) (QAbstractPageSetupDialog x0 -> QEvent t1 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractPageSetupDialog3 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractPageSetupDialog3_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractPageSetupDialog_setHandler3 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractPageSetupDialog x0) -> Ptr (TQEvent t1) -> IO ()
    setHandlerWrapper x0 x1
      = do x0obj <- qAbstractPageSetupDialogFromPtr x0
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

instance QcloseEvent_h (QAbstractPageSetupDialog ()) ((QCloseEvent t1)) where
 closeEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPageSetupDialog_closeEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractPageSetupDialog_closeEvent" qtc_QAbstractPageSetupDialog_closeEvent :: Ptr (TQAbstractPageSetupDialog a) -> Ptr (TQCloseEvent t1) -> IO ()

instance QcloseEvent_h (QAbstractPageSetupDialogSc a) ((QCloseEvent t1)) where
 closeEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPageSetupDialog_closeEvent cobj_x0 cobj_x1

instance QcontextMenuEvent_h (QAbstractPageSetupDialog ()) ((QContextMenuEvent t1)) where
 contextMenuEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPageSetupDialog_contextMenuEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractPageSetupDialog_contextMenuEvent" qtc_QAbstractPageSetupDialog_contextMenuEvent :: Ptr (TQAbstractPageSetupDialog a) -> Ptr (TQContextMenuEvent t1) -> IO ()

instance QcontextMenuEvent_h (QAbstractPageSetupDialogSc a) ((QContextMenuEvent t1)) where
 contextMenuEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPageSetupDialog_contextMenuEvent cobj_x0 cobj_x1

instance QsetHandler (QAbstractPageSetupDialog ()) (QAbstractPageSetupDialog x0 -> Int -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractPageSetupDialog4 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractPageSetupDialog4_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractPageSetupDialog_setHandler4 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractPageSetupDialog x0) -> CInt -> IO ()
    setHandlerWrapper x0 x1
      = do x0obj <- qAbstractPageSetupDialogFromPtr x0
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

foreign import ccall "qtc_QAbstractPageSetupDialog_setHandler4" qtc_QAbstractPageSetupDialog_setHandler4 :: Ptr (TQAbstractPageSetupDialog a) -> CWString -> Ptr (Ptr (TQAbstractPageSetupDialog x0) -> CInt -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QAbstractPageSetupDialog4 :: (Ptr (TQAbstractPageSetupDialog x0) -> CInt -> IO ()) -> IO (FunPtr (Ptr (TQAbstractPageSetupDialog x0) -> CInt -> IO ()))

foreign import ccall "wrapper" wrapSetHandler_QAbstractPageSetupDialog4_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QAbstractPageSetupDialogSc a) (QAbstractPageSetupDialog x0 -> Int -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractPageSetupDialog4 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractPageSetupDialog4_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractPageSetupDialog_setHandler4 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractPageSetupDialog x0) -> CInt -> IO ()
    setHandlerWrapper x0 x1
      = do x0obj <- qAbstractPageSetupDialogFromPtr x0
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

instance Qdone_h (QAbstractPageSetupDialog ()) ((Int)) where
 done_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPageSetupDialog_done cobj_x0 (toCInt x1)

foreign import ccall "qtc_QAbstractPageSetupDialog_done" qtc_QAbstractPageSetupDialog_done :: Ptr (TQAbstractPageSetupDialog a) -> CInt -> IO ()

instance Qdone_h (QAbstractPageSetupDialogSc a) ((Int)) where
 done_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPageSetupDialog_done cobj_x0 (toCInt x1)

instance QsetHandler (QAbstractPageSetupDialog ()) (QAbstractPageSetupDialog x0 -> QEvent t1 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractPageSetupDialog5 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractPageSetupDialog5_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractPageSetupDialog_setHandler5 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractPageSetupDialog x0) -> Ptr (TQEvent t1) -> IO (CBool)
    setHandlerWrapper x0 x1
      = do x0obj <- qAbstractPageSetupDialogFromPtr x0
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

foreign import ccall "qtc_QAbstractPageSetupDialog_setHandler5" qtc_QAbstractPageSetupDialog_setHandler5 :: Ptr (TQAbstractPageSetupDialog a) -> CWString -> Ptr (Ptr (TQAbstractPageSetupDialog x0) -> Ptr (TQEvent t1) -> IO (CBool)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QAbstractPageSetupDialog5 :: (Ptr (TQAbstractPageSetupDialog x0) -> Ptr (TQEvent t1) -> IO (CBool)) -> IO (FunPtr (Ptr (TQAbstractPageSetupDialog x0) -> Ptr (TQEvent t1) -> IO (CBool)))

foreign import ccall "wrapper" wrapSetHandler_QAbstractPageSetupDialog5_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QAbstractPageSetupDialogSc a) (QAbstractPageSetupDialog x0 -> QEvent t1 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractPageSetupDialog5 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractPageSetupDialog5_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractPageSetupDialog_setHandler5 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractPageSetupDialog x0) -> Ptr (TQEvent t1) -> IO (CBool)
    setHandlerWrapper x0 x1
      = do x0obj <- qAbstractPageSetupDialogFromPtr x0
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

instance Qevent_h (QAbstractPageSetupDialog ()) ((QEvent t1)) where
 event_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPageSetupDialog_event cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractPageSetupDialog_event" qtc_QAbstractPageSetupDialog_event :: Ptr (TQAbstractPageSetupDialog a) -> Ptr (TQEvent t1) -> IO CBool

instance Qevent_h (QAbstractPageSetupDialogSc a) ((QEvent t1)) where
 event_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPageSetupDialog_event cobj_x0 cobj_x1

instance QkeyPressEvent_h (QAbstractPageSetupDialog ()) ((QKeyEvent t1)) where
 keyPressEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPageSetupDialog_keyPressEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractPageSetupDialog_keyPressEvent" qtc_QAbstractPageSetupDialog_keyPressEvent :: Ptr (TQAbstractPageSetupDialog a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyPressEvent_h (QAbstractPageSetupDialogSc a) ((QKeyEvent t1)) where
 keyPressEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPageSetupDialog_keyPressEvent cobj_x0 cobj_x1

instance QsetHandler (QAbstractPageSetupDialog ()) (QAbstractPageSetupDialog x0 -> IO (QSize t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractPageSetupDialog6 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractPageSetupDialog6_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractPageSetupDialog_setHandler6 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractPageSetupDialog x0) -> IO (Ptr (TQSize t0))
    setHandlerWrapper x0
      = do x0obj <- qAbstractPageSetupDialogFromPtr x0
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

foreign import ccall "qtc_QAbstractPageSetupDialog_setHandler6" qtc_QAbstractPageSetupDialog_setHandler6 :: Ptr (TQAbstractPageSetupDialog a) -> CWString -> Ptr (Ptr (TQAbstractPageSetupDialog x0) -> IO (Ptr (TQSize t0))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QAbstractPageSetupDialog6 :: (Ptr (TQAbstractPageSetupDialog x0) -> IO (Ptr (TQSize t0))) -> IO (FunPtr (Ptr (TQAbstractPageSetupDialog x0) -> IO (Ptr (TQSize t0))))

foreign import ccall "wrapper" wrapSetHandler_QAbstractPageSetupDialog6_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QAbstractPageSetupDialogSc a) (QAbstractPageSetupDialog x0 -> IO (QSize t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractPageSetupDialog6 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractPageSetupDialog6_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractPageSetupDialog_setHandler6 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractPageSetupDialog x0) -> IO (Ptr (TQSize t0))
    setHandlerWrapper x0
      = do x0obj <- qAbstractPageSetupDialogFromPtr x0
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

instance QqminimumSizeHint_h (QAbstractPageSetupDialog ()) (()) where
 qminimumSizeHint_h x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPageSetupDialog_minimumSizeHint cobj_x0

foreign import ccall "qtc_QAbstractPageSetupDialog_minimumSizeHint" qtc_QAbstractPageSetupDialog_minimumSizeHint :: Ptr (TQAbstractPageSetupDialog a) -> IO (Ptr (TQSize ()))

instance QqminimumSizeHint_h (QAbstractPageSetupDialogSc a) (()) where
 qminimumSizeHint_h x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPageSetupDialog_minimumSizeHint cobj_x0

instance QminimumSizeHint_h (QAbstractPageSetupDialog ()) (()) where
 minimumSizeHint_h x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPageSetupDialog_minimumSizeHint_qth cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QAbstractPageSetupDialog_minimumSizeHint_qth" qtc_QAbstractPageSetupDialog_minimumSizeHint_qth :: Ptr (TQAbstractPageSetupDialog a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QminimumSizeHint_h (QAbstractPageSetupDialogSc a) (()) where
 minimumSizeHint_h x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPageSetupDialog_minimumSizeHint_qth cobj_x0 csize_ret_w csize_ret_h

instance Qreject_h (QAbstractPageSetupDialog ()) (()) where
 reject_h x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPageSetupDialog_reject cobj_x0

foreign import ccall "qtc_QAbstractPageSetupDialog_reject" qtc_QAbstractPageSetupDialog_reject :: Ptr (TQAbstractPageSetupDialog a) -> IO ()

instance Qreject_h (QAbstractPageSetupDialogSc a) (()) where
 reject_h x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPageSetupDialog_reject cobj_x0

instance QresizeEvent_h (QAbstractPageSetupDialog ()) ((QResizeEvent t1)) where
 resizeEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPageSetupDialog_resizeEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractPageSetupDialog_resizeEvent" qtc_QAbstractPageSetupDialog_resizeEvent :: Ptr (TQAbstractPageSetupDialog a) -> Ptr (TQResizeEvent t1) -> IO ()

instance QresizeEvent_h (QAbstractPageSetupDialogSc a) ((QResizeEvent t1)) where
 resizeEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPageSetupDialog_resizeEvent cobj_x0 cobj_x1

instance QsetHandler (QAbstractPageSetupDialog ()) (QAbstractPageSetupDialog x0 -> Bool -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractPageSetupDialog7 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractPageSetupDialog7_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractPageSetupDialog_setHandler7 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractPageSetupDialog x0) -> CBool -> IO ()
    setHandlerWrapper x0 x1
      = do x0obj <- qAbstractPageSetupDialogFromPtr x0
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

foreign import ccall "qtc_QAbstractPageSetupDialog_setHandler7" qtc_QAbstractPageSetupDialog_setHandler7 :: Ptr (TQAbstractPageSetupDialog a) -> CWString -> Ptr (Ptr (TQAbstractPageSetupDialog x0) -> CBool -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QAbstractPageSetupDialog7 :: (Ptr (TQAbstractPageSetupDialog x0) -> CBool -> IO ()) -> IO (FunPtr (Ptr (TQAbstractPageSetupDialog x0) -> CBool -> IO ()))

foreign import ccall "wrapper" wrapSetHandler_QAbstractPageSetupDialog7_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QAbstractPageSetupDialogSc a) (QAbstractPageSetupDialog x0 -> Bool -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractPageSetupDialog7 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractPageSetupDialog7_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractPageSetupDialog_setHandler7 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractPageSetupDialog x0) -> CBool -> IO ()
    setHandlerWrapper x0 x1
      = do x0obj <- qAbstractPageSetupDialogFromPtr x0
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

instance QsetVisible_h (QAbstractPageSetupDialog ()) ((Bool)) where
 setVisible_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPageSetupDialog_setVisible cobj_x0 (toCBool x1)

foreign import ccall "qtc_QAbstractPageSetupDialog_setVisible" qtc_QAbstractPageSetupDialog_setVisible :: Ptr (TQAbstractPageSetupDialog a) -> CBool -> IO ()

instance QsetVisible_h (QAbstractPageSetupDialogSc a) ((Bool)) where
 setVisible_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPageSetupDialog_setVisible cobj_x0 (toCBool x1)

instance QshowEvent_h (QAbstractPageSetupDialog ()) ((QShowEvent t1)) where
 showEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPageSetupDialog_showEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractPageSetupDialog_showEvent" qtc_QAbstractPageSetupDialog_showEvent :: Ptr (TQAbstractPageSetupDialog a) -> Ptr (TQShowEvent t1) -> IO ()

instance QshowEvent_h (QAbstractPageSetupDialogSc a) ((QShowEvent t1)) where
 showEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPageSetupDialog_showEvent cobj_x0 cobj_x1

instance QqsizeHint_h (QAbstractPageSetupDialog ()) (()) where
 qsizeHint_h x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPageSetupDialog_sizeHint cobj_x0

foreign import ccall "qtc_QAbstractPageSetupDialog_sizeHint" qtc_QAbstractPageSetupDialog_sizeHint :: Ptr (TQAbstractPageSetupDialog a) -> IO (Ptr (TQSize ()))

instance QqsizeHint_h (QAbstractPageSetupDialogSc a) (()) where
 qsizeHint_h x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPageSetupDialog_sizeHint cobj_x0

instance QsizeHint_h (QAbstractPageSetupDialog ()) (()) where
 sizeHint_h x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPageSetupDialog_sizeHint_qth cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QAbstractPageSetupDialog_sizeHint_qth" qtc_QAbstractPageSetupDialog_sizeHint_qth :: Ptr (TQAbstractPageSetupDialog a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QsizeHint_h (QAbstractPageSetupDialogSc a) (()) where
 sizeHint_h x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPageSetupDialog_sizeHint_qth cobj_x0 csize_ret_w csize_ret_h

instance QactionEvent_h (QAbstractPageSetupDialog ()) ((QActionEvent t1)) where
 actionEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPageSetupDialog_actionEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractPageSetupDialog_actionEvent" qtc_QAbstractPageSetupDialog_actionEvent :: Ptr (TQAbstractPageSetupDialog a) -> Ptr (TQActionEvent t1) -> IO ()

instance QactionEvent_h (QAbstractPageSetupDialogSc a) ((QActionEvent t1)) where
 actionEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPageSetupDialog_actionEvent cobj_x0 cobj_x1

instance QchangeEvent_h (QAbstractPageSetupDialog ()) ((QEvent t1)) where
 changeEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPageSetupDialog_changeEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractPageSetupDialog_changeEvent" qtc_QAbstractPageSetupDialog_changeEvent :: Ptr (TQAbstractPageSetupDialog a) -> Ptr (TQEvent t1) -> IO ()

instance QchangeEvent_h (QAbstractPageSetupDialogSc a) ((QEvent t1)) where
 changeEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPageSetupDialog_changeEvent cobj_x0 cobj_x1

instance QdevType_h (QAbstractPageSetupDialog ()) (()) where
 devType_h x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPageSetupDialog_devType cobj_x0

foreign import ccall "qtc_QAbstractPageSetupDialog_devType" qtc_QAbstractPageSetupDialog_devType :: Ptr (TQAbstractPageSetupDialog a) -> IO CInt

instance QdevType_h (QAbstractPageSetupDialogSc a) (()) where
 devType_h x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPageSetupDialog_devType cobj_x0

instance QdragEnterEvent_h (QAbstractPageSetupDialog ()) ((QDragEnterEvent t1)) where
 dragEnterEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPageSetupDialog_dragEnterEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractPageSetupDialog_dragEnterEvent" qtc_QAbstractPageSetupDialog_dragEnterEvent :: Ptr (TQAbstractPageSetupDialog a) -> Ptr (TQDragEnterEvent t1) -> IO ()

instance QdragEnterEvent_h (QAbstractPageSetupDialogSc a) ((QDragEnterEvent t1)) where
 dragEnterEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPageSetupDialog_dragEnterEvent cobj_x0 cobj_x1

instance QdragLeaveEvent_h (QAbstractPageSetupDialog ()) ((QDragLeaveEvent t1)) where
 dragLeaveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPageSetupDialog_dragLeaveEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractPageSetupDialog_dragLeaveEvent" qtc_QAbstractPageSetupDialog_dragLeaveEvent :: Ptr (TQAbstractPageSetupDialog a) -> Ptr (TQDragLeaveEvent t1) -> IO ()

instance QdragLeaveEvent_h (QAbstractPageSetupDialogSc a) ((QDragLeaveEvent t1)) where
 dragLeaveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPageSetupDialog_dragLeaveEvent cobj_x0 cobj_x1

instance QdragMoveEvent_h (QAbstractPageSetupDialog ()) ((QDragMoveEvent t1)) where
 dragMoveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPageSetupDialog_dragMoveEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractPageSetupDialog_dragMoveEvent" qtc_QAbstractPageSetupDialog_dragMoveEvent :: Ptr (TQAbstractPageSetupDialog a) -> Ptr (TQDragMoveEvent t1) -> IO ()

instance QdragMoveEvent_h (QAbstractPageSetupDialogSc a) ((QDragMoveEvent t1)) where
 dragMoveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPageSetupDialog_dragMoveEvent cobj_x0 cobj_x1

instance QdropEvent_h (QAbstractPageSetupDialog ()) ((QDropEvent t1)) where
 dropEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPageSetupDialog_dropEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractPageSetupDialog_dropEvent" qtc_QAbstractPageSetupDialog_dropEvent :: Ptr (TQAbstractPageSetupDialog a) -> Ptr (TQDropEvent t1) -> IO ()

instance QdropEvent_h (QAbstractPageSetupDialogSc a) ((QDropEvent t1)) where
 dropEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPageSetupDialog_dropEvent cobj_x0 cobj_x1

instance QenterEvent_h (QAbstractPageSetupDialog ()) ((QEvent t1)) where
 enterEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPageSetupDialog_enterEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractPageSetupDialog_enterEvent" qtc_QAbstractPageSetupDialog_enterEvent :: Ptr (TQAbstractPageSetupDialog a) -> Ptr (TQEvent t1) -> IO ()

instance QenterEvent_h (QAbstractPageSetupDialogSc a) ((QEvent t1)) where
 enterEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPageSetupDialog_enterEvent cobj_x0 cobj_x1

instance QfocusInEvent_h (QAbstractPageSetupDialog ()) ((QFocusEvent t1)) where
 focusInEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPageSetupDialog_focusInEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractPageSetupDialog_focusInEvent" qtc_QAbstractPageSetupDialog_focusInEvent :: Ptr (TQAbstractPageSetupDialog a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusInEvent_h (QAbstractPageSetupDialogSc a) ((QFocusEvent t1)) where
 focusInEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPageSetupDialog_focusInEvent cobj_x0 cobj_x1

instance QfocusOutEvent_h (QAbstractPageSetupDialog ()) ((QFocusEvent t1)) where
 focusOutEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPageSetupDialog_focusOutEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractPageSetupDialog_focusOutEvent" qtc_QAbstractPageSetupDialog_focusOutEvent :: Ptr (TQAbstractPageSetupDialog a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusOutEvent_h (QAbstractPageSetupDialogSc a) ((QFocusEvent t1)) where
 focusOutEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPageSetupDialog_focusOutEvent cobj_x0 cobj_x1

instance QsetHandler (QAbstractPageSetupDialog ()) (QAbstractPageSetupDialog x0 -> Int -> IO (Int)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractPageSetupDialog8 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractPageSetupDialog8_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractPageSetupDialog_setHandler8 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractPageSetupDialog x0) -> CInt -> IO (CInt)
    setHandlerWrapper x0 x1
      = do x0obj <- qAbstractPageSetupDialogFromPtr x0
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

foreign import ccall "qtc_QAbstractPageSetupDialog_setHandler8" qtc_QAbstractPageSetupDialog_setHandler8 :: Ptr (TQAbstractPageSetupDialog a) -> CWString -> Ptr (Ptr (TQAbstractPageSetupDialog x0) -> CInt -> IO (CInt)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QAbstractPageSetupDialog8 :: (Ptr (TQAbstractPageSetupDialog x0) -> CInt -> IO (CInt)) -> IO (FunPtr (Ptr (TQAbstractPageSetupDialog x0) -> CInt -> IO (CInt)))

foreign import ccall "wrapper" wrapSetHandler_QAbstractPageSetupDialog8_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QAbstractPageSetupDialogSc a) (QAbstractPageSetupDialog x0 -> Int -> IO (Int)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractPageSetupDialog8 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractPageSetupDialog8_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractPageSetupDialog_setHandler8 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractPageSetupDialog x0) -> CInt -> IO (CInt)
    setHandlerWrapper x0 x1
      = do x0obj <- qAbstractPageSetupDialogFromPtr x0
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

instance QheightForWidth_h (QAbstractPageSetupDialog ()) ((Int)) where
 heightForWidth_h x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPageSetupDialog_heightForWidth cobj_x0 (toCInt x1)

foreign import ccall "qtc_QAbstractPageSetupDialog_heightForWidth" qtc_QAbstractPageSetupDialog_heightForWidth :: Ptr (TQAbstractPageSetupDialog a) -> CInt -> IO CInt

instance QheightForWidth_h (QAbstractPageSetupDialogSc a) ((Int)) where
 heightForWidth_h x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPageSetupDialog_heightForWidth cobj_x0 (toCInt x1)

instance QhideEvent_h (QAbstractPageSetupDialog ()) ((QHideEvent t1)) where
 hideEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPageSetupDialog_hideEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractPageSetupDialog_hideEvent" qtc_QAbstractPageSetupDialog_hideEvent :: Ptr (TQAbstractPageSetupDialog a) -> Ptr (TQHideEvent t1) -> IO ()

instance QhideEvent_h (QAbstractPageSetupDialogSc a) ((QHideEvent t1)) where
 hideEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPageSetupDialog_hideEvent cobj_x0 cobj_x1

instance QsetHandler (QAbstractPageSetupDialog ()) (QAbstractPageSetupDialog x0 -> InputMethodQuery -> IO (QVariant t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractPageSetupDialog9 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractPageSetupDialog9_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractPageSetupDialog_setHandler9 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractPageSetupDialog x0) -> CLong -> IO (Ptr (TQVariant t0))
    setHandlerWrapper x0 x1
      = do x0obj <- qAbstractPageSetupDialogFromPtr x0
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

foreign import ccall "qtc_QAbstractPageSetupDialog_setHandler9" qtc_QAbstractPageSetupDialog_setHandler9 :: Ptr (TQAbstractPageSetupDialog a) -> CWString -> Ptr (Ptr (TQAbstractPageSetupDialog x0) -> CLong -> IO (Ptr (TQVariant t0))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QAbstractPageSetupDialog9 :: (Ptr (TQAbstractPageSetupDialog x0) -> CLong -> IO (Ptr (TQVariant t0))) -> IO (FunPtr (Ptr (TQAbstractPageSetupDialog x0) -> CLong -> IO (Ptr (TQVariant t0))))

foreign import ccall "wrapper" wrapSetHandler_QAbstractPageSetupDialog9_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QAbstractPageSetupDialogSc a) (QAbstractPageSetupDialog x0 -> InputMethodQuery -> IO (QVariant t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractPageSetupDialog9 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractPageSetupDialog9_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractPageSetupDialog_setHandler9 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractPageSetupDialog x0) -> CLong -> IO (Ptr (TQVariant t0))
    setHandlerWrapper x0 x1
      = do x0obj <- qAbstractPageSetupDialogFromPtr x0
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

instance QinputMethodQuery_h (QAbstractPageSetupDialog ()) ((InputMethodQuery)) where
 inputMethodQuery_h x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPageSetupDialog_inputMethodQuery cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QAbstractPageSetupDialog_inputMethodQuery" qtc_QAbstractPageSetupDialog_inputMethodQuery :: Ptr (TQAbstractPageSetupDialog a) -> CLong -> IO (Ptr (TQVariant ()))

instance QinputMethodQuery_h (QAbstractPageSetupDialogSc a) ((InputMethodQuery)) where
 inputMethodQuery_h x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPageSetupDialog_inputMethodQuery cobj_x0 (toCLong $ qEnum_toInt x1)

instance QkeyReleaseEvent_h (QAbstractPageSetupDialog ()) ((QKeyEvent t1)) where
 keyReleaseEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPageSetupDialog_keyReleaseEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractPageSetupDialog_keyReleaseEvent" qtc_QAbstractPageSetupDialog_keyReleaseEvent :: Ptr (TQAbstractPageSetupDialog a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyReleaseEvent_h (QAbstractPageSetupDialogSc a) ((QKeyEvent t1)) where
 keyReleaseEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPageSetupDialog_keyReleaseEvent cobj_x0 cobj_x1

instance QleaveEvent_h (QAbstractPageSetupDialog ()) ((QEvent t1)) where
 leaveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPageSetupDialog_leaveEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractPageSetupDialog_leaveEvent" qtc_QAbstractPageSetupDialog_leaveEvent :: Ptr (TQAbstractPageSetupDialog a) -> Ptr (TQEvent t1) -> IO ()

instance QleaveEvent_h (QAbstractPageSetupDialogSc a) ((QEvent t1)) where
 leaveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPageSetupDialog_leaveEvent cobj_x0 cobj_x1

instance QmouseDoubleClickEvent_h (QAbstractPageSetupDialog ()) ((QMouseEvent t1)) where
 mouseDoubleClickEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPageSetupDialog_mouseDoubleClickEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractPageSetupDialog_mouseDoubleClickEvent" qtc_QAbstractPageSetupDialog_mouseDoubleClickEvent :: Ptr (TQAbstractPageSetupDialog a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseDoubleClickEvent_h (QAbstractPageSetupDialogSc a) ((QMouseEvent t1)) where
 mouseDoubleClickEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPageSetupDialog_mouseDoubleClickEvent cobj_x0 cobj_x1

instance QmouseMoveEvent_h (QAbstractPageSetupDialog ()) ((QMouseEvent t1)) where
 mouseMoveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPageSetupDialog_mouseMoveEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractPageSetupDialog_mouseMoveEvent" qtc_QAbstractPageSetupDialog_mouseMoveEvent :: Ptr (TQAbstractPageSetupDialog a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseMoveEvent_h (QAbstractPageSetupDialogSc a) ((QMouseEvent t1)) where
 mouseMoveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPageSetupDialog_mouseMoveEvent cobj_x0 cobj_x1

instance QmousePressEvent_h (QAbstractPageSetupDialog ()) ((QMouseEvent t1)) where
 mousePressEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPageSetupDialog_mousePressEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractPageSetupDialog_mousePressEvent" qtc_QAbstractPageSetupDialog_mousePressEvent :: Ptr (TQAbstractPageSetupDialog a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmousePressEvent_h (QAbstractPageSetupDialogSc a) ((QMouseEvent t1)) where
 mousePressEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPageSetupDialog_mousePressEvent cobj_x0 cobj_x1

instance QmouseReleaseEvent_h (QAbstractPageSetupDialog ()) ((QMouseEvent t1)) where
 mouseReleaseEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPageSetupDialog_mouseReleaseEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractPageSetupDialog_mouseReleaseEvent" qtc_QAbstractPageSetupDialog_mouseReleaseEvent :: Ptr (TQAbstractPageSetupDialog a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseReleaseEvent_h (QAbstractPageSetupDialogSc a) ((QMouseEvent t1)) where
 mouseReleaseEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPageSetupDialog_mouseReleaseEvent cobj_x0 cobj_x1

instance QmoveEvent_h (QAbstractPageSetupDialog ()) ((QMoveEvent t1)) where
 moveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPageSetupDialog_moveEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractPageSetupDialog_moveEvent" qtc_QAbstractPageSetupDialog_moveEvent :: Ptr (TQAbstractPageSetupDialog a) -> Ptr (TQMoveEvent t1) -> IO ()

instance QmoveEvent_h (QAbstractPageSetupDialogSc a) ((QMoveEvent t1)) where
 moveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPageSetupDialog_moveEvent cobj_x0 cobj_x1

instance QsetHandler (QAbstractPageSetupDialog ()) (QAbstractPageSetupDialog x0 -> IO (QPaintEngine t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractPageSetupDialog10 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractPageSetupDialog10_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractPageSetupDialog_setHandler10 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractPageSetupDialog x0) -> IO (Ptr (TQPaintEngine t0))
    setHandlerWrapper x0
      = do x0obj <- qAbstractPageSetupDialogFromPtr x0
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

foreign import ccall "qtc_QAbstractPageSetupDialog_setHandler10" qtc_QAbstractPageSetupDialog_setHandler10 :: Ptr (TQAbstractPageSetupDialog a) -> CWString -> Ptr (Ptr (TQAbstractPageSetupDialog x0) -> IO (Ptr (TQPaintEngine t0))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QAbstractPageSetupDialog10 :: (Ptr (TQAbstractPageSetupDialog x0) -> IO (Ptr (TQPaintEngine t0))) -> IO (FunPtr (Ptr (TQAbstractPageSetupDialog x0) -> IO (Ptr (TQPaintEngine t0))))

foreign import ccall "wrapper" wrapSetHandler_QAbstractPageSetupDialog10_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QAbstractPageSetupDialogSc a) (QAbstractPageSetupDialog x0 -> IO (QPaintEngine t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractPageSetupDialog10 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractPageSetupDialog10_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractPageSetupDialog_setHandler10 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractPageSetupDialog x0) -> IO (Ptr (TQPaintEngine t0))
    setHandlerWrapper x0
      = do x0obj <- qAbstractPageSetupDialogFromPtr x0
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

instance QpaintEngine_h (QAbstractPageSetupDialog ()) (()) where
 paintEngine_h x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPageSetupDialog_paintEngine cobj_x0

foreign import ccall "qtc_QAbstractPageSetupDialog_paintEngine" qtc_QAbstractPageSetupDialog_paintEngine :: Ptr (TQAbstractPageSetupDialog a) -> IO (Ptr (TQPaintEngine ()))

instance QpaintEngine_h (QAbstractPageSetupDialogSc a) (()) where
 paintEngine_h x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractPageSetupDialog_paintEngine cobj_x0

instance QpaintEvent_h (QAbstractPageSetupDialog ()) ((QPaintEvent t1)) where
 paintEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPageSetupDialog_paintEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractPageSetupDialog_paintEvent" qtc_QAbstractPageSetupDialog_paintEvent :: Ptr (TQAbstractPageSetupDialog a) -> Ptr (TQPaintEvent t1) -> IO ()

instance QpaintEvent_h (QAbstractPageSetupDialogSc a) ((QPaintEvent t1)) where
 paintEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPageSetupDialog_paintEvent cobj_x0 cobj_x1

instance QtabletEvent_h (QAbstractPageSetupDialog ()) ((QTabletEvent t1)) where
 tabletEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPageSetupDialog_tabletEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractPageSetupDialog_tabletEvent" qtc_QAbstractPageSetupDialog_tabletEvent :: Ptr (TQAbstractPageSetupDialog a) -> Ptr (TQTabletEvent t1) -> IO ()

instance QtabletEvent_h (QAbstractPageSetupDialogSc a) ((QTabletEvent t1)) where
 tabletEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPageSetupDialog_tabletEvent cobj_x0 cobj_x1

instance QwheelEvent_h (QAbstractPageSetupDialog ()) ((QWheelEvent t1)) where
 wheelEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPageSetupDialog_wheelEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractPageSetupDialog_wheelEvent" qtc_QAbstractPageSetupDialog_wheelEvent :: Ptr (TQAbstractPageSetupDialog a) -> Ptr (TQWheelEvent t1) -> IO ()

instance QwheelEvent_h (QAbstractPageSetupDialogSc a) ((QWheelEvent t1)) where
 wheelEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractPageSetupDialog_wheelEvent cobj_x0 cobj_x1

