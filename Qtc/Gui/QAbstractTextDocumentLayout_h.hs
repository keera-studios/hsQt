{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QAbstractTextDocumentLayout_h.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:26
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QAbstractTextDocumentLayout_h (
  QblockBoundingRect_h(..)
  ,QqblockBoundingRect_h(..)
  ,QdocumentChanged_h(..)
  ,QdocumentSize_h(..), QqdocumentSize_h(..)
  ,Qdraw_h(..)
  ,QdrawInlineObject_h(..), QqdrawInlineObject_h(..)
  ,QframeBoundingRect_h(..), QqframeBoundingRect_h(..)
  ,QhitTest_h(..), QqhitTest_h(..)
  ,QpageCount_h(..)
  ,QpositionInlineObject_h(..)
  ,QresizeInlineObject_h(..)
  ) where

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

instance QunSetUserMethod (QAbstractTextDocumentLayout ()) where
 unSetUserMethod qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QAbstractTextDocumentLayout_unSetUserMethod cobj_qobj (toCInt 0) (toCInt evid)

foreign import ccall "qtc_QAbstractTextDocumentLayout_unSetUserMethod" qtc_QAbstractTextDocumentLayout_unSetUserMethod :: Ptr (TQAbstractTextDocumentLayout a) -> CInt -> CInt -> IO (CBool)

instance QunSetUserMethod (QAbstractTextDocumentLayoutSc a) where
 unSetUserMethod qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QAbstractTextDocumentLayout_unSetUserMethod cobj_qobj (toCInt 0) (toCInt evid)

instance QunSetUserMethodVariant (QAbstractTextDocumentLayout ()) where
 unSetUserMethodVariant qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QAbstractTextDocumentLayout_unSetUserMethod cobj_qobj (toCInt 1) (toCInt evid)

instance QunSetUserMethodVariant (QAbstractTextDocumentLayoutSc a) where
 unSetUserMethodVariant qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QAbstractTextDocumentLayout_unSetUserMethod cobj_qobj (toCInt 1) (toCInt evid)

instance QunSetUserMethodVariantList (QAbstractTextDocumentLayout ()) where
 unSetUserMethodVariantList qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QAbstractTextDocumentLayout_unSetUserMethod cobj_qobj (toCInt 2) (toCInt evid)

instance QunSetUserMethodVariantList (QAbstractTextDocumentLayoutSc a) where
 unSetUserMethodVariantList qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QAbstractTextDocumentLayout_unSetUserMethod cobj_qobj (toCInt 2) (toCInt evid)

instance QsetUserMethod (QAbstractTextDocumentLayout ()) (QAbstractTextDocumentLayout x0 -> IO ()) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethod_QAbstractTextDocumentLayout setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethod_QAbstractTextDocumentLayout_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QAbstractTextDocumentLayout_setUserMethod cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQAbstractTextDocumentLayout x0) -> IO ()
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

foreign import ccall "qtc_QAbstractTextDocumentLayout_setUserMethod" qtc_QAbstractTextDocumentLayout_setUserMethod :: Ptr (TQAbstractTextDocumentLayout a) -> CInt -> Ptr (Ptr (TQAbstractTextDocumentLayout x0) -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetUserMethod_QAbstractTextDocumentLayout :: (Ptr (TQAbstractTextDocumentLayout x0) -> IO ()) -> IO (FunPtr (Ptr (TQAbstractTextDocumentLayout x0) -> IO ()))

foreign import ccall "wrapper" wrapSetUserMethod_QAbstractTextDocumentLayout_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetUserMethod (QAbstractTextDocumentLayoutSc a) (QAbstractTextDocumentLayout x0 -> IO ()) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethod_QAbstractTextDocumentLayout setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethod_QAbstractTextDocumentLayout_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QAbstractTextDocumentLayout_setUserMethod cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQAbstractTextDocumentLayout x0) -> IO ()
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

instance QsetUserMethod (QAbstractTextDocumentLayout ()) (QAbstractTextDocumentLayout x0 -> QVariant () -> IO (QVariant ())) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethodVariant_QAbstractTextDocumentLayout setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethodVariant_QAbstractTextDocumentLayout_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QAbstractTextDocumentLayout_setUserMethodVariant cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQAbstractTextDocumentLayout x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))
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

foreign import ccall "qtc_QAbstractTextDocumentLayout_setUserMethodVariant" qtc_QAbstractTextDocumentLayout_setUserMethodVariant :: Ptr (TQAbstractTextDocumentLayout a) -> CInt -> Ptr (Ptr (TQAbstractTextDocumentLayout x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetUserMethodVariant_QAbstractTextDocumentLayout :: (Ptr (TQAbstractTextDocumentLayout x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))) -> IO (FunPtr (Ptr (TQAbstractTextDocumentLayout x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))))

foreign import ccall "wrapper" wrapSetUserMethodVariant_QAbstractTextDocumentLayout_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetUserMethod (QAbstractTextDocumentLayoutSc a) (QAbstractTextDocumentLayout x0 -> QVariant () -> IO (QVariant ())) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethodVariant_QAbstractTextDocumentLayout setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethodVariant_QAbstractTextDocumentLayout_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QAbstractTextDocumentLayout_setUserMethodVariant cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQAbstractTextDocumentLayout x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))
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

instance QunSetHandler (QAbstractTextDocumentLayout ()) where 
 unSetHandler qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withCWString evid $ \cstr_evid ->
    qtc_QAbstractTextDocumentLayout_unSetHandler cobj_qobj cstr_evid

foreign import ccall "qtc_QAbstractTextDocumentLayout_unSetHandler" qtc_QAbstractTextDocumentLayout_unSetHandler :: Ptr (TQAbstractTextDocumentLayout a) -> CWString -> IO (CBool)

instance QunSetHandler (QAbstractTextDocumentLayoutSc a) where 
 unSetHandler qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withCWString evid $ \cstr_evid ->
    qtc_QAbstractTextDocumentLayout_unSetHandler cobj_qobj cstr_evid

instance QsetHandler (QAbstractTextDocumentLayout ()) (QAbstractTextDocumentLayout x0 -> QTextBlock t1 -> IO (QRectF t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractTextDocumentLayout1 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractTextDocumentLayout1_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractTextDocumentLayout_setHandler1 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractTextDocumentLayout x0) -> Ptr (TQTextBlock t1) -> IO (Ptr (TQRectF t0))
    setHandlerWrapper x0 x1
      = do x0obj <- qAbstractTextDocumentLayoutFromPtr x0
           x1obj <- objectFromPtr_nf x1
           let rv =
                if (objectIsNull x0obj)
                 then return $ objectCast x0obj
                 else _handler x0obj x1obj
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

foreign import ccall "qtc_QAbstractTextDocumentLayout_setHandler1" qtc_QAbstractTextDocumentLayout_setHandler1 :: Ptr (TQAbstractTextDocumentLayout a) -> CWString -> Ptr (Ptr (TQAbstractTextDocumentLayout x0) -> Ptr (TQTextBlock t1) -> IO (Ptr (TQRectF t0))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QAbstractTextDocumentLayout1 :: (Ptr (TQAbstractTextDocumentLayout x0) -> Ptr (TQTextBlock t1) -> IO (Ptr (TQRectF t0))) -> IO (FunPtr (Ptr (TQAbstractTextDocumentLayout x0) -> Ptr (TQTextBlock t1) -> IO (Ptr (TQRectF t0))))

foreign import ccall "wrapper" wrapSetHandler_QAbstractTextDocumentLayout1_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QAbstractTextDocumentLayoutSc a) (QAbstractTextDocumentLayout x0 -> QTextBlock t1 -> IO (QRectF t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractTextDocumentLayout1 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractTextDocumentLayout1_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractTextDocumentLayout_setHandler1 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractTextDocumentLayout x0) -> Ptr (TQTextBlock t1) -> IO (Ptr (TQRectF t0))
    setHandlerWrapper x0 x1
      = do x0obj <- qAbstractTextDocumentLayoutFromPtr x0
           x1obj <- objectFromPtr_nf x1
           let rv =
                if (objectIsNull x0obj)
                 then return $ objectCast x0obj
                 else _handler x0obj x1obj
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

class QblockBoundingRect_h x0 x1 where
 blockBoundingRect_h :: x0 -> x1 -> IO (RectF)

class QqblockBoundingRect_h x0 x1 where
 qblockBoundingRect_h :: x0 -> x1 -> IO (QRectF ())

instance QqblockBoundingRect_h (QAbstractTextDocumentLayout ()) ((QTextBlock t1)) where
 qblockBoundingRect_h x0 (x1)
  = withQRectFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractTextDocumentLayout_blockBoundingRect cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractTextDocumentLayout_blockBoundingRect" qtc_QAbstractTextDocumentLayout_blockBoundingRect :: Ptr (TQAbstractTextDocumentLayout a) -> Ptr (TQTextBlock t1) -> IO (Ptr (TQRectF ()))

instance QqblockBoundingRect_h (QAbstractTextDocumentLayoutSc a) ((QTextBlock t1)) where
 qblockBoundingRect_h x0 (x1)
  = withQRectFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractTextDocumentLayout_blockBoundingRect cobj_x0 cobj_x1

instance QblockBoundingRect_h (QAbstractTextDocumentLayout ()) ((QTextBlock t1)) where
 blockBoundingRect_h x0 (x1)
  = withRectFResult $ \crectf_ret_x crectf_ret_y crectf_ret_w crectf_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractTextDocumentLayout_blockBoundingRect_qth cobj_x0 cobj_x1 crectf_ret_x crectf_ret_y crectf_ret_w crectf_ret_h

foreign import ccall "qtc_QAbstractTextDocumentLayout_blockBoundingRect_qth" qtc_QAbstractTextDocumentLayout_blockBoundingRect_qth :: Ptr (TQAbstractTextDocumentLayout a) -> Ptr (TQTextBlock t1) -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> IO ()

instance QblockBoundingRect_h (QAbstractTextDocumentLayoutSc a) ((QTextBlock t1)) where
 blockBoundingRect_h x0 (x1)
  = withRectFResult $ \crectf_ret_x crectf_ret_y crectf_ret_w crectf_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractTextDocumentLayout_blockBoundingRect_qth cobj_x0 cobj_x1 crectf_ret_x crectf_ret_y crectf_ret_w crectf_ret_h

instance QsetHandler (QAbstractTextDocumentLayout ()) (QAbstractTextDocumentLayout x0 -> Int -> Int -> Int -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractTextDocumentLayout2 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractTextDocumentLayout2_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractTextDocumentLayout_setHandler2 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractTextDocumentLayout x0) -> CInt -> CInt -> CInt -> IO ()
    setHandlerWrapper x0 x1 x2 x3
      = do x0obj <- qAbstractTextDocumentLayoutFromPtr x0
           let x1int = fromCInt x1
           let x2int = fromCInt x2
           let x3int = fromCInt x3
           if (objectIsNull x0obj)
            then return ()
            else _handler x0obj x1int x2int x3int

    setHandlerWrapper_d :: Ptr fun -> Ptr () -> Ptr fun_d -> IO ()
    setHandlerWrapper_d funptr stptr funptr_d
      = do when (stptr/=ptrNull)
            (freeStablePtr (castPtrToStablePtr stptr))
           when (funptr/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr))
           when (funptr_d/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr_d))
           return ()

foreign import ccall "qtc_QAbstractTextDocumentLayout_setHandler2" qtc_QAbstractTextDocumentLayout_setHandler2 :: Ptr (TQAbstractTextDocumentLayout a) -> CWString -> Ptr (Ptr (TQAbstractTextDocumentLayout x0) -> CInt -> CInt -> CInt -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QAbstractTextDocumentLayout2 :: (Ptr (TQAbstractTextDocumentLayout x0) -> CInt -> CInt -> CInt -> IO ()) -> IO (FunPtr (Ptr (TQAbstractTextDocumentLayout x0) -> CInt -> CInt -> CInt -> IO ()))

foreign import ccall "wrapper" wrapSetHandler_QAbstractTextDocumentLayout2_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QAbstractTextDocumentLayoutSc a) (QAbstractTextDocumentLayout x0 -> Int -> Int -> Int -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractTextDocumentLayout2 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractTextDocumentLayout2_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractTextDocumentLayout_setHandler2 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractTextDocumentLayout x0) -> CInt -> CInt -> CInt -> IO ()
    setHandlerWrapper x0 x1 x2 x3
      = do x0obj <- qAbstractTextDocumentLayoutFromPtr x0
           let x1int = fromCInt x1
           let x2int = fromCInt x2
           let x3int = fromCInt x3
           if (objectIsNull x0obj)
            then return ()
            else _handler x0obj x1int x2int x3int

    setHandlerWrapper_d :: Ptr fun -> Ptr () -> Ptr fun_d -> IO ()
    setHandlerWrapper_d funptr stptr funptr_d
      = do when (stptr/=ptrNull)
            (freeStablePtr (castPtrToStablePtr stptr))
           when (funptr/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr))
           when (funptr_d/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr_d))
           return ()

class QdocumentChanged_h x0 x1 where
 documentChanged_h :: x0 -> x1 -> IO ()

instance QdocumentChanged_h (QAbstractTextDocumentLayout ()) ((Int, Int, Int)) where
 documentChanged_h x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractTextDocumentLayout_documentChanged cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3)

foreign import ccall "qtc_QAbstractTextDocumentLayout_documentChanged" qtc_QAbstractTextDocumentLayout_documentChanged :: Ptr (TQAbstractTextDocumentLayout a) -> CInt -> CInt -> CInt -> IO ()

instance QdocumentChanged_h (QAbstractTextDocumentLayoutSc a) ((Int, Int, Int)) where
 documentChanged_h x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractTextDocumentLayout_documentChanged cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3)

instance QsetHandler (QAbstractTextDocumentLayout ()) (QAbstractTextDocumentLayout x0 -> IO (QSizeF t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractTextDocumentLayout3 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractTextDocumentLayout3_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractTextDocumentLayout_setHandler3 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractTextDocumentLayout x0) -> IO (Ptr (TQSizeF t0))
    setHandlerWrapper x0
      = do x0obj <- qAbstractTextDocumentLayoutFromPtr x0
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

foreign import ccall "qtc_QAbstractTextDocumentLayout_setHandler3" qtc_QAbstractTextDocumentLayout_setHandler3 :: Ptr (TQAbstractTextDocumentLayout a) -> CWString -> Ptr (Ptr (TQAbstractTextDocumentLayout x0) -> IO (Ptr (TQSizeF t0))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QAbstractTextDocumentLayout3 :: (Ptr (TQAbstractTextDocumentLayout x0) -> IO (Ptr (TQSizeF t0))) -> IO (FunPtr (Ptr (TQAbstractTextDocumentLayout x0) -> IO (Ptr (TQSizeF t0))))

foreign import ccall "wrapper" wrapSetHandler_QAbstractTextDocumentLayout3_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QAbstractTextDocumentLayoutSc a) (QAbstractTextDocumentLayout x0 -> IO (QSizeF t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractTextDocumentLayout3 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractTextDocumentLayout3_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractTextDocumentLayout_setHandler3 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractTextDocumentLayout x0) -> IO (Ptr (TQSizeF t0))
    setHandlerWrapper x0
      = do x0obj <- qAbstractTextDocumentLayoutFromPtr x0
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

class QdocumentSize_h x0 x1 where
 documentSize_h :: x0 -> x1 -> IO (SizeF)

class QqdocumentSize_h x0 x1 where
 qdocumentSize_h :: x0 -> x1 -> IO (QSizeF ())

instance QqdocumentSize_h (QAbstractTextDocumentLayout ()) (()) where
 qdocumentSize_h x0 ()
  = withQSizeFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractTextDocumentLayout_documentSize cobj_x0

foreign import ccall "qtc_QAbstractTextDocumentLayout_documentSize" qtc_QAbstractTextDocumentLayout_documentSize :: Ptr (TQAbstractTextDocumentLayout a) -> IO (Ptr (TQSizeF ()))

instance QqdocumentSize_h (QAbstractTextDocumentLayoutSc a) (()) where
 qdocumentSize_h x0 ()
  = withQSizeFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractTextDocumentLayout_documentSize cobj_x0

instance QdocumentSize_h (QAbstractTextDocumentLayout ()) (()) where
 documentSize_h x0 ()
  = withSizeFResult $ \csizef_ret_w csizef_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractTextDocumentLayout_documentSize_qth cobj_x0 csizef_ret_w csizef_ret_h

foreign import ccall "qtc_QAbstractTextDocumentLayout_documentSize_qth" qtc_QAbstractTextDocumentLayout_documentSize_qth :: Ptr (TQAbstractTextDocumentLayout a) -> Ptr CDouble -> Ptr CDouble -> IO ()

instance QdocumentSize_h (QAbstractTextDocumentLayoutSc a) (()) where
 documentSize_h x0 ()
  = withSizeFResult $ \csizef_ret_w csizef_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractTextDocumentLayout_documentSize_qth cobj_x0 csizef_ret_w csizef_ret_h

instance QsetHandler (QAbstractTextDocumentLayout ()) (QAbstractTextDocumentLayout x0 -> QPainter t1 -> PaintContext t2 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractTextDocumentLayout4 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractTextDocumentLayout4_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractTextDocumentLayout_setHandler4 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractTextDocumentLayout x0) -> Ptr (TQPainter t1) -> Ptr (TPaintContext t2) -> IO ()
    setHandlerWrapper x0 x1 x2
      = do x0obj <- qAbstractTextDocumentLayoutFromPtr x0
           x1obj <- objectFromPtr_nf x1
           x2obj <- objectFromPtr_nf x2
           if (objectIsNull x0obj)
            then return ()
            else _handler x0obj x1obj x2obj

    setHandlerWrapper_d :: Ptr fun -> Ptr () -> Ptr fun_d -> IO ()
    setHandlerWrapper_d funptr stptr funptr_d
      = do when (stptr/=ptrNull)
            (freeStablePtr (castPtrToStablePtr stptr))
           when (funptr/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr))
           when (funptr_d/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr_d))
           return ()

foreign import ccall "qtc_QAbstractTextDocumentLayout_setHandler4" qtc_QAbstractTextDocumentLayout_setHandler4 :: Ptr (TQAbstractTextDocumentLayout a) -> CWString -> Ptr (Ptr (TQAbstractTextDocumentLayout x0) -> Ptr (TQPainter t1) -> Ptr (TPaintContext t2) -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QAbstractTextDocumentLayout4 :: (Ptr (TQAbstractTextDocumentLayout x0) -> Ptr (TQPainter t1) -> Ptr (TPaintContext t2) -> IO ()) -> IO (FunPtr (Ptr (TQAbstractTextDocumentLayout x0) -> Ptr (TQPainter t1) -> Ptr (TPaintContext t2) -> IO ()))

foreign import ccall "wrapper" wrapSetHandler_QAbstractTextDocumentLayout4_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QAbstractTextDocumentLayoutSc a) (QAbstractTextDocumentLayout x0 -> QPainter t1 -> PaintContext t2 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractTextDocumentLayout4 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractTextDocumentLayout4_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractTextDocumentLayout_setHandler4 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractTextDocumentLayout x0) -> Ptr (TQPainter t1) -> Ptr (TPaintContext t2) -> IO ()
    setHandlerWrapper x0 x1 x2
      = do x0obj <- qAbstractTextDocumentLayoutFromPtr x0
           x1obj <- objectFromPtr_nf x1
           x2obj <- objectFromPtr_nf x2
           if (objectIsNull x0obj)
            then return ()
            else _handler x0obj x1obj x2obj

    setHandlerWrapper_d :: Ptr fun -> Ptr () -> Ptr fun_d -> IO ()
    setHandlerWrapper_d funptr stptr funptr_d
      = do when (stptr/=ptrNull)
            (freeStablePtr (castPtrToStablePtr stptr))
           when (funptr/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr))
           when (funptr_d/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr_d))
           return ()

class Qdraw_h x0 x1 where
 draw_h :: x0 -> x1 -> IO ()

instance Qdraw_h (QAbstractTextDocumentLayout ()) ((QPainter t1, PaintContext t2)) where
 draw_h x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QAbstractTextDocumentLayout_draw cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QAbstractTextDocumentLayout_draw" qtc_QAbstractTextDocumentLayout_draw :: Ptr (TQAbstractTextDocumentLayout a) -> Ptr (TQPainter t1) -> Ptr (TPaintContext t2) -> IO ()

instance Qdraw_h (QAbstractTextDocumentLayoutSc a) ((QPainter t1, PaintContext t2)) where
 draw_h x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QAbstractTextDocumentLayout_draw cobj_x0 cobj_x1 cobj_x2

instance QsetHandler (QAbstractTextDocumentLayout ()) (QAbstractTextDocumentLayout x0 -> QPainter t1 -> QRectF t2 -> QTextInlineObject t3 -> Int -> QTextFormat t5 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractTextDocumentLayout5 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractTextDocumentLayout5_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractTextDocumentLayout_setHandler5 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractTextDocumentLayout x0) -> Ptr (TQPainter t1) -> Ptr (TQRectF t2) -> Ptr (TQTextInlineObject t3) -> CInt -> Ptr (TQTextFormat t5) -> IO ()
    setHandlerWrapper x0 x1 x2 x3 x4 x5
      = do x0obj <- qAbstractTextDocumentLayoutFromPtr x0
           x1obj <- objectFromPtr_nf x1
           x2obj <- objectFromPtr_nf x2
           x3obj <- objectFromPtr_nf x3
           let x4int = fromCInt x4
           x5obj <- objectFromPtr_nf x5
           if (objectIsNull x0obj)
            then return ()
            else _handler x0obj x1obj x2obj x3obj x4int x5obj

    setHandlerWrapper_d :: Ptr fun -> Ptr () -> Ptr fun_d -> IO ()
    setHandlerWrapper_d funptr stptr funptr_d
      = do when (stptr/=ptrNull)
            (freeStablePtr (castPtrToStablePtr stptr))
           when (funptr/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr))
           when (funptr_d/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr_d))
           return ()

foreign import ccall "qtc_QAbstractTextDocumentLayout_setHandler5" qtc_QAbstractTextDocumentLayout_setHandler5 :: Ptr (TQAbstractTextDocumentLayout a) -> CWString -> Ptr (Ptr (TQAbstractTextDocumentLayout x0) -> Ptr (TQPainter t1) -> Ptr (TQRectF t2) -> Ptr (TQTextInlineObject t3) -> CInt -> Ptr (TQTextFormat t5) -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QAbstractTextDocumentLayout5 :: (Ptr (TQAbstractTextDocumentLayout x0) -> Ptr (TQPainter t1) -> Ptr (TQRectF t2) -> Ptr (TQTextInlineObject t3) -> CInt -> Ptr (TQTextFormat t5) -> IO ()) -> IO (FunPtr (Ptr (TQAbstractTextDocumentLayout x0) -> Ptr (TQPainter t1) -> Ptr (TQRectF t2) -> Ptr (TQTextInlineObject t3) -> CInt -> Ptr (TQTextFormat t5) -> IO ()))

foreign import ccall "wrapper" wrapSetHandler_QAbstractTextDocumentLayout5_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QAbstractTextDocumentLayoutSc a) (QAbstractTextDocumentLayout x0 -> QPainter t1 -> QRectF t2 -> QTextInlineObject t3 -> Int -> QTextFormat t5 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractTextDocumentLayout5 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractTextDocumentLayout5_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractTextDocumentLayout_setHandler5 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractTextDocumentLayout x0) -> Ptr (TQPainter t1) -> Ptr (TQRectF t2) -> Ptr (TQTextInlineObject t3) -> CInt -> Ptr (TQTextFormat t5) -> IO ()
    setHandlerWrapper x0 x1 x2 x3 x4 x5
      = do x0obj <- qAbstractTextDocumentLayoutFromPtr x0
           x1obj <- objectFromPtr_nf x1
           x2obj <- objectFromPtr_nf x2
           x3obj <- objectFromPtr_nf x3
           let x4int = fromCInt x4
           x5obj <- objectFromPtr_nf x5
           if (objectIsNull x0obj)
            then return ()
            else _handler x0obj x1obj x2obj x3obj x4int x5obj

    setHandlerWrapper_d :: Ptr fun -> Ptr () -> Ptr fun_d -> IO ()
    setHandlerWrapper_d funptr stptr funptr_d
      = do when (stptr/=ptrNull)
            (freeStablePtr (castPtrToStablePtr stptr))
           when (funptr/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr))
           when (funptr_d/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr_d))
           return ()

class QdrawInlineObject_h x0 x1 where
 drawInlineObject_h :: x0 -> x1 -> IO ()

class QqdrawInlineObject_h x0 x1 where
 qdrawInlineObject_h :: x0 -> x1 -> IO ()

instance QqdrawInlineObject_h (QAbstractTextDocumentLayout ()) ((QPainter t1, QRectF t2, QTextInlineObject t3, Int, QTextFormat t5)) where
 qdrawInlineObject_h x0 (x1, x2, x3, x4, x5)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    withObjectPtr x5 $ \cobj_x5 ->
    qtc_QAbstractTextDocumentLayout_drawInlineObject cobj_x0 cobj_x1 cobj_x2 cobj_x3 (toCInt x4) cobj_x5

foreign import ccall "qtc_QAbstractTextDocumentLayout_drawInlineObject" qtc_QAbstractTextDocumentLayout_drawInlineObject :: Ptr (TQAbstractTextDocumentLayout a) -> Ptr (TQPainter t1) -> Ptr (TQRectF t2) -> Ptr (TQTextInlineObject t3) -> CInt -> Ptr (TQTextFormat t5) -> IO ()

instance QqdrawInlineObject_h (QAbstractTextDocumentLayoutSc a) ((QPainter t1, QRectF t2, QTextInlineObject t3, Int, QTextFormat t5)) where
 qdrawInlineObject_h x0 (x1, x2, x3, x4, x5)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    withObjectPtr x5 $ \cobj_x5 ->
    qtc_QAbstractTextDocumentLayout_drawInlineObject cobj_x0 cobj_x1 cobj_x2 cobj_x3 (toCInt x4) cobj_x5

instance QdrawInlineObject_h (QAbstractTextDocumentLayout ()) ((QPainter t1, RectF, QTextInlineObject t3, Int, QTextFormat t5)) where
 drawInlineObject_h x0 (x1, x2, x3, x4, x5)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCRectF x2 $ \crectf_x2_x crectf_x2_y  crectf_x2_w crectf_x2_h -> 
    withObjectPtr x3 $ \cobj_x3 ->
    withObjectPtr x5 $ \cobj_x5 ->
    qtc_QAbstractTextDocumentLayout_drawInlineObject_qth cobj_x0 cobj_x1 crectf_x2_x crectf_x2_y crectf_x2_w crectf_x2_h  cobj_x3 (toCInt x4) cobj_x5

foreign import ccall "qtc_QAbstractTextDocumentLayout_drawInlineObject_qth" qtc_QAbstractTextDocumentLayout_drawInlineObject_qth :: Ptr (TQAbstractTextDocumentLayout a) -> Ptr (TQPainter t1) -> CDouble -> CDouble -> CDouble -> CDouble -> Ptr (TQTextInlineObject t3) -> CInt -> Ptr (TQTextFormat t5) -> IO ()

instance QdrawInlineObject_h (QAbstractTextDocumentLayoutSc a) ((QPainter t1, RectF, QTextInlineObject t3, Int, QTextFormat t5)) where
 drawInlineObject_h x0 (x1, x2, x3, x4, x5)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCRectF x2 $ \crectf_x2_x crectf_x2_y  crectf_x2_w crectf_x2_h -> 
    withObjectPtr x3 $ \cobj_x3 ->
    withObjectPtr x5 $ \cobj_x5 ->
    qtc_QAbstractTextDocumentLayout_drawInlineObject_qth cobj_x0 cobj_x1 crectf_x2_x crectf_x2_y crectf_x2_w crectf_x2_h  cobj_x3 (toCInt x4) cobj_x5

instance QsetHandler (QAbstractTextDocumentLayout ()) (QAbstractTextDocumentLayout x0 -> QObject t1 -> IO (QRectF t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractTextDocumentLayout6 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractTextDocumentLayout6_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractTextDocumentLayout_setHandler6 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractTextDocumentLayout x0) -> Ptr (TQObject t1) -> IO (Ptr (TQRectF t0))
    setHandlerWrapper x0 x1
      = do x0obj <- qAbstractTextDocumentLayoutFromPtr x0
           x1obj <- qObjectFromPtr x1
           let rv =
                if (objectIsNull x0obj)
                 then return $ objectCast x0obj
                 else _handler x0obj x1obj
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

foreign import ccall "qtc_QAbstractTextDocumentLayout_setHandler6" qtc_QAbstractTextDocumentLayout_setHandler6 :: Ptr (TQAbstractTextDocumentLayout a) -> CWString -> Ptr (Ptr (TQAbstractTextDocumentLayout x0) -> Ptr (TQObject t1) -> IO (Ptr (TQRectF t0))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QAbstractTextDocumentLayout6 :: (Ptr (TQAbstractTextDocumentLayout x0) -> Ptr (TQObject t1) -> IO (Ptr (TQRectF t0))) -> IO (FunPtr (Ptr (TQAbstractTextDocumentLayout x0) -> Ptr (TQObject t1) -> IO (Ptr (TQRectF t0))))

foreign import ccall "wrapper" wrapSetHandler_QAbstractTextDocumentLayout6_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QAbstractTextDocumentLayoutSc a) (QAbstractTextDocumentLayout x0 -> QObject t1 -> IO (QRectF t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractTextDocumentLayout6 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractTextDocumentLayout6_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractTextDocumentLayout_setHandler6 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractTextDocumentLayout x0) -> Ptr (TQObject t1) -> IO (Ptr (TQRectF t0))
    setHandlerWrapper x0 x1
      = do x0obj <- qAbstractTextDocumentLayoutFromPtr x0
           x1obj <- qObjectFromPtr x1
           let rv =
                if (objectIsNull x0obj)
                 then return $ objectCast x0obj
                 else _handler x0obj x1obj
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

class QframeBoundingRect_h x0 x1 where
 frameBoundingRect_h :: x0 -> x1 -> IO (RectF)

class QqframeBoundingRect_h x0 x1 where
 qframeBoundingRect_h :: x0 -> x1 -> IO (QRectF ())

instance QqframeBoundingRect_h (QAbstractTextDocumentLayout ()) ((QTextFrame t1)) where
 qframeBoundingRect_h x0 (x1)
  = withQRectFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractTextDocumentLayout_frameBoundingRect cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractTextDocumentLayout_frameBoundingRect" qtc_QAbstractTextDocumentLayout_frameBoundingRect :: Ptr (TQAbstractTextDocumentLayout a) -> Ptr (TQTextFrame t1) -> IO (Ptr (TQRectF ()))

instance QqframeBoundingRect_h (QAbstractTextDocumentLayoutSc a) ((QTextFrame t1)) where
 qframeBoundingRect_h x0 (x1)
  = withQRectFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractTextDocumentLayout_frameBoundingRect cobj_x0 cobj_x1

instance QframeBoundingRect_h (QAbstractTextDocumentLayout ()) ((QTextFrame t1)) where
 frameBoundingRect_h x0 (x1)
  = withRectFResult $ \crectf_ret_x crectf_ret_y crectf_ret_w crectf_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractTextDocumentLayout_frameBoundingRect_qth cobj_x0 cobj_x1 crectf_ret_x crectf_ret_y crectf_ret_w crectf_ret_h

foreign import ccall "qtc_QAbstractTextDocumentLayout_frameBoundingRect_qth" qtc_QAbstractTextDocumentLayout_frameBoundingRect_qth :: Ptr (TQAbstractTextDocumentLayout a) -> Ptr (TQTextFrame t1) -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> IO ()

instance QframeBoundingRect_h (QAbstractTextDocumentLayoutSc a) ((QTextFrame t1)) where
 frameBoundingRect_h x0 (x1)
  = withRectFResult $ \crectf_ret_x crectf_ret_y crectf_ret_w crectf_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractTextDocumentLayout_frameBoundingRect_qth cobj_x0 cobj_x1 crectf_ret_x crectf_ret_y crectf_ret_w crectf_ret_h

instance QsetHandler (QAbstractTextDocumentLayout ()) (QAbstractTextDocumentLayout x0 -> QPointF t1 -> HitTestAccuracy -> IO (Int)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractTextDocumentLayout7 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractTextDocumentLayout7_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractTextDocumentLayout_setHandler7 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractTextDocumentLayout x0) -> Ptr (TQPointF t1) -> CLong -> IO (CInt)
    setHandlerWrapper x0 x1 x2
      = do x0obj <- qAbstractTextDocumentLayoutFromPtr x0
           x1obj <- objectFromPtr_nf x1
           let x2enum = qEnum_fromInt $ fromCLong x2
           let rv =
                if (objectIsNull x0obj)
                 then return 0
                 else _handler x0obj x1obj x2enum
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

foreign import ccall "qtc_QAbstractTextDocumentLayout_setHandler7" qtc_QAbstractTextDocumentLayout_setHandler7 :: Ptr (TQAbstractTextDocumentLayout a) -> CWString -> Ptr (Ptr (TQAbstractTextDocumentLayout x0) -> Ptr (TQPointF t1) -> CLong -> IO (CInt)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QAbstractTextDocumentLayout7 :: (Ptr (TQAbstractTextDocumentLayout x0) -> Ptr (TQPointF t1) -> CLong -> IO (CInt)) -> IO (FunPtr (Ptr (TQAbstractTextDocumentLayout x0) -> Ptr (TQPointF t1) -> CLong -> IO (CInt)))

foreign import ccall "wrapper" wrapSetHandler_QAbstractTextDocumentLayout7_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QAbstractTextDocumentLayoutSc a) (QAbstractTextDocumentLayout x0 -> QPointF t1 -> HitTestAccuracy -> IO (Int)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractTextDocumentLayout7 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractTextDocumentLayout7_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractTextDocumentLayout_setHandler7 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractTextDocumentLayout x0) -> Ptr (TQPointF t1) -> CLong -> IO (CInt)
    setHandlerWrapper x0 x1 x2
      = do x0obj <- qAbstractTextDocumentLayoutFromPtr x0
           x1obj <- objectFromPtr_nf x1
           let x2enum = qEnum_fromInt $ fromCLong x2
           let rv =
                if (objectIsNull x0obj)
                 then return 0
                 else _handler x0obj x1obj x2enum
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

class QhitTest_h x0 x1 where
 hitTest_h :: x0 -> x1 -> IO (Int)

class QqhitTest_h x0 x1 where
 qhitTest_h :: x0 -> x1 -> IO (Int)

instance QhitTest_h (QAbstractTextDocumentLayout ()) ((PointF, HitTestAccuracy)) where
 hitTest_h x0 (x1, x2)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCPointF x1 $ \cpointf_x1_x cpointf_x1_y -> 
    qtc_QAbstractTextDocumentLayout_hitTest_qth cobj_x0 cpointf_x1_x cpointf_x1_y  (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QAbstractTextDocumentLayout_hitTest_qth" qtc_QAbstractTextDocumentLayout_hitTest_qth :: Ptr (TQAbstractTextDocumentLayout a) -> CDouble -> CDouble -> CLong -> IO CInt

instance QhitTest_h (QAbstractTextDocumentLayoutSc a) ((PointF, HitTestAccuracy)) where
 hitTest_h x0 (x1, x2)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCPointF x1 $ \cpointf_x1_x cpointf_x1_y -> 
    qtc_QAbstractTextDocumentLayout_hitTest_qth cobj_x0 cpointf_x1_x cpointf_x1_y  (toCLong $ qEnum_toInt x2)

instance QqhitTest_h (QAbstractTextDocumentLayout ()) ((QPointF t1, HitTestAccuracy)) where
 qhitTest_h x0 (x1, x2)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractTextDocumentLayout_hitTest cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QAbstractTextDocumentLayout_hitTest" qtc_QAbstractTextDocumentLayout_hitTest :: Ptr (TQAbstractTextDocumentLayout a) -> Ptr (TQPointF t1) -> CLong -> IO CInt

instance QqhitTest_h (QAbstractTextDocumentLayoutSc a) ((QPointF t1, HitTestAccuracy)) where
 qhitTest_h x0 (x1, x2)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractTextDocumentLayout_hitTest cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

instance QsetHandler (QAbstractTextDocumentLayout ()) (QAbstractTextDocumentLayout x0 -> IO (Int)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractTextDocumentLayout8 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractTextDocumentLayout8_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractTextDocumentLayout_setHandler8 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractTextDocumentLayout x0) -> IO (CInt)
    setHandlerWrapper x0
      = do x0obj <- qAbstractTextDocumentLayoutFromPtr x0
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

foreign import ccall "qtc_QAbstractTextDocumentLayout_setHandler8" qtc_QAbstractTextDocumentLayout_setHandler8 :: Ptr (TQAbstractTextDocumentLayout a) -> CWString -> Ptr (Ptr (TQAbstractTextDocumentLayout x0) -> IO (CInt)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QAbstractTextDocumentLayout8 :: (Ptr (TQAbstractTextDocumentLayout x0) -> IO (CInt)) -> IO (FunPtr (Ptr (TQAbstractTextDocumentLayout x0) -> IO (CInt)))

foreign import ccall "wrapper" wrapSetHandler_QAbstractTextDocumentLayout8_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QAbstractTextDocumentLayoutSc a) (QAbstractTextDocumentLayout x0 -> IO (Int)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractTextDocumentLayout8 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractTextDocumentLayout8_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractTextDocumentLayout_setHandler8 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractTextDocumentLayout x0) -> IO (CInt)
    setHandlerWrapper x0
      = do x0obj <- qAbstractTextDocumentLayoutFromPtr x0
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

class QpageCount_h x0 x1 where
 pageCount_h :: x0 -> x1 -> IO (Int)

instance QpageCount_h (QAbstractTextDocumentLayout ()) (()) where
 pageCount_h x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractTextDocumentLayout_pageCount cobj_x0

foreign import ccall "qtc_QAbstractTextDocumentLayout_pageCount" qtc_QAbstractTextDocumentLayout_pageCount :: Ptr (TQAbstractTextDocumentLayout a) -> IO CInt

instance QpageCount_h (QAbstractTextDocumentLayoutSc a) (()) where
 pageCount_h x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractTextDocumentLayout_pageCount cobj_x0

instance QsetHandler (QAbstractTextDocumentLayout ()) (QAbstractTextDocumentLayout x0 -> QTextInlineObject t1 -> Int -> QTextFormat t3 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractTextDocumentLayout9 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractTextDocumentLayout9_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractTextDocumentLayout_setHandler9 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractTextDocumentLayout x0) -> Ptr (TQTextInlineObject t1) -> CInt -> Ptr (TQTextFormat t3) -> IO ()
    setHandlerWrapper x0 x1 x2 x3
      = do x0obj <- qAbstractTextDocumentLayoutFromPtr x0
           x1obj <- objectFromPtr_nf x1
           let x2int = fromCInt x2
           x3obj <- objectFromPtr_nf x3
           if (objectIsNull x0obj)
            then return ()
            else _handler x0obj x1obj x2int x3obj

    setHandlerWrapper_d :: Ptr fun -> Ptr () -> Ptr fun_d -> IO ()
    setHandlerWrapper_d funptr stptr funptr_d
      = do when (stptr/=ptrNull)
            (freeStablePtr (castPtrToStablePtr stptr))
           when (funptr/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr))
           when (funptr_d/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr_d))
           return ()

foreign import ccall "qtc_QAbstractTextDocumentLayout_setHandler9" qtc_QAbstractTextDocumentLayout_setHandler9 :: Ptr (TQAbstractTextDocumentLayout a) -> CWString -> Ptr (Ptr (TQAbstractTextDocumentLayout x0) -> Ptr (TQTextInlineObject t1) -> CInt -> Ptr (TQTextFormat t3) -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QAbstractTextDocumentLayout9 :: (Ptr (TQAbstractTextDocumentLayout x0) -> Ptr (TQTextInlineObject t1) -> CInt -> Ptr (TQTextFormat t3) -> IO ()) -> IO (FunPtr (Ptr (TQAbstractTextDocumentLayout x0) -> Ptr (TQTextInlineObject t1) -> CInt -> Ptr (TQTextFormat t3) -> IO ()))

foreign import ccall "wrapper" wrapSetHandler_QAbstractTextDocumentLayout9_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QAbstractTextDocumentLayoutSc a) (QAbstractTextDocumentLayout x0 -> QTextInlineObject t1 -> Int -> QTextFormat t3 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractTextDocumentLayout9 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractTextDocumentLayout9_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractTextDocumentLayout_setHandler9 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractTextDocumentLayout x0) -> Ptr (TQTextInlineObject t1) -> CInt -> Ptr (TQTextFormat t3) -> IO ()
    setHandlerWrapper x0 x1 x2 x3
      = do x0obj <- qAbstractTextDocumentLayoutFromPtr x0
           x1obj <- objectFromPtr_nf x1
           let x2int = fromCInt x2
           x3obj <- objectFromPtr_nf x3
           if (objectIsNull x0obj)
            then return ()
            else _handler x0obj x1obj x2int x3obj

    setHandlerWrapper_d :: Ptr fun -> Ptr () -> Ptr fun_d -> IO ()
    setHandlerWrapper_d funptr stptr funptr_d
      = do when (stptr/=ptrNull)
            (freeStablePtr (castPtrToStablePtr stptr))
           when (funptr/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr))
           when (funptr_d/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr_d))
           return ()

class QpositionInlineObject_h x0 x1 where
 positionInlineObject_h :: x0 -> x1 -> IO ()

instance QpositionInlineObject_h (QAbstractTextDocumentLayout ()) ((QTextInlineObject t1, Int, QTextFormat t3)) where
 positionInlineObject_h x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QAbstractTextDocumentLayout_positionInlineObject cobj_x0 cobj_x1 (toCInt x2) cobj_x3

foreign import ccall "qtc_QAbstractTextDocumentLayout_positionInlineObject" qtc_QAbstractTextDocumentLayout_positionInlineObject :: Ptr (TQAbstractTextDocumentLayout a) -> Ptr (TQTextInlineObject t1) -> CInt -> Ptr (TQTextFormat t3) -> IO ()

instance QpositionInlineObject_h (QAbstractTextDocumentLayoutSc a) ((QTextInlineObject t1, Int, QTextFormat t3)) where
 positionInlineObject_h x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QAbstractTextDocumentLayout_positionInlineObject cobj_x0 cobj_x1 (toCInt x2) cobj_x3

class QresizeInlineObject_h x0 x1 where
 resizeInlineObject_h :: x0 -> x1 -> IO ()

instance QresizeInlineObject_h (QAbstractTextDocumentLayout ()) ((QTextInlineObject t1, Int, QTextFormat t3)) where
 resizeInlineObject_h x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QAbstractTextDocumentLayout_resizeInlineObject cobj_x0 cobj_x1 (toCInt x2) cobj_x3

foreign import ccall "qtc_QAbstractTextDocumentLayout_resizeInlineObject" qtc_QAbstractTextDocumentLayout_resizeInlineObject :: Ptr (TQAbstractTextDocumentLayout a) -> Ptr (TQTextInlineObject t1) -> CInt -> Ptr (TQTextFormat t3) -> IO ()

instance QresizeInlineObject_h (QAbstractTextDocumentLayoutSc a) ((QTextInlineObject t1, Int, QTextFormat t3)) where
 resizeInlineObject_h x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QAbstractTextDocumentLayout_resizeInlineObject cobj_x0 cobj_x1 (toCInt x2) cobj_x3

instance QsetHandler (QAbstractTextDocumentLayout ()) (QAbstractTextDocumentLayout x0 -> QEvent t1 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractTextDocumentLayout10 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractTextDocumentLayout10_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractTextDocumentLayout_setHandler10 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractTextDocumentLayout x0) -> Ptr (TQEvent t1) -> IO (CBool)
    setHandlerWrapper x0 x1
      = do x0obj <- qAbstractTextDocumentLayoutFromPtr x0
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

foreign import ccall "qtc_QAbstractTextDocumentLayout_setHandler10" qtc_QAbstractTextDocumentLayout_setHandler10 :: Ptr (TQAbstractTextDocumentLayout a) -> CWString -> Ptr (Ptr (TQAbstractTextDocumentLayout x0) -> Ptr (TQEvent t1) -> IO (CBool)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QAbstractTextDocumentLayout10 :: (Ptr (TQAbstractTextDocumentLayout x0) -> Ptr (TQEvent t1) -> IO (CBool)) -> IO (FunPtr (Ptr (TQAbstractTextDocumentLayout x0) -> Ptr (TQEvent t1) -> IO (CBool)))

foreign import ccall "wrapper" wrapSetHandler_QAbstractTextDocumentLayout10_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QAbstractTextDocumentLayoutSc a) (QAbstractTextDocumentLayout x0 -> QEvent t1 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractTextDocumentLayout10 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractTextDocumentLayout10_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractTextDocumentLayout_setHandler10 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractTextDocumentLayout x0) -> Ptr (TQEvent t1) -> IO (CBool)
    setHandlerWrapper x0 x1
      = do x0obj <- qAbstractTextDocumentLayoutFromPtr x0
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

instance Qevent_h (QAbstractTextDocumentLayout ()) ((QEvent t1)) where
 event_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractTextDocumentLayout_event cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractTextDocumentLayout_event" qtc_QAbstractTextDocumentLayout_event :: Ptr (TQAbstractTextDocumentLayout a) -> Ptr (TQEvent t1) -> IO CBool

instance Qevent_h (QAbstractTextDocumentLayoutSc a) ((QEvent t1)) where
 event_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractTextDocumentLayout_event cobj_x0 cobj_x1

instance QsetHandler (QAbstractTextDocumentLayout ()) (QAbstractTextDocumentLayout x0 -> QObject t1 -> QEvent t2 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractTextDocumentLayout11 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractTextDocumentLayout11_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractTextDocumentLayout_setHandler11 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractTextDocumentLayout x0) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO (CBool)
    setHandlerWrapper x0 x1 x2
      = do x0obj <- qAbstractTextDocumentLayoutFromPtr x0
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

foreign import ccall "qtc_QAbstractTextDocumentLayout_setHandler11" qtc_QAbstractTextDocumentLayout_setHandler11 :: Ptr (TQAbstractTextDocumentLayout a) -> CWString -> Ptr (Ptr (TQAbstractTextDocumentLayout x0) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO (CBool)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QAbstractTextDocumentLayout11 :: (Ptr (TQAbstractTextDocumentLayout x0) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO (CBool)) -> IO (FunPtr (Ptr (TQAbstractTextDocumentLayout x0) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO (CBool)))

foreign import ccall "wrapper" wrapSetHandler_QAbstractTextDocumentLayout11_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QAbstractTextDocumentLayoutSc a) (QAbstractTextDocumentLayout x0 -> QObject t1 -> QEvent t2 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractTextDocumentLayout11 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractTextDocumentLayout11_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractTextDocumentLayout_setHandler11 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractTextDocumentLayout x0) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO (CBool)
    setHandlerWrapper x0 x1 x2
      = do x0obj <- qAbstractTextDocumentLayoutFromPtr x0
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

instance QeventFilter_h (QAbstractTextDocumentLayout ()) ((QObject t1, QEvent t2)) where
 eventFilter_h x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QAbstractTextDocumentLayout_eventFilter cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QAbstractTextDocumentLayout_eventFilter" qtc_QAbstractTextDocumentLayout_eventFilter :: Ptr (TQAbstractTextDocumentLayout a) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO CBool

instance QeventFilter_h (QAbstractTextDocumentLayoutSc a) ((QObject t1, QEvent t2)) where
 eventFilter_h x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QAbstractTextDocumentLayout_eventFilter cobj_x0 cobj_x1 cobj_x2

