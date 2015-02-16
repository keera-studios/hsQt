{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QStyle_h.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:17
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QStyle_h where

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

instance QunSetUserMethod (QStyle ()) where
 unSetUserMethod qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QStyle_unSetUserMethod cobj_qobj (toCInt 0) (toCInt evid)

foreign import ccall "qtc_QStyle_unSetUserMethod" qtc_QStyle_unSetUserMethod :: Ptr (TQStyle a) -> CInt -> CInt -> IO (CBool)

instance QunSetUserMethod (QStyleSc a) where
 unSetUserMethod qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QStyle_unSetUserMethod cobj_qobj (toCInt 0) (toCInt evid)

instance QunSetUserMethodVariant (QStyle ()) where
 unSetUserMethodVariant qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QStyle_unSetUserMethod cobj_qobj (toCInt 1) (toCInt evid)

instance QunSetUserMethodVariant (QStyleSc a) where
 unSetUserMethodVariant qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QStyle_unSetUserMethod cobj_qobj (toCInt 1) (toCInt evid)

instance QunSetUserMethodVariantList (QStyle ()) where
 unSetUserMethodVariantList qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QStyle_unSetUserMethod cobj_qobj (toCInt 2) (toCInt evid)

instance QunSetUserMethodVariantList (QStyleSc a) where
 unSetUserMethodVariantList qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    qtc_QStyle_unSetUserMethod cobj_qobj (toCInt 2) (toCInt evid)

instance QsetUserMethod (QStyle ()) (QStyle x0 -> IO ()) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethod_QStyle setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethod_QStyle_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QStyle_setUserMethod cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQStyle x0) -> IO ()
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

foreign import ccall "qtc_QStyle_setUserMethod" qtc_QStyle_setUserMethod :: Ptr (TQStyle a) -> CInt -> Ptr (Ptr (TQStyle x0) -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetUserMethod_QStyle :: (Ptr (TQStyle x0) -> IO ()) -> IO (FunPtr (Ptr (TQStyle x0) -> IO ()))

foreign import ccall "wrapper" wrapSetUserMethod_QStyle_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetUserMethod (QStyleSc a) (QStyle x0 -> IO ()) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethod_QStyle setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethod_QStyle_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QStyle_setUserMethod cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQStyle x0) -> IO ()
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

instance QsetUserMethod (QStyle ()) (QStyle x0 -> QVariant () -> IO (QVariant ())) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethodVariant_QStyle setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethodVariant_QStyle_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QStyle_setUserMethodVariant cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQStyle x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))
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

foreign import ccall "qtc_QStyle_setUserMethodVariant" qtc_QStyle_setUserMethodVariant :: Ptr (TQStyle a) -> CInt -> Ptr (Ptr (TQStyle x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetUserMethodVariant_QStyle :: (Ptr (TQStyle x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))) -> IO (FunPtr (Ptr (TQStyle x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))))

foreign import ccall "wrapper" wrapSetUserMethodVariant_QStyle_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetUserMethod (QStyleSc a) (QStyle x0 -> QVariant () -> IO (QVariant ())) where
 setUserMethod _eobj _eid _handler
  = do
    funptr  <- wrapSetUserMethodVariant_QStyle setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetUserMethodVariant_QStyle_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      qtc_QStyle_setUserMethodVariant cobj_eobj (toCInt _eid) (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return ()
  where
    setHandlerWrapper :: Ptr (TQStyle x0) -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))
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

instance QunSetHandler (QStyle ()) where 
 unSetHandler qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withCWString evid $ \cstr_evid ->
    qtc_QStyle_unSetHandler cobj_qobj cstr_evid

foreign import ccall "qtc_QStyle_unSetHandler" qtc_QStyle_unSetHandler :: Ptr (TQStyle a) -> CWString -> IO (CBool)

instance QunSetHandler (QStyleSc a) where 
 unSetHandler qobj evid
  = withBoolResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withCWString evid $ \cstr_evid ->
    qtc_QStyle_unSetHandler cobj_qobj cstr_evid

instance QsetHandler (QStyle ()) (QStyle x0 -> ComplexControl -> QStyleOption t2 -> QPainter t3 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QStyle1 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QStyle1_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QStyle_setHandler1 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQStyle x0) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQPainter t3) -> IO ()
    setHandlerWrapper x0 x1 x2 x3
      = do x0obj <- qStyleFromPtr x0
           let x1enum = qEnum_fromInt $ fromCLong x1
           x2obj <- objectFromPtr_nf x2
           x3obj <- objectFromPtr_nf x3
           if (objectIsNull x0obj)
            then return ()
            else _handler x0obj x1enum x2obj x3obj

    setHandlerWrapper_d :: Ptr fun -> Ptr () -> Ptr fun_d -> IO ()
    setHandlerWrapper_d funptr stptr funptr_d
      = do when (stptr/=ptrNull)
            (freeStablePtr (castPtrToStablePtr stptr))
           when (funptr/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr))
           when (funptr_d/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr_d))
           return ()

foreign import ccall "qtc_QStyle_setHandler1" qtc_QStyle_setHandler1 :: Ptr (TQStyle a) -> CWString -> Ptr (Ptr (TQStyle x0) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQPainter t3) -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QStyle1 :: (Ptr (TQStyle x0) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQPainter t3) -> IO ()) -> IO (FunPtr (Ptr (TQStyle x0) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQPainter t3) -> IO ()))

foreign import ccall "wrapper" wrapSetHandler_QStyle1_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QStyleSc a) (QStyle x0 -> ComplexControl -> QStyleOption t2 -> QPainter t3 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QStyle1 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QStyle1_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QStyle_setHandler1 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQStyle x0) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQPainter t3) -> IO ()
    setHandlerWrapper x0 x1 x2 x3
      = do x0obj <- qStyleFromPtr x0
           let x1enum = qEnum_fromInt $ fromCLong x1
           x2obj <- objectFromPtr_nf x2
           x3obj <- objectFromPtr_nf x3
           if (objectIsNull x0obj)
            then return ()
            else _handler x0obj x1enum x2obj x3obj

    setHandlerWrapper_d :: Ptr fun -> Ptr () -> Ptr fun_d -> IO ()
    setHandlerWrapper_d funptr stptr funptr_d
      = do when (stptr/=ptrNull)
            (freeStablePtr (castPtrToStablePtr stptr))
           when (funptr/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr))
           when (funptr_d/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr_d))
           return ()

instance QsetHandler (QStyle ()) (QStyle x0 -> ComplexControl -> QStyleOption t2 -> QPainter t3 -> QObject t4 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QStyle2 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QStyle2_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QStyle_setHandler2 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQStyle x0) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQPainter t3) -> Ptr (TQObject t4) -> IO ()
    setHandlerWrapper x0 x1 x2 x3 x4
      = do x0obj <- qStyleFromPtr x0
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

foreign import ccall "qtc_QStyle_setHandler2" qtc_QStyle_setHandler2 :: Ptr (TQStyle a) -> CWString -> Ptr (Ptr (TQStyle x0) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQPainter t3) -> Ptr (TQObject t4) -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QStyle2 :: (Ptr (TQStyle x0) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQPainter t3) -> Ptr (TQObject t4) -> IO ()) -> IO (FunPtr (Ptr (TQStyle x0) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQPainter t3) -> Ptr (TQObject t4) -> IO ()))

foreign import ccall "wrapper" wrapSetHandler_QStyle2_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QStyleSc a) (QStyle x0 -> ComplexControl -> QStyleOption t2 -> QPainter t3 -> QObject t4 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QStyle2 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QStyle2_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QStyle_setHandler2 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQStyle x0) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQPainter t3) -> Ptr (TQObject t4) -> IO ()
    setHandlerWrapper x0 x1 x2 x3 x4
      = do x0obj <- qStyleFromPtr x0
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

instance QdrawComplexControl_h (QStyle ()) ((ComplexControl, QStyleOptionComplex t2, QPainter t3)) where
 drawComplexControl_h x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QStyle_drawComplexControl cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 cobj_x3

foreign import ccall "qtc_QStyle_drawComplexControl" qtc_QStyle_drawComplexControl :: Ptr (TQStyle a) -> CLong -> Ptr (TQStyleOptionComplex t2) -> Ptr (TQPainter t3) -> IO ()

instance QdrawComplexControl_h (QStyleSc a) ((ComplexControl, QStyleOptionComplex t2, QPainter t3)) where
 drawComplexControl_h x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QStyle_drawComplexControl cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 cobj_x3

instance QdrawComplexControl_h (QStyle ()) ((ComplexControl, QStyleOptionComplex t2, QPainter t3, QWidget t4)) where
 drawComplexControl_h x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    withObjectPtr x4 $ \cobj_x4 ->
    qtc_QStyle_drawComplexControl1 cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 cobj_x3 cobj_x4

foreign import ccall "qtc_QStyle_drawComplexControl1" qtc_QStyle_drawComplexControl1 :: Ptr (TQStyle a) -> CLong -> Ptr (TQStyleOptionComplex t2) -> Ptr (TQPainter t3) -> Ptr (TQWidget t4) -> IO ()

instance QdrawComplexControl_h (QStyleSc a) ((ComplexControl, QStyleOptionComplex t2, QPainter t3, QWidget t4)) where
 drawComplexControl_h x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    withObjectPtr x4 $ \cobj_x4 ->
    qtc_QStyle_drawComplexControl1 cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 cobj_x3 cobj_x4

instance QsetHandler (QStyle ()) (QStyle x0 -> ControlElement -> QStyleOption t2 -> QPainter t3 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QStyle3 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QStyle3_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QStyle_setHandler3 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQStyle x0) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQPainter t3) -> IO ()
    setHandlerWrapper x0 x1 x2 x3
      = do x0obj <- qStyleFromPtr x0
           let x1enum = qEnum_fromInt $ fromCLong x1
           x2obj <- objectFromPtr_nf x2
           x3obj <- objectFromPtr_nf x3
           if (objectIsNull x0obj)
            then return ()
            else _handler x0obj x1enum x2obj x3obj

    setHandlerWrapper_d :: Ptr fun -> Ptr () -> Ptr fun_d -> IO ()
    setHandlerWrapper_d funptr stptr funptr_d
      = do when (stptr/=ptrNull)
            (freeStablePtr (castPtrToStablePtr stptr))
           when (funptr/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr))
           when (funptr_d/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr_d))
           return ()

foreign import ccall "qtc_QStyle_setHandler3" qtc_QStyle_setHandler3 :: Ptr (TQStyle a) -> CWString -> Ptr (Ptr (TQStyle x0) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQPainter t3) -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QStyle3 :: (Ptr (TQStyle x0) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQPainter t3) -> IO ()) -> IO (FunPtr (Ptr (TQStyle x0) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQPainter t3) -> IO ()))

foreign import ccall "wrapper" wrapSetHandler_QStyle3_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QStyleSc a) (QStyle x0 -> ControlElement -> QStyleOption t2 -> QPainter t3 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QStyle3 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QStyle3_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QStyle_setHandler3 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQStyle x0) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQPainter t3) -> IO ()
    setHandlerWrapper x0 x1 x2 x3
      = do x0obj <- qStyleFromPtr x0
           let x1enum = qEnum_fromInt $ fromCLong x1
           x2obj <- objectFromPtr_nf x2
           x3obj <- objectFromPtr_nf x3
           if (objectIsNull x0obj)
            then return ()
            else _handler x0obj x1enum x2obj x3obj

    setHandlerWrapper_d :: Ptr fun -> Ptr () -> Ptr fun_d -> IO ()
    setHandlerWrapper_d funptr stptr funptr_d
      = do when (stptr/=ptrNull)
            (freeStablePtr (castPtrToStablePtr stptr))
           when (funptr/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr))
           when (funptr_d/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr_d))
           return ()

instance QsetHandler (QStyle ()) (QStyle x0 -> ControlElement -> QStyleOption t2 -> QPainter t3 -> QObject t4 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QStyle4 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QStyle4_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QStyle_setHandler4 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQStyle x0) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQPainter t3) -> Ptr (TQObject t4) -> IO ()
    setHandlerWrapper x0 x1 x2 x3 x4
      = do x0obj <- qStyleFromPtr x0
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

foreign import ccall "qtc_QStyle_setHandler4" qtc_QStyle_setHandler4 :: Ptr (TQStyle a) -> CWString -> Ptr (Ptr (TQStyle x0) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQPainter t3) -> Ptr (TQObject t4) -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QStyle4 :: (Ptr (TQStyle x0) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQPainter t3) -> Ptr (TQObject t4) -> IO ()) -> IO (FunPtr (Ptr (TQStyle x0) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQPainter t3) -> Ptr (TQObject t4) -> IO ()))

foreign import ccall "wrapper" wrapSetHandler_QStyle4_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QStyleSc a) (QStyle x0 -> ControlElement -> QStyleOption t2 -> QPainter t3 -> QObject t4 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QStyle4 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QStyle4_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QStyle_setHandler4 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQStyle x0) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQPainter t3) -> Ptr (TQObject t4) -> IO ()
    setHandlerWrapper x0 x1 x2 x3 x4
      = do x0obj <- qStyleFromPtr x0
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

instance QdrawControl_h (QStyle ()) ((ControlElement, QStyleOption t2, QPainter t3)) where
 drawControl_h x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QStyle_drawControl cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 cobj_x3

foreign import ccall "qtc_QStyle_drawControl" qtc_QStyle_drawControl :: Ptr (TQStyle a) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQPainter t3) -> IO ()

instance QdrawControl_h (QStyleSc a) ((ControlElement, QStyleOption t2, QPainter t3)) where
 drawControl_h x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QStyle_drawControl cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 cobj_x3

instance QdrawControl_h (QStyle ()) ((ControlElement, QStyleOption t2, QPainter t3, QWidget t4)) where
 drawControl_h x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    withObjectPtr x4 $ \cobj_x4 ->
    qtc_QStyle_drawControl1 cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 cobj_x3 cobj_x4

foreign import ccall "qtc_QStyle_drawControl1" qtc_QStyle_drawControl1 :: Ptr (TQStyle a) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQPainter t3) -> Ptr (TQWidget t4) -> IO ()

instance QdrawControl_h (QStyleSc a) ((ControlElement, QStyleOption t2, QPainter t3, QWidget t4)) where
 drawControl_h x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    withObjectPtr x4 $ \cobj_x4 ->
    qtc_QStyle_drawControl1 cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 cobj_x3 cobj_x4

instance QsetHandler (QStyle ()) (QStyle x0 -> QPainter t1 -> QRect t2 -> Int -> QPaintDevice t4 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QStyle5 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QStyle5_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QStyle_setHandler5 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQStyle x0) -> Ptr (TQPainter t1) -> Ptr (TQRect t2) -> CInt -> Ptr (TQPaintDevice t4) -> IO ()
    setHandlerWrapper x0 x1 x2 x3 x4
      = do x0obj <- qStyleFromPtr x0
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

foreign import ccall "qtc_QStyle_setHandler5" qtc_QStyle_setHandler5 :: Ptr (TQStyle a) -> CWString -> Ptr (Ptr (TQStyle x0) -> Ptr (TQPainter t1) -> Ptr (TQRect t2) -> CInt -> Ptr (TQPaintDevice t4) -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QStyle5 :: (Ptr (TQStyle x0) -> Ptr (TQPainter t1) -> Ptr (TQRect t2) -> CInt -> Ptr (TQPaintDevice t4) -> IO ()) -> IO (FunPtr (Ptr (TQStyle x0) -> Ptr (TQPainter t1) -> Ptr (TQRect t2) -> CInt -> Ptr (TQPaintDevice t4) -> IO ()))

foreign import ccall "wrapper" wrapSetHandler_QStyle5_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QStyleSc a) (QStyle x0 -> QPainter t1 -> QRect t2 -> Int -> QPaintDevice t4 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QStyle5 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QStyle5_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QStyle_setHandler5 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQStyle x0) -> Ptr (TQPainter t1) -> Ptr (TQRect t2) -> CInt -> Ptr (TQPaintDevice t4) -> IO ()
    setHandlerWrapper x0 x1 x2 x3 x4
      = do x0obj <- qStyleFromPtr x0
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

instance QqdrawItemPixmap_h (QStyle ()) ((QPainter t1, QRect t2, Int, QPixmap t4)) where
 qdrawItemPixmap_h x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x4 $ \cobj_x4 ->
    qtc_QStyle_drawItemPixmap cobj_x0 cobj_x1 cobj_x2 (toCInt x3) cobj_x4

foreign import ccall "qtc_QStyle_drawItemPixmap" qtc_QStyle_drawItemPixmap :: Ptr (TQStyle a) -> Ptr (TQPainter t1) -> Ptr (TQRect t2) -> CInt -> Ptr (TQPixmap t4) -> IO ()

instance QqdrawItemPixmap_h (QStyleSc a) ((QPainter t1, QRect t2, Int, QPixmap t4)) where
 qdrawItemPixmap_h x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x4 $ \cobj_x4 ->
    qtc_QStyle_drawItemPixmap cobj_x0 cobj_x1 cobj_x2 (toCInt x3) cobj_x4

instance QdrawItemPixmap_h (QStyle ()) ((QPainter t1, Rect, Int, QPixmap t4)) where
 drawItemPixmap_h x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCRect x2 $ \crect_x2_x crect_x2_y  crect_x2_w crect_x2_h -> 
    withObjectPtr x4 $ \cobj_x4 ->
    qtc_QStyle_drawItemPixmap_qth cobj_x0 cobj_x1 crect_x2_x crect_x2_y crect_x2_w crect_x2_h  (toCInt x3) cobj_x4

foreign import ccall "qtc_QStyle_drawItemPixmap_qth" qtc_QStyle_drawItemPixmap_qth :: Ptr (TQStyle a) -> Ptr (TQPainter t1) -> CInt -> CInt -> CInt -> CInt -> CInt -> Ptr (TQPixmap t4) -> IO ()

instance QdrawItemPixmap_h (QStyleSc a) ((QPainter t1, Rect, Int, QPixmap t4)) where
 drawItemPixmap_h x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCRect x2 $ \crect_x2_x crect_x2_y  crect_x2_w crect_x2_h -> 
    withObjectPtr x4 $ \cobj_x4 ->
    qtc_QStyle_drawItemPixmap_qth cobj_x0 cobj_x1 crect_x2_x crect_x2_y crect_x2_w crect_x2_h  (toCInt x3) cobj_x4

instance QsetHandler (QStyle ()) (QStyle x0 -> QPainter t1 -> QRect t2 -> Int -> QPalette t4 -> Bool -> String -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QStyle6 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QStyle6_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QStyle_setHandler6 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQStyle x0) -> Ptr (TQPainter t1) -> Ptr (TQRect t2) -> CInt -> Ptr (TQPalette t4) -> CBool -> Ptr (TQString ()) -> IO ()
    setHandlerWrapper x0 x1 x2 x3 x4 x5 x6
      = do x0obj <- qStyleFromPtr x0
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

foreign import ccall "qtc_QStyle_setHandler6" qtc_QStyle_setHandler6 :: Ptr (TQStyle a) -> CWString -> Ptr (Ptr (TQStyle x0) -> Ptr (TQPainter t1) -> Ptr (TQRect t2) -> CInt -> Ptr (TQPalette t4) -> CBool -> Ptr (TQString ()) -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QStyle6 :: (Ptr (TQStyle x0) -> Ptr (TQPainter t1) -> Ptr (TQRect t2) -> CInt -> Ptr (TQPalette t4) -> CBool -> Ptr (TQString ()) -> IO ()) -> IO (FunPtr (Ptr (TQStyle x0) -> Ptr (TQPainter t1) -> Ptr (TQRect t2) -> CInt -> Ptr (TQPalette t4) -> CBool -> Ptr (TQString ()) -> IO ()))

foreign import ccall "wrapper" wrapSetHandler_QStyle6_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QStyleSc a) (QStyle x0 -> QPainter t1 -> QRect t2 -> Int -> QPalette t4 -> Bool -> String -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QStyle6 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QStyle6_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QStyle_setHandler6 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQStyle x0) -> Ptr (TQPainter t1) -> Ptr (TQRect t2) -> CInt -> Ptr (TQPalette t4) -> CBool -> Ptr (TQString ()) -> IO ()
    setHandlerWrapper x0 x1 x2 x3 x4 x5 x6
      = do x0obj <- qStyleFromPtr x0
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

instance QsetHandler (QStyle ()) (QStyle x0 -> QPainter t1 -> QRect t2 -> Int -> QPalette t4 -> Bool -> String -> ColorRole -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QStyle7 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QStyle7_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QStyle_setHandler7 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQStyle x0) -> Ptr (TQPainter t1) -> Ptr (TQRect t2) -> CInt -> Ptr (TQPalette t4) -> CBool -> Ptr (TQString ()) -> CLong -> IO ()
    setHandlerWrapper x0 x1 x2 x3 x4 x5 x6 x7
      = do x0obj <- qStyleFromPtr x0
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

foreign import ccall "qtc_QStyle_setHandler7" qtc_QStyle_setHandler7 :: Ptr (TQStyle a) -> CWString -> Ptr (Ptr (TQStyle x0) -> Ptr (TQPainter t1) -> Ptr (TQRect t2) -> CInt -> Ptr (TQPalette t4) -> CBool -> Ptr (TQString ()) -> CLong -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QStyle7 :: (Ptr (TQStyle x0) -> Ptr (TQPainter t1) -> Ptr (TQRect t2) -> CInt -> Ptr (TQPalette t4) -> CBool -> Ptr (TQString ()) -> CLong -> IO ()) -> IO (FunPtr (Ptr (TQStyle x0) -> Ptr (TQPainter t1) -> Ptr (TQRect t2) -> CInt -> Ptr (TQPalette t4) -> CBool -> Ptr (TQString ()) -> CLong -> IO ()))

foreign import ccall "wrapper" wrapSetHandler_QStyle7_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QStyleSc a) (QStyle x0 -> QPainter t1 -> QRect t2 -> Int -> QPalette t4 -> Bool -> String -> ColorRole -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QStyle7 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QStyle7_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QStyle_setHandler7 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQStyle x0) -> Ptr (TQPainter t1) -> Ptr (TQRect t2) -> CInt -> Ptr (TQPalette t4) -> CBool -> Ptr (TQString ()) -> CLong -> IO ()
    setHandlerWrapper x0 x1 x2 x3 x4 x5 x6 x7
      = do x0obj <- qStyleFromPtr x0
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

instance QqdrawItemText_h (QStyle ()) ((QPainter t1, QRect t2, Int, QPalette t4, Bool, String)) where
 qdrawItemText_h x0 (x1, x2, x3, x4, x5, x6)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x4 $ \cobj_x4 ->
    withCWString x6 $ \cstr_x6 ->
    qtc_QStyle_drawItemText cobj_x0 cobj_x1 cobj_x2 (toCInt x3) cobj_x4 (toCBool x5) cstr_x6

foreign import ccall "qtc_QStyle_drawItemText" qtc_QStyle_drawItemText :: Ptr (TQStyle a) -> Ptr (TQPainter t1) -> Ptr (TQRect t2) -> CInt -> Ptr (TQPalette t4) -> CBool -> CWString -> IO ()

instance QqdrawItemText_h (QStyleSc a) ((QPainter t1, QRect t2, Int, QPalette t4, Bool, String)) where
 qdrawItemText_h x0 (x1, x2, x3, x4, x5, x6)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x4 $ \cobj_x4 ->
    withCWString x6 $ \cstr_x6 ->
    qtc_QStyle_drawItemText cobj_x0 cobj_x1 cobj_x2 (toCInt x3) cobj_x4 (toCBool x5) cstr_x6

instance QqdrawItemText_h (QStyle ()) ((QPainter t1, QRect t2, Int, QPalette t4, Bool, String, ColorRole)) where
 qdrawItemText_h x0 (x1, x2, x3, x4, x5, x6, x7)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x4 $ \cobj_x4 ->
    withCWString x6 $ \cstr_x6 ->
    qtc_QStyle_drawItemText1 cobj_x0 cobj_x1 cobj_x2 (toCInt x3) cobj_x4 (toCBool x5) cstr_x6 (toCLong $ qEnum_toInt x7)

foreign import ccall "qtc_QStyle_drawItemText1" qtc_QStyle_drawItemText1 :: Ptr (TQStyle a) -> Ptr (TQPainter t1) -> Ptr (TQRect t2) -> CInt -> Ptr (TQPalette t4) -> CBool -> CWString -> CLong -> IO ()

instance QqdrawItemText_h (QStyleSc a) ((QPainter t1, QRect t2, Int, QPalette t4, Bool, String, ColorRole)) where
 qdrawItemText_h x0 (x1, x2, x3, x4, x5, x6, x7)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x4 $ \cobj_x4 ->
    withCWString x6 $ \cstr_x6 ->
    qtc_QStyle_drawItemText1 cobj_x0 cobj_x1 cobj_x2 (toCInt x3) cobj_x4 (toCBool x5) cstr_x6 (toCLong $ qEnum_toInt x7)

instance QdrawItemText_h (QStyle ()) ((QPainter t1, Rect, Int, QPalette t4, Bool, String)) where
 drawItemText_h x0 (x1, x2, x3, x4, x5, x6)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCRect x2 $ \crect_x2_x crect_x2_y  crect_x2_w crect_x2_h -> 
    withObjectPtr x4 $ \cobj_x4 ->
    withCWString x6 $ \cstr_x6 ->
    qtc_QStyle_drawItemText_qth cobj_x0 cobj_x1 crect_x2_x crect_x2_y crect_x2_w crect_x2_h  (toCInt x3) cobj_x4 (toCBool x5) cstr_x6

foreign import ccall "qtc_QStyle_drawItemText_qth" qtc_QStyle_drawItemText_qth :: Ptr (TQStyle a) -> Ptr (TQPainter t1) -> CInt -> CInt -> CInt -> CInt -> CInt -> Ptr (TQPalette t4) -> CBool -> CWString -> IO ()

instance QdrawItemText_h (QStyleSc a) ((QPainter t1, Rect, Int, QPalette t4, Bool, String)) where
 drawItemText_h x0 (x1, x2, x3, x4, x5, x6)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCRect x2 $ \crect_x2_x crect_x2_y  crect_x2_w crect_x2_h -> 
    withObjectPtr x4 $ \cobj_x4 ->
    withCWString x6 $ \cstr_x6 ->
    qtc_QStyle_drawItemText_qth cobj_x0 cobj_x1 crect_x2_x crect_x2_y crect_x2_w crect_x2_h  (toCInt x3) cobj_x4 (toCBool x5) cstr_x6

instance QdrawItemText_h (QStyle ()) ((QPainter t1, Rect, Int, QPalette t4, Bool, String, ColorRole)) where
 drawItemText_h x0 (x1, x2, x3, x4, x5, x6, x7)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCRect x2 $ \crect_x2_x crect_x2_y  crect_x2_w crect_x2_h -> 
    withObjectPtr x4 $ \cobj_x4 ->
    withCWString x6 $ \cstr_x6 ->
    qtc_QStyle_drawItemText1_qth cobj_x0 cobj_x1 crect_x2_x crect_x2_y crect_x2_w crect_x2_h  (toCInt x3) cobj_x4 (toCBool x5) cstr_x6 (toCLong $ qEnum_toInt x7)

foreign import ccall "qtc_QStyle_drawItemText1_qth" qtc_QStyle_drawItemText1_qth :: Ptr (TQStyle a) -> Ptr (TQPainter t1) -> CInt -> CInt -> CInt -> CInt -> CInt -> Ptr (TQPalette t4) -> CBool -> CWString -> CLong -> IO ()

instance QdrawItemText_h (QStyleSc a) ((QPainter t1, Rect, Int, QPalette t4, Bool, String, ColorRole)) where
 drawItemText_h x0 (x1, x2, x3, x4, x5, x6, x7)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCRect x2 $ \crect_x2_x crect_x2_y  crect_x2_w crect_x2_h -> 
    withObjectPtr x4 $ \cobj_x4 ->
    withCWString x6 $ \cstr_x6 ->
    qtc_QStyle_drawItemText1_qth cobj_x0 cobj_x1 crect_x2_x crect_x2_y crect_x2_w crect_x2_h  (toCInt x3) cobj_x4 (toCBool x5) cstr_x6 (toCLong $ qEnum_toInt x7)

instance QsetHandler (QStyle ()) (QStyle x0 -> PrimitiveElement -> QStyleOption t2 -> QPainter t3 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QStyle8 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QStyle8_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QStyle_setHandler8 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQStyle x0) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQPainter t3) -> IO ()
    setHandlerWrapper x0 x1 x2 x3
      = do x0obj <- qStyleFromPtr x0
           let x1enum = qEnum_fromInt $ fromCLong x1
           x2obj <- objectFromPtr_nf x2
           x3obj <- objectFromPtr_nf x3
           if (objectIsNull x0obj)
            then return ()
            else _handler x0obj x1enum x2obj x3obj

    setHandlerWrapper_d :: Ptr fun -> Ptr () -> Ptr fun_d -> IO ()
    setHandlerWrapper_d funptr stptr funptr_d
      = do when (stptr/=ptrNull)
            (freeStablePtr (castPtrToStablePtr stptr))
           when (funptr/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr))
           when (funptr_d/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr_d))
           return ()

foreign import ccall "qtc_QStyle_setHandler8" qtc_QStyle_setHandler8 :: Ptr (TQStyle a) -> CWString -> Ptr (Ptr (TQStyle x0) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQPainter t3) -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QStyle8 :: (Ptr (TQStyle x0) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQPainter t3) -> IO ()) -> IO (FunPtr (Ptr (TQStyle x0) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQPainter t3) -> IO ()))

foreign import ccall "wrapper" wrapSetHandler_QStyle8_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QStyleSc a) (QStyle x0 -> PrimitiveElement -> QStyleOption t2 -> QPainter t3 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QStyle8 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QStyle8_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QStyle_setHandler8 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQStyle x0) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQPainter t3) -> IO ()
    setHandlerWrapper x0 x1 x2 x3
      = do x0obj <- qStyleFromPtr x0
           let x1enum = qEnum_fromInt $ fromCLong x1
           x2obj <- objectFromPtr_nf x2
           x3obj <- objectFromPtr_nf x3
           if (objectIsNull x0obj)
            then return ()
            else _handler x0obj x1enum x2obj x3obj

    setHandlerWrapper_d :: Ptr fun -> Ptr () -> Ptr fun_d -> IO ()
    setHandlerWrapper_d funptr stptr funptr_d
      = do when (stptr/=ptrNull)
            (freeStablePtr (castPtrToStablePtr stptr))
           when (funptr/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr))
           when (funptr_d/=ptrNull)
            (freeHaskellFunPtr (castPtrToFunPtr funptr_d))
           return ()

instance QsetHandler (QStyle ()) (QStyle x0 -> PrimitiveElement -> QStyleOption t2 -> QPainter t3 -> QObject t4 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QStyle9 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QStyle9_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QStyle_setHandler9 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQStyle x0) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQPainter t3) -> Ptr (TQObject t4) -> IO ()
    setHandlerWrapper x0 x1 x2 x3 x4
      = do x0obj <- qStyleFromPtr x0
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

foreign import ccall "qtc_QStyle_setHandler9" qtc_QStyle_setHandler9 :: Ptr (TQStyle a) -> CWString -> Ptr (Ptr (TQStyle x0) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQPainter t3) -> Ptr (TQObject t4) -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QStyle9 :: (Ptr (TQStyle x0) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQPainter t3) -> Ptr (TQObject t4) -> IO ()) -> IO (FunPtr (Ptr (TQStyle x0) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQPainter t3) -> Ptr (TQObject t4) -> IO ()))

foreign import ccall "wrapper" wrapSetHandler_QStyle9_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QStyleSc a) (QStyle x0 -> PrimitiveElement -> QStyleOption t2 -> QPainter t3 -> QObject t4 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QStyle9 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QStyle9_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QStyle_setHandler9 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQStyle x0) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQPainter t3) -> Ptr (TQObject t4) -> IO ()
    setHandlerWrapper x0 x1 x2 x3 x4
      = do x0obj <- qStyleFromPtr x0
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

instance QdrawPrimitive_h (QStyle ()) ((PrimitiveElement, QStyleOption t2, QPainter t3)) where
 drawPrimitive_h x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QStyle_drawPrimitive cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 cobj_x3

foreign import ccall "qtc_QStyle_drawPrimitive" qtc_QStyle_drawPrimitive :: Ptr (TQStyle a) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQPainter t3) -> IO ()

instance QdrawPrimitive_h (QStyleSc a) ((PrimitiveElement, QStyleOption t2, QPainter t3)) where
 drawPrimitive_h x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QStyle_drawPrimitive cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 cobj_x3

instance QdrawPrimitive_h (QStyle ()) ((PrimitiveElement, QStyleOption t2, QPainter t3, QWidget t4)) where
 drawPrimitive_h x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    withObjectPtr x4 $ \cobj_x4 ->
    qtc_QStyle_drawPrimitive1 cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 cobj_x3 cobj_x4

foreign import ccall "qtc_QStyle_drawPrimitive1" qtc_QStyle_drawPrimitive1 :: Ptr (TQStyle a) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQPainter t3) -> Ptr (TQWidget t4) -> IO ()

instance QdrawPrimitive_h (QStyleSc a) ((PrimitiveElement, QStyleOption t2, QPainter t3, QWidget t4)) where
 drawPrimitive_h x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    withObjectPtr x4 $ \cobj_x4 ->
    qtc_QStyle_drawPrimitive1 cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 cobj_x3 cobj_x4

instance QsetHandler (QStyle ()) (QStyle x0 -> QIconMode -> QPaintDevice t2 -> QStyleOption t3 -> IO (QPaintDevice t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QStyle10 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QStyle10_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QStyle_setHandler10 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQStyle x0) -> CLong -> Ptr (TQPaintDevice t2) -> Ptr (TQStyleOption t3) -> IO (Ptr (TQPaintDevice t0))
    setHandlerWrapper x0 x1 x2 x3
      = do x0obj <- qStyleFromPtr x0
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

foreign import ccall "qtc_QStyle_setHandler10" qtc_QStyle_setHandler10 :: Ptr (TQStyle a) -> CWString -> Ptr (Ptr (TQStyle x0) -> CLong -> Ptr (TQPaintDevice t2) -> Ptr (TQStyleOption t3) -> IO (Ptr (TQPaintDevice t0))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QStyle10 :: (Ptr (TQStyle x0) -> CLong -> Ptr (TQPaintDevice t2) -> Ptr (TQStyleOption t3) -> IO (Ptr (TQPaintDevice t0))) -> IO (FunPtr (Ptr (TQStyle x0) -> CLong -> Ptr (TQPaintDevice t2) -> Ptr (TQStyleOption t3) -> IO (Ptr (TQPaintDevice t0))))

foreign import ccall "wrapper" wrapSetHandler_QStyle10_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QStyleSc a) (QStyle x0 -> QIconMode -> QPaintDevice t2 -> QStyleOption t3 -> IO (QPaintDevice t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QStyle10 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QStyle10_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QStyle_setHandler10 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQStyle x0) -> CLong -> Ptr (TQPaintDevice t2) -> Ptr (TQStyleOption t3) -> IO (Ptr (TQPaintDevice t0))
    setHandlerWrapper x0 x1 x2 x3
      = do x0obj <- qStyleFromPtr x0
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

instance QgeneratedIconPixmap_h (QStyle ()) ((QIconMode, QPixmap t2, QStyleOption t3)) where
 generatedIconPixmap_h x0 (x1, x2, x3)
  = withQPixmapResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QStyle_generatedIconPixmap cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 cobj_x3

foreign import ccall "qtc_QStyle_generatedIconPixmap" qtc_QStyle_generatedIconPixmap :: Ptr (TQStyle a) -> CLong -> Ptr (TQPixmap t2) -> Ptr (TQStyleOption t3) -> IO (Ptr (TQPixmap ()))

instance QgeneratedIconPixmap_h (QStyleSc a) ((QIconMode, QPixmap t2, QStyleOption t3)) where
 generatedIconPixmap_h x0 (x1, x2, x3)
  = withQPixmapResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QStyle_generatedIconPixmap cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 cobj_x3

instance QsetHandler (QStyle ()) (QStyle x0 -> ComplexControl -> QStyleOption t2 -> QPoint t3 -> IO (SubControl)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QStyle11 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QStyle11_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QStyle_setHandler11 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQStyle x0) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQPoint t3) -> IO (CLong)
    setHandlerWrapper x0 x1 x2 x3
      = do x0obj <- qStyleFromPtr x0
           let x1enum = qEnum_fromInt $ fromCLong x1
           x2obj <- objectFromPtr_nf x2
           x3obj <- objectFromPtr_nf x3
           let rv =
                if (objectIsNull x0obj)
                 then withQEnumResult $ return $ toCLong 0
                 else _handler x0obj x1enum x2obj x3obj
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

foreign import ccall "qtc_QStyle_setHandler11" qtc_QStyle_setHandler11 :: Ptr (TQStyle a) -> CWString -> Ptr (Ptr (TQStyle x0) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQPoint t3) -> IO (CLong)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QStyle11 :: (Ptr (TQStyle x0) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQPoint t3) -> IO (CLong)) -> IO (FunPtr (Ptr (TQStyle x0) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQPoint t3) -> IO (CLong)))

foreign import ccall "wrapper" wrapSetHandler_QStyle11_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QStyleSc a) (QStyle x0 -> ComplexControl -> QStyleOption t2 -> QPoint t3 -> IO (SubControl)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QStyle11 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QStyle11_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QStyle_setHandler11 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQStyle x0) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQPoint t3) -> IO (CLong)
    setHandlerWrapper x0 x1 x2 x3
      = do x0obj <- qStyleFromPtr x0
           let x1enum = qEnum_fromInt $ fromCLong x1
           x2obj <- objectFromPtr_nf x2
           x3obj <- objectFromPtr_nf x3
           let rv =
                if (objectIsNull x0obj)
                 then withQEnumResult $ return $ toCLong 0
                 else _handler x0obj x1enum x2obj x3obj
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

instance QsetHandler (QStyle ()) (QStyle x0 -> ComplexControl -> QStyleOption t2 -> QPoint t3 -> QObject t4 -> IO (SubControl)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QStyle12 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QStyle12_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QStyle_setHandler12 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQStyle x0) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQPoint t3) -> Ptr (TQObject t4) -> IO (CLong)
    setHandlerWrapper x0 x1 x2 x3 x4
      = do x0obj <- qStyleFromPtr x0
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

foreign import ccall "qtc_QStyle_setHandler12" qtc_QStyle_setHandler12 :: Ptr (TQStyle a) -> CWString -> Ptr (Ptr (TQStyle x0) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQPoint t3) -> Ptr (TQObject t4) -> IO (CLong)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QStyle12 :: (Ptr (TQStyle x0) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQPoint t3) -> Ptr (TQObject t4) -> IO (CLong)) -> IO (FunPtr (Ptr (TQStyle x0) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQPoint t3) -> Ptr (TQObject t4) -> IO (CLong)))

foreign import ccall "wrapper" wrapSetHandler_QStyle12_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QStyleSc a) (QStyle x0 -> ComplexControl -> QStyleOption t2 -> QPoint t3 -> QObject t4 -> IO (SubControl)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QStyle12 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QStyle12_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QStyle_setHandler12 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQStyle x0) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQPoint t3) -> Ptr (TQObject t4) -> IO (CLong)
    setHandlerWrapper x0 x1 x2 x3 x4
      = do x0obj <- qStyleFromPtr x0
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

instance QhitTestComplexControl_h (QStyle ()) ((ComplexControl, QStyleOptionComplex t2, Point)) where
 hitTestComplexControl_h x0 (x1, x2, x3)
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withCPoint x3 $ \cpoint_x3_x cpoint_x3_y -> 
    qtc_QStyle_hitTestComplexControl_qth cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 cpoint_x3_x cpoint_x3_y 

foreign import ccall "qtc_QStyle_hitTestComplexControl_qth" qtc_QStyle_hitTestComplexControl_qth :: Ptr (TQStyle a) -> CLong -> Ptr (TQStyleOptionComplex t2) -> CInt -> CInt -> IO CLong

instance QhitTestComplexControl_h (QStyleSc a) ((ComplexControl, QStyleOptionComplex t2, Point)) where
 hitTestComplexControl_h x0 (x1, x2, x3)
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withCPoint x3 $ \cpoint_x3_x cpoint_x3_y -> 
    qtc_QStyle_hitTestComplexControl_qth cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 cpoint_x3_x cpoint_x3_y 

instance QhitTestComplexControl_h (QStyle ()) ((ComplexControl, QStyleOptionComplex t2, Point, QWidget t4)) where
 hitTestComplexControl_h x0 (x1, x2, x3, x4)
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withCPoint x3 $ \cpoint_x3_x cpoint_x3_y -> 
    withObjectPtr x4 $ \cobj_x4 ->
    qtc_QStyle_hitTestComplexControl1_qth cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 cpoint_x3_x cpoint_x3_y  cobj_x4

foreign import ccall "qtc_QStyle_hitTestComplexControl1_qth" qtc_QStyle_hitTestComplexControl1_qth :: Ptr (TQStyle a) -> CLong -> Ptr (TQStyleOptionComplex t2) -> CInt -> CInt -> Ptr (TQWidget t4) -> IO CLong

instance QhitTestComplexControl_h (QStyleSc a) ((ComplexControl, QStyleOptionComplex t2, Point, QWidget t4)) where
 hitTestComplexControl_h x0 (x1, x2, x3, x4)
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withCPoint x3 $ \cpoint_x3_x cpoint_x3_y -> 
    withObjectPtr x4 $ \cobj_x4 ->
    qtc_QStyle_hitTestComplexControl1_qth cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 cpoint_x3_x cpoint_x3_y  cobj_x4

instance QqhitTestComplexControl_h (QStyle ()) ((ComplexControl, QStyleOptionComplex t2, QPoint t3)) where
 qhitTestComplexControl_h x0 (x1, x2, x3)
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QStyle_hitTestComplexControl cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 cobj_x3

foreign import ccall "qtc_QStyle_hitTestComplexControl" qtc_QStyle_hitTestComplexControl :: Ptr (TQStyle a) -> CLong -> Ptr (TQStyleOptionComplex t2) -> Ptr (TQPoint t3) -> IO CLong

instance QqhitTestComplexControl_h (QStyleSc a) ((ComplexControl, QStyleOptionComplex t2, QPoint t3)) where
 qhitTestComplexControl_h x0 (x1, x2, x3)
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QStyle_hitTestComplexControl cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 cobj_x3

instance QqhitTestComplexControl_h (QStyle ()) ((ComplexControl, QStyleOptionComplex t2, QPoint t3, QWidget t4)) where
 qhitTestComplexControl_h x0 (x1, x2, x3, x4)
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    withObjectPtr x4 $ \cobj_x4 ->
    qtc_QStyle_hitTestComplexControl1 cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 cobj_x3 cobj_x4

foreign import ccall "qtc_QStyle_hitTestComplexControl1" qtc_QStyle_hitTestComplexControl1 :: Ptr (TQStyle a) -> CLong -> Ptr (TQStyleOptionComplex t2) -> Ptr (TQPoint t3) -> Ptr (TQWidget t4) -> IO CLong

instance QqhitTestComplexControl_h (QStyleSc a) ((ComplexControl, QStyleOptionComplex t2, QPoint t3, QWidget t4)) where
 qhitTestComplexControl_h x0 (x1, x2, x3, x4)
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    withObjectPtr x4 $ \cobj_x4 ->
    qtc_QStyle_hitTestComplexControl1 cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 cobj_x3 cobj_x4

instance QsetHandler (QStyle ()) (QStyle x0 -> QRect t1 -> Int -> QPaintDevice t3 -> IO (QRect t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QStyle13 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QStyle13_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QStyle_setHandler13 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQStyle x0) -> Ptr (TQRect t1) -> CInt -> Ptr (TQPaintDevice t3) -> IO (Ptr (TQRect t0))
    setHandlerWrapper x0 x1 x2 x3
      = do x0obj <- qStyleFromPtr x0
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

foreign import ccall "qtc_QStyle_setHandler13" qtc_QStyle_setHandler13 :: Ptr (TQStyle a) -> CWString -> Ptr (Ptr (TQStyle x0) -> Ptr (TQRect t1) -> CInt -> Ptr (TQPaintDevice t3) -> IO (Ptr (TQRect t0))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QStyle13 :: (Ptr (TQStyle x0) -> Ptr (TQRect t1) -> CInt -> Ptr (TQPaintDevice t3) -> IO (Ptr (TQRect t0))) -> IO (FunPtr (Ptr (TQStyle x0) -> Ptr (TQRect t1) -> CInt -> Ptr (TQPaintDevice t3) -> IO (Ptr (TQRect t0))))

foreign import ccall "wrapper" wrapSetHandler_QStyle13_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QStyleSc a) (QStyle x0 -> QRect t1 -> Int -> QPaintDevice t3 -> IO (QRect t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QStyle13 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QStyle13_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QStyle_setHandler13 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQStyle x0) -> Ptr (TQRect t1) -> CInt -> Ptr (TQPaintDevice t3) -> IO (Ptr (TQRect t0))
    setHandlerWrapper x0 x1 x2 x3
      = do x0obj <- qStyleFromPtr x0
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

instance QqitemPixmapRect_h (QStyle ()) ((QRect t1, Int, QPixmap t3)) where
 qitemPixmapRect_h x0 (x1, x2, x3)
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QStyle_itemPixmapRect cobj_x0 cobj_x1 (toCInt x2) cobj_x3

foreign import ccall "qtc_QStyle_itemPixmapRect" qtc_QStyle_itemPixmapRect :: Ptr (TQStyle a) -> Ptr (TQRect t1) -> CInt -> Ptr (TQPixmap t3) -> IO (Ptr (TQRect ()))

instance QqitemPixmapRect_h (QStyleSc a) ((QRect t1, Int, QPixmap t3)) where
 qitemPixmapRect_h x0 (x1, x2, x3)
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QStyle_itemPixmapRect cobj_x0 cobj_x1 (toCInt x2) cobj_x3

instance QitemPixmapRect_h (QStyle ()) ((Rect, Int, QPixmap t3)) where
 itemPixmapRect_h x0 (x1, x2, x3)
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QStyle_itemPixmapRect_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h  (toCInt x2) cobj_x3 crect_ret_x crect_ret_y crect_ret_w crect_ret_h

foreign import ccall "qtc_QStyle_itemPixmapRect_qth" qtc_QStyle_itemPixmapRect_qth :: Ptr (TQStyle a) -> CInt -> CInt -> CInt -> CInt -> CInt -> Ptr (TQPixmap t3) -> Ptr CInt -> Ptr CInt -> Ptr CInt -> Ptr CInt -> IO ()

instance QitemPixmapRect_h (QStyleSc a) ((Rect, Int, QPixmap t3)) where
 itemPixmapRect_h x0 (x1, x2, x3)
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QStyle_itemPixmapRect_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h  (toCInt x2) cobj_x3 crect_ret_x crect_ret_y crect_ret_w crect_ret_h

instance QsetHandler (QStyle ()) (QStyle x0 -> QFontMetrics t1 -> QRect t2 -> Int -> Bool -> String -> IO (QRect t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QStyle14 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QStyle14_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QStyle_setHandler14 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQStyle x0) -> Ptr (TQFontMetrics t1) -> Ptr (TQRect t2) -> CInt -> CBool -> Ptr (TQString ()) -> IO (Ptr (TQRect t0))
    setHandlerWrapper x0 x1 x2 x3 x4 x5
      = do x0obj <- qStyleFromPtr x0
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

foreign import ccall "qtc_QStyle_setHandler14" qtc_QStyle_setHandler14 :: Ptr (TQStyle a) -> CWString -> Ptr (Ptr (TQStyle x0) -> Ptr (TQFontMetrics t1) -> Ptr (TQRect t2) -> CInt -> CBool -> Ptr (TQString ()) -> IO (Ptr (TQRect t0))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QStyle14 :: (Ptr (TQStyle x0) -> Ptr (TQFontMetrics t1) -> Ptr (TQRect t2) -> CInt -> CBool -> Ptr (TQString ()) -> IO (Ptr (TQRect t0))) -> IO (FunPtr (Ptr (TQStyle x0) -> Ptr (TQFontMetrics t1) -> Ptr (TQRect t2) -> CInt -> CBool -> Ptr (TQString ()) -> IO (Ptr (TQRect t0))))

foreign import ccall "wrapper" wrapSetHandler_QStyle14_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QStyleSc a) (QStyle x0 -> QFontMetrics t1 -> QRect t2 -> Int -> Bool -> String -> IO (QRect t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QStyle14 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QStyle14_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QStyle_setHandler14 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQStyle x0) -> Ptr (TQFontMetrics t1) -> Ptr (TQRect t2) -> CInt -> CBool -> Ptr (TQString ()) -> IO (Ptr (TQRect t0))
    setHandlerWrapper x0 x1 x2 x3 x4 x5
      = do x0obj <- qStyleFromPtr x0
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

instance QqitemTextRect_h (QStyle ()) ((QFontMetrics t1, QRect t2, Int, Bool, String)) where
 qitemTextRect_h x0 (x1, x2, x3, x4, x5)
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withCWString x5 $ \cstr_x5 ->
    qtc_QStyle_itemTextRect cobj_x0 cobj_x1 cobj_x2 (toCInt x3) (toCBool x4) cstr_x5

foreign import ccall "qtc_QStyle_itemTextRect" qtc_QStyle_itemTextRect :: Ptr (TQStyle a) -> Ptr (TQFontMetrics t1) -> Ptr (TQRect t2) -> CInt -> CBool -> CWString -> IO (Ptr (TQRect ()))

instance QqitemTextRect_h (QStyleSc a) ((QFontMetrics t1, QRect t2, Int, Bool, String)) where
 qitemTextRect_h x0 (x1, x2, x3, x4, x5)
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withCWString x5 $ \cstr_x5 ->
    qtc_QStyle_itemTextRect cobj_x0 cobj_x1 cobj_x2 (toCInt x3) (toCBool x4) cstr_x5

instance QitemTextRect_h (QStyle ()) ((QFontMetrics t1, Rect, Int, Bool, String)) where
 itemTextRect_h x0 (x1, x2, x3, x4, x5)
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCRect x2 $ \crect_x2_x crect_x2_y  crect_x2_w crect_x2_h -> 
    withCWString x5 $ \cstr_x5 ->
    qtc_QStyle_itemTextRect_qth cobj_x0 cobj_x1 crect_x2_x crect_x2_y crect_x2_w crect_x2_h  (toCInt x3) (toCBool x4) cstr_x5 crect_ret_x crect_ret_y crect_ret_w crect_ret_h

foreign import ccall "qtc_QStyle_itemTextRect_qth" qtc_QStyle_itemTextRect_qth :: Ptr (TQStyle a) -> Ptr (TQFontMetrics t1) -> CInt -> CInt -> CInt -> CInt -> CInt -> CBool -> CWString -> Ptr CInt -> Ptr CInt -> Ptr CInt -> Ptr CInt -> IO ()

instance QitemTextRect_h (QStyleSc a) ((QFontMetrics t1, Rect, Int, Bool, String)) where
 itemTextRect_h x0 (x1, x2, x3, x4, x5)
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCRect x2 $ \crect_x2_x crect_x2_y  crect_x2_w crect_x2_h -> 
    withCWString x5 $ \cstr_x5 ->
    qtc_QStyle_itemTextRect_qth cobj_x0 cobj_x1 crect_x2_x crect_x2_y crect_x2_w crect_x2_h  (toCInt x3) (toCBool x4) cstr_x5 crect_ret_x crect_ret_y crect_ret_w crect_ret_h

instance QsetHandler (QStyle ()) (QStyle x0 -> PixelMetric -> IO (Int)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QStyle15 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QStyle15_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QStyle_setHandler15 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQStyle x0) -> CLong -> IO (CInt)
    setHandlerWrapper x0 x1
      = do x0obj <- qStyleFromPtr x0
           let x1enum = qEnum_fromInt $ fromCLong x1
           let rv =
                if (objectIsNull x0obj)
                 then return 0
                 else _handler x0obj x1enum
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

foreign import ccall "qtc_QStyle_setHandler15" qtc_QStyle_setHandler15 :: Ptr (TQStyle a) -> CWString -> Ptr (Ptr (TQStyle x0) -> CLong -> IO (CInt)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QStyle15 :: (Ptr (TQStyle x0) -> CLong -> IO (CInt)) -> IO (FunPtr (Ptr (TQStyle x0) -> CLong -> IO (CInt)))

foreign import ccall "wrapper" wrapSetHandler_QStyle15_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QStyleSc a) (QStyle x0 -> PixelMetric -> IO (Int)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QStyle15 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QStyle15_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QStyle_setHandler15 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQStyle x0) -> CLong -> IO (CInt)
    setHandlerWrapper x0 x1
      = do x0obj <- qStyleFromPtr x0
           let x1enum = qEnum_fromInt $ fromCLong x1
           let rv =
                if (objectIsNull x0obj)
                 then return 0
                 else _handler x0obj x1enum
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

instance QsetHandler (QStyle ()) (QStyle x0 -> PixelMetric -> QStyleOption t2 -> IO (Int)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QStyle16 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QStyle16_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QStyle_setHandler16 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQStyle x0) -> CLong -> Ptr (TQStyleOption t2) -> IO (CInt)
    setHandlerWrapper x0 x1 x2
      = do x0obj <- qStyleFromPtr x0
           let x1enum = qEnum_fromInt $ fromCLong x1
           x2obj <- objectFromPtr_nf x2
           let rv =
                if (objectIsNull x0obj)
                 then return 0
                 else _handler x0obj x1enum x2obj
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

foreign import ccall "qtc_QStyle_setHandler16" qtc_QStyle_setHandler16 :: Ptr (TQStyle a) -> CWString -> Ptr (Ptr (TQStyle x0) -> CLong -> Ptr (TQStyleOption t2) -> IO (CInt)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QStyle16 :: (Ptr (TQStyle x0) -> CLong -> Ptr (TQStyleOption t2) -> IO (CInt)) -> IO (FunPtr (Ptr (TQStyle x0) -> CLong -> Ptr (TQStyleOption t2) -> IO (CInt)))

foreign import ccall "wrapper" wrapSetHandler_QStyle16_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QStyleSc a) (QStyle x0 -> PixelMetric -> QStyleOption t2 -> IO (Int)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QStyle16 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QStyle16_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QStyle_setHandler16 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQStyle x0) -> CLong -> Ptr (TQStyleOption t2) -> IO (CInt)
    setHandlerWrapper x0 x1 x2
      = do x0obj <- qStyleFromPtr x0
           let x1enum = qEnum_fromInt $ fromCLong x1
           x2obj <- objectFromPtr_nf x2
           let rv =
                if (objectIsNull x0obj)
                 then return 0
                 else _handler x0obj x1enum x2obj
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

instance QsetHandler (QStyle ()) (QStyle x0 -> PixelMetric -> QStyleOption t2 -> QObject t3 -> IO (Int)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QStyle17 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QStyle17_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QStyle_setHandler17 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQStyle x0) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQObject t3) -> IO (CInt)
    setHandlerWrapper x0 x1 x2 x3
      = do x0obj <- qStyleFromPtr x0
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

foreign import ccall "qtc_QStyle_setHandler17" qtc_QStyle_setHandler17 :: Ptr (TQStyle a) -> CWString -> Ptr (Ptr (TQStyle x0) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQObject t3) -> IO (CInt)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QStyle17 :: (Ptr (TQStyle x0) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQObject t3) -> IO (CInt)) -> IO (FunPtr (Ptr (TQStyle x0) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQObject t3) -> IO (CInt)))

foreign import ccall "wrapper" wrapSetHandler_QStyle17_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QStyleSc a) (QStyle x0 -> PixelMetric -> QStyleOption t2 -> QObject t3 -> IO (Int)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QStyle17 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QStyle17_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QStyle_setHandler17 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQStyle x0) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQObject t3) -> IO (CInt)
    setHandlerWrapper x0 x1 x2 x3
      = do x0obj <- qStyleFromPtr x0
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

instance QpixelMetric_h (QStyle ()) ((PixelMetric)) where
 pixelMetric_h x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyle_pixelMetric cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QStyle_pixelMetric" qtc_QStyle_pixelMetric :: Ptr (TQStyle a) -> CLong -> IO CInt

instance QpixelMetric_h (QStyleSc a) ((PixelMetric)) where
 pixelMetric_h x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyle_pixelMetric cobj_x0 (toCLong $ qEnum_toInt x1)

instance QpixelMetric_h (QStyle ()) ((PixelMetric, QStyleOption t2)) where
 pixelMetric_h x0 (x1, x2)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QStyle_pixelMetric1 cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2

foreign import ccall "qtc_QStyle_pixelMetric1" qtc_QStyle_pixelMetric1 :: Ptr (TQStyle a) -> CLong -> Ptr (TQStyleOption t2) -> IO CInt

instance QpixelMetric_h (QStyleSc a) ((PixelMetric, QStyleOption t2)) where
 pixelMetric_h x0 (x1, x2)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QStyle_pixelMetric1 cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2

instance QpixelMetric_h (QStyle ()) ((PixelMetric, QStyleOption t2, QWidget t3)) where
 pixelMetric_h x0 (x1, x2, x3)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QStyle_pixelMetric2 cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 cobj_x3

foreign import ccall "qtc_QStyle_pixelMetric2" qtc_QStyle_pixelMetric2 :: Ptr (TQStyle a) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQWidget t3) -> IO CInt

instance QpixelMetric_h (QStyleSc a) ((PixelMetric, QStyleOption t2, QWidget t3)) where
 pixelMetric_h x0 (x1, x2, x3)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QStyle_pixelMetric2 cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 cobj_x3

instance QsetHandler (QStyle ()) (QStyle x0 -> QObject t1 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QStyle18 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QStyle18_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QStyle_setHandler18 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQStyle x0) -> Ptr (TQObject t1) -> IO ()
    setHandlerWrapper x0 x1
      = do x0obj <- qStyleFromPtr x0
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

foreign import ccall "qtc_QStyle_setHandler18" qtc_QStyle_setHandler18 :: Ptr (TQStyle a) -> CWString -> Ptr (Ptr (TQStyle x0) -> Ptr (TQObject t1) -> IO ()) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QStyle18 :: (Ptr (TQStyle x0) -> Ptr (TQObject t1) -> IO ()) -> IO (FunPtr (Ptr (TQStyle x0) -> Ptr (TQObject t1) -> IO ()))

foreign import ccall "wrapper" wrapSetHandler_QStyle18_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QStyleSc a) (QStyle x0 -> QObject t1 -> IO ()) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QStyle18 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QStyle18_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QStyle_setHandler18 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQStyle x0) -> Ptr (TQObject t1) -> IO ()
    setHandlerWrapper x0 x1
      = do x0obj <- qStyleFromPtr x0
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

instance Qpolish_h (QStyle ()) ((QApplication t1)) where
 polish_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStyle_polish1 cobj_x0 cobj_x1

foreign import ccall "qtc_QStyle_polish1" qtc_QStyle_polish1 :: Ptr (TQStyle a) -> Ptr (TQApplication t1) -> IO ()

instance Qpolish_h (QStyleSc a) ((QApplication t1)) where
 polish_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStyle_polish1 cobj_x0 cobj_x1

instance Qpolish_h (QStyle ()) ((QWidget t1)) where
 polish_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStyle_polish cobj_x0 cobj_x1

foreign import ccall "qtc_QStyle_polish" qtc_QStyle_polish :: Ptr (TQStyle a) -> Ptr (TQWidget t1) -> IO ()

instance Qpolish_h (QStyleSc a) ((QWidget t1)) where
 polish_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStyle_polish cobj_x0 cobj_x1

instance QsetHandler (QStyle ()) (QStyle x0 -> ContentsType -> QStyleOption t2 -> QSize t3 -> IO (QSize t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QStyle19 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QStyle19_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QStyle_setHandler19 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQStyle x0) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQSize t3) -> IO (Ptr (TQSize t0))
    setHandlerWrapper x0 x1 x2 x3
      = do x0obj <- qStyleFromPtr x0
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

foreign import ccall "qtc_QStyle_setHandler19" qtc_QStyle_setHandler19 :: Ptr (TQStyle a) -> CWString -> Ptr (Ptr (TQStyle x0) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQSize t3) -> IO (Ptr (TQSize t0))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QStyle19 :: (Ptr (TQStyle x0) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQSize t3) -> IO (Ptr (TQSize t0))) -> IO (FunPtr (Ptr (TQStyle x0) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQSize t3) -> IO (Ptr (TQSize t0))))

foreign import ccall "wrapper" wrapSetHandler_QStyle19_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QStyleSc a) (QStyle x0 -> ContentsType -> QStyleOption t2 -> QSize t3 -> IO (QSize t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QStyle19 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QStyle19_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QStyle_setHandler19 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQStyle x0) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQSize t3) -> IO (Ptr (TQSize t0))
    setHandlerWrapper x0 x1 x2 x3
      = do x0obj <- qStyleFromPtr x0
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

instance QsetHandler (QStyle ()) (QStyle x0 -> ContentsType -> QStyleOption t2 -> QSize t3 -> QObject t4 -> IO (QSize t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QStyle20 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QStyle20_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QStyle_setHandler20 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQStyle x0) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQSize t3) -> Ptr (TQObject t4) -> IO (Ptr (TQSize t0))
    setHandlerWrapper x0 x1 x2 x3 x4
      = do x0obj <- qStyleFromPtr x0
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

foreign import ccall "qtc_QStyle_setHandler20" qtc_QStyle_setHandler20 :: Ptr (TQStyle a) -> CWString -> Ptr (Ptr (TQStyle x0) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQSize t3) -> Ptr (TQObject t4) -> IO (Ptr (TQSize t0))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QStyle20 :: (Ptr (TQStyle x0) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQSize t3) -> Ptr (TQObject t4) -> IO (Ptr (TQSize t0))) -> IO (FunPtr (Ptr (TQStyle x0) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQSize t3) -> Ptr (TQObject t4) -> IO (Ptr (TQSize t0))))

foreign import ccall "wrapper" wrapSetHandler_QStyle20_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QStyleSc a) (QStyle x0 -> ContentsType -> QStyleOption t2 -> QSize t3 -> QObject t4 -> IO (QSize t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QStyle20 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QStyle20_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QStyle_setHandler20 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQStyle x0) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQSize t3) -> Ptr (TQObject t4) -> IO (Ptr (TQSize t0))
    setHandlerWrapper x0 x1 x2 x3 x4
      = do x0obj <- qStyleFromPtr x0
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

instance QqsizeFromContents_h (QStyle ()) ((ContentsType, QStyleOption t2, QSize t3)) where
 qsizeFromContents_h x0 (x1, x2, x3)
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QStyle_sizeFromContents cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 cobj_x3

foreign import ccall "qtc_QStyle_sizeFromContents" qtc_QStyle_sizeFromContents :: Ptr (TQStyle a) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQSize t3) -> IO (Ptr (TQSize ()))

instance QqsizeFromContents_h (QStyleSc a) ((ContentsType, QStyleOption t2, QSize t3)) where
 qsizeFromContents_h x0 (x1, x2, x3)
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QStyle_sizeFromContents cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 cobj_x3

instance QqsizeFromContents_h (QStyle ()) ((ContentsType, QStyleOption t2, QSize t3, QWidget t4)) where
 qsizeFromContents_h x0 (x1, x2, x3, x4)
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    withObjectPtr x4 $ \cobj_x4 ->
    qtc_QStyle_sizeFromContents1 cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 cobj_x3 cobj_x4

foreign import ccall "qtc_QStyle_sizeFromContents1" qtc_QStyle_sizeFromContents1 :: Ptr (TQStyle a) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQSize t3) -> Ptr (TQWidget t4) -> IO (Ptr (TQSize ()))

instance QqsizeFromContents_h (QStyleSc a) ((ContentsType, QStyleOption t2, QSize t3, QWidget t4)) where
 qsizeFromContents_h x0 (x1, x2, x3, x4)
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    withObjectPtr x4 $ \cobj_x4 ->
    qtc_QStyle_sizeFromContents1 cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 cobj_x3 cobj_x4

instance QsizeFromContents_h (QStyle ()) ((ContentsType, QStyleOption t2, Size)) where
 sizeFromContents_h x0 (x1, x2, x3)
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withCSize x3 $ \csize_x3_w csize_x3_h -> 
    qtc_QStyle_sizeFromContents_qth cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 csize_x3_w csize_x3_h  csize_ret_w csize_ret_h

foreign import ccall "qtc_QStyle_sizeFromContents_qth" qtc_QStyle_sizeFromContents_qth :: Ptr (TQStyle a) -> CLong -> Ptr (TQStyleOption t2) -> CInt -> CInt -> Ptr CInt -> Ptr CInt -> IO ()

instance QsizeFromContents_h (QStyleSc a) ((ContentsType, QStyleOption t2, Size)) where
 sizeFromContents_h x0 (x1, x2, x3)
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withCSize x3 $ \csize_x3_w csize_x3_h -> 
    qtc_QStyle_sizeFromContents_qth cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 csize_x3_w csize_x3_h  csize_ret_w csize_ret_h

instance QsizeFromContents_h (QStyle ()) ((ContentsType, QStyleOption t2, Size, QWidget t4)) where
 sizeFromContents_h x0 (x1, x2, x3, x4)
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withCSize x3 $ \csize_x3_w csize_x3_h -> 
    withObjectPtr x4 $ \cobj_x4 ->
    qtc_QStyle_sizeFromContents1_qth cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 csize_x3_w csize_x3_h  cobj_x4 csize_ret_w csize_ret_h

foreign import ccall "qtc_QStyle_sizeFromContents1_qth" qtc_QStyle_sizeFromContents1_qth :: Ptr (TQStyle a) -> CLong -> Ptr (TQStyleOption t2) -> CInt -> CInt -> Ptr (TQWidget t4) -> Ptr CInt -> Ptr CInt -> IO ()

instance QsizeFromContents_h (QStyleSc a) ((ContentsType, QStyleOption t2, Size, QWidget t4)) where
 sizeFromContents_h x0 (x1, x2, x3, x4)
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withCSize x3 $ \csize_x3_w csize_x3_h -> 
    withObjectPtr x4 $ \cobj_x4 ->
    qtc_QStyle_sizeFromContents1_qth cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 csize_x3_w csize_x3_h  cobj_x4 csize_ret_w csize_ret_h

instance QsetHandler (QStyle ()) (QStyle x0 -> IO (QPalette t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QStyle21 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QStyle21_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QStyle_setHandler21 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQStyle x0) -> IO (Ptr (TQPalette t0))
    setHandlerWrapper x0
      = do x0obj <- qStyleFromPtr x0
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

foreign import ccall "qtc_QStyle_setHandler21" qtc_QStyle_setHandler21 :: Ptr (TQStyle a) -> CWString -> Ptr (Ptr (TQStyle x0) -> IO (Ptr (TQPalette t0))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QStyle21 :: (Ptr (TQStyle x0) -> IO (Ptr (TQPalette t0))) -> IO (FunPtr (Ptr (TQStyle x0) -> IO (Ptr (TQPalette t0))))

foreign import ccall "wrapper" wrapSetHandler_QStyle21_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QStyleSc a) (QStyle x0 -> IO (QPalette t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QStyle21 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QStyle21_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QStyle_setHandler21 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQStyle x0) -> IO (Ptr (TQPalette t0))
    setHandlerWrapper x0
      = do x0obj <- qStyleFromPtr x0
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

instance QstandardPalette_h (QStyle ()) (()) where
 standardPalette_h x0 ()
  = withQPaletteResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyle_standardPalette cobj_x0

foreign import ccall "qtc_QStyle_standardPalette" qtc_QStyle_standardPalette :: Ptr (TQStyle a) -> IO (Ptr (TQPalette ()))

instance QstandardPalette_h (QStyleSc a) (()) where
 standardPalette_h x0 ()
  = withQPaletteResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyle_standardPalette cobj_x0

instance QsetHandler (QStyle ()) (QStyle x0 -> StandardPixmap -> IO (QPaintDevice t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QStyle22 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QStyle22_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QStyle_setHandler22 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQStyle x0) -> CLong -> IO (Ptr (TQPaintDevice t0))
    setHandlerWrapper x0 x1
      = do x0obj <- qStyleFromPtr x0
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

foreign import ccall "qtc_QStyle_setHandler22" qtc_QStyle_setHandler22 :: Ptr (TQStyle a) -> CWString -> Ptr (Ptr (TQStyle x0) -> CLong -> IO (Ptr (TQPaintDevice t0))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QStyle22 :: (Ptr (TQStyle x0) -> CLong -> IO (Ptr (TQPaintDevice t0))) -> IO (FunPtr (Ptr (TQStyle x0) -> CLong -> IO (Ptr (TQPaintDevice t0))))

foreign import ccall "wrapper" wrapSetHandler_QStyle22_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QStyleSc a) (QStyle x0 -> StandardPixmap -> IO (QPaintDevice t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QStyle22 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QStyle22_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QStyle_setHandler22 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQStyle x0) -> CLong -> IO (Ptr (TQPaintDevice t0))
    setHandlerWrapper x0 x1
      = do x0obj <- qStyleFromPtr x0
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

instance QsetHandler (QStyle ()) (QStyle x0 -> StandardPixmap -> QStyleOption t2 -> IO (QPaintDevice t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QStyle23 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QStyle23_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QStyle_setHandler23 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQStyle x0) -> CLong -> Ptr (TQStyleOption t2) -> IO (Ptr (TQPaintDevice t0))
    setHandlerWrapper x0 x1 x2
      = do x0obj <- qStyleFromPtr x0
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

foreign import ccall "qtc_QStyle_setHandler23" qtc_QStyle_setHandler23 :: Ptr (TQStyle a) -> CWString -> Ptr (Ptr (TQStyle x0) -> CLong -> Ptr (TQStyleOption t2) -> IO (Ptr (TQPaintDevice t0))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QStyle23 :: (Ptr (TQStyle x0) -> CLong -> Ptr (TQStyleOption t2) -> IO (Ptr (TQPaintDevice t0))) -> IO (FunPtr (Ptr (TQStyle x0) -> CLong -> Ptr (TQStyleOption t2) -> IO (Ptr (TQPaintDevice t0))))

foreign import ccall "wrapper" wrapSetHandler_QStyle23_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QStyleSc a) (QStyle x0 -> StandardPixmap -> QStyleOption t2 -> IO (QPaintDevice t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QStyle23 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QStyle23_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QStyle_setHandler23 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQStyle x0) -> CLong -> Ptr (TQStyleOption t2) -> IO (Ptr (TQPaintDevice t0))
    setHandlerWrapper x0 x1 x2
      = do x0obj <- qStyleFromPtr x0
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

instance QsetHandler (QStyle ()) (QStyle x0 -> StandardPixmap -> QStyleOption t2 -> QObject t3 -> IO (QPaintDevice t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QStyle24 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QStyle24_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QStyle_setHandler24 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQStyle x0) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQObject t3) -> IO (Ptr (TQPaintDevice t0))
    setHandlerWrapper x0 x1 x2 x3
      = do x0obj <- qStyleFromPtr x0
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

foreign import ccall "qtc_QStyle_setHandler24" qtc_QStyle_setHandler24 :: Ptr (TQStyle a) -> CWString -> Ptr (Ptr (TQStyle x0) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQObject t3) -> IO (Ptr (TQPaintDevice t0))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QStyle24 :: (Ptr (TQStyle x0) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQObject t3) -> IO (Ptr (TQPaintDevice t0))) -> IO (FunPtr (Ptr (TQStyle x0) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQObject t3) -> IO (Ptr (TQPaintDevice t0))))

foreign import ccall "wrapper" wrapSetHandler_QStyle24_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QStyleSc a) (QStyle x0 -> StandardPixmap -> QStyleOption t2 -> QObject t3 -> IO (QPaintDevice t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QStyle24 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QStyle24_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QStyle_setHandler24 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQStyle x0) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQObject t3) -> IO (Ptr (TQPaintDevice t0))
    setHandlerWrapper x0 x1 x2 x3
      = do x0obj <- qStyleFromPtr x0
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

instance QstandardPixmap_h (QStyle ()) ((StandardPixmap)) where
 standardPixmap_h x0 (x1)
  = withQPixmapResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyle_standardPixmap cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QStyle_standardPixmap" qtc_QStyle_standardPixmap :: Ptr (TQStyle a) -> CLong -> IO (Ptr (TQPixmap ()))

instance QstandardPixmap_h (QStyleSc a) ((StandardPixmap)) where
 standardPixmap_h x0 (x1)
  = withQPixmapResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyle_standardPixmap cobj_x0 (toCLong $ qEnum_toInt x1)

instance QstandardPixmap_h (QStyle ()) ((StandardPixmap, QStyleOption t2)) where
 standardPixmap_h x0 (x1, x2)
  = withQPixmapResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QStyle_standardPixmap1 cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2

foreign import ccall "qtc_QStyle_standardPixmap1" qtc_QStyle_standardPixmap1 :: Ptr (TQStyle a) -> CLong -> Ptr (TQStyleOption t2) -> IO (Ptr (TQPixmap ()))

instance QstandardPixmap_h (QStyleSc a) ((StandardPixmap, QStyleOption t2)) where
 standardPixmap_h x0 (x1, x2)
  = withQPixmapResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QStyle_standardPixmap1 cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2

instance QstandardPixmap_h (QStyle ()) ((StandardPixmap, QStyleOption t2, QWidget t3)) where
 standardPixmap_h x0 (x1, x2, x3)
  = withQPixmapResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QStyle_standardPixmap2 cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 cobj_x3

foreign import ccall "qtc_QStyle_standardPixmap2" qtc_QStyle_standardPixmap2 :: Ptr (TQStyle a) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQWidget t3) -> IO (Ptr (TQPixmap ()))

instance QstandardPixmap_h (QStyleSc a) ((StandardPixmap, QStyleOption t2, QWidget t3)) where
 standardPixmap_h x0 (x1, x2, x3)
  = withQPixmapResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QStyle_standardPixmap2 cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 cobj_x3

instance QsetHandler (QStyle ()) (QStyle x0 -> QStyleStyleHint -> IO (Int)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QStyle25 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QStyle25_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QStyle_setHandler25 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQStyle x0) -> CLong -> IO (CInt)
    setHandlerWrapper x0 x1
      = do x0obj <- qStyleFromPtr x0
           let x1enum = qEnum_fromInt $ fromCLong x1
           let rv =
                if (objectIsNull x0obj)
                 then return 0
                 else _handler x0obj x1enum
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

foreign import ccall "qtc_QStyle_setHandler25" qtc_QStyle_setHandler25 :: Ptr (TQStyle a) -> CWString -> Ptr (Ptr (TQStyle x0) -> CLong -> IO (CInt)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QStyle25 :: (Ptr (TQStyle x0) -> CLong -> IO (CInt)) -> IO (FunPtr (Ptr (TQStyle x0) -> CLong -> IO (CInt)))

foreign import ccall "wrapper" wrapSetHandler_QStyle25_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QStyleSc a) (QStyle x0 -> QStyleStyleHint -> IO (Int)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QStyle25 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QStyle25_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QStyle_setHandler25 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQStyle x0) -> CLong -> IO (CInt)
    setHandlerWrapper x0 x1
      = do x0obj <- qStyleFromPtr x0
           let x1enum = qEnum_fromInt $ fromCLong x1
           let rv =
                if (objectIsNull x0obj)
                 then return 0
                 else _handler x0obj x1enum
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

instance QsetHandler (QStyle ()) (QStyle x0 -> QStyleStyleHint -> QStyleOption t2 -> IO (Int)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QStyle26 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QStyle26_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QStyle_setHandler26 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQStyle x0) -> CLong -> Ptr (TQStyleOption t2) -> IO (CInt)
    setHandlerWrapper x0 x1 x2
      = do x0obj <- qStyleFromPtr x0
           let x1enum = qEnum_fromInt $ fromCLong x1
           x2obj <- objectFromPtr_nf x2
           let rv =
                if (objectIsNull x0obj)
                 then return 0
                 else _handler x0obj x1enum x2obj
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

foreign import ccall "qtc_QStyle_setHandler26" qtc_QStyle_setHandler26 :: Ptr (TQStyle a) -> CWString -> Ptr (Ptr (TQStyle x0) -> CLong -> Ptr (TQStyleOption t2) -> IO (CInt)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QStyle26 :: (Ptr (TQStyle x0) -> CLong -> Ptr (TQStyleOption t2) -> IO (CInt)) -> IO (FunPtr (Ptr (TQStyle x0) -> CLong -> Ptr (TQStyleOption t2) -> IO (CInt)))

foreign import ccall "wrapper" wrapSetHandler_QStyle26_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QStyleSc a) (QStyle x0 -> QStyleStyleHint -> QStyleOption t2 -> IO (Int)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QStyle26 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QStyle26_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QStyle_setHandler26 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQStyle x0) -> CLong -> Ptr (TQStyleOption t2) -> IO (CInt)
    setHandlerWrapper x0 x1 x2
      = do x0obj <- qStyleFromPtr x0
           let x1enum = qEnum_fromInt $ fromCLong x1
           x2obj <- objectFromPtr_nf x2
           let rv =
                if (objectIsNull x0obj)
                 then return 0
                 else _handler x0obj x1enum x2obj
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

instance QsetHandler (QStyle ()) (QStyle x0 -> QStyleStyleHint -> QStyleOption t2 -> QObject t3 -> IO (Int)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QStyle27 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QStyle27_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QStyle_setHandler27 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQStyle x0) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQObject t3) -> IO (CInt)
    setHandlerWrapper x0 x1 x2 x3
      = do x0obj <- qStyleFromPtr x0
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

foreign import ccall "qtc_QStyle_setHandler27" qtc_QStyle_setHandler27 :: Ptr (TQStyle a) -> CWString -> Ptr (Ptr (TQStyle x0) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQObject t3) -> IO (CInt)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QStyle27 :: (Ptr (TQStyle x0) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQObject t3) -> IO (CInt)) -> IO (FunPtr (Ptr (TQStyle x0) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQObject t3) -> IO (CInt)))

foreign import ccall "wrapper" wrapSetHandler_QStyle27_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QStyleSc a) (QStyle x0 -> QStyleStyleHint -> QStyleOption t2 -> QObject t3 -> IO (Int)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QStyle27 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QStyle27_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QStyle_setHandler27 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQStyle x0) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQObject t3) -> IO (CInt)
    setHandlerWrapper x0 x1 x2 x3
      = do x0obj <- qStyleFromPtr x0
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

instance QsetHandler (QStyle ()) (QStyle x0 -> QStyleStyleHint -> QStyleOption t2 -> QObject t3 -> QStyleHintReturn t4 -> IO (Int)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QStyle28 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QStyle28_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QStyle_setHandler28 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQStyle x0) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQObject t3) -> Ptr (TQStyleHintReturn t4) -> IO (CInt)
    setHandlerWrapper x0 x1 x2 x3 x4
      = do x0obj <- qStyleFromPtr x0
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

foreign import ccall "qtc_QStyle_setHandler28" qtc_QStyle_setHandler28 :: Ptr (TQStyle a) -> CWString -> Ptr (Ptr (TQStyle x0) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQObject t3) -> Ptr (TQStyleHintReturn t4) -> IO (CInt)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QStyle28 :: (Ptr (TQStyle x0) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQObject t3) -> Ptr (TQStyleHintReturn t4) -> IO (CInt)) -> IO (FunPtr (Ptr (TQStyle x0) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQObject t3) -> Ptr (TQStyleHintReturn t4) -> IO (CInt)))

foreign import ccall "wrapper" wrapSetHandler_QStyle28_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QStyleSc a) (QStyle x0 -> QStyleStyleHint -> QStyleOption t2 -> QObject t3 -> QStyleHintReturn t4 -> IO (Int)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QStyle28 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QStyle28_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QStyle_setHandler28 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQStyle x0) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQObject t3) -> Ptr (TQStyleHintReturn t4) -> IO (CInt)
    setHandlerWrapper x0 x1 x2 x3 x4
      = do x0obj <- qStyleFromPtr x0
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

instance QstyleHint_h (QStyle ()) ((QStyleStyleHint)) where
 styleHint_h x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyle_styleHint cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QStyle_styleHint" qtc_QStyle_styleHint :: Ptr (TQStyle a) -> CLong -> IO CInt

instance QstyleHint_h (QStyleSc a) ((QStyleStyleHint)) where
 styleHint_h x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyle_styleHint cobj_x0 (toCLong $ qEnum_toInt x1)

instance QstyleHint_h (QStyle ()) ((QStyleStyleHint, QStyleOption t2)) where
 styleHint_h x0 (x1, x2)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QStyle_styleHint1 cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2

foreign import ccall "qtc_QStyle_styleHint1" qtc_QStyle_styleHint1 :: Ptr (TQStyle a) -> CLong -> Ptr (TQStyleOption t2) -> IO CInt

instance QstyleHint_h (QStyleSc a) ((QStyleStyleHint, QStyleOption t2)) where
 styleHint_h x0 (x1, x2)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QStyle_styleHint1 cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2

instance QstyleHint_h (QStyle ()) ((QStyleStyleHint, QStyleOption t2, QWidget t3)) where
 styleHint_h x0 (x1, x2, x3)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QStyle_styleHint2 cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 cobj_x3

foreign import ccall "qtc_QStyle_styleHint2" qtc_QStyle_styleHint2 :: Ptr (TQStyle a) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQWidget t3) -> IO CInt

instance QstyleHint_h (QStyleSc a) ((QStyleStyleHint, QStyleOption t2, QWidget t3)) where
 styleHint_h x0 (x1, x2, x3)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QStyle_styleHint2 cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 cobj_x3

instance QstyleHint_h (QStyle ()) ((QStyleStyleHint, QStyleOption t2, QWidget t3, QStyleHintReturn t4)) where
 styleHint_h x0 (x1, x2, x3, x4)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    withObjectPtr x4 $ \cobj_x4 ->
    qtc_QStyle_styleHint3 cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 cobj_x3 cobj_x4

foreign import ccall "qtc_QStyle_styleHint3" qtc_QStyle_styleHint3 :: Ptr (TQStyle a) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQWidget t3) -> Ptr (TQStyleHintReturn t4) -> IO CInt

instance QstyleHint_h (QStyleSc a) ((QStyleStyleHint, QStyleOption t2, QWidget t3, QStyleHintReturn t4)) where
 styleHint_h x0 (x1, x2, x3, x4)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    withObjectPtr x4 $ \cobj_x4 ->
    qtc_QStyle_styleHint3 cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 cobj_x3 cobj_x4

instance QsetHandler (QStyle ()) (QStyle x0 -> ComplexControl -> QStyleOption t2 -> SubControl -> IO (QRect t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QStyle29 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QStyle29_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QStyle_setHandler29 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQStyle x0) -> CLong -> Ptr (TQStyleOption t2) -> CLong -> IO (Ptr (TQRect t0))
    setHandlerWrapper x0 x1 x2 x3
      = do x0obj <- qStyleFromPtr x0
           let x1enum = qEnum_fromInt $ fromCLong x1
           x2obj <- objectFromPtr_nf x2
           let x3enum = qEnum_fromInt $ fromCLong x3
           let rv =
                if (objectIsNull x0obj)
                 then return $ objectCast x0obj
                 else _handler x0obj x1enum x2obj x3enum
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

foreign import ccall "qtc_QStyle_setHandler29" qtc_QStyle_setHandler29 :: Ptr (TQStyle a) -> CWString -> Ptr (Ptr (TQStyle x0) -> CLong -> Ptr (TQStyleOption t2) -> CLong -> IO (Ptr (TQRect t0))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QStyle29 :: (Ptr (TQStyle x0) -> CLong -> Ptr (TQStyleOption t2) -> CLong -> IO (Ptr (TQRect t0))) -> IO (FunPtr (Ptr (TQStyle x0) -> CLong -> Ptr (TQStyleOption t2) -> CLong -> IO (Ptr (TQRect t0))))

foreign import ccall "wrapper" wrapSetHandler_QStyle29_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QStyleSc a) (QStyle x0 -> ComplexControl -> QStyleOption t2 -> SubControl -> IO (QRect t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QStyle29 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QStyle29_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QStyle_setHandler29 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQStyle x0) -> CLong -> Ptr (TQStyleOption t2) -> CLong -> IO (Ptr (TQRect t0))
    setHandlerWrapper x0 x1 x2 x3
      = do x0obj <- qStyleFromPtr x0
           let x1enum = qEnum_fromInt $ fromCLong x1
           x2obj <- objectFromPtr_nf x2
           let x3enum = qEnum_fromInt $ fromCLong x3
           let rv =
                if (objectIsNull x0obj)
                 then return $ objectCast x0obj
                 else _handler x0obj x1enum x2obj x3enum
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

instance QsetHandler (QStyle ()) (QStyle x0 -> ComplexControl -> QStyleOption t2 -> SubControl -> QObject t4 -> IO (QRect t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QStyle30 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QStyle30_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QStyle_setHandler30 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQStyle x0) -> CLong -> Ptr (TQStyleOption t2) -> CLong -> Ptr (TQObject t4) -> IO (Ptr (TQRect t0))
    setHandlerWrapper x0 x1 x2 x3 x4
      = do x0obj <- qStyleFromPtr x0
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

foreign import ccall "qtc_QStyle_setHandler30" qtc_QStyle_setHandler30 :: Ptr (TQStyle a) -> CWString -> Ptr (Ptr (TQStyle x0) -> CLong -> Ptr (TQStyleOption t2) -> CLong -> Ptr (TQObject t4) -> IO (Ptr (TQRect t0))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QStyle30 :: (Ptr (TQStyle x0) -> CLong -> Ptr (TQStyleOption t2) -> CLong -> Ptr (TQObject t4) -> IO (Ptr (TQRect t0))) -> IO (FunPtr (Ptr (TQStyle x0) -> CLong -> Ptr (TQStyleOption t2) -> CLong -> Ptr (TQObject t4) -> IO (Ptr (TQRect t0))))

foreign import ccall "wrapper" wrapSetHandler_QStyle30_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QStyleSc a) (QStyle x0 -> ComplexControl -> QStyleOption t2 -> SubControl -> QObject t4 -> IO (QRect t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QStyle30 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QStyle30_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QStyle_setHandler30 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQStyle x0) -> CLong -> Ptr (TQStyleOption t2) -> CLong -> Ptr (TQObject t4) -> IO (Ptr (TQRect t0))
    setHandlerWrapper x0 x1 x2 x3 x4
      = do x0obj <- qStyleFromPtr x0
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

instance QqsubControlRect_h (QStyle ()) ((ComplexControl, QStyleOptionComplex t2, SubControl)) where
 qsubControlRect_h x0 (x1, x2, x3)
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QStyle_subControlRect cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 (toCLong $ qEnum_toInt x3)

foreign import ccall "qtc_QStyle_subControlRect" qtc_QStyle_subControlRect :: Ptr (TQStyle a) -> CLong -> Ptr (TQStyleOptionComplex t2) -> CLong -> IO (Ptr (TQRect ()))

instance QqsubControlRect_h (QStyleSc a) ((ComplexControl, QStyleOptionComplex t2, SubControl)) where
 qsubControlRect_h x0 (x1, x2, x3)
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QStyle_subControlRect cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 (toCLong $ qEnum_toInt x3)

instance QqsubControlRect_h (QStyle ()) ((ComplexControl, QStyleOptionComplex t2, SubControl, QWidget t4)) where
 qsubControlRect_h x0 (x1, x2, x3, x4)
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x4 $ \cobj_x4 ->
    qtc_QStyle_subControlRect1 cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 (toCLong $ qEnum_toInt x3) cobj_x4

foreign import ccall "qtc_QStyle_subControlRect1" qtc_QStyle_subControlRect1 :: Ptr (TQStyle a) -> CLong -> Ptr (TQStyleOptionComplex t2) -> CLong -> Ptr (TQWidget t4) -> IO (Ptr (TQRect ()))

instance QqsubControlRect_h (QStyleSc a) ((ComplexControl, QStyleOptionComplex t2, SubControl, QWidget t4)) where
 qsubControlRect_h x0 (x1, x2, x3, x4)
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x4 $ \cobj_x4 ->
    qtc_QStyle_subControlRect1 cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 (toCLong $ qEnum_toInt x3) cobj_x4

instance QsubControlRect_h (QStyle ()) ((ComplexControl, QStyleOptionComplex t2, SubControl)) where
 subControlRect_h x0 (x1, x2, x3)
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QStyle_subControlRect_qth cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 (toCLong $ qEnum_toInt x3) crect_ret_x crect_ret_y crect_ret_w crect_ret_h

foreign import ccall "qtc_QStyle_subControlRect_qth" qtc_QStyle_subControlRect_qth :: Ptr (TQStyle a) -> CLong -> Ptr (TQStyleOptionComplex t2) -> CLong -> Ptr CInt -> Ptr CInt -> Ptr CInt -> Ptr CInt -> IO ()

instance QsubControlRect_h (QStyleSc a) ((ComplexControl, QStyleOptionComplex t2, SubControl)) where
 subControlRect_h x0 (x1, x2, x3)
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QStyle_subControlRect_qth cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 (toCLong $ qEnum_toInt x3) crect_ret_x crect_ret_y crect_ret_w crect_ret_h

instance QsubControlRect_h (QStyle ()) ((ComplexControl, QStyleOptionComplex t2, SubControl, QWidget t4)) where
 subControlRect_h x0 (x1, x2, x3, x4)
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x4 $ \cobj_x4 ->
    qtc_QStyle_subControlRect1_qth cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 (toCLong $ qEnum_toInt x3) cobj_x4 crect_ret_x crect_ret_y crect_ret_w crect_ret_h

foreign import ccall "qtc_QStyle_subControlRect1_qth" qtc_QStyle_subControlRect1_qth :: Ptr (TQStyle a) -> CLong -> Ptr (TQStyleOptionComplex t2) -> CLong -> Ptr (TQWidget t4) -> Ptr CInt -> Ptr CInt -> Ptr CInt -> Ptr CInt -> IO ()

instance QsubControlRect_h (QStyleSc a) ((ComplexControl, QStyleOptionComplex t2, SubControl, QWidget t4)) where
 subControlRect_h x0 (x1, x2, x3, x4)
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x4 $ \cobj_x4 ->
    qtc_QStyle_subControlRect1_qth cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 (toCLong $ qEnum_toInt x3) cobj_x4 crect_ret_x crect_ret_y crect_ret_w crect_ret_h

instance QsetHandler (QStyle ()) (QStyle x0 -> SubElement -> QStyleOption t2 -> IO (QRect t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QStyle31 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QStyle31_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QStyle_setHandler31 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQStyle x0) -> CLong -> Ptr (TQStyleOption t2) -> IO (Ptr (TQRect t0))
    setHandlerWrapper x0 x1 x2
      = do x0obj <- qStyleFromPtr x0
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

foreign import ccall "qtc_QStyle_setHandler31" qtc_QStyle_setHandler31 :: Ptr (TQStyle a) -> CWString -> Ptr (Ptr (TQStyle x0) -> CLong -> Ptr (TQStyleOption t2) -> IO (Ptr (TQRect t0))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QStyle31 :: (Ptr (TQStyle x0) -> CLong -> Ptr (TQStyleOption t2) -> IO (Ptr (TQRect t0))) -> IO (FunPtr (Ptr (TQStyle x0) -> CLong -> Ptr (TQStyleOption t2) -> IO (Ptr (TQRect t0))))

foreign import ccall "wrapper" wrapSetHandler_QStyle31_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QStyleSc a) (QStyle x0 -> SubElement -> QStyleOption t2 -> IO (QRect t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QStyle31 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QStyle31_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QStyle_setHandler31 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQStyle x0) -> CLong -> Ptr (TQStyleOption t2) -> IO (Ptr (TQRect t0))
    setHandlerWrapper x0 x1 x2
      = do x0obj <- qStyleFromPtr x0
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

instance QsetHandler (QStyle ()) (QStyle x0 -> SubElement -> QStyleOption t2 -> QObject t3 -> IO (QRect t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QStyle32 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QStyle32_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QStyle_setHandler32 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQStyle x0) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQObject t3) -> IO (Ptr (TQRect t0))
    setHandlerWrapper x0 x1 x2 x3
      = do x0obj <- qStyleFromPtr x0
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

foreign import ccall "qtc_QStyle_setHandler32" qtc_QStyle_setHandler32 :: Ptr (TQStyle a) -> CWString -> Ptr (Ptr (TQStyle x0) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQObject t3) -> IO (Ptr (TQRect t0))) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QStyle32 :: (Ptr (TQStyle x0) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQObject t3) -> IO (Ptr (TQRect t0))) -> IO (FunPtr (Ptr (TQStyle x0) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQObject t3) -> IO (Ptr (TQRect t0))))

foreign import ccall "wrapper" wrapSetHandler_QStyle32_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QStyleSc a) (QStyle x0 -> SubElement -> QStyleOption t2 -> QObject t3 -> IO (QRect t0)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QStyle32 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QStyle32_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QStyle_setHandler32 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQStyle x0) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQObject t3) -> IO (Ptr (TQRect t0))
    setHandlerWrapper x0 x1 x2 x3
      = do x0obj <- qStyleFromPtr x0
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

instance QqsubElementRect_h (QStyle ()) ((SubElement, QStyleOption t2)) where
 qsubElementRect_h x0 (x1, x2)
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QStyle_subElementRect cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2

foreign import ccall "qtc_QStyle_subElementRect" qtc_QStyle_subElementRect :: Ptr (TQStyle a) -> CLong -> Ptr (TQStyleOption t2) -> IO (Ptr (TQRect ()))

instance QqsubElementRect_h (QStyleSc a) ((SubElement, QStyleOption t2)) where
 qsubElementRect_h x0 (x1, x2)
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QStyle_subElementRect cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2

instance QqsubElementRect_h (QStyle ()) ((SubElement, QStyleOption t2, QWidget t3)) where
 qsubElementRect_h x0 (x1, x2, x3)
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QStyle_subElementRect1 cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 cobj_x3

foreign import ccall "qtc_QStyle_subElementRect1" qtc_QStyle_subElementRect1 :: Ptr (TQStyle a) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQWidget t3) -> IO (Ptr (TQRect ()))

instance QqsubElementRect_h (QStyleSc a) ((SubElement, QStyleOption t2, QWidget t3)) where
 qsubElementRect_h x0 (x1, x2, x3)
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QStyle_subElementRect1 cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 cobj_x3

instance QsubElementRect_h (QStyle ()) ((SubElement, QStyleOption t2)) where
 subElementRect_h x0 (x1, x2)
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QStyle_subElementRect_qth cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 crect_ret_x crect_ret_y crect_ret_w crect_ret_h

foreign import ccall "qtc_QStyle_subElementRect_qth" qtc_QStyle_subElementRect_qth :: Ptr (TQStyle a) -> CLong -> Ptr (TQStyleOption t2) -> Ptr CInt -> Ptr CInt -> Ptr CInt -> Ptr CInt -> IO ()

instance QsubElementRect_h (QStyleSc a) ((SubElement, QStyleOption t2)) where
 subElementRect_h x0 (x1, x2)
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QStyle_subElementRect_qth cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 crect_ret_x crect_ret_y crect_ret_w crect_ret_h

instance QsubElementRect_h (QStyle ()) ((SubElement, QStyleOption t2, QWidget t3)) where
 subElementRect_h x0 (x1, x2, x3)
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QStyle_subElementRect1_qth cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 cobj_x3 crect_ret_x crect_ret_y crect_ret_w crect_ret_h

foreign import ccall "qtc_QStyle_subElementRect1_qth" qtc_QStyle_subElementRect1_qth :: Ptr (TQStyle a) -> CLong -> Ptr (TQStyleOption t2) -> Ptr (TQWidget t3) -> Ptr CInt -> Ptr CInt -> Ptr CInt -> Ptr CInt -> IO ()

instance QsubElementRect_h (QStyleSc a) ((SubElement, QStyleOption t2, QWidget t3)) where
 subElementRect_h x0 (x1, x2, x3)
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QStyle_subElementRect1_qth cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 cobj_x3 crect_ret_x crect_ret_y crect_ret_w crect_ret_h

instance Qunpolish_h (QStyle ()) ((QApplication t1)) where
 unpolish_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStyle_unpolish cobj_x0 cobj_x1

foreign import ccall "qtc_QStyle_unpolish" qtc_QStyle_unpolish :: Ptr (TQStyle a) -> Ptr (TQApplication t1) -> IO ()

instance Qunpolish_h (QStyleSc a) ((QApplication t1)) where
 unpolish_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStyle_unpolish cobj_x0 cobj_x1

instance Qunpolish_h (QStyle ()) ((QWidget t1)) where
 unpolish_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStyle_unpolish1 cobj_x0 cobj_x1

foreign import ccall "qtc_QStyle_unpolish1" qtc_QStyle_unpolish1 :: Ptr (TQStyle a) -> Ptr (TQWidget t1) -> IO ()

instance Qunpolish_h (QStyleSc a) ((QWidget t1)) where
 unpolish_h x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStyle_unpolish1 cobj_x0 cobj_x1

instance QsetHandler (QStyle ()) (QStyle x0 -> QEvent t1 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QStyle33 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QStyle33_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QStyle_setHandler33 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQStyle x0) -> Ptr (TQEvent t1) -> IO (CBool)
    setHandlerWrapper x0 x1
      = do x0obj <- qStyleFromPtr x0
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

foreign import ccall "qtc_QStyle_setHandler33" qtc_QStyle_setHandler33 :: Ptr (TQStyle a) -> CWString -> Ptr (Ptr (TQStyle x0) -> Ptr (TQEvent t1) -> IO (CBool)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QStyle33 :: (Ptr (TQStyle x0) -> Ptr (TQEvent t1) -> IO (CBool)) -> IO (FunPtr (Ptr (TQStyle x0) -> Ptr (TQEvent t1) -> IO (CBool)))

foreign import ccall "wrapper" wrapSetHandler_QStyle33_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QStyleSc a) (QStyle x0 -> QEvent t1 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QStyle33 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QStyle33_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QStyle_setHandler33 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQStyle x0) -> Ptr (TQEvent t1) -> IO (CBool)
    setHandlerWrapper x0 x1
      = do x0obj <- qStyleFromPtr x0
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

instance Qevent_h (QStyle ()) ((QEvent t1)) where
 event_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStyle_event cobj_x0 cobj_x1

foreign import ccall "qtc_QStyle_event" qtc_QStyle_event :: Ptr (TQStyle a) -> Ptr (TQEvent t1) -> IO CBool

instance Qevent_h (QStyleSc a) ((QEvent t1)) where
 event_h x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStyle_event cobj_x0 cobj_x1

instance QsetHandler (QStyle ()) (QStyle x0 -> QObject t1 -> QEvent t2 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QStyle34 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QStyle34_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QStyle_setHandler34 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQStyle x0) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO (CBool)
    setHandlerWrapper x0 x1 x2
      = do x0obj <- qStyleFromPtr x0
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

foreign import ccall "qtc_QStyle_setHandler34" qtc_QStyle_setHandler34 :: Ptr (TQStyle a) -> CWString -> Ptr (Ptr (TQStyle x0) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO (CBool)) -> Ptr () -> Ptr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO ()

foreign import ccall "wrapper" wrapSetHandler_QStyle34 :: (Ptr (TQStyle x0) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO (CBool)) -> IO (FunPtr (Ptr (TQStyle x0) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO (CBool)))

foreign import ccall "wrapper" wrapSetHandler_QStyle34_d :: (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr fun_d -> IO ()))

instance QsetHandler (QStyleSc a) (QStyle x0 -> QObject t1 -> QEvent t2 -> IO (Bool)) where
 setHandler _eobj _eid _handler
  = do
    funptr  <- wrapSetHandler_QStyle34 setHandlerWrapper
    stptr   <- newStablePtr (Wrap _handler)
    funptr_d  <- wrapSetHandler_QStyle34_d setHandlerWrapper_d
    withObjectPtr _eobj $ \cobj_eobj ->
      withCWString _eid $ \cstr_eid ->
      qtc_QStyle_setHandler34 cobj_eobj cstr_eid (toCFunPtr funptr) (castStablePtrToPtr stptr) (toCFunPtr funptr_d)
    return()
  where
    setHandlerWrapper :: Ptr (TQStyle x0) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO (CBool)
    setHandlerWrapper x0 x1 x2
      = do x0obj <- qStyleFromPtr x0
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

instance QeventFilter_h (QStyle ()) ((QObject t1, QEvent t2)) where
 eventFilter_h x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QStyle_eventFilter cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QStyle_eventFilter" qtc_QStyle_eventFilter :: Ptr (TQStyle a) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO CBool

instance QeventFilter_h (QStyleSc a) ((QObject t1, QEvent t2)) where
 eventFilter_h x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QStyle_eventFilter cobj_x0 cobj_x1 cobj_x2

