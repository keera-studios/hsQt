{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QWindowsStyle_h.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:24
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QWindowsStyle_h where

import Foreign.C.Types
import Qtc.Enums.Base
import Qtc.Enums.Gui.QPalette
import Qtc.Enums.Core.Qt
import Qtc.Enums.Gui.QIcon
import Qtc.Enums.Gui.QStyle
import Qtc.Enums.Gui.QSizePolicy

import Qtc.Classes.Base
import Qtc.Classes.Qccs_h
import Qtc.Classes.Core_h
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core
import Qtc.Classes.Gui_h
import Qtc.ClassTypes.Gui
import Foreign.Marshal.Array

instance QunSetUserMethod (QWindowsStyle ()) where
 unSetUserMethod qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QWindowsStyle_unSetUserMethod cobj_qobj (toCInt 0) (toCInt evid)

foreign import ccall "qtc_QWindowsStyle_unSetUserMethod" qtc_QWindowsStyle_unSetUserMethod :: Ptr (TQWindowsStyle a) -> CInt -> CInt -> IO (CBool)

instance QunSetUserMethod (QWindowsStyleSc a) where
 unSetUserMethod qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QWindowsStyle_unSetUserMethod cobj_qobj (toCInt 0) (toCInt evid)

instance QunSetUserMethodVariant (QWindowsStyle ()) where
 unSetUserMethodVariant qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QWindowsStyle_unSetUserMethod cobj_qobj (toCInt 1) (toCInt evid)

instance QunSetUserMethodVariant (QWindowsStyleSc a) where
 unSetUserMethodVariant qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QWindowsStyle_unSetUserMethod cobj_qobj (toCInt 1) (toCInt evid)

instance QunSetUserMethodVariantList (QWindowsStyle ()) where
 unSetUserMethodVariantList qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QWindowsStyle_unSetUserMethod cobj_qobj (toCInt 2) (toCInt evid)

instance QunSetUserMethodVariantList (QWindowsStyleSc a) where
 unSetUserMethodVariantList qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QWindowsStyle_unSetUserMethod cobj_qobj (toCInt 2) (toCInt evid)

instance QsetUserMethod (QWindowsStyle ()) (QWindowsStyle x0 -> IO ()) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethod_QWindowsStyle setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethod_QWindowsStyle_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QWindowsStyle_setUserMethod cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQWindowsStyle x0) -> IO ()
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

foreign import ccall "qtc_QWindowsStyle_setUserMethod" qtc_QWindowsStyle_setUserMethod :: Ptr (TQWindowsStyle a) -> CInt -> Ptr (Ptr (TQWindowsStyle x0) -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetUserMethod_QWindowsStyle :: (Ptr (TQWindowsStyle x0) -> IO ()) -> IO (FunPtr (Ptr (TQWindowsStyle x0) -> IO ()))

foreign import ccall "wrapper" wrapSetUserMethod_QWindowsStyle_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetUserMethod (QWindowsStyleSc a) (QWindowsStyle x0 -> IO ()) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethod_QWindowsStyle setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethod_QWindowsStyle_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QWindowsStyle_setUserMethod cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQWindowsStyle x0) -> IO ()
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

instance QsetUserMethod (QWindowsStyle ()) (QWindowsStyle x0 -> QVariant () -> IO (QVariant ())) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethodVariant_QWindowsStyle setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethodVariant_QWindowsStyle_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QWindowsStyle_setUserMethodVariant cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQWindowsStyle x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))
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

foreign import ccall "qtc_QWindowsStyle_setUserMethodVariant" qtc_QWindowsStyle_setUserMethodVariant :: Ptr (TQWindowsStyle a) -> CInt -> Ptr (Ptr (TQWindowsStyle x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetUserMethodVariant_QWindowsStyle :: (Ptr (TQWindowsStyle x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))) -> IO (FunPtr (Ptr (TQWindowsStyle x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))))

foreign import ccall "wrapper" wrapSetUserMethodVariant_QWindowsStyle_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetUserMethod (QWindowsStyleSc a) (QWindowsStyle x0 -> QVariant () -> IO (QVariant ())) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethodVariant_QWindowsStyle setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethodVariant_QWindowsStyle_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QWindowsStyle_setUserMethodVariant cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQWindowsStyle x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))
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

instance QunSetHandler (QWindowsStyle ()) where 
 unSetHandler qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withCWString evid $ \cstr_evid ->
    qtc_QWindowsStyle_unSetHandler cobj_qobj cstr_evid

foreign import ccall "qtc_QWindowsStyle_unSetHandler" qtc_QWindowsStyle_unSetHandler :: Ptr (TQWindowsStyle a) -> CWString -> IO (CBool)

instance QunSetHandler (QWindowsStyleSc a) where 
 unSetHandler qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withCWString evid $ \cstr_evid ->
    qtc_QWindowsStyle_unSetHandler cobj_qobj cstr_evid

instance QsetHandler (QWindowsStyle ()) (QWindowsStyle x0 -> ComplexControl -> QStyleOption t2 -> QPainter t3 -> QObject t4 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QWindowsStyle1 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QWindowsStyle1_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QWindowsStyle_setHandler1 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQWindowsStyle x0) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQPainter t3) -> Ptr (TQObject t4) -> IO ()
    setHandlerWrapper x0 x1 x2 x3 x4
      = do x0obj <- qWindowsStyleFromPtr x0
           let x1enum = qEnum_fromInt $ fromCLong x1
           x2obj <- objectFromPtr_nf x2
           x3obj <- objectFromPtr_nf x3
           x4obj <- qObjectFromPtr x4
           if (objectIsNull x0obj)
            then return ()
            else _handler x0obj x1enum x2obj x3obj x4obj

    setHandlerWrapper_d :: Ptr fun -> Ptr () -> Ptr fun_d -> IO ()
    setHandlerWrapper_d funptr stptr funptr_d
      = do when (stptr/=ptrNull)
            (freeStablePtr (castPtrToStablePtr stptr))
           when (funptr/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr))
           when (funptr_d/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr_d))
           return ()

foreign import ccall "qtc_QWindowsStyle_setHandler1" qtc_QWindowsStyle_setHandler1 :: Ptr (TQWindowsStyle a) -> CWString -> Ptr (Ptr (TQWindowsStyle x0) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQPainter t3) -> Ptr (TQObject t4) -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QWindowsStyle1 :: (Ptr (TQWindowsStyle x0) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQPainter t3) -> Ptr (TQObject t4) -> IO ()) -> IO (FunPtr (Ptr (TQWindowsStyle x0) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQPainter t3) -> Ptr (TQObject t4) -> IO ()))

foreign import ccall "wrapper" wrapSetHandler_QWindowsStyle1_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QWindowsStyleSc a) (QWindowsStyle x0 -> ComplexControl -> QStyleOption t2 -> QPainter t3 -> QObject t4 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QWindowsStyle1 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QWindowsStyle1_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QWindowsStyle_setHandler1 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQWindowsStyle x0) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQPainter t3) -> Ptr (TQObject t4) -> IO ()
    setHandlerWrapper x0 x1 x2 x3 x4
      = do x0obj <- qWindowsStyleFromPtr x0
           let x1enum = qEnum_fromInt $ fromCLong x1
           x2obj <- objectFromPtr_nf x2
           x3obj <- objectFromPtr_nf x3
           x4obj <- qObjectFromPtr x4
           if (objectIsNull x0obj)
            then return ()
            else _handler x0obj x1enum x2obj x3obj x4obj

    setHandlerWrapper_d :: Ptr fun -> Ptr () -> Ptr fun_d -> IO ()
    setHandlerWrapper_d funptr stptr funptr_d
      = do when (stptr/=ptrNull)
            (freeStablePtr (castPtrToStablePtr stptr))
           when (funptr/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr))
           when (funptr_d/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr_d))
           return ()

instance QdrawComplexControl_h (QWindowsStyle ()) ((ComplexControl, QStyleOptionComplex t2, QPainter t3, QWidget t4)) where
 drawComplexControl_h x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    withObjectPtr x4 $ \cobj_x4 ->
    qtc_QWindowsStyle_drawComplexControl cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 cobj_x3 cobj_x4

foreign import ccall "qtc_QWindowsStyle_drawComplexControl" qtc_QWindowsStyle_drawComplexControl :: Ptr (TQWindowsStyle a) -> CLong -> Ptr (TQStyleOptionComplex t2) -> Ptr (TQPainter t3) -> Ptr (TQWidget t4) -> IO ()

instance QdrawComplexControl_h (QWindowsStyleSc a) ((ComplexControl, QStyleOptionComplex t2, QPainter t3, QWidget t4)) where
 drawComplexControl_h x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    withObjectPtr x4 $ \cobj_x4 ->
    qtc_QWindowsStyle_drawComplexControl cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 cobj_x3 cobj_x4

instance QsetHandler (QWindowsStyle ()) (QWindowsStyle x0 -> ControlElement -> QStyleOption t2 -> QPainter t3 -> QObject t4 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QWindowsStyle2 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QWindowsStyle2_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QWindowsStyle_setHandler2 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQWindowsStyle x0) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQPainter t3) -> Ptr (TQObject t4) -> IO ()
    setHandlerWrapper x0 x1 x2 x3 x4
      = do x0obj <- qWindowsStyleFromPtr x0
           let x1enum = qEnum_fromInt $ fromCLong x1
           x2obj <- objectFromPtr_nf x2
           x3obj <- objectFromPtr_nf x3
           x4obj <- qObjectFromPtr x4
           if (objectIsNull x0obj)
            then return ()
            else _handler x0obj x1enum x2obj x3obj x4obj

    setHandlerWrapper_d :: Ptr fun -> Ptr () -> Ptr fun_d -> IO ()
    setHandlerWrapper_d funptr stptr funptr_d
      = do when (stptr/=ptrNull)
            (freeStablePtr (castPtrToStablePtr stptr))
           when (funptr/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr))
           when (funptr_d/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr_d))
           return ()

foreign import ccall "qtc_QWindowsStyle_setHandler2" qtc_QWindowsStyle_setHandler2 :: Ptr (TQWindowsStyle a) -> CWString -> Ptr (Ptr (TQWindowsStyle x0) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQPainter t3) -> Ptr (TQObject t4) -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QWindowsStyle2 :: (Ptr (TQWindowsStyle x0) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQPainter t3) -> Ptr (TQObject t4) -> IO ()) -> IO (FunPtr (Ptr (TQWindowsStyle x0) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQPainter t3) -> Ptr (TQObject t4) -> IO ()))

foreign import ccall "wrapper" wrapSetHandler_QWindowsStyle2_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QWindowsStyleSc a) (QWindowsStyle x0 -> ControlElement -> QStyleOption t2 -> QPainter t3 -> QObject t4 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QWindowsStyle2 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QWindowsStyle2_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QWindowsStyle_setHandler2 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQWindowsStyle x0) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQPainter t3) -> Ptr (TQObject t4) -> IO ()
    setHandlerWrapper x0 x1 x2 x3 x4
      = do x0obj <- qWindowsStyleFromPtr x0
           let x1enum = qEnum_fromInt $ fromCLong x1
           x2obj <- objectFromPtr_nf x2
           x3obj <- objectFromPtr_nf x3
           x4obj <- qObjectFromPtr x4
           if (objectIsNull x0obj)
            then return ()
            else _handler x0obj x1enum x2obj x3obj x4obj

    setHandlerWrapper_d :: Ptr fun -> Ptr () -> Ptr fun_d -> IO ()
    setHandlerWrapper_d funptr stptr funptr_d
      = do when (stptr/=ptrNull)
            (freeStablePtr (castPtrToStablePtr stptr))
           when (funptr/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr))
           when (funptr_d/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr_d))
           return ()

instance QdrawControl_h (QWindowsStyle ()) ((ControlElement, QStyleOption t2, QPainter t3, QWidget t4)) where
 drawControl_h x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    withObjectPtr x4 $ \cobj_x4 ->
    qtc_QWindowsStyle_drawControl cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 cobj_x3 cobj_x4

foreign import ccall "qtc_QWindowsStyle_drawControl" qtc_QWindowsStyle_drawControl :: Ptr (TQWindowsStyle a) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQPainter t3) -> Ptr (TQWidget t4) -> IO ()

instance QdrawControl_h (QWindowsStyleSc a) ((ControlElement, QStyleOption t2, QPainter t3, QWidget t4)) where
 drawControl_h x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    withObjectPtr x4 $ \cobj_x4 ->
    qtc_QWindowsStyle_drawControl cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 cobj_x3 cobj_x4

instance QsetHandler (QWindowsStyle ()) (QWindowsStyle x0 -> PrimitiveElement -> QStyleOption t2 -> QPainter t3 -> QObject t4 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QWindowsStyle3 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QWindowsStyle3_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QWindowsStyle_setHandler3 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQWindowsStyle x0) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQPainter t3) -> Ptr (TQObject t4) -> IO ()
    setHandlerWrapper x0 x1 x2 x3 x4
      = do x0obj <- qWindowsStyleFromPtr x0
           let x1enum = qEnum_fromInt $ fromCLong x1
           x2obj <- objectFromPtr_nf x2
           x3obj <- objectFromPtr_nf x3
           x4obj <- qObjectFromPtr x4
           if (objectIsNull x0obj)
            then return ()
            else _handler x0obj x1enum x2obj x3obj x4obj

    setHandlerWrapper_d :: Ptr fun -> Ptr () -> Ptr fun_d -> IO ()
    setHandlerWrapper_d funptr stptr funptr_d
      = do when (stptr/=ptrNull)
            (freeStablePtr (castPtrToStablePtr stptr))
           when (funptr/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr))
           when (funptr_d/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr_d))
           return ()

foreign import ccall "qtc_QWindowsStyle_setHandler3" qtc_QWindowsStyle_setHandler3 :: Ptr (TQWindowsStyle a) -> CWString -> Ptr (Ptr (TQWindowsStyle x0) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQPainter t3) -> Ptr (TQObject t4) -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QWindowsStyle3 :: (Ptr (TQWindowsStyle x0) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQPainter t3) -> Ptr (TQObject t4) -> IO ()) -> IO (FunPtr (Ptr (TQWindowsStyle x0) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQPainter t3) -> Ptr (TQObject t4) -> IO ()))

foreign import ccall "wrapper" wrapSetHandler_QWindowsStyle3_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QWindowsStyleSc a) (QWindowsStyle x0 -> PrimitiveElement -> QStyleOption t2 -> QPainter t3 -> QObject t4 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QWindowsStyle3 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QWindowsStyle3_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QWindowsStyle_setHandler3 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQWindowsStyle x0) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQPainter t3) -> Ptr (TQObject t4) -> IO ()
    setHandlerWrapper x0 x1 x2 x3 x4
      = do x0obj <- qWindowsStyleFromPtr x0
           let x1enum = qEnum_fromInt $ fromCLong x1
           x2obj <- objectFromPtr_nf x2
           x3obj <- objectFromPtr_nf x3
           x4obj <- qObjectFromPtr x4
           if (objectIsNull x0obj)
            then return ()
            else _handler x0obj x1enum x2obj x3obj x4obj

    setHandlerWrapper_d :: Ptr fun -> Ptr () -> Ptr fun_d -> IO ()
    setHandlerWrapper_d funptr stptr funptr_d
      = do when (stptr/=ptrNull)
            (freeStablePtr (castPtrToStablePtr stptr))
           when (funptr/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr))
           when (funptr_d/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr_d))
           return ()

instance QdrawPrimitive_h (QWindowsStyle ()) ((PrimitiveElement, QStyleOption t2, QPainter t3, QWidget t4)) where
 drawPrimitive_h x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    withObjectPtr x4 $ \cobj_x4 ->
    qtc_QWindowsStyle_drawPrimitive cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 cobj_x3 cobj_x4

foreign import ccall "qtc_QWindowsStyle_drawPrimitive" qtc_QWindowsStyle_drawPrimitive :: Ptr (TQWindowsStyle a) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQPainter t3) -> Ptr (TQWidget t4) -> IO ()

instance QdrawPrimitive_h (QWindowsStyleSc a) ((PrimitiveElement, QStyleOption t2, QPainter t3, QWidget t4)) where
 drawPrimitive_h x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    withObjectPtr x4 $ \cobj_x4 ->
    qtc_QWindowsStyle_drawPrimitive cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 cobj_x3 cobj_x4

instance QsetHandler (QWindowsStyle ()) (QWindowsStyle x0 -> QIconMode -> QPaintDevice t2 -> QStyleOption t3 -> IO (QPaintDevice t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QWindowsStyle4 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QWindowsStyle4_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QWindowsStyle_setHandler4 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQWindowsStyle x0) -> CLong -> Ptr (TQPaintDevice t2) -> Ptr (TQStyleOption t3) -> IO (Ptr (TQPaintDevice t0))
    setHandlerWrapper x0 x1 x2 x3
      = do x0obj <- qWindowsStyleFromPtr x0
           let x1enum = qEnum_fromInt $ fromCLong x1
           x2obj <- objectFromPtr_nf x2
           x3obj <- objectFromPtr_nf x3
           let rv =
                if (objectIsNull x0obj)
                 then return $ objectCast x0obj
                 else _handler x0obj x1enum x2obj x3obj
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

foreign import ccall "qtc_QWindowsStyle_setHandler4" qtc_QWindowsStyle_setHandler4 :: Ptr (TQWindowsStyle a) -> CWString -> Ptr (Ptr (TQWindowsStyle x0) -> CLong -> Ptr (TQPaintDevice t2) -> Ptr (TQStyleOption t3) -> IO (Ptr (TQPaintDevice t0))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QWindowsStyle4 :: (Ptr (TQWindowsStyle x0) -> CLong -> Ptr (TQPaintDevice t2) -> Ptr (TQStyleOption t3) -> IO (Ptr (TQPaintDevice t0))) -> IO (FunPtr (Ptr (TQWindowsStyle x0) -> CLong -> Ptr (TQPaintDevice t2) -> Ptr (TQStyleOption t3) -> IO (Ptr (TQPaintDevice t0))))

foreign import ccall "wrapper" wrapSetHandler_QWindowsStyle4_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QWindowsStyleSc a) (QWindowsStyle x0 -> QIconMode -> QPaintDevice t2 -> QStyleOption t3 -> IO (QPaintDevice t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QWindowsStyle4 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QWindowsStyle4_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QWindowsStyle_setHandler4 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQWindowsStyle x0) -> CLong -> Ptr (TQPaintDevice t2) -> Ptr (TQStyleOption t3) -> IO (Ptr (TQPaintDevice t0))
    setHandlerWrapper x0 x1 x2 x3
      = do x0obj <- qWindowsStyleFromPtr x0
           let x1enum = qEnum_fromInt $ fromCLong x1
           x2obj <- objectFromPtr_nf x2
           x3obj <- objectFromPtr_nf x3
           let rv =
                if (objectIsNull x0obj)
                 then return $ objectCast x0obj
                 else _handler x0obj x1enum x2obj x3obj
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

instance QgeneratedIconPixmap_h (QWindowsStyle ()) ((QIconMode, QPixmap t2, QStyleOption t3)) where
 generatedIconPixmap_h x0 (x1, x2, x3)
  = withQPixmapResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QWindowsStyle_generatedIconPixmap cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 cobj_x3

foreign import ccall "qtc_QWindowsStyle_generatedIconPixmap" qtc_QWindowsStyle_generatedIconPixmap :: Ptr (TQWindowsStyle a) -> CLong -> Ptr (TQPixmap t2) -> Ptr (TQStyleOption t3) -> IO (Ptr (TQPixmap ()))

instance QgeneratedIconPixmap_h (QWindowsStyleSc a) ((QIconMode, QPixmap t2, QStyleOption t3)) where
 generatedIconPixmap_h x0 (x1, x2, x3)
  = withQPixmapResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QWindowsStyle_generatedIconPixmap cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 cobj_x3

instance QsetHandler (QWindowsStyle ()) (QWindowsStyle x0 -> ComplexControl -> QStyleOption t2 -> QPoint t3 -> QObject t4 -> IO (SubControl)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QWindowsStyle5 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QWindowsStyle5_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QWindowsStyle_setHandler5 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQWindowsStyle x0) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQPoint t3) -> Ptr (TQObject t4) -> IO (CLong)
    setHandlerWrapper x0 x1 x2 x3 x4
      = do x0obj <- qWindowsStyleFromPtr x0
           let x1enum = qEnum_fromInt $ fromCLong x1
           x2obj <- objectFromPtr_nf x2
           x3obj <- objectFromPtr_nf x3
           x4obj <- qObjectFromPtr x4
           let rv =
                if (objectIsNull x0obj)
                 then withQEnumResult $ return $ toCLong 0
                 else _handler x0obj x1enum x2obj x3obj x4obj
           rvf <- rv
           return (toCLong $ qEnum_toInt rvf)

    setHandlerWrapper_d :: Ptr fun -> Ptr () -> Ptr fun_d -> IO ()
    setHandlerWrapper_d funptr stptr funptr_d
      = do when (stptr/=ptrNull)
            (freeStablePtr (castPtrToStablePtr stptr))
           when (funptr/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr))
           when (funptr_d/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr_d))
           return ()

foreign import ccall "qtc_QWindowsStyle_setHandler5" qtc_QWindowsStyle_setHandler5 :: Ptr (TQWindowsStyle a) -> CWString -> Ptr (Ptr (TQWindowsStyle x0) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQPoint t3) -> Ptr (TQObject t4) -> IO (CLong)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QWindowsStyle5 :: (Ptr (TQWindowsStyle x0) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQPoint t3) -> Ptr (TQObject t4) -> IO (CLong)) -> IO (FunPtr (Ptr (TQWindowsStyle x0) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQPoint t3) -> Ptr (TQObject t4) -> IO (CLong)))

foreign import ccall "wrapper" wrapSetHandler_QWindowsStyle5_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QWindowsStyleSc a) (QWindowsStyle x0 -> ComplexControl -> QStyleOption t2 -> QPoint t3 -> QObject t4 -> IO (SubControl)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QWindowsStyle5 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QWindowsStyle5_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QWindowsStyle_setHandler5 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQWindowsStyle x0) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQPoint t3) -> Ptr (TQObject t4) -> IO (CLong)
    setHandlerWrapper x0 x1 x2 x3 x4
      = do x0obj <- qWindowsStyleFromPtr x0
           let x1enum = qEnum_fromInt $ fromCLong x1
           x2obj <- objectFromPtr_nf x2
           x3obj <- objectFromPtr_nf x3
           x4obj <- qObjectFromPtr x4
           let rv =
                if (objectIsNull x0obj)
                 then withQEnumResult $ return $ toCLong 0
                 else _handler x0obj x1enum x2obj x3obj x4obj
           rvf <- rv
           return (toCLong $ qEnum_toInt rvf)

    setHandlerWrapper_d :: Ptr fun -> Ptr () -> Ptr fun_d -> IO ()
    setHandlerWrapper_d funptr stptr funptr_d
      = do when (stptr/=ptrNull)
            (freeStablePtr (castPtrToStablePtr stptr))
           when (funptr/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr))
           when (funptr_d/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr_d))
           return ()

instance QhitTestComplexControl_h (QWindowsStyle ()) ((ComplexControl, QStyleOptionComplex t2, Point, QWidget t4)) where
 hitTestComplexControl_h x0 (x1, x2, x3, x4)
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withCPoint x3 $ \cpoint_x3_x cpoint_x3_y -> 
    withObjectPtr x4 $ \cobj_x4 ->
    qtc_QWindowsStyle_hitTestComplexControl_qth cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 cpoint_x3_x cpoint_x3_y  cobj_x4

foreign import ccall "qtc_QWindowsStyle_hitTestComplexControl_qth" qtc_QWindowsStyle_hitTestComplexControl_qth :: Ptr (TQWindowsStyle a) -> CLong -> Ptr (TQStyleOptionComplex t2) -> CInt -> CInt -> Ptr (TQWidget t4) -> IO CLong

instance QhitTestComplexControl_h (QWindowsStyleSc a) ((ComplexControl, QStyleOptionComplex t2, Point, QWidget t4)) where
 hitTestComplexControl_h x0 (x1, x2, x3, x4)
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withCPoint x3 $ \cpoint_x3_x cpoint_x3_y -> 
    withObjectPtr x4 $ \cobj_x4 ->
    qtc_QWindowsStyle_hitTestComplexControl_qth cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 cpoint_x3_x cpoint_x3_y  cobj_x4

instance QqhitTestComplexControl_h (QWindowsStyle ()) ((ComplexControl, QStyleOptionComplex t2, QPoint t3, QWidget t4)) where
 qhitTestComplexControl_h x0 (x1, x2, x3, x4)
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    withObjectPtr x4 $ \cobj_x4 ->
    qtc_QWindowsStyle_hitTestComplexControl cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 cobj_x3 cobj_x4

foreign import ccall "qtc_QWindowsStyle_hitTestComplexControl" qtc_QWindowsStyle_hitTestComplexControl :: Ptr (TQWindowsStyle a) -> CLong -> Ptr (TQStyleOptionComplex t2) -> Ptr (TQPoint t3) -> Ptr (TQWidget t4) -> IO CLong

instance QqhitTestComplexControl_h (QWindowsStyleSc a) ((ComplexControl, QStyleOptionComplex t2, QPoint t3, QWidget t4)) where
 qhitTestComplexControl_h x0 (x1, x2, x3, x4)
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    withObjectPtr x4 $ \cobj_x4 ->
    qtc_QWindowsStyle_hitTestComplexControl cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 cobj_x3 cobj_x4

instance QsetHandler (QWindowsStyle ()) (QWindowsStyle x0 -> PixelMetric -> QStyleOption t2 -> QObject t3 -> IO (Int)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QWindowsStyle6 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QWindowsStyle6_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QWindowsStyle_setHandler6 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQWindowsStyle x0) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQObject t3) -> IO (CInt)
    setHandlerWrapper x0 x1 x2 x3
      = do x0obj <- qWindowsStyleFromPtr x0
           let x1enum = qEnum_fromInt $ fromCLong x1
           x2obj <- objectFromPtr_nf x2
           x3obj <- qObjectFromPtr x3
           let rv =
                if (objectIsNull x0obj)
                 then return 0
                 else _handler x0obj x1enum x2obj x3obj
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

foreign import ccall "qtc_QWindowsStyle_setHandler6" qtc_QWindowsStyle_setHandler6 :: Ptr (TQWindowsStyle a) -> CWString -> Ptr (Ptr (TQWindowsStyle x0) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQObject t3) -> IO (CInt)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QWindowsStyle6 :: (Ptr (TQWindowsStyle x0) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQObject t3) -> IO (CInt)) -> IO (FunPtr (Ptr (TQWindowsStyle x0) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQObject t3) -> IO (CInt)))

foreign import ccall "wrapper" wrapSetHandler_QWindowsStyle6_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QWindowsStyleSc a) (QWindowsStyle x0 -> PixelMetric -> QStyleOption t2 -> QObject t3 -> IO (Int)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QWindowsStyle6 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QWindowsStyle6_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QWindowsStyle_setHandler6 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQWindowsStyle x0) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQObject t3) -> IO (CInt)
    setHandlerWrapper x0 x1 x2 x3
      = do x0obj <- qWindowsStyleFromPtr x0
           let x1enum = qEnum_fromInt $ fromCLong x1
           x2obj <- objectFromPtr_nf x2
           x3obj <- qObjectFromPtr x3
           let rv =
                if (objectIsNull x0obj)
                 then return 0
                 else _handler x0obj x1enum x2obj x3obj
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

instance QpixelMetric_h (QWindowsStyle ()) ((PixelMetric, QStyleOption t2, QWidget t3)) where
 pixelMetric_h x0 (x1, x2, x3)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QWindowsStyle_pixelMetric cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 cobj_x3

foreign import ccall "qtc_QWindowsStyle_pixelMetric" qtc_QWindowsStyle_pixelMetric :: Ptr (TQWindowsStyle a) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQWidget t3) -> IO CInt

instance QpixelMetric_h (QWindowsStyleSc a) ((PixelMetric, QStyleOption t2, QWidget t3)) where
 pixelMetric_h x0 (x1, x2, x3)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QWindowsStyle_pixelMetric cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 cobj_x3

instance QsetHandler (QWindowsStyle ()) (QWindowsStyle x0 -> ContentsType -> QStyleOption t2 -> QSize t3 -> QObject t4 -> IO (QSize t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QWindowsStyle7 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QWindowsStyle7_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QWindowsStyle_setHandler7 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQWindowsStyle x0) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQSize t3) -> Ptr (TQObject t4) -> IO (Ptr (TQSize t0))
    setHandlerWrapper x0 x1 x2 x3 x4
      = do x0obj <- qWindowsStyleFromPtr x0
           let x1enum = qEnum_fromInt $ fromCLong x1
           x2obj <- objectFromPtr_nf x2
           x3obj <- objectFromPtr_nf x3
           x4obj <- qObjectFromPtr x4
           let rv =
                if (objectIsNull x0obj)
                 then return $ objectCast x0obj
                 else _handler x0obj x1enum x2obj x3obj x4obj
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

foreign import ccall "qtc_QWindowsStyle_setHandler7" qtc_QWindowsStyle_setHandler7 :: Ptr (TQWindowsStyle a) -> CWString -> Ptr (Ptr (TQWindowsStyle x0) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQSize t3) -> Ptr (TQObject t4) -> IO (Ptr (TQSize t0))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QWindowsStyle7 :: (Ptr (TQWindowsStyle x0) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQSize t3) -> Ptr (TQObject t4) -> IO (Ptr (TQSize t0))) -> IO (FunPtr (Ptr (TQWindowsStyle x0) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQSize t3) -> Ptr (TQObject t4) -> IO (Ptr (TQSize t0))))

foreign import ccall "wrapper" wrapSetHandler_QWindowsStyle7_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QWindowsStyleSc a) (QWindowsStyle x0 -> ContentsType -> QStyleOption t2 -> QSize t3 -> QObject t4 -> IO (QSize t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QWindowsStyle7 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QWindowsStyle7_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QWindowsStyle_setHandler7 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQWindowsStyle x0) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQSize t3) -> Ptr (TQObject t4) -> IO (Ptr (TQSize t0))
    setHandlerWrapper x0 x1 x2 x3 x4
      = do x0obj <- qWindowsStyleFromPtr x0
           let x1enum = qEnum_fromInt $ fromCLong x1
           x2obj <- objectFromPtr_nf x2
           x3obj <- objectFromPtr_nf x3
           x4obj <- qObjectFromPtr x4
           let rv =
                if (objectIsNull x0obj)
                 then return $ objectCast x0obj
                 else _handler x0obj x1enum x2obj x3obj x4obj
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

instance QqsizeFromContents_h (QWindowsStyle ()) ((ContentsType, QStyleOption t2, QSize t3, QWidget t4)) where
 qsizeFromContents_h x0 (x1, x2, x3, x4)
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    withObjectPtr x4 $ \cobj_x4 ->
    qtc_QWindowsStyle_sizeFromContents cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 cobj_x3 cobj_x4

foreign import ccall "qtc_QWindowsStyle_sizeFromContents" qtc_QWindowsStyle_sizeFromContents :: Ptr (TQWindowsStyle a) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQSize t3) -> Ptr (TQWidget t4) -> IO (Ptr (TQSize ()))

instance QqsizeFromContents_h (QWindowsStyleSc a) ((ContentsType, QStyleOption t2, QSize t3, QWidget t4)) where
 qsizeFromContents_h x0 (x1, x2, x3, x4)
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    withObjectPtr x4 $ \cobj_x4 ->
    qtc_QWindowsStyle_sizeFromContents cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 cobj_x3 cobj_x4

instance QsizeFromContents_h (QWindowsStyle ()) ((ContentsType, QStyleOption t2, Size, QWidget t4)) where
 sizeFromContents_h x0 (x1, x2, x3, x4)
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withCSize x3 $ \csize_x3_w csize_x3_h -> 
    withObjectPtr x4 $ \cobj_x4 ->
    qtc_QWindowsStyle_sizeFromContents_qth cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 csize_x3_w csize_x3_h  cobj_x4 csize_ret_w csize_ret_h

foreign import ccall "qtc_QWindowsStyle_sizeFromContents_qth" qtc_QWindowsStyle_sizeFromContents_qth :: Ptr (TQWindowsStyle a) -> CLong -> Ptr (TQStyleOption t2) -> CInt -> CInt -> Ptr (TQWidget t4) -> Ptr CInt -> Ptr CInt -> IO ()

instance QsizeFromContents_h (QWindowsStyleSc a) ((ContentsType, QStyleOption t2, Size, QWidget t4)) where
 sizeFromContents_h x0 (x1, x2, x3, x4)
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withCSize x3 $ \csize_x3_w csize_x3_h -> 
    withObjectPtr x4 $ \cobj_x4 ->
    qtc_QWindowsStyle_sizeFromContents_qth cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 csize_x3_w csize_x3_h  cobj_x4 csize_ret_w csize_ret_h

instance QsetHandler (QWindowsStyle ()) (QWindowsStyle x0 -> StandardPixmap -> IO (QPaintDevice t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QWindowsStyle8 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QWindowsStyle8_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QWindowsStyle_setHandler8 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQWindowsStyle x0) -> CLong -> IO (Ptr (TQPaintDevice t0))
    setHandlerWrapper x0 x1
      = do x0obj <- qWindowsStyleFromPtr x0
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

foreign import ccall "qtc_QWindowsStyle_setHandler8" qtc_QWindowsStyle_setHandler8 :: Ptr (TQWindowsStyle a) -> CWString -> Ptr (Ptr (TQWindowsStyle x0) -> CLong -> IO (Ptr (TQPaintDevice t0))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QWindowsStyle8 :: (Ptr (TQWindowsStyle x0) -> CLong -> IO (Ptr (TQPaintDevice t0))) -> IO (FunPtr (Ptr (TQWindowsStyle x0) -> CLong -> IO (Ptr (TQPaintDevice t0))))

foreign import ccall "wrapper" wrapSetHandler_QWindowsStyle8_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QWindowsStyleSc a) (QWindowsStyle x0 -> StandardPixmap -> IO (QPaintDevice t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QWindowsStyle8 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QWindowsStyle8_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QWindowsStyle_setHandler8 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQWindowsStyle x0) -> CLong -> IO (Ptr (TQPaintDevice t0))
    setHandlerWrapper x0 x1
      = do x0obj <- qWindowsStyleFromPtr x0
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

instance QsetHandler (QWindowsStyle ()) (QWindowsStyle x0 -> StandardPixmap -> QStyleOption t2 -> IO (QPaintDevice t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QWindowsStyle9 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QWindowsStyle9_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QWindowsStyle_setHandler9 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQWindowsStyle x0) -> CLong -> Ptr (TQStyleOption t2) -> IO (Ptr (TQPaintDevice t0))
    setHandlerWrapper x0 x1 x2
      = do x0obj <- qWindowsStyleFromPtr x0
           let x1enum = qEnum_fromInt $ fromCLong x1
           x2obj <- objectFromPtr_nf x2
           let rv =
                if (objectIsNull x0obj)
                 then return $ objectCast x0obj
                 else _handler x0obj x1enum x2obj
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

foreign import ccall "qtc_QWindowsStyle_setHandler9" qtc_QWindowsStyle_setHandler9 :: Ptr (TQWindowsStyle a) -> CWString -> Ptr (Ptr (TQWindowsStyle x0) -> CLong -> Ptr (TQStyleOption t2) -> IO (Ptr (TQPaintDevice t0))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QWindowsStyle9 :: (Ptr (TQWindowsStyle x0) -> CLong -> Ptr (TQStyleOption t2) -> IO (Ptr (TQPaintDevice t0))) -> IO (FunPtr (Ptr (TQWindowsStyle x0) -> CLong -> Ptr (TQStyleOption t2) -> IO (Ptr (TQPaintDevice t0))))

foreign import ccall "wrapper" wrapSetHandler_QWindowsStyle9_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QWindowsStyleSc a) (QWindowsStyle x0 -> StandardPixmap -> QStyleOption t2 -> IO (QPaintDevice t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QWindowsStyle9 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QWindowsStyle9_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QWindowsStyle_setHandler9 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQWindowsStyle x0) -> CLong -> Ptr (TQStyleOption t2) -> IO (Ptr (TQPaintDevice t0))
    setHandlerWrapper x0 x1 x2
      = do x0obj <- qWindowsStyleFromPtr x0
           let x1enum = qEnum_fromInt $ fromCLong x1
           x2obj <- objectFromPtr_nf x2
           let rv =
                if (objectIsNull x0obj)
                 then return $ objectCast x0obj
                 else _handler x0obj x1enum x2obj
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

instance QsetHandler (QWindowsStyle ()) (QWindowsStyle x0 -> StandardPixmap -> QStyleOption t2 -> QObject t3 -> IO (QPaintDevice t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QWindowsStyle10 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QWindowsStyle10_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QWindowsStyle_setHandler10 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQWindowsStyle x0) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQObject t3) -> IO (Ptr (TQPaintDevice t0))
    setHandlerWrapper x0 x1 x2 x3
      = do x0obj <- qWindowsStyleFromPtr x0
           let x1enum = qEnum_fromInt $ fromCLong x1
           x2obj <- objectFromPtr_nf x2
           x3obj <- qObjectFromPtr x3
           let rv =
                if (objectIsNull x0obj)
                 then return $ objectCast x0obj
                 else _handler x0obj x1enum x2obj x3obj
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

foreign import ccall "qtc_QWindowsStyle_setHandler10" qtc_QWindowsStyle_setHandler10 :: Ptr (TQWindowsStyle a) -> CWString -> Ptr (Ptr (TQWindowsStyle x0) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQObject t3) -> IO (Ptr (TQPaintDevice t0))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QWindowsStyle10 :: (Ptr (TQWindowsStyle x0) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQObject t3) -> IO (Ptr (TQPaintDevice t0))) -> IO (FunPtr (Ptr (TQWindowsStyle x0) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQObject t3) -> IO (Ptr (TQPaintDevice t0))))

foreign import ccall "wrapper" wrapSetHandler_QWindowsStyle10_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QWindowsStyleSc a) (QWindowsStyle x0 -> StandardPixmap -> QStyleOption t2 -> QObject t3 -> IO (QPaintDevice t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QWindowsStyle10 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QWindowsStyle10_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QWindowsStyle_setHandler10 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQWindowsStyle x0) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQObject t3) -> IO (Ptr (TQPaintDevice t0))
    setHandlerWrapper x0 x1 x2 x3
      = do x0obj <- qWindowsStyleFromPtr x0
           let x1enum = qEnum_fromInt $ fromCLong x1
           x2obj <- objectFromPtr_nf x2
           x3obj <- qObjectFromPtr x3
           let rv =
                if (objectIsNull x0obj)
                 then return $ objectCast x0obj
                 else _handler x0obj x1enum x2obj x3obj
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

instance QstandardPixmap_h (QWindowsStyle ()) ((StandardPixmap)) where
 standardPixmap_h x0 (x1)
  = withQPixmapResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWindowsStyle_standardPixmap cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QWindowsStyle_standardPixmap" qtc_QWindowsStyle_standardPixmap :: Ptr (TQWindowsStyle a) -> CLong -> IO (Ptr (TQPixmap ()))

instance QstandardPixmap_h (QWindowsStyleSc a) ((StandardPixmap)) where
 standardPixmap_h x0 (x1)
  = withQPixmapResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWindowsStyle_standardPixmap cobj_x0 (toCLong $ qEnum_toInt x1)

instance QstandardPixmap_h (QWindowsStyle ()) ((StandardPixmap, QStyleOption t2)) where
 standardPixmap_h x0 (x1, x2)
  = withQPixmapResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QWindowsStyle_standardPixmap1 cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2

foreign import ccall "qtc_QWindowsStyle_standardPixmap1" qtc_QWindowsStyle_standardPixmap1 :: Ptr (TQWindowsStyle a) -> CLong -> Ptr (TQStyleOption t2) -> IO (Ptr (TQPixmap ()))

instance QstandardPixmap_h (QWindowsStyleSc a) ((StandardPixmap, QStyleOption t2)) where
 standardPixmap_h x0 (x1, x2)
  = withQPixmapResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QWindowsStyle_standardPixmap1 cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2

instance QstandardPixmap_h (QWindowsStyle ()) ((StandardPixmap, QStyleOption t2, QWidget t3)) where
 standardPixmap_h x0 (x1, x2, x3)
  = withQPixmapResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QWindowsStyle_standardPixmap2 cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 cobj_x3

foreign import ccall "qtc_QWindowsStyle_standardPixmap2" qtc_QWindowsStyle_standardPixmap2 :: Ptr (TQWindowsStyle a) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQWidget t3) -> IO (Ptr (TQPixmap ()))

instance QstandardPixmap_h (QWindowsStyleSc a) ((StandardPixmap, QStyleOption t2, QWidget t3)) where
 standardPixmap_h x0 (x1, x2, x3)
  = withQPixmapResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QWindowsStyle_standardPixmap2 cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 cobj_x3

instance QsetHandler (QWindowsStyle ()) (QWindowsStyle x0 -> QStyleStyleHint -> QStyleOption t2 -> QObject t3 -> QStyleHintReturn t4 -> IO (Int)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QWindowsStyle11 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QWindowsStyle11_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QWindowsStyle_setHandler11 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQWindowsStyle x0) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQObject t3) -> Ptr (TQStyleHintReturn t4) -> IO (CInt)
    setHandlerWrapper x0 x1 x2 x3 x4
      = do x0obj <- qWindowsStyleFromPtr x0
           let x1enum = qEnum_fromInt $ fromCLong x1
           x2obj <- objectFromPtr_nf x2
           x3obj <- qObjectFromPtr x3
           x4obj <- objectFromPtr_nf x4
           let rv =
                if (objectIsNull x0obj)
                 then return 0
                 else _handler x0obj x1enum x2obj x3obj x4obj
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

foreign import ccall "qtc_QWindowsStyle_setHandler11" qtc_QWindowsStyle_setHandler11 :: Ptr (TQWindowsStyle a) -> CWString -> Ptr (Ptr (TQWindowsStyle x0) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQObject t3) -> Ptr (TQStyleHintReturn t4) -> IO (CInt)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QWindowsStyle11 :: (Ptr (TQWindowsStyle x0) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQObject t3) -> Ptr (TQStyleHintReturn t4) -> IO (CInt)) -> IO (FunPtr (Ptr (TQWindowsStyle x0) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQObject t3) -> Ptr (TQStyleHintReturn t4) -> IO (CInt)))

foreign import ccall "wrapper" wrapSetHandler_QWindowsStyle11_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QWindowsStyleSc a) (QWindowsStyle x0 -> QStyleStyleHint -> QStyleOption t2 -> QObject t3 -> QStyleHintReturn t4 -> IO (Int)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QWindowsStyle11 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QWindowsStyle11_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QWindowsStyle_setHandler11 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQWindowsStyle x0) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQObject t3) -> Ptr (TQStyleHintReturn t4) -> IO (CInt)
    setHandlerWrapper x0 x1 x2 x3 x4
      = do x0obj <- qWindowsStyleFromPtr x0
           let x1enum = qEnum_fromInt $ fromCLong x1
           x2obj <- objectFromPtr_nf x2
           x3obj <- qObjectFromPtr x3
           x4obj <- objectFromPtr_nf x4
           let rv =
                if (objectIsNull x0obj)
                 then return 0
                 else _handler x0obj x1enum x2obj x3obj x4obj
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

instance QstyleHint_h (QWindowsStyle ()) ((QStyleStyleHint, QStyleOption t2, QWidget t3, QStyleHintReturn t4)) where
 styleHint_h x0 (x1, x2, x3, x4)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    withObjectPtr x4 $ \cobj_x4 ->
    qtc_QWindowsStyle_styleHint cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 cobj_x3 cobj_x4

foreign import ccall "qtc_QWindowsStyle_styleHint" qtc_QWindowsStyle_styleHint :: Ptr (TQWindowsStyle a) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQWidget t3) -> Ptr (TQStyleHintReturn t4) -> IO CInt

instance QstyleHint_h (QWindowsStyleSc a) ((QStyleStyleHint, QStyleOption t2, QWidget t3, QStyleHintReturn t4)) where
 styleHint_h x0 (x1, x2, x3, x4)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    withObjectPtr x4 $ \cobj_x4 ->
    qtc_QWindowsStyle_styleHint cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 cobj_x3 cobj_x4

instance QsetHandler (QWindowsStyle ()) (QWindowsStyle x0 -> ComplexControl -> QStyleOption t2 -> SubControl -> QObject t4 -> IO (QRect t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QWindowsStyle12 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QWindowsStyle12_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QWindowsStyle_setHandler12 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQWindowsStyle x0) -> CLong -> Ptr (TQStyleOption t2) -> CLong -> Ptr (TQObject t4) -> IO (Ptr (TQRect t0))
    setHandlerWrapper x0 x1 x2 x3 x4
      = do x0obj <- qWindowsStyleFromPtr x0
           let x1enum = qEnum_fromInt $ fromCLong x1
           x2obj <- objectFromPtr_nf x2
           let x3enum = qEnum_fromInt $ fromCLong x3
           x4obj <- qObjectFromPtr x4
           let rv =
                if (objectIsNull x0obj)
                 then return $ objectCast x0obj
                 else _handler x0obj x1enum x2obj x3enum x4obj
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

foreign import ccall "qtc_QWindowsStyle_setHandler12" qtc_QWindowsStyle_setHandler12 :: Ptr (TQWindowsStyle a) -> CWString -> Ptr (Ptr (TQWindowsStyle x0) -> CLong -> Ptr (TQStyleOption t2) -> CLong -> Ptr (TQObject t4) -> IO (Ptr (TQRect t0))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QWindowsStyle12 :: (Ptr (TQWindowsStyle x0) -> CLong -> Ptr (TQStyleOption t2) -> CLong -> Ptr (TQObject t4) -> IO (Ptr (TQRect t0))) -> IO (FunPtr (Ptr (TQWindowsStyle x0) -> CLong -> Ptr (TQStyleOption t2) -> CLong -> Ptr (TQObject t4) -> IO (Ptr (TQRect t0))))

foreign import ccall "wrapper" wrapSetHandler_QWindowsStyle12_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QWindowsStyleSc a) (QWindowsStyle x0 -> ComplexControl -> QStyleOption t2 -> SubControl -> QObject t4 -> IO (QRect t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QWindowsStyle12 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QWindowsStyle12_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QWindowsStyle_setHandler12 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQWindowsStyle x0) -> CLong -> Ptr (TQStyleOption t2) -> CLong -> Ptr (TQObject t4) -> IO (Ptr (TQRect t0))
    setHandlerWrapper x0 x1 x2 x3 x4
      = do x0obj <- qWindowsStyleFromPtr x0
           let x1enum = qEnum_fromInt $ fromCLong x1
           x2obj <- objectFromPtr_nf x2
           let x3enum = qEnum_fromInt $ fromCLong x3
           x4obj <- qObjectFromPtr x4
           let rv =
                if (objectIsNull x0obj)
                 then return $ objectCast x0obj
                 else _handler x0obj x1enum x2obj x3enum x4obj
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

instance QqsubControlRect_h (QWindowsStyle ()) ((ComplexControl, QStyleOptionComplex t2, SubControl, QWidget t4)) where
 qsubControlRect_h x0 (x1, x2, x3, x4)
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x4 $ \cobj_x4 ->
    qtc_QWindowsStyle_subControlRect cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 (toCLong $ qEnum_toInt x3) cobj_x4

foreign import ccall "qtc_QWindowsStyle_subControlRect" qtc_QWindowsStyle_subControlRect :: Ptr (TQWindowsStyle a) -> CLong -> Ptr (TQStyleOptionComplex t2) -> CLong -> Ptr (TQWidget t4) -> IO (Ptr (TQRect ()))

instance QqsubControlRect_h (QWindowsStyleSc a) ((ComplexControl, QStyleOptionComplex t2, SubControl, QWidget t4)) where
 qsubControlRect_h x0 (x1, x2, x3, x4)
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x4 $ \cobj_x4 ->
    qtc_QWindowsStyle_subControlRect cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 (toCLong $ qEnum_toInt x3) cobj_x4

instance QsubControlRect_h (QWindowsStyle ()) ((ComplexControl, QStyleOptionComplex t2, SubControl, QWidget t4)) where
 subControlRect_h x0 (x1, x2, x3, x4)
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x4 $ \cobj_x4 ->
    qtc_QWindowsStyle_subControlRect_qth cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 (toCLong $ qEnum_toInt x3) cobj_x4 crect_ret_x crect_ret_y crect_ret_w crect_ret_h

foreign import ccall "qtc_QWindowsStyle_subControlRect_qth" qtc_QWindowsStyle_subControlRect_qth :: Ptr (TQWindowsStyle a) -> CLong -> Ptr (TQStyleOptionComplex t2) -> CLong -> Ptr (TQWidget t4) -> Ptr CInt -> Ptr CInt -> Ptr CInt -> Ptr CInt -> IO ()

instance QsubControlRect_h (QWindowsStyleSc a) ((ComplexControl, QStyleOptionComplex t2, SubControl, QWidget t4)) where
 subControlRect_h x0 (x1, x2, x3, x4)
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x4 $ \cobj_x4 ->
    qtc_QWindowsStyle_subControlRect_qth cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 (toCLong $ qEnum_toInt x3) cobj_x4 crect_ret_x crect_ret_y crect_ret_w crect_ret_h

instance QsetHandler (QWindowsStyle ()) (QWindowsStyle x0 -> SubElement -> QStyleOption t2 -> QObject t3 -> IO (QRect t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QWindowsStyle13 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QWindowsStyle13_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QWindowsStyle_setHandler13 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQWindowsStyle x0) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQObject t3) -> IO (Ptr (TQRect t0))
    setHandlerWrapper x0 x1 x2 x3
      = do x0obj <- qWindowsStyleFromPtr x0
           let x1enum = qEnum_fromInt $ fromCLong x1
           x2obj <- objectFromPtr_nf x2
           x3obj <- qObjectFromPtr x3
           let rv =
                if (objectIsNull x0obj)
                 then return $ objectCast x0obj
                 else _handler x0obj x1enum x2obj x3obj
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

foreign import ccall "qtc_QWindowsStyle_setHandler13" qtc_QWindowsStyle_setHandler13 :: Ptr (TQWindowsStyle a) -> CWString -> Ptr (Ptr (TQWindowsStyle x0) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQObject t3) -> IO (Ptr (TQRect t0))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QWindowsStyle13 :: (Ptr (TQWindowsStyle x0) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQObject t3) -> IO (Ptr (TQRect t0))) -> IO (FunPtr (Ptr (TQWindowsStyle x0) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQObject t3) -> IO (Ptr (TQRect t0))))

foreign import ccall "wrapper" wrapSetHandler_QWindowsStyle13_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QWindowsStyleSc a) (QWindowsStyle x0 -> SubElement -> QStyleOption t2 -> QObject t3 -> IO (QRect t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QWindowsStyle13 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QWindowsStyle13_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QWindowsStyle_setHandler13 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQWindowsStyle x0) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQObject t3) -> IO (Ptr (TQRect t0))
    setHandlerWrapper x0 x1 x2 x3
      = do x0obj <- qWindowsStyleFromPtr x0
           let x1enum = qEnum_fromInt $ fromCLong x1
           x2obj <- objectFromPtr_nf x2
           x3obj <- qObjectFromPtr x3
           let rv =
                if (objectIsNull x0obj)
                 then return $ objectCast x0obj
                 else _handler x0obj x1enum x2obj x3obj
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

instance QqsubElementRect_h (QWindowsStyle ()) ((SubElement, QStyleOption t2, QWidget t3)) where
 qsubElementRect_h x0 (x1, x2, x3)
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QWindowsStyle_subElementRect cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 cobj_x3

foreign import ccall "qtc_QWindowsStyle_subElementRect" qtc_QWindowsStyle_subElementRect :: Ptr (TQWindowsStyle a) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQWidget t3) -> IO (Ptr (TQRect ()))

instance QqsubElementRect_h (QWindowsStyleSc a) ((SubElement, QStyleOption t2, QWidget t3)) where
 qsubElementRect_h x0 (x1, x2, x3)
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QWindowsStyle_subElementRect cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 cobj_x3

instance QsubElementRect_h (QWindowsStyle ()) ((SubElement, QStyleOption t2, QWidget t3)) where
 subElementRect_h x0 (x1, x2, x3)
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QWindowsStyle_subElementRect_qth cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 cobj_x3 crect_ret_x crect_ret_y crect_ret_w crect_ret_h

foreign import ccall "qtc_QWindowsStyle_subElementRect_qth" qtc_QWindowsStyle_subElementRect_qth :: Ptr (TQWindowsStyle a) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQWidget t3) -> Ptr CInt -> Ptr CInt -> Ptr CInt -> Ptr CInt -> IO ()

instance QsubElementRect_h (QWindowsStyleSc a) ((SubElement, QStyleOption t2, QWidget t3)) where
 subElementRect_h x0 (x1, x2, x3)
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QWindowsStyle_subElementRect_qth cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 cobj_x3 crect_ret_x crect_ret_y crect_ret_w crect_ret_h

instance QsetHandler (QWindowsStyle ()) (QWindowsStyle x0 -> QPainter t1 -> QRect t2 -> Int -> QPaintDevice t4 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QWindowsStyle14 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QWindowsStyle14_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QWindowsStyle_setHandler14 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQWindowsStyle x0) -> Ptr (TQPainter t1) -> Ptr (TQRect t2) -> CInt -> Ptr (TQPaintDevice t4) -> IO ()
    setHandlerWrapper x0 x1 x2 x3 x4
      = do x0obj <- qWindowsStyleFromPtr x0
           x1obj <- objectFromPtr_nf x1
           x2obj <- objectFromPtr_nf x2
           let x3int = fromCInt x3
           x4obj <- objectFromPtr_nf x4
           if (objectIsNull x0obj)
            then return ()
            else _handler x0obj x1obj x2obj x3int x4obj

    setHandlerWrapper_d :: Ptr fun -> Ptr () -> Ptr fun_d -> IO ()
    setHandlerWrapper_d funptr stptr funptr_d
      = do when (stptr/=ptrNull)
            (freeStablePtr (castPtrToStablePtr stptr))
           when (funptr/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr))
           when (funptr_d/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr_d))
           return ()

foreign import ccall "qtc_QWindowsStyle_setHandler14" qtc_QWindowsStyle_setHandler14 :: Ptr (TQWindowsStyle a) -> CWString -> Ptr (Ptr (TQWindowsStyle x0) -> Ptr (TQPainter t1) -> Ptr (TQRect t2) -> CInt -> Ptr (TQPaintDevice t4) -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QWindowsStyle14 :: (Ptr (TQWindowsStyle x0) -> Ptr (TQPainter t1) -> Ptr (TQRect t2) -> CInt -> Ptr (TQPaintDevice t4) -> IO ()) -> IO (FunPtr (Ptr (TQWindowsStyle x0) -> Ptr (TQPainter t1) -> Ptr (TQRect t2) -> CInt -> Ptr (TQPaintDevice t4) -> IO ()))

foreign import ccall "wrapper" wrapSetHandler_QWindowsStyle14_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QWindowsStyleSc a) (QWindowsStyle x0 -> QPainter t1 -> QRect t2 -> Int -> QPaintDevice t4 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QWindowsStyle14 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QWindowsStyle14_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QWindowsStyle_setHandler14 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQWindowsStyle x0) -> Ptr (TQPainter t1) -> Ptr (TQRect t2) -> CInt -> Ptr (TQPaintDevice t4) -> IO ()
    setHandlerWrapper x0 x1 x2 x3 x4
      = do x0obj <- qWindowsStyleFromPtr x0
           x1obj <- objectFromPtr_nf x1
           x2obj <- objectFromPtr_nf x2
           let x3int = fromCInt x3
           x4obj <- objectFromPtr_nf x4
           if (objectIsNull x0obj)
            then return ()
            else _handler x0obj x1obj x2obj x3int x4obj

    setHandlerWrapper_d :: Ptr fun -> Ptr () -> Ptr fun_d -> IO ()
    setHandlerWrapper_d funptr stptr funptr_d
      = do when (stptr/=ptrNull)
            (freeStablePtr (castPtrToStablePtr stptr))
           when (funptr/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr))
           when (funptr_d/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr_d))
           return ()

instance QqdrawItemPixmap_h (QWindowsStyle ()) ((QPainter t1, QRect t2, Int, QPixmap t4)) where
 qdrawItemPixmap_h x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x4 $ \cobj_x4 ->
    qtc_QWindowsStyle_drawItemPixmap cobj_x0 cobj_x1 cobj_x2 (toCInt x3) cobj_x4

foreign import ccall "qtc_QWindowsStyle_drawItemPixmap" qtc_QWindowsStyle_drawItemPixmap :: Ptr (TQWindowsStyle a) -> Ptr (TQPainter t1) -> Ptr (TQRect t2) -> CInt -> Ptr (TQPixmap t4) -> IO ()

instance QqdrawItemPixmap_h (QWindowsStyleSc a) ((QPainter t1, QRect t2, Int, QPixmap t4)) where
 qdrawItemPixmap_h x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x4 $ \cobj_x4 ->
    qtc_QWindowsStyle_drawItemPixmap cobj_x0 cobj_x1 cobj_x2 (toCInt x3) cobj_x4

instance QdrawItemPixmap_h (QWindowsStyle ()) ((QPainter t1, Rect, Int, QPixmap t4)) where
 drawItemPixmap_h x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCRect x2 $ \crect_x2_x crect_x2_y  crect_x2_w crect_x2_h -> 
    withObjectPtr x4 $ \cobj_x4 ->
    qtc_QWindowsStyle_drawItemPixmap_qth cobj_x0 cobj_x1 crect_x2_x crect_x2_y crect_x2_w crect_x2_h  (toCInt x3) cobj_x4

foreign import ccall "qtc_QWindowsStyle_drawItemPixmap_qth" qtc_QWindowsStyle_drawItemPixmap_qth :: Ptr (TQWindowsStyle a) -> Ptr (TQPainter t1) -> CInt -> CInt -> CInt -> CInt -> CInt -> Ptr (TQPixmap t4) -> IO ()

instance QdrawItemPixmap_h (QWindowsStyleSc a) ((QPainter t1, Rect, Int, QPixmap t4)) where
 drawItemPixmap_h x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCRect x2 $ \crect_x2_x crect_x2_y  crect_x2_w crect_x2_h -> 
    withObjectPtr x4 $ \cobj_x4 ->
    qtc_QWindowsStyle_drawItemPixmap_qth cobj_x0 cobj_x1 crect_x2_x crect_x2_y crect_x2_w crect_x2_h  (toCInt x3) cobj_x4

instance QsetHandler (QWindowsStyle ()) (QWindowsStyle x0 -> QPainter t1 -> QRect t2 -> Int -> QPalette t4 -> Bool -> String -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QWindowsStyle15 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QWindowsStyle15_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QWindowsStyle_setHandler15 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQWindowsStyle x0) -> Ptr (TQPainter t1) -> Ptr (TQRect t2) -> CInt -> Ptr (TQPalette t4) -> CBool -> Ptr (TQString ()) -> IO ()
    setHandlerWrapper x0 x1 x2 x3 x4 x5 x6
      = do x0obj <- qWindowsStyleFromPtr x0
           x1obj <- objectFromPtr_nf x1
           x2obj <- objectFromPtr_nf x2
           let x3int = fromCInt x3
           x4obj <- objectFromPtr_nf x4
           let x5bool = fromCBool x5
           x6str <- stringFromPtr x6
           if (objectIsNull x0obj)
            then return ()
            else _handler x0obj x1obj x2obj x3int x4obj x5bool x6str

    setHandlerWrapper_d :: Ptr fun -> Ptr () -> Ptr fun_d -> IO ()
    setHandlerWrapper_d funptr stptr funptr_d
      = do when (stptr/=ptrNull)
            (freeStablePtr (castPtrToStablePtr stptr))
           when (funptr/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr))
           when (funptr_d/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr_d))
           return ()

foreign import ccall "qtc_QWindowsStyle_setHandler15" qtc_QWindowsStyle_setHandler15 :: Ptr (TQWindowsStyle a) -> CWString -> Ptr (Ptr (TQWindowsStyle x0) -> Ptr (TQPainter t1) -> Ptr (TQRect t2) -> CInt -> Ptr (TQPalette t4) -> CBool -> Ptr (TQString ()) -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QWindowsStyle15 :: (Ptr (TQWindowsStyle x0) -> Ptr (TQPainter t1) -> Ptr (TQRect t2) -> CInt -> Ptr (TQPalette t4) -> CBool -> Ptr (TQString ()) -> IO ()) -> IO (FunPtr (Ptr (TQWindowsStyle x0) -> Ptr (TQPainter t1) -> Ptr (TQRect t2) -> CInt -> Ptr (TQPalette t4) -> CBool -> Ptr (TQString ()) -> IO ()))

foreign import ccall "wrapper" wrapSetHandler_QWindowsStyle15_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QWindowsStyleSc a) (QWindowsStyle x0 -> QPainter t1 -> QRect t2 -> Int -> QPalette t4 -> Bool -> String -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QWindowsStyle15 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QWindowsStyle15_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QWindowsStyle_setHandler15 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQWindowsStyle x0) -> Ptr (TQPainter t1) -> Ptr (TQRect t2) -> CInt -> Ptr (TQPalette t4) -> CBool -> Ptr (TQString ()) -> IO ()
    setHandlerWrapper x0 x1 x2 x3 x4 x5 x6
      = do x0obj <- qWindowsStyleFromPtr x0
           x1obj <- objectFromPtr_nf x1
           x2obj <- objectFromPtr_nf x2
           let x3int = fromCInt x3
           x4obj <- objectFromPtr_nf x4
           let x5bool = fromCBool x5
           x6str <- stringFromPtr x6
           if (objectIsNull x0obj)
            then return ()
            else _handler x0obj x1obj x2obj x3int x4obj x5bool x6str

    setHandlerWrapper_d :: Ptr fun -> Ptr () -> Ptr fun_d -> IO ()
    setHandlerWrapper_d funptr stptr funptr_d
      = do when (stptr/=ptrNull)
            (freeStablePtr (castPtrToStablePtr stptr))
           when (funptr/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr))
           when (funptr_d/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr_d))
           return ()

instance QsetHandler (QWindowsStyle ()) (QWindowsStyle x0 -> QPainter t1 -> QRect t2 -> Int -> QPalette t4 -> Bool -> String -> ColorRole -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QWindowsStyle16 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QWindowsStyle16_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QWindowsStyle_setHandler16 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQWindowsStyle x0) -> Ptr (TQPainter t1) -> Ptr (TQRect t2) -> CInt -> Ptr (TQPalette t4) -> CBool -> Ptr (TQString ()) -> CLong -> IO ()
    setHandlerWrapper x0 x1 x2 x3 x4 x5 x6 x7
      = do x0obj <- qWindowsStyleFromPtr x0
           x1obj <- objectFromPtr_nf x1
           x2obj <- objectFromPtr_nf x2
           let x3int = fromCInt x3
           x4obj <- objectFromPtr_nf x4
           let x5bool = fromCBool x5
           x6str <- stringFromPtr x6
           let x7enum = qEnum_fromInt $ fromCLong x7
           if (objectIsNull x0obj)
            then return ()
            else _handler x0obj x1obj x2obj x3int x4obj x5bool x6str x7enum

    setHandlerWrapper_d :: Ptr fun -> Ptr () -> Ptr fun_d -> IO ()
    setHandlerWrapper_d funptr stptr funptr_d
      = do when (stptr/=ptrNull)
            (freeStablePtr (castPtrToStablePtr stptr))
           when (funptr/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr))
           when (funptr_d/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr_d))
           return ()

foreign import ccall "qtc_QWindowsStyle_setHandler16" qtc_QWindowsStyle_setHandler16 :: Ptr (TQWindowsStyle a) -> CWString -> Ptr (Ptr (TQWindowsStyle x0) -> Ptr (TQPainter t1) -> Ptr (TQRect t2) -> CInt -> Ptr (TQPalette t4) -> CBool -> Ptr (TQString ()) -> CLong -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QWindowsStyle16 :: (Ptr (TQWindowsStyle x0) -> Ptr (TQPainter t1) -> Ptr (TQRect t2) -> CInt -> Ptr (TQPalette t4) -> CBool -> Ptr (TQString ()) -> CLong -> IO ()) -> IO (FunPtr (Ptr (TQWindowsStyle x0) -> Ptr (TQPainter t1) -> Ptr (TQRect t2) -> CInt -> Ptr (TQPalette t4) -> CBool -> Ptr (TQString ()) -> CLong -> IO ()))

foreign import ccall "wrapper" wrapSetHandler_QWindowsStyle16_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QWindowsStyleSc a) (QWindowsStyle x0 -> QPainter t1 -> QRect t2 -> Int -> QPalette t4 -> Bool -> String -> ColorRole -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QWindowsStyle16 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QWindowsStyle16_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QWindowsStyle_setHandler16 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQWindowsStyle x0) -> Ptr (TQPainter t1) -> Ptr (TQRect t2) -> CInt -> Ptr (TQPalette t4) -> CBool -> Ptr (TQString ()) -> CLong -> IO ()
    setHandlerWrapper x0 x1 x2 x3 x4 x5 x6 x7
      = do x0obj <- qWindowsStyleFromPtr x0
           x1obj <- objectFromPtr_nf x1
           x2obj <- objectFromPtr_nf x2
           let x3int = fromCInt x3
           x4obj <- objectFromPtr_nf x4
           let x5bool = fromCBool x5
           x6str <- stringFromPtr x6
           let x7enum = qEnum_fromInt $ fromCLong x7
           if (objectIsNull x0obj)
            then return ()
            else _handler x0obj x1obj x2obj x3int x4obj x5bool x6str x7enum

    setHandlerWrapper_d :: Ptr fun -> Ptr () -> Ptr fun_d -> IO ()
    setHandlerWrapper_d funptr stptr funptr_d
      = do when (stptr/=ptrNull)
            (freeStablePtr (castPtrToStablePtr stptr))
           when (funptr/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr))
           when (funptr_d/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr_d))
           return ()

instance QqdrawItemText_h (QWindowsStyle ()) ((QPainter t1, QRect t2, Int, QPalette t4, Bool, String)) where
 qdrawItemText_h x0 (x1, x2, x3, x4, x5, x6)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x4 $ \cobj_x4 ->
    withCWString x6 $ \cstr_x6 ->
    qtc_QWindowsStyle_drawItemText cobj_x0 cobj_x1 cobj_x2 (toCInt x3) cobj_x4 (toCBool x5) cstr_x6

foreign import ccall "qtc_QWindowsStyle_drawItemText" qtc_QWindowsStyle_drawItemText :: Ptr (TQWindowsStyle a) -> Ptr (TQPainter t1) -> Ptr (TQRect t2) -> CInt -> Ptr (TQPalette t4) -> CBool -> CWString -> IO ()

instance QqdrawItemText_h (QWindowsStyleSc a) ((QPainter t1, QRect t2, Int, QPalette t4, Bool, String)) where
 qdrawItemText_h x0 (x1, x2, x3, x4, x5, x6)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x4 $ \cobj_x4 ->
    withCWString x6 $ \cstr_x6 ->
    qtc_QWindowsStyle_drawItemText cobj_x0 cobj_x1 cobj_x2 (toCInt x3) cobj_x4 (toCBool x5) cstr_x6

instance QqdrawItemText_h (QWindowsStyle ()) ((QPainter t1, QRect t2, Int, QPalette t4, Bool, String, ColorRole)) where
 qdrawItemText_h x0 (x1, x2, x3, x4, x5, x6, x7)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x4 $ \cobj_x4 ->
    withCWString x6 $ \cstr_x6 ->
    qtc_QWindowsStyle_drawItemText1 cobj_x0 cobj_x1 cobj_x2 (toCInt x3) cobj_x4 (toCBool x5) cstr_x6 (toCLong $ qEnum_toInt x7)

foreign import ccall "qtc_QWindowsStyle_drawItemText1" qtc_QWindowsStyle_drawItemText1 :: Ptr (TQWindowsStyle a) -> Ptr (TQPainter t1) -> Ptr (TQRect t2) -> CInt -> Ptr (TQPalette t4) -> CBool -> CWString -> CLong -> IO ()

instance QqdrawItemText_h (QWindowsStyleSc a) ((QPainter t1, QRect t2, Int, QPalette t4, Bool, String, ColorRole)) where
 qdrawItemText_h x0 (x1, x2, x3, x4, x5, x6, x7)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x4 $ \cobj_x4 ->
    withCWString x6 $ \cstr_x6 ->
    qtc_QWindowsStyle_drawItemText1 cobj_x0 cobj_x1 cobj_x2 (toCInt x3) cobj_x4 (toCBool x5) cstr_x6 (toCLong $ qEnum_toInt x7)

instance QdrawItemText_h (QWindowsStyle ()) ((QPainter t1, Rect, Int, QPalette t4, Bool, String)) where
 drawItemText_h x0 (x1, x2, x3, x4, x5, x6)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCRect x2 $ \crect_x2_x crect_x2_y  crect_x2_w crect_x2_h -> 
    withObjectPtr x4 $ \cobj_x4 ->
    withCWString x6 $ \cstr_x6 ->
    qtc_QWindowsStyle_drawItemText_qth cobj_x0 cobj_x1 crect_x2_x crect_x2_y crect_x2_w crect_x2_h  (toCInt x3) cobj_x4 (toCBool x5) cstr_x6

foreign import ccall "qtc_QWindowsStyle_drawItemText_qth" qtc_QWindowsStyle_drawItemText_qth :: Ptr (TQWindowsStyle a) -> Ptr (TQPainter t1) -> CInt -> CInt -> CInt -> CInt -> CInt -> Ptr (TQPalette t4) -> CBool -> CWString -> IO ()

instance QdrawItemText_h (QWindowsStyleSc a) ((QPainter t1, Rect, Int, QPalette t4, Bool, String)) where
 drawItemText_h x0 (x1, x2, x3, x4, x5, x6)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCRect x2 $ \crect_x2_x crect_x2_y  crect_x2_w crect_x2_h -> 
    withObjectPtr x4 $ \cobj_x4 ->
    withCWString x6 $ \cstr_x6 ->
    qtc_QWindowsStyle_drawItemText_qth cobj_x0 cobj_x1 crect_x2_x crect_x2_y crect_x2_w crect_x2_h  (toCInt x3) cobj_x4 (toCBool x5) cstr_x6

instance QdrawItemText_h (QWindowsStyle ()) ((QPainter t1, Rect, Int, QPalette t4, Bool, String, ColorRole)) where
 drawItemText_h x0 (x1, x2, x3, x4, x5, x6, x7)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCRect x2 $ \crect_x2_x crect_x2_y  crect_x2_w crect_x2_h -> 
    withObjectPtr x4 $ \cobj_x4 ->
    withCWString x6 $ \cstr_x6 ->
    qtc_QWindowsStyle_drawItemText1_qth cobj_x0 cobj_x1 crect_x2_x crect_x2_y crect_x2_w crect_x2_h  (toCInt x3) cobj_x4 (toCBool x5) cstr_x6 (toCLong $ qEnum_toInt x7)

foreign import ccall "qtc_QWindowsStyle_drawItemText1_qth" qtc_QWindowsStyle_drawItemText1_qth :: Ptr (TQWindowsStyle a) -> Ptr (TQPainter t1) -> CInt -> CInt -> CInt -> CInt -> CInt -> Ptr (TQPalette t4) -> CBool -> CWString -> CLong -> IO ()

instance QdrawItemText_h (QWindowsStyleSc a) ((QPainter t1, Rect, Int, QPalette t4, Bool, String, ColorRole)) where
 drawItemText_h x0 (x1, x2, x3, x4, x5, x6, x7)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCRect x2 $ \crect_x2_x crect_x2_y  crect_x2_w crect_x2_h -> 
    withObjectPtr x4 $ \cobj_x4 ->
    withCWString x6 $ \cstr_x6 ->
    qtc_QWindowsStyle_drawItemText1_qth cobj_x0 cobj_x1 crect_x2_x crect_x2_y crect_x2_w crect_x2_h  (toCInt x3) cobj_x4 (toCBool x5) cstr_x6 (toCLong $ qEnum_toInt x7)

instance QsetHandler (QWindowsStyle ()) (QWindowsStyle x0 -> QRect t1 -> Int -> QPaintDevice t3 -> IO (QRect t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QWindowsStyle17 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QWindowsStyle17_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QWindowsStyle_setHandler17 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQWindowsStyle x0) -> Ptr (TQRect t1) -> CInt -> Ptr (TQPaintDevice t3) -> IO (Ptr (TQRect t0))
    setHandlerWrapper x0 x1 x2 x3
      = do x0obj <- qWindowsStyleFromPtr x0
           x1obj <- objectFromPtr_nf x1
           let x2int = fromCInt x2
           x3obj <- objectFromPtr_nf x3
           let rv =
                if (objectIsNull x0obj)
                 then return $ objectCast x0obj
                 else _handler x0obj x1obj x2int x3obj
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

foreign import ccall "qtc_QWindowsStyle_setHandler17" qtc_QWindowsStyle_setHandler17 :: Ptr (TQWindowsStyle a) -> CWString -> Ptr (Ptr (TQWindowsStyle x0) -> Ptr (TQRect t1) -> CInt -> Ptr (TQPaintDevice t3) -> IO (Ptr (TQRect t0))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QWindowsStyle17 :: (Ptr (TQWindowsStyle x0) -> Ptr (TQRect t1) -> CInt -> Ptr (TQPaintDevice t3) -> IO (Ptr (TQRect t0))) -> IO (FunPtr (Ptr (TQWindowsStyle x0) -> Ptr (TQRect t1) -> CInt -> Ptr (TQPaintDevice t3) -> IO (Ptr (TQRect t0))))

foreign import ccall "wrapper" wrapSetHandler_QWindowsStyle17_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QWindowsStyleSc a) (QWindowsStyle x0 -> QRect t1 -> Int -> QPaintDevice t3 -> IO (QRect t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QWindowsStyle17 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QWindowsStyle17_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QWindowsStyle_setHandler17 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQWindowsStyle x0) -> Ptr (TQRect t1) -> CInt -> Ptr (TQPaintDevice t3) -> IO (Ptr (TQRect t0))
    setHandlerWrapper x0 x1 x2 x3
      = do x0obj <- qWindowsStyleFromPtr x0
           x1obj <- objectFromPtr_nf x1
           let x2int = fromCInt x2
           x3obj <- objectFromPtr_nf x3
           let rv =
                if (objectIsNull x0obj)
                 then return $ objectCast x0obj
                 else _handler x0obj x1obj x2int x3obj
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

instance QqitemPixmapRect_h (QWindowsStyle ()) ((QRect t1, Int, QPixmap t3)) where
 qitemPixmapRect_h x0 (x1, x2, x3)
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QWindowsStyle_itemPixmapRect cobj_x0 cobj_x1 (toCInt x2) cobj_x3

foreign import ccall "qtc_QWindowsStyle_itemPixmapRect" qtc_QWindowsStyle_itemPixmapRect :: Ptr (TQWindowsStyle a) -> Ptr (TQRect t1) -> CInt -> Ptr (TQPixmap t3) -> IO (Ptr (TQRect ()))

instance QqitemPixmapRect_h (QWindowsStyleSc a) ((QRect t1, Int, QPixmap t3)) where
 qitemPixmapRect_h x0 (x1, x2, x3)
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QWindowsStyle_itemPixmapRect cobj_x0 cobj_x1 (toCInt x2) cobj_x3

instance QitemPixmapRect_h (QWindowsStyle ()) ((Rect, Int, QPixmap t3)) where
 itemPixmapRect_h x0 (x1, x2, x3)
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QWindowsStyle_itemPixmapRect_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h  (toCInt x2) cobj_x3 crect_ret_x crect_ret_y crect_ret_w crect_ret_h

foreign import ccall "qtc_QWindowsStyle_itemPixmapRect_qth" qtc_QWindowsStyle_itemPixmapRect_qth :: Ptr (TQWindowsStyle a) -> CInt -> CInt -> CInt -> CInt -> CInt -> Ptr (TQPixmap t3) -> Ptr CInt -> Ptr CInt -> Ptr CInt -> Ptr CInt -> IO ()

instance QitemPixmapRect_h (QWindowsStyleSc a) ((Rect, Int, QPixmap t3)) where
 itemPixmapRect_h x0 (x1, x2, x3)
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QWindowsStyle_itemPixmapRect_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h  (toCInt x2) cobj_x3 crect_ret_x crect_ret_y crect_ret_w crect_ret_h

instance QsetHandler (QWindowsStyle ()) (QWindowsStyle x0 -> QFontMetrics t1 -> QRect t2 -> Int -> Bool -> String -> IO (QRect t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QWindowsStyle18 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QWindowsStyle18_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QWindowsStyle_setHandler18 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQWindowsStyle x0) -> Ptr (TQFontMetrics t1) -> Ptr (TQRect t2) -> CInt -> CBool -> Ptr (TQString ()) -> IO (Ptr (TQRect t0))
    setHandlerWrapper x0 x1 x2 x3 x4 x5
      = do x0obj <- qWindowsStyleFromPtr x0
           x1obj <- objectFromPtr_nf x1
           x2obj <- objectFromPtr_nf x2
           let x3int = fromCInt x3
           let x4bool = fromCBool x4
           x5str <- stringFromPtr x5
           let rv =
                if (objectIsNull x0obj)
                 then return $ objectCast x0obj
                 else _handler x0obj x1obj x2obj x3int x4bool x5str
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

foreign import ccall "qtc_QWindowsStyle_setHandler18" qtc_QWindowsStyle_setHandler18 :: Ptr (TQWindowsStyle a) -> CWString -> Ptr (Ptr (TQWindowsStyle x0) -> Ptr (TQFontMetrics t1) -> Ptr (TQRect t2) -> CInt -> CBool -> Ptr (TQString ()) -> IO (Ptr (TQRect t0))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QWindowsStyle18 :: (Ptr (TQWindowsStyle x0) -> Ptr (TQFontMetrics t1) -> Ptr (TQRect t2) -> CInt -> CBool -> Ptr (TQString ()) -> IO (Ptr (TQRect t0))) -> IO (FunPtr (Ptr (TQWindowsStyle x0) -> Ptr (TQFontMetrics t1) -> Ptr (TQRect t2) -> CInt -> CBool -> Ptr (TQString ()) -> IO (Ptr (TQRect t0))))

foreign import ccall "wrapper" wrapSetHandler_QWindowsStyle18_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QWindowsStyleSc a) (QWindowsStyle x0 -> QFontMetrics t1 -> QRect t2 -> Int -> Bool -> String -> IO (QRect t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QWindowsStyle18 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QWindowsStyle18_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QWindowsStyle_setHandler18 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQWindowsStyle x0) -> Ptr (TQFontMetrics t1) -> Ptr (TQRect t2) -> CInt -> CBool -> Ptr (TQString ()) -> IO (Ptr (TQRect t0))
    setHandlerWrapper x0 x1 x2 x3 x4 x5
      = do x0obj <- qWindowsStyleFromPtr x0
           x1obj <- objectFromPtr_nf x1
           x2obj <- objectFromPtr_nf x2
           let x3int = fromCInt x3
           let x4bool = fromCBool x4
           x5str <- stringFromPtr x5
           let rv =
                if (objectIsNull x0obj)
                 then return $ objectCast x0obj
                 else _handler x0obj x1obj x2obj x3int x4bool x5str
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

instance QqitemTextRect_h (QWindowsStyle ()) ((QFontMetrics t1, QRect t2, Int, Bool, String)) where
 qitemTextRect_h x0 (x1, x2, x3, x4, x5)
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withCWString x5 $ \cstr_x5 ->
    qtc_QWindowsStyle_itemTextRect cobj_x0 cobj_x1 cobj_x2 (toCInt x3) (toCBool x4) cstr_x5

foreign import ccall "qtc_QWindowsStyle_itemTextRect" qtc_QWindowsStyle_itemTextRect :: Ptr (TQWindowsStyle a) -> Ptr (TQFontMetrics t1) -> Ptr (TQRect t2) -> CInt -> CBool -> CWString -> IO (Ptr (TQRect ()))

instance QqitemTextRect_h (QWindowsStyleSc a) ((QFontMetrics t1, QRect t2, Int, Bool, String)) where
 qitemTextRect_h x0 (x1, x2, x3, x4, x5)
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withCWString x5 $ \cstr_x5 ->
    qtc_QWindowsStyle_itemTextRect cobj_x0 cobj_x1 cobj_x2 (toCInt x3) (toCBool x4) cstr_x5

instance QitemTextRect_h (QWindowsStyle ()) ((QFontMetrics t1, Rect, Int, Bool, String)) where
 itemTextRect_h x0 (x1, x2, x3, x4, x5)
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCRect x2 $ \crect_x2_x crect_x2_y  crect_x2_w crect_x2_h -> 
    withCWString x5 $ \cstr_x5 ->
    qtc_QWindowsStyle_itemTextRect_qth cobj_x0 cobj_x1 crect_x2_x crect_x2_y crect_x2_w crect_x2_h  (toCInt x3) (toCBool x4) cstr_x5 crect_ret_x crect_ret_y crect_ret_w crect_ret_h

foreign import ccall "qtc_QWindowsStyle_itemTextRect_qth" qtc_QWindowsStyle_itemTextRect_qth :: Ptr (TQWindowsStyle a) -> Ptr (TQFontMetrics t1) -> CInt -> CInt -> CInt -> CInt -> CInt -> CBool -> CWString -> Ptr CInt -> Ptr CInt -> Ptr CInt -> Ptr CInt -> IO ()

instance QitemTextRect_h (QWindowsStyleSc a) ((QFontMetrics t1, Rect, Int, Bool, String)) where
 itemTextRect_h x0 (x1, x2, x3, x4, x5)
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCRect x2 $ \crect_x2_x crect_x2_y  crect_x2_w crect_x2_h -> 
    withCWString x5 $ \cstr_x5 ->
    qtc_QWindowsStyle_itemTextRect_qth cobj_x0 cobj_x1 crect_x2_x crect_x2_y crect_x2_w crect_x2_h  (toCInt x3) (toCBool x4) cstr_x5 crect_ret_x crect_ret_y crect_ret_w crect_ret_h

instance QsetHandler (QWindowsStyle ()) (QWindowsStyle x0 -> QObject t1 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QWindowsStyle19 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QWindowsStyle19_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QWindowsStyle_setHandler19 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQWindowsStyle x0) -> Ptr (TQObject t1) -> IO ()
    setHandlerWrapper x0 x1
      = do x0obj <- qWindowsStyleFromPtr x0
           x1obj <- qObjectFromPtr x1
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

foreign import ccall "qtc_QWindowsStyle_setHandler19" qtc_QWindowsStyle_setHandler19 :: Ptr (TQWindowsStyle a) -> CWString -> Ptr (Ptr (TQWindowsStyle x0) -> Ptr (TQObject t1) -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QWindowsStyle19 :: (Ptr (TQWindowsStyle x0) -> Ptr (TQObject t1) -> IO ()) -> IO (FunPtr (Ptr (TQWindowsStyle x0) -> Ptr (TQObject t1) -> IO ()))

foreign import ccall "wrapper" wrapSetHandler_QWindowsStyle19_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QWindowsStyleSc a) (QWindowsStyle x0 -> QObject t1 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QWindowsStyle19 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QWindowsStyle19_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QWindowsStyle_setHandler19 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQWindowsStyle x0) -> Ptr (TQObject t1) -> IO ()
    setHandlerWrapper x0 x1
      = do x0obj <- qWindowsStyleFromPtr x0
           x1obj <- qObjectFromPtr x1
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

instance Qpolish_h (QWindowsStyle ()) ((QApplication t1)) where
 polish_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWindowsStyle_polish1 cobj_x0 cobj_x1

foreign import ccall "qtc_QWindowsStyle_polish1" qtc_QWindowsStyle_polish1 :: Ptr (TQWindowsStyle a) -> Ptr (TQApplication t1) -> IO ()

instance Qpolish_h (QWindowsStyleSc a) ((QApplication t1)) where
 polish_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWindowsStyle_polish1 cobj_x0 cobj_x1

instance Qpolish_h (QWindowsStyle ()) ((QWidget t1)) where
 polish_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWindowsStyle_polish cobj_x0 cobj_x1

foreign import ccall "qtc_QWindowsStyle_polish" qtc_QWindowsStyle_polish :: Ptr (TQWindowsStyle a) -> Ptr (TQWidget t1) -> IO ()

instance Qpolish_h (QWindowsStyleSc a) ((QWidget t1)) where
 polish_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWindowsStyle_polish cobj_x0 cobj_x1

instance QsetHandler (QWindowsStyle ()) (QWindowsStyle x0 -> IO (QPalette t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QWindowsStyle20 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QWindowsStyle20_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QWindowsStyle_setHandler20 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQWindowsStyle x0) -> IO (Ptr (TQPalette t0))
    setHandlerWrapper x0
      = do x0obj <- qWindowsStyleFromPtr x0
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

foreign import ccall "qtc_QWindowsStyle_setHandler20" qtc_QWindowsStyle_setHandler20 :: Ptr (TQWindowsStyle a) -> CWString -> Ptr (Ptr (TQWindowsStyle x0) -> IO (Ptr (TQPalette t0))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QWindowsStyle20 :: (Ptr (TQWindowsStyle x0) -> IO (Ptr (TQPalette t0))) -> IO (FunPtr (Ptr (TQWindowsStyle x0) -> IO (Ptr (TQPalette t0))))

foreign import ccall "wrapper" wrapSetHandler_QWindowsStyle20_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QWindowsStyleSc a) (QWindowsStyle x0 -> IO (QPalette t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QWindowsStyle20 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QWindowsStyle20_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QWindowsStyle_setHandler20 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQWindowsStyle x0) -> IO (Ptr (TQPalette t0))
    setHandlerWrapper x0
      = do x0obj <- qWindowsStyleFromPtr x0
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

instance QstandardPalette_h (QWindowsStyle ()) (()) where
 standardPalette_h x0 ()
  = withQPaletteResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWindowsStyle_standardPalette cobj_x0

foreign import ccall "qtc_QWindowsStyle_standardPalette" qtc_QWindowsStyle_standardPalette :: Ptr (TQWindowsStyle a) -> IO (Ptr (TQPalette ()))

instance QstandardPalette_h (QWindowsStyleSc a) (()) where
 standardPalette_h x0 ()
  = withQPaletteResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWindowsStyle_standardPalette cobj_x0

instance Qunpolish_h (QWindowsStyle ()) ((QApplication t1)) where
 unpolish_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWindowsStyle_unpolish cobj_x0 cobj_x1

foreign import ccall "qtc_QWindowsStyle_unpolish" qtc_QWindowsStyle_unpolish :: Ptr (TQWindowsStyle a) -> Ptr (TQApplication t1) -> IO ()

instance Qunpolish_h (QWindowsStyleSc a) ((QApplication t1)) where
 unpolish_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWindowsStyle_unpolish cobj_x0 cobj_x1

instance Qunpolish_h (QWindowsStyle ()) ((QWidget t1)) where
 unpolish_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWindowsStyle_unpolish1 cobj_x0 cobj_x1

foreign import ccall "qtc_QWindowsStyle_unpolish1" qtc_QWindowsStyle_unpolish1 :: Ptr (TQWindowsStyle a) -> Ptr (TQWidget t1) -> IO ()

instance Qunpolish_h (QWindowsStyleSc a) ((QWidget t1)) where
 unpolish_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWindowsStyle_unpolish1 cobj_x0 cobj_x1

instance QsetHandler (QWindowsStyle ()) (QWindowsStyle x0 -> QEvent t1 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QWindowsStyle21 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QWindowsStyle21_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QWindowsStyle_setHandler21 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQWindowsStyle x0) -> Ptr (TQEvent t1) -> IO (CBool)
    setHandlerWrapper x0 x1
      = do x0obj <- qWindowsStyleFromPtr x0
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

foreign import ccall "qtc_QWindowsStyle_setHandler21" qtc_QWindowsStyle_setHandler21 :: Ptr (TQWindowsStyle a) -> CWString -> Ptr (Ptr (TQWindowsStyle x0) -> Ptr (TQEvent t1) -> IO (CBool)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QWindowsStyle21 :: (Ptr (TQWindowsStyle x0) -> Ptr (TQEvent t1) -> IO (CBool)) -> IO (FunPtr (Ptr (TQWindowsStyle x0) -> Ptr (TQEvent t1) -> IO (CBool)))

foreign import ccall "wrapper" wrapSetHandler_QWindowsStyle21_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QWindowsStyleSc a) (QWindowsStyle x0 -> QEvent t1 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QWindowsStyle21 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QWindowsStyle21_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QWindowsStyle_setHandler21 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQWindowsStyle x0) -> Ptr (TQEvent t1) -> IO (CBool)
    setHandlerWrapper x0 x1
      = do x0obj <- qWindowsStyleFromPtr x0
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

instance Qevent_h (QWindowsStyle ()) ((QEvent t1)) where
 event_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWindowsStyle_event cobj_x0 cobj_x1

foreign import ccall "qtc_QWindowsStyle_event" qtc_QWindowsStyle_event :: Ptr (TQWindowsStyle a) -> Ptr (TQEvent t1) -> IO CBool

instance Qevent_h (QWindowsStyleSc a) ((QEvent t1)) where
 event_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWindowsStyle_event cobj_x0 cobj_x1

instance QsetHandler (QWindowsStyle ()) (QWindowsStyle x0 -> QObject t1 -> QEvent t2 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QWindowsStyle22 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QWindowsStyle22_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QWindowsStyle_setHandler22 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQWindowsStyle x0) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO (CBool)
    setHandlerWrapper x0 x1 x2
      = do x0obj <- qWindowsStyleFromPtr x0
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

foreign import ccall "qtc_QWindowsStyle_setHandler22" qtc_QWindowsStyle_setHandler22 :: Ptr (TQWindowsStyle a) -> CWString -> Ptr (Ptr (TQWindowsStyle x0) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO (CBool)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QWindowsStyle22 :: (Ptr (TQWindowsStyle x0) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO (CBool)) -> IO (FunPtr (Ptr (TQWindowsStyle x0) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO (CBool)))

foreign import ccall "wrapper" wrapSetHandler_QWindowsStyle22_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QWindowsStyleSc a) (QWindowsStyle x0 -> QObject t1 -> QEvent t2 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QWindowsStyle22 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QWindowsStyle22_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QWindowsStyle_setHandler22 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQWindowsStyle x0) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO (CBool)
    setHandlerWrapper x0 x1 x2
      = do x0obj <- qWindowsStyleFromPtr x0
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

instance QeventFilter_h (QWindowsStyle ()) ((QObject t1, QEvent t2)) where
 eventFilter_h x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QWindowsStyle_eventFilter cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QWindowsStyle_eventFilter" qtc_QWindowsStyle_eventFilter :: Ptr (TQWindowsStyle a) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO CBool

instance QeventFilter_h (QWindowsStyleSc a) ((QObject t1, QEvent t2)) where
 eventFilter_h x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QWindowsStyle_eventFilter cobj_x0 cobj_x1 cobj_x2

