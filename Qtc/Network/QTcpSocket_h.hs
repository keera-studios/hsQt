{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QTcpSocket_h.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:31
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Network.QTcpSocket_h where

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

instance QunSetUserMethod (QTcpSocket ()) where
 unSetUserMethod qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QTcpSocket_unSetUserMethod cobj_qobj (toCInt 0) (toCInt evid)

foreign import ccall "qtc_QTcpSocket_unSetUserMethod" qtc_QTcpSocket_unSetUserMethod :: Ptr (TQTcpSocket a) -> CInt -> CInt -> IO (CBool)

instance QunSetUserMethod (QTcpSocketSc a) where
 unSetUserMethod qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QTcpSocket_unSetUserMethod cobj_qobj (toCInt 0) (toCInt evid)

instance QunSetUserMethodVariant (QTcpSocket ()) where
 unSetUserMethodVariant qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QTcpSocket_unSetUserMethod cobj_qobj (toCInt 1) (toCInt evid)

instance QunSetUserMethodVariant (QTcpSocketSc a) where
 unSetUserMethodVariant qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QTcpSocket_unSetUserMethod cobj_qobj (toCInt 1) (toCInt evid)

instance QunSetUserMethodVariantList (QTcpSocket ()) where
 unSetUserMethodVariantList qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QTcpSocket_unSetUserMethod cobj_qobj (toCInt 2) (toCInt evid)

instance QunSetUserMethodVariantList (QTcpSocketSc a) where
 unSetUserMethodVariantList qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QTcpSocket_unSetUserMethod cobj_qobj (toCInt 2) (toCInt evid)

instance QsetUserMethod (QTcpSocket ()) (QTcpSocket x0 -> IO ()) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethod_QTcpSocket setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethod_QTcpSocket_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QTcpSocket_setUserMethod cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQTcpSocket x0) -> IO ()
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

foreign import ccall "qtc_QTcpSocket_setUserMethod" qtc_QTcpSocket_setUserMethod :: Ptr (TQTcpSocket a) -> CInt -> Ptr (Ptr (TQTcpSocket x0) -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetUserMethod_QTcpSocket :: (Ptr (TQTcpSocket x0) -> IO ()) -> IO (FunPtr (Ptr (TQTcpSocket x0) -> IO ()))

foreign import ccall "wrapper" wrapSetUserMethod_QTcpSocket_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetUserMethod (QTcpSocketSc a) (QTcpSocket x0 -> IO ()) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethod_QTcpSocket setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethod_QTcpSocket_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QTcpSocket_setUserMethod cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQTcpSocket x0) -> IO ()
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

instance QsetUserMethod (QTcpSocket ()) (QTcpSocket x0 -> QVariant () -> IO (QVariant ())) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethodVariant_QTcpSocket setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethodVariant_QTcpSocket_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QTcpSocket_setUserMethodVariant cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQTcpSocket x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))
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

foreign import ccall "qtc_QTcpSocket_setUserMethodVariant" qtc_QTcpSocket_setUserMethodVariant :: Ptr (TQTcpSocket a) -> CInt -> Ptr (Ptr (TQTcpSocket x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetUserMethodVariant_QTcpSocket :: (Ptr (TQTcpSocket x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))) -> IO (FunPtr (Ptr (TQTcpSocket x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))))

foreign import ccall "wrapper" wrapSetUserMethodVariant_QTcpSocket_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetUserMethod (QTcpSocketSc a) (QTcpSocket x0 -> QVariant () -> IO (QVariant ())) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethodVariant_QTcpSocket setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethodVariant_QTcpSocket_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QTcpSocket_setUserMethodVariant cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQTcpSocket x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))
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

instance QunSetHandler (QTcpSocket ()) where 
 unSetHandler qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withCWString evid $ \cstr_evid ->
    qtc_QTcpSocket_unSetHandler cobj_qobj cstr_evid

foreign import ccall "qtc_QTcpSocket_unSetHandler" qtc_QTcpSocket_unSetHandler :: Ptr (TQTcpSocket a) -> CWString -> IO (CBool)

instance QunSetHandler (QTcpSocketSc a) where 
 unSetHandler qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withCWString evid $ \cstr_evid ->
    qtc_QTcpSocket_unSetHandler cobj_qobj cstr_evid

instance QsetHandler (QTcpSocket ()) (QTcpSocket x0 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTcpSocket1 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTcpSocket1_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTcpSocket_setHandler1 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTcpSocket x0) -> IO (CBool)
    setHandlerWrapper x0
      = do x0obj <- qTcpSocketFromPtr x0
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

foreign import ccall "qtc_QTcpSocket_setHandler1" qtc_QTcpSocket_setHandler1 :: Ptr (TQTcpSocket a) -> CWString -> Ptr (Ptr (TQTcpSocket x0) -> IO (CBool)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QTcpSocket1 :: (Ptr (TQTcpSocket x0) -> IO (CBool)) -> IO (FunPtr (Ptr (TQTcpSocket x0) -> IO (CBool)))

foreign import ccall "wrapper" wrapSetHandler_QTcpSocket1_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QTcpSocketSc a) (QTcpSocket x0 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTcpSocket1 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTcpSocket1_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTcpSocket_setHandler1 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTcpSocket x0) -> IO (CBool)
    setHandlerWrapper x0
      = do x0obj <- qTcpSocketFromPtr x0
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

instance QatEnd_h (QTcpSocket ()) (()) where
 atEnd_h x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTcpSocket_atEnd cobj_x0

foreign import ccall "qtc_QTcpSocket_atEnd" qtc_QTcpSocket_atEnd :: Ptr (TQTcpSocket a) -> IO CBool

instance QatEnd_h (QTcpSocketSc a) (()) where
 atEnd_h x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTcpSocket_atEnd cobj_x0

instance QsetHandler (QTcpSocket ()) (QTcpSocket x0 -> IO (Int)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTcpSocket2 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTcpSocket2_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTcpSocket_setHandler2 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTcpSocket x0) -> IO (CLLong)
    setHandlerWrapper x0
      = do x0obj <- qTcpSocketFromPtr x0
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

foreign import ccall "qtc_QTcpSocket_setHandler2" qtc_QTcpSocket_setHandler2 :: Ptr (TQTcpSocket a) -> CWString -> Ptr (Ptr (TQTcpSocket x0) -> IO (CLLong)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QTcpSocket2 :: (Ptr (TQTcpSocket x0) -> IO (CLLong)) -> IO (FunPtr (Ptr (TQTcpSocket x0) -> IO (CLLong)))

foreign import ccall "wrapper" wrapSetHandler_QTcpSocket2_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QTcpSocketSc a) (QTcpSocket x0 -> IO (Int)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTcpSocket2 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTcpSocket2_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTcpSocket_setHandler2 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTcpSocket x0) -> IO (CLLong)
    setHandlerWrapper x0
      = do x0obj <- qTcpSocketFromPtr x0
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

instance QbytesAvailable_h (QTcpSocket ()) (()) where
 bytesAvailable_h x0 ()
  = withLongLongResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTcpSocket_bytesAvailable cobj_x0

foreign import ccall "qtc_QTcpSocket_bytesAvailable" qtc_QTcpSocket_bytesAvailable :: Ptr (TQTcpSocket a) -> IO CLLong

instance QbytesAvailable_h (QTcpSocketSc a) (()) where
 bytesAvailable_h x0 ()
  = withLongLongResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTcpSocket_bytesAvailable cobj_x0

instance QbytesToWrite_h (QTcpSocket ()) (()) where
 bytesToWrite_h x0 ()
  = withLongLongResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTcpSocket_bytesToWrite cobj_x0

foreign import ccall "qtc_QTcpSocket_bytesToWrite" qtc_QTcpSocket_bytesToWrite :: Ptr (TQTcpSocket a) -> IO CLLong

instance QbytesToWrite_h (QTcpSocketSc a) (()) where
 bytesToWrite_h x0 ()
  = withLongLongResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTcpSocket_bytesToWrite cobj_x0

instance QcanReadLine_h (QTcpSocket ()) (()) where
 canReadLine_h x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTcpSocket_canReadLine cobj_x0

foreign import ccall "qtc_QTcpSocket_canReadLine" qtc_QTcpSocket_canReadLine :: Ptr (TQTcpSocket a) -> IO CBool

instance QcanReadLine_h (QTcpSocketSc a) (()) where
 canReadLine_h x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTcpSocket_canReadLine cobj_x0

instance QsetHandler (QTcpSocket ()) (QTcpSocket x0 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTcpSocket3 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTcpSocket3_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTcpSocket_setHandler3 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTcpSocket x0) -> IO ()
    setHandlerWrapper x0
      = do x0obj <- qTcpSocketFromPtr x0
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

foreign import ccall "qtc_QTcpSocket_setHandler3" qtc_QTcpSocket_setHandler3 :: Ptr (TQTcpSocket a) -> CWString -> Ptr (Ptr (TQTcpSocket x0) -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QTcpSocket3 :: (Ptr (TQTcpSocket x0) -> IO ()) -> IO (FunPtr (Ptr (TQTcpSocket x0) -> IO ()))

foreign import ccall "wrapper" wrapSetHandler_QTcpSocket3_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QTcpSocketSc a) (QTcpSocket x0 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTcpSocket3 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTcpSocket3_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTcpSocket_setHandler3 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTcpSocket x0) -> IO ()
    setHandlerWrapper x0
      = do x0obj <- qTcpSocketFromPtr x0
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

instance Qclose_h (QTcpSocket ()) (()) where
 close_h x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTcpSocket_close cobj_x0

foreign import ccall "qtc_QTcpSocket_close" qtc_QTcpSocket_close :: Ptr (TQTcpSocket a) -> IO ()

instance Qclose_h (QTcpSocketSc a) (()) where
 close_h x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTcpSocket_close cobj_x0

instance QisSequential_h (QTcpSocket ()) (()) where
 isSequential_h x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTcpSocket_isSequential cobj_x0

foreign import ccall "qtc_QTcpSocket_isSequential" qtc_QTcpSocket_isSequential :: Ptr (TQTcpSocket a) -> IO CBool

instance QisSequential_h (QTcpSocketSc a) (()) where
 isSequential_h x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTcpSocket_isSequential cobj_x0

instance QsetHandler (QTcpSocket ()) (QTcpSocket x0 -> Int -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTcpSocket4 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTcpSocket4_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTcpSocket_setHandler4 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTcpSocket x0) -> CInt -> IO (CBool)
    setHandlerWrapper x0 x1
      = do x0obj <- qTcpSocketFromPtr x0
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

foreign import ccall "qtc_QTcpSocket_setHandler4" qtc_QTcpSocket_setHandler4 :: Ptr (TQTcpSocket a) -> CWString -> Ptr (Ptr (TQTcpSocket x0) -> CInt -> IO (CBool)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QTcpSocket4 :: (Ptr (TQTcpSocket x0) -> CInt -> IO (CBool)) -> IO (FunPtr (Ptr (TQTcpSocket x0) -> CInt -> IO (CBool)))

foreign import ccall "wrapper" wrapSetHandler_QTcpSocket4_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QTcpSocketSc a) (QTcpSocket x0 -> Int -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTcpSocket4 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTcpSocket4_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTcpSocket_setHandler4 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTcpSocket x0) -> CInt -> IO (CBool)
    setHandlerWrapper x0 x1
      = do x0obj <- qTcpSocketFromPtr x0
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

instance QwaitForBytesWritten_h (QTcpSocket ()) (()) where
 waitForBytesWritten_h x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTcpSocket_waitForBytesWritten cobj_x0

foreign import ccall "qtc_QTcpSocket_waitForBytesWritten" qtc_QTcpSocket_waitForBytesWritten :: Ptr (TQTcpSocket a) -> IO CBool

instance QwaitForBytesWritten_h (QTcpSocketSc a) (()) where
 waitForBytesWritten_h x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTcpSocket_waitForBytesWritten cobj_x0

instance QwaitForBytesWritten_h (QTcpSocket ()) ((Int)) where
 waitForBytesWritten_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTcpSocket_waitForBytesWritten1 cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTcpSocket_waitForBytesWritten1" qtc_QTcpSocket_waitForBytesWritten1 :: Ptr (TQTcpSocket a) -> CInt -> IO CBool

instance QwaitForBytesWritten_h (QTcpSocketSc a) ((Int)) where
 waitForBytesWritten_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTcpSocket_waitForBytesWritten1 cobj_x0 (toCInt x1)

instance QwaitForReadyRead_h (QTcpSocket ()) (()) where
 waitForReadyRead_h x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTcpSocket_waitForReadyRead cobj_x0

foreign import ccall "qtc_QTcpSocket_waitForReadyRead" qtc_QTcpSocket_waitForReadyRead :: Ptr (TQTcpSocket a) -> IO CBool

instance QwaitForReadyRead_h (QTcpSocketSc a) (()) where
 waitForReadyRead_h x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTcpSocket_waitForReadyRead cobj_x0

instance QwaitForReadyRead_h (QTcpSocket ()) ((Int)) where
 waitForReadyRead_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTcpSocket_waitForReadyRead1 cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTcpSocket_waitForReadyRead1" qtc_QTcpSocket_waitForReadyRead1 :: Ptr (TQTcpSocket a) -> CInt -> IO CBool

instance QwaitForReadyRead_h (QTcpSocketSc a) ((Int)) where
 waitForReadyRead_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTcpSocket_waitForReadyRead1 cobj_x0 (toCInt x1)

instance QsetHandler (QTcpSocket ()) (QTcpSocket x0 -> OpenMode -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTcpSocket5 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTcpSocket5_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTcpSocket_setHandler5 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTcpSocket x0) -> CLong -> IO (CBool)
    setHandlerWrapper x0 x1
      = do x0obj <- qTcpSocketFromPtr x0
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

foreign import ccall "qtc_QTcpSocket_setHandler5" qtc_QTcpSocket_setHandler5 :: Ptr (TQTcpSocket a) -> CWString -> Ptr (Ptr (TQTcpSocket x0) -> CLong -> IO (CBool)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QTcpSocket5 :: (Ptr (TQTcpSocket x0) -> CLong -> IO (CBool)) -> IO (FunPtr (Ptr (TQTcpSocket x0) -> CLong -> IO (CBool)))

foreign import ccall "wrapper" wrapSetHandler_QTcpSocket5_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QTcpSocketSc a) (QTcpSocket x0 -> OpenMode -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTcpSocket5 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTcpSocket5_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTcpSocket_setHandler5 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTcpSocket x0) -> CLong -> IO (CBool)
    setHandlerWrapper x0 x1
      = do x0obj <- qTcpSocketFromPtr x0
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

instance Qopen_h (QTcpSocket ()) ((OpenMode)) where
 open_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTcpSocket_open cobj_x0 (toCLong $ qFlags_toInt x1)

foreign import ccall "qtc_QTcpSocket_open" qtc_QTcpSocket_open :: Ptr (TQTcpSocket a) -> CLong -> IO CBool

instance Qopen_h (QTcpSocketSc a) ((OpenMode)) where
 open_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTcpSocket_open cobj_x0 (toCLong $ qFlags_toInt x1)

instance Qpos_h (QTcpSocket ()) (()) where
 pos_h x0 ()
  = withLongLongResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTcpSocket_pos cobj_x0

foreign import ccall "qtc_QTcpSocket_pos" qtc_QTcpSocket_pos :: Ptr (TQTcpSocket a) -> IO CLLong

instance Qpos_h (QTcpSocketSc a) (()) where
 pos_h x0 ()
  = withLongLongResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTcpSocket_pos cobj_x0

instance Qreset_h (QTcpSocket ()) (()) (IO (Bool)) where
 reset_h x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTcpSocket_reset cobj_x0

foreign import ccall "qtc_QTcpSocket_reset" qtc_QTcpSocket_reset :: Ptr (TQTcpSocket a) -> IO CBool

instance Qreset_h (QTcpSocketSc a) (()) (IO (Bool)) where
 reset_h x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTcpSocket_reset cobj_x0

instance Qseek_h (QTcpSocket ()) ((Int)) where
 seek_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTcpSocket_seek cobj_x0 (toCLLong x1)

foreign import ccall "qtc_QTcpSocket_seek" qtc_QTcpSocket_seek :: Ptr (TQTcpSocket a) -> CLLong -> IO CBool

instance Qseek_h (QTcpSocketSc a) ((Int)) where
 seek_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTcpSocket_seek cobj_x0 (toCLLong x1)

instance Qqsize_h (QTcpSocket ()) (()) where
 qsize_h x0 ()
  = withLongLongResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTcpSocket_size cobj_x0

foreign import ccall "qtc_QTcpSocket_size" qtc_QTcpSocket_size :: Ptr (TQTcpSocket a) -> IO CLLong

instance Qqsize_h (QTcpSocketSc a) (()) where
 qsize_h x0 ()
  = withLongLongResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTcpSocket_size cobj_x0

instance QsetHandler (QTcpSocket ()) (QTcpSocket x0 -> QEvent t1 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTcpSocket6 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTcpSocket6_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTcpSocket_setHandler6 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTcpSocket x0) -> Ptr (TQEvent t1) -> IO (CBool)
    setHandlerWrapper x0 x1
      = do x0obj <- qTcpSocketFromPtr x0
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

foreign import ccall "qtc_QTcpSocket_setHandler6" qtc_QTcpSocket_setHandler6 :: Ptr (TQTcpSocket a) -> CWString -> Ptr (Ptr (TQTcpSocket x0) -> Ptr (TQEvent t1) -> IO (CBool)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QTcpSocket6 :: (Ptr (TQTcpSocket x0) -> Ptr (TQEvent t1) -> IO (CBool)) -> IO (FunPtr (Ptr (TQTcpSocket x0) -> Ptr (TQEvent t1) -> IO (CBool)))

foreign import ccall "wrapper" wrapSetHandler_QTcpSocket6_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QTcpSocketSc a) (QTcpSocket x0 -> QEvent t1 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTcpSocket6 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTcpSocket6_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTcpSocket_setHandler6 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTcpSocket x0) -> Ptr (TQEvent t1) -> IO (CBool)
    setHandlerWrapper x0 x1
      = do x0obj <- qTcpSocketFromPtr x0
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

instance Qevent_h (QTcpSocket ()) ((QEvent t1)) where
 event_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTcpSocket_event cobj_x0 cobj_x1

foreign import ccall "qtc_QTcpSocket_event" qtc_QTcpSocket_event :: Ptr (TQTcpSocket a) -> Ptr (TQEvent t1) -> IO CBool

instance Qevent_h (QTcpSocketSc a) ((QEvent t1)) where
 event_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTcpSocket_event cobj_x0 cobj_x1

instance QsetHandler (QTcpSocket ()) (QTcpSocket x0 -> QObject t1 -> QEvent t2 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTcpSocket7 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTcpSocket7_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTcpSocket_setHandler7 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTcpSocket x0) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO (CBool)
    setHandlerWrapper x0 x1 x2
      = do x0obj <- qTcpSocketFromPtr x0
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

foreign import ccall "qtc_QTcpSocket_setHandler7" qtc_QTcpSocket_setHandler7 :: Ptr (TQTcpSocket a) -> CWString -> Ptr (Ptr (TQTcpSocket x0) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO (CBool)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QTcpSocket7 :: (Ptr (TQTcpSocket x0) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO (CBool)) -> IO (FunPtr (Ptr (TQTcpSocket x0) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO (CBool)))

foreign import ccall "wrapper" wrapSetHandler_QTcpSocket7_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QTcpSocketSc a) (QTcpSocket x0 -> QObject t1 -> QEvent t2 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QTcpSocket7 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QTcpSocket7_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QTcpSocket_setHandler7 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQTcpSocket x0) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO (CBool)
    setHandlerWrapper x0 x1 x2
      = do x0obj <- qTcpSocketFromPtr x0
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

instance QeventFilter_h (QTcpSocket ()) ((QObject t1, QEvent t2)) where
 eventFilter_h x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QTcpSocket_eventFilter cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QTcpSocket_eventFilter" qtc_QTcpSocket_eventFilter :: Ptr (TQTcpSocket a) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO CBool

instance QeventFilter_h (QTcpSocketSc a) ((QObject t1, QEvent t2)) where
 eventFilter_h x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QTcpSocket_eventFilter cobj_x0 cobj_x1 cobj_x2

