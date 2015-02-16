{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QAbstractSlider_h.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:15
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QAbstractSlider_h where

import Foreign.C.Types
import Qtc.Enums.Base
import Qtc.Enums.Gui.QPaintDevice
import Qtc.Enums.Core.Qt
import Qtc.Enums.Gui.QAbstractSlider

import Qtc.Classes.Base
import Qtc.Classes.Qccs_h
import Qtc.Classes.Core_h
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core
import Qtc.Classes.Gui_h
import Qtc.ClassTypes.Gui
import Foreign.Marshal.Array

instance QunSetUserMethod (QAbstractSlider ()) where
 unSetUserMethod qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QAbstractSlider_unSetUserMethod cobj_qobj (toCInt 0) (toCInt evid)

foreign import ccall "qtc_QAbstractSlider_unSetUserMethod" qtc_QAbstractSlider_unSetUserMethod :: Ptr (TQAbstractSlider a) -> CInt -> CInt -> IO (CBool)

instance QunSetUserMethod (QAbstractSliderSc a) where
 unSetUserMethod qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QAbstractSlider_unSetUserMethod cobj_qobj (toCInt 0) (toCInt evid)

instance QunSetUserMethodVariant (QAbstractSlider ()) where
 unSetUserMethodVariant qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QAbstractSlider_unSetUserMethod cobj_qobj (toCInt 1) (toCInt evid)

instance QunSetUserMethodVariant (QAbstractSliderSc a) where
 unSetUserMethodVariant qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QAbstractSlider_unSetUserMethod cobj_qobj (toCInt 1) (toCInt evid)

instance QunSetUserMethodVariantList (QAbstractSlider ()) where
 unSetUserMethodVariantList qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QAbstractSlider_unSetUserMethod cobj_qobj (toCInt 2) (toCInt evid)

instance QunSetUserMethodVariantList (QAbstractSliderSc a) where
 unSetUserMethodVariantList qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QAbstractSlider_unSetUserMethod cobj_qobj (toCInt 2) (toCInt evid)

instance QsetUserMethod (QAbstractSlider ()) (QAbstractSlider x0 -> IO ()) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethod_QAbstractSlider setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethod_QAbstractSlider_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QAbstractSlider_setUserMethod cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQAbstractSlider x0) -> IO ()
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

foreign import ccall "qtc_QAbstractSlider_setUserMethod" qtc_QAbstractSlider_setUserMethod :: Ptr (TQAbstractSlider a) -> CInt -> Ptr (Ptr (TQAbstractSlider x0) -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetUserMethod_QAbstractSlider :: (Ptr (TQAbstractSlider x0) -> IO ()) -> IO (FunPtr (Ptr (TQAbstractSlider x0) -> IO ()))

foreign import ccall "wrapper" wrapSetUserMethod_QAbstractSlider_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetUserMethod (QAbstractSliderSc a) (QAbstractSlider x0 -> IO ()) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethod_QAbstractSlider setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethod_QAbstractSlider_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QAbstractSlider_setUserMethod cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQAbstractSlider x0) -> IO ()
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

instance QsetUserMethod (QAbstractSlider ()) (QAbstractSlider x0 -> QVariant () -> IO (QVariant ())) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethodVariant_QAbstractSlider setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethodVariant_QAbstractSlider_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QAbstractSlider_setUserMethodVariant cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQAbstractSlider x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))
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

foreign import ccall "qtc_QAbstractSlider_setUserMethodVariant" qtc_QAbstractSlider_setUserMethodVariant :: Ptr (TQAbstractSlider a) -> CInt -> Ptr (Ptr (TQAbstractSlider x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetUserMethodVariant_QAbstractSlider :: (Ptr (TQAbstractSlider x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))) -> IO (FunPtr (Ptr (TQAbstractSlider x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))))

foreign import ccall "wrapper" wrapSetUserMethodVariant_QAbstractSlider_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetUserMethod (QAbstractSliderSc a) (QAbstractSlider x0 -> QVariant () -> IO (QVariant ())) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethodVariant_QAbstractSlider setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethodVariant_QAbstractSlider_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QAbstractSlider_setUserMethodVariant cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQAbstractSlider x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))
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

instance QunSetHandler (QAbstractSlider ()) where 
 unSetHandler qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withCWString evid $ \cstr_evid ->
    qtc_QAbstractSlider_unSetHandler cobj_qobj cstr_evid

foreign import ccall "qtc_QAbstractSlider_unSetHandler" qtc_QAbstractSlider_unSetHandler :: Ptr (TQAbstractSlider a) -> CWString -> IO (CBool)

instance QunSetHandler (QAbstractSliderSc a) where 
 unSetHandler qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withCWString evid $ \cstr_evid ->
    qtc_QAbstractSlider_unSetHandler cobj_qobj cstr_evid

instance QsetHandler (QAbstractSlider ()) (QAbstractSlider x0 -> QEvent t1 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractSlider1 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractSlider1_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractSlider_setHandler1 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractSlider x0) -> Ptr (TQEvent t1) -> IO ()
    setHandlerWrapper x0 x1
      = do x0obj <- qAbstractSliderFromPtr x0
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

foreign import ccall "qtc_QAbstractSlider_setHandler1" qtc_QAbstractSlider_setHandler1 :: Ptr (TQAbstractSlider a) -> CWString -> Ptr (Ptr (TQAbstractSlider x0) -> Ptr (TQEvent t1) -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QAbstractSlider1 :: (Ptr (TQAbstractSlider x0) -> Ptr (TQEvent t1) -> IO ()) -> IO (FunPtr (Ptr (TQAbstractSlider x0) -> Ptr (TQEvent t1) -> IO ()))

foreign import ccall "wrapper" wrapSetHandler_QAbstractSlider1_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QAbstractSliderSc a) (QAbstractSlider x0 -> QEvent t1 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractSlider1 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractSlider1_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractSlider_setHandler1 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractSlider x0) -> Ptr (TQEvent t1) -> IO ()
    setHandlerWrapper x0 x1
      = do x0obj <- qAbstractSliderFromPtr x0
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

instance QchangeEvent_h (QAbstractSlider ()) ((QEvent t1)) where
 changeEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSlider_changeEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractSlider_changeEvent" qtc_QAbstractSlider_changeEvent :: Ptr (TQAbstractSlider a) -> Ptr (TQEvent t1) -> IO ()

instance QchangeEvent_h (QAbstractSliderSc a) ((QEvent t1)) where
 changeEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSlider_changeEvent cobj_x0 cobj_x1

instance QsetHandler (QAbstractSlider ()) (QAbstractSlider x0 -> QEvent t1 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractSlider2 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractSlider2_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractSlider_setHandler2 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractSlider x0) -> Ptr (TQEvent t1) -> IO (CBool)
    setHandlerWrapper x0 x1
      = do x0obj <- qAbstractSliderFromPtr x0
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

foreign import ccall "qtc_QAbstractSlider_setHandler2" qtc_QAbstractSlider_setHandler2 :: Ptr (TQAbstractSlider a) -> CWString -> Ptr (Ptr (TQAbstractSlider x0) -> Ptr (TQEvent t1) -> IO (CBool)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QAbstractSlider2 :: (Ptr (TQAbstractSlider x0) -> Ptr (TQEvent t1) -> IO (CBool)) -> IO (FunPtr (Ptr (TQAbstractSlider x0) -> Ptr (TQEvent t1) -> IO (CBool)))

foreign import ccall "wrapper" wrapSetHandler_QAbstractSlider2_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QAbstractSliderSc a) (QAbstractSlider x0 -> QEvent t1 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractSlider2 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractSlider2_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractSlider_setHandler2 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractSlider x0) -> Ptr (TQEvent t1) -> IO (CBool)
    setHandlerWrapper x0 x1
      = do x0obj <- qAbstractSliderFromPtr x0
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

instance Qevent_h (QAbstractSlider ()) ((QEvent t1)) where
 event_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSlider_event cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractSlider_event" qtc_QAbstractSlider_event :: Ptr (TQAbstractSlider a) -> Ptr (TQEvent t1) -> IO CBool

instance Qevent_h (QAbstractSliderSc a) ((QEvent t1)) where
 event_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSlider_event cobj_x0 cobj_x1

instance QkeyPressEvent_h (QAbstractSlider ()) ((QKeyEvent t1)) where
 keyPressEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSlider_keyPressEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractSlider_keyPressEvent" qtc_QAbstractSlider_keyPressEvent :: Ptr (TQAbstractSlider a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyPressEvent_h (QAbstractSliderSc a) ((QKeyEvent t1)) where
 keyPressEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSlider_keyPressEvent cobj_x0 cobj_x1

instance QsetHandler (QAbstractSlider ()) (QAbstractSlider x0 -> SliderChange -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractSlider3 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractSlider3_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractSlider_setHandler3 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractSlider x0) -> CLong -> IO ()
    setHandlerWrapper x0 x1
      = do x0obj <- qAbstractSliderFromPtr x0
           let x1enum = qEnum_fromInt $ fromCLong x1
           if (objectIsNull x0obj)
            then return ()
            else _handler x0obj x1enum

    setHandlerWrapper_d :: Ptr fun -> Ptr () -> Ptr fun_d -> IO ()
    setHandlerWrapper_d funptr stptr funptr_d
      = do when (stptr/=ptrNull)
            (freeStablePtr (castPtrToStablePtr stptr))
           when (funptr/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr))
           when (funptr_d/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr_d))
           return ()

foreign import ccall "qtc_QAbstractSlider_setHandler3" qtc_QAbstractSlider_setHandler3 :: Ptr (TQAbstractSlider a) -> CWString -> Ptr (Ptr (TQAbstractSlider x0) -> CLong -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QAbstractSlider3 :: (Ptr (TQAbstractSlider x0) -> CLong -> IO ()) -> IO (FunPtr (Ptr (TQAbstractSlider x0) -> CLong -> IO ()))

foreign import ccall "wrapper" wrapSetHandler_QAbstractSlider3_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QAbstractSliderSc a) (QAbstractSlider x0 -> SliderChange -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractSlider3 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractSlider3_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractSlider_setHandler3 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractSlider x0) -> CLong -> IO ()
    setHandlerWrapper x0 x1
      = do x0obj <- qAbstractSliderFromPtr x0
           let x1enum = qEnum_fromInt $ fromCLong x1
           if (objectIsNull x0obj)
            then return ()
            else _handler x0obj x1enum

    setHandlerWrapper_d :: Ptr fun -> Ptr () -> Ptr fun_d -> IO ()
    setHandlerWrapper_d funptr stptr funptr_d
      = do when (stptr/=ptrNull)
            (freeStablePtr (castPtrToStablePtr stptr))
           when (funptr/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr))
           when (funptr_d/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr_d))
           return ()

instance QsliderChange_h (QAbstractSlider ()) ((SliderChange)) where
 sliderChange_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSlider_sliderChange cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QAbstractSlider_sliderChange" qtc_QAbstractSlider_sliderChange :: Ptr (TQAbstractSlider a) -> CLong -> IO ()

instance QsliderChange_h (QAbstractSliderSc a) ((SliderChange)) where
 sliderChange_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSlider_sliderChange cobj_x0 (toCLong $ qEnum_toInt x1)

instance QwheelEvent_h (QAbstractSlider ()) ((QWheelEvent t1)) where
 wheelEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSlider_wheelEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractSlider_wheelEvent" qtc_QAbstractSlider_wheelEvent :: Ptr (TQAbstractSlider a) -> Ptr (TQWheelEvent t1) -> IO ()

instance QwheelEvent_h (QAbstractSliderSc a) ((QWheelEvent t1)) where
 wheelEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSlider_wheelEvent cobj_x0 cobj_x1

instance QactionEvent_h (QAbstractSlider ()) ((QActionEvent t1)) where
 actionEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSlider_actionEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractSlider_actionEvent" qtc_QAbstractSlider_actionEvent :: Ptr (TQAbstractSlider a) -> Ptr (TQActionEvent t1) -> IO ()

instance QactionEvent_h (QAbstractSliderSc a) ((QActionEvent t1)) where
 actionEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSlider_actionEvent cobj_x0 cobj_x1

instance QcloseEvent_h (QAbstractSlider ()) ((QCloseEvent t1)) where
 closeEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSlider_closeEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractSlider_closeEvent" qtc_QAbstractSlider_closeEvent :: Ptr (TQAbstractSlider a) -> Ptr (TQCloseEvent t1) -> IO ()

instance QcloseEvent_h (QAbstractSliderSc a) ((QCloseEvent t1)) where
 closeEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSlider_closeEvent cobj_x0 cobj_x1

instance QcontextMenuEvent_h (QAbstractSlider ()) ((QContextMenuEvent t1)) where
 contextMenuEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSlider_contextMenuEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractSlider_contextMenuEvent" qtc_QAbstractSlider_contextMenuEvent :: Ptr (TQAbstractSlider a) -> Ptr (TQContextMenuEvent t1) -> IO ()

instance QcontextMenuEvent_h (QAbstractSliderSc a) ((QContextMenuEvent t1)) where
 contextMenuEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSlider_contextMenuEvent cobj_x0 cobj_x1

instance QsetHandler (QAbstractSlider ()) (QAbstractSlider x0 -> IO (Int)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractSlider4 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractSlider4_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractSlider_setHandler4 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractSlider x0) -> IO (CInt)
    setHandlerWrapper x0
      = do x0obj <- qAbstractSliderFromPtr x0
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

foreign import ccall "qtc_QAbstractSlider_setHandler4" qtc_QAbstractSlider_setHandler4 :: Ptr (TQAbstractSlider a) -> CWString -> Ptr (Ptr (TQAbstractSlider x0) -> IO (CInt)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QAbstractSlider4 :: (Ptr (TQAbstractSlider x0) -> IO (CInt)) -> IO (FunPtr (Ptr (TQAbstractSlider x0) -> IO (CInt)))

foreign import ccall "wrapper" wrapSetHandler_QAbstractSlider4_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QAbstractSliderSc a) (QAbstractSlider x0 -> IO (Int)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractSlider4 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractSlider4_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractSlider_setHandler4 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractSlider x0) -> IO (CInt)
    setHandlerWrapper x0
      = do x0obj <- qAbstractSliderFromPtr x0
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

instance QdevType_h (QAbstractSlider ()) (()) where
 devType_h x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSlider_devType cobj_x0

foreign import ccall "qtc_QAbstractSlider_devType" qtc_QAbstractSlider_devType :: Ptr (TQAbstractSlider a) -> IO CInt

instance QdevType_h (QAbstractSliderSc a) (()) where
 devType_h x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSlider_devType cobj_x0

instance QdragEnterEvent_h (QAbstractSlider ()) ((QDragEnterEvent t1)) where
 dragEnterEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSlider_dragEnterEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractSlider_dragEnterEvent" qtc_QAbstractSlider_dragEnterEvent :: Ptr (TQAbstractSlider a) -> Ptr (TQDragEnterEvent t1) -> IO ()

instance QdragEnterEvent_h (QAbstractSliderSc a) ((QDragEnterEvent t1)) where
 dragEnterEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSlider_dragEnterEvent cobj_x0 cobj_x1

instance QdragLeaveEvent_h (QAbstractSlider ()) ((QDragLeaveEvent t1)) where
 dragLeaveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSlider_dragLeaveEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractSlider_dragLeaveEvent" qtc_QAbstractSlider_dragLeaveEvent :: Ptr (TQAbstractSlider a) -> Ptr (TQDragLeaveEvent t1) -> IO ()

instance QdragLeaveEvent_h (QAbstractSliderSc a) ((QDragLeaveEvent t1)) where
 dragLeaveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSlider_dragLeaveEvent cobj_x0 cobj_x1

instance QdragMoveEvent_h (QAbstractSlider ()) ((QDragMoveEvent t1)) where
 dragMoveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSlider_dragMoveEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractSlider_dragMoveEvent" qtc_QAbstractSlider_dragMoveEvent :: Ptr (TQAbstractSlider a) -> Ptr (TQDragMoveEvent t1) -> IO ()

instance QdragMoveEvent_h (QAbstractSliderSc a) ((QDragMoveEvent t1)) where
 dragMoveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSlider_dragMoveEvent cobj_x0 cobj_x1

instance QdropEvent_h (QAbstractSlider ()) ((QDropEvent t1)) where
 dropEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSlider_dropEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractSlider_dropEvent" qtc_QAbstractSlider_dropEvent :: Ptr (TQAbstractSlider a) -> Ptr (TQDropEvent t1) -> IO ()

instance QdropEvent_h (QAbstractSliderSc a) ((QDropEvent t1)) where
 dropEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSlider_dropEvent cobj_x0 cobj_x1

instance QenterEvent_h (QAbstractSlider ()) ((QEvent t1)) where
 enterEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSlider_enterEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractSlider_enterEvent" qtc_QAbstractSlider_enterEvent :: Ptr (TQAbstractSlider a) -> Ptr (TQEvent t1) -> IO ()

instance QenterEvent_h (QAbstractSliderSc a) ((QEvent t1)) where
 enterEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSlider_enterEvent cobj_x0 cobj_x1

instance QfocusInEvent_h (QAbstractSlider ()) ((QFocusEvent t1)) where
 focusInEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSlider_focusInEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractSlider_focusInEvent" qtc_QAbstractSlider_focusInEvent :: Ptr (TQAbstractSlider a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusInEvent_h (QAbstractSliderSc a) ((QFocusEvent t1)) where
 focusInEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSlider_focusInEvent cobj_x0 cobj_x1

instance QfocusOutEvent_h (QAbstractSlider ()) ((QFocusEvent t1)) where
 focusOutEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSlider_focusOutEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractSlider_focusOutEvent" qtc_QAbstractSlider_focusOutEvent :: Ptr (TQAbstractSlider a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusOutEvent_h (QAbstractSliderSc a) ((QFocusEvent t1)) where
 focusOutEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSlider_focusOutEvent cobj_x0 cobj_x1

instance QsetHandler (QAbstractSlider ()) (QAbstractSlider x0 -> Int -> IO (Int)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractSlider5 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractSlider5_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractSlider_setHandler5 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractSlider x0) -> CInt -> IO (CInt)
    setHandlerWrapper x0 x1
      = do x0obj <- qAbstractSliderFromPtr x0
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

foreign import ccall "qtc_QAbstractSlider_setHandler5" qtc_QAbstractSlider_setHandler5 :: Ptr (TQAbstractSlider a) -> CWString -> Ptr (Ptr (TQAbstractSlider x0) -> CInt -> IO (CInt)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QAbstractSlider5 :: (Ptr (TQAbstractSlider x0) -> CInt -> IO (CInt)) -> IO (FunPtr (Ptr (TQAbstractSlider x0) -> CInt -> IO (CInt)))

foreign import ccall "wrapper" wrapSetHandler_QAbstractSlider5_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QAbstractSliderSc a) (QAbstractSlider x0 -> Int -> IO (Int)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractSlider5 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractSlider5_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractSlider_setHandler5 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractSlider x0) -> CInt -> IO (CInt)
    setHandlerWrapper x0 x1
      = do x0obj <- qAbstractSliderFromPtr x0
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

instance QheightForWidth_h (QAbstractSlider ()) ((Int)) where
 heightForWidth_h x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSlider_heightForWidth cobj_x0 (toCInt x1)

foreign import ccall "qtc_QAbstractSlider_heightForWidth" qtc_QAbstractSlider_heightForWidth :: Ptr (TQAbstractSlider a) -> CInt -> IO CInt

instance QheightForWidth_h (QAbstractSliderSc a) ((Int)) where
 heightForWidth_h x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSlider_heightForWidth cobj_x0 (toCInt x1)

instance QhideEvent_h (QAbstractSlider ()) ((QHideEvent t1)) where
 hideEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSlider_hideEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractSlider_hideEvent" qtc_QAbstractSlider_hideEvent :: Ptr (TQAbstractSlider a) -> Ptr (TQHideEvent t1) -> IO ()

instance QhideEvent_h (QAbstractSliderSc a) ((QHideEvent t1)) where
 hideEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSlider_hideEvent cobj_x0 cobj_x1

instance QsetHandler (QAbstractSlider ()) (QAbstractSlider x0 -> InputMethodQuery -> IO (QVariant t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractSlider6 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractSlider6_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractSlider_setHandler6 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractSlider x0) -> CLong -> IO (Ptr (TQVariant t0))
    setHandlerWrapper x0 x1
      = do x0obj <- qAbstractSliderFromPtr x0
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

foreign import ccall "qtc_QAbstractSlider_setHandler6" qtc_QAbstractSlider_setHandler6 :: Ptr (TQAbstractSlider a) -> CWString -> Ptr (Ptr (TQAbstractSlider x0) -> CLong -> IO (Ptr (TQVariant t0))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QAbstractSlider6 :: (Ptr (TQAbstractSlider x0) -> CLong -> IO (Ptr (TQVariant t0))) -> IO (FunPtr (Ptr (TQAbstractSlider x0) -> CLong -> IO (Ptr (TQVariant t0))))

foreign import ccall "wrapper" wrapSetHandler_QAbstractSlider6_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QAbstractSliderSc a) (QAbstractSlider x0 -> InputMethodQuery -> IO (QVariant t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractSlider6 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractSlider6_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractSlider_setHandler6 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractSlider x0) -> CLong -> IO (Ptr (TQVariant t0))
    setHandlerWrapper x0 x1
      = do x0obj <- qAbstractSliderFromPtr x0
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

instance QinputMethodQuery_h (QAbstractSlider ()) ((InputMethodQuery)) where
 inputMethodQuery_h x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSlider_inputMethodQuery cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QAbstractSlider_inputMethodQuery" qtc_QAbstractSlider_inputMethodQuery :: Ptr (TQAbstractSlider a) -> CLong -> IO (Ptr (TQVariant ()))

instance QinputMethodQuery_h (QAbstractSliderSc a) ((InputMethodQuery)) where
 inputMethodQuery_h x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSlider_inputMethodQuery cobj_x0 (toCLong $ qEnum_toInt x1)

instance QkeyReleaseEvent_h (QAbstractSlider ()) ((QKeyEvent t1)) where
 keyReleaseEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSlider_keyReleaseEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractSlider_keyReleaseEvent" qtc_QAbstractSlider_keyReleaseEvent :: Ptr (TQAbstractSlider a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyReleaseEvent_h (QAbstractSliderSc a) ((QKeyEvent t1)) where
 keyReleaseEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSlider_keyReleaseEvent cobj_x0 cobj_x1

instance QleaveEvent_h (QAbstractSlider ()) ((QEvent t1)) where
 leaveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSlider_leaveEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractSlider_leaveEvent" qtc_QAbstractSlider_leaveEvent :: Ptr (TQAbstractSlider a) -> Ptr (TQEvent t1) -> IO ()

instance QleaveEvent_h (QAbstractSliderSc a) ((QEvent t1)) where
 leaveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSlider_leaveEvent cobj_x0 cobj_x1

instance QsetHandler (QAbstractSlider ()) (QAbstractSlider x0 -> IO (QSize t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractSlider7 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractSlider7_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractSlider_setHandler7 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractSlider x0) -> IO (Ptr (TQSize t0))
    setHandlerWrapper x0
      = do x0obj <- qAbstractSliderFromPtr x0
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

foreign import ccall "qtc_QAbstractSlider_setHandler7" qtc_QAbstractSlider_setHandler7 :: Ptr (TQAbstractSlider a) -> CWString -> Ptr (Ptr (TQAbstractSlider x0) -> IO (Ptr (TQSize t0))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QAbstractSlider7 :: (Ptr (TQAbstractSlider x0) -> IO (Ptr (TQSize t0))) -> IO (FunPtr (Ptr (TQAbstractSlider x0) -> IO (Ptr (TQSize t0))))

foreign import ccall "wrapper" wrapSetHandler_QAbstractSlider7_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QAbstractSliderSc a) (QAbstractSlider x0 -> IO (QSize t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractSlider7 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractSlider7_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractSlider_setHandler7 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractSlider x0) -> IO (Ptr (TQSize t0))
    setHandlerWrapper x0
      = do x0obj <- qAbstractSliderFromPtr x0
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

instance QqminimumSizeHint_h (QAbstractSlider ()) (()) where
 qminimumSizeHint_h x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSlider_minimumSizeHint cobj_x0

foreign import ccall "qtc_QAbstractSlider_minimumSizeHint" qtc_QAbstractSlider_minimumSizeHint :: Ptr (TQAbstractSlider a) -> IO (Ptr (TQSize ()))

instance QqminimumSizeHint_h (QAbstractSliderSc a) (()) where
 qminimumSizeHint_h x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSlider_minimumSizeHint cobj_x0

instance QminimumSizeHint_h (QAbstractSlider ()) (()) where
 minimumSizeHint_h x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSlider_minimumSizeHint_qth cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QAbstractSlider_minimumSizeHint_qth" qtc_QAbstractSlider_minimumSizeHint_qth :: Ptr (TQAbstractSlider a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QminimumSizeHint_h (QAbstractSliderSc a) (()) where
 minimumSizeHint_h x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSlider_minimumSizeHint_qth cobj_x0 csize_ret_w csize_ret_h

instance QmouseDoubleClickEvent_h (QAbstractSlider ()) ((QMouseEvent t1)) where
 mouseDoubleClickEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSlider_mouseDoubleClickEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractSlider_mouseDoubleClickEvent" qtc_QAbstractSlider_mouseDoubleClickEvent :: Ptr (TQAbstractSlider a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseDoubleClickEvent_h (QAbstractSliderSc a) ((QMouseEvent t1)) where
 mouseDoubleClickEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSlider_mouseDoubleClickEvent cobj_x0 cobj_x1

instance QmouseMoveEvent_h (QAbstractSlider ()) ((QMouseEvent t1)) where
 mouseMoveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSlider_mouseMoveEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractSlider_mouseMoveEvent" qtc_QAbstractSlider_mouseMoveEvent :: Ptr (TQAbstractSlider a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseMoveEvent_h (QAbstractSliderSc a) ((QMouseEvent t1)) where
 mouseMoveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSlider_mouseMoveEvent cobj_x0 cobj_x1

instance QmousePressEvent_h (QAbstractSlider ()) ((QMouseEvent t1)) where
 mousePressEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSlider_mousePressEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractSlider_mousePressEvent" qtc_QAbstractSlider_mousePressEvent :: Ptr (TQAbstractSlider a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmousePressEvent_h (QAbstractSliderSc a) ((QMouseEvent t1)) where
 mousePressEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSlider_mousePressEvent cobj_x0 cobj_x1

instance QmouseReleaseEvent_h (QAbstractSlider ()) ((QMouseEvent t1)) where
 mouseReleaseEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSlider_mouseReleaseEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractSlider_mouseReleaseEvent" qtc_QAbstractSlider_mouseReleaseEvent :: Ptr (TQAbstractSlider a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseReleaseEvent_h (QAbstractSliderSc a) ((QMouseEvent t1)) where
 mouseReleaseEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSlider_mouseReleaseEvent cobj_x0 cobj_x1

instance QmoveEvent_h (QAbstractSlider ()) ((QMoveEvent t1)) where
 moveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSlider_moveEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractSlider_moveEvent" qtc_QAbstractSlider_moveEvent :: Ptr (TQAbstractSlider a) -> Ptr (TQMoveEvent t1) -> IO ()

instance QmoveEvent_h (QAbstractSliderSc a) ((QMoveEvent t1)) where
 moveEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSlider_moveEvent cobj_x0 cobj_x1

instance QsetHandler (QAbstractSlider ()) (QAbstractSlider x0 -> IO (QPaintEngine t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractSlider8 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractSlider8_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractSlider_setHandler8 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractSlider x0) -> IO (Ptr (TQPaintEngine t0))
    setHandlerWrapper x0
      = do x0obj <- qAbstractSliderFromPtr x0
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

foreign import ccall "qtc_QAbstractSlider_setHandler8" qtc_QAbstractSlider_setHandler8 :: Ptr (TQAbstractSlider a) -> CWString -> Ptr (Ptr (TQAbstractSlider x0) -> IO (Ptr (TQPaintEngine t0))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QAbstractSlider8 :: (Ptr (TQAbstractSlider x0) -> IO (Ptr (TQPaintEngine t0))) -> IO (FunPtr (Ptr (TQAbstractSlider x0) -> IO (Ptr (TQPaintEngine t0))))

foreign import ccall "wrapper" wrapSetHandler_QAbstractSlider8_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QAbstractSliderSc a) (QAbstractSlider x0 -> IO (QPaintEngine t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractSlider8 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractSlider8_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractSlider_setHandler8 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractSlider x0) -> IO (Ptr (TQPaintEngine t0))
    setHandlerWrapper x0
      = do x0obj <- qAbstractSliderFromPtr x0
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

instance QpaintEngine_h (QAbstractSlider ()) (()) where
 paintEngine_h x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSlider_paintEngine cobj_x0

foreign import ccall "qtc_QAbstractSlider_paintEngine" qtc_QAbstractSlider_paintEngine :: Ptr (TQAbstractSlider a) -> IO (Ptr (TQPaintEngine ()))

instance QpaintEngine_h (QAbstractSliderSc a) (()) where
 paintEngine_h x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSlider_paintEngine cobj_x0

instance QpaintEvent_h (QAbstractSlider ()) ((QPaintEvent t1)) where
 paintEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSlider_paintEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractSlider_paintEvent" qtc_QAbstractSlider_paintEvent :: Ptr (TQAbstractSlider a) -> Ptr (TQPaintEvent t1) -> IO ()

instance QpaintEvent_h (QAbstractSliderSc a) ((QPaintEvent t1)) where
 paintEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSlider_paintEvent cobj_x0 cobj_x1

instance QresizeEvent_h (QAbstractSlider ()) ((QResizeEvent t1)) where
 resizeEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSlider_resizeEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractSlider_resizeEvent" qtc_QAbstractSlider_resizeEvent :: Ptr (TQAbstractSlider a) -> Ptr (TQResizeEvent t1) -> IO ()

instance QresizeEvent_h (QAbstractSliderSc a) ((QResizeEvent t1)) where
 resizeEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSlider_resizeEvent cobj_x0 cobj_x1

instance QsetHandler (QAbstractSlider ()) (QAbstractSlider x0 -> Bool -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractSlider9 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractSlider9_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractSlider_setHandler9 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractSlider x0) -> CBool -> IO ()
    setHandlerWrapper x0 x1
      = do x0obj <- qAbstractSliderFromPtr x0
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

foreign import ccall "qtc_QAbstractSlider_setHandler9" qtc_QAbstractSlider_setHandler9 :: Ptr (TQAbstractSlider a) -> CWString -> Ptr (Ptr (TQAbstractSlider x0) -> CBool -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QAbstractSlider9 :: (Ptr (TQAbstractSlider x0) -> CBool -> IO ()) -> IO (FunPtr (Ptr (TQAbstractSlider x0) -> CBool -> IO ()))

foreign import ccall "wrapper" wrapSetHandler_QAbstractSlider9_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QAbstractSliderSc a) (QAbstractSlider x0 -> Bool -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractSlider9 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractSlider9_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractSlider_setHandler9 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractSlider x0) -> CBool -> IO ()
    setHandlerWrapper x0 x1
      = do x0obj <- qAbstractSliderFromPtr x0
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

instance QsetVisible_h (QAbstractSlider ()) ((Bool)) where
 setVisible_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSlider_setVisible cobj_x0 (toCBool x1)

foreign import ccall "qtc_QAbstractSlider_setVisible" qtc_QAbstractSlider_setVisible :: Ptr (TQAbstractSlider a) -> CBool -> IO ()

instance QsetVisible_h (QAbstractSliderSc a) ((Bool)) where
 setVisible_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSlider_setVisible cobj_x0 (toCBool x1)

instance QshowEvent_h (QAbstractSlider ()) ((QShowEvent t1)) where
 showEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSlider_showEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractSlider_showEvent" qtc_QAbstractSlider_showEvent :: Ptr (TQAbstractSlider a) -> Ptr (TQShowEvent t1) -> IO ()

instance QshowEvent_h (QAbstractSliderSc a) ((QShowEvent t1)) where
 showEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSlider_showEvent cobj_x0 cobj_x1

instance QqsizeHint_h (QAbstractSlider ()) (()) where
 qsizeHint_h x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSlider_sizeHint cobj_x0

foreign import ccall "qtc_QAbstractSlider_sizeHint" qtc_QAbstractSlider_sizeHint :: Ptr (TQAbstractSlider a) -> IO (Ptr (TQSize ()))

instance QqsizeHint_h (QAbstractSliderSc a) (()) where
 qsizeHint_h x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSlider_sizeHint cobj_x0

instance QsizeHint_h (QAbstractSlider ()) (()) where
 sizeHint_h x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSlider_sizeHint_qth cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QAbstractSlider_sizeHint_qth" qtc_QAbstractSlider_sizeHint_qth :: Ptr (TQAbstractSlider a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QsizeHint_h (QAbstractSliderSc a) (()) where
 sizeHint_h x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSlider_sizeHint_qth cobj_x0 csize_ret_w csize_ret_h

instance QtabletEvent_h (QAbstractSlider ()) ((QTabletEvent t1)) where
 tabletEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSlider_tabletEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractSlider_tabletEvent" qtc_QAbstractSlider_tabletEvent :: Ptr (TQAbstractSlider a) -> Ptr (TQTabletEvent t1) -> IO ()

instance QtabletEvent_h (QAbstractSliderSc a) ((QTabletEvent t1)) where
 tabletEvent_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSlider_tabletEvent cobj_x0 cobj_x1

instance QsetHandler (QAbstractSlider ()) (QAbstractSlider x0 -> QObject t1 -> QEvent t2 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractSlider10 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractSlider10_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractSlider_setHandler10 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractSlider x0) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO (CBool)
    setHandlerWrapper x0 x1 x2
      = do x0obj <- qAbstractSliderFromPtr x0
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

foreign import ccall "qtc_QAbstractSlider_setHandler10" qtc_QAbstractSlider_setHandler10 :: Ptr (TQAbstractSlider a) -> CWString -> Ptr (Ptr (TQAbstractSlider x0) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO (CBool)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QAbstractSlider10 :: (Ptr (TQAbstractSlider x0) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO (CBool)) -> IO (FunPtr (Ptr (TQAbstractSlider x0) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO (CBool)))

foreign import ccall "wrapper" wrapSetHandler_QAbstractSlider10_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QAbstractSliderSc a) (QAbstractSlider x0 -> QObject t1 -> QEvent t2 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QAbstractSlider10 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QAbstractSlider10_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QAbstractSlider_setHandler10 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQAbstractSlider x0) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO (CBool)
    setHandlerWrapper x0 x1 x2
      = do x0obj <- qAbstractSliderFromPtr x0
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

instance QeventFilter_h (QAbstractSlider ()) ((QObject t1, QEvent t2)) where
 eventFilter_h x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QAbstractSlider_eventFilter cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QAbstractSlider_eventFilter" qtc_QAbstractSlider_eventFilter :: Ptr (TQAbstractSlider a) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO CBool

instance QeventFilter_h (QAbstractSliderSc a) ((QObject t1, QEvent t2)) where
 eventFilter_h x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QAbstractSlider_eventFilter cobj_x0 cobj_x1 cobj_x2

