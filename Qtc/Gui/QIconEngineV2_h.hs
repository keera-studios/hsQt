{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QIconEngineV2_h.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:22
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QIconEngineV2_h (
  Qkey_h(..)
  ) where

import Foreign.C.Types
import Qtc.Enums.Base
import Qtc.Enums.Gui.QIcon

import Qtc.Classes.Base
import Qtc.Classes.Qccs_h
import Qtc.Classes.Core_h
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core
import Qtc.Classes.Gui_h
import Qtc.ClassTypes.Gui
import Foreign.Marshal.Array

instance QunSetUserMethod (QIconEngineV2 ()) where
 unSetUserMethod qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QIconEngineV2_unSetUserMethod cobj_qobj (toCInt 0) (toCInt evid)

foreign import ccall "qtc_QIconEngineV2_unSetUserMethod" qtc_QIconEngineV2_unSetUserMethod :: Ptr (TQIconEngineV2 a) -> CInt -> CInt -> IO (CBool)

instance QunSetUserMethod (QIconEngineV2Sc a) where
 unSetUserMethod qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QIconEngineV2_unSetUserMethod cobj_qobj (toCInt 0) (toCInt evid)

instance QunSetUserMethodVariant (QIconEngineV2 ()) where
 unSetUserMethodVariant qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QIconEngineV2_unSetUserMethod cobj_qobj (toCInt 1) (toCInt evid)

instance QunSetUserMethodVariant (QIconEngineV2Sc a) where
 unSetUserMethodVariant qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QIconEngineV2_unSetUserMethod cobj_qobj (toCInt 1) (toCInt evid)

instance QunSetUserMethodVariantList (QIconEngineV2 ()) where
 unSetUserMethodVariantList qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QIconEngineV2_unSetUserMethod cobj_qobj (toCInt 2) (toCInt evid)

instance QunSetUserMethodVariantList (QIconEngineV2Sc a) where
 unSetUserMethodVariantList qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QIconEngineV2_unSetUserMethod cobj_qobj (toCInt 2) (toCInt evid)

instance QsetUserMethod (QIconEngineV2 ()) (QIconEngineV2 x0 -> IO ()) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethod_QIconEngineV2 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethod_QIconEngineV2_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QIconEngineV2_setUserMethod cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQIconEngineV2 x0) -> IO ()
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

foreign import ccall "qtc_QIconEngineV2_setUserMethod" qtc_QIconEngineV2_setUserMethod :: Ptr (TQIconEngineV2 a) -> CInt -> Ptr (Ptr (TQIconEngineV2 x0) -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetUserMethod_QIconEngineV2 :: (Ptr (TQIconEngineV2 x0) -> IO ()) -> IO (FunPtr (Ptr (TQIconEngineV2 x0) -> IO ()))

foreign import ccall "wrapper" wrapSetUserMethod_QIconEngineV2_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetUserMethod (QIconEngineV2Sc a) (QIconEngineV2 x0 -> IO ()) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethod_QIconEngineV2 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethod_QIconEngineV2_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QIconEngineV2_setUserMethod cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQIconEngineV2 x0) -> IO ()
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

instance QsetUserMethod (QIconEngineV2 ()) (QIconEngineV2 x0 -> QVariant () -> IO (QVariant ())) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethodVariant_QIconEngineV2 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethodVariant_QIconEngineV2_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QIconEngineV2_setUserMethodVariant cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQIconEngineV2 x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))
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

foreign import ccall "qtc_QIconEngineV2_setUserMethodVariant" qtc_QIconEngineV2_setUserMethodVariant :: Ptr (TQIconEngineV2 a) -> CInt -> Ptr (Ptr (TQIconEngineV2 x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetUserMethodVariant_QIconEngineV2 :: (Ptr (TQIconEngineV2 x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))) -> IO (FunPtr (Ptr (TQIconEngineV2 x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))))

foreign import ccall "wrapper" wrapSetUserMethodVariant_QIconEngineV2_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetUserMethod (QIconEngineV2Sc a) (QIconEngineV2 x0 -> QVariant () -> IO (QVariant ())) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethodVariant_QIconEngineV2 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethodVariant_QIconEngineV2_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QIconEngineV2_setUserMethodVariant cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQIconEngineV2 x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))
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

instance QunSetHandler (QIconEngineV2 ()) where 
 unSetHandler qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withCWString evid $ \cstr_evid ->
    qtc_QIconEngineV2_unSetHandler cobj_qobj cstr_evid

foreign import ccall "qtc_QIconEngineV2_unSetHandler" qtc_QIconEngineV2_unSetHandler :: Ptr (TQIconEngineV2 a) -> CWString -> IO (CBool)

instance QunSetHandler (QIconEngineV2Sc a) where 
 unSetHandler qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withCWString evid $ \cstr_evid ->
    qtc_QIconEngineV2_unSetHandler cobj_qobj cstr_evid

instance QsetHandler (QIconEngineV2 ()) (QIconEngineV2 x0 -> IO (QIconEngine t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QIconEngineV21 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QIconEngineV21_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QIconEngineV2_setHandler1 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQIconEngineV2 x0) -> IO (Ptr (TQIconEngine t0))
    setHandlerWrapper x0
      = do x0obj <- objectFromPtr_nf x0
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

foreign import ccall "qtc_QIconEngineV2_setHandler1" qtc_QIconEngineV2_setHandler1 :: Ptr (TQIconEngineV2 a) -> CWString -> Ptr (Ptr (TQIconEngineV2 x0) -> IO (Ptr (TQIconEngine t0))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QIconEngineV21 :: (Ptr (TQIconEngineV2 x0) -> IO (Ptr (TQIconEngine t0))) -> IO (FunPtr (Ptr (TQIconEngineV2 x0) -> IO (Ptr (TQIconEngine t0))))

foreign import ccall "wrapper" wrapSetHandler_QIconEngineV21_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QIconEngineV2Sc a) (QIconEngineV2 x0 -> IO (QIconEngine t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QIconEngineV21 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QIconEngineV21_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QIconEngineV2_setHandler1 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQIconEngineV2 x0) -> IO (Ptr (TQIconEngine t0))
    setHandlerWrapper x0
      = do x0obj <- objectFromPtr_nf x0
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

instance Qclone_h (QIconEngineV2 ()) (()) (IO (QIconEngineV2 ())) where
 clone_h x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QIconEngineV2_clone cobj_x0

foreign import ccall "qtc_QIconEngineV2_clone" qtc_QIconEngineV2_clone :: Ptr (TQIconEngineV2 a) -> IO (Ptr (TQIconEngineV2 ()))

instance Qclone_h (QIconEngineV2Sc a) (()) (IO (QIconEngineV2 ())) where
 clone_h x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QIconEngineV2_clone cobj_x0

instance QsetHandler (QIconEngineV2 ()) (QIconEngineV2 x0 -> IO (String)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QIconEngineV22 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QIconEngineV22_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QIconEngineV2_setHandler2 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQIconEngineV2 x0) -> IO (CWString)
    setHandlerWrapper x0
      = do x0obj <- objectFromPtr_nf x0
           let rv =
                if (objectIsNull x0obj)
                 then return ("")
                 else _handler x0obj
           rvf <- rv
           withCWString rvf $ \cstr_rvf -> return (cstr_rvf)

    setHandlerWrapper_d :: Ptr fun -> Ptr () -> Ptr fun_d -> IO ()
    setHandlerWrapper_d funptr stptr funptr_d
      = do when (stptr/=ptrNull)
            (freeStablePtr (castPtrToStablePtr stptr))
           when (funptr/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr))
           when (funptr_d/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr_d))
           return ()

foreign import ccall "qtc_QIconEngineV2_setHandler2" qtc_QIconEngineV2_setHandler2 :: Ptr (TQIconEngineV2 a) -> CWString -> Ptr (Ptr (TQIconEngineV2 x0) -> IO (CWString)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QIconEngineV22 :: (Ptr (TQIconEngineV2 x0) -> IO (CWString)) -> IO (FunPtr (Ptr (TQIconEngineV2 x0) -> IO (CWString)))

foreign import ccall "wrapper" wrapSetHandler_QIconEngineV22_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QIconEngineV2Sc a) (QIconEngineV2 x0 -> IO (String)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QIconEngineV22 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QIconEngineV22_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QIconEngineV2_setHandler2 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQIconEngineV2 x0) -> IO (CWString)
    setHandlerWrapper x0
      = do x0obj <- objectFromPtr_nf x0
           let rv =
                if (objectIsNull x0obj)
                 then return ("")
                 else _handler x0obj
           rvf <- rv
           withCWString rvf $ \cstr_rvf -> return (cstr_rvf)

    setHandlerWrapper_d :: Ptr fun -> Ptr () -> Ptr fun_d -> IO ()
    setHandlerWrapper_d funptr stptr funptr_d
      = do when (stptr/=ptrNull)
            (freeStablePtr (castPtrToStablePtr stptr))
           when (funptr/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr))
           when (funptr_d/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr_d))
           return ()

class Qkey_h x0 x1 where
 key_h :: x0 -> x1 -> IO (String)

instance Qkey_h (QIconEngineV2 ()) (()) where
 key_h x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QIconEngineV2_key cobj_x0

foreign import ccall "qtc_QIconEngineV2_key" qtc_QIconEngineV2_key :: Ptr (TQIconEngineV2 a) -> IO (Ptr (TQString ()))

instance Qkey_h (QIconEngineV2Sc a) (()) where
 key_h x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QIconEngineV2_key cobj_x0

instance QsetHandler (QIconEngineV2 ()) (QIconEngineV2 x0 -> QSize t1 -> QIconMode -> QIconState -> IO (QSize t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QIconEngineV23 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QIconEngineV23_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QIconEngineV2_setHandler3 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQIconEngineV2 x0) -> Ptr (TQSize t1) -> CLong -> CLong -> IO (Ptr (TQSize t0))
    setHandlerWrapper x0 x1 x2 x3
      = do x0obj <- objectFromPtr_nf x0
           x1obj <- objectFromPtr_nf x1
           let x2enum = qEnum_fromInt $ fromCLong x2
           let x3enum = qEnum_fromInt $ fromCLong x3
           let rv =
                if (objectIsNull x0obj)
                 then return $ objectCast x0obj
                 else _handler x0obj x1obj x2enum x3enum
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

foreign import ccall "qtc_QIconEngineV2_setHandler3" qtc_QIconEngineV2_setHandler3 :: Ptr (TQIconEngineV2 a) -> CWString -> Ptr (Ptr (TQIconEngineV2 x0) -> Ptr (TQSize t1) -> CLong -> CLong -> IO (Ptr (TQSize t0))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QIconEngineV23 :: (Ptr (TQIconEngineV2 x0) -> Ptr (TQSize t1) -> CLong -> CLong -> IO (Ptr (TQSize t0))) -> IO (FunPtr (Ptr (TQIconEngineV2 x0) -> Ptr (TQSize t1) -> CLong -> CLong -> IO (Ptr (TQSize t0))))

foreign import ccall "wrapper" wrapSetHandler_QIconEngineV23_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QIconEngineV2Sc a) (QIconEngineV2 x0 -> QSize t1 -> QIconMode -> QIconState -> IO (QSize t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QIconEngineV23 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QIconEngineV23_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QIconEngineV2_setHandler3 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQIconEngineV2 x0) -> Ptr (TQSize t1) -> CLong -> CLong -> IO (Ptr (TQSize t0))
    setHandlerWrapper x0 x1 x2 x3
      = do x0obj <- objectFromPtr_nf x0
           x1obj <- objectFromPtr_nf x1
           let x2enum = qEnum_fromInt $ fromCLong x2
           let x3enum = qEnum_fromInt $ fromCLong x3
           let rv =
                if (objectIsNull x0obj)
                 then return $ objectCast x0obj
                 else _handler x0obj x1obj x2enum x3enum
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

instance QqactualSize_h (QIconEngineV2 ()) ((QSize t1, QIconMode, QIconState)) where
 qactualSize_h x0 (x1, x2, x3)
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QIconEngineV2_actualSize cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2) (toCLong $ qEnum_toInt x3)

foreign import ccall "qtc_QIconEngineV2_actualSize" qtc_QIconEngineV2_actualSize :: Ptr (TQIconEngineV2 a) -> Ptr (TQSize t1) -> CLong -> CLong -> IO (Ptr (TQSize ()))

instance QqactualSize_h (QIconEngineV2Sc a) ((QSize t1, QIconMode, QIconState)) where
 qactualSize_h x0 (x1, x2, x3)
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QIconEngineV2_actualSize cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2) (toCLong $ qEnum_toInt x3)

instance QactualSize_h (QIconEngineV2 ()) ((Size, QIconMode, QIconState)) where
 actualSize_h x0 (x1, x2, x3)
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QIconEngineV2_actualSize_qth cobj_x0 csize_x1_w csize_x1_h  (toCLong $ qEnum_toInt x2) (toCLong $ qEnum_toInt x3) csize_ret_w csize_ret_h

foreign import ccall "qtc_QIconEngineV2_actualSize_qth" qtc_QIconEngineV2_actualSize_qth :: Ptr (TQIconEngineV2 a) -> CInt -> CInt -> CLong -> CLong -> Ptr CInt -> Ptr CInt -> IO ()

instance QactualSize_h (QIconEngineV2Sc a) ((Size, QIconMode, QIconState)) where
 actualSize_h x0 (x1, x2, x3)
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QIconEngineV2_actualSize_qth cobj_x0 csize_x1_w csize_x1_h  (toCLong $ qEnum_toInt x2) (toCLong $ qEnum_toInt x3) csize_ret_w csize_ret_h

instance QsetHandler (QIconEngineV2 ()) (QIconEngineV2 x0 -> String -> QSize t2 -> QIconMode -> QIconState -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QIconEngineV24 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QIconEngineV24_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QIconEngineV2_setHandler4 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQIconEngineV2 x0) -> Ptr (TQString ()) -> Ptr (TQSize t2) -> CLong -> CLong -> IO ()
    setHandlerWrapper x0 x1 x2 x3 x4
      = do x0obj <- objectFromPtr_nf x0
           x1str <- stringFromPtr x1
           x2obj <- objectFromPtr_nf x2
           let x3enum = qEnum_fromInt $ fromCLong x3
           let x4enum = qEnum_fromInt $ fromCLong x4
           if (objectIsNull x0obj)
            then return ()
            else _handler x0obj x1str x2obj x3enum x4enum

    setHandlerWrapper_d :: Ptr fun -> Ptr () -> Ptr fun_d -> IO ()
    setHandlerWrapper_d funptr stptr funptr_d
      = do when (stptr/=ptrNull)
            (freeStablePtr (castPtrToStablePtr stptr))
           when (funptr/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr))
           when (funptr_d/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr_d))
           return ()

foreign import ccall "qtc_QIconEngineV2_setHandler4" qtc_QIconEngineV2_setHandler4 :: Ptr (TQIconEngineV2 a) -> CWString -> Ptr (Ptr (TQIconEngineV2 x0) -> Ptr (TQString ()) -> Ptr (TQSize t2) -> CLong -> CLong -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QIconEngineV24 :: (Ptr (TQIconEngineV2 x0) -> Ptr (TQString ()) -> Ptr (TQSize t2) -> CLong -> CLong -> IO ()) -> IO (FunPtr (Ptr (TQIconEngineV2 x0) -> Ptr (TQString ()) -> Ptr (TQSize t2) -> CLong -> CLong -> IO ()))

foreign import ccall "wrapper" wrapSetHandler_QIconEngineV24_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QIconEngineV2Sc a) (QIconEngineV2 x0 -> String -> QSize t2 -> QIconMode -> QIconState -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QIconEngineV24 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QIconEngineV24_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QIconEngineV2_setHandler4 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQIconEngineV2 x0) -> Ptr (TQString ()) -> Ptr (TQSize t2) -> CLong -> CLong -> IO ()
    setHandlerWrapper x0 x1 x2 x3 x4
      = do x0obj <- objectFromPtr_nf x0
           x1str <- stringFromPtr x1
           x2obj <- objectFromPtr_nf x2
           let x3enum = qEnum_fromInt $ fromCLong x3
           let x4enum = qEnum_fromInt $ fromCLong x4
           if (objectIsNull x0obj)
            then return ()
            else _handler x0obj x1str x2obj x3enum x4enum

    setHandlerWrapper_d :: Ptr fun -> Ptr () -> Ptr fun_d -> IO ()
    setHandlerWrapper_d funptr stptr funptr_d
      = do when (stptr/=ptrNull)
            (freeStablePtr (castPtrToStablePtr stptr))
           when (funptr/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr))
           when (funptr_d/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr_d))
           return ()

instance QqaddFile_h (QIconEngineV2 ()) ((String, QSize t2, QIconMode, QIconState)) where
 qaddFile_h x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QIconEngineV2_addFile cobj_x0 cstr_x1 cobj_x2 (toCLong $ qEnum_toInt x3) (toCLong $ qEnum_toInt x4)

foreign import ccall "qtc_QIconEngineV2_addFile" qtc_QIconEngineV2_addFile :: Ptr (TQIconEngineV2 a) -> CWString -> Ptr (TQSize t2) -> CLong -> CLong -> IO ()

instance QqaddFile_h (QIconEngineV2Sc a) ((String, QSize t2, QIconMode, QIconState)) where
 qaddFile_h x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QIconEngineV2_addFile cobj_x0 cstr_x1 cobj_x2 (toCLong $ qEnum_toInt x3) (toCLong $ qEnum_toInt x4)

instance QaddFile_h (QIconEngineV2 ()) ((String, Size, QIconMode, QIconState)) where
 addFile_h x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    withCSize x2 $ \csize_x2_w csize_x2_h -> 
    qtc_QIconEngineV2_addFile_qth cobj_x0 cstr_x1 csize_x2_w csize_x2_h  (toCLong $ qEnum_toInt x3) (toCLong $ qEnum_toInt x4)

foreign import ccall "qtc_QIconEngineV2_addFile_qth" qtc_QIconEngineV2_addFile_qth :: Ptr (TQIconEngineV2 a) -> CWString -> CInt -> CInt -> CLong -> CLong -> IO ()

instance QaddFile_h (QIconEngineV2Sc a) ((String, Size, QIconMode, QIconState)) where
 addFile_h x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    withCSize x2 $ \csize_x2_w csize_x2_h -> 
    qtc_QIconEngineV2_addFile_qth cobj_x0 cstr_x1 csize_x2_w csize_x2_h  (toCLong $ qEnum_toInt x3) (toCLong $ qEnum_toInt x4)

instance QsetHandler (QIconEngineV2 ()) (QIconEngineV2 x0 -> QPaintDevice t1 -> QIconMode -> QIconState -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QIconEngineV25 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QIconEngineV25_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QIconEngineV2_setHandler5 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQIconEngineV2 x0) -> Ptr (TQPaintDevice t1) -> CLong -> CLong -> IO ()
    setHandlerWrapper x0 x1 x2 x3
      = do x0obj <- objectFromPtr_nf x0
           x1obj <- objectFromPtr_nf x1
           let x2enum = qEnum_fromInt $ fromCLong x2
           let x3enum = qEnum_fromInt $ fromCLong x3
           if (objectIsNull x0obj)
            then return ()
            else _handler x0obj x1obj x2enum x3enum

    setHandlerWrapper_d :: Ptr fun -> Ptr () -> Ptr fun_d -> IO ()
    setHandlerWrapper_d funptr stptr funptr_d
      = do when (stptr/=ptrNull)
            (freeStablePtr (castPtrToStablePtr stptr))
           when (funptr/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr))
           when (funptr_d/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr_d))
           return ()

foreign import ccall "qtc_QIconEngineV2_setHandler5" qtc_QIconEngineV2_setHandler5 :: Ptr (TQIconEngineV2 a) -> CWString -> Ptr (Ptr (TQIconEngineV2 x0) -> Ptr (TQPaintDevice t1) -> CLong -> CLong -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QIconEngineV25 :: (Ptr (TQIconEngineV2 x0) -> Ptr (TQPaintDevice t1) -> CLong -> CLong -> IO ()) -> IO (FunPtr (Ptr (TQIconEngineV2 x0) -> Ptr (TQPaintDevice t1) -> CLong -> CLong -> IO ()))

foreign import ccall "wrapper" wrapSetHandler_QIconEngineV25_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QIconEngineV2Sc a) (QIconEngineV2 x0 -> QPaintDevice t1 -> QIconMode -> QIconState -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QIconEngineV25 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QIconEngineV25_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QIconEngineV2_setHandler5 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQIconEngineV2 x0) -> Ptr (TQPaintDevice t1) -> CLong -> CLong -> IO ()
    setHandlerWrapper x0 x1 x2 x3
      = do x0obj <- objectFromPtr_nf x0
           x1obj <- objectFromPtr_nf x1
           let x2enum = qEnum_fromInt $ fromCLong x2
           let x3enum = qEnum_fromInt $ fromCLong x3
           if (objectIsNull x0obj)
            then return ()
            else _handler x0obj x1obj x2enum x3enum

    setHandlerWrapper_d :: Ptr fun -> Ptr () -> Ptr fun_d -> IO ()
    setHandlerWrapper_d funptr stptr funptr_d
      = do when (stptr/=ptrNull)
            (freeStablePtr (castPtrToStablePtr stptr))
           when (funptr/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr))
           when (funptr_d/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr_d))
           return ()

instance QaddPixmap_h (QIconEngineV2 ()) ((QPixmap t1, QIconMode, QIconState)) where
 addPixmap_h x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QIconEngineV2_addPixmap cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2) (toCLong $ qEnum_toInt x3)

foreign import ccall "qtc_QIconEngineV2_addPixmap" qtc_QIconEngineV2_addPixmap :: Ptr (TQIconEngineV2 a) -> Ptr (TQPixmap t1) -> CLong -> CLong -> IO ()

instance QaddPixmap_h (QIconEngineV2Sc a) ((QPixmap t1, QIconMode, QIconState)) where
 addPixmap_h x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QIconEngineV2_addPixmap cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2) (toCLong $ qEnum_toInt x3)

instance QsetHandler (QIconEngineV2 ()) (QIconEngineV2 x0 -> QPainter t1 -> QRect t2 -> QIconMode -> QIconState -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QIconEngineV26 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QIconEngineV26_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QIconEngineV2_setHandler6 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQIconEngineV2 x0) -> Ptr (TQPainter t1) -> Ptr (TQRect t2) -> CLong -> CLong -> IO ()
    setHandlerWrapper x0 x1 x2 x3 x4
      = do x0obj <- objectFromPtr_nf x0
           x1obj <- objectFromPtr_nf x1
           x2obj <- objectFromPtr_nf x2
           let x3enum = qEnum_fromInt $ fromCLong x3
           let x4enum = qEnum_fromInt $ fromCLong x4
           if (objectIsNull x0obj)
            then return ()
            else _handler x0obj x1obj x2obj x3enum x4enum

    setHandlerWrapper_d :: Ptr fun -> Ptr () -> Ptr fun_d -> IO ()
    setHandlerWrapper_d funptr stptr funptr_d
      = do when (stptr/=ptrNull)
            (freeStablePtr (castPtrToStablePtr stptr))
           when (funptr/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr))
           when (funptr_d/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr_d))
           return ()

foreign import ccall "qtc_QIconEngineV2_setHandler6" qtc_QIconEngineV2_setHandler6 :: Ptr (TQIconEngineV2 a) -> CWString -> Ptr (Ptr (TQIconEngineV2 x0) -> Ptr (TQPainter t1) -> Ptr (TQRect t2) -> CLong -> CLong -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QIconEngineV26 :: (Ptr (TQIconEngineV2 x0) -> Ptr (TQPainter t1) -> Ptr (TQRect t2) -> CLong -> CLong -> IO ()) -> IO (FunPtr (Ptr (TQIconEngineV2 x0) -> Ptr (TQPainter t1) -> Ptr (TQRect t2) -> CLong -> CLong -> IO ()))

foreign import ccall "wrapper" wrapSetHandler_QIconEngineV26_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QIconEngineV2Sc a) (QIconEngineV2 x0 -> QPainter t1 -> QRect t2 -> QIconMode -> QIconState -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QIconEngineV26 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QIconEngineV26_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QIconEngineV2_setHandler6 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQIconEngineV2 x0) -> Ptr (TQPainter t1) -> Ptr (TQRect t2) -> CLong -> CLong -> IO ()
    setHandlerWrapper x0 x1 x2 x3 x4
      = do x0obj <- objectFromPtr_nf x0
           x1obj <- objectFromPtr_nf x1
           x2obj <- objectFromPtr_nf x2
           let x3enum = qEnum_fromInt $ fromCLong x3
           let x4enum = qEnum_fromInt $ fromCLong x4
           if (objectIsNull x0obj)
            then return ()
            else _handler x0obj x1obj x2obj x3enum x4enum

    setHandlerWrapper_d :: Ptr fun -> Ptr () -> Ptr fun_d -> IO ()
    setHandlerWrapper_d funptr stptr funptr_d
      = do when (stptr/=ptrNull)
            (freeStablePtr (castPtrToStablePtr stptr))
           when (funptr/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr))
           when (funptr_d/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr_d))
           return ()

instance Qqpaint_h (QIconEngineV2 ()) ((QPainter t1, QRect t2, QIconMode, QIconState)) where
 qpaint_h x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QIconEngineV2_paint cobj_x0 cobj_x1 cobj_x2 (toCLong $ qEnum_toInt x3) (toCLong $ qEnum_toInt x4)

foreign import ccall "qtc_QIconEngineV2_paint" qtc_QIconEngineV2_paint :: Ptr (TQIconEngineV2 a) -> Ptr (TQPainter t1) -> Ptr (TQRect t2) -> CLong -> CLong -> IO ()

instance Qqpaint_h (QIconEngineV2Sc a) ((QPainter t1, QRect t2, QIconMode, QIconState)) where
 qpaint_h x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QIconEngineV2_paint cobj_x0 cobj_x1 cobj_x2 (toCLong $ qEnum_toInt x3) (toCLong $ qEnum_toInt x4)

instance Qpaint_h (QIconEngineV2 ()) ((QPainter t1, Rect, QIconMode, QIconState)) where
 paint_h x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCRect x2 $ \crect_x2_x crect_x2_y  crect_x2_w crect_x2_h -> 
    qtc_QIconEngineV2_paint_qth cobj_x0 cobj_x1 crect_x2_x crect_x2_y crect_x2_w crect_x2_h  (toCLong $ qEnum_toInt x3) (toCLong $ qEnum_toInt x4)

foreign import ccall "qtc_QIconEngineV2_paint_qth" qtc_QIconEngineV2_paint_qth :: Ptr (TQIconEngineV2 a) -> Ptr (TQPainter t1) -> CInt -> CInt -> CInt -> CInt -> CLong -> CLong -> IO ()

instance Qpaint_h (QIconEngineV2Sc a) ((QPainter t1, Rect, QIconMode, QIconState)) where
 paint_h x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCRect x2 $ \crect_x2_x crect_x2_y  crect_x2_w crect_x2_h -> 
    qtc_QIconEngineV2_paint_qth cobj_x0 cobj_x1 crect_x2_x crect_x2_y crect_x2_w crect_x2_h  (toCLong $ qEnum_toInt x3) (toCLong $ qEnum_toInt x4)

instance QsetHandler (QIconEngineV2 ()) (QIconEngineV2 x0 -> QSize t1 -> QIconMode -> QIconState -> IO (QPaintDevice t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QIconEngineV27 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QIconEngineV27_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QIconEngineV2_setHandler7 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQIconEngineV2 x0) -> Ptr (TQSize t1) -> CLong -> CLong -> IO (Ptr (TQPaintDevice t0))
    setHandlerWrapper x0 x1 x2 x3
      = do x0obj <- objectFromPtr_nf x0
           x1obj <- objectFromPtr_nf x1
           let x2enum = qEnum_fromInt $ fromCLong x2
           let x3enum = qEnum_fromInt $ fromCLong x3
           let rv =
                if (objectIsNull x0obj)
                 then return $ objectCast x0obj
                 else _handler x0obj x1obj x2enum x3enum
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

foreign import ccall "qtc_QIconEngineV2_setHandler7" qtc_QIconEngineV2_setHandler7 :: Ptr (TQIconEngineV2 a) -> CWString -> Ptr (Ptr (TQIconEngineV2 x0) -> Ptr (TQSize t1) -> CLong -> CLong -> IO (Ptr (TQPaintDevice t0))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QIconEngineV27 :: (Ptr (TQIconEngineV2 x0) -> Ptr (TQSize t1) -> CLong -> CLong -> IO (Ptr (TQPaintDevice t0))) -> IO (FunPtr (Ptr (TQIconEngineV2 x0) -> Ptr (TQSize t1) -> CLong -> CLong -> IO (Ptr (TQPaintDevice t0))))

foreign import ccall "wrapper" wrapSetHandler_QIconEngineV27_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QIconEngineV2Sc a) (QIconEngineV2 x0 -> QSize t1 -> QIconMode -> QIconState -> IO (QPaintDevice t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QIconEngineV27 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QIconEngineV27_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QIconEngineV2_setHandler7 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQIconEngineV2 x0) -> Ptr (TQSize t1) -> CLong -> CLong -> IO (Ptr (TQPaintDevice t0))
    setHandlerWrapper x0 x1 x2 x3
      = do x0obj <- objectFromPtr_nf x0
           x1obj <- objectFromPtr_nf x1
           let x2enum = qEnum_fromInt $ fromCLong x2
           let x3enum = qEnum_fromInt $ fromCLong x3
           let rv =
                if (objectIsNull x0obj)
                 then return $ objectCast x0obj
                 else _handler x0obj x1obj x2enum x3enum
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

instance Qqpixmap_h (QIconEngineV2 ()) ((QSize t1, QIconMode, QIconState)) where
 qpixmap_h x0 (x1, x2, x3)
  = withQPixmapResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QIconEngineV2_pixmap cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2) (toCLong $ qEnum_toInt x3)

foreign import ccall "qtc_QIconEngineV2_pixmap" qtc_QIconEngineV2_pixmap :: Ptr (TQIconEngineV2 a) -> Ptr (TQSize t1) -> CLong -> CLong -> IO (Ptr (TQPixmap ()))

instance Qqpixmap_h (QIconEngineV2Sc a) ((QSize t1, QIconMode, QIconState)) where
 qpixmap_h x0 (x1, x2, x3)
  = withQPixmapResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QIconEngineV2_pixmap cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2) (toCLong $ qEnum_toInt x3)

instance Qpixmap_h (QIconEngineV2 ()) ((Size, QIconMode, QIconState)) where
 pixmap_h x0 (x1, x2, x3)
  = withQPixmapResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QIconEngineV2_pixmap_qth cobj_x0 csize_x1_w csize_x1_h  (toCLong $ qEnum_toInt x2) (toCLong $ qEnum_toInt x3)

foreign import ccall "qtc_QIconEngineV2_pixmap_qth" qtc_QIconEngineV2_pixmap_qth :: Ptr (TQIconEngineV2 a) -> CInt -> CInt -> CLong -> CLong -> IO (Ptr (TQPixmap ()))

instance Qpixmap_h (QIconEngineV2Sc a) ((Size, QIconMode, QIconState)) where
 pixmap_h x0 (x1, x2, x3)
  = withQPixmapResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QIconEngineV2_pixmap_qth cobj_x0 csize_x1_w csize_x1_h  (toCLong $ qEnum_toInt x2) (toCLong $ qEnum_toInt x3)

