{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : Opengl.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:30
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.ClassTypes.Opengl (
  QGL, TQGL, CQGL, qCast_QGL, QGLSc, TQGLSc, CQGLSc, qCastList_QGL, withQGLResult
  ,QGLFormat, TQGLFormat, CQGLFormat, qCast_QGLFormat, QGLFormatSc, TQGLFormatSc, CQGLFormatSc, qCastList_QGLFormat, withQGLFormatResult, qGLFormatAddFinalizer
  ,QGLColormap, TQGLColormap, CQGLColormap, qCast_QGLColormap, QGLColormapSc, TQGLColormapSc, CQGLColormapSc, qCastList_QGLColormap, withQGLColormapResult, qGLColormapAddFinalizer
  ,QGLContext, TQGLContext, CQGLContext, qCast_QGLContext, QGLContextSc, TQGLContextSc, CQGLContextSc, qCastList_QGLContext, withQGLContextResult, qGLContextAddFinalizer, qGLContextAddFinalizer1
  ,QGLFramebufferObject, TQGLFramebufferObject, CQGLFramebufferObject, qCast_QGLFramebufferObject, QGLFramebufferObjectSc, TQGLFramebufferObjectSc, CQGLFramebufferObjectSc, qCastList_QGLFramebufferObject, withQGLFramebufferObjectResult, qGLFramebufferObjectAddFinalizer, qGLFramebufferObjectAddFinalizer1
  ,QGLPixelBuffer, TQGLPixelBuffer, CQGLPixelBuffer, qCast_QGLPixelBuffer, QGLPixelBufferSc, TQGLPixelBufferSc, CQGLPixelBufferSc, qCastList_QGLPixelBuffer, withQGLPixelBufferResult, qGLPixelBufferAddFinalizer, qGLPixelBufferAddFinalizer1
  ,QGLWidget, TQGLWidget, CQGLWidget, qCast_QGLWidget, QGLWidgetSc, TQGLWidgetSc, CQGLWidgetSc, qCastList_QGLWidget, withQGLWidgetResult, qGLWidgetFromPtr, withQListQGLWidgetResult, qGLWidgetListFromPtrList
  )
  where

import Foreign.C.Types
import Qtc.Classes.Types
import Qtc.ClassTypes.Core
import Qtc.ClassTypes.Gui

type QGL a = Object (CQGL a)
type TQGL a = CQGL a
data CQGL a = CQGL

type QGLSc a = QGL (CQGLSc a)
type TQGLSc a = TQGL (CQGLSc a)
data CQGLSc a = CQGLSc

qCast_QGL :: Object a -> IO (QGL ())
qCast_QGL _qobj
  = return (objectCast _qobj)

withQGLResult :: IO (Ptr (TQGL a)) -> IO (QGL a)
withQGLResult f
  = withObjectRefResult f

class QqCastList_QGL a r where
  qcl_QGL :: [QGL ()] -> a -> r

instance QqCastList_QGL (QGL ()) [QGL ()] where
  qcl_QGL l x = reverse $ x:l

instance QqCastList_QGL a r => QqCastList_QGL (QGL ()) (a -> r) where
  qcl_QGL l x sx = qcl_QGL (x:l) sx

qCastList_QGL x = qcl_QGL [] x

type QGLFormat a = Object (CQGLFormat a)
type TQGLFormat a = CQGLFormat a
data CQGLFormat a = CQGLFormat

type QGLFormatSc a = QGLFormat (CQGLFormatSc a)
type TQGLFormatSc a = TQGLFormat (CQGLFormatSc a)
data CQGLFormatSc a = CQGLFormatSc

qCast_QGLFormat :: Object a -> IO (QGLFormat ())
qCast_QGLFormat _qobj
  = return (objectCast _qobj)

withQGLFormatResult :: IO (Ptr (TQGLFormat a)) -> IO (QGLFormat a)
withQGLFormatResult f
  = withObjectResult qtc_QGLFormat_getFinalizer f

foreign import ccall qtc_QGLFormat_getFinalizer :: FunPtr (Ptr (TQGLFormat a) -> IO ())

qGLFormatAddFinalizer :: QGLFormat a -> IO ()
qGLFormatAddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QGLFormat_getFinalizer fp

class QqCastList_QGLFormat a r where
  qcl_QGLFormat :: [QGLFormat ()] -> a -> r

instance QqCastList_QGLFormat (QGLFormat ()) [QGLFormat ()] where
  qcl_QGLFormat l x = reverse $ x:l

instance QqCastList_QGLFormat a r => QqCastList_QGLFormat (QGLFormat ()) (a -> r) where
  qcl_QGLFormat l x sx = qcl_QGLFormat (x:l) sx

qCastList_QGLFormat x = qcl_QGLFormat [] x

type QGLColormap a = Object (CQGLColormap a)
type TQGLColormap a = CQGLColormap a
data CQGLColormap a = CQGLColormap

type QGLColormapSc a = QGLColormap (CQGLColormapSc a)
type TQGLColormapSc a = TQGLColormap (CQGLColormapSc a)
data CQGLColormapSc a = CQGLColormapSc

qCast_QGLColormap :: Object a -> IO (QGLColormap ())
qCast_QGLColormap _qobj
  = return (objectCast _qobj)

withQGLColormapResult :: IO (Ptr (TQGLColormap a)) -> IO (QGLColormap a)
withQGLColormapResult f
  = withObjectResult qtc_QGLColormap_getFinalizer f

foreign import ccall qtc_QGLColormap_getFinalizer :: FunPtr (Ptr (TQGLColormap a) -> IO ())

qGLColormapAddFinalizer :: QGLColormap a -> IO ()
qGLColormapAddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QGLColormap_getFinalizer fp

class QqCastList_QGLColormap a r where
  qcl_QGLColormap :: [QGLColormap ()] -> a -> r

instance QqCastList_QGLColormap (QGLColormap ()) [QGLColormap ()] where
  qcl_QGLColormap l x = reverse $ x:l

instance QqCastList_QGLColormap a r => QqCastList_QGLColormap (QGLColormap ()) (a -> r) where
  qcl_QGLColormap l x sx = qcl_QGLColormap (x:l) sx

qCastList_QGLColormap x = qcl_QGLColormap [] x

type QGLContext a = Object (CQGLContext a)
type TQGLContext a = CQGLContext a
data CQGLContext a = CQGLContext

type QGLContextSc a = QGLContext (CQGLContextSc a)
type TQGLContextSc a = TQGLContext (CQGLContextSc a)
data CQGLContextSc a = CQGLContextSc

qCast_QGLContext :: Object a -> IO (QGLContext ())
qCast_QGLContext _qobj
  = return (objectCast _qobj)

withQGLContextResult :: IO (Ptr (TQGLContext a)) -> IO (QGLContext a)
withQGLContextResult f
  = withObjectResult qtc_QGLContext_getFinalizer f

foreign import ccall qtc_QGLContext_getFinalizer :: FunPtr (Ptr (TQGLContext a) -> IO ())

qGLContextAddFinalizer :: QGLContext a -> IO ()
qGLContextAddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QGLContext_getFinalizer fp

foreign import ccall qtc_QGLContext_getFinalizer1 :: FunPtr (Ptr (TQGLContext a) -> IO ())

qGLContextAddFinalizer1 :: QGLContext a -> IO ()
qGLContextAddFinalizer1 (Object fp)
  = addForeignPtrFinalizer qtc_QGLContext_getFinalizer1 fp

class QqCastList_QGLContext a r where
  qcl_QGLContext :: [QGLContext ()] -> a -> r

instance QqCastList_QGLContext (QGLContext ()) [QGLContext ()] where
  qcl_QGLContext l x = reverse $ x:l

instance QqCastList_QGLContext a r => QqCastList_QGLContext (QGLContext ()) (a -> r) where
  qcl_QGLContext l x sx = qcl_QGLContext (x:l) sx

qCastList_QGLContext x = qcl_QGLContext [] x

type QGLFramebufferObject a = QPaintDevice (CQGLFramebufferObject a)
type TQGLFramebufferObject a = TQPaintDevice (CQGLFramebufferObject a)
data CQGLFramebufferObject a = CQGLFramebufferObject

type QGLFramebufferObjectSc a = QGLFramebufferObject (CQGLFramebufferObjectSc a)
type TQGLFramebufferObjectSc a = TQGLFramebufferObject (CQGLFramebufferObjectSc a)
data CQGLFramebufferObjectSc a = CQGLFramebufferObjectSc

qCast_QGLFramebufferObject :: Object a -> IO (QGLFramebufferObject ())
qCast_QGLFramebufferObject _qobj
  = return (objectCast _qobj)

withQGLFramebufferObjectResult :: IO (Ptr (TQGLFramebufferObject a)) -> IO (QGLFramebufferObject a)
withQGLFramebufferObjectResult f
  = withObjectResult qtc_QGLFramebufferObject_getFinalizer f

foreign import ccall qtc_QGLFramebufferObject_getFinalizer :: FunPtr (Ptr (TQGLFramebufferObject a) -> IO ())

qGLFramebufferObjectAddFinalizer :: QGLFramebufferObject a -> IO ()
qGLFramebufferObjectAddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QGLFramebufferObject_getFinalizer fp

foreign import ccall qtc_QGLFramebufferObject_getFinalizer1 :: FunPtr (Ptr (TQGLFramebufferObject a) -> IO ())

qGLFramebufferObjectAddFinalizer1 :: QGLFramebufferObject a -> IO ()
qGLFramebufferObjectAddFinalizer1 (Object fp)
  = addForeignPtrFinalizer qtc_QGLFramebufferObject_getFinalizer1 fp

class QqCastList_QGLFramebufferObject a r where
  qcl_QGLFramebufferObject :: [QGLFramebufferObject ()] -> a -> r

instance QqCastList_QGLFramebufferObject (QGLFramebufferObject ()) [QGLFramebufferObject ()] where
  qcl_QGLFramebufferObject l x = reverse $ x:l

instance QqCastList_QGLFramebufferObject a r => QqCastList_QGLFramebufferObject (QGLFramebufferObject ()) (a -> r) where
  qcl_QGLFramebufferObject l x sx = qcl_QGLFramebufferObject (x:l) sx

qCastList_QGLFramebufferObject x = qcl_QGLFramebufferObject [] x

type QGLPixelBuffer a = QPaintDevice (CQGLPixelBuffer a)
type TQGLPixelBuffer a = TQPaintDevice (CQGLPixelBuffer a)
data CQGLPixelBuffer a = CQGLPixelBuffer

type QGLPixelBufferSc a = QGLPixelBuffer (CQGLPixelBufferSc a)
type TQGLPixelBufferSc a = TQGLPixelBuffer (CQGLPixelBufferSc a)
data CQGLPixelBufferSc a = CQGLPixelBufferSc

qCast_QGLPixelBuffer :: Object a -> IO (QGLPixelBuffer ())
qCast_QGLPixelBuffer _qobj
  = return (objectCast _qobj)

withQGLPixelBufferResult :: IO (Ptr (TQGLPixelBuffer a)) -> IO (QGLPixelBuffer a)
withQGLPixelBufferResult f
  = withObjectResult qtc_QGLPixelBuffer_getFinalizer f

foreign import ccall qtc_QGLPixelBuffer_getFinalizer :: FunPtr (Ptr (TQGLPixelBuffer a) -> IO ())

qGLPixelBufferAddFinalizer :: QGLPixelBuffer a -> IO ()
qGLPixelBufferAddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QGLPixelBuffer_getFinalizer fp

foreign import ccall qtc_QGLPixelBuffer_getFinalizer1 :: FunPtr (Ptr (TQGLPixelBuffer a) -> IO ())

qGLPixelBufferAddFinalizer1 :: QGLPixelBuffer a -> IO ()
qGLPixelBufferAddFinalizer1 (Object fp)
  = addForeignPtrFinalizer qtc_QGLPixelBuffer_getFinalizer1 fp

class QqCastList_QGLPixelBuffer a r where
  qcl_QGLPixelBuffer :: [QGLPixelBuffer ()] -> a -> r

instance QqCastList_QGLPixelBuffer (QGLPixelBuffer ()) [QGLPixelBuffer ()] where
  qcl_QGLPixelBuffer l x = reverse $ x:l

instance QqCastList_QGLPixelBuffer a r => QqCastList_QGLPixelBuffer (QGLPixelBuffer ()) (a -> r) where
  qcl_QGLPixelBuffer l x sx = qcl_QGLPixelBuffer (x:l) sx

qCastList_QGLPixelBuffer x = qcl_QGLPixelBuffer [] x

type QGLWidget a = QWidget (CQGLWidget a)
type TQGLWidget a = TQWidget (CQGLWidget a)
data CQGLWidget a = CQGLWidget

type QGLWidgetSc a = QGLWidget (CQGLWidgetSc a)
type TQGLWidgetSc a = TQGLWidget (CQGLWidgetSc a)
data CQGLWidgetSc a = CQGLWidgetSc

qCast_QGLWidget :: Object a -> IO (QGLWidget ())
qCast_QGLWidget _qobj
  = return (objectCast _qobj)

withQGLWidgetResult :: IO (Ptr (TQGLWidget a)) -> IO (QGLWidget a)
withQGLWidgetResult f
  = withObjectResult qtc_QGLWidget_getFinalizer f

qGLWidgetFromPtr :: Ptr (TQGLWidget a) -> IO (QGLWidget a)
qGLWidgetFromPtr p
  = objectFromPtr qtc_QGLWidget_getFinalizer p

withQListQGLWidgetResult :: (Ptr (Ptr (TQGLWidget a)) -> IO CInt) -> IO [QGLWidget a]
withQListQGLWidgetResult f
  = withQListObjectResult qtc_QGLWidget_getFinalizer f

qGLWidgetListFromPtrList :: [Ptr (TQGLWidget a)] -> IO [QGLWidget a]
qGLWidgetListFromPtrList p
  = objectListFromPtrList qtc_QGLWidget_getFinalizer p

foreign import ccall qtc_QGLWidget_getFinalizer :: FunPtr (Ptr (TQGLWidget a) -> IO ())

class QqCastList_QGLWidget a r where
  qcl_QGLWidget :: [QGLWidget ()] -> a -> r

instance QqCastList_QGLWidget (QGLWidget ()) [QGLWidget ()] where
  qcl_QGLWidget l x = reverse $ x:l

instance QqCastList_QGLWidget a r => QqCastList_QGLWidget (QGLWidget ()) (a -> r) where
  qcl_QGLWidget l x sx = qcl_QGLWidget (x:l) sx

qCastList_QGLWidget x = qcl_QGLWidget [] x

