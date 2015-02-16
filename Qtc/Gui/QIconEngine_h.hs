{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QIconEngine_h.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:24
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QIconEngine_h where

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

instance QunSetUserMethod (QIconEngine ()) where
 unSetUserMethod qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QIconEngine_unSetUserMethod cobj_qobj (toCInt 0) (toCInt evid)

foreign import ccall "qtc_QIconEngine_unSetUserMethod" qtc_QIconEngine_unSetUserMethod :: Ptr (TQIconEngine a) -> CInt -> CInt -> IO (CBool)

instance QunSetUserMethod (QIconEngineSc a) where
 unSetUserMethod qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QIconEngine_unSetUserMethod cobj_qobj (toCInt 0) (toCInt evid)

instance QunSetUserMethodVariant (QIconEngine ()) where
 unSetUserMethodVariant qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QIconEngine_unSetUserMethod cobj_qobj (toCInt 1) (toCInt evid)

instance QunSetUserMethodVariant (QIconEngineSc a) where
 unSetUserMethodVariant qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QIconEngine_unSetUserMethod cobj_qobj (toCInt 1) (toCInt evid)

instance QunSetUserMethodVariantList (QIconEngine ()) where
 unSetUserMethodVariantList qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QIconEngine_unSetUserMethod cobj_qobj (toCInt 2) (toCInt evid)

instance QunSetUserMethodVariantList (QIconEngineSc a) where
 unSetUserMethodVariantList qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QIconEngine_unSetUserMethod cobj_qobj (toCInt 2) (toCInt evid)

instance QsetUserMethod (QIconEngine ()) (QIconEngine x0 -> IO ()) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethod_QIconEngine setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethod_QIconEngine_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QIconEngine_setUserMethod cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQIconEngine x0) -> IO ()
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

foreign import ccall "qtc_QIconEngine_setUserMethod" qtc_QIconEngine_setUserMethod :: Ptr (TQIconEngine a) -> CInt -> Ptr (Ptr (TQIconEngine x0) -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetUserMethod_QIconEngine :: (Ptr (TQIconEngine x0) -> IO ()) -> IO (FunPtr (Ptr (TQIconEngine x0) -> IO ()))

foreign import ccall "wrapper" wrapSetUserMethod_QIconEngine_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetUserMethod (QIconEngineSc a) (QIconEngine x0 -> IO ()) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethod_QIconEngine setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethod_QIconEngine_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QIconEngine_setUserMethod cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQIconEngine x0) -> IO ()
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

instance QsetUserMethod (QIconEngine ()) (QIconEngine x0 -> QVariant () -> IO (QVariant ())) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethodVariant_QIconEngine setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethodVariant_QIconEngine_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QIconEngine_setUserMethodVariant cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQIconEngine x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))
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

foreign import ccall "qtc_QIconEngine_setUserMethodVariant" qtc_QIconEngine_setUserMethodVariant :: Ptr (TQIconEngine a) -> CInt -> Ptr (Ptr (TQIconEngine x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetUserMethodVariant_QIconEngine :: (Ptr (TQIconEngine x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))) -> IO (FunPtr (Ptr (TQIconEngine x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))))

foreign import ccall "wrapper" wrapSetUserMethodVariant_QIconEngine_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetUserMethod (QIconEngineSc a) (QIconEngine x0 -> QVariant () -> IO (QVariant ())) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethodVariant_QIconEngine setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethodVariant_QIconEngine_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QIconEngine_setUserMethodVariant cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQIconEngine x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))
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

instance QunSetHandler (QIconEngine ()) where 
 unSetHandler qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withCWString evid $ \cstr_evid ->
    qtc_QIconEngine_unSetHandler cobj_qobj cstr_evid

foreign import ccall "qtc_QIconEngine_unSetHandler" qtc_QIconEngine_unSetHandler :: Ptr (TQIconEngine a) -> CWString -> IO (CBool)

instance QunSetHandler (QIconEngineSc a) where 
 unSetHandler qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withCWString evid $ \cstr_evid ->
    qtc_QIconEngine_unSetHandler cobj_qobj cstr_evid

instance QsetHandler (QIconEngine ()) (QIconEngine x0 -> QSize t1 -> QIconMode -> QIconState -> IO (QSize t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QIconEngine1 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QIconEngine1_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QIconEngine_setHandler1 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQIconEngine x0) -> Ptr (TQSize t1) -> CLong -> CLong -> IO (Ptr (TQSize t0))
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

foreign import ccall "qtc_QIconEngine_setHandler1" qtc_QIconEngine_setHandler1 :: Ptr (TQIconEngine a) -> CWString -> Ptr (Ptr (TQIconEngine x0) -> Ptr (TQSize t1) -> CLong -> CLong -> IO (Ptr (TQSize t0))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QIconEngine1 :: (Ptr (TQIconEngine x0) -> Ptr (TQSize t1) -> CLong -> CLong -> IO (Ptr (TQSize t0))) -> IO (FunPtr (Ptr (TQIconEngine x0) -> Ptr (TQSize t1) -> CLong -> CLong -> IO (Ptr (TQSize t0))))

foreign import ccall "wrapper" wrapSetHandler_QIconEngine1_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QIconEngineSc a) (QIconEngine x0 -> QSize t1 -> QIconMode -> QIconState -> IO (QSize t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QIconEngine1 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QIconEngine1_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QIconEngine_setHandler1 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQIconEngine x0) -> Ptr (TQSize t1) -> CLong -> CLong -> IO (Ptr (TQSize t0))
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

instance QqactualSize_h (QIconEngine ()) ((QSize t1, QIconMode, QIconState)) where
 qactualSize_h x0 (x1, x2, x3)
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QIconEngine_actualSize cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2) (toCLong $ qEnum_toInt x3)

foreign import ccall "qtc_QIconEngine_actualSize" qtc_QIconEngine_actualSize :: Ptr (TQIconEngine a) -> Ptr (TQSize t1) -> CLong -> CLong -> IO (Ptr (TQSize ()))

instance QqactualSize_h (QIconEngineSc a) ((QSize t1, QIconMode, QIconState)) where
 qactualSize_h x0 (x1, x2, x3)
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QIconEngine_actualSize cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2) (toCLong $ qEnum_toInt x3)

instance QactualSize_h (QIconEngine ()) ((Size, QIconMode, QIconState)) where
 actualSize_h x0 (x1, x2, x3)
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QIconEngine_actualSize_qth cobj_x0 csize_x1_w csize_x1_h  (toCLong $ qEnum_toInt x2) (toCLong $ qEnum_toInt x3) csize_ret_w csize_ret_h

foreign import ccall "qtc_QIconEngine_actualSize_qth" qtc_QIconEngine_actualSize_qth :: Ptr (TQIconEngine a) -> CInt -> CInt -> CLong -> CLong -> Ptr CInt -> Ptr CInt -> IO ()

instance QactualSize_h (QIconEngineSc a) ((Size, QIconMode, QIconState)) where
 actualSize_h x0 (x1, x2, x3)
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QIconEngine_actualSize_qth cobj_x0 csize_x1_w csize_x1_h  (toCLong $ qEnum_toInt x2) (toCLong $ qEnum_toInt x3) csize_ret_w csize_ret_h

instance QsetHandler (QIconEngine ()) (QIconEngine x0 -> String -> QSize t2 -> QIconMode -> QIconState -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QIconEngine2 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QIconEngine2_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QIconEngine_setHandler2 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQIconEngine x0) -> Ptr (TQString ()) -> Ptr (TQSize t2) -> CLong -> CLong -> IO ()
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

foreign import ccall "qtc_QIconEngine_setHandler2" qtc_QIconEngine_setHandler2 :: Ptr (TQIconEngine a) -> CWString -> Ptr (Ptr (TQIconEngine x0) -> Ptr (TQString ()) -> Ptr (TQSize t2) -> CLong -> CLong -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QIconEngine2 :: (Ptr (TQIconEngine x0) -> Ptr (TQString ()) -> Ptr (TQSize t2) -> CLong -> CLong -> IO ()) -> IO (FunPtr (Ptr (TQIconEngine x0) -> Ptr (TQString ()) -> Ptr (TQSize t2) -> CLong -> CLong -> IO ()))

foreign import ccall "wrapper" wrapSetHandler_QIconEngine2_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QIconEngineSc a) (QIconEngine x0 -> String -> QSize t2 -> QIconMode -> QIconState -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QIconEngine2 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QIconEngine2_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QIconEngine_setHandler2 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQIconEngine x0) -> Ptr (TQString ()) -> Ptr (TQSize t2) -> CLong -> CLong -> IO ()
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

instance QqaddFile_h (QIconEngine ()) ((String, QSize t2, QIconMode, QIconState)) where
 qaddFile_h x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QIconEngine_addFile cobj_x0 cstr_x1 cobj_x2 (toCLong $ qEnum_toInt x3) (toCLong $ qEnum_toInt x4)

foreign import ccall "qtc_QIconEngine_addFile" qtc_QIconEngine_addFile :: Ptr (TQIconEngine a) -> CWString -> Ptr (TQSize t2) -> CLong -> CLong -> IO ()

instance QqaddFile_h (QIconEngineSc a) ((String, QSize t2, QIconMode, QIconState)) where
 qaddFile_h x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QIconEngine_addFile cobj_x0 cstr_x1 cobj_x2 (toCLong $ qEnum_toInt x3) (toCLong $ qEnum_toInt x4)

instance QaddFile_h (QIconEngine ()) ((String, Size, QIconMode, QIconState)) where
 addFile_h x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    withCSize x2 $ \csize_x2_w csize_x2_h -> 
    qtc_QIconEngine_addFile_qth cobj_x0 cstr_x1 csize_x2_w csize_x2_h  (toCLong $ qEnum_toInt x3) (toCLong $ qEnum_toInt x4)

foreign import ccall "qtc_QIconEngine_addFile_qth" qtc_QIconEngine_addFile_qth :: Ptr (TQIconEngine a) -> CWString -> CInt -> CInt -> CLong -> CLong -> IO ()

instance QaddFile_h (QIconEngineSc a) ((String, Size, QIconMode, QIconState)) where
 addFile_h x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    withCSize x2 $ \csize_x2_w csize_x2_h -> 
    qtc_QIconEngine_addFile_qth cobj_x0 cstr_x1 csize_x2_w csize_x2_h  (toCLong $ qEnum_toInt x3) (toCLong $ qEnum_toInt x4)

instance QsetHandler (QIconEngine ()) (QIconEngine x0 -> QPaintDevice t1 -> QIconMode -> QIconState -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QIconEngine3 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QIconEngine3_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QIconEngine_setHandler3 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQIconEngine x0) -> Ptr (TQPaintDevice t1) -> CLong -> CLong -> IO ()
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

foreign import ccall "qtc_QIconEngine_setHandler3" qtc_QIconEngine_setHandler3 :: Ptr (TQIconEngine a) -> CWString -> Ptr (Ptr (TQIconEngine x0) -> Ptr (TQPaintDevice t1) -> CLong -> CLong -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QIconEngine3 :: (Ptr (TQIconEngine x0) -> Ptr (TQPaintDevice t1) -> CLong -> CLong -> IO ()) -> IO (FunPtr (Ptr (TQIconEngine x0) -> Ptr (TQPaintDevice t1) -> CLong -> CLong -> IO ()))

foreign import ccall "wrapper" wrapSetHandler_QIconEngine3_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QIconEngineSc a) (QIconEngine x0 -> QPaintDevice t1 -> QIconMode -> QIconState -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QIconEngine3 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QIconEngine3_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QIconEngine_setHandler3 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQIconEngine x0) -> Ptr (TQPaintDevice t1) -> CLong -> CLong -> IO ()
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

instance QaddPixmap_h (QIconEngine ()) ((QPixmap t1, QIconMode, QIconState)) where
 addPixmap_h x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QIconEngine_addPixmap cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2) (toCLong $ qEnum_toInt x3)

foreign import ccall "qtc_QIconEngine_addPixmap" qtc_QIconEngine_addPixmap :: Ptr (TQIconEngine a) -> Ptr (TQPixmap t1) -> CLong -> CLong -> IO ()

instance QaddPixmap_h (QIconEngineSc a) ((QPixmap t1, QIconMode, QIconState)) where
 addPixmap_h x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QIconEngine_addPixmap cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2) (toCLong $ qEnum_toInt x3)

instance QsetHandler (QIconEngine ()) (QIconEngine x0 -> QPainter t1 -> QRect t2 -> QIconMode -> QIconState -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QIconEngine4 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QIconEngine4_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QIconEngine_setHandler4 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQIconEngine x0) -> Ptr (TQPainter t1) -> Ptr (TQRect t2) -> CLong -> CLong -> IO ()
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

foreign import ccall "qtc_QIconEngine_setHandler4" qtc_QIconEngine_setHandler4 :: Ptr (TQIconEngine a) -> CWString -> Ptr (Ptr (TQIconEngine x0) -> Ptr (TQPainter t1) -> Ptr (TQRect t2) -> CLong -> CLong -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QIconEngine4 :: (Ptr (TQIconEngine x0) -> Ptr (TQPainter t1) -> Ptr (TQRect t2) -> CLong -> CLong -> IO ()) -> IO (FunPtr (Ptr (TQIconEngine x0) -> Ptr (TQPainter t1) -> Ptr (TQRect t2) -> CLong -> CLong -> IO ()))

foreign import ccall "wrapper" wrapSetHandler_QIconEngine4_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QIconEngineSc a) (QIconEngine x0 -> QPainter t1 -> QRect t2 -> QIconMode -> QIconState -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QIconEngine4 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QIconEngine4_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QIconEngine_setHandler4 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQIconEngine x0) -> Ptr (TQPainter t1) -> Ptr (TQRect t2) -> CLong -> CLong -> IO ()
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

instance Qqpaint_h (QIconEngine ()) ((QPainter t1, QRect t2, QIconMode, QIconState)) where
 qpaint_h x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QIconEngine_paint cobj_x0 cobj_x1 cobj_x2 (toCLong $ qEnum_toInt x3) (toCLong $ qEnum_toInt x4)

foreign import ccall "qtc_QIconEngine_paint" qtc_QIconEngine_paint :: Ptr (TQIconEngine a) -> Ptr (TQPainter t1) -> Ptr (TQRect t2) -> CLong -> CLong -> IO ()

instance Qqpaint_h (QIconEngineSc a) ((QPainter t1, QRect t2, QIconMode, QIconState)) where
 qpaint_h x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QIconEngine_paint cobj_x0 cobj_x1 cobj_x2 (toCLong $ qEnum_toInt x3) (toCLong $ qEnum_toInt x4)

instance Qpaint_h (QIconEngine ()) ((QPainter t1, Rect, QIconMode, QIconState)) where
 paint_h x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCRect x2 $ \crect_x2_x crect_x2_y  crect_x2_w crect_x2_h -> 
    qtc_QIconEngine_paint_qth cobj_x0 cobj_x1 crect_x2_x crect_x2_y crect_x2_w crect_x2_h  (toCLong $ qEnum_toInt x3) (toCLong $ qEnum_toInt x4)

foreign import ccall "qtc_QIconEngine_paint_qth" qtc_QIconEngine_paint_qth :: Ptr (TQIconEngine a) -> Ptr (TQPainter t1) -> CInt -> CInt -> CInt -> CInt -> CLong -> CLong -> IO ()

instance Qpaint_h (QIconEngineSc a) ((QPainter t1, Rect, QIconMode, QIconState)) where
 paint_h x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCRect x2 $ \crect_x2_x crect_x2_y  crect_x2_w crect_x2_h -> 
    qtc_QIconEngine_paint_qth cobj_x0 cobj_x1 crect_x2_x crect_x2_y crect_x2_w crect_x2_h  (toCLong $ qEnum_toInt x3) (toCLong $ qEnum_toInt x4)

instance QsetHandler (QIconEngine ()) (QIconEngine x0 -> QSize t1 -> QIconMode -> QIconState -> IO (QPaintDevice t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QIconEngine5 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QIconEngine5_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QIconEngine_setHandler5 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQIconEngine x0) -> Ptr (TQSize t1) -> CLong -> CLong -> IO (Ptr (TQPaintDevice t0))
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

foreign import ccall "qtc_QIconEngine_setHandler5" qtc_QIconEngine_setHandler5 :: Ptr (TQIconEngine a) -> CWString -> Ptr (Ptr (TQIconEngine x0) -> Ptr (TQSize t1) -> CLong -> CLong -> IO (Ptr (TQPaintDevice t0))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QIconEngine5 :: (Ptr (TQIconEngine x0) -> Ptr (TQSize t1) -> CLong -> CLong -> IO (Ptr (TQPaintDevice t0))) -> IO (FunPtr (Ptr (TQIconEngine x0) -> Ptr (TQSize t1) -> CLong -> CLong -> IO (Ptr (TQPaintDevice t0))))

foreign import ccall "wrapper" wrapSetHandler_QIconEngine5_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QIconEngineSc a) (QIconEngine x0 -> QSize t1 -> QIconMode -> QIconState -> IO (QPaintDevice t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QIconEngine5 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QIconEngine5_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QIconEngine_setHandler5 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQIconEngine x0) -> Ptr (TQSize t1) -> CLong -> CLong -> IO (Ptr (TQPaintDevice t0))
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

instance Qqpixmap_h (QIconEngine ()) ((QSize t1, QIconMode, QIconState)) where
 qpixmap_h x0 (x1, x2, x3)
  = withQPixmapResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QIconEngine_pixmap cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2) (toCLong $ qEnum_toInt x3)

foreign import ccall "qtc_QIconEngine_pixmap" qtc_QIconEngine_pixmap :: Ptr (TQIconEngine a) -> Ptr (TQSize t1) -> CLong -> CLong -> IO (Ptr (TQPixmap ()))

instance Qqpixmap_h (QIconEngineSc a) ((QSize t1, QIconMode, QIconState)) where
 qpixmap_h x0 (x1, x2, x3)
  = withQPixmapResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QIconEngine_pixmap cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2) (toCLong $ qEnum_toInt x3)

instance Qpixmap_h (QIconEngine ()) ((Size, QIconMode, QIconState)) where
 pixmap_h x0 (x1, x2, x3)
  = withQPixmapResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QIconEngine_pixmap_qth cobj_x0 csize_x1_w csize_x1_h  (toCLong $ qEnum_toInt x2) (toCLong $ qEnum_toInt x3)

foreign import ccall "qtc_QIconEngine_pixmap_qth" qtc_QIconEngine_pixmap_qth :: Ptr (TQIconEngine a) -> CInt -> CInt -> CLong -> CLong -> IO (Ptr (TQPixmap ()))

instance Qpixmap_h (QIconEngineSc a) ((Size, QIconMode, QIconState)) where
 pixmap_h x0 (x1, x2, x3)
  = withQPixmapResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QIconEngine_pixmap_qth cobj_x0 csize_x1_w csize_x1_h  (toCLong $ qEnum_toInt x2) (toCLong $ qEnum_toInt x3)

