{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QUrlInfo_h.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:31
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Network.QUrlInfo_h (
  QsetDir_h(..)
  ,QsetFile_h(..)
  ,QsetGroup_h(..)
  ,QsetLastModified_h(..)
  ,QsetName_h(..)
  ,QsetOwner_h(..)
  ,QsetPermissions_h(..)
  ,QsetReadable_h(..)
  ,QqsetSize_h(..)
  ,QsetSymLink_h(..)
  ,QsetWritable_h(..)
  ) where

import Foreign.C.Types
import Qtc.Enums.Base

import Qtc.Classes.Base
import Qtc.Classes.Qccs_h
import Qtc.Classes.Core_h
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core
import Qtc.Classes.Network_h
import Qtc.ClassTypes.Network
import Foreign.Marshal.Array

instance QunSetUserMethod (QUrlInfo ()) where
 unSetUserMethod qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QUrlInfo_unSetUserMethod cobj_qobj (toCInt 0) (toCInt evid)

foreign import ccall "qtc_QUrlInfo_unSetUserMethod" qtc_QUrlInfo_unSetUserMethod :: Ptr (TQUrlInfo a) -> CInt -> CInt -> IO (CBool)

instance QunSetUserMethod (QUrlInfoSc a) where
 unSetUserMethod qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QUrlInfo_unSetUserMethod cobj_qobj (toCInt 0) (toCInt evid)

instance QunSetUserMethodVariant (QUrlInfo ()) where
 unSetUserMethodVariant qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QUrlInfo_unSetUserMethod cobj_qobj (toCInt 1) (toCInt evid)

instance QunSetUserMethodVariant (QUrlInfoSc a) where
 unSetUserMethodVariant qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QUrlInfo_unSetUserMethod cobj_qobj (toCInt 1) (toCInt evid)

instance QunSetUserMethodVariantList (QUrlInfo ()) where
 unSetUserMethodVariantList qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QUrlInfo_unSetUserMethod cobj_qobj (toCInt 2) (toCInt evid)

instance QunSetUserMethodVariantList (QUrlInfoSc a) where
 unSetUserMethodVariantList qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QUrlInfo_unSetUserMethod cobj_qobj (toCInt 2) (toCInt evid)

instance QsetUserMethod (QUrlInfo ()) (QUrlInfo x0 -> IO ()) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethod_QUrlInfo setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethod_QUrlInfo_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QUrlInfo_setUserMethod cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQUrlInfo x0) -> IO ()
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

foreign import ccall "qtc_QUrlInfo_setUserMethod" qtc_QUrlInfo_setUserMethod :: Ptr (TQUrlInfo a) -> CInt -> Ptr (Ptr (TQUrlInfo x0) -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetUserMethod_QUrlInfo :: (Ptr (TQUrlInfo x0) -> IO ()) -> IO (FunPtr (Ptr (TQUrlInfo x0) -> IO ()))

foreign import ccall "wrapper" wrapSetUserMethod_QUrlInfo_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetUserMethod (QUrlInfoSc a) (QUrlInfo x0 -> IO ()) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethod_QUrlInfo setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethod_QUrlInfo_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QUrlInfo_setUserMethod cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQUrlInfo x0) -> IO ()
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

instance QsetUserMethod (QUrlInfo ()) (QUrlInfo x0 -> QVariant () -> IO (QVariant ())) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethodVariant_QUrlInfo setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethodVariant_QUrlInfo_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QUrlInfo_setUserMethodVariant cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQUrlInfo x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))
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

foreign import ccall "qtc_QUrlInfo_setUserMethodVariant" qtc_QUrlInfo_setUserMethodVariant :: Ptr (TQUrlInfo a) -> CInt -> Ptr (Ptr (TQUrlInfo x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetUserMethodVariant_QUrlInfo :: (Ptr (TQUrlInfo x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))) -> IO (FunPtr (Ptr (TQUrlInfo x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))))

foreign import ccall "wrapper" wrapSetUserMethodVariant_QUrlInfo_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetUserMethod (QUrlInfoSc a) (QUrlInfo x0 -> QVariant () -> IO (QVariant ())) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethodVariant_QUrlInfo setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethodVariant_QUrlInfo_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QUrlInfo_setUserMethodVariant cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQUrlInfo x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))
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

instance QunSetHandler (QUrlInfo ()) where 
 unSetHandler qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withCWString evid $ \cstr_evid ->
    qtc_QUrlInfo_unSetHandler cobj_qobj cstr_evid

foreign import ccall "qtc_QUrlInfo_unSetHandler" qtc_QUrlInfo_unSetHandler :: Ptr (TQUrlInfo a) -> CWString -> IO (CBool)

instance QunSetHandler (QUrlInfoSc a) where 
 unSetHandler qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withCWString evid $ \cstr_evid ->
    qtc_QUrlInfo_unSetHandler cobj_qobj cstr_evid

instance QsetHandler (QUrlInfo ()) (QUrlInfo x0 -> Bool -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QUrlInfo1 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QUrlInfo1_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QUrlInfo_setHandler1 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQUrlInfo x0) -> CBool -> IO ()
    setHandlerWrapper x0 x1
      = do x0obj <- objectFromPtr_nf x0
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

foreign import ccall "qtc_QUrlInfo_setHandler1" qtc_QUrlInfo_setHandler1 :: Ptr (TQUrlInfo a) -> CWString -> Ptr (Ptr (TQUrlInfo x0) -> CBool -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QUrlInfo1 :: (Ptr (TQUrlInfo x0) -> CBool -> IO ()) -> IO (FunPtr (Ptr (TQUrlInfo x0) -> CBool -> IO ()))

foreign import ccall "wrapper" wrapSetHandler_QUrlInfo1_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QUrlInfoSc a) (QUrlInfo x0 -> Bool -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QUrlInfo1 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QUrlInfo1_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QUrlInfo_setHandler1 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQUrlInfo x0) -> CBool -> IO ()
    setHandlerWrapper x0 x1
      = do x0obj <- objectFromPtr_nf x0
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

class QsetDir_h x0 x1 where
 setDir_h :: x0 -> x1 -> IO ()

instance QsetDir_h (QUrlInfo ()) ((Bool)) where
 setDir_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUrlInfo_setDir cobj_x0 (toCBool x1)

foreign import ccall "qtc_QUrlInfo_setDir" qtc_QUrlInfo_setDir :: Ptr (TQUrlInfo a) -> CBool -> IO ()

instance QsetDir_h (QUrlInfoSc a) ((Bool)) where
 setDir_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUrlInfo_setDir cobj_x0 (toCBool x1)

class QsetFile_h x0 x1 where
 setFile_h :: x0 -> x1 -> IO ()

instance QsetFile_h (QUrlInfo ()) ((Bool)) where
 setFile_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUrlInfo_setFile cobj_x0 (toCBool x1)

foreign import ccall "qtc_QUrlInfo_setFile" qtc_QUrlInfo_setFile :: Ptr (TQUrlInfo a) -> CBool -> IO ()

instance QsetFile_h (QUrlInfoSc a) ((Bool)) where
 setFile_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUrlInfo_setFile cobj_x0 (toCBool x1)

instance QsetHandler (QUrlInfo ()) (QUrlInfo x0 -> String -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QUrlInfo2 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QUrlInfo2_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QUrlInfo_setHandler2 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQUrlInfo x0) -> Ptr (TQString ()) -> IO ()
    setHandlerWrapper x0 x1
      = do x0obj <- objectFromPtr_nf x0
           x1str <- stringFromPtr x1
           if (objectIsNull x0obj)
            then return ()
            else _handler x0obj x1str

    setHandlerWrapper_d :: Ptr fun -> Ptr () -> Ptr fun_d -> IO ()
    setHandlerWrapper_d funptr stptr funptr_d
      = do when (stptr/=ptrNull)
            (freeStablePtr (castPtrToStablePtr stptr))
           when (funptr/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr))
           when (funptr_d/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr_d))
           return ()

foreign import ccall "qtc_QUrlInfo_setHandler2" qtc_QUrlInfo_setHandler2 :: Ptr (TQUrlInfo a) -> CWString -> Ptr (Ptr (TQUrlInfo x0) -> Ptr (TQString ()) -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QUrlInfo2 :: (Ptr (TQUrlInfo x0) -> Ptr (TQString ()) -> IO ()) -> IO (FunPtr (Ptr (TQUrlInfo x0) -> Ptr (TQString ()) -> IO ()))

foreign import ccall "wrapper" wrapSetHandler_QUrlInfo2_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QUrlInfoSc a) (QUrlInfo x0 -> String -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QUrlInfo2 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QUrlInfo2_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QUrlInfo_setHandler2 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQUrlInfo x0) -> Ptr (TQString ()) -> IO ()
    setHandlerWrapper x0 x1
      = do x0obj <- objectFromPtr_nf x0
           x1str <- stringFromPtr x1
           if (objectIsNull x0obj)
            then return ()
            else _handler x0obj x1str

    setHandlerWrapper_d :: Ptr fun -> Ptr () -> Ptr fun_d -> IO ()
    setHandlerWrapper_d funptr stptr funptr_d
      = do when (stptr/=ptrNull)
            (freeStablePtr (castPtrToStablePtr stptr))
           when (funptr/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr))
           when (funptr_d/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr_d))
           return ()

class QsetGroup_h x0 x1 where
 setGroup_h :: x0 -> x1 -> IO ()

instance QsetGroup_h (QUrlInfo ()) ((String)) where
 setGroup_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QUrlInfo_setGroup cobj_x0 cstr_x1

foreign import ccall "qtc_QUrlInfo_setGroup" qtc_QUrlInfo_setGroup :: Ptr (TQUrlInfo a) -> CWString -> IO ()

instance QsetGroup_h (QUrlInfoSc a) ((String)) where
 setGroup_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QUrlInfo_setGroup cobj_x0 cstr_x1

instance QsetHandler (QUrlInfo ()) (QUrlInfo x0 -> QDateTime t1 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QUrlInfo3 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QUrlInfo3_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QUrlInfo_setHandler3 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQUrlInfo x0) -> Ptr (TQDateTime t1) -> IO ()
    setHandlerWrapper x0 x1
      = do x0obj <- objectFromPtr_nf x0
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

foreign import ccall "qtc_QUrlInfo_setHandler3" qtc_QUrlInfo_setHandler3 :: Ptr (TQUrlInfo a) -> CWString -> Ptr (Ptr (TQUrlInfo x0) -> Ptr (TQDateTime t1) -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QUrlInfo3 :: (Ptr (TQUrlInfo x0) -> Ptr (TQDateTime t1) -> IO ()) -> IO (FunPtr (Ptr (TQUrlInfo x0) -> Ptr (TQDateTime t1) -> IO ()))

foreign import ccall "wrapper" wrapSetHandler_QUrlInfo3_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QUrlInfoSc a) (QUrlInfo x0 -> QDateTime t1 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QUrlInfo3 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QUrlInfo3_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QUrlInfo_setHandler3 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQUrlInfo x0) -> Ptr (TQDateTime t1) -> IO ()
    setHandlerWrapper x0 x1
      = do x0obj <- objectFromPtr_nf x0
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

class QsetLastModified_h x0 x1 where
 setLastModified_h :: x0 -> x1 -> IO ()

instance QsetLastModified_h (QUrlInfo ()) ((QDateTime t1)) where
 setLastModified_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUrlInfo_setLastModified cobj_x0 cobj_x1

foreign import ccall "qtc_QUrlInfo_setLastModified" qtc_QUrlInfo_setLastModified :: Ptr (TQUrlInfo a) -> Ptr (TQDateTime t1) -> IO ()

instance QsetLastModified_h (QUrlInfoSc a) ((QDateTime t1)) where
 setLastModified_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUrlInfo_setLastModified cobj_x0 cobj_x1

class QsetName_h x0 x1 where
 setName_h :: x0 -> x1 -> IO ()

instance QsetName_h (QUrlInfo ()) ((String)) where
 setName_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QUrlInfo_setName cobj_x0 cstr_x1

foreign import ccall "qtc_QUrlInfo_setName" qtc_QUrlInfo_setName :: Ptr (TQUrlInfo a) -> CWString -> IO ()

instance QsetName_h (QUrlInfoSc a) ((String)) where
 setName_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QUrlInfo_setName cobj_x0 cstr_x1

class QsetOwner_h x0 x1 where
 setOwner_h :: x0 -> x1 -> IO ()

instance QsetOwner_h (QUrlInfo ()) ((String)) where
 setOwner_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QUrlInfo_setOwner cobj_x0 cstr_x1

foreign import ccall "qtc_QUrlInfo_setOwner" qtc_QUrlInfo_setOwner :: Ptr (TQUrlInfo a) -> CWString -> IO ()

instance QsetOwner_h (QUrlInfoSc a) ((String)) where
 setOwner_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QUrlInfo_setOwner cobj_x0 cstr_x1

instance QsetHandler (QUrlInfo ()) (QUrlInfo x0 -> Int -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QUrlInfo4 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QUrlInfo4_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QUrlInfo_setHandler4 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQUrlInfo x0) -> CInt -> IO ()
    setHandlerWrapper x0 x1
      = do x0obj <- objectFromPtr_nf x0
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

foreign import ccall "qtc_QUrlInfo_setHandler4" qtc_QUrlInfo_setHandler4 :: Ptr (TQUrlInfo a) -> CWString -> Ptr (Ptr (TQUrlInfo x0) -> CInt -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QUrlInfo4 :: (Ptr (TQUrlInfo x0) -> CInt -> IO ()) -> IO (FunPtr (Ptr (TQUrlInfo x0) -> CInt -> IO ()))

foreign import ccall "wrapper" wrapSetHandler_QUrlInfo4_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QUrlInfoSc a) (QUrlInfo x0 -> Int -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QUrlInfo4 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QUrlInfo4_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QUrlInfo_setHandler4 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQUrlInfo x0) -> CInt -> IO ()
    setHandlerWrapper x0 x1
      = do x0obj <- objectFromPtr_nf x0
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

class QsetPermissions_h x0 x1 where
 setPermissions_h :: x0 -> x1 -> IO ()

instance QsetPermissions_h (QUrlInfo ()) ((Int)) where
 setPermissions_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUrlInfo_setPermissions cobj_x0 (toCInt x1)

foreign import ccall "qtc_QUrlInfo_setPermissions" qtc_QUrlInfo_setPermissions :: Ptr (TQUrlInfo a) -> CInt -> IO ()

instance QsetPermissions_h (QUrlInfoSc a) ((Int)) where
 setPermissions_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUrlInfo_setPermissions cobj_x0 (toCInt x1)

class QsetReadable_h x0 x1 where
 setReadable_h :: x0 -> x1 -> IO ()

instance QsetReadable_h (QUrlInfo ()) ((Bool)) where
 setReadable_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUrlInfo_setReadable cobj_x0 (toCBool x1)

foreign import ccall "qtc_QUrlInfo_setReadable" qtc_QUrlInfo_setReadable :: Ptr (TQUrlInfo a) -> CBool -> IO ()

instance QsetReadable_h (QUrlInfoSc a) ((Bool)) where
 setReadable_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUrlInfo_setReadable cobj_x0 (toCBool x1)

class QqsetSize_h x0 x1 where
 qsetSize_h :: x0 -> x1 -> IO ()

instance QqsetSize_h (QUrlInfo ()) ((Int)) where
 qsetSize_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUrlInfo_setSize cobj_x0 (toCLLong x1)

foreign import ccall "qtc_QUrlInfo_setSize" qtc_QUrlInfo_setSize :: Ptr (TQUrlInfo a) -> CLLong -> IO ()

instance QqsetSize_h (QUrlInfoSc a) ((Int)) where
 qsetSize_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUrlInfo_setSize cobj_x0 (toCLLong x1)

class QsetSymLink_h x0 x1 where
 setSymLink_h :: x0 -> x1 -> IO ()

instance QsetSymLink_h (QUrlInfo ()) ((Bool)) where
 setSymLink_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUrlInfo_setSymLink cobj_x0 (toCBool x1)

foreign import ccall "qtc_QUrlInfo_setSymLink" qtc_QUrlInfo_setSymLink :: Ptr (TQUrlInfo a) -> CBool -> IO ()

instance QsetSymLink_h (QUrlInfoSc a) ((Bool)) where
 setSymLink_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUrlInfo_setSymLink cobj_x0 (toCBool x1)

class QsetWritable_h x0 x1 where
 setWritable_h :: x0 -> x1 -> IO ()

instance QsetWritable_h (QUrlInfo ()) ((Bool)) where
 setWritable_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUrlInfo_setWritable cobj_x0 (toCBool x1)

foreign import ccall "qtc_QUrlInfo_setWritable" qtc_QUrlInfo_setWritable :: Ptr (TQUrlInfo a) -> CBool -> IO ()

instance QsetWritable_h (QUrlInfoSc a) ((Bool)) where
 setWritable_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUrlInfo_setWritable cobj_x0 (toCBool x1)

