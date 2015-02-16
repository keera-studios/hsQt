{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QGLFormat.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:36
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Enums.Opengl.QGLFormat (
 OpenGLVersionFlag, eOpenGL_Version_None, eOpenGL_Version_1_1, eOpenGL_Version_1_2, eOpenGL_Version_1_3, eOpenGL_Version_1_4, eOpenGL_Version_1_5, eOpenGL_Version_2_0, eOpenGL_Version_2_1, eOpenGL_ES_Common_Version_1_0, eOpenGL_ES_CommonLite_Version_1_0, eOpenGL_ES_Common_Version_1_1, eOpenGL_ES_CommonLite_Version_1_1, eOpenGL_ES_Version_2_0
 )
 where

import Foreign.C.Types
import Qtc.Classes.Base
import Qtc.ClassTypes.Core (QObject, TQObject, qObjectFromPtr)
import Qtc.Core.Base (Qcs, connectSlot, qtc_connectSlot_int, wrapSlotHandler_int)
import Qtc.Enums.Base
import Qtc.Enums.Classes.Core

data COpenGLVersionFlag a = COpenGLVersionFlag a
type OpenGLVersionFlag = QEnum(COpenGLVersionFlag Int)

ieOpenGLVersionFlag :: Int -> OpenGLVersionFlag
ieOpenGLVersionFlag x = QEnum (COpenGLVersionFlag x)

instance QEnumC (COpenGLVersionFlag Int) where
 qEnum_toInt (QEnum (COpenGLVersionFlag x)) = x
 qEnum_fromInt x = QEnum (COpenGLVersionFlag x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> OpenGLVersionFlag -> IO ()) where
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
            else _handler qobj (qEnum_fromInt hint)
           return ()

eOpenGL_Version_None :: OpenGLVersionFlag
eOpenGL_Version_None
  = ieOpenGLVersionFlag $ 0
eOpenGL_Version_1_1 :: OpenGLVersionFlag
eOpenGL_Version_1_1
  = ieOpenGLVersionFlag $ 1
eOpenGL_Version_1_2 :: OpenGLVersionFlag
eOpenGL_Version_1_2
  = ieOpenGLVersionFlag $ 2
eOpenGL_Version_1_3 :: OpenGLVersionFlag
eOpenGL_Version_1_3
  = ieOpenGLVersionFlag $ 4
eOpenGL_Version_1_4 :: OpenGLVersionFlag
eOpenGL_Version_1_4
  = ieOpenGLVersionFlag $ 8
eOpenGL_Version_1_5 :: OpenGLVersionFlag
eOpenGL_Version_1_5
  = ieOpenGLVersionFlag $ 16
eOpenGL_Version_2_0 :: OpenGLVersionFlag
eOpenGL_Version_2_0
  = ieOpenGLVersionFlag $ 32
eOpenGL_Version_2_1 :: OpenGLVersionFlag
eOpenGL_Version_2_1
  = ieOpenGLVersionFlag $ 64
eOpenGL_ES_Common_Version_1_0 :: OpenGLVersionFlag
eOpenGL_ES_Common_Version_1_0
  = ieOpenGLVersionFlag $ 128
eOpenGL_ES_CommonLite_Version_1_0 :: OpenGLVersionFlag
eOpenGL_ES_CommonLite_Version_1_0
  = ieOpenGLVersionFlag $ 256
eOpenGL_ES_Common_Version_1_1 :: OpenGLVersionFlag
eOpenGL_ES_Common_Version_1_1
  = ieOpenGLVersionFlag $ 512
eOpenGL_ES_CommonLite_Version_1_1 :: OpenGLVersionFlag
eOpenGL_ES_CommonLite_Version_1_1
  = ieOpenGLVersionFlag $ 1024
eOpenGL_ES_Version_2_0 :: OpenGLVersionFlag
eOpenGL_ES_Version_2_0
  = ieOpenGLVersionFlag $ 2048

