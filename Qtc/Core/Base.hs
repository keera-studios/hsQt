{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : Base.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:32
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Core.Base (
  qEq, qNq, qOeq, qNoq, qIn
  ,Qcs(..), Qcsn(..), connectSignal, Qes(..), Qdcs(..)
  ,qtc_connectSlot_int, wrapSlotHandler_int
  ,freeDynamicSlots
  ,QqObject(..), qObjectSc
  ,qObjectParent, qObjectParentSc, qObjectParentRef, inherits, qObjectProperty
  ,metaObject
  ,setObjectName, objectName, qObjectSetParent, qObjectSetProperty
  ,blockSignals, signalsBlocked
  ,installEventFilter, removeEventFilter
  ,isWidgetType
  ,killTimer, startTimer 
  ,qSubClass
  ,qResource, QregisterResource(..), QunregisterResource(..)
  ,qregisterMetatype
  ,qsrand
  ,qobject_cast, qstyleoption_cast, qObjectIsNull
  ,findChild, findChildren, qObjectChildren
  ,qObject_delete
  ,readRawData, qPolygonL, qPolygonFL, Qqpoints(..)
  ,qPointer, qPointer_data
  ,module System.Mem
  ,returnGC
  ,setUrls
  ,qByteArray
  ,qByteArray_isEmpty
  )
  where

import Qtc.Classes.Base
import Qth.ClassTypes.Core
import Qtc.ClassTypes.Core
import Qtc.ClassTypes.Gui
import System.Mem
import Control.Concurrent
import Foreign.C.Types(CInt(..))
import Foreign.Ptr(FunPtr(..), Ptr(..))
{-
instance Ord (QObject a)  where
 (<) x1 x2
   = unsafePerformIO $
     withBoolResult $
     withObjectPtr x1 $ \cobj_x1 ->
     withObjectPtr x2 $ \cobj_x2 ->
     qtc_QObject_pa_lt cobj_x1 cobj_x2

foreign import ccall "qtc_QObject_pa_lt" qtc_QObject_pa_lt :: Ptr (TQObject a) -> Ptr (TQObject a) -> IO CBool
-}

qEq :: (QObject a) -> (QObject a) -> Bool
qEq x1 x2
   = unsafePerformIO $
     withBoolResult $
     withObjectPtr x1 $ \cobj_x1 ->
     withObjectPtr x2 $ \cobj_x2 ->
     qtc_QObject_pa_eq cobj_x1 cobj_x2

foreign import ccall "qtc_QObject_pa_eq" qtc_QObject_pa_eq :: Ptr (TQObject a) -> Ptr (TQObject a) -> IO CBool

qNq :: (QObject a) -> (QObject a) -> Bool
qNq x1 x2
    = not $ qEq x1 x2

qOeq :: (QObject a) -> (QObject b) -> Bool
qOeq x1 x2
   = unsafePerformIO $
     withBoolResult $
     withObjectPtr x1 $ \cobj_x1 ->
     withObjectPtr x2 $ \cobj_x2 ->
     qtc_QObject_pa_oeq cobj_x1 cobj_x2

foreign import ccall "qtc_QObject_pa_oeq" qtc_QObject_pa_oeq :: Ptr (TQObject a) -> Ptr (TQObject b) -> IO CBool

qNoq x1 x2
    = not $ qOeq x1 x2

qIn :: (QObject a) -> Bool
qIn x1
    = unsafePerformIO $ qObjectIsNull x1

returnGC :: IO ()
returnGC = performGC

class Qcs x where
  connectSlot :: QObject a -> String -> QObject b -> String -> x -> IO ()

instance Qcs (()) where
 connectSlot _qsig_obj _qsig_nam _qslt_obj _qslt_nam ()
  = withObjectPtr _qsig_obj $ \cobj_sig ->
    withCWString _qsig_nam $ \cstr_sig ->
    withObjectPtr _qslt_obj $ \cobj_slt ->
    withCWString _qslt_nam $ \cstr_slt ->
    qtc_connectSlot_public cobj_sig cstr_sig cobj_slt cstr_slt

instance Qcs (QObject c -> IO ()) where
 connectSlot _qsig_obj _qsig_nam _qslt_obj _qslt_nam _handler
  = do
    funptr  <- wrapSlotHandler slotHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    withObjectPtr _qsig_obj $ \cobj_sig ->
      withCWString _qsig_nam $ \cstr_sig ->
      withObjectPtr _qslt_obj $ \cobj_slt ->
      withCWString _qslt_nam $ \cstr_slt ->
      qtc_connectSlot cobj_sig cstr_sig cobj_slt cstr_slt (toCFunPtr funptr) (castStablePtrToPtr stptr)
    return ()
  where
    slotHandlerWrapper :: Ptr fun -> Ptr () -> Ptr (TQObject c) -> IO ()
    slotHandlerWrapper funptr stptr qobjptr
      = do qobj <- qObjectFromPtr qobjptr
           if (objectIsNull qobj)
            then do when (stptr/=ptrNull)
                      (freeStablePtr (castPtrToStablePtr stptr))
                    when (funptr/=ptrNull)
                      (freeHaskellFunPtr (castPtrToFunPtr funptr))
            else _handler qobj
           return ()

instance Qcs (QObject c -> Int -> IO ()) where
 connectSlot _qsig_obj _qsig_nam _qslt_obj _qslt_nam _handler
  = do
    funptr  <- wrapSlotHandler_int slotHandlerWrapper_int
    stptr   <- newStablePtr (Wrap _handler)
    withObjectPtr _qsig_obj $ \cobj_sig ->
      withCWString _qsig_nam $ \cstr_sig ->
      withObjectPtr _qslt_obj $ \cobj_slt ->
      withCWString _qslt_nam $ \cstr_slt ->
      qtc_connectSlot_int cobj_sig cstr_sig cobj_slt cstr_slt (toCFunPtr funptr) (castStablePtrToPtr stptr)
    return ()
  where
    slotHandlerWrapper_int :: Ptr fun -> Ptr () -> Ptr (TQObject c) -> CInt -> IO ()
    slotHandlerWrapper_int funptr stptr qobjptr cint
      = do qobj <- qObjectFromPtr qobjptr
           let hint = fromCInt cint
           if (objectIsNull qobj)
            then do when (stptr/=ptrNull)
                      (freeStablePtr (castPtrToStablePtr stptr))
                    when (funptr/=ptrNull)
                      (freeHaskellFunPtr (castPtrToFunPtr funptr))
            else _handler qobj hint
           return ()

instance Qcs (QObject c -> Bool -> IO ()) where
 connectSlot _qsig_obj _qsig_nam _qslt_obj _qslt_nam _handler
  = do
    funptr  <- wrapSlotHandler_bool slotHandlerWrapper_bool
    stptr   <- newStablePtr (Wrap _handler)
    withObjectPtr _qsig_obj $ \cobj_sig ->
      withCWString _qsig_nam $ \cstr_sig ->
      withObjectPtr _qslt_obj $ \cobj_slt ->
      withCWString _qslt_nam $ \cstr_slt ->
      qtc_connectSlot_bool cobj_sig cstr_sig cobj_slt cstr_slt (toCFunPtr funptr) (castStablePtrToPtr stptr)
    return ()
  where
    slotHandlerWrapper_bool :: Ptr fun -> Ptr () -> Ptr (TQObject c) -> CBool -> IO ()
    slotHandlerWrapper_bool funptr stptr qobjptr cbool
      = do qobj <- qObjectFromPtr qobjptr
           let hbool = fromCBool cbool
           if (objectIsNull qobj)
            then do when (stptr/=ptrNull)
                      (freeStablePtr (castPtrToStablePtr stptr))
                    when (funptr/=ptrNull)
                      (freeHaskellFunPtr (castPtrToFunPtr funptr))
            else _handler qobj hbool
           return ()

instance Qcs (QObject c -> Object d -> IO ()) where
 connectSlot _qsig_obj _qsig_nam _qslt_obj _qslt_nam _handler
  = do
    funptr  <- wrapSlotHandler_ptr slotHandlerWrapper_ptr
    stptr   <- newStablePtr (Wrap _handler)
    withObjectPtr _qsig_obj $ \cobj_sig ->
      withCWString _qsig_nam $ \cstr_sig ->
      withObjectPtr _qslt_obj $ \cobj_slt ->
      withCWString _qslt_nam $ \cstr_slt ->
      qtc_connectSlot_ptr cobj_sig cstr_sig cobj_slt cstr_slt (toCFunPtr funptr) (castStablePtrToPtr stptr)
    return ()
  where
    slotHandlerWrapper_ptr :: Ptr fun -> Ptr () -> Ptr (TQObject c) -> Ptr d -> IO ()
    slotHandlerWrapper_ptr funptr stptr qobjptr1 qobjptr2
      = do qobj1 <- qObjectFromPtr qobjptr1
           qobj2 <- objectFromPtr_nf qobjptr2
           if (objectIsNull qobj1)
            then do when (stptr/=ptrNull)
                      (freeStablePtr (castPtrToStablePtr stptr))
                    when (funptr/=ptrNull)
                      (freeHaskellFunPtr (castPtrToFunPtr funptr))
            else _handler qobj1 qobj2
           return ()

instance Qcs (QObject c -> String -> IO ()) where
 connectSlot _qsig_obj _qsig_nam _qslt_obj _qslt_nam _handler
  = do
    funptr  <- wrapSlotHandler_str slotHandlerWrapper_str
    stptr   <- newStablePtr (Wrap _handler)
    withObjectPtr _qsig_obj $ \cobj_sig ->
      withCWString _qsig_nam $ \cstr_sig ->
      withObjectPtr _qslt_obj $ \cobj_slt ->
      withCWString _qslt_nam $ \cstr_slt ->
      qtc_connectSlot_str cobj_sig cstr_sig cobj_slt cstr_slt (toCFunPtr funptr) (castStablePtrToPtr stptr)
    return ()
  where
    slotHandlerWrapper_str :: Ptr fun -> Ptr () -> Ptr (TQObject c) -> Ptr (TQString ()) -> IO ()
    slotHandlerWrapper_str funptr stptr qobjptr qstrptr
      = do qobj <- qObjectFromPtr qobjptr
           qstr <- stringFromPtr qstrptr
           if (objectIsNull qobj)
            then do when (stptr/=ptrNull)
                      (freeStablePtr (castPtrToStablePtr stptr))
                    when (funptr/=ptrNull)
                      (freeHaskellFunPtr (castPtrToFunPtr funptr))
            else _handler qobj qstr
           return ()

class Qcsn x where
  connectSlot_nt :: QObject a -> String -> QObject b -> String -> x -> IO ()

instance Qcsn (IO ()) where
 connectSlot_nt _qsig_obj _qsig_nam _qslt_obj _qslt_nam _handler
  = do
    funptr  <- wrapSlotHandler slotHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    withObjectPtr _qsig_obj $ \cobj_sig ->
      withCWString _qsig_nam $ \cstr_sig ->
      withObjectPtr _qslt_obj $ \cobj_slt ->
      withCWString _qslt_nam $ \cstr_slt ->
      qtc_connectSlot cobj_sig cstr_sig cobj_slt cstr_slt (toCFunPtr funptr) (castStablePtrToPtr stptr)
    return ()
  where
    slotHandlerWrapper :: Ptr fun -> Ptr () -> Ptr (TQObject c) -> IO ()
    slotHandlerWrapper funptr stptr qobjptr
      = do qobj <- qObjectFromPtr qobjptr
           if (objectIsNull qobj)
            then do when (stptr/=ptrNull)
                      (freeStablePtr (castPtrToStablePtr stptr))
                    when (funptr/=ptrNull)
                      (freeHaskellFunPtr (castPtrToFunPtr funptr))
            else _handler
           return ()

instance Qcsn (() -> IO ()) where
 connectSlot_nt _qsig_obj _qsig_nam _qslt_obj _qslt_nam _handler
  = do
    funptr  <- wrapSlotHandler slotHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    withObjectPtr _qsig_obj $ \cobj_sig ->
      withCWString _qsig_nam $ \cstr_sig ->
      withObjectPtr _qslt_obj $ \cobj_slt ->
      withCWString _qslt_nam $ \cstr_slt ->
      qtc_connectSlot cobj_sig cstr_sig cobj_slt cstr_slt (toCFunPtr funptr) (castStablePtrToPtr stptr)
    return ()
  where
    slotHandlerWrapper :: Ptr fun -> Ptr () -> Ptr (TQObject c) -> IO ()
    slotHandlerWrapper funptr stptr qobjptr
      = do qobj <- qObjectFromPtr qobjptr
           if (objectIsNull qobj)
            then do when (stptr/=ptrNull)
                      (freeStablePtr (castPtrToStablePtr stptr))
                    when (funptr/=ptrNull)
                      (freeHaskellFunPtr (castPtrToFunPtr funptr))
            else _handler ()
           return ()

instance Qcsn (Int -> IO ()) where
 connectSlot_nt _qsig_obj _qsig_nam _qslt_obj _qslt_nam _handler
  = do
    funptr  <- wrapSlotHandler_int slotHandlerWrapper_int
    stptr   <- newStablePtr (Wrap _handler)
    withObjectPtr _qsig_obj $ \cobj_sig ->
      withCWString _qsig_nam $ \cstr_sig ->
      withObjectPtr _qslt_obj $ \cobj_slt ->
      withCWString _qslt_nam $ \cstr_slt ->
      qtc_connectSlot_int cobj_sig cstr_sig cobj_slt cstr_slt (toCFunPtr funptr) (castStablePtrToPtr stptr)
    return ()
  where
    slotHandlerWrapper_int :: Ptr fun -> Ptr () -> Ptr (TQObject c) -> CInt -> IO ()
    slotHandlerWrapper_int funptr stptr qobjptr cint
      = do qobj <- qObjectFromPtr qobjptr
           let hint = fromCInt cint
           if (objectIsNull qobj)
            then do when (stptr/=ptrNull)
                      (freeStablePtr (castPtrToStablePtr stptr))
                    when (funptr/=ptrNull)
                      (freeHaskellFunPtr (castPtrToFunPtr funptr))
            else _handler hint
           return ()

instance Qcsn ((Bool) -> IO ()) where
 connectSlot_nt _qsig_obj _qsig_nam _qslt_obj _qslt_nam _handler
  = do
    funptr  <- wrapSlotHandler_bool slotHandlerWrapper_bool
    stptr   <- newStablePtr (Wrap _handler)
    withObjectPtr _qsig_obj $ \cobj_sig ->
      withCWString _qsig_nam $ \cstr_sig ->
      withObjectPtr _qslt_obj $ \cobj_slt ->
      withCWString _qslt_nam $ \cstr_slt ->
      qtc_connectSlot_bool cobj_sig cstr_sig cobj_slt cstr_slt (toCFunPtr funptr) (castStablePtrToPtr stptr)
    return ()
  where
    slotHandlerWrapper_bool :: Ptr fun -> Ptr () -> Ptr (TQObject c) -> CBool -> IO ()
    slotHandlerWrapper_bool funptr stptr qobjptr cbool
      = do qobj <- qObjectFromPtr qobjptr
           let hbool = fromCBool cbool
           if (objectIsNull qobj)
            then do when (stptr/=ptrNull)
                      (freeStablePtr (castPtrToStablePtr stptr))
                    when (funptr/=ptrNull)
                      (freeHaskellFunPtr (castPtrToFunPtr funptr))
            else _handler hbool
           return ()

instance Qcsn ((Object d) -> IO ()) where
 connectSlot_nt _qsig_obj _qsig_nam _qslt_obj _qslt_nam _handler
  = do
    funptr  <- wrapSlotHandler_ptr slotHandlerWrapper_ptr
    stptr   <- newStablePtr (Wrap _handler)
    withObjectPtr _qsig_obj $ \cobj_sig ->
      withCWString _qsig_nam $ \cstr_sig ->
      withObjectPtr _qslt_obj $ \cobj_slt ->
      withCWString _qslt_nam $ \cstr_slt ->
      qtc_connectSlot_ptr cobj_sig cstr_sig cobj_slt cstr_slt (toCFunPtr funptr) (castStablePtrToPtr stptr)
    return ()
  where
    slotHandlerWrapper_ptr :: Ptr fun -> Ptr () -> Ptr (TQObject c) -> Ptr d -> IO ()
    slotHandlerWrapper_ptr funptr stptr qobjptr1 qobjptr2
      = do qobj1 <- qObjectFromPtr qobjptr1
           qobj2 <- objectFromPtr_nf qobjptr2
           if (objectIsNull qobj1)
            then do when (stptr/=ptrNull)
                      (freeStablePtr (castPtrToStablePtr stptr))
                    when (funptr/=ptrNull)
                      (freeHaskellFunPtr (castPtrToFunPtr funptr))
            else _handler qobj2
           return ()

instance Qcsn ((String) -> IO ()) where
 connectSlot_nt _qsig_obj _qsig_nam _qslt_obj _qslt_nam _handler
  = do
    funptr  <- wrapSlotHandler_str slotHandlerWrapper_str
    stptr   <- newStablePtr (Wrap _handler)
    withObjectPtr _qsig_obj $ \cobj_sig ->
      withCWString _qsig_nam $ \cstr_sig ->
      withObjectPtr _qslt_obj $ \cobj_slt ->
      withCWString _qslt_nam $ \cstr_slt ->
      qtc_connectSlot_str cobj_sig cstr_sig cobj_slt cstr_slt (toCFunPtr funptr) (castStablePtrToPtr stptr)
    return ()
  where
    slotHandlerWrapper_str :: Ptr fun -> Ptr () -> Ptr (TQObject c) -> Ptr (TQString ()) -> IO ()
    slotHandlerWrapper_str funptr stptr qobjptr qstrptr
      = do qobj <- qObjectFromPtr qobjptr
           qstr <- stringFromPtr qstrptr
           if (objectIsNull qobj)
            then do when (stptr/=ptrNull)
                      (freeStablePtr (castPtrToStablePtr stptr))
                    when (funptr/=ptrNull)
                      (freeHaskellFunPtr (castPtrToFunPtr funptr))
            else _handler qstr
           return ()

foreign import ccall "qtc_connectSlot_public" qtc_connectSlot_public :: Ptr (TQObject a) -> CWString -> Ptr (TQObject b) -> CWString -> IO ()

foreign import ccall "qtc_connectSlot" qtc_connectSlot :: Ptr (TQObject a) -> CWString -> Ptr (TQObject b) -> CWString -> Ptr (Ptr fun -> Ptr state -> Ptr (TQObject c) -> IO ()) -> Ptr () -> IO ()

foreign import ccall "wrapper" wrapSlotHandler :: (Ptr fun -> Ptr state -> Ptr (TQObject c) -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr (TQObject c) -> IO ()))

foreign import ccall "qtc_connectSlot_int" qtc_connectSlot_int :: Ptr (TQObject a) -> CWString -> Ptr (TQObject b) -> CWString -> Ptr (Ptr fun -> Ptr state -> Ptr (TQObject c) -> CInt -> IO ()) -> Ptr () -> IO ()

foreign import ccall "wrapper" wrapSlotHandler_int :: (Ptr fun -> Ptr state -> Ptr (TQObject c) -> CInt -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr (TQObject c) -> CInt -> IO ()))

foreign import ccall "qtc_connectSlot_bool" qtc_connectSlot_bool :: Ptr (TQObject a) -> CWString -> Ptr (TQObject b) -> CWString -> Ptr (Ptr fun -> Ptr state -> Ptr (TQObject c) -> CBool -> IO ()) -> Ptr () -> IO ()

foreign import ccall "wrapper" wrapSlotHandler_bool :: (Ptr fun -> Ptr state -> Ptr (TQObject c) -> CBool -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr (TQObject c) -> CBool -> IO ()))

foreign import ccall "qtc_connectSlot_ptr" qtc_connectSlot_ptr :: Ptr (TQObject a) -> CWString -> Ptr (TQObject b) -> CWString -> Ptr (Ptr fun -> Ptr state -> Ptr (TQObject c) -> Ptr d -> IO ()) -> Ptr () -> IO ()

foreign import ccall "wrapper" wrapSlotHandler_ptr :: (Ptr fun -> Ptr state -> Ptr (TQObject c) -> Ptr d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr (TQObject c) -> Ptr d -> IO ()))

foreign import ccall "qtc_connectSlot_str" qtc_connectSlot_str :: Ptr (TQObject a) -> CWString -> Ptr (TQObject b) -> CWString -> Ptr (Ptr fun -> Ptr state -> Ptr (TQObject c) -> Ptr (TQString ()) -> IO ()) -> Ptr () -> IO ()

foreign import ccall "wrapper" wrapSlotHandler_str :: (Ptr fun -> Ptr state -> Ptr (TQObject c) -> Ptr (TQString ()) -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr (TQObject c) -> Ptr (TQString ()) -> IO ()))

connectSignal :: QObject a -> String -> QObject b -> String -> IO ()
connectSignal _qsig_obj _qsig_nam _qslt_obj _qslt_nam
  = withObjectPtr _qsig_obj $ \cobj_sig ->
    withCWString _qsig_nam $ \cstr_sig ->
    withObjectPtr _qslt_obj $ \cobj_slt ->
    withCWString _qslt_nam $ \cstr_slt ->
    qtc_connectSignal cobj_sig cstr_sig cobj_slt cstr_slt

foreign import ccall "qtc_connectSignal" qtc_connectSignal :: Ptr (TQObject a) -> CWString -> Ptr (TQObject b) -> CWString -> IO ()

class Qes x where
  emitSignal :: QObject a -> String -> x -> IO ()

instance Qes (()) where
 emitSignal _qsig_obj _qsig_nam ()
  = withObjectPtr _qsig_obj $ \cobj_sig ->
    withCWString _qsig_nam $ \cstr_sig ->
    qtc_emitSignal_nll cobj_sig cstr_sig

instance Qes (Object c) where
 emitSignal _qsig_obj _qsig_nam _qsig_ptr
  = withObjectPtr _qsig_obj $ \cobj_sig ->
    withCWString _qsig_nam $ \cstr_sig ->
    withObjectPtr _qsig_ptr $ \cobj_ptr ->
    qtc_emitSignal_ptr cobj_sig cstr_sig cobj_ptr

instance Qes Int where
 emitSignal _qsig_obj _qsig_nam _qsig_int
  = withObjectPtr _qsig_obj $ \cobj_sig ->
    withCWString _qsig_nam $ \cstr_sig ->
    qtc_emitSignal_int cobj_sig cstr_sig (toCInt _qsig_int)

instance Qes Bool where
 emitSignal _qsig_obj _qsig_nam _qsig_bool
  = withObjectPtr _qsig_obj $ \cobj_sig ->
    withCWString _qsig_nam $ \cstr_sig ->
    qtc_emitSignal_bool cobj_sig cstr_sig (toCBool _qsig_bool)

instance Qes String where
 emitSignal _qsig_obj _qsig_nam _qsig_str
  = withObjectPtr _qsig_obj $ \cobj_sig ->
    withCWString _qsig_nam $ \cstr_sig ->
    withCWString _qsig_str $ \cstr_str ->
    qtc_emitSignal_str cobj_sig cstr_sig cstr_str

foreign import ccall "qtc_emitSignal_nll" qtc_emitSignal_nll :: Ptr (TQObject a) -> CWString -> IO ()

foreign import ccall "qtc_emitSignal_int" qtc_emitSignal_int :: Ptr (TQObject a) -> CWString -> CInt -> IO ()

foreign import ccall "qtc_emitSignal_bool" qtc_emitSignal_bool :: Ptr (TQObject a) -> CWString -> CBool -> IO ()

foreign import ccall "qtc_emitSignal_ptr" qtc_emitSignal_ptr :: Ptr (TQObject a) -> CWString -> Ptr b -> IO ()

foreign import ccall "qtc_emitSignal_str" qtc_emitSignal_str :: Ptr (TQObject a) -> CWString -> CWString -> IO ()

class Qdcs x where
  disconnectSlot :: QObject a -> x -> IO Bool

instance Qdcs ((String, QObject b, String)) where
 disconnectSlot _qsig_obj (_qsig_nam, _qslt_obj, _qslt_nam)
  = withBoolResult $
    withObjectPtr _qsig_obj $ \cobj_sig ->
    withCWString _qsig_nam $ \cstr_sig ->
    withObjectPtr _qslt_obj $ \cobj_slt ->
    withCWString _qslt_nam $ \cstr_slt ->
    qtc_disconnectSlot_sos cobj_sig cstr_sig cobj_slt cstr_slt

foreign import ccall "qtc_disconnectSlot_sos" qtc_disconnectSlot_sos :: Ptr (TQObject a) -> CWString -> Ptr (TQObject b) -> CWString -> IO CBool

instance Qdcs ((String, QObject b)) where
 disconnectSlot _qsig_obj (_qsig_nam, _qslt_obj)
  = withBoolResult $
    withObjectPtr _qsig_obj $ \cobj_sig ->
    withCWString _qsig_nam $ \cstr_sig ->
    withObjectPtr _qslt_obj $ \cobj_slt ->
    qtc_disconnectSlot_so cobj_sig cstr_sig cobj_slt

foreign import ccall "qtc_disconnectSlot_so" qtc_disconnectSlot_so :: Ptr (TQObject a) -> CWString -> Ptr (TQObject b) -> IO CBool

instance Qdcs ((String)) where
 disconnectSlot _qsig_obj (_qsig_nam)
  = withBoolResult $
    withObjectPtr _qsig_obj $ \cobj_sig ->
    withCWString _qsig_nam $ \cstr_sig ->
    qtc_disconnectSlot_s cobj_sig cstr_sig

foreign import ccall "qtc_disconnectSlot_s" qtc_disconnectSlot_s :: Ptr (TQObject a) -> CWString -> IO CBool

instance Qdcs (()) where
 disconnectSlot _qsig_obj ()
  = withBoolResult $
    withObjectPtr _qsig_obj $ \cobj_sig ->
    qtc_disconnectSlot cobj_sig

foreign import ccall "qtc_disconnectSlot" qtc_disconnectSlot :: Ptr (TQObject a) -> IO CBool

freeDynamicSlots :: QObject a -> IO ()
freeDynamicSlots _qobj
  = withObjectPtr _qobj $ \cobj_q ->
    qtc_freeDynamicSlots cobj_q

foreign import ccall "qtc_freeDynamicSlots" qtc_freeDynamicSlots :: Ptr (TQObject a) -> IO ()

class QqObject x where
 qObject :: x -> IO (QObject ())

instance QqObject (()) where
 qObject ()
  = withQObjectResult $
    qtc_QObjectSc

foreign import ccall "qtc_QObjectSc" qtc_QObjectSc :: IO (Ptr (TQObject ()))

instance QqObject ((QObject a)) where
 qObject _qobj
  = withQObjectResult $
    withObjectPtr _qobj $ \cobj_q ->
    qtc_QObjectSc1 cobj_q

foreign import ccall "qtc_QObjectSc1" qtc_QObjectSc1 :: Ptr (TQObject a) -> IO (Ptr (TQObject ()))

qObjectSc :: QObject a -> IO (QObject ())
qObjectSc _qobj
  = withQObjectResult $
    withObjectPtr _qobj $ \cobj_q ->
    qtc_QObject cobj_q

foreign import ccall "qtc_QObject" qtc_QObject :: Ptr (TQObject a) -> IO (Ptr (TQObject ()))

qObjectParent :: QObject a -> IO (QObject ())
qObjectParent _qobj
  = withQObjectResult $
    withObjectPtr _qobj $ \cobj_q -> qtc_QObject_parent cobj_q

foreign import ccall "qtc_QObject_parent" qtc_QObject_parent :: Ptr (TQObject a) -> IO (Ptr (TQObject ()))

qObjectParentSc :: QObject a -> IO (QObject ())
qObjectParentSc _qobj
  = withQObjectResult $
    withObjectPtr _qobj $ \cobj_q -> qtc_QObject_parentSc cobj_q

foreign import ccall "qtc_QObject_parentSc" qtc_QObject_parentSc :: Ptr (TQObject a) -> IO (Ptr (TQObject ()))

qObjectParentRef :: QObject a -> IO (QObject ())
qObjectParentRef _qobj
  = withObjectRefResult $
    withObjectPtr _qobj $ \cobj_q -> qtc_QObject_parentref cobj_q

foreign import ccall "qtc_QObject_parentref" qtc_QObject_parentref :: Ptr (TQObject a) -> IO (Ptr (TQObject ()))

inherits :: QObject a -> String -> IO (Bool)
inherits _qobj _cnam
  = withBoolResult $
    withObjectPtr _qobj $ \cobj_q ->
    withCWString _cnam $ \cstr_cnam ->
    qtc_QObject_inherits cobj_q cstr_cnam

foreign import ccall "qtc_QObject_inherits" qtc_QObject_inherits :: Ptr (TQObject a) -> CWString -> IO (CBool)

metaObject :: QObject a -> IO (QMetaObject ())
metaObject _qobj
  = withQMetaObjectResult $
    withObjectPtr _qobj $ \cobj_q ->
    qtc_QObject_metaObject cobj_q

foreign import ccall "qtc_QObject_metaObject" qtc_QObject_metaObject :: Ptr (TQObject a) -> IO (Ptr (TQMetaObject ()))

objectName :: QObject a -> IO (String)
objectName _qobj
  = withStringResult $
    withObjectPtr _qobj $ \cobj_q ->
    qtc_QObject_objectName cobj_q

foreign import ccall "qtc_QObject_objectName" qtc_QObject_objectName :: Ptr (TQObject a) -> IO (Ptr (TQString ()))

setObjectName :: QObject a -> String -> IO ()
setObjectName _qobj _onam
  = withObjectPtr _qobj $ \cobj_q ->
    withCWString _onam $ \cstr_onam ->
    qtc_QObject_setObjectName cobj_q cstr_onam

foreign import ccall "qtc_QObject_setObjectName" qtc_QObject_setObjectName :: Ptr (TQObject a) -> CWString -> IO ()

qObjectSetParent :: QObject a -> QObject b -> IO ()
qObjectSetParent _qobj _qprt
  = withObjectPtr _qobj $ \cobj_qobj ->
    withObjectPtr _qprt $ \cobj_qprt ->
    qtc_QObject_setParent cobj_qobj cobj_qprt

foreign import ccall "qtc_QObject_setParent" qtc_QObject_setParent :: Ptr (TQObject a) -> Ptr (TQObject b) -> IO ()

qObjectProperty :: QObject a -> String -> IO (QVariant ())
qObjectProperty _qobj _pnam
  = withQVariantResult $
    withObjectPtr _qobj $ \cobj_q ->
    withCWString _pnam $ \cstr_pnam ->
    qtc_QObject_property cobj_q cstr_pnam

foreign import ccall "qtc_QObject_property" qtc_QObject_property :: Ptr (TQObject a) -> CWString -> IO (Ptr (TQVariant ()))

qObjectSetProperty :: QObject a -> String -> QVariant () -> IO Bool
qObjectSetProperty _qobj _pnam _qvar
  = withBoolResult $
    withObjectPtr _qobj $ \cobj_q ->
    withCWString _pnam $ \cstr_pnam ->
    withObjectPtr _qvar $ \cvar_q ->
    qtc_QObject_setProperty cobj_q cstr_pnam cvar_q

foreign import ccall "qtc_QObject_setProperty" qtc_QObject_setProperty :: Ptr (TQObject a) -> CWString -> Ptr (TQVariant ()) -> IO CBool

blockSignals :: QObject a -> Bool -> IO Bool
blockSignals _qobj _qblk
  = withBoolResult $
    withObjectPtr _qobj $ \cobj_qobj ->
    qtc_QObject_blockSignals cobj_qobj (toCBool _qblk)

foreign import ccall "qtc_QObject_blockSignals" qtc_QObject_blockSignals :: Ptr (TQObject a) -> CBool -> IO CBool

signalsBlocked :: QObject a -> IO Bool
signalsBlocked _qobj
  = withBoolResult $
    withObjectPtr _qobj $ \cobj_qobj ->
    qtc_QObject_signalsBlocked cobj_qobj

foreign import ccall "qtc_QObject_signalsBlocked" qtc_QObject_signalsBlocked :: Ptr (TQObject a) -> IO CBool

installEventFilter :: QObject a -> QObject b -> IO ()
installEventFilter _qobj _qprt
  = withObjectPtr _qobj $ \cobj_qobj ->
    withObjectPtr _qprt $ \cobj_qprt ->
    qtc_QObject_installEventFilter cobj_qobj cobj_qprt

foreign import ccall "qtc_QObject_installEventFilter" qtc_QObject_installEventFilter :: Ptr (TQObject a) -> Ptr (TQObject b) -> IO ()

removeEventFilter :: QObject a -> QObject b -> IO ()
removeEventFilter _qobj _qprt
  = withObjectPtr _qobj $ \cobj_qobj ->
    withObjectPtr _qprt $ \cobj_qprt ->
    qtc_QObject_removeEventFilter cobj_qobj cobj_qprt

foreign import ccall "qtc_QObject_removeEventFilter" qtc_QObject_removeEventFilter :: Ptr (TQObject a) -> Ptr (TQObject b) -> IO ()

isWidgetType :: QObject a -> IO Bool
isWidgetType _qobj
  = withBoolResult $
    withObjectPtr _qobj $ \cobj_qobj ->
    qtc_QObject_isWidgetType cobj_qobj

foreign import ccall "qtc_QObject_isWidgetType" qtc_QObject_isWidgetType :: Ptr (TQObject a) -> IO CBool

killTimer :: QObject a -> Int -> IO ()
killTimer _qobj _qtim
  = withObjectPtr _qobj $ \cobj_qobj ->
    qtc_QObject_killTimer cobj_qobj (toCInt _qtim)

foreign import ccall "qtc_QObject_killTimer" qtc_QObject_killTimer :: Ptr (TQObject a) -> CInt -> IO ()

startTimer :: QObject a -> Int -> IO Int
startTimer _qobj _qtim
  = withIntResult $
    withObjectPtr _qobj $ \cobj_qobj ->
    qtc_QObject_startTimer cobj_qobj (toCInt _qtim)

foreign import ccall "qtc_QObject_startTimer" qtc_QObject_startTimer :: Ptr (TQObject a) -> CInt -> IO CInt

qSubClass :: IO (QObject a) -> IO (QObject b)
qSubClass pc
  = do
    tqp <- pc
    tqo <- qObjectSc tqp
    return (objectCast tqo)

qResource :: IO (QResource ())
qResource
  = withQResourceResult $
    qtc_QResource

foreign import ccall "qtc_QResource" qtc_QResource :: IO (Ptr (TQResource ()))

class QregisterResource x where
  registerResource :: x -> IO (Bool)

instance QregisterResource ((String)) where
 registerResource (_rnam)
  = qRs _rnam True

instance QregisterResource ((String, Bool)) where
 registerResource (_rnam, _rb)
  = qRs _rnam _rb

qRs :: String -> Bool -> IO (Bool)
qRs _rnam _rb
  = do
    rrnam <- grnam _rnam _rb
    withBoolResult $
      withCWString rrnam $ \cstr_rnam ->
      qtc_QResource_registerResource cstr_rnam

foreign import ccall "qtc_QResource_registerResource" qtc_QResource_registerResource :: CWString -> IO (CBool)

class QunregisterResource x where
  unregisterResource :: String -> x -> IO (Bool)

instance QunregisterResource (()) where
 unregisterResource _rnam ()
  = qURs _rnam True

instance QunregisterResource ((Bool)) where
 unregisterResource _rnam (_rb)
  = qURs _rnam _rb

qURs :: String -> Bool -> IO (Bool)
qURs _rnam _rb
  = do
    rrnam <- grnam _rnam _rb
    withBoolResult $
      withCWString rrnam $ \cstr_rnam ->
      qtc_QResource_unregisterResource cstr_rnam

foreign import ccall "qtc_QResource_unregisterResource" qtc_QResource_unregisterResource :: CWString -> IO (CBool)

grnam :: String -> Bool -> IO (String)
grnam _rnam _rb
  = if (_rb)
     then
      do
      apd <- withStringResult $ qtc_QCoreApplication_applicationDirPath
      return $ apd ++ "/" ++ _rnam
     else
      return _rnam

foreign import ccall "qtc_QCoreApplication_applicationDirPath" qtc_QCoreApplication_applicationDirPath :: IO (Ptr (TQString ()))

qregisterMetatype :: String -> IO (Int)
qregisterMetatype _qtyp
  = withIntResult $
    withCWString _qtyp $ \cstr_qtyp ->
    qtc_registerMetatype cstr_qtyp

foreign import ccall "qtc_registerMetatype" qtc_registerMetatype :: CWString -> IO (CInt)

qsrand :: Int -> IO ()
qsrand _seed
  = qtc_qsrand (toCInt _seed)

foreign import ccall "qtc_qsrand" qtc_qsrand :: CInt -> IO ()

qobject_cast :: String -> QObject a -> IO (Object ())
qobject_cast _otyp _qobj
  = do
    br <- withBoolResult $
          withCWString _otyp $ \cstr_otyp ->
          withObjectPtr _qobj $ \cobj_qobj ->
          qtc_qobject_cast cstr_otyp cobj_qobj
    if (br)
     then
      return $ objectCast _qobj
     else
      return objectNull

foreign import ccall "qtc_qobject_cast" qtc_qobject_cast :: CWString -> Ptr (TQObject a) -> IO (CBool)

qstyleoption_cast :: String -> QStyleOption a -> IO (Object ())
qstyleoption_cast _otyp _qobj
  = do
    br <- withBoolResult $
          withCWString _otyp $ \cstr_otyp ->
          withObjectPtr _qobj $ \cobj_qobj ->
          qtc_qstyleoption_cast cstr_otyp cobj_qobj
    if (br)
     then
      return $ objectCast _qobj
     else
      return objectNull

foreign import ccall "qtc_qstyleoption_cast" qtc_qstyleoption_cast :: CWString -> Ptr (TQStyleOption a) -> IO (CBool)

qObjectIsNull :: QObject a -> IO (Bool)
qObjectIsNull _qobj
  = withBoolResult $
    withObjectPtr _qobj $ \cobj_qobj ->
    qtc_QObject_isNull cobj_qobj

foreign import ccall "qtc_QObject_isNull" qtc_QObject_isNull :: Ptr (TQObject a) -> IO (CBool)

class QfindChild x where
  findChild :: QObject a -> x -> IO (QObject b)

instance QfindChild ((String)) where
 findChild pobj (cnam)
  = withQObjectResult $
    withObjectPtr pobj $ \cobj_pobj ->
    withCWString cnam $ \cstr_cnam ->
    withCWString "" $ \cstr_onam ->
    qtc_QObject_findChild cobj_pobj (toCInt 0) cstr_cnam cstr_onam

instance QfindChild ((String, String)) where
 findChild pobj (cnam, onam)
  = withQObjectResult $
    withObjectPtr pobj $ \cobj_pobj ->
    withCWString cnam $ \cstr_cnam ->
    withCWString onam $ \cstr_onam ->
    qtc_QObject_findChild cobj_pobj (toCInt 1) cstr_cnam cstr_onam

foreign import ccall "qtc_QObject_findChild" qtc_QObject_findChild :: Ptr (TQObject a) -> CInt -> CWString -> CWString -> IO (Ptr (TQObject b))

class QfindChildren x where
  findChildren :: QObject a -> x -> IO ([QObject ()])

instance QfindChildren ((String)) where
 findChildren pobj (cnam)
  = withQListQObjectResult $ \arr ->
    withObjectPtr pobj $ \cobj_pobj ->
    withCWString cnam $ \cstr_cnam ->
    withCWString "" $ \cstr_onam ->
    qtc_QObject_findChildren cobj_pobj (toCInt 0) cstr_cnam cstr_onam arr

instance QfindChildren ((String, String)) where
 findChildren pobj (cnam, onam)
  = withQListQObjectResult $ \arr ->
    withObjectPtr pobj $ \cobj_pobj ->
    withCWString cnam $ \cstr_cnam ->
    withCWString onam $ \cstr_onam ->
    qtc_QObject_findChildren cobj_pobj (toCInt 1) cstr_cnam cstr_onam arr

foreign import ccall "qtc_QObject_findChildren" qtc_QObject_findChildren :: Ptr (TQObject a) -> CInt -> CWString -> CWString -> Ptr (Ptr (TQObject ())) -> IO (CInt)

qObject_delete :: QObject a -> IO ()
qObject_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QObjectSc_delete cobj_x0

foreign import ccall "qtc_QObjectSc_delete" qtc_QObjectSc_delete :: Ptr (TQObject a) -> IO ()

qObjectChildren :: QObject a -> IO ([QObject ()])
qObjectChildren pobj
  = withQListQObjectResult $ \arr ->
    withObjectPtr pobj $ \cobj_pobj ->
    qtc_QObject_children cobj_pobj arr

foreign import ccall "qtc_QObject_children" qtc_QObject_children :: Ptr (TQObject a) -> Ptr (Ptr (TQObject ())) -> IO (CInt)

readRawData :: QDataStream a -> (Int) -> IO (String)
readRawData x0 (x1)
  = withCStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDataStream_readRawData cobj_x0 (toCInt x1)

foreign import ccall "qtc_QDataStream_readRawData" qtc_QDataStream_readRawData :: Ptr (TQDataStream a) -> CInt -> IO (Ptr (TQByteArray ()))

qPolygonL :: [Point] -> IO (QPolygon ())
qPolygonL x1 
  = withQPolygonResult $
    withCPointList x1 $ \cln_x1 cpl_x1 ->
    qtc_QPolygonList cln_x1 cpl_x1

foreign import ccall "qtc_QPolygonList" qtc_QPolygonList :: CInt -> Ptr CInt -> IO (Ptr (TQPolygon ()))

qPolygonFL :: [PointF] -> IO (QPolygonF ())
qPolygonFL x1 
  = withQPolygonFResult $
    withCPointFList x1 $ \cln_x1 cpl_x1 ->
    qtc_QPolygonFList cln_x1 cpl_x1

foreign import ccall "qtc_QPolygonFList" qtc_QPolygonFList :: CInt -> Ptr CDouble -> IO (Ptr (TQPolygonF ()))

qPointer :: QObject a -> IO (QObject ())
qPointer _qobj
  = withQObjectResult $
    withObjectPtr _qobj $ \cobj_q -> qtc_QPointer cobj_q

foreign import ccall "qtc_QPointer" qtc_QPointer :: Ptr (TQObject a) -> IO (Ptr (TQObject ()))

qPointer_data :: QObject a -> IO (QObject ())
qPointer_data _qobj
  = withObjectRefResult $
    withObjectPtr _qobj $ \cobj_q -> qtc_QPointer_data cobj_q

foreign import ccall "qtc_QPointer_data" qtc_QPointer_data :: Ptr (TQObject a) -> IO (Ptr (TQObject ()))

class Qqpoints a b | a -> b where
 qpoints :: a -> () -> b

instance Qqpoints (QPolygonF ()) (IO [PointF]) where
 qpoints x0 ()
  = withPointFListResult $ \cpl_xr ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPolygonF_qpoints cobj_x0 cpl_xr

foreign import ccall "qtc_QPolygonF_qpoints" qtc_QPolygonF_qpoints :: Ptr (TQPolygonF ()) -> Ptr CDouble -> IO CInt

instance Qqpoints (QPolygon ()) (IO [Point]) where
 qpoints x0 ()
  = withPointListResult $ \cpl_xr ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPolygon_qpoints cobj_x0 cpl_xr

foreign import ccall "qtc_QPolygon_qpoints" qtc_QPolygon_qpoints :: Ptr (TQPolygon ()) -> Ptr CInt -> IO CInt

setUrls :: QMimeData a -> [QUrl t1] -> IO ()
setUrls x0 x1
  = withObjectPtr x0 $ \cobj_x0 ->
    withQListObject x1 $ \cqlistlen_x1 cqlistobj_x1 ->
    qtc_QMimeData_setUrls cobj_x0 cqlistlen_x1 cqlistobj_x1
   
foreign import ccall "qtc_QMimeData_setUrls" qtc_QMimeData_setUrls :: Ptr (TQMimeData a) -> CInt -> Ptr (Ptr (TQUrl t1)) -> IO ()

qByteArray :: () -> IO (QByteArray ())
qByteArray ()
  = withQByteArrayResult $
    qtc_QByteArray
   
foreign import ccall "qtc_QByteArray" qtc_QByteArray :: IO (Ptr (TQByteArray ()))

qByteArray_isEmpty :: QByteArray () -> () -> IO Bool
qByteArray_isEmpty x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QByteArray_isEmpty cobj_x0
   
foreign import ccall "qtc_QByteArray_isEmpty" qtc_QByteArray_isEmpty :: Ptr (TQByteArray ()) -> IO CBool

