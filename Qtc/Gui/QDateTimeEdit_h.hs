{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QDateTimeEdit_h.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:29
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QDateTimeEdit_h where

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

instance QunSetUserMethod (QDateTimeEdit ()) where
 unSetUserMethod qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QDateTimeEdit_unSetUserMethod cobj_qobj (toCInt 0) (toCInt evid)

foreign import ccall "qtc_QDateTimeEdit_unSetUserMethod" qtc_QDateTimeEdit_unSetUserMethod :: Ptr (TQDateTimeEdit a) -> CInt -> CInt -> IO (CBool)

instance QunSetUserMethod (QDateTimeEditSc a) where
 unSetUserMethod qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QDateTimeEdit_unSetUserMethod cobj_qobj (toCInt 0) (toCInt evid)

instance QunSetUserMethodVariant (QDateTimeEdit ()) where
 unSetUserMethodVariant qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QDateTimeEdit_unSetUserMethod cobj_qobj (toCInt 1) (toCInt evid)

instance QunSetUserMethodVariant (QDateTimeEditSc a) where
 unSetUserMethodVariant qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QDateTimeEdit_unSetUserMethod cobj_qobj (toCInt 1) (toCInt evid)

instance QunSetUserMethodVariantList (QDateTimeEdit ()) where
 unSetUserMethodVariantList qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QDateTimeEdit_unSetUserMethod cobj_qobj (toCInt 2) (toCInt evid)

instance QunSetUserMethodVariantList (QDateTimeEditSc a) where
 unSetUserMethodVariantList qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QDateTimeEdit_unSetUserMethod cobj_qobj (toCInt 2) (toCInt evid)

instance QsetUserMethod (QDateTimeEdit ()) (QDateTimeEdit x0 -> IO ()) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethod_QDateTimeEdit setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethod_QDateTimeEdit_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QDateTimeEdit_setUserMethod cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQDateTimeEdit x0) -> IO ()
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

foreign import ccall "qtc_QDateTimeEdit_setUserMethod" qtc_QDateTimeEdit_setUserMethod :: Ptr (TQDateTimeEdit a) -> CInt -> Ptr (Ptr (TQDateTimeEdit x0) -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetUserMethod_QDateTimeEdit :: (Ptr (TQDateTimeEdit x0) -> IO ()) -> IO (FunPtr (Ptr (TQDateTimeEdit x0) -> IO ()))

foreign import ccall "wrapper" wrapSetUserMethod_QDateTimeEdit_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetUserMethod (QDateTimeEditSc a) (QDateTimeEdit x0 -> IO ()) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethod_QDateTimeEdit setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethod_QDateTimeEdit_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QDateTimeEdit_setUserMethod cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQDateTimeEdit x0) -> IO ()
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

instance QsetUserMethod (QDateTimeEdit ()) (QDateTimeEdit x0 -> QVariant () -> IO (QVariant ())) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethodVariant_QDateTimeEdit setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethodVariant_QDateTimeEdit_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QDateTimeEdit_setUserMethodVariant cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQDateTimeEdit x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))
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

foreign import ccall "qtc_QDateTimeEdit_setUserMethodVariant" qtc_QDateTimeEdit_setUserMethodVariant :: Ptr (TQDateTimeEdit a) -> CInt -> Ptr (Ptr (TQDateTimeEdit x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetUserMethodVariant_QDateTimeEdit :: (Ptr (TQDateTimeEdit x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))) -> IO (FunPtr (Ptr (TQDateTimeEdit x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))))

foreign import ccall "wrapper" wrapSetUserMethodVariant_QDateTimeEdit_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetUserMethod (QDateTimeEditSc a) (QDateTimeEdit x0 -> QVariant () -> IO (QVariant ())) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethodVariant_QDateTimeEdit setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethodVariant_QDateTimeEdit_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QDateTimeEdit_setUserMethodVariant cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQDateTimeEdit x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))
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

instance QunSetHandler (QDateTimeEdit ()) where 
 unSetHandler qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withCWString evid $ \cstr_evid ->
    qtc_QDateTimeEdit_unSetHandler cobj_qobj cstr_evid

foreign import ccall "qtc_QDateTimeEdit_unSetHandler" qtc_QDateTimeEdit_unSetHandler :: Ptr (TQDateTimeEdit a) -> CWString -> IO (CBool)

instance QunSetHandler (QDateTimeEditSc a) where 
 unSetHandler qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withCWString evid $ \cstr_evid ->
    qtc_QDateTimeEdit_unSetHandler cobj_qobj cstr_evid

instance QsetHandler (QDateTimeEdit ()) (QDateTimeEdit x0 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QDateTimeEdit1 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QDateTimeEdit1_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QDateTimeEdit_setHandler1 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQDateTimeEdit x0) -> IO ()
    setHandlerWrapper x0
      = do x0obj <- qDateTimeEditFromPtr x0
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

foreign import ccall "qtc_QDateTimeEdit_setHandler1" qtc_QDateTimeEdit_setHandler1 :: Ptr (TQDateTimeEdit a) -> CWString -> Ptr (Ptr (TQDateTimeEdit x0) -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QDateTimeEdit1 :: (Ptr (TQDateTimeEdit x0) -> IO ()) -> IO (FunPtr (Ptr (TQDateTimeEdit x0) -> IO ()))

foreign import ccall "wrapper" wrapSetHandler_QDateTimeEdit1_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QDateTimeEditSc a) (QDateTimeEdit x0 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QDateTimeEdit1 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QDateTimeEdit1_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QDateTimeEdit_setHandler1 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQDateTimeEdit x0) -> IO ()
    setHandlerWrapper x0
      = do x0obj <- qDateTimeEditFromPtr x0
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

instance Qclear_h (QDateTimeEdit ()) (()) where
 clear_h x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateTimeEdit_clear cobj_x0

foreign import ccall "qtc_QDateTimeEdit_clear" qtc_QDateTimeEdit_clear :: Ptr (TQDateTimeEdit a) -> IO ()

instance Qclear_h (QDateTimeEditSc a) (()) where
 clear_h x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateTimeEdit_clear cobj_x0

instance QsetHandler (QDateTimeEdit ()) (QDateTimeEdit x0 -> String -> IO (QDateTime t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QDateTimeEdit2 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QDateTimeEdit2_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QDateTimeEdit_setHandler2 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQDateTimeEdit x0) -> Ptr (TQString ()) -> IO (Ptr (TQDateTime t0))
    setHandlerWrapper x0 x1
      = do x0obj <- qDateTimeEditFromPtr x0
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

foreign import ccall "qtc_QDateTimeEdit_setHandler2" qtc_QDateTimeEdit_setHandler2 :: Ptr (TQDateTimeEdit a) -> CWString -> Ptr (Ptr (TQDateTimeEdit x0) -> Ptr (TQString ()) -> IO (Ptr (TQDateTime t0))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QDateTimeEdit2 :: (Ptr (TQDateTimeEdit x0) -> Ptr (TQString ()) -> IO (Ptr (TQDateTime t0))) -> IO (FunPtr (Ptr (TQDateTimeEdit x0) -> Ptr (TQString ()) -> IO (Ptr (TQDateTime t0))))

foreign import ccall "wrapper" wrapSetHandler_QDateTimeEdit2_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QDateTimeEditSc a) (QDateTimeEdit x0 -> String -> IO (QDateTime t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QDateTimeEdit2 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QDateTimeEdit2_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QDateTimeEdit_setHandler2 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQDateTimeEdit x0) -> Ptr (TQString ()) -> IO (Ptr (TQDateTime t0))
    setHandlerWrapper x0 x1
      = do x0obj <- qDateTimeEditFromPtr x0
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

instance QdateTimeFromText_h (QDateTimeEdit ()) ((String)) where
 dateTimeFromText_h x0 (x1)
  = withQDateTimeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QDateTimeEdit_dateTimeFromText cobj_x0 cstr_x1

foreign import ccall "qtc_QDateTimeEdit_dateTimeFromText" qtc_QDateTimeEdit_dateTimeFromText :: Ptr (TQDateTimeEdit a) -> CWString -> IO (Ptr (TQDateTime ()))

instance QdateTimeFromText_h (QDateTimeEditSc a) ((String)) where
 dateTimeFromText_h x0 (x1)
  = withQDateTimeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QDateTimeEdit_dateTimeFromText cobj_x0 cstr_x1

instance QsetHandler (QDateTimeEdit ()) (QDateTimeEdit x0 -> QEvent t1 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QDateTimeEdit3 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QDateTimeEdit3_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QDateTimeEdit_setHandler3 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQDateTimeEdit x0) -> Ptr (TQEvent t1) -> IO (CBool)
    setHandlerWrapper x0 x1
      = do x0obj <- qDateTimeEditFromPtr x0
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

foreign import ccall "qtc_QDateTimeEdit_setHandler3" qtc_QDateTimeEdit_setHandler3 :: Ptr (TQDateTimeEdit a) -> CWString -> Ptr (Ptr (TQDateTimeEdit x0) -> Ptr (TQEvent t1) -> IO (CBool)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QDateTimeEdit3 :: (Ptr (TQDateTimeEdit x0) -> Ptr (TQEvent t1) -> IO (CBool)) -> IO (FunPtr (Ptr (TQDateTimeEdit x0) -> Ptr (TQEvent t1) -> IO (CBool)))

foreign import ccall "wrapper" wrapSetHandler_QDateTimeEdit3_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QDateTimeEditSc a) (QDateTimeEdit x0 -> QEvent t1 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QDateTimeEdit3 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QDateTimeEdit3_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QDateTimeEdit_setHandler3 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQDateTimeEdit x0) -> Ptr (TQEvent t1) -> IO (CBool)
    setHandlerWrapper x0 x1
      = do x0obj <- qDateTimeEditFromPtr x0
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

instance Qevent_h (QDateTimeEdit ()) ((QEvent t1)) where
 event_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateTimeEdit_event cobj_x0 cobj_x1

foreign import ccall "qtc_QDateTimeEdit_event" qtc_QDateTimeEdit_event :: Ptr (TQDateTimeEdit a) -> Ptr (TQEvent t1) -> IO CBool

instance Qevent_h (QDateTimeEditSc a) ((QEvent t1)) where
 event_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateTimeEdit_event cobj_x0 cobj_x1

instance QsetHandler (QDateTimeEdit ()) (QDateTimeEdit x0 -> QEvent t1 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QDateTimeEdit4 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QDateTimeEdit4_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QDateTimeEdit_setHandler4 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQDateTimeEdit x0) -> Ptr (TQEvent t1) -> IO ()
    setHandlerWrapper x0 x1
      = do x0obj <- qDateTimeEditFromPtr x0
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

foreign import ccall "qtc_QDateTimeEdit_setHandler4" qtc_QDateTimeEdit_setHandler4 :: Ptr (TQDateTimeEdit a) -> CWString -> Ptr (Ptr (TQDateTimeEdit x0) -> Ptr (TQEvent t1) -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QDateTimeEdit4 :: (Ptr (TQDateTimeEdit x0) -> Ptr (TQEvent t1) -> IO ()) -> IO (FunPtr (Ptr (TQDateTimeEdit x0) -> Ptr (TQEvent t1) -> IO ()))

foreign import ccall "wrapper" wrapSetHandler_QDateTimeEdit4_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QDateTimeEditSc a) (QDateTimeEdit x0 -> QEvent t1 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QDateTimeEdit4 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QDateTimeEdit4_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QDateTimeEdit_setHandler4 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQDateTimeEdit x0) -> Ptr (TQEvent t1) -> IO ()
    setHandlerWrapper x0 x1
      = do x0obj <- qDateTimeEditFromPtr x0
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

instance QfocusInEvent_h (QDateTimeEdit ()) ((QFocusEvent t1)) where
 focusInEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateTimeEdit_focusInEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QDateTimeEdit_focusInEvent" qtc_QDateTimeEdit_focusInEvent :: Ptr (TQDateTimeEdit a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusInEvent_h (QDateTimeEditSc a) ((QFocusEvent t1)) where
 focusInEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateTimeEdit_focusInEvent cobj_x0 cobj_x1

instance QkeyPressEvent_h (QDateTimeEdit ()) ((QKeyEvent t1)) where
 keyPressEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateTimeEdit_keyPressEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QDateTimeEdit_keyPressEvent" qtc_QDateTimeEdit_keyPressEvent :: Ptr (TQDateTimeEdit a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyPressEvent_h (QDateTimeEditSc a) ((QKeyEvent t1)) where
 keyPressEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateTimeEdit_keyPressEvent cobj_x0 cobj_x1

instance QmousePressEvent_h (QDateTimeEdit ()) ((QMouseEvent t1)) where
 mousePressEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateTimeEdit_mousePressEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QDateTimeEdit_mousePressEvent" qtc_QDateTimeEdit_mousePressEvent :: Ptr (TQDateTimeEdit a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmousePressEvent_h (QDateTimeEditSc a) ((QMouseEvent t1)) where
 mousePressEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateTimeEdit_mousePressEvent cobj_x0 cobj_x1

instance QpaintEvent_h (QDateTimeEdit ()) ((QPaintEvent t1)) where
 paintEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateTimeEdit_paintEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QDateTimeEdit_paintEvent" qtc_QDateTimeEdit_paintEvent :: Ptr (TQDateTimeEdit a) -> Ptr (TQPaintEvent t1) -> IO ()

instance QpaintEvent_h (QDateTimeEditSc a) ((QPaintEvent t1)) where
 paintEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateTimeEdit_paintEvent cobj_x0 cobj_x1

instance QsetHandler (QDateTimeEdit ()) (QDateTimeEdit x0 -> IO (QSize t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QDateTimeEdit5 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QDateTimeEdit5_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QDateTimeEdit_setHandler5 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQDateTimeEdit x0) -> IO (Ptr (TQSize t0))
    setHandlerWrapper x0
      = do x0obj <- qDateTimeEditFromPtr x0
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

foreign import ccall "qtc_QDateTimeEdit_setHandler5" qtc_QDateTimeEdit_setHandler5 :: Ptr (TQDateTimeEdit a) -> CWString -> Ptr (Ptr (TQDateTimeEdit x0) -> IO (Ptr (TQSize t0))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QDateTimeEdit5 :: (Ptr (TQDateTimeEdit x0) -> IO (Ptr (TQSize t0))) -> IO (FunPtr (Ptr (TQDateTimeEdit x0) -> IO (Ptr (TQSize t0))))

foreign import ccall "wrapper" wrapSetHandler_QDateTimeEdit5_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QDateTimeEditSc a) (QDateTimeEdit x0 -> IO (QSize t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QDateTimeEdit5 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QDateTimeEdit5_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QDateTimeEdit_setHandler5 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQDateTimeEdit x0) -> IO (Ptr (TQSize t0))
    setHandlerWrapper x0
      = do x0obj <- qDateTimeEditFromPtr x0
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

instance QqsizeHint_h (QDateTimeEdit ()) (()) where
 qsizeHint_h x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateTimeEdit_sizeHint cobj_x0

foreign import ccall "qtc_QDateTimeEdit_sizeHint" qtc_QDateTimeEdit_sizeHint :: Ptr (TQDateTimeEdit a) -> IO (Ptr (TQSize ()))

instance QqsizeHint_h (QDateTimeEditSc a) (()) where
 qsizeHint_h x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateTimeEdit_sizeHint cobj_x0

instance QsizeHint_h (QDateTimeEdit ()) (()) where
 sizeHint_h x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateTimeEdit_sizeHint_qth cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QDateTimeEdit_sizeHint_qth" qtc_QDateTimeEdit_sizeHint_qth :: Ptr (TQDateTimeEdit a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QsizeHint_h (QDateTimeEditSc a) (()) where
 sizeHint_h x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateTimeEdit_sizeHint_qth cobj_x0 csize_ret_w csize_ret_h

instance QsetHandler (QDateTimeEdit ()) (QDateTimeEdit x0 -> Int -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QDateTimeEdit6 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QDateTimeEdit6_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QDateTimeEdit_setHandler6 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQDateTimeEdit x0) -> CInt -> IO ()
    setHandlerWrapper x0 x1
      = do x0obj <- qDateTimeEditFromPtr x0
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

foreign import ccall "qtc_QDateTimeEdit_setHandler6" qtc_QDateTimeEdit_setHandler6 :: Ptr (TQDateTimeEdit a) -> CWString -> Ptr (Ptr (TQDateTimeEdit x0) -> CInt -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QDateTimeEdit6 :: (Ptr (TQDateTimeEdit x0) -> CInt -> IO ()) -> IO (FunPtr (Ptr (TQDateTimeEdit x0) -> CInt -> IO ()))

foreign import ccall "wrapper" wrapSetHandler_QDateTimeEdit6_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QDateTimeEditSc a) (QDateTimeEdit x0 -> Int -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QDateTimeEdit6 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QDateTimeEdit6_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QDateTimeEdit_setHandler6 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQDateTimeEdit x0) -> CInt -> IO ()
    setHandlerWrapper x0 x1
      = do x0obj <- qDateTimeEditFromPtr x0
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

instance QstepBy_h (QDateTimeEdit ()) ((Int)) where
 stepBy_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateTimeEdit_stepBy cobj_x0 (toCInt x1)

foreign import ccall "qtc_QDateTimeEdit_stepBy" qtc_QDateTimeEdit_stepBy :: Ptr (TQDateTimeEdit a) -> CInt -> IO ()

instance QstepBy_h (QDateTimeEditSc a) ((Int)) where
 stepBy_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateTimeEdit_stepBy cobj_x0 (toCInt x1)

instance QwheelEvent_h (QDateTimeEdit ()) ((QWheelEvent t1)) where
 wheelEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateTimeEdit_wheelEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QDateTimeEdit_wheelEvent" qtc_QDateTimeEdit_wheelEvent :: Ptr (TQDateTimeEdit a) -> Ptr (TQWheelEvent t1) -> IO ()

instance QwheelEvent_h (QDateTimeEditSc a) ((QWheelEvent t1)) where
 wheelEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateTimeEdit_wheelEvent cobj_x0 cobj_x1

instance QchangeEvent_h (QDateTimeEdit ()) ((QEvent t1)) where
 changeEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateTimeEdit_changeEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QDateTimeEdit_changeEvent" qtc_QDateTimeEdit_changeEvent :: Ptr (TQDateTimeEdit a) -> Ptr (TQEvent t1) -> IO ()

instance QchangeEvent_h (QDateTimeEditSc a) ((QEvent t1)) where
 changeEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateTimeEdit_changeEvent cobj_x0 cobj_x1

instance QcloseEvent_h (QDateTimeEdit ()) ((QCloseEvent t1)) where
 closeEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateTimeEdit_closeEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QDateTimeEdit_closeEvent" qtc_QDateTimeEdit_closeEvent :: Ptr (TQDateTimeEdit a) -> Ptr (TQCloseEvent t1) -> IO ()

instance QcloseEvent_h (QDateTimeEditSc a) ((QCloseEvent t1)) where
 closeEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateTimeEdit_closeEvent cobj_x0 cobj_x1

instance QcontextMenuEvent_h (QDateTimeEdit ()) ((QContextMenuEvent t1)) where
 contextMenuEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateTimeEdit_contextMenuEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QDateTimeEdit_contextMenuEvent" qtc_QDateTimeEdit_contextMenuEvent :: Ptr (TQDateTimeEdit a) -> Ptr (TQContextMenuEvent t1) -> IO ()

instance QcontextMenuEvent_h (QDateTimeEditSc a) ((QContextMenuEvent t1)) where
 contextMenuEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateTimeEdit_contextMenuEvent cobj_x0 cobj_x1

instance QfocusOutEvent_h (QDateTimeEdit ()) ((QFocusEvent t1)) where
 focusOutEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateTimeEdit_focusOutEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QDateTimeEdit_focusOutEvent" qtc_QDateTimeEdit_focusOutEvent :: Ptr (TQDateTimeEdit a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusOutEvent_h (QDateTimeEditSc a) ((QFocusEvent t1)) where
 focusOutEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateTimeEdit_focusOutEvent cobj_x0 cobj_x1

instance QhideEvent_h (QDateTimeEdit ()) ((QHideEvent t1)) where
 hideEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateTimeEdit_hideEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QDateTimeEdit_hideEvent" qtc_QDateTimeEdit_hideEvent :: Ptr (TQDateTimeEdit a) -> Ptr (TQHideEvent t1) -> IO ()

instance QhideEvent_h (QDateTimeEditSc a) ((QHideEvent t1)) where
 hideEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateTimeEdit_hideEvent cobj_x0 cobj_x1

instance QkeyReleaseEvent_h (QDateTimeEdit ()) ((QKeyEvent t1)) where
 keyReleaseEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateTimeEdit_keyReleaseEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QDateTimeEdit_keyReleaseEvent" qtc_QDateTimeEdit_keyReleaseEvent :: Ptr (TQDateTimeEdit a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyReleaseEvent_h (QDateTimeEditSc a) ((QKeyEvent t1)) where
 keyReleaseEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateTimeEdit_keyReleaseEvent cobj_x0 cobj_x1

instance QqminimumSizeHint_h (QDateTimeEdit ()) (()) where
 qminimumSizeHint_h x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateTimeEdit_minimumSizeHint cobj_x0

foreign import ccall "qtc_QDateTimeEdit_minimumSizeHint" qtc_QDateTimeEdit_minimumSizeHint :: Ptr (TQDateTimeEdit a) -> IO (Ptr (TQSize ()))

instance QqminimumSizeHint_h (QDateTimeEditSc a) (()) where
 qminimumSizeHint_h x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateTimeEdit_minimumSizeHint cobj_x0

instance QminimumSizeHint_h (QDateTimeEdit ()) (()) where
 minimumSizeHint_h x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateTimeEdit_minimumSizeHint_qth cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QDateTimeEdit_minimumSizeHint_qth" qtc_QDateTimeEdit_minimumSizeHint_qth :: Ptr (TQDateTimeEdit a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QminimumSizeHint_h (QDateTimeEditSc a) (()) where
 minimumSizeHint_h x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateTimeEdit_minimumSizeHint_qth cobj_x0 csize_ret_w csize_ret_h

instance QmouseMoveEvent_h (QDateTimeEdit ()) ((QMouseEvent t1)) where
 mouseMoveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateTimeEdit_mouseMoveEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QDateTimeEdit_mouseMoveEvent" qtc_QDateTimeEdit_mouseMoveEvent :: Ptr (TQDateTimeEdit a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseMoveEvent_h (QDateTimeEditSc a) ((QMouseEvent t1)) where
 mouseMoveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateTimeEdit_mouseMoveEvent cobj_x0 cobj_x1

instance QmouseReleaseEvent_h (QDateTimeEdit ()) ((QMouseEvent t1)) where
 mouseReleaseEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateTimeEdit_mouseReleaseEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QDateTimeEdit_mouseReleaseEvent" qtc_QDateTimeEdit_mouseReleaseEvent :: Ptr (TQDateTimeEdit a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseReleaseEvent_h (QDateTimeEditSc a) ((QMouseEvent t1)) where
 mouseReleaseEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateTimeEdit_mouseReleaseEvent cobj_x0 cobj_x1

instance QresizeEvent_h (QDateTimeEdit ()) ((QResizeEvent t1)) where
 resizeEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateTimeEdit_resizeEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QDateTimeEdit_resizeEvent" qtc_QDateTimeEdit_resizeEvent :: Ptr (TQDateTimeEdit a) -> Ptr (TQResizeEvent t1) -> IO ()

instance QresizeEvent_h (QDateTimeEditSc a) ((QResizeEvent t1)) where
 resizeEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateTimeEdit_resizeEvent cobj_x0 cobj_x1

instance QshowEvent_h (QDateTimeEdit ()) ((QShowEvent t1)) where
 showEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateTimeEdit_showEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QDateTimeEdit_showEvent" qtc_QDateTimeEdit_showEvent :: Ptr (TQDateTimeEdit a) -> Ptr (TQShowEvent t1) -> IO ()

instance QshowEvent_h (QDateTimeEditSc a) ((QShowEvent t1)) where
 showEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateTimeEdit_showEvent cobj_x0 cobj_x1

instance QactionEvent_h (QDateTimeEdit ()) ((QActionEvent t1)) where
 actionEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateTimeEdit_actionEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QDateTimeEdit_actionEvent" qtc_QDateTimeEdit_actionEvent :: Ptr (TQDateTimeEdit a) -> Ptr (TQActionEvent t1) -> IO ()

instance QactionEvent_h (QDateTimeEditSc a) ((QActionEvent t1)) where
 actionEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateTimeEdit_actionEvent cobj_x0 cobj_x1

instance QsetHandler (QDateTimeEdit ()) (QDateTimeEdit x0 -> IO (Int)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QDateTimeEdit7 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QDateTimeEdit7_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QDateTimeEdit_setHandler7 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQDateTimeEdit x0) -> IO (CInt)
    setHandlerWrapper x0
      = do x0obj <- qDateTimeEditFromPtr x0
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

foreign import ccall "qtc_QDateTimeEdit_setHandler7" qtc_QDateTimeEdit_setHandler7 :: Ptr (TQDateTimeEdit a) -> CWString -> Ptr (Ptr (TQDateTimeEdit x0) -> IO (CInt)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QDateTimeEdit7 :: (Ptr (TQDateTimeEdit x0) -> IO (CInt)) -> IO (FunPtr (Ptr (TQDateTimeEdit x0) -> IO (CInt)))

foreign import ccall "wrapper" wrapSetHandler_QDateTimeEdit7_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QDateTimeEditSc a) (QDateTimeEdit x0 -> IO (Int)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QDateTimeEdit7 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QDateTimeEdit7_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QDateTimeEdit_setHandler7 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQDateTimeEdit x0) -> IO (CInt)
    setHandlerWrapper x0
      = do x0obj <- qDateTimeEditFromPtr x0
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

instance QdevType_h (QDateTimeEdit ()) (()) where
 devType_h x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateTimeEdit_devType cobj_x0

foreign import ccall "qtc_QDateTimeEdit_devType" qtc_QDateTimeEdit_devType :: Ptr (TQDateTimeEdit a) -> IO CInt

instance QdevType_h (QDateTimeEditSc a) (()) where
 devType_h x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateTimeEdit_devType cobj_x0

instance QdragEnterEvent_h (QDateTimeEdit ()) ((QDragEnterEvent t1)) where
 dragEnterEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateTimeEdit_dragEnterEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QDateTimeEdit_dragEnterEvent" qtc_QDateTimeEdit_dragEnterEvent :: Ptr (TQDateTimeEdit a) -> Ptr (TQDragEnterEvent t1) -> IO ()

instance QdragEnterEvent_h (QDateTimeEditSc a) ((QDragEnterEvent t1)) where
 dragEnterEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateTimeEdit_dragEnterEvent cobj_x0 cobj_x1

instance QdragLeaveEvent_h (QDateTimeEdit ()) ((QDragLeaveEvent t1)) where
 dragLeaveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateTimeEdit_dragLeaveEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QDateTimeEdit_dragLeaveEvent" qtc_QDateTimeEdit_dragLeaveEvent :: Ptr (TQDateTimeEdit a) -> Ptr (TQDragLeaveEvent t1) -> IO ()

instance QdragLeaveEvent_h (QDateTimeEditSc a) ((QDragLeaveEvent t1)) where
 dragLeaveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateTimeEdit_dragLeaveEvent cobj_x0 cobj_x1

instance QdragMoveEvent_h (QDateTimeEdit ()) ((QDragMoveEvent t1)) where
 dragMoveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateTimeEdit_dragMoveEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QDateTimeEdit_dragMoveEvent" qtc_QDateTimeEdit_dragMoveEvent :: Ptr (TQDateTimeEdit a) -> Ptr (TQDragMoveEvent t1) -> IO ()

instance QdragMoveEvent_h (QDateTimeEditSc a) ((QDragMoveEvent t1)) where
 dragMoveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateTimeEdit_dragMoveEvent cobj_x0 cobj_x1

instance QdropEvent_h (QDateTimeEdit ()) ((QDropEvent t1)) where
 dropEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateTimeEdit_dropEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QDateTimeEdit_dropEvent" qtc_QDateTimeEdit_dropEvent :: Ptr (TQDateTimeEdit a) -> Ptr (TQDropEvent t1) -> IO ()

instance QdropEvent_h (QDateTimeEditSc a) ((QDropEvent t1)) where
 dropEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateTimeEdit_dropEvent cobj_x0 cobj_x1

instance QenterEvent_h (QDateTimeEdit ()) ((QEvent t1)) where
 enterEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateTimeEdit_enterEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QDateTimeEdit_enterEvent" qtc_QDateTimeEdit_enterEvent :: Ptr (TQDateTimeEdit a) -> Ptr (TQEvent t1) -> IO ()

instance QenterEvent_h (QDateTimeEditSc a) ((QEvent t1)) where
 enterEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateTimeEdit_enterEvent cobj_x0 cobj_x1

instance QsetHandler (QDateTimeEdit ()) (QDateTimeEdit x0 -> Int -> IO (Int)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QDateTimeEdit8 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QDateTimeEdit8_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QDateTimeEdit_setHandler8 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQDateTimeEdit x0) -> CInt -> IO (CInt)
    setHandlerWrapper x0 x1
      = do x0obj <- qDateTimeEditFromPtr x0
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

foreign import ccall "qtc_QDateTimeEdit_setHandler8" qtc_QDateTimeEdit_setHandler8 :: Ptr (TQDateTimeEdit a) -> CWString -> Ptr (Ptr (TQDateTimeEdit x0) -> CInt -> IO (CInt)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QDateTimeEdit8 :: (Ptr (TQDateTimeEdit x0) -> CInt -> IO (CInt)) -> IO (FunPtr (Ptr (TQDateTimeEdit x0) -> CInt -> IO (CInt)))

foreign import ccall "wrapper" wrapSetHandler_QDateTimeEdit8_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QDateTimeEditSc a) (QDateTimeEdit x0 -> Int -> IO (Int)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QDateTimeEdit8 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QDateTimeEdit8_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QDateTimeEdit_setHandler8 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQDateTimeEdit x0) -> CInt -> IO (CInt)
    setHandlerWrapper x0 x1
      = do x0obj <- qDateTimeEditFromPtr x0
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

instance QheightForWidth_h (QDateTimeEdit ()) ((Int)) where
 heightForWidth_h x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateTimeEdit_heightForWidth cobj_x0 (toCInt x1)

foreign import ccall "qtc_QDateTimeEdit_heightForWidth" qtc_QDateTimeEdit_heightForWidth :: Ptr (TQDateTimeEdit a) -> CInt -> IO CInt

instance QheightForWidth_h (QDateTimeEditSc a) ((Int)) where
 heightForWidth_h x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateTimeEdit_heightForWidth cobj_x0 (toCInt x1)

instance QsetHandler (QDateTimeEdit ()) (QDateTimeEdit x0 -> InputMethodQuery -> IO (QVariant t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QDateTimeEdit9 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QDateTimeEdit9_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QDateTimeEdit_setHandler9 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQDateTimeEdit x0) -> CLong -> IO (Ptr (TQVariant t0))
    setHandlerWrapper x0 x1
      = do x0obj <- qDateTimeEditFromPtr x0
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

foreign import ccall "qtc_QDateTimeEdit_setHandler9" qtc_QDateTimeEdit_setHandler9 :: Ptr (TQDateTimeEdit a) -> CWString -> Ptr (Ptr (TQDateTimeEdit x0) -> CLong -> IO (Ptr (TQVariant t0))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QDateTimeEdit9 :: (Ptr (TQDateTimeEdit x0) -> CLong -> IO (Ptr (TQVariant t0))) -> IO (FunPtr (Ptr (TQDateTimeEdit x0) -> CLong -> IO (Ptr (TQVariant t0))))

foreign import ccall "wrapper" wrapSetHandler_QDateTimeEdit9_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QDateTimeEditSc a) (QDateTimeEdit x0 -> InputMethodQuery -> IO (QVariant t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QDateTimeEdit9 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QDateTimeEdit9_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QDateTimeEdit_setHandler9 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQDateTimeEdit x0) -> CLong -> IO (Ptr (TQVariant t0))
    setHandlerWrapper x0 x1
      = do x0obj <- qDateTimeEditFromPtr x0
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

instance QinputMethodQuery_h (QDateTimeEdit ()) ((InputMethodQuery)) where
 inputMethodQuery_h x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateTimeEdit_inputMethodQuery cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QDateTimeEdit_inputMethodQuery" qtc_QDateTimeEdit_inputMethodQuery :: Ptr (TQDateTimeEdit a) -> CLong -> IO (Ptr (TQVariant ()))

instance QinputMethodQuery_h (QDateTimeEditSc a) ((InputMethodQuery)) where
 inputMethodQuery_h x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateTimeEdit_inputMethodQuery cobj_x0 (toCLong $ qEnum_toInt x1)

instance QleaveEvent_h (QDateTimeEdit ()) ((QEvent t1)) where
 leaveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateTimeEdit_leaveEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QDateTimeEdit_leaveEvent" qtc_QDateTimeEdit_leaveEvent :: Ptr (TQDateTimeEdit a) -> Ptr (TQEvent t1) -> IO ()

instance QleaveEvent_h (QDateTimeEditSc a) ((QEvent t1)) where
 leaveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateTimeEdit_leaveEvent cobj_x0 cobj_x1

instance QmouseDoubleClickEvent_h (QDateTimeEdit ()) ((QMouseEvent t1)) where
 mouseDoubleClickEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateTimeEdit_mouseDoubleClickEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QDateTimeEdit_mouseDoubleClickEvent" qtc_QDateTimeEdit_mouseDoubleClickEvent :: Ptr (TQDateTimeEdit a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseDoubleClickEvent_h (QDateTimeEditSc a) ((QMouseEvent t1)) where
 mouseDoubleClickEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateTimeEdit_mouseDoubleClickEvent cobj_x0 cobj_x1

instance QmoveEvent_h (QDateTimeEdit ()) ((QMoveEvent t1)) where
 moveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateTimeEdit_moveEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QDateTimeEdit_moveEvent" qtc_QDateTimeEdit_moveEvent :: Ptr (TQDateTimeEdit a) -> Ptr (TQMoveEvent t1) -> IO ()

instance QmoveEvent_h (QDateTimeEditSc a) ((QMoveEvent t1)) where
 moveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateTimeEdit_moveEvent cobj_x0 cobj_x1

instance QsetHandler (QDateTimeEdit ()) (QDateTimeEdit x0 -> IO (QPaintEngine t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QDateTimeEdit10 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QDateTimeEdit10_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QDateTimeEdit_setHandler10 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQDateTimeEdit x0) -> IO (Ptr (TQPaintEngine t0))
    setHandlerWrapper x0
      = do x0obj <- qDateTimeEditFromPtr x0
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

foreign import ccall "qtc_QDateTimeEdit_setHandler10" qtc_QDateTimeEdit_setHandler10 :: Ptr (TQDateTimeEdit a) -> CWString -> Ptr (Ptr (TQDateTimeEdit x0) -> IO (Ptr (TQPaintEngine t0))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QDateTimeEdit10 :: (Ptr (TQDateTimeEdit x0) -> IO (Ptr (TQPaintEngine t0))) -> IO (FunPtr (Ptr (TQDateTimeEdit x0) -> IO (Ptr (TQPaintEngine t0))))

foreign import ccall "wrapper" wrapSetHandler_QDateTimeEdit10_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QDateTimeEditSc a) (QDateTimeEdit x0 -> IO (QPaintEngine t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QDateTimeEdit10 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QDateTimeEdit10_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QDateTimeEdit_setHandler10 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQDateTimeEdit x0) -> IO (Ptr (TQPaintEngine t0))
    setHandlerWrapper x0
      = do x0obj <- qDateTimeEditFromPtr x0
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

instance QpaintEngine_h (QDateTimeEdit ()) (()) where
 paintEngine_h x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateTimeEdit_paintEngine cobj_x0

foreign import ccall "qtc_QDateTimeEdit_paintEngine" qtc_QDateTimeEdit_paintEngine :: Ptr (TQDateTimeEdit a) -> IO (Ptr (TQPaintEngine ()))

instance QpaintEngine_h (QDateTimeEditSc a) (()) where
 paintEngine_h x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateTimeEdit_paintEngine cobj_x0

instance QsetHandler (QDateTimeEdit ()) (QDateTimeEdit x0 -> Bool -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QDateTimeEdit11 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QDateTimeEdit11_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QDateTimeEdit_setHandler11 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQDateTimeEdit x0) -> CBool -> IO ()
    setHandlerWrapper x0 x1
      = do x0obj <- qDateTimeEditFromPtr x0
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

foreign import ccall "qtc_QDateTimeEdit_setHandler11" qtc_QDateTimeEdit_setHandler11 :: Ptr (TQDateTimeEdit a) -> CWString -> Ptr (Ptr (TQDateTimeEdit x0) -> CBool -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QDateTimeEdit11 :: (Ptr (TQDateTimeEdit x0) -> CBool -> IO ()) -> IO (FunPtr (Ptr (TQDateTimeEdit x0) -> CBool -> IO ()))

foreign import ccall "wrapper" wrapSetHandler_QDateTimeEdit11_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QDateTimeEditSc a) (QDateTimeEdit x0 -> Bool -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QDateTimeEdit11 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QDateTimeEdit11_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QDateTimeEdit_setHandler11 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQDateTimeEdit x0) -> CBool -> IO ()
    setHandlerWrapper x0 x1
      = do x0obj <- qDateTimeEditFromPtr x0
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

instance QsetVisible_h (QDateTimeEdit ()) ((Bool)) where
 setVisible_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateTimeEdit_setVisible cobj_x0 (toCBool x1)

foreign import ccall "qtc_QDateTimeEdit_setVisible" qtc_QDateTimeEdit_setVisible :: Ptr (TQDateTimeEdit a) -> CBool -> IO ()

instance QsetVisible_h (QDateTimeEditSc a) ((Bool)) where
 setVisible_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateTimeEdit_setVisible cobj_x0 (toCBool x1)

instance QtabletEvent_h (QDateTimeEdit ()) ((QTabletEvent t1)) where
 tabletEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateTimeEdit_tabletEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QDateTimeEdit_tabletEvent" qtc_QDateTimeEdit_tabletEvent :: Ptr (TQDateTimeEdit a) -> Ptr (TQTabletEvent t1) -> IO ()

instance QtabletEvent_h (QDateTimeEditSc a) ((QTabletEvent t1)) where
 tabletEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateTimeEdit_tabletEvent cobj_x0 cobj_x1

instance QsetHandler (QDateTimeEdit ()) (QDateTimeEdit x0 -> QObject t1 -> QEvent t2 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QDateTimeEdit12 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QDateTimeEdit12_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QDateTimeEdit_setHandler12 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQDateTimeEdit x0) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO (CBool)
    setHandlerWrapper x0 x1 x2
      = do x0obj <- qDateTimeEditFromPtr x0
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

foreign import ccall "qtc_QDateTimeEdit_setHandler12" qtc_QDateTimeEdit_setHandler12 :: Ptr (TQDateTimeEdit a) -> CWString -> Ptr (Ptr (TQDateTimeEdit x0) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO (CBool)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QDateTimeEdit12 :: (Ptr (TQDateTimeEdit x0) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO (CBool)) -> IO (FunPtr (Ptr (TQDateTimeEdit x0) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO (CBool)))

foreign import ccall "wrapper" wrapSetHandler_QDateTimeEdit12_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QDateTimeEditSc a) (QDateTimeEdit x0 -> QObject t1 -> QEvent t2 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QDateTimeEdit12 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QDateTimeEdit12_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QDateTimeEdit_setHandler12 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQDateTimeEdit x0) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO (CBool)
    setHandlerWrapper x0 x1 x2
      = do x0obj <- qDateTimeEditFromPtr x0
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

instance QeventFilter_h (QDateTimeEdit ()) ((QObject t1, QEvent t2)) where
 eventFilter_h x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QDateTimeEdit_eventFilter cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QDateTimeEdit_eventFilter" qtc_QDateTimeEdit_eventFilter :: Ptr (TQDateTimeEdit a) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO CBool

instance QeventFilter_h (QDateTimeEditSc a) ((QObject t1, QEvent t2)) where
 eventFilter_h x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QDateTimeEdit_eventFilter cobj_x0 cobj_x1 cobj_x2

