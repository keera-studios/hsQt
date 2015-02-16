{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QGridLayout_h.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:21
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QGridLayout_h where

import Foreign.C.Types
import Qtc.Enums.Base
import Qtc.Enums.Core.Qt

import Qtc.Classes.Base
import Qtc.Classes.Qccs_h
import Qtc.Classes.Core_h
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core
import Qtc.Classes.Gui_h
import Qtc.ClassTypes.Gui
import Foreign.Marshal.Array

instance QunSetUserMethod (QGridLayout ()) where
 unSetUserMethod qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QGridLayout_unSetUserMethod cobj_qobj (toCInt 0) (toCInt evid)

foreign import ccall "qtc_QGridLayout_unSetUserMethod" qtc_QGridLayout_unSetUserMethod :: Ptr (TQGridLayout a) -> CInt -> CInt -> IO (CBool)

instance QunSetUserMethod (QGridLayoutSc a) where
 unSetUserMethod qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QGridLayout_unSetUserMethod cobj_qobj (toCInt 0) (toCInt evid)

instance QunSetUserMethodVariant (QGridLayout ()) where
 unSetUserMethodVariant qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QGridLayout_unSetUserMethod cobj_qobj (toCInt 1) (toCInt evid)

instance QunSetUserMethodVariant (QGridLayoutSc a) where
 unSetUserMethodVariant qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QGridLayout_unSetUserMethod cobj_qobj (toCInt 1) (toCInt evid)

instance QunSetUserMethodVariantList (QGridLayout ()) where
 unSetUserMethodVariantList qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QGridLayout_unSetUserMethod cobj_qobj (toCInt 2) (toCInt evid)

instance QunSetUserMethodVariantList (QGridLayoutSc a) where
 unSetUserMethodVariantList qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QGridLayout_unSetUserMethod cobj_qobj (toCInt 2) (toCInt evid)

instance QsetUserMethod (QGridLayout ()) (QGridLayout x0 -> IO ()) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethod_QGridLayout setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethod_QGridLayout_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QGridLayout_setUserMethod cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQGridLayout x0) -> IO ()
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

foreign import ccall "qtc_QGridLayout_setUserMethod" qtc_QGridLayout_setUserMethod :: Ptr (TQGridLayout a) -> CInt -> Ptr (Ptr (TQGridLayout x0) -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetUserMethod_QGridLayout :: (Ptr (TQGridLayout x0) -> IO ()) -> IO (FunPtr (Ptr (TQGridLayout x0) -> IO ()))

foreign import ccall "wrapper" wrapSetUserMethod_QGridLayout_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetUserMethod (QGridLayoutSc a) (QGridLayout x0 -> IO ()) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethod_QGridLayout setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethod_QGridLayout_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QGridLayout_setUserMethod cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQGridLayout x0) -> IO ()
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

instance QsetUserMethod (QGridLayout ()) (QGridLayout x0 -> QVariant () -> IO (QVariant ())) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethodVariant_QGridLayout setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethodVariant_QGridLayout_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QGridLayout_setUserMethodVariant cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQGridLayout x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))
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

foreign import ccall "qtc_QGridLayout_setUserMethodVariant" qtc_QGridLayout_setUserMethodVariant :: Ptr (TQGridLayout a) -> CInt -> Ptr (Ptr (TQGridLayout x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetUserMethodVariant_QGridLayout :: (Ptr (TQGridLayout x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))) -> IO (FunPtr (Ptr (TQGridLayout x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))))

foreign import ccall "wrapper" wrapSetUserMethodVariant_QGridLayout_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetUserMethod (QGridLayoutSc a) (QGridLayout x0 -> QVariant () -> IO (QVariant ())) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethodVariant_QGridLayout setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethodVariant_QGridLayout_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QGridLayout_setUserMethodVariant cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQGridLayout x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))
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

instance QunSetHandler (QGridLayout ()) where 
 unSetHandler qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withCWString evid $ \cstr_evid ->
    qtc_QGridLayout_unSetHandler cobj_qobj cstr_evid

foreign import ccall "qtc_QGridLayout_unSetHandler" qtc_QGridLayout_unSetHandler :: Ptr (TQGridLayout a) -> CWString -> IO (CBool)

instance QunSetHandler (QGridLayoutSc a) where 
 unSetHandler qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withCWString evid $ \cstr_evid ->
    qtc_QGridLayout_unSetHandler cobj_qobj cstr_evid

instance QsetHandler (QGridLayout ()) (QGridLayout x0 -> IO (Int)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QGridLayout1 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QGridLayout1_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QGridLayout_setHandler1 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQGridLayout x0) -> IO (CInt)
    setHandlerWrapper x0
      = do x0obj <- qGridLayoutFromPtr x0
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

foreign import ccall "qtc_QGridLayout_setHandler1" qtc_QGridLayout_setHandler1 :: Ptr (TQGridLayout a) -> CWString -> Ptr (Ptr (TQGridLayout x0) -> IO (CInt)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QGridLayout1 :: (Ptr (TQGridLayout x0) -> IO (CInt)) -> IO (FunPtr (Ptr (TQGridLayout x0) -> IO (CInt)))

foreign import ccall "wrapper" wrapSetHandler_QGridLayout1_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QGridLayoutSc a) (QGridLayout x0 -> IO (Int)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QGridLayout1 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QGridLayout1_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QGridLayout_setHandler1 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQGridLayout x0) -> IO (CInt)
    setHandlerWrapper x0
      = do x0obj <- qGridLayoutFromPtr x0
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

instance Qcount_h (QGridLayout ()) (()) where
 count_h x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGridLayout_count cobj_x0

foreign import ccall "qtc_QGridLayout_count" qtc_QGridLayout_count :: Ptr (TQGridLayout a) -> IO CInt

instance Qcount_h (QGridLayoutSc a) (()) where
 count_h x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGridLayout_count cobj_x0

instance QsetHandler (QGridLayout ()) (QGridLayout x0 -> IO (Orientations)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QGridLayout2 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QGridLayout2_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QGridLayout_setHandler2 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQGridLayout x0) -> IO (CLong)
    setHandlerWrapper x0
      = do x0obj <- qGridLayoutFromPtr x0
           let rv =
                if (objectIsNull x0obj)
                 then withQFlagsResult $ return $ toCLong 0
                 else _handler x0obj
           rvf <- rv
           return (toCLong $ qFlags_toInt rvf)

    setHandlerWrapper_d :: Ptr fun -> Ptr () -> Ptr fun_d -> IO ()
    setHandlerWrapper_d funptr stptr funptr_d
      = do when (stptr/=ptrNull)
            (freeStablePtr (castPtrToStablePtr stptr))
           when (funptr/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr))
           when (funptr_d/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr_d))
           return ()

foreign import ccall "qtc_QGridLayout_setHandler2" qtc_QGridLayout_setHandler2 :: Ptr (TQGridLayout a) -> CWString -> Ptr (Ptr (TQGridLayout x0) -> IO (CLong)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QGridLayout2 :: (Ptr (TQGridLayout x0) -> IO (CLong)) -> IO (FunPtr (Ptr (TQGridLayout x0) -> IO (CLong)))

foreign import ccall "wrapper" wrapSetHandler_QGridLayout2_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QGridLayoutSc a) (QGridLayout x0 -> IO (Orientations)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QGridLayout2 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QGridLayout2_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QGridLayout_setHandler2 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQGridLayout x0) -> IO (CLong)
    setHandlerWrapper x0
      = do x0obj <- qGridLayoutFromPtr x0
           let rv =
                if (objectIsNull x0obj)
                 then withQFlagsResult $ return $ toCLong 0
                 else _handler x0obj
           rvf <- rv
           return (toCLong $ qFlags_toInt rvf)

    setHandlerWrapper_d :: Ptr fun -> Ptr () -> Ptr fun_d -> IO ()
    setHandlerWrapper_d funptr stptr funptr_d
      = do when (stptr/=ptrNull)
            (freeStablePtr (castPtrToStablePtr stptr))
           when (funptr/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr))
           when (funptr_d/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr_d))
           return ()

instance QexpandingDirections_h (QGridLayout ()) (()) where
 expandingDirections_h x0 ()
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGridLayout_expandingDirections cobj_x0

foreign import ccall "qtc_QGridLayout_expandingDirections" qtc_QGridLayout_expandingDirections :: Ptr (TQGridLayout a) -> IO CLong

instance QexpandingDirections_h (QGridLayoutSc a) (()) where
 expandingDirections_h x0 ()
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGridLayout_expandingDirections cobj_x0

instance QsetHandler (QGridLayout ()) (QGridLayout x0 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QGridLayout3 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QGridLayout3_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QGridLayout_setHandler3 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQGridLayout x0) -> IO (CBool)
    setHandlerWrapper x0
      = do x0obj <- qGridLayoutFromPtr x0
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

foreign import ccall "qtc_QGridLayout_setHandler3" qtc_QGridLayout_setHandler3 :: Ptr (TQGridLayout a) -> CWString -> Ptr (Ptr (TQGridLayout x0) -> IO (CBool)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QGridLayout3 :: (Ptr (TQGridLayout x0) -> IO (CBool)) -> IO (FunPtr (Ptr (TQGridLayout x0) -> IO (CBool)))

foreign import ccall "wrapper" wrapSetHandler_QGridLayout3_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QGridLayoutSc a) (QGridLayout x0 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QGridLayout3 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QGridLayout3_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QGridLayout_setHandler3 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQGridLayout x0) -> IO (CBool)
    setHandlerWrapper x0
      = do x0obj <- qGridLayoutFromPtr x0
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

instance QhasHeightForWidth_h (QGridLayout ()) (()) where
 hasHeightForWidth_h x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGridLayout_hasHeightForWidth cobj_x0

foreign import ccall "qtc_QGridLayout_hasHeightForWidth" qtc_QGridLayout_hasHeightForWidth :: Ptr (TQGridLayout a) -> IO CBool

instance QhasHeightForWidth_h (QGridLayoutSc a) (()) where
 hasHeightForWidth_h x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGridLayout_hasHeightForWidth cobj_x0

instance QsetHandler (QGridLayout ()) (QGridLayout x0 -> Int -> IO (Int)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QGridLayout4 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QGridLayout4_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QGridLayout_setHandler4 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQGridLayout x0) -> CInt -> IO (CInt)
    setHandlerWrapper x0 x1
      = do x0obj <- qGridLayoutFromPtr x0
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

foreign import ccall "qtc_QGridLayout_setHandler4" qtc_QGridLayout_setHandler4 :: Ptr (TQGridLayout a) -> CWString -> Ptr (Ptr (TQGridLayout x0) -> CInt -> IO (CInt)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QGridLayout4 :: (Ptr (TQGridLayout x0) -> CInt -> IO (CInt)) -> IO (FunPtr (Ptr (TQGridLayout x0) -> CInt -> IO (CInt)))

foreign import ccall "wrapper" wrapSetHandler_QGridLayout4_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QGridLayoutSc a) (QGridLayout x0 -> Int -> IO (Int)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QGridLayout4 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QGridLayout4_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QGridLayout_setHandler4 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQGridLayout x0) -> CInt -> IO (CInt)
    setHandlerWrapper x0 x1
      = do x0obj <- qGridLayoutFromPtr x0
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

instance QheightForWidth_h (QGridLayout ()) ((Int)) where
 heightForWidth_h x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGridLayout_heightForWidth cobj_x0 (toCInt x1)

foreign import ccall "qtc_QGridLayout_heightForWidth" qtc_QGridLayout_heightForWidth :: Ptr (TQGridLayout a) -> CInt -> IO CInt

instance QheightForWidth_h (QGridLayoutSc a) ((Int)) where
 heightForWidth_h x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGridLayout_heightForWidth cobj_x0 (toCInt x1)

instance QsetHandler (QGridLayout ()) (QGridLayout x0 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QGridLayout5 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QGridLayout5_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QGridLayout_setHandler5 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQGridLayout x0) -> IO ()
    setHandlerWrapper x0
      = do x0obj <- qGridLayoutFromPtr x0
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

foreign import ccall "qtc_QGridLayout_setHandler5" qtc_QGridLayout_setHandler5 :: Ptr (TQGridLayout a) -> CWString -> Ptr (Ptr (TQGridLayout x0) -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QGridLayout5 :: (Ptr (TQGridLayout x0) -> IO ()) -> IO (FunPtr (Ptr (TQGridLayout x0) -> IO ()))

foreign import ccall "wrapper" wrapSetHandler_QGridLayout5_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QGridLayoutSc a) (QGridLayout x0 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QGridLayout5 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QGridLayout5_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QGridLayout_setHandler5 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQGridLayout x0) -> IO ()
    setHandlerWrapper x0
      = do x0obj <- qGridLayoutFromPtr x0
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

instance Qinvalidate_h (QGridLayout ()) (()) where
 invalidate_h x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGridLayout_invalidate cobj_x0

foreign import ccall "qtc_QGridLayout_invalidate" qtc_QGridLayout_invalidate :: Ptr (TQGridLayout a) -> IO ()

instance Qinvalidate_h (QGridLayoutSc a) (()) where
 invalidate_h x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGridLayout_invalidate cobj_x0

instance QsetHandler (QGridLayout ()) (QGridLayout x0 -> Int -> IO (QLayoutItem t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QGridLayout6 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QGridLayout6_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QGridLayout_setHandler6 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQGridLayout x0) -> CInt -> IO (Ptr (TQLayoutItem t0))
    setHandlerWrapper x0 x1
      = do x0obj <- qGridLayoutFromPtr x0
           let x1int = fromCInt x1
           let rv =
                if (objectIsNull x0obj)
                 then return $ objectCast x0obj
                 else _handler x0obj x1int
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

foreign import ccall "qtc_QGridLayout_setHandler6" qtc_QGridLayout_setHandler6 :: Ptr (TQGridLayout a) -> CWString -> Ptr (Ptr (TQGridLayout x0) -> CInt -> IO (Ptr (TQLayoutItem t0))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QGridLayout6 :: (Ptr (TQGridLayout x0) -> CInt -> IO (Ptr (TQLayoutItem t0))) -> IO (FunPtr (Ptr (TQGridLayout x0) -> CInt -> IO (Ptr (TQLayoutItem t0))))

foreign import ccall "wrapper" wrapSetHandler_QGridLayout6_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QGridLayoutSc a) (QGridLayout x0 -> Int -> IO (QLayoutItem t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QGridLayout6 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QGridLayout6_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QGridLayout_setHandler6 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQGridLayout x0) -> CInt -> IO (Ptr (TQLayoutItem t0))
    setHandlerWrapper x0 x1
      = do x0obj <- qGridLayoutFromPtr x0
           let x1int = fromCInt x1
           let rv =
                if (objectIsNull x0obj)
                 then return $ objectCast x0obj
                 else _handler x0obj x1int
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

instance QitemAt_h (QGridLayout ()) ((Int)) where
 itemAt_h x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGridLayout_itemAt cobj_x0 (toCInt x1)

foreign import ccall "qtc_QGridLayout_itemAt" qtc_QGridLayout_itemAt :: Ptr (TQGridLayout a) -> CInt -> IO (Ptr (TQLayoutItem ()))

instance QitemAt_h (QGridLayoutSc a) ((Int)) where
 itemAt_h x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGridLayout_itemAt cobj_x0 (toCInt x1)

instance QsetHandler (QGridLayout ()) (QGridLayout x0 -> IO (QSize t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QGridLayout7 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QGridLayout7_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QGridLayout_setHandler7 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQGridLayout x0) -> IO (Ptr (TQSize t0))
    setHandlerWrapper x0
      = do x0obj <- qGridLayoutFromPtr x0
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

foreign import ccall "qtc_QGridLayout_setHandler7" qtc_QGridLayout_setHandler7 :: Ptr (TQGridLayout a) -> CWString -> Ptr (Ptr (TQGridLayout x0) -> IO (Ptr (TQSize t0))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QGridLayout7 :: (Ptr (TQGridLayout x0) -> IO (Ptr (TQSize t0))) -> IO (FunPtr (Ptr (TQGridLayout x0) -> IO (Ptr (TQSize t0))))

foreign import ccall "wrapper" wrapSetHandler_QGridLayout7_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QGridLayoutSc a) (QGridLayout x0 -> IO (QSize t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QGridLayout7 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QGridLayout7_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QGridLayout_setHandler7 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQGridLayout x0) -> IO (Ptr (TQSize t0))
    setHandlerWrapper x0
      = do x0obj <- qGridLayoutFromPtr x0
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

instance QqmaximumSize_h (QGridLayout ()) (()) where
 qmaximumSize_h x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGridLayout_maximumSize cobj_x0

foreign import ccall "qtc_QGridLayout_maximumSize" qtc_QGridLayout_maximumSize :: Ptr (TQGridLayout a) -> IO (Ptr (TQSize ()))

instance QqmaximumSize_h (QGridLayoutSc a) (()) where
 qmaximumSize_h x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGridLayout_maximumSize cobj_x0

instance QmaximumSize_h (QGridLayout ()) (()) where
 maximumSize_h x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGridLayout_maximumSize_qth cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QGridLayout_maximumSize_qth" qtc_QGridLayout_maximumSize_qth :: Ptr (TQGridLayout a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QmaximumSize_h (QGridLayoutSc a) (()) where
 maximumSize_h x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGridLayout_maximumSize_qth cobj_x0 csize_ret_w csize_ret_h

instance QminimumHeightForWidth_h (QGridLayout ()) ((Int)) where
 minimumHeightForWidth_h x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGridLayout_minimumHeightForWidth cobj_x0 (toCInt x1)

foreign import ccall "qtc_QGridLayout_minimumHeightForWidth" qtc_QGridLayout_minimumHeightForWidth :: Ptr (TQGridLayout a) -> CInt -> IO CInt

instance QminimumHeightForWidth_h (QGridLayoutSc a) ((Int)) where
 minimumHeightForWidth_h x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGridLayout_minimumHeightForWidth cobj_x0 (toCInt x1)

instance QqminimumSize_h (QGridLayout ()) (()) where
 qminimumSize_h x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGridLayout_minimumSize cobj_x0

foreign import ccall "qtc_QGridLayout_minimumSize" qtc_QGridLayout_minimumSize :: Ptr (TQGridLayout a) -> IO (Ptr (TQSize ()))

instance QqminimumSize_h (QGridLayoutSc a) (()) where
 qminimumSize_h x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGridLayout_minimumSize cobj_x0

instance QminimumSize_h (QGridLayout ()) (()) where
 minimumSize_h x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGridLayout_minimumSize_qth cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QGridLayout_minimumSize_qth" qtc_QGridLayout_minimumSize_qth :: Ptr (TQGridLayout a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QminimumSize_h (QGridLayoutSc a) (()) where
 minimumSize_h x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGridLayout_minimumSize_qth cobj_x0 csize_ret_w csize_ret_h

instance QsetHandler (QGridLayout ()) (QGridLayout x0 -> QRect t1 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QGridLayout8 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QGridLayout8_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QGridLayout_setHandler8 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQGridLayout x0) -> Ptr (TQRect t1) -> IO ()
    setHandlerWrapper x0 x1
      = do x0obj <- qGridLayoutFromPtr x0
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

foreign import ccall "qtc_QGridLayout_setHandler8" qtc_QGridLayout_setHandler8 :: Ptr (TQGridLayout a) -> CWString -> Ptr (Ptr (TQGridLayout x0) -> Ptr (TQRect t1) -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QGridLayout8 :: (Ptr (TQGridLayout x0) -> Ptr (TQRect t1) -> IO ()) -> IO (FunPtr (Ptr (TQGridLayout x0) -> Ptr (TQRect t1) -> IO ()))

foreign import ccall "wrapper" wrapSetHandler_QGridLayout8_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QGridLayoutSc a) (QGridLayout x0 -> QRect t1 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QGridLayout8 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QGridLayout8_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QGridLayout_setHandler8 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQGridLayout x0) -> Ptr (TQRect t1) -> IO ()
    setHandlerWrapper x0 x1
      = do x0obj <- qGridLayoutFromPtr x0
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

instance QqsetGeometry_h (QGridLayout ()) ((QRect t1)) where
 qsetGeometry_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGridLayout_setGeometry cobj_x0 cobj_x1

foreign import ccall "qtc_QGridLayout_setGeometry" qtc_QGridLayout_setGeometry :: Ptr (TQGridLayout a) -> Ptr (TQRect t1) -> IO ()

instance QqsetGeometry_h (QGridLayoutSc a) ((QRect t1)) where
 qsetGeometry_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGridLayout_setGeometry cobj_x0 cobj_x1

instance QsetGeometry_h (QGridLayout ()) ((Rect)) where
 setGeometry_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QGridLayout_setGeometry_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

foreign import ccall "qtc_QGridLayout_setGeometry_qth" qtc_QGridLayout_setGeometry_qth :: Ptr (TQGridLayout a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QsetGeometry_h (QGridLayoutSc a) ((Rect)) where
 setGeometry_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QGridLayout_setGeometry_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

instance QqsizeHint_h (QGridLayout ()) (()) where
 qsizeHint_h x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGridLayout_sizeHint cobj_x0

foreign import ccall "qtc_QGridLayout_sizeHint" qtc_QGridLayout_sizeHint :: Ptr (TQGridLayout a) -> IO (Ptr (TQSize ()))

instance QqsizeHint_h (QGridLayoutSc a) (()) where
 qsizeHint_h x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGridLayout_sizeHint cobj_x0

instance QsizeHint_h (QGridLayout ()) (()) where
 sizeHint_h x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGridLayout_sizeHint_qth cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QGridLayout_sizeHint_qth" qtc_QGridLayout_sizeHint_qth :: Ptr (TQGridLayout a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QsizeHint_h (QGridLayoutSc a) (()) where
 sizeHint_h x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGridLayout_sizeHint_qth cobj_x0 csize_ret_w csize_ret_h

instance QtakeAt_h (QGridLayout ()) ((Int)) where
 takeAt_h x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGridLayout_takeAt cobj_x0 (toCInt x1)

foreign import ccall "qtc_QGridLayout_takeAt" qtc_QGridLayout_takeAt :: Ptr (TQGridLayout a) -> CInt -> IO (Ptr (TQLayoutItem ()))

instance QtakeAt_h (QGridLayoutSc a) ((Int)) where
 takeAt_h x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGridLayout_takeAt cobj_x0 (toCInt x1)

instance QsetHandler (QGridLayout ()) (QGridLayout x0 -> QLayoutItem t1 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QGridLayout9 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QGridLayout9_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QGridLayout_setHandler9 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQGridLayout x0) -> Ptr (TQLayoutItem t1) -> IO ()
    setHandlerWrapper x0 x1
      = do x0obj <- qGridLayoutFromPtr x0
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

foreign import ccall "qtc_QGridLayout_setHandler9" qtc_QGridLayout_setHandler9 :: Ptr (TQGridLayout a) -> CWString -> Ptr (Ptr (TQGridLayout x0) -> Ptr (TQLayoutItem t1) -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QGridLayout9 :: (Ptr (TQGridLayout x0) -> Ptr (TQLayoutItem t1) -> IO ()) -> IO (FunPtr (Ptr (TQGridLayout x0) -> Ptr (TQLayoutItem t1) -> IO ()))

foreign import ccall "wrapper" wrapSetHandler_QGridLayout9_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QGridLayoutSc a) (QGridLayout x0 -> QLayoutItem t1 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QGridLayout9 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QGridLayout9_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QGridLayout_setHandler9 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQGridLayout x0) -> Ptr (TQLayoutItem t1) -> IO ()
    setHandlerWrapper x0 x1
      = do x0obj <- qGridLayoutFromPtr x0
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

instance QaddItem_h (QGridLayout ()) ((QLayoutItem t1)) where
 addItem_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGridLayout_addItem cobj_x0 cobj_x1

foreign import ccall "qtc_QGridLayout_addItem" qtc_QGridLayout_addItem :: Ptr (TQGridLayout a) -> Ptr (TQLayoutItem t1) -> IO ()

instance QaddItem_h (QGridLayoutSc a) ((QLayoutItem t1)) where
 addItem_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGridLayout_addItem cobj_x0 cobj_x1

instance QsetHandler (QGridLayout ()) (QGridLayout x0 -> QObject t1 -> IO (Int)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QGridLayout10 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QGridLayout10_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QGridLayout_setHandler10 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQGridLayout x0) -> Ptr (TQObject t1) -> IO (CInt)
    setHandlerWrapper x0 x1
      = do x0obj <- qGridLayoutFromPtr x0
           x1obj <- qObjectFromPtr x1
           let rv =
                if (objectIsNull x0obj)
                 then return 0
                 else _handler x0obj x1obj
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

foreign import ccall "qtc_QGridLayout_setHandler10" qtc_QGridLayout_setHandler10 :: Ptr (TQGridLayout a) -> CWString -> Ptr (Ptr (TQGridLayout x0) -> Ptr (TQObject t1) -> IO (CInt)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QGridLayout10 :: (Ptr (TQGridLayout x0) -> Ptr (TQObject t1) -> IO (CInt)) -> IO (FunPtr (Ptr (TQGridLayout x0) -> Ptr (TQObject t1) -> IO (CInt)))

foreign import ccall "wrapper" wrapSetHandler_QGridLayout10_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QGridLayoutSc a) (QGridLayout x0 -> QObject t1 -> IO (Int)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QGridLayout10 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QGridLayout10_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QGridLayout_setHandler10 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQGridLayout x0) -> Ptr (TQObject t1) -> IO (CInt)
    setHandlerWrapper x0 x1
      = do x0obj <- qGridLayoutFromPtr x0
           x1obj <- qObjectFromPtr x1
           let rv =
                if (objectIsNull x0obj)
                 then return 0
                 else _handler x0obj x1obj
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

instance QindexOf_h (QGridLayout ()) ((QWidget t1)) where
 indexOf_h x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGridLayout_indexOf cobj_x0 cobj_x1

foreign import ccall "qtc_QGridLayout_indexOf" qtc_QGridLayout_indexOf :: Ptr (TQGridLayout a) -> Ptr (TQWidget t1) -> IO CInt

instance QindexOf_h (QGridLayoutSc a) ((QWidget t1)) where
 indexOf_h x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGridLayout_indexOf cobj_x0 cobj_x1

instance QqisEmpty_h (QGridLayout ()) (()) where
 qisEmpty_h x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGridLayout_isEmpty cobj_x0

foreign import ccall "qtc_QGridLayout_isEmpty" qtc_QGridLayout_isEmpty :: Ptr (TQGridLayout a) -> IO CBool

instance QqisEmpty_h (QGridLayoutSc a) (()) where
 qisEmpty_h x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGridLayout_isEmpty cobj_x0

instance QsetHandler (QGridLayout ()) (QGridLayout x0 -> IO (QObject t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QGridLayout11 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QGridLayout11_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QGridLayout_setHandler11 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQGridLayout x0) -> IO (Ptr (TQObject t0))
    setHandlerWrapper x0
      = do x0obj <- qGridLayoutFromPtr x0
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

foreign import ccall "qtc_QGridLayout_setHandler11" qtc_QGridLayout_setHandler11 :: Ptr (TQGridLayout a) -> CWString -> Ptr (Ptr (TQGridLayout x0) -> IO (Ptr (TQObject t0))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QGridLayout11 :: (Ptr (TQGridLayout x0) -> IO (Ptr (TQObject t0))) -> IO (FunPtr (Ptr (TQGridLayout x0) -> IO (Ptr (TQObject t0))))

foreign import ccall "wrapper" wrapSetHandler_QGridLayout11_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QGridLayoutSc a) (QGridLayout x0 -> IO (QObject t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QGridLayout11 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QGridLayout11_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QGridLayout_setHandler11 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQGridLayout x0) -> IO (Ptr (TQObject t0))
    setHandlerWrapper x0
      = do x0obj <- qGridLayoutFromPtr x0
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

instance Qlayout_h (QGridLayout ()) (()) where
 layout_h x0 ()
  = withQLayoutResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGridLayout_layout cobj_x0

foreign import ccall "qtc_QGridLayout_layout" qtc_QGridLayout_layout :: Ptr (TQGridLayout a) -> IO (Ptr (TQLayout ()))

instance Qlayout_h (QGridLayoutSc a) (()) where
 layout_h x0 ()
  = withQLayoutResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGridLayout_layout cobj_x0

instance QsetHandler (QGridLayout ()) (QGridLayout x0 -> IO (QRect t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QGridLayout12 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QGridLayout12_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QGridLayout_setHandler12 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQGridLayout x0) -> IO (Ptr (TQRect t0))
    setHandlerWrapper x0
      = do x0obj <- qGridLayoutFromPtr x0
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

foreign import ccall "qtc_QGridLayout_setHandler12" qtc_QGridLayout_setHandler12 :: Ptr (TQGridLayout a) -> CWString -> Ptr (Ptr (TQGridLayout x0) -> IO (Ptr (TQRect t0))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QGridLayout12 :: (Ptr (TQGridLayout x0) -> IO (Ptr (TQRect t0))) -> IO (FunPtr (Ptr (TQGridLayout x0) -> IO (Ptr (TQRect t0))))

foreign import ccall "wrapper" wrapSetHandler_QGridLayout12_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QGridLayoutSc a) (QGridLayout x0 -> IO (QRect t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QGridLayout12 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QGridLayout12_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QGridLayout_setHandler12 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQGridLayout x0) -> IO (Ptr (TQRect t0))
    setHandlerWrapper x0
      = do x0obj <- qGridLayoutFromPtr x0
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

instance Qqgeometry_h (QGridLayout ()) (()) where
 qgeometry_h x0 ()
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGridLayout_geometry cobj_x0

foreign import ccall "qtc_QGridLayout_geometry" qtc_QGridLayout_geometry :: Ptr (TQGridLayout a) -> IO (Ptr (TQRect ()))

instance Qqgeometry_h (QGridLayoutSc a) (()) where
 qgeometry_h x0 ()
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGridLayout_geometry cobj_x0

instance Qgeometry_h (QGridLayout ()) (()) where
 geometry_h x0 ()
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGridLayout_geometry_qth cobj_x0 crect_ret_x crect_ret_y crect_ret_w crect_ret_h

foreign import ccall "qtc_QGridLayout_geometry_qth" qtc_QGridLayout_geometry_qth :: Ptr (TQGridLayout a) -> Ptr CInt -> Ptr CInt -> Ptr CInt -> Ptr CInt -> IO ()

instance Qgeometry_h (QGridLayoutSc a) (()) where
 geometry_h x0 ()
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGridLayout_geometry_qth cobj_x0 crect_ret_x crect_ret_y crect_ret_w crect_ret_h

instance QsetHandler (QGridLayout ()) (QGridLayout x0 -> IO (QLayoutItem t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QGridLayout13 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QGridLayout13_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QGridLayout_setHandler13 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQGridLayout x0) -> IO (Ptr (TQLayoutItem t0))
    setHandlerWrapper x0
      = do x0obj <- qGridLayoutFromPtr x0
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

foreign import ccall "qtc_QGridLayout_setHandler13" qtc_QGridLayout_setHandler13 :: Ptr (TQGridLayout a) -> CWString -> Ptr (Ptr (TQGridLayout x0) -> IO (Ptr (TQLayoutItem t0))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QGridLayout13 :: (Ptr (TQGridLayout x0) -> IO (Ptr (TQLayoutItem t0))) -> IO (FunPtr (Ptr (TQGridLayout x0) -> IO (Ptr (TQLayoutItem t0))))

foreign import ccall "wrapper" wrapSetHandler_QGridLayout13_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QGridLayoutSc a) (QGridLayout x0 -> IO (QLayoutItem t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QGridLayout13 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QGridLayout13_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QGridLayout_setHandler13 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQGridLayout x0) -> IO (Ptr (TQLayoutItem t0))
    setHandlerWrapper x0
      = do x0obj <- qGridLayoutFromPtr x0
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

instance QspacerItem_h (QGridLayout ()) (()) where
 spacerItem_h x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGridLayout_spacerItem cobj_x0

foreign import ccall "qtc_QGridLayout_spacerItem" qtc_QGridLayout_spacerItem :: Ptr (TQGridLayout a) -> IO (Ptr (TQSpacerItem ()))

instance QspacerItem_h (QGridLayoutSc a) (()) where
 spacerItem_h x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGridLayout_spacerItem cobj_x0

instance Qwidget_h (QGridLayout ()) (()) where
 widget_h x0 ()
  = withQWidgetResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGridLayout_widget cobj_x0

foreign import ccall "qtc_QGridLayout_widget" qtc_QGridLayout_widget :: Ptr (TQGridLayout a) -> IO (Ptr (TQWidget ()))

instance Qwidget_h (QGridLayoutSc a) (()) where
 widget_h x0 ()
  = withQWidgetResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGridLayout_widget cobj_x0

instance QsetHandler (QGridLayout ()) (QGridLayout x0 -> QEvent t1 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QGridLayout14 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QGridLayout14_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QGridLayout_setHandler14 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQGridLayout x0) -> Ptr (TQEvent t1) -> IO (CBool)
    setHandlerWrapper x0 x1
      = do x0obj <- qGridLayoutFromPtr x0
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

foreign import ccall "qtc_QGridLayout_setHandler14" qtc_QGridLayout_setHandler14 :: Ptr (TQGridLayout a) -> CWString -> Ptr (Ptr (TQGridLayout x0) -> Ptr (TQEvent t1) -> IO (CBool)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QGridLayout14 :: (Ptr (TQGridLayout x0) -> Ptr (TQEvent t1) -> IO (CBool)) -> IO (FunPtr (Ptr (TQGridLayout x0) -> Ptr (TQEvent t1) -> IO (CBool)))

foreign import ccall "wrapper" wrapSetHandler_QGridLayout14_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QGridLayoutSc a) (QGridLayout x0 -> QEvent t1 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QGridLayout14 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QGridLayout14_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QGridLayout_setHandler14 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQGridLayout x0) -> Ptr (TQEvent t1) -> IO (CBool)
    setHandlerWrapper x0 x1
      = do x0obj <- qGridLayoutFromPtr x0
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

instance Qevent_h (QGridLayout ()) ((QEvent t1)) where
 event_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGridLayout_event cobj_x0 cobj_x1

foreign import ccall "qtc_QGridLayout_event" qtc_QGridLayout_event :: Ptr (TQGridLayout a) -> Ptr (TQEvent t1) -> IO CBool

instance Qevent_h (QGridLayoutSc a) ((QEvent t1)) where
 event_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGridLayout_event cobj_x0 cobj_x1

instance QsetHandler (QGridLayout ()) (QGridLayout x0 -> QObject t1 -> QEvent t2 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QGridLayout15 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QGridLayout15_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QGridLayout_setHandler15 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQGridLayout x0) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO (CBool)
    setHandlerWrapper x0 x1 x2
      = do x0obj <- qGridLayoutFromPtr x0
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

foreign import ccall "qtc_QGridLayout_setHandler15" qtc_QGridLayout_setHandler15 :: Ptr (TQGridLayout a) -> CWString -> Ptr (Ptr (TQGridLayout x0) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO (CBool)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QGridLayout15 :: (Ptr (TQGridLayout x0) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO (CBool)) -> IO (FunPtr (Ptr (TQGridLayout x0) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO (CBool)))

foreign import ccall "wrapper" wrapSetHandler_QGridLayout15_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QGridLayoutSc a) (QGridLayout x0 -> QObject t1 -> QEvent t2 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QGridLayout15 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QGridLayout15_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QGridLayout_setHandler15 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQGridLayout x0) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO (CBool)
    setHandlerWrapper x0 x1 x2
      = do x0obj <- qGridLayoutFromPtr x0
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

instance QeventFilter_h (QGridLayout ()) ((QObject t1, QEvent t2)) where
 eventFilter_h x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGridLayout_eventFilter cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QGridLayout_eventFilter" qtc_QGridLayout_eventFilter :: Ptr (TQGridLayout a) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO CBool

instance QeventFilter_h (QGridLayoutSc a) ((QObject t1, QEvent t2)) where
 eventFilter_h x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGridLayout_eventFilter cobj_x0 cobj_x1 cobj_x2

