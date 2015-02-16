{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QAbstractSocket_h.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:31
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Network.QAbstractSocket_h where

import Foreign.C.Types
import Qtc.Enums.Base
import Qtc.Enums.Core.QIODevice
import Qtc.Enums.Network.QAbstractSocket

import Qtc.Classes.Base
import Qtc.Classes.Qccs_h
import Qtc.Classes.Core_h
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core
import Qtc.Classes.Network_h
import Qtc.ClassTypes.Network
import Foreign.Marshal.Array

instance QunSetUserMethod (QAbstractSocket ()) where
 unSetUserMethod qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QAbstractSocket_unSetUserMethod cobj_qobj (toCInt 0) (toCInt evid)

foreign import ccall "qtc_QAbstractSocket_unSetUserMethod" qtc_QAbstractSocket_unSetUserMethod :: Ptr (TQAbstractSocket a) -> CInt -> CInt -> IO (CBool)

instance QunSetUserMethod (QAbstractSocketSc a) where
 unSetUserMethod qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QAbstractSocket_unSetUserMethod cobj_qobj (toCInt 0) (toCInt evid)

instance QunSetUserMethodVariant (QAbstractSocket ()) where
 unSetUserMethodVariant qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QAbstractSocket_unSetUserMethod cobj_qobj (toCInt 1) (toCInt evid)

instance QunSetUserMethodVariant (QAbstractSocketSc a) where
 unSetUserMethodVariant qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QAbstractSocket_unSetUserMethod cobj_qobj (toCInt 1) (toCInt evid)

instance QunSetUserMethodVariantList (QAbstractSocket ()) where
 unSetUserMethodVariantList qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QAbstractSocket_unSetUserMethod cobj_qobj (toCInt 2) (toCInt evid)

instance QunSetUserMethodVariantList (QAbstractSocketSc a) where
 unSetUserMethodVariantList qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QAbstractSocket_unSetUserMethod cobj_qobj (toCInt 2) (toCInt evid)

instance QsetUserMethod (QAbstractSocket ()) (QAbstractSocket x0 -> IO ()) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethod_QAbstractSocket setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethod_QAbstractSocket_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QAbstractSocket_setUserMethod cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQAbstractSocket x0) -> IO ()
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

foreign import ccall "qtc_QAbstractSocket_setUserMethod" qtc_QAbstractSocket_setUserMethod :: Ptr (TQAbstractSocket a) -> CInt -> Ptr (Ptr (TQAbstractSocket x0) -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetUserMethod_QAbstractSocket :: (Ptr (TQAbstractSocket x0) -> IO ()) -> IO (FunPtr (Ptr (TQAbstractSocket x0) -> IO ()))

foreign import ccall "wrapper" wrapSetUserMethod_QAbstractSocket_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetUserMethod (QAbstractSocketSc a) (QAbstractSocket x0 -> IO ()) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethod_QAbstractSocket setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethod_QAbstractSocket_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QAbstractSocket_setUserMethod cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQAbstractSocket x0) -> IO ()
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

instance QsetUserMethod (QAbstractSocket ()) (QAbstractSocket x0 -> QVariant () -> IO (QVariant ())) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethodVariant_QAbstractSocket setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethodVariant_QAbstractSocket_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QAbstractSocket_setUserMethodVariant cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQAbstractSocket x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))
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

foreign import ccall "qtc_QAbstractSocket_setUserMethodVariant" qtc_QAbstractSocket_setUserMethodVariant :: Ptr (TQAbstractSocket a) -> CInt -> Ptr (Ptr (TQAbstractSocket x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetUserMethodVariant_QAbstractSocket :: (Ptr (TQAbstractSocket x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))) -> IO (FunPtr (Ptr (TQAbstractSocket x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))))

foreign import ccall "wrapper" wrapSetUserMethodVariant_QAbstractSocket_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetUserMethod (QAbstractSocketSc a) (QAbstractSocket x0 -> QVariant () -> IO (QVariant ())) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethodVariant_QAbstractSocket setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethodVariant_QAbstractSocket_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QAbstractSocket_setUserMethodVariant cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQAbstractSocket x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))
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

instance QunSetHandler (QAbstractSocket ()) where 
 unSetHandler qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withCWString evid $ \cstr_evid ->
    qtc_QAbstractSocket_unSetHandler cobj_qobj cstr_evid

foreign import ccall "qtc_QAbstractSocket_unSetHandler" qtc_QAbstractSocket_unSetHandler :: Ptr (TQAbstractSocket a) -> CWString -> IO (CBool)

instance QunSetHandler (QAbstractSocketSc a) where 
 unSetHandler qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withCWString evid $ \cstr_evid ->
    qtc_QAbstractSocket_unSetHandler cobj_qobj cstr_evid

instance QsetHandler (QAbstractSocket ()) (QAbstractSocket x0 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractSocket1 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractSocket1_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractSocket_setHandler1 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractSocket x0) -> IO (CBool)
    setHandlerWrapper x0
      = do x0obj <- qAbstractSocketFromPtr x0
           let rv =
                if (objectIsNull x0obj)
                 then return False
                 else _handler x0obj
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

foreign import ccall "qtc_QAbstractSocket_setHandler1" qtc_QAbstractSocket_setHandler1 :: Ptr (TQAbstractSocket a) -> CWString -> Ptr (Ptr (TQAbstractSocket x0) -> IO (CBool)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QAbstractSocket1 :: (Ptr (TQAbstractSocket x0) -> IO (CBool)) -> IO (FunPtr (Ptr (TQAbstractSocket x0) -> IO (CBool)))

foreign import ccall "wrapper" wrapSetHandler_QAbstractSocket1_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QAbstractSocketSc a) (QAbstractSocket x0 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractSocket1 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractSocket1_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractSocket_setHandler1 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractSocket x0) -> IO (CBool)
    setHandlerWrapper x0
      = do x0obj <- qAbstractSocketFromPtr x0
           let rv =
                if (objectIsNull x0obj)
                 then return False
                 else _handler x0obj
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

instance QatEnd_h (QAbstractSocket ()) (()) where
 atEnd_h x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSocket_atEnd cobj_x0

foreign import ccall "qtc_QAbstractSocket_atEnd" qtc_QAbstractSocket_atEnd :: Ptr (TQAbstractSocket a) -> IO CBool

instance QatEnd_h (QAbstractSocketSc a) (()) where
 atEnd_h x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSocket_atEnd cobj_x0

instance QsetHandler (QAbstractSocket ()) (QAbstractSocket x0 -> IO (Int)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractSocket2 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractSocket2_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractSocket_setHandler2 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractSocket x0) -> IO (CLLong)
    setHandlerWrapper x0
      = do x0obj <- qAbstractSocketFromPtr x0
           let rv =
                if (objectIsNull x0obj)
                 then return 0
                 else _handler x0obj
           rvf <- rv
           return (toCLLong rvf)

    setHandlerWrapper_d :: Ptr fun -> Ptr () -> Ptr fun_d -> IO ()
    setHandlerWrapper_d funptr stptr funptr_d
      = do when (stptr/=ptrNull)
            (freeStablePtr (castPtrToStablePtr stptr))
           when (funptr/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr))
           when (funptr_d/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr_d))
           return ()

foreign import ccall "qtc_QAbstractSocket_setHandler2" qtc_QAbstractSocket_setHandler2 :: Ptr (TQAbstractSocket a) -> CWString -> Ptr (Ptr (TQAbstractSocket x0) -> IO (CLLong)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QAbstractSocket2 :: (Ptr (TQAbstractSocket x0) -> IO (CLLong)) -> IO (FunPtr (Ptr (TQAbstractSocket x0) -> IO (CLLong)))

foreign import ccall "wrapper" wrapSetHandler_QAbstractSocket2_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QAbstractSocketSc a) (QAbstractSocket x0 -> IO (Int)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractSocket2 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractSocket2_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractSocket_setHandler2 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractSocket x0) -> IO (CLLong)
    setHandlerWrapper x0
      = do x0obj <- qAbstractSocketFromPtr x0
           let rv =
                if (objectIsNull x0obj)
                 then return 0
                 else _handler x0obj
           rvf <- rv
           return (toCLLong rvf)

    setHandlerWrapper_d :: Ptr fun -> Ptr () -> Ptr fun_d -> IO ()
    setHandlerWrapper_d funptr stptr funptr_d
      = do when (stptr/=ptrNull)
            (freeStablePtr (castPtrToStablePtr stptr))
           when (funptr/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr))
           when (funptr_d/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr_d))
           return ()

instance QbytesAvailable_h (QAbstractSocket ()) (()) where
 bytesAvailable_h x0 ()
  = withLongLongResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSocket_bytesAvailable cobj_x0

foreign import ccall "qtc_QAbstractSocket_bytesAvailable" qtc_QAbstractSocket_bytesAvailable :: Ptr (TQAbstractSocket a) -> IO CLLong

instance QbytesAvailable_h (QAbstractSocketSc a) (()) where
 bytesAvailable_h x0 ()
  = withLongLongResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSocket_bytesAvailable cobj_x0

instance QbytesToWrite_h (QAbstractSocket ()) (()) where
 bytesToWrite_h x0 ()
  = withLongLongResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSocket_bytesToWrite cobj_x0

foreign import ccall "qtc_QAbstractSocket_bytesToWrite" qtc_QAbstractSocket_bytesToWrite :: Ptr (TQAbstractSocket a) -> IO CLLong

instance QbytesToWrite_h (QAbstractSocketSc a) (()) where
 bytesToWrite_h x0 ()
  = withLongLongResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSocket_bytesToWrite cobj_x0

instance QcanReadLine_h (QAbstractSocket ()) (()) where
 canReadLine_h x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSocket_canReadLine cobj_x0

foreign import ccall "qtc_QAbstractSocket_canReadLine" qtc_QAbstractSocket_canReadLine :: Ptr (TQAbstractSocket a) -> IO CBool

instance QcanReadLine_h (QAbstractSocketSc a) (()) where
 canReadLine_h x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSocket_canReadLine cobj_x0

instance QsetHandler (QAbstractSocket ()) (QAbstractSocket x0 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractSocket3 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractSocket3_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractSocket_setHandler3 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractSocket x0) -> IO ()
    setHandlerWrapper x0
      = do x0obj <- qAbstractSocketFromPtr x0
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

foreign import ccall "qtc_QAbstractSocket_setHandler3" qtc_QAbstractSocket_setHandler3 :: Ptr (TQAbstractSocket a) -> CWString -> Ptr (Ptr (TQAbstractSocket x0) -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QAbstractSocket3 :: (Ptr (TQAbstractSocket x0) -> IO ()) -> IO (FunPtr (Ptr (TQAbstractSocket x0) -> IO ()))

foreign import ccall "wrapper" wrapSetHandler_QAbstractSocket3_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QAbstractSocketSc a) (QAbstractSocket x0 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractSocket3 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractSocket3_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractSocket_setHandler3 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractSocket x0) -> IO ()
    setHandlerWrapper x0
      = do x0obj <- qAbstractSocketFromPtr x0
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

instance Qclose_h (QAbstractSocket ()) (()) where
 close_h x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSocket_close cobj_x0

foreign import ccall "qtc_QAbstractSocket_close" qtc_QAbstractSocket_close :: Ptr (TQAbstractSocket a) -> IO ()

instance Qclose_h (QAbstractSocketSc a) (()) where
 close_h x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSocket_close cobj_x0

instance QisSequential_h (QAbstractSocket ()) (()) where
 isSequential_h x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSocket_isSequential cobj_x0

foreign import ccall "qtc_QAbstractSocket_isSequential" qtc_QAbstractSocket_isSequential :: Ptr (TQAbstractSocket a) -> IO CBool

instance QisSequential_h (QAbstractSocketSc a) (()) where
 isSequential_h x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSocket_isSequential cobj_x0

instance QsetHandler (QAbstractSocket ()) (QAbstractSocket x0 -> Int -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractSocket4 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractSocket4_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractSocket_setHandler4 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractSocket x0) -> CInt -> IO (CBool)
    setHandlerWrapper x0 x1
      = do x0obj <- qAbstractSocketFromPtr x0
           let x1int = fromCInt x1
           let rv =
                if (objectIsNull x0obj)
                 then return False
                 else _handler x0obj x1int
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

foreign import ccall "qtc_QAbstractSocket_setHandler4" qtc_QAbstractSocket_setHandler4 :: Ptr (TQAbstractSocket a) -> CWString -> Ptr (Ptr (TQAbstractSocket x0) -> CInt -> IO (CBool)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QAbstractSocket4 :: (Ptr (TQAbstractSocket x0) -> CInt -> IO (CBool)) -> IO (FunPtr (Ptr (TQAbstractSocket x0) -> CInt -> IO (CBool)))

foreign import ccall "wrapper" wrapSetHandler_QAbstractSocket4_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QAbstractSocketSc a) (QAbstractSocket x0 -> Int -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractSocket4 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractSocket4_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractSocket_setHandler4 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractSocket x0) -> CInt -> IO (CBool)
    setHandlerWrapper x0 x1
      = do x0obj <- qAbstractSocketFromPtr x0
           let x1int = fromCInt x1
           let rv =
                if (objectIsNull x0obj)
                 then return False
                 else _handler x0obj x1int
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

instance QwaitForBytesWritten_h (QAbstractSocket ()) (()) where
 waitForBytesWritten_h x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSocket_waitForBytesWritten cobj_x0

foreign import ccall "qtc_QAbstractSocket_waitForBytesWritten" qtc_QAbstractSocket_waitForBytesWritten :: Ptr (TQAbstractSocket a) -> IO CBool

instance QwaitForBytesWritten_h (QAbstractSocketSc a) (()) where
 waitForBytesWritten_h x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSocket_waitForBytesWritten cobj_x0

instance QwaitForBytesWritten_h (QAbstractSocket ()) ((Int)) where
 waitForBytesWritten_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSocket_waitForBytesWritten1 cobj_x0 (toCInt x1)

foreign import ccall "qtc_QAbstractSocket_waitForBytesWritten1" qtc_QAbstractSocket_waitForBytesWritten1 :: Ptr (TQAbstractSocket a) -> CInt -> IO CBool

instance QwaitForBytesWritten_h (QAbstractSocketSc a) ((Int)) where
 waitForBytesWritten_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSocket_waitForBytesWritten1 cobj_x0 (toCInt x1)

instance QwaitForReadyRead_h (QAbstractSocket ()) (()) where
 waitForReadyRead_h x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSocket_waitForReadyRead cobj_x0

foreign import ccall "qtc_QAbstractSocket_waitForReadyRead" qtc_QAbstractSocket_waitForReadyRead :: Ptr (TQAbstractSocket a) -> IO CBool

instance QwaitForReadyRead_h (QAbstractSocketSc a) (()) where
 waitForReadyRead_h x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSocket_waitForReadyRead cobj_x0

instance QwaitForReadyRead_h (QAbstractSocket ()) ((Int)) where
 waitForReadyRead_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSocket_waitForReadyRead1 cobj_x0 (toCInt x1)

foreign import ccall "qtc_QAbstractSocket_waitForReadyRead1" qtc_QAbstractSocket_waitForReadyRead1 :: Ptr (TQAbstractSocket a) -> CInt -> IO CBool

instance QwaitForReadyRead_h (QAbstractSocketSc a) ((Int)) where
 waitForReadyRead_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSocket_waitForReadyRead1 cobj_x0 (toCInt x1)

instance QsetHandler (QAbstractSocket ()) (QAbstractSocket x0 -> OpenMode -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractSocket5 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractSocket5_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractSocket_setHandler5 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractSocket x0) -> CLong -> IO (CBool)
    setHandlerWrapper x0 x1
      = do x0obj <- qAbstractSocketFromPtr x0
           let x1flags = qFlags_fromInt $ fromCLong x1
           let rv =
                if (objectIsNull x0obj)
                 then return False
                 else _handler x0obj x1flags
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

foreign import ccall "qtc_QAbstractSocket_setHandler5" qtc_QAbstractSocket_setHandler5 :: Ptr (TQAbstractSocket a) -> CWString -> Ptr (Ptr (TQAbstractSocket x0) -> CLong -> IO (CBool)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QAbstractSocket5 :: (Ptr (TQAbstractSocket x0) -> CLong -> IO (CBool)) -> IO (FunPtr (Ptr (TQAbstractSocket x0) -> CLong -> IO (CBool)))

foreign import ccall "wrapper" wrapSetHandler_QAbstractSocket5_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QAbstractSocketSc a) (QAbstractSocket x0 -> OpenMode -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractSocket5 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractSocket5_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractSocket_setHandler5 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractSocket x0) -> CLong -> IO (CBool)
    setHandlerWrapper x0 x1
      = do x0obj <- qAbstractSocketFromPtr x0
           let x1flags = qFlags_fromInt $ fromCLong x1
           let rv =
                if (objectIsNull x0obj)
                 then return False
                 else _handler x0obj x1flags
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

instance Qopen_h (QAbstractSocket ()) ((OpenMode)) where
 open_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSocket_open cobj_x0 (toCLong $ qFlags_toInt x1)

foreign import ccall "qtc_QAbstractSocket_open" qtc_QAbstractSocket_open :: Ptr (TQAbstractSocket a) -> CLong -> IO CBool

instance Qopen_h (QAbstractSocketSc a) ((OpenMode)) where
 open_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSocket_open cobj_x0 (toCLong $ qFlags_toInt x1)

instance Qpos_h (QAbstractSocket ()) (()) where
 pos_h x0 ()
  = withLongLongResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSocket_pos cobj_x0

foreign import ccall "qtc_QAbstractSocket_pos" qtc_QAbstractSocket_pos :: Ptr (TQAbstractSocket a) -> IO CLLong

instance Qpos_h (QAbstractSocketSc a) (()) where
 pos_h x0 ()
  = withLongLongResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSocket_pos cobj_x0

instance Qreset_h (QAbstractSocket ()) (()) (IO (Bool)) where
 reset_h x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSocket_reset cobj_x0

foreign import ccall "qtc_QAbstractSocket_reset" qtc_QAbstractSocket_reset :: Ptr (TQAbstractSocket a) -> IO CBool

instance Qreset_h (QAbstractSocketSc a) (()) (IO (Bool)) where
 reset_h x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSocket_reset cobj_x0

instance Qseek_h (QAbstractSocket ()) ((Int)) where
 seek_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSocket_seek cobj_x0 (toCLLong x1)

foreign import ccall "qtc_QAbstractSocket_seek" qtc_QAbstractSocket_seek :: Ptr (TQAbstractSocket a) -> CLLong -> IO CBool

instance Qseek_h (QAbstractSocketSc a) ((Int)) where
 seek_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSocket_seek cobj_x0 (toCLLong x1)

instance Qqsize_h (QAbstractSocket ()) (()) where
 qsize_h x0 ()
  = withLongLongResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSocket_size cobj_x0

foreign import ccall "qtc_QAbstractSocket_size" qtc_QAbstractSocket_size :: Ptr (TQAbstractSocket a) -> IO CLLong

instance Qqsize_h (QAbstractSocketSc a) (()) where
 qsize_h x0 ()
  = withLongLongResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSocket_size cobj_x0

instance QsetHandler (QAbstractSocket ()) (QAbstractSocket x0 -> QEvent t1 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractSocket6 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractSocket6_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractSocket_setHandler6 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractSocket x0) -> Ptr (TQEvent t1) -> IO (CBool)
    setHandlerWrapper x0 x1
      = do x0obj <- qAbstractSocketFromPtr x0
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

foreign import ccall "qtc_QAbstractSocket_setHandler6" qtc_QAbstractSocket_setHandler6 :: Ptr (TQAbstractSocket a) -> CWString -> Ptr (Ptr (TQAbstractSocket x0) -> Ptr (TQEvent t1) -> IO (CBool)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QAbstractSocket6 :: (Ptr (TQAbstractSocket x0) -> Ptr (TQEvent t1) -> IO (CBool)) -> IO (FunPtr (Ptr (TQAbstractSocket x0) -> Ptr (TQEvent t1) -> IO (CBool)))

foreign import ccall "wrapper" wrapSetHandler_QAbstractSocket6_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QAbstractSocketSc a) (QAbstractSocket x0 -> QEvent t1 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractSocket6 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractSocket6_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractSocket_setHandler6 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractSocket x0) -> Ptr (TQEvent t1) -> IO (CBool)
    setHandlerWrapper x0 x1
      = do x0obj <- qAbstractSocketFromPtr x0
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

instance Qevent_h (QAbstractSocket ()) ((QEvent t1)) where
 event_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSocket_event cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractSocket_event" qtc_QAbstractSocket_event :: Ptr (TQAbstractSocket a) -> Ptr (TQEvent t1) -> IO CBool

instance Qevent_h (QAbstractSocketSc a) ((QEvent t1)) where
 event_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSocket_event cobj_x0 cobj_x1

instance QsetHandler (QAbstractSocket ()) (QAbstractSocket x0 -> QObject t1 -> QEvent t2 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractSocket7 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractSocket7_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractSocket_setHandler7 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractSocket x0) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO (CBool)
    setHandlerWrapper x0 x1 x2
      = do x0obj <- qAbstractSocketFromPtr x0
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

foreign import ccall "qtc_QAbstractSocket_setHandler7" qtc_QAbstractSocket_setHandler7 :: Ptr (TQAbstractSocket a) -> CWString -> Ptr (Ptr (TQAbstractSocket x0) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO (CBool)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QAbstractSocket7 :: (Ptr (TQAbstractSocket x0) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO (CBool)) -> IO (FunPtr (Ptr (TQAbstractSocket x0) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO (CBool)))

foreign import ccall "wrapper" wrapSetHandler_QAbstractSocket7_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QAbstractSocketSc a) (QAbstractSocket x0 -> QObject t1 -> QEvent t2 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractSocket7 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractSocket7_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractSocket_setHandler7 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractSocket x0) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO (CBool)
    setHandlerWrapper x0 x1 x2
      = do x0obj <- qAbstractSocketFromPtr x0
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

instance QeventFilter_h (QAbstractSocket ()) ((QObject t1, QEvent t2)) where
 eventFilter_h x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QAbstractSocket_eventFilter cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QAbstractSocket_eventFilter" qtc_QAbstractSocket_eventFilter :: Ptr (TQAbstractSocket a) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO CBool

instance QeventFilter_h (QAbstractSocketSc a) ((QObject t1, QEvent t2)) where
 eventFilter_h x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QAbstractSocket_eventFilter cobj_x0 cobj_x1 cobj_x2

