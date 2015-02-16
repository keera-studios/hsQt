{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QDateEdit_h.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:26
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QDateEdit_h where

import Foreign.C.Types
import Qtc.Enums.Base
import Qtc.Enums.Gui.QPaintDevice
import Qtc.Enums.Core.Qt
import Qtc.Enums.Gui.QAbstractSpinBox

import Qtc.Classes.Base
import Qtc.Classes.Qccs_h
import Qtc.Classes.Core_h
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core
import Qtc.Classes.Gui_h
import Qtc.ClassTypes.Gui
import Foreign.Marshal.Array

instance QunSetUserMethod (QDateEdit ()) where
 unSetUserMethod qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QDateEdit_unSetUserMethod cobj_qobj (toCInt 0) (toCInt evid)

foreign import ccall "qtc_QDateEdit_unSetUserMethod" qtc_QDateEdit_unSetUserMethod :: Ptr (TQDateEdit a) -> CInt -> CInt -> IO (CBool)

instance QunSetUserMethod (QDateEditSc a) where
 unSetUserMethod qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QDateEdit_unSetUserMethod cobj_qobj (toCInt 0) (toCInt evid)

instance QunSetUserMethodVariant (QDateEdit ()) where
 unSetUserMethodVariant qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QDateEdit_unSetUserMethod cobj_qobj (toCInt 1) (toCInt evid)

instance QunSetUserMethodVariant (QDateEditSc a) where
 unSetUserMethodVariant qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QDateEdit_unSetUserMethod cobj_qobj (toCInt 1) (toCInt evid)

instance QunSetUserMethodVariantList (QDateEdit ()) where
 unSetUserMethodVariantList qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QDateEdit_unSetUserMethod cobj_qobj (toCInt 2) (toCInt evid)

instance QunSetUserMethodVariantList (QDateEditSc a) where
 unSetUserMethodVariantList qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QDateEdit_unSetUserMethod cobj_qobj (toCInt 2) (toCInt evid)

instance QsetUserMethod (QDateEdit ()) (QDateEdit x0 -> IO ()) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethod_QDateEdit setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethod_QDateEdit_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QDateEdit_setUserMethod cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQDateEdit x0) -> IO ()
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

foreign import ccall "qtc_QDateEdit_setUserMethod" qtc_QDateEdit_setUserMethod :: Ptr (TQDateEdit a) -> CInt -> Ptr (Ptr (TQDateEdit x0) -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetUserMethod_QDateEdit :: (Ptr (TQDateEdit x0) -> IO ()) -> IO (FunPtr (Ptr (TQDateEdit x0) -> IO ()))

foreign import ccall "wrapper" wrapSetUserMethod_QDateEdit_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetUserMethod (QDateEditSc a) (QDateEdit x0 -> IO ()) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethod_QDateEdit setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethod_QDateEdit_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QDateEdit_setUserMethod cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQDateEdit x0) -> IO ()
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

instance QsetUserMethod (QDateEdit ()) (QDateEdit x0 -> QVariant () -> IO (QVariant ())) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethodVariant_QDateEdit setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethodVariant_QDateEdit_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QDateEdit_setUserMethodVariant cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQDateEdit x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))
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

foreign import ccall "qtc_QDateEdit_setUserMethodVariant" qtc_QDateEdit_setUserMethodVariant :: Ptr (TQDateEdit a) -> CInt -> Ptr (Ptr (TQDateEdit x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetUserMethodVariant_QDateEdit :: (Ptr (TQDateEdit x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))) -> IO (FunPtr (Ptr (TQDateEdit x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))))

foreign import ccall "wrapper" wrapSetUserMethodVariant_QDateEdit_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetUserMethod (QDateEditSc a) (QDateEdit x0 -> QVariant () -> IO (QVariant ())) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethodVariant_QDateEdit setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethodVariant_QDateEdit_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QDateEdit_setUserMethodVariant cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQDateEdit x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))
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

instance QunSetHandler (QDateEdit ()) where 
 unSetHandler qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withCWString evid $ \cstr_evid ->
    qtc_QDateEdit_unSetHandler cobj_qobj cstr_evid

foreign import ccall "qtc_QDateEdit_unSetHandler" qtc_QDateEdit_unSetHandler :: Ptr (TQDateEdit a) -> CWString -> IO (CBool)

instance QunSetHandler (QDateEditSc a) where 
 unSetHandler qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withCWString evid $ \cstr_evid ->
    qtc_QDateEdit_unSetHandler cobj_qobj cstr_evid

instance QsetHandler (QDateEdit ()) (QDateEdit x0 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QDateEdit1 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QDateEdit1_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QDateEdit_setHandler1 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQDateEdit x0) -> IO ()
    setHandlerWrapper x0
      = do x0obj <- qDateEditFromPtr x0
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

foreign import ccall "qtc_QDateEdit_setHandler1" qtc_QDateEdit_setHandler1 :: Ptr (TQDateEdit a) -> CWString -> Ptr (Ptr (TQDateEdit x0) -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QDateEdit1 :: (Ptr (TQDateEdit x0) -> IO ()) -> IO (FunPtr (Ptr (TQDateEdit x0) -> IO ()))

foreign import ccall "wrapper" wrapSetHandler_QDateEdit1_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QDateEditSc a) (QDateEdit x0 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QDateEdit1 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QDateEdit1_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QDateEdit_setHandler1 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQDateEdit x0) -> IO ()
    setHandlerWrapper x0
      = do x0obj <- qDateEditFromPtr x0
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

instance Qclear_h (QDateEdit ()) (()) where
 clear_h x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateEdit_clear cobj_x0

foreign import ccall "qtc_QDateEdit_clear" qtc_QDateEdit_clear :: Ptr (TQDateEdit a) -> IO ()

instance Qclear_h (QDateEditSc a) (()) where
 clear_h x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateEdit_clear cobj_x0

instance QsetHandler (QDateEdit ()) (QDateEdit x0 -> String -> IO (QDateTime t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QDateEdit2 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QDateEdit2_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QDateEdit_setHandler2 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQDateEdit x0) -> Ptr (TQString ()) -> IO (Ptr (TQDateTime t0))
    setHandlerWrapper x0 x1
      = do x0obj <- qDateEditFromPtr x0
           x1str <- stringFromPtr x1
           let rv =
                if (objectIsNull x0obj)
                 then return $ objectCast x0obj
                 else _handler x0obj x1str
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

foreign import ccall "qtc_QDateEdit_setHandler2" qtc_QDateEdit_setHandler2 :: Ptr (TQDateEdit a) -> CWString -> Ptr (Ptr (TQDateEdit x0) -> Ptr (TQString ()) -> IO (Ptr (TQDateTime t0))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QDateEdit2 :: (Ptr (TQDateEdit x0) -> Ptr (TQString ()) -> IO (Ptr (TQDateTime t0))) -> IO (FunPtr (Ptr (TQDateEdit x0) -> Ptr (TQString ()) -> IO (Ptr (TQDateTime t0))))

foreign import ccall "wrapper" wrapSetHandler_QDateEdit2_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QDateEditSc a) (QDateEdit x0 -> String -> IO (QDateTime t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QDateEdit2 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QDateEdit2_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QDateEdit_setHandler2 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQDateEdit x0) -> Ptr (TQString ()) -> IO (Ptr (TQDateTime t0))
    setHandlerWrapper x0 x1
      = do x0obj <- qDateEditFromPtr x0
           x1str <- stringFromPtr x1
           let rv =
                if (objectIsNull x0obj)
                 then return $ objectCast x0obj
                 else _handler x0obj x1str
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

instance QdateTimeFromText_h (QDateEdit ()) ((String)) where
 dateTimeFromText_h x0 (x1)
  = withQDateTimeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QDateEdit_dateTimeFromText cobj_x0 cstr_x1

foreign import ccall "qtc_QDateEdit_dateTimeFromText" qtc_QDateEdit_dateTimeFromText :: Ptr (TQDateEdit a) -> CWString -> IO (Ptr (TQDateTime ()))

instance QdateTimeFromText_h (QDateEditSc a) ((String)) where
 dateTimeFromText_h x0 (x1)
  = withQDateTimeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QDateEdit_dateTimeFromText cobj_x0 cstr_x1

instance QsetHandler (QDateEdit ()) (QDateEdit x0 -> QEvent t1 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QDateEdit3 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QDateEdit3_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QDateEdit_setHandler3 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQDateEdit x0) -> Ptr (TQEvent t1) -> IO (CBool)
    setHandlerWrapper x0 x1
      = do x0obj <- qDateEditFromPtr x0
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

foreign import ccall "qtc_QDateEdit_setHandler3" qtc_QDateEdit_setHandler3 :: Ptr (TQDateEdit a) -> CWString -> Ptr (Ptr (TQDateEdit x0) -> Ptr (TQEvent t1) -> IO (CBool)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QDateEdit3 :: (Ptr (TQDateEdit x0) -> Ptr (TQEvent t1) -> IO (CBool)) -> IO (FunPtr (Ptr (TQDateEdit x0) -> Ptr (TQEvent t1) -> IO (CBool)))

foreign import ccall "wrapper" wrapSetHandler_QDateEdit3_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QDateEditSc a) (QDateEdit x0 -> QEvent t1 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QDateEdit3 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QDateEdit3_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QDateEdit_setHandler3 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQDateEdit x0) -> Ptr (TQEvent t1) -> IO (CBool)
    setHandlerWrapper x0 x1
      = do x0obj <- qDateEditFromPtr x0
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

instance Qevent_h (QDateEdit ()) ((QEvent t1)) where
 event_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateEdit_event cobj_x0 cobj_x1

foreign import ccall "qtc_QDateEdit_event" qtc_QDateEdit_event :: Ptr (TQDateEdit a) -> Ptr (TQEvent t1) -> IO CBool

instance Qevent_h (QDateEditSc a) ((QEvent t1)) where
 event_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateEdit_event cobj_x0 cobj_x1

instance QsetHandler (QDateEdit ()) (QDateEdit x0 -> QEvent t1 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QDateEdit4 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QDateEdit4_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QDateEdit_setHandler4 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQDateEdit x0) -> Ptr (TQEvent t1) -> IO ()
    setHandlerWrapper x0 x1
      = do x0obj <- qDateEditFromPtr x0
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

foreign import ccall "qtc_QDateEdit_setHandler4" qtc_QDateEdit_setHandler4 :: Ptr (TQDateEdit a) -> CWString -> Ptr (Ptr (TQDateEdit x0) -> Ptr (TQEvent t1) -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QDateEdit4 :: (Ptr (TQDateEdit x0) -> Ptr (TQEvent t1) -> IO ()) -> IO (FunPtr (Ptr (TQDateEdit x0) -> Ptr (TQEvent t1) -> IO ()))

foreign import ccall "wrapper" wrapSetHandler_QDateEdit4_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QDateEditSc a) (QDateEdit x0 -> QEvent t1 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QDateEdit4 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QDateEdit4_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QDateEdit_setHandler4 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQDateEdit x0) -> Ptr (TQEvent t1) -> IO ()
    setHandlerWrapper x0 x1
      = do x0obj <- qDateEditFromPtr x0
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

instance QfocusInEvent_h (QDateEdit ()) ((QFocusEvent t1)) where
 focusInEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateEdit_focusInEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QDateEdit_focusInEvent" qtc_QDateEdit_focusInEvent :: Ptr (TQDateEdit a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusInEvent_h (QDateEditSc a) ((QFocusEvent t1)) where
 focusInEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateEdit_focusInEvent cobj_x0 cobj_x1

instance QkeyPressEvent_h (QDateEdit ()) ((QKeyEvent t1)) where
 keyPressEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateEdit_keyPressEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QDateEdit_keyPressEvent" qtc_QDateEdit_keyPressEvent :: Ptr (TQDateEdit a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyPressEvent_h (QDateEditSc a) ((QKeyEvent t1)) where
 keyPressEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateEdit_keyPressEvent cobj_x0 cobj_x1

instance QmousePressEvent_h (QDateEdit ()) ((QMouseEvent t1)) where
 mousePressEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateEdit_mousePressEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QDateEdit_mousePressEvent" qtc_QDateEdit_mousePressEvent :: Ptr (TQDateEdit a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmousePressEvent_h (QDateEditSc a) ((QMouseEvent t1)) where
 mousePressEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateEdit_mousePressEvent cobj_x0 cobj_x1

instance QpaintEvent_h (QDateEdit ()) ((QPaintEvent t1)) where
 paintEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateEdit_paintEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QDateEdit_paintEvent" qtc_QDateEdit_paintEvent :: Ptr (TQDateEdit a) -> Ptr (TQPaintEvent t1) -> IO ()

instance QpaintEvent_h (QDateEditSc a) ((QPaintEvent t1)) where
 paintEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateEdit_paintEvent cobj_x0 cobj_x1

instance QsetHandler (QDateEdit ()) (QDateEdit x0 -> IO (QSize t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QDateEdit5 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QDateEdit5_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QDateEdit_setHandler5 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQDateEdit x0) -> IO (Ptr (TQSize t0))
    setHandlerWrapper x0
      = do x0obj <- qDateEditFromPtr x0
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

foreign import ccall "qtc_QDateEdit_setHandler5" qtc_QDateEdit_setHandler5 :: Ptr (TQDateEdit a) -> CWString -> Ptr (Ptr (TQDateEdit x0) -> IO (Ptr (TQSize t0))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QDateEdit5 :: (Ptr (TQDateEdit x0) -> IO (Ptr (TQSize t0))) -> IO (FunPtr (Ptr (TQDateEdit x0) -> IO (Ptr (TQSize t0))))

foreign import ccall "wrapper" wrapSetHandler_QDateEdit5_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QDateEditSc a) (QDateEdit x0 -> IO (QSize t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QDateEdit5 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QDateEdit5_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QDateEdit_setHandler5 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQDateEdit x0) -> IO (Ptr (TQSize t0))
    setHandlerWrapper x0
      = do x0obj <- qDateEditFromPtr x0
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

instance QqsizeHint_h (QDateEdit ()) (()) where
 qsizeHint_h x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateEdit_sizeHint cobj_x0

foreign import ccall "qtc_QDateEdit_sizeHint" qtc_QDateEdit_sizeHint :: Ptr (TQDateEdit a) -> IO (Ptr (TQSize ()))

instance QqsizeHint_h (QDateEditSc a) (()) where
 qsizeHint_h x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateEdit_sizeHint cobj_x0

instance QsizeHint_h (QDateEdit ()) (()) where
 sizeHint_h x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateEdit_sizeHint_qth cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QDateEdit_sizeHint_qth" qtc_QDateEdit_sizeHint_qth :: Ptr (TQDateEdit a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QsizeHint_h (QDateEditSc a) (()) where
 sizeHint_h x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateEdit_sizeHint_qth cobj_x0 csize_ret_w csize_ret_h

instance QsetHandler (QDateEdit ()) (QDateEdit x0 -> Int -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QDateEdit6 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QDateEdit6_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QDateEdit_setHandler6 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQDateEdit x0) -> CInt -> IO ()
    setHandlerWrapper x0 x1
      = do x0obj <- qDateEditFromPtr x0
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

foreign import ccall "qtc_QDateEdit_setHandler6" qtc_QDateEdit_setHandler6 :: Ptr (TQDateEdit a) -> CWString -> Ptr (Ptr (TQDateEdit x0) -> CInt -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QDateEdit6 :: (Ptr (TQDateEdit x0) -> CInt -> IO ()) -> IO (FunPtr (Ptr (TQDateEdit x0) -> CInt -> IO ()))

foreign import ccall "wrapper" wrapSetHandler_QDateEdit6_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QDateEditSc a) (QDateEdit x0 -> Int -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QDateEdit6 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QDateEdit6_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QDateEdit_setHandler6 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQDateEdit x0) -> CInt -> IO ()
    setHandlerWrapper x0 x1
      = do x0obj <- qDateEditFromPtr x0
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

instance QstepBy_h (QDateEdit ()) ((Int)) where
 stepBy_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateEdit_stepBy cobj_x0 (toCInt x1)

foreign import ccall "qtc_QDateEdit_stepBy" qtc_QDateEdit_stepBy :: Ptr (TQDateEdit a) -> CInt -> IO ()

instance QstepBy_h (QDateEditSc a) ((Int)) where
 stepBy_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateEdit_stepBy cobj_x0 (toCInt x1)

instance QwheelEvent_h (QDateEdit ()) ((QWheelEvent t1)) where
 wheelEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateEdit_wheelEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QDateEdit_wheelEvent" qtc_QDateEdit_wheelEvent :: Ptr (TQDateEdit a) -> Ptr (TQWheelEvent t1) -> IO ()

instance QwheelEvent_h (QDateEditSc a) ((QWheelEvent t1)) where
 wheelEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateEdit_wheelEvent cobj_x0 cobj_x1

instance QchangeEvent_h (QDateEdit ()) ((QEvent t1)) where
 changeEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateEdit_changeEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QDateEdit_changeEvent" qtc_QDateEdit_changeEvent :: Ptr (TQDateEdit a) -> Ptr (TQEvent t1) -> IO ()

instance QchangeEvent_h (QDateEditSc a) ((QEvent t1)) where
 changeEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateEdit_changeEvent cobj_x0 cobj_x1

instance QcloseEvent_h (QDateEdit ()) ((QCloseEvent t1)) where
 closeEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateEdit_closeEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QDateEdit_closeEvent" qtc_QDateEdit_closeEvent :: Ptr (TQDateEdit a) -> Ptr (TQCloseEvent t1) -> IO ()

instance QcloseEvent_h (QDateEditSc a) ((QCloseEvent t1)) where
 closeEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateEdit_closeEvent cobj_x0 cobj_x1

instance QcontextMenuEvent_h (QDateEdit ()) ((QContextMenuEvent t1)) where
 contextMenuEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateEdit_contextMenuEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QDateEdit_contextMenuEvent" qtc_QDateEdit_contextMenuEvent :: Ptr (TQDateEdit a) -> Ptr (TQContextMenuEvent t1) -> IO ()

instance QcontextMenuEvent_h (QDateEditSc a) ((QContextMenuEvent t1)) where
 contextMenuEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateEdit_contextMenuEvent cobj_x0 cobj_x1

instance QfocusOutEvent_h (QDateEdit ()) ((QFocusEvent t1)) where
 focusOutEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateEdit_focusOutEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QDateEdit_focusOutEvent" qtc_QDateEdit_focusOutEvent :: Ptr (TQDateEdit a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusOutEvent_h (QDateEditSc a) ((QFocusEvent t1)) where
 focusOutEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateEdit_focusOutEvent cobj_x0 cobj_x1

instance QhideEvent_h (QDateEdit ()) ((QHideEvent t1)) where
 hideEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateEdit_hideEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QDateEdit_hideEvent" qtc_QDateEdit_hideEvent :: Ptr (TQDateEdit a) -> Ptr (TQHideEvent t1) -> IO ()

instance QhideEvent_h (QDateEditSc a) ((QHideEvent t1)) where
 hideEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateEdit_hideEvent cobj_x0 cobj_x1

instance QkeyReleaseEvent_h (QDateEdit ()) ((QKeyEvent t1)) where
 keyReleaseEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateEdit_keyReleaseEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QDateEdit_keyReleaseEvent" qtc_QDateEdit_keyReleaseEvent :: Ptr (TQDateEdit a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyReleaseEvent_h (QDateEditSc a) ((QKeyEvent t1)) where
 keyReleaseEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateEdit_keyReleaseEvent cobj_x0 cobj_x1

instance QqminimumSizeHint_h (QDateEdit ()) (()) where
 qminimumSizeHint_h x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateEdit_minimumSizeHint cobj_x0

foreign import ccall "qtc_QDateEdit_minimumSizeHint" qtc_QDateEdit_minimumSizeHint :: Ptr (TQDateEdit a) -> IO (Ptr (TQSize ()))

instance QqminimumSizeHint_h (QDateEditSc a) (()) where
 qminimumSizeHint_h x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateEdit_minimumSizeHint cobj_x0

instance QminimumSizeHint_h (QDateEdit ()) (()) where
 minimumSizeHint_h x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateEdit_minimumSizeHint_qth cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QDateEdit_minimumSizeHint_qth" qtc_QDateEdit_minimumSizeHint_qth :: Ptr (TQDateEdit a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QminimumSizeHint_h (QDateEditSc a) (()) where
 minimumSizeHint_h x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateEdit_minimumSizeHint_qth cobj_x0 csize_ret_w csize_ret_h

instance QmouseMoveEvent_h (QDateEdit ()) ((QMouseEvent t1)) where
 mouseMoveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateEdit_mouseMoveEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QDateEdit_mouseMoveEvent" qtc_QDateEdit_mouseMoveEvent :: Ptr (TQDateEdit a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseMoveEvent_h (QDateEditSc a) ((QMouseEvent t1)) where
 mouseMoveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateEdit_mouseMoveEvent cobj_x0 cobj_x1

instance QmouseReleaseEvent_h (QDateEdit ()) ((QMouseEvent t1)) where
 mouseReleaseEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateEdit_mouseReleaseEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QDateEdit_mouseReleaseEvent" qtc_QDateEdit_mouseReleaseEvent :: Ptr (TQDateEdit a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseReleaseEvent_h (QDateEditSc a) ((QMouseEvent t1)) where
 mouseReleaseEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateEdit_mouseReleaseEvent cobj_x0 cobj_x1

instance QresizeEvent_h (QDateEdit ()) ((QResizeEvent t1)) where
 resizeEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateEdit_resizeEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QDateEdit_resizeEvent" qtc_QDateEdit_resizeEvent :: Ptr (TQDateEdit a) -> Ptr (TQResizeEvent t1) -> IO ()

instance QresizeEvent_h (QDateEditSc a) ((QResizeEvent t1)) where
 resizeEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateEdit_resizeEvent cobj_x0 cobj_x1

instance QshowEvent_h (QDateEdit ()) ((QShowEvent t1)) where
 showEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateEdit_showEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QDateEdit_showEvent" qtc_QDateEdit_showEvent :: Ptr (TQDateEdit a) -> Ptr (TQShowEvent t1) -> IO ()

instance QshowEvent_h (QDateEditSc a) ((QShowEvent t1)) where
 showEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateEdit_showEvent cobj_x0 cobj_x1

instance QactionEvent_h (QDateEdit ()) ((QActionEvent t1)) where
 actionEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateEdit_actionEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QDateEdit_actionEvent" qtc_QDateEdit_actionEvent :: Ptr (TQDateEdit a) -> Ptr (TQActionEvent t1) -> IO ()

instance QactionEvent_h (QDateEditSc a) ((QActionEvent t1)) where
 actionEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateEdit_actionEvent cobj_x0 cobj_x1

instance QsetHandler (QDateEdit ()) (QDateEdit x0 -> IO (Int)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QDateEdit7 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QDateEdit7_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QDateEdit_setHandler7 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQDateEdit x0) -> IO (CInt)
    setHandlerWrapper x0
      = do x0obj <- qDateEditFromPtr x0
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

foreign import ccall "qtc_QDateEdit_setHandler7" qtc_QDateEdit_setHandler7 :: Ptr (TQDateEdit a) -> CWString -> Ptr (Ptr (TQDateEdit x0) -> IO (CInt)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QDateEdit7 :: (Ptr (TQDateEdit x0) -> IO (CInt)) -> IO (FunPtr (Ptr (TQDateEdit x0) -> IO (CInt)))

foreign import ccall "wrapper" wrapSetHandler_QDateEdit7_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QDateEditSc a) (QDateEdit x0 -> IO (Int)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QDateEdit7 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QDateEdit7_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QDateEdit_setHandler7 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQDateEdit x0) -> IO (CInt)
    setHandlerWrapper x0
      = do x0obj <- qDateEditFromPtr x0
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

instance QdevType_h (QDateEdit ()) (()) where
 devType_h x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateEdit_devType cobj_x0

foreign import ccall "qtc_QDateEdit_devType" qtc_QDateEdit_devType :: Ptr (TQDateEdit a) -> IO CInt

instance QdevType_h (QDateEditSc a) (()) where
 devType_h x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateEdit_devType cobj_x0

instance QdragEnterEvent_h (QDateEdit ()) ((QDragEnterEvent t1)) where
 dragEnterEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateEdit_dragEnterEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QDateEdit_dragEnterEvent" qtc_QDateEdit_dragEnterEvent :: Ptr (TQDateEdit a) -> Ptr (TQDragEnterEvent t1) -> IO ()

instance QdragEnterEvent_h (QDateEditSc a) ((QDragEnterEvent t1)) where
 dragEnterEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateEdit_dragEnterEvent cobj_x0 cobj_x1

instance QdragLeaveEvent_h (QDateEdit ()) ((QDragLeaveEvent t1)) where
 dragLeaveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateEdit_dragLeaveEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QDateEdit_dragLeaveEvent" qtc_QDateEdit_dragLeaveEvent :: Ptr (TQDateEdit a) -> Ptr (TQDragLeaveEvent t1) -> IO ()

instance QdragLeaveEvent_h (QDateEditSc a) ((QDragLeaveEvent t1)) where
 dragLeaveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateEdit_dragLeaveEvent cobj_x0 cobj_x1

instance QdragMoveEvent_h (QDateEdit ()) ((QDragMoveEvent t1)) where
 dragMoveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateEdit_dragMoveEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QDateEdit_dragMoveEvent" qtc_QDateEdit_dragMoveEvent :: Ptr (TQDateEdit a) -> Ptr (TQDragMoveEvent t1) -> IO ()

instance QdragMoveEvent_h (QDateEditSc a) ((QDragMoveEvent t1)) where
 dragMoveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateEdit_dragMoveEvent cobj_x0 cobj_x1

instance QdropEvent_h (QDateEdit ()) ((QDropEvent t1)) where
 dropEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateEdit_dropEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QDateEdit_dropEvent" qtc_QDateEdit_dropEvent :: Ptr (TQDateEdit a) -> Ptr (TQDropEvent t1) -> IO ()

instance QdropEvent_h (QDateEditSc a) ((QDropEvent t1)) where
 dropEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateEdit_dropEvent cobj_x0 cobj_x1

instance QenterEvent_h (QDateEdit ()) ((QEvent t1)) where
 enterEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateEdit_enterEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QDateEdit_enterEvent" qtc_QDateEdit_enterEvent :: Ptr (TQDateEdit a) -> Ptr (TQEvent t1) -> IO ()

instance QenterEvent_h (QDateEditSc a) ((QEvent t1)) where
 enterEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateEdit_enterEvent cobj_x0 cobj_x1

instance QsetHandler (QDateEdit ()) (QDateEdit x0 -> Int -> IO (Int)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QDateEdit8 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QDateEdit8_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QDateEdit_setHandler8 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQDateEdit x0) -> CInt -> IO (CInt)
    setHandlerWrapper x0 x1
      = do x0obj <- qDateEditFromPtr x0
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

foreign import ccall "qtc_QDateEdit_setHandler8" qtc_QDateEdit_setHandler8 :: Ptr (TQDateEdit a) -> CWString -> Ptr (Ptr (TQDateEdit x0) -> CInt -> IO (CInt)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QDateEdit8 :: (Ptr (TQDateEdit x0) -> CInt -> IO (CInt)) -> IO (FunPtr (Ptr (TQDateEdit x0) -> CInt -> IO (CInt)))

foreign import ccall "wrapper" wrapSetHandler_QDateEdit8_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QDateEditSc a) (QDateEdit x0 -> Int -> IO (Int)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QDateEdit8 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QDateEdit8_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QDateEdit_setHandler8 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQDateEdit x0) -> CInt -> IO (CInt)
    setHandlerWrapper x0 x1
      = do x0obj <- qDateEditFromPtr x0
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

instance QheightForWidth_h (QDateEdit ()) ((Int)) where
 heightForWidth_h x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateEdit_heightForWidth cobj_x0 (toCInt x1)

foreign import ccall "qtc_QDateEdit_heightForWidth" qtc_QDateEdit_heightForWidth :: Ptr (TQDateEdit a) -> CInt -> IO CInt

instance QheightForWidth_h (QDateEditSc a) ((Int)) where
 heightForWidth_h x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateEdit_heightForWidth cobj_x0 (toCInt x1)

instance QsetHandler (QDateEdit ()) (QDateEdit x0 -> InputMethodQuery -> IO (QVariant t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QDateEdit9 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QDateEdit9_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QDateEdit_setHandler9 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQDateEdit x0) -> CLong -> IO (Ptr (TQVariant t0))
    setHandlerWrapper x0 x1
      = do x0obj <- qDateEditFromPtr x0
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

foreign import ccall "qtc_QDateEdit_setHandler9" qtc_QDateEdit_setHandler9 :: Ptr (TQDateEdit a) -> CWString -> Ptr (Ptr (TQDateEdit x0) -> CLong -> IO (Ptr (TQVariant t0))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QDateEdit9 :: (Ptr (TQDateEdit x0) -> CLong -> IO (Ptr (TQVariant t0))) -> IO (FunPtr (Ptr (TQDateEdit x0) -> CLong -> IO (Ptr (TQVariant t0))))

foreign import ccall "wrapper" wrapSetHandler_QDateEdit9_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QDateEditSc a) (QDateEdit x0 -> InputMethodQuery -> IO (QVariant t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QDateEdit9 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QDateEdit9_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QDateEdit_setHandler9 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQDateEdit x0) -> CLong -> IO (Ptr (TQVariant t0))
    setHandlerWrapper x0 x1
      = do x0obj <- qDateEditFromPtr x0
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

instance QinputMethodQuery_h (QDateEdit ()) ((InputMethodQuery)) where
 inputMethodQuery_h x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateEdit_inputMethodQuery cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QDateEdit_inputMethodQuery" qtc_QDateEdit_inputMethodQuery :: Ptr (TQDateEdit a) -> CLong -> IO (Ptr (TQVariant ()))

instance QinputMethodQuery_h (QDateEditSc a) ((InputMethodQuery)) where
 inputMethodQuery_h x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateEdit_inputMethodQuery cobj_x0 (toCLong $ qEnum_toInt x1)

instance QleaveEvent_h (QDateEdit ()) ((QEvent t1)) where
 leaveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateEdit_leaveEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QDateEdit_leaveEvent" qtc_QDateEdit_leaveEvent :: Ptr (TQDateEdit a) -> Ptr (TQEvent t1) -> IO ()

instance QleaveEvent_h (QDateEditSc a) ((QEvent t1)) where
 leaveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateEdit_leaveEvent cobj_x0 cobj_x1

instance QmouseDoubleClickEvent_h (QDateEdit ()) ((QMouseEvent t1)) where
 mouseDoubleClickEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateEdit_mouseDoubleClickEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QDateEdit_mouseDoubleClickEvent" qtc_QDateEdit_mouseDoubleClickEvent :: Ptr (TQDateEdit a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseDoubleClickEvent_h (QDateEditSc a) ((QMouseEvent t1)) where
 mouseDoubleClickEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateEdit_mouseDoubleClickEvent cobj_x0 cobj_x1

instance QmoveEvent_h (QDateEdit ()) ((QMoveEvent t1)) where
 moveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateEdit_moveEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QDateEdit_moveEvent" qtc_QDateEdit_moveEvent :: Ptr (TQDateEdit a) -> Ptr (TQMoveEvent t1) -> IO ()

instance QmoveEvent_h (QDateEditSc a) ((QMoveEvent t1)) where
 moveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateEdit_moveEvent cobj_x0 cobj_x1

instance QsetHandler (QDateEdit ()) (QDateEdit x0 -> IO (QPaintEngine t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QDateEdit10 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QDateEdit10_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QDateEdit_setHandler10 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQDateEdit x0) -> IO (Ptr (TQPaintEngine t0))
    setHandlerWrapper x0
      = do x0obj <- qDateEditFromPtr x0
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

foreign import ccall "qtc_QDateEdit_setHandler10" qtc_QDateEdit_setHandler10 :: Ptr (TQDateEdit a) -> CWString -> Ptr (Ptr (TQDateEdit x0) -> IO (Ptr (TQPaintEngine t0))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QDateEdit10 :: (Ptr (TQDateEdit x0) -> IO (Ptr (TQPaintEngine t0))) -> IO (FunPtr (Ptr (TQDateEdit x0) -> IO (Ptr (TQPaintEngine t0))))

foreign import ccall "wrapper" wrapSetHandler_QDateEdit10_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QDateEditSc a) (QDateEdit x0 -> IO (QPaintEngine t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QDateEdit10 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QDateEdit10_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QDateEdit_setHandler10 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQDateEdit x0) -> IO (Ptr (TQPaintEngine t0))
    setHandlerWrapper x0
      = do x0obj <- qDateEditFromPtr x0
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

instance QpaintEngine_h (QDateEdit ()) (()) where
 paintEngine_h x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateEdit_paintEngine cobj_x0

foreign import ccall "qtc_QDateEdit_paintEngine" qtc_QDateEdit_paintEngine :: Ptr (TQDateEdit a) -> IO (Ptr (TQPaintEngine ()))

instance QpaintEngine_h (QDateEditSc a) (()) where
 paintEngine_h x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateEdit_paintEngine cobj_x0

instance QsetHandler (QDateEdit ()) (QDateEdit x0 -> Bool -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QDateEdit11 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QDateEdit11_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QDateEdit_setHandler11 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQDateEdit x0) -> CBool -> IO ()
    setHandlerWrapper x0 x1
      = do x0obj <- qDateEditFromPtr x0
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

foreign import ccall "qtc_QDateEdit_setHandler11" qtc_QDateEdit_setHandler11 :: Ptr (TQDateEdit a) -> CWString -> Ptr (Ptr (TQDateEdit x0) -> CBool -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QDateEdit11 :: (Ptr (TQDateEdit x0) -> CBool -> IO ()) -> IO (FunPtr (Ptr (TQDateEdit x0) -> CBool -> IO ()))

foreign import ccall "wrapper" wrapSetHandler_QDateEdit11_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QDateEditSc a) (QDateEdit x0 -> Bool -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QDateEdit11 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QDateEdit11_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QDateEdit_setHandler11 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQDateEdit x0) -> CBool -> IO ()
    setHandlerWrapper x0 x1
      = do x0obj <- qDateEditFromPtr x0
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

instance QsetVisible_h (QDateEdit ()) ((Bool)) where
 setVisible_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateEdit_setVisible cobj_x0 (toCBool x1)

foreign import ccall "qtc_QDateEdit_setVisible" qtc_QDateEdit_setVisible :: Ptr (TQDateEdit a) -> CBool -> IO ()

instance QsetVisible_h (QDateEditSc a) ((Bool)) where
 setVisible_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateEdit_setVisible cobj_x0 (toCBool x1)

instance QtabletEvent_h (QDateEdit ()) ((QTabletEvent t1)) where
 tabletEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateEdit_tabletEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QDateEdit_tabletEvent" qtc_QDateEdit_tabletEvent :: Ptr (TQDateEdit a) -> Ptr (TQTabletEvent t1) -> IO ()

instance QtabletEvent_h (QDateEditSc a) ((QTabletEvent t1)) where
 tabletEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateEdit_tabletEvent cobj_x0 cobj_x1

instance QsetHandler (QDateEdit ()) (QDateEdit x0 -> QObject t1 -> QEvent t2 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QDateEdit12 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QDateEdit12_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QDateEdit_setHandler12 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQDateEdit x0) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO (CBool)
    setHandlerWrapper x0 x1 x2
      = do x0obj <- qDateEditFromPtr x0
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

foreign import ccall "qtc_QDateEdit_setHandler12" qtc_QDateEdit_setHandler12 :: Ptr (TQDateEdit a) -> CWString -> Ptr (Ptr (TQDateEdit x0) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO (CBool)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QDateEdit12 :: (Ptr (TQDateEdit x0) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO (CBool)) -> IO (FunPtr (Ptr (TQDateEdit x0) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO (CBool)))

foreign import ccall "wrapper" wrapSetHandler_QDateEdit12_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QDateEditSc a) (QDateEdit x0 -> QObject t1 -> QEvent t2 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QDateEdit12 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QDateEdit12_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QDateEdit_setHandler12 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQDateEdit x0) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO (CBool)
    setHandlerWrapper x0 x1 x2
      = do x0obj <- qDateEditFromPtr x0
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

instance QeventFilter_h (QDateEdit ()) ((QObject t1, QEvent t2)) where
 eventFilter_h x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QDateEdit_eventFilter cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QDateEdit_eventFilter" qtc_QDateEdit_eventFilter :: Ptr (TQDateEdit a) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO CBool

instance QeventFilter_h (QDateEditSc a) ((QObject t1, QEvent t2)) where
 eventFilter_h x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QDateEdit_eventFilter cobj_x0 cobj_x1 cobj_x2

