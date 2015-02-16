{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QImage_h.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:26
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QImage_h where

import Foreign.C.Types
import Qtc.Enums.Base
import Qtc.Enums.Gui.QPaintDevice

import Qtc.Classes.Base
import Qtc.Classes.Qccs_h
import Qtc.Classes.Core_h
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core
import Qtc.Classes.Gui_h
import Qtc.ClassTypes.Gui
import Foreign.Marshal.Array

instance QunSetUserMethod (QImage ()) where
 unSetUserMethod qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QImage_unSetUserMethod cobj_qobj (toCInt 0) (toCInt evid)

foreign import ccall "qtc_QImage_unSetUserMethod" qtc_QImage_unSetUserMethod :: Ptr (TQImage a) -> CInt -> CInt -> IO (CBool)

instance QunSetUserMethod (QImageSc a) where
 unSetUserMethod qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QImage_unSetUserMethod cobj_qobj (toCInt 0) (toCInt evid)

instance QunSetUserMethodVariant (QImage ()) where
 unSetUserMethodVariant qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QImage_unSetUserMethod cobj_qobj (toCInt 1) (toCInt evid)

instance QunSetUserMethodVariant (QImageSc a) where
 unSetUserMethodVariant qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QImage_unSetUserMethod cobj_qobj (toCInt 1) (toCInt evid)

instance QunSetUserMethodVariantList (QImage ()) where
 unSetUserMethodVariantList qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QImage_unSetUserMethod cobj_qobj (toCInt 2) (toCInt evid)

instance QunSetUserMethodVariantList (QImageSc a) where
 unSetUserMethodVariantList qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QImage_unSetUserMethod cobj_qobj (toCInt 2) (toCInt evid)

instance QsetUserMethod (QImage ()) (QImage x0 -> IO ()) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethod_QImage setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethod_QImage_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QImage_setUserMethod cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQImage x0) -> IO ()
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

foreign import ccall "qtc_QImage_setUserMethod" qtc_QImage_setUserMethod :: Ptr (TQImage a) -> CInt -> Ptr (Ptr (TQImage x0) -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetUserMethod_QImage :: (Ptr (TQImage x0) -> IO ()) -> IO (FunPtr (Ptr (TQImage x0) -> IO ()))

foreign import ccall "wrapper" wrapSetUserMethod_QImage_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetUserMethod (QImageSc a) (QImage x0 -> IO ()) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethod_QImage setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethod_QImage_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QImage_setUserMethod cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQImage x0) -> IO ()
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

instance QsetUserMethod (QImage ()) (QImage x0 -> QVariant () -> IO (QVariant ())) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethodVariant_QImage setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethodVariant_QImage_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QImage_setUserMethodVariant cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQImage x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))
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

foreign import ccall "qtc_QImage_setUserMethodVariant" qtc_QImage_setUserMethodVariant :: Ptr (TQImage a) -> CInt -> Ptr (Ptr (TQImage x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetUserMethodVariant_QImage :: (Ptr (TQImage x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))) -> IO (FunPtr (Ptr (TQImage x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))))

foreign import ccall "wrapper" wrapSetUserMethodVariant_QImage_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetUserMethod (QImageSc a) (QImage x0 -> QVariant () -> IO (QVariant ())) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethodVariant_QImage setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethodVariant_QImage_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QImage_setUserMethodVariant cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQImage x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))
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

instance QunSetHandler (QImage ()) where 
 unSetHandler qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withCWString evid $ \cstr_evid ->
    qtc_QImage_unSetHandler cobj_qobj cstr_evid

foreign import ccall "qtc_QImage_unSetHandler" qtc_QImage_unSetHandler :: Ptr (TQImage a) -> CWString -> IO (CBool)

instance QunSetHandler (QImageSc a) where 
 unSetHandler qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withCWString evid $ \cstr_evid ->
    qtc_QImage_unSetHandler cobj_qobj cstr_evid

instance QsetHandler (QImage ()) (QImage x0 -> IO (Int)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QImage1 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QImage1_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QImage_setHandler1 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQImage x0) -> IO (CInt)
    setHandlerWrapper x0
      = do x0obj <- objectFromPtr_nf x0
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

foreign import ccall "qtc_QImage_setHandler1" qtc_QImage_setHandler1 :: Ptr (TQImage a) -> CWString -> Ptr (Ptr (TQImage x0) -> IO (CInt)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QImage1 :: (Ptr (TQImage x0) -> IO (CInt)) -> IO (FunPtr (Ptr (TQImage x0) -> IO (CInt)))

foreign import ccall "wrapper" wrapSetHandler_QImage1_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QImageSc a) (QImage x0 -> IO (Int)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QImage1 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QImage1_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QImage_setHandler1 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQImage x0) -> IO (CInt)
    setHandlerWrapper x0
      = do x0obj <- objectFromPtr_nf x0
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

instance QdevType_h (QImage ()) (()) where
 devType_h x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QImage_devType cobj_x0

foreign import ccall "qtc_QImage_devType" qtc_QImage_devType :: Ptr (TQImage a) -> IO CInt

instance QdevType_h (QImageSc a) (()) where
 devType_h x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QImage_devType cobj_x0

instance QsetHandler (QImage ()) (QImage x0 -> IO (QPaintEngine t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QImage2 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QImage2_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QImage_setHandler2 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQImage x0) -> IO (Ptr (TQPaintEngine t0))
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

foreign import ccall "qtc_QImage_setHandler2" qtc_QImage_setHandler2 :: Ptr (TQImage a) -> CWString -> Ptr (Ptr (TQImage x0) -> IO (Ptr (TQPaintEngine t0))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QImage2 :: (Ptr (TQImage x0) -> IO (Ptr (TQPaintEngine t0))) -> IO (FunPtr (Ptr (TQImage x0) -> IO (Ptr (TQPaintEngine t0))))

foreign import ccall "wrapper" wrapSetHandler_QImage2_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QImageSc a) (QImage x0 -> IO (QPaintEngine t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QImage2 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QImage2_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QImage_setHandler2 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQImage x0) -> IO (Ptr (TQPaintEngine t0))
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

instance QpaintEngine_h (QImage ()) (()) where
 paintEngine_h x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QImage_paintEngine cobj_x0

foreign import ccall "qtc_QImage_paintEngine" qtc_QImage_paintEngine :: Ptr (TQImage a) -> IO (Ptr (TQPaintEngine ()))

instance QpaintEngine_h (QImageSc a) (()) where
 paintEngine_h x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QImage_paintEngine cobj_x0

