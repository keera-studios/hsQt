{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QScrollArea_h.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:14
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QScrollArea_h (
  QfocusNextPrevChild_h(..)
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

instance QunSetUserMethod (QScrollArea ()) where
 unSetUserMethod qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QScrollArea_unSetUserMethod cobj_qobj (toCInt 0) (toCInt evid)

foreign import ccall "qtc_QScrollArea_unSetUserMethod" qtc_QScrollArea_unSetUserMethod :: Ptr (TQScrollArea a) -> CInt -> CInt -> IO (CBool)

instance QunSetUserMethod (QScrollAreaSc a) where
 unSetUserMethod qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QScrollArea_unSetUserMethod cobj_qobj (toCInt 0) (toCInt evid)

instance QunSetUserMethodVariant (QScrollArea ()) where
 unSetUserMethodVariant qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QScrollArea_unSetUserMethod cobj_qobj (toCInt 1) (toCInt evid)

instance QunSetUserMethodVariant (QScrollAreaSc a) where
 unSetUserMethodVariant qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QScrollArea_unSetUserMethod cobj_qobj (toCInt 1) (toCInt evid)

instance QunSetUserMethodVariantList (QScrollArea ()) where
 unSetUserMethodVariantList qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QScrollArea_unSetUserMethod cobj_qobj (toCInt 2) (toCInt evid)

instance QunSetUserMethodVariantList (QScrollAreaSc a) where
 unSetUserMethodVariantList qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QScrollArea_unSetUserMethod cobj_qobj (toCInt 2) (toCInt evid)

instance QsetUserMethod (QScrollArea ()) (QScrollArea x0 -> IO ()) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethod_QScrollArea setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethod_QScrollArea_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QScrollArea_setUserMethod cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQScrollArea x0) -> IO ()
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

foreign import ccall "qtc_QScrollArea_setUserMethod" qtc_QScrollArea_setUserMethod :: Ptr (TQScrollArea a) -> CInt -> Ptr (Ptr (TQScrollArea x0) -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetUserMethod_QScrollArea :: (Ptr (TQScrollArea x0) -> IO ()) -> IO (FunPtr (Ptr (TQScrollArea x0) -> IO ()))

foreign import ccall "wrapper" wrapSetUserMethod_QScrollArea_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetUserMethod (QScrollAreaSc a) (QScrollArea x0 -> IO ()) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethod_QScrollArea setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethod_QScrollArea_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QScrollArea_setUserMethod cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQScrollArea x0) -> IO ()
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

instance QsetUserMethod (QScrollArea ()) (QScrollArea x0 -> QVariant () -> IO (QVariant ())) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethodVariant_QScrollArea setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethodVariant_QScrollArea_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QScrollArea_setUserMethodVariant cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQScrollArea x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))
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

foreign import ccall "qtc_QScrollArea_setUserMethodVariant" qtc_QScrollArea_setUserMethodVariant :: Ptr (TQScrollArea a) -> CInt -> Ptr (Ptr (TQScrollArea x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetUserMethodVariant_QScrollArea :: (Ptr (TQScrollArea x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))) -> IO (FunPtr (Ptr (TQScrollArea x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))))

foreign import ccall "wrapper" wrapSetUserMethodVariant_QScrollArea_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetUserMethod (QScrollAreaSc a) (QScrollArea x0 -> QVariant () -> IO (QVariant ())) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethodVariant_QScrollArea setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethodVariant_QScrollArea_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QScrollArea_setUserMethodVariant cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQScrollArea x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))
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

instance QunSetHandler (QScrollArea ()) where 
 unSetHandler qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withCWString evid $ \cstr_evid ->
    qtc_QScrollArea_unSetHandler cobj_qobj cstr_evid

foreign import ccall "qtc_QScrollArea_unSetHandler" qtc_QScrollArea_unSetHandler :: Ptr (TQScrollArea a) -> CWString -> IO (CBool)

instance QunSetHandler (QScrollAreaSc a) where 
 unSetHandler qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withCWString evid $ \cstr_evid ->
    qtc_QScrollArea_unSetHandler cobj_qobj cstr_evid

instance QsetHandler (QScrollArea ()) (QScrollArea x0 -> QEvent t1 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QScrollArea1 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QScrollArea1_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QScrollArea_setHandler1 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQScrollArea x0) -> Ptr (TQEvent t1) -> IO (CBool)
    setHandlerWrapper x0 x1
      = do x0obj <- qScrollAreaFromPtr x0
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

foreign import ccall "qtc_QScrollArea_setHandler1" qtc_QScrollArea_setHandler1 :: Ptr (TQScrollArea a) -> CWString -> Ptr (Ptr (TQScrollArea x0) -> Ptr (TQEvent t1) -> IO (CBool)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QScrollArea1 :: (Ptr (TQScrollArea x0) -> Ptr (TQEvent t1) -> IO (CBool)) -> IO (FunPtr (Ptr (TQScrollArea x0) -> Ptr (TQEvent t1) -> IO (CBool)))

foreign import ccall "wrapper" wrapSetHandler_QScrollArea1_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QScrollAreaSc a) (QScrollArea x0 -> QEvent t1 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QScrollArea1 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QScrollArea1_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QScrollArea_setHandler1 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQScrollArea x0) -> Ptr (TQEvent t1) -> IO (CBool)
    setHandlerWrapper x0 x1
      = do x0obj <- qScrollAreaFromPtr x0
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

instance Qevent_h (QScrollArea ()) ((QEvent t1)) where
 event_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollArea_event cobj_x0 cobj_x1

foreign import ccall "qtc_QScrollArea_event" qtc_QScrollArea_event :: Ptr (TQScrollArea a) -> Ptr (TQEvent t1) -> IO CBool

instance Qevent_h (QScrollAreaSc a) ((QEvent t1)) where
 event_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollArea_event cobj_x0 cobj_x1

instance QsetHandler (QScrollArea ()) (QScrollArea x0 -> Bool -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QScrollArea2 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QScrollArea2_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QScrollArea_setHandler2 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQScrollArea x0) -> CBool -> IO (CBool)
    setHandlerWrapper x0 x1
      = do x0obj <- qScrollAreaFromPtr x0
           let x1bool = fromCBool x1
           let rv =
                if (objectIsNull x0obj)
                 then return False
                 else _handler x0obj x1bool
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

foreign import ccall "qtc_QScrollArea_setHandler2" qtc_QScrollArea_setHandler2 :: Ptr (TQScrollArea a) -> CWString -> Ptr (Ptr (TQScrollArea x0) -> CBool -> IO (CBool)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QScrollArea2 :: (Ptr (TQScrollArea x0) -> CBool -> IO (CBool)) -> IO (FunPtr (Ptr (TQScrollArea x0) -> CBool -> IO (CBool)))

foreign import ccall "wrapper" wrapSetHandler_QScrollArea2_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QScrollAreaSc a) (QScrollArea x0 -> Bool -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QScrollArea2 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QScrollArea2_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QScrollArea_setHandler2 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQScrollArea x0) -> CBool -> IO (CBool)
    setHandlerWrapper x0 x1
      = do x0obj <- qScrollAreaFromPtr x0
           let x1bool = fromCBool x1
           let rv =
                if (objectIsNull x0obj)
                 then return False
                 else _handler x0obj x1bool
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

class QfocusNextPrevChild_h x0 x1 where
 focusNextPrevChild_h :: x0 -> x1 -> IO (Bool)

instance QfocusNextPrevChild_h (QScrollArea ()) ((Bool)) where
 focusNextPrevChild_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QScrollArea_focusNextPrevChild cobj_x0 (toCBool x1)

foreign import ccall "qtc_QScrollArea_focusNextPrevChild" qtc_QScrollArea_focusNextPrevChild :: Ptr (TQScrollArea a) -> CBool -> IO CBool

instance QfocusNextPrevChild_h (QScrollAreaSc a) ((Bool)) where
 focusNextPrevChild_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QScrollArea_focusNextPrevChild cobj_x0 (toCBool x1)

instance QsetHandler (QScrollArea ()) (QScrollArea x0 -> QEvent t1 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QScrollArea3 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QScrollArea3_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QScrollArea_setHandler3 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQScrollArea x0) -> Ptr (TQEvent t1) -> IO ()
    setHandlerWrapper x0 x1
      = do x0obj <- qScrollAreaFromPtr x0
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

foreign import ccall "qtc_QScrollArea_setHandler3" qtc_QScrollArea_setHandler3 :: Ptr (TQScrollArea a) -> CWString -> Ptr (Ptr (TQScrollArea x0) -> Ptr (TQEvent t1) -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QScrollArea3 :: (Ptr (TQScrollArea x0) -> Ptr (TQEvent t1) -> IO ()) -> IO (FunPtr (Ptr (TQScrollArea x0) -> Ptr (TQEvent t1) -> IO ()))

foreign import ccall "wrapper" wrapSetHandler_QScrollArea3_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QScrollAreaSc a) (QScrollArea x0 -> QEvent t1 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QScrollArea3 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QScrollArea3_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QScrollArea_setHandler3 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQScrollArea x0) -> Ptr (TQEvent t1) -> IO ()
    setHandlerWrapper x0 x1
      = do x0obj <- qScrollAreaFromPtr x0
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

instance QresizeEvent_h (QScrollArea ()) ((QResizeEvent t1)) where
 resizeEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollArea_resizeEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QScrollArea_resizeEvent" qtc_QScrollArea_resizeEvent :: Ptr (TQScrollArea a) -> Ptr (TQResizeEvent t1) -> IO ()

instance QresizeEvent_h (QScrollAreaSc a) ((QResizeEvent t1)) where
 resizeEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollArea_resizeEvent cobj_x0 cobj_x1

instance QsetHandler (QScrollArea ()) (QScrollArea x0 -> Int -> Int -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QScrollArea4 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QScrollArea4_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QScrollArea_setHandler4 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQScrollArea x0) -> CInt -> CInt -> IO ()
    setHandlerWrapper x0 x1 x2
      = do x0obj <- qScrollAreaFromPtr x0
           let x1int = fromCInt x1
           let x2int = fromCInt x2
           if (objectIsNull x0obj)
            then return ()
            else _handler x0obj x1int x2int

    setHandlerWrapper_d :: Ptr fun -> Ptr () -> Ptr fun_d -> IO ()
    setHandlerWrapper_d funptr stptr funptr_d
      = do when (stptr/=ptrNull)
            (freeStablePtr (castPtrToStablePtr stptr))
           when (funptr/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr))
           when (funptr_d/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr_d))
           return ()

foreign import ccall "qtc_QScrollArea_setHandler4" qtc_QScrollArea_setHandler4 :: Ptr (TQScrollArea a) -> CWString -> Ptr (Ptr (TQScrollArea x0) -> CInt -> CInt -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QScrollArea4 :: (Ptr (TQScrollArea x0) -> CInt -> CInt -> IO ()) -> IO (FunPtr (Ptr (TQScrollArea x0) -> CInt -> CInt -> IO ()))

foreign import ccall "wrapper" wrapSetHandler_QScrollArea4_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QScrollAreaSc a) (QScrollArea x0 -> Int -> Int -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QScrollArea4 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QScrollArea4_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QScrollArea_setHandler4 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQScrollArea x0) -> CInt -> CInt -> IO ()
    setHandlerWrapper x0 x1 x2
      = do x0obj <- qScrollAreaFromPtr x0
           let x1int = fromCInt x1
           let x2int = fromCInt x2
           if (objectIsNull x0obj)
            then return ()
            else _handler x0obj x1int x2int

    setHandlerWrapper_d :: Ptr fun -> Ptr () -> Ptr fun_d -> IO ()
    setHandlerWrapper_d funptr stptr funptr_d
      = do when (stptr/=ptrNull)
            (freeStablePtr (castPtrToStablePtr stptr))
           when (funptr/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr))
           when (funptr_d/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr_d))
           return ()

instance QscrollContentsBy_h (QScrollArea ()) ((Int, Int)) where
 scrollContentsBy_h x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QScrollArea_scrollContentsBy cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QScrollArea_scrollContentsBy" qtc_QScrollArea_scrollContentsBy :: Ptr (TQScrollArea a) -> CInt -> CInt -> IO ()

instance QscrollContentsBy_h (QScrollAreaSc a) ((Int, Int)) where
 scrollContentsBy_h x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QScrollArea_scrollContentsBy cobj_x0 (toCInt x1) (toCInt x2)

instance QsetHandler (QScrollArea ()) (QScrollArea x0 -> IO (QSize t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QScrollArea5 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QScrollArea5_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QScrollArea_setHandler5 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQScrollArea x0) -> IO (Ptr (TQSize t0))
    setHandlerWrapper x0
      = do x0obj <- qScrollAreaFromPtr x0
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

foreign import ccall "qtc_QScrollArea_setHandler5" qtc_QScrollArea_setHandler5 :: Ptr (TQScrollArea a) -> CWString -> Ptr (Ptr (TQScrollArea x0) -> IO (Ptr (TQSize t0))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QScrollArea5 :: (Ptr (TQScrollArea x0) -> IO (Ptr (TQSize t0))) -> IO (FunPtr (Ptr (TQScrollArea x0) -> IO (Ptr (TQSize t0))))

foreign import ccall "wrapper" wrapSetHandler_QScrollArea5_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QScrollAreaSc a) (QScrollArea x0 -> IO (QSize t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QScrollArea5 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QScrollArea5_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QScrollArea_setHandler5 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQScrollArea x0) -> IO (Ptr (TQSize t0))
    setHandlerWrapper x0
      = do x0obj <- qScrollAreaFromPtr x0
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

instance QqsizeHint_h (QScrollArea ()) (()) where
 qsizeHint_h x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QScrollArea_sizeHint cobj_x0

foreign import ccall "qtc_QScrollArea_sizeHint" qtc_QScrollArea_sizeHint :: Ptr (TQScrollArea a) -> IO (Ptr (TQSize ()))

instance QqsizeHint_h (QScrollAreaSc a) (()) where
 qsizeHint_h x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QScrollArea_sizeHint cobj_x0

instance QsizeHint_h (QScrollArea ()) (()) where
 sizeHint_h x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QScrollArea_sizeHint_qth cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QScrollArea_sizeHint_qth" qtc_QScrollArea_sizeHint_qth :: Ptr (TQScrollArea a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QsizeHint_h (QScrollAreaSc a) (()) where
 sizeHint_h x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QScrollArea_sizeHint_qth cobj_x0 csize_ret_w csize_ret_h

instance QcontextMenuEvent_h (QScrollArea ()) ((QContextMenuEvent t1)) where
 contextMenuEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollArea_contextMenuEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QScrollArea_contextMenuEvent" qtc_QScrollArea_contextMenuEvent :: Ptr (TQScrollArea a) -> Ptr (TQContextMenuEvent t1) -> IO ()

instance QcontextMenuEvent_h (QScrollAreaSc a) ((QContextMenuEvent t1)) where
 contextMenuEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollArea_contextMenuEvent cobj_x0 cobj_x1

instance QdragEnterEvent_h (QScrollArea ()) ((QDragEnterEvent t1)) where
 dragEnterEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollArea_dragEnterEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QScrollArea_dragEnterEvent" qtc_QScrollArea_dragEnterEvent :: Ptr (TQScrollArea a) -> Ptr (TQDragEnterEvent t1) -> IO ()

instance QdragEnterEvent_h (QScrollAreaSc a) ((QDragEnterEvent t1)) where
 dragEnterEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollArea_dragEnterEvent cobj_x0 cobj_x1

instance QdragLeaveEvent_h (QScrollArea ()) ((QDragLeaveEvent t1)) where
 dragLeaveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollArea_dragLeaveEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QScrollArea_dragLeaveEvent" qtc_QScrollArea_dragLeaveEvent :: Ptr (TQScrollArea a) -> Ptr (TQDragLeaveEvent t1) -> IO ()

instance QdragLeaveEvent_h (QScrollAreaSc a) ((QDragLeaveEvent t1)) where
 dragLeaveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollArea_dragLeaveEvent cobj_x0 cobj_x1

instance QdragMoveEvent_h (QScrollArea ()) ((QDragMoveEvent t1)) where
 dragMoveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollArea_dragMoveEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QScrollArea_dragMoveEvent" qtc_QScrollArea_dragMoveEvent :: Ptr (TQScrollArea a) -> Ptr (TQDragMoveEvent t1) -> IO ()

instance QdragMoveEvent_h (QScrollAreaSc a) ((QDragMoveEvent t1)) where
 dragMoveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollArea_dragMoveEvent cobj_x0 cobj_x1

instance QdropEvent_h (QScrollArea ()) ((QDropEvent t1)) where
 dropEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollArea_dropEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QScrollArea_dropEvent" qtc_QScrollArea_dropEvent :: Ptr (TQScrollArea a) -> Ptr (TQDropEvent t1) -> IO ()

instance QdropEvent_h (QScrollAreaSc a) ((QDropEvent t1)) where
 dropEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollArea_dropEvent cobj_x0 cobj_x1

instance QkeyPressEvent_h (QScrollArea ()) ((QKeyEvent t1)) where
 keyPressEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollArea_keyPressEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QScrollArea_keyPressEvent" qtc_QScrollArea_keyPressEvent :: Ptr (TQScrollArea a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyPressEvent_h (QScrollAreaSc a) ((QKeyEvent t1)) where
 keyPressEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollArea_keyPressEvent cobj_x0 cobj_x1

instance QqminimumSizeHint_h (QScrollArea ()) (()) where
 qminimumSizeHint_h x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QScrollArea_minimumSizeHint cobj_x0

foreign import ccall "qtc_QScrollArea_minimumSizeHint" qtc_QScrollArea_minimumSizeHint :: Ptr (TQScrollArea a) -> IO (Ptr (TQSize ()))

instance QqminimumSizeHint_h (QScrollAreaSc a) (()) where
 qminimumSizeHint_h x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QScrollArea_minimumSizeHint cobj_x0

instance QminimumSizeHint_h (QScrollArea ()) (()) where
 minimumSizeHint_h x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QScrollArea_minimumSizeHint_qth cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QScrollArea_minimumSizeHint_qth" qtc_QScrollArea_minimumSizeHint_qth :: Ptr (TQScrollArea a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QminimumSizeHint_h (QScrollAreaSc a) (()) where
 minimumSizeHint_h x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QScrollArea_minimumSizeHint_qth cobj_x0 csize_ret_w csize_ret_h

instance QmouseDoubleClickEvent_h (QScrollArea ()) ((QMouseEvent t1)) where
 mouseDoubleClickEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollArea_mouseDoubleClickEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QScrollArea_mouseDoubleClickEvent" qtc_QScrollArea_mouseDoubleClickEvent :: Ptr (TQScrollArea a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseDoubleClickEvent_h (QScrollAreaSc a) ((QMouseEvent t1)) where
 mouseDoubleClickEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollArea_mouseDoubleClickEvent cobj_x0 cobj_x1

instance QmouseMoveEvent_h (QScrollArea ()) ((QMouseEvent t1)) where
 mouseMoveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollArea_mouseMoveEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QScrollArea_mouseMoveEvent" qtc_QScrollArea_mouseMoveEvent :: Ptr (TQScrollArea a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseMoveEvent_h (QScrollAreaSc a) ((QMouseEvent t1)) where
 mouseMoveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollArea_mouseMoveEvent cobj_x0 cobj_x1

instance QmousePressEvent_h (QScrollArea ()) ((QMouseEvent t1)) where
 mousePressEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollArea_mousePressEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QScrollArea_mousePressEvent" qtc_QScrollArea_mousePressEvent :: Ptr (TQScrollArea a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmousePressEvent_h (QScrollAreaSc a) ((QMouseEvent t1)) where
 mousePressEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollArea_mousePressEvent cobj_x0 cobj_x1

instance QmouseReleaseEvent_h (QScrollArea ()) ((QMouseEvent t1)) where
 mouseReleaseEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollArea_mouseReleaseEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QScrollArea_mouseReleaseEvent" qtc_QScrollArea_mouseReleaseEvent :: Ptr (TQScrollArea a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseReleaseEvent_h (QScrollAreaSc a) ((QMouseEvent t1)) where
 mouseReleaseEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollArea_mouseReleaseEvent cobj_x0 cobj_x1

instance QpaintEvent_h (QScrollArea ()) ((QPaintEvent t1)) where
 paintEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollArea_paintEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QScrollArea_paintEvent" qtc_QScrollArea_paintEvent :: Ptr (TQScrollArea a) -> Ptr (TQPaintEvent t1) -> IO ()

instance QpaintEvent_h (QScrollAreaSc a) ((QPaintEvent t1)) where
 paintEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollArea_paintEvent cobj_x0 cobj_x1

instance QviewportEvent_h (QScrollArea ()) ((QEvent t1)) where
 viewportEvent_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollArea_viewportEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QScrollArea_viewportEvent" qtc_QScrollArea_viewportEvent :: Ptr (TQScrollArea a) -> Ptr (TQEvent t1) -> IO CBool

instance QviewportEvent_h (QScrollAreaSc a) ((QEvent t1)) where
 viewportEvent_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollArea_viewportEvent cobj_x0 cobj_x1

instance QwheelEvent_h (QScrollArea ()) ((QWheelEvent t1)) where
 wheelEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollArea_wheelEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QScrollArea_wheelEvent" qtc_QScrollArea_wheelEvent :: Ptr (TQScrollArea a) -> Ptr (TQWheelEvent t1) -> IO ()

instance QwheelEvent_h (QScrollAreaSc a) ((QWheelEvent t1)) where
 wheelEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollArea_wheelEvent cobj_x0 cobj_x1

instance QchangeEvent_h (QScrollArea ()) ((QEvent t1)) where
 changeEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollArea_changeEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QScrollArea_changeEvent" qtc_QScrollArea_changeEvent :: Ptr (TQScrollArea a) -> Ptr (TQEvent t1) -> IO ()

instance QchangeEvent_h (QScrollAreaSc a) ((QEvent t1)) where
 changeEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollArea_changeEvent cobj_x0 cobj_x1

instance QactionEvent_h (QScrollArea ()) ((QActionEvent t1)) where
 actionEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollArea_actionEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QScrollArea_actionEvent" qtc_QScrollArea_actionEvent :: Ptr (TQScrollArea a) -> Ptr (TQActionEvent t1) -> IO ()

instance QactionEvent_h (QScrollAreaSc a) ((QActionEvent t1)) where
 actionEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollArea_actionEvent cobj_x0 cobj_x1

instance QcloseEvent_h (QScrollArea ()) ((QCloseEvent t1)) where
 closeEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollArea_closeEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QScrollArea_closeEvent" qtc_QScrollArea_closeEvent :: Ptr (TQScrollArea a) -> Ptr (TQCloseEvent t1) -> IO ()

instance QcloseEvent_h (QScrollAreaSc a) ((QCloseEvent t1)) where
 closeEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollArea_closeEvent cobj_x0 cobj_x1

instance QsetHandler (QScrollArea ()) (QScrollArea x0 -> IO (Int)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QScrollArea6 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QScrollArea6_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QScrollArea_setHandler6 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQScrollArea x0) -> IO (CInt)
    setHandlerWrapper x0
      = do x0obj <- qScrollAreaFromPtr x0
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

foreign import ccall "qtc_QScrollArea_setHandler6" qtc_QScrollArea_setHandler6 :: Ptr (TQScrollArea a) -> CWString -> Ptr (Ptr (TQScrollArea x0) -> IO (CInt)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QScrollArea6 :: (Ptr (TQScrollArea x0) -> IO (CInt)) -> IO (FunPtr (Ptr (TQScrollArea x0) -> IO (CInt)))

foreign import ccall "wrapper" wrapSetHandler_QScrollArea6_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QScrollAreaSc a) (QScrollArea x0 -> IO (Int)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QScrollArea6 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QScrollArea6_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QScrollArea_setHandler6 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQScrollArea x0) -> IO (CInt)
    setHandlerWrapper x0
      = do x0obj <- qScrollAreaFromPtr x0
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

instance QdevType_h (QScrollArea ()) (()) where
 devType_h x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QScrollArea_devType cobj_x0

foreign import ccall "qtc_QScrollArea_devType" qtc_QScrollArea_devType :: Ptr (TQScrollArea a) -> IO CInt

instance QdevType_h (QScrollAreaSc a) (()) where
 devType_h x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QScrollArea_devType cobj_x0

instance QenterEvent_h (QScrollArea ()) ((QEvent t1)) where
 enterEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollArea_enterEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QScrollArea_enterEvent" qtc_QScrollArea_enterEvent :: Ptr (TQScrollArea a) -> Ptr (TQEvent t1) -> IO ()

instance QenterEvent_h (QScrollAreaSc a) ((QEvent t1)) where
 enterEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollArea_enterEvent cobj_x0 cobj_x1

instance QfocusInEvent_h (QScrollArea ()) ((QFocusEvent t1)) where
 focusInEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollArea_focusInEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QScrollArea_focusInEvent" qtc_QScrollArea_focusInEvent :: Ptr (TQScrollArea a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusInEvent_h (QScrollAreaSc a) ((QFocusEvent t1)) where
 focusInEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollArea_focusInEvent cobj_x0 cobj_x1

instance QfocusOutEvent_h (QScrollArea ()) ((QFocusEvent t1)) where
 focusOutEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollArea_focusOutEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QScrollArea_focusOutEvent" qtc_QScrollArea_focusOutEvent :: Ptr (TQScrollArea a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusOutEvent_h (QScrollAreaSc a) ((QFocusEvent t1)) where
 focusOutEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollArea_focusOutEvent cobj_x0 cobj_x1

instance QsetHandler (QScrollArea ()) (QScrollArea x0 -> Int -> IO (Int)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QScrollArea7 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QScrollArea7_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QScrollArea_setHandler7 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQScrollArea x0) -> CInt -> IO (CInt)
    setHandlerWrapper x0 x1
      = do x0obj <- qScrollAreaFromPtr x0
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

foreign import ccall "qtc_QScrollArea_setHandler7" qtc_QScrollArea_setHandler7 :: Ptr (TQScrollArea a) -> CWString -> Ptr (Ptr (TQScrollArea x0) -> CInt -> IO (CInt)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QScrollArea7 :: (Ptr (TQScrollArea x0) -> CInt -> IO (CInt)) -> IO (FunPtr (Ptr (TQScrollArea x0) -> CInt -> IO (CInt)))

foreign import ccall "wrapper" wrapSetHandler_QScrollArea7_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QScrollAreaSc a) (QScrollArea x0 -> Int -> IO (Int)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QScrollArea7 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QScrollArea7_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QScrollArea_setHandler7 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQScrollArea x0) -> CInt -> IO (CInt)
    setHandlerWrapper x0 x1
      = do x0obj <- qScrollAreaFromPtr x0
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

instance QheightForWidth_h (QScrollArea ()) ((Int)) where
 heightForWidth_h x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QScrollArea_heightForWidth cobj_x0 (toCInt x1)

foreign import ccall "qtc_QScrollArea_heightForWidth" qtc_QScrollArea_heightForWidth :: Ptr (TQScrollArea a) -> CInt -> IO CInt

instance QheightForWidth_h (QScrollAreaSc a) ((Int)) where
 heightForWidth_h x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QScrollArea_heightForWidth cobj_x0 (toCInt x1)

instance QhideEvent_h (QScrollArea ()) ((QHideEvent t1)) where
 hideEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollArea_hideEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QScrollArea_hideEvent" qtc_QScrollArea_hideEvent :: Ptr (TQScrollArea a) -> Ptr (TQHideEvent t1) -> IO ()

instance QhideEvent_h (QScrollAreaSc a) ((QHideEvent t1)) where
 hideEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollArea_hideEvent cobj_x0 cobj_x1

instance QsetHandler (QScrollArea ()) (QScrollArea x0 -> InputMethodQuery -> IO (QVariant t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QScrollArea8 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QScrollArea8_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QScrollArea_setHandler8 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQScrollArea x0) -> CLong -> IO (Ptr (TQVariant t0))
    setHandlerWrapper x0 x1
      = do x0obj <- qScrollAreaFromPtr x0
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

foreign import ccall "qtc_QScrollArea_setHandler8" qtc_QScrollArea_setHandler8 :: Ptr (TQScrollArea a) -> CWString -> Ptr (Ptr (TQScrollArea x0) -> CLong -> IO (Ptr (TQVariant t0))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QScrollArea8 :: (Ptr (TQScrollArea x0) -> CLong -> IO (Ptr (TQVariant t0))) -> IO (FunPtr (Ptr (TQScrollArea x0) -> CLong -> IO (Ptr (TQVariant t0))))

foreign import ccall "wrapper" wrapSetHandler_QScrollArea8_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QScrollAreaSc a) (QScrollArea x0 -> InputMethodQuery -> IO (QVariant t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QScrollArea8 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QScrollArea8_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QScrollArea_setHandler8 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQScrollArea x0) -> CLong -> IO (Ptr (TQVariant t0))
    setHandlerWrapper x0 x1
      = do x0obj <- qScrollAreaFromPtr x0
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

instance QinputMethodQuery_h (QScrollArea ()) ((InputMethodQuery)) where
 inputMethodQuery_h x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QScrollArea_inputMethodQuery cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QScrollArea_inputMethodQuery" qtc_QScrollArea_inputMethodQuery :: Ptr (TQScrollArea a) -> CLong -> IO (Ptr (TQVariant ()))

instance QinputMethodQuery_h (QScrollAreaSc a) ((InputMethodQuery)) where
 inputMethodQuery_h x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QScrollArea_inputMethodQuery cobj_x0 (toCLong $ qEnum_toInt x1)

instance QkeyReleaseEvent_h (QScrollArea ()) ((QKeyEvent t1)) where
 keyReleaseEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollArea_keyReleaseEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QScrollArea_keyReleaseEvent" qtc_QScrollArea_keyReleaseEvent :: Ptr (TQScrollArea a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyReleaseEvent_h (QScrollAreaSc a) ((QKeyEvent t1)) where
 keyReleaseEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollArea_keyReleaseEvent cobj_x0 cobj_x1

instance QleaveEvent_h (QScrollArea ()) ((QEvent t1)) where
 leaveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollArea_leaveEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QScrollArea_leaveEvent" qtc_QScrollArea_leaveEvent :: Ptr (TQScrollArea a) -> Ptr (TQEvent t1) -> IO ()

instance QleaveEvent_h (QScrollAreaSc a) ((QEvent t1)) where
 leaveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollArea_leaveEvent cobj_x0 cobj_x1

instance QmoveEvent_h (QScrollArea ()) ((QMoveEvent t1)) where
 moveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollArea_moveEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QScrollArea_moveEvent" qtc_QScrollArea_moveEvent :: Ptr (TQScrollArea a) -> Ptr (TQMoveEvent t1) -> IO ()

instance QmoveEvent_h (QScrollAreaSc a) ((QMoveEvent t1)) where
 moveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollArea_moveEvent cobj_x0 cobj_x1

instance QsetHandler (QScrollArea ()) (QScrollArea x0 -> IO (QPaintEngine t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QScrollArea9 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QScrollArea9_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QScrollArea_setHandler9 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQScrollArea x0) -> IO (Ptr (TQPaintEngine t0))
    setHandlerWrapper x0
      = do x0obj <- qScrollAreaFromPtr x0
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

foreign import ccall "qtc_QScrollArea_setHandler9" qtc_QScrollArea_setHandler9 :: Ptr (TQScrollArea a) -> CWString -> Ptr (Ptr (TQScrollArea x0) -> IO (Ptr (TQPaintEngine t0))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QScrollArea9 :: (Ptr (TQScrollArea x0) -> IO (Ptr (TQPaintEngine t0))) -> IO (FunPtr (Ptr (TQScrollArea x0) -> IO (Ptr (TQPaintEngine t0))))

foreign import ccall "wrapper" wrapSetHandler_QScrollArea9_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QScrollAreaSc a) (QScrollArea x0 -> IO (QPaintEngine t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QScrollArea9 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QScrollArea9_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QScrollArea_setHandler9 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQScrollArea x0) -> IO (Ptr (TQPaintEngine t0))
    setHandlerWrapper x0
      = do x0obj <- qScrollAreaFromPtr x0
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

instance QpaintEngine_h (QScrollArea ()) (()) where
 paintEngine_h x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QScrollArea_paintEngine cobj_x0

foreign import ccall "qtc_QScrollArea_paintEngine" qtc_QScrollArea_paintEngine :: Ptr (TQScrollArea a) -> IO (Ptr (TQPaintEngine ()))

instance QpaintEngine_h (QScrollAreaSc a) (()) where
 paintEngine_h x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QScrollArea_paintEngine cobj_x0

instance QsetHandler (QScrollArea ()) (QScrollArea x0 -> Bool -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QScrollArea10 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QScrollArea10_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QScrollArea_setHandler10 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQScrollArea x0) -> CBool -> IO ()
    setHandlerWrapper x0 x1
      = do x0obj <- qScrollAreaFromPtr x0
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

foreign import ccall "qtc_QScrollArea_setHandler10" qtc_QScrollArea_setHandler10 :: Ptr (TQScrollArea a) -> CWString -> Ptr (Ptr (TQScrollArea x0) -> CBool -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QScrollArea10 :: (Ptr (TQScrollArea x0) -> CBool -> IO ()) -> IO (FunPtr (Ptr (TQScrollArea x0) -> CBool -> IO ()))

foreign import ccall "wrapper" wrapSetHandler_QScrollArea10_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QScrollAreaSc a) (QScrollArea x0 -> Bool -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QScrollArea10 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QScrollArea10_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QScrollArea_setHandler10 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQScrollArea x0) -> CBool -> IO ()
    setHandlerWrapper x0 x1
      = do x0obj <- qScrollAreaFromPtr x0
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

instance QsetVisible_h (QScrollArea ()) ((Bool)) where
 setVisible_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QScrollArea_setVisible cobj_x0 (toCBool x1)

foreign import ccall "qtc_QScrollArea_setVisible" qtc_QScrollArea_setVisible :: Ptr (TQScrollArea a) -> CBool -> IO ()

instance QsetVisible_h (QScrollAreaSc a) ((Bool)) where
 setVisible_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QScrollArea_setVisible cobj_x0 (toCBool x1)

instance QshowEvent_h (QScrollArea ()) ((QShowEvent t1)) where
 showEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollArea_showEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QScrollArea_showEvent" qtc_QScrollArea_showEvent :: Ptr (TQScrollArea a) -> Ptr (TQShowEvent t1) -> IO ()

instance QshowEvent_h (QScrollAreaSc a) ((QShowEvent t1)) where
 showEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollArea_showEvent cobj_x0 cobj_x1

instance QtabletEvent_h (QScrollArea ()) ((QTabletEvent t1)) where
 tabletEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollArea_tabletEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QScrollArea_tabletEvent" qtc_QScrollArea_tabletEvent :: Ptr (TQScrollArea a) -> Ptr (TQTabletEvent t1) -> IO ()

instance QtabletEvent_h (QScrollAreaSc a) ((QTabletEvent t1)) where
 tabletEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollArea_tabletEvent cobj_x0 cobj_x1

