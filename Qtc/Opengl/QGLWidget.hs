{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QGLWidget.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:32
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Opengl.QGLWidget (
  QqGLWidget(..)
  ,QautoBufferSwap(..)
  ,colormap
  ,qGLWidgetConvertToGLFormat, qGLWidgetConvertToGLFormat_nf
  ,QfontDisplayListBase(..)
  ,QglDraw(..)
  ,QglInit(..)
  ,QgrabFrameBuffer(..), QgrabFrameBuffer_nf(..)
  ,QinitializeGL(..)
  ,QinitializeOverlayGL(..)
  ,makeOverlayCurrent
  ,overlayContext
  ,QpaintGL(..)
  ,QpaintOverlayGL(..)
  ,qglClearColor
  ,qglColor
  ,QrenderPixmap(..), QrenderPixmap_nf(..)
  ,QrenderText(..)
  ,QresizeGL(..)
  ,QresizeOverlayGL(..)
  ,QsetAutoBufferSwap(..)
  ,setColormap
  ,QupdateGL(..)
  ,QupdateOverlayGL(..)
  ,qGLWidget_delete
  ,qGLWidget_deleteLater
  )
  where

import Foreign.C.Types
import Qth.ClassTypes.Core
import Qtc.Enums.Base
import Qtc.Enums.Gui.QPaintDevice
import Qtc.Enums.Core.Qt

import Qtc.Classes.Base
import Qtc.Classes.Qccs
import Qtc.Classes.Core
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core
import Qtc.Classes.Gui
import Qtc.ClassTypes.Gui
import Qtc.Classes.Opengl
import Qtc.ClassTypes.Opengl

instance QuserMethod (QGLWidget ()) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QGLWidget_userMethod cobj_qobj (toCInt evid)

foreign import ccall "qtc_QGLWidget_userMethod" qtc_QGLWidget_userMethod :: Ptr (TQGLWidget a) -> CInt -> IO ()

instance QuserMethod (QGLWidgetSc a) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QGLWidget_userMethod cobj_qobj (toCInt evid)

instance QuserMethod (QGLWidget ()) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QGLWidget_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

foreign import ccall "qtc_QGLWidget_userMethodVariant" qtc_QGLWidget_userMethodVariant :: Ptr (TQGLWidget a) -> CInt -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))

instance QuserMethod (QGLWidgetSc a) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QGLWidget_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

class QqGLWidget x1 where
  qGLWidget :: x1 -> IO (QGLWidget ())

instance QqGLWidget (()) where
 qGLWidget ()
  = withQGLWidgetResult $
    qtc_QGLWidget

foreign import ccall "qtc_QGLWidget" qtc_QGLWidget :: IO (Ptr (TQGLWidget ()))

instance QqGLWidget ((QWidget t1)) where
 qGLWidget (x1)
  = withQGLWidgetResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGLWidget1 cobj_x1

foreign import ccall "qtc_QGLWidget1" qtc_QGLWidget1 :: Ptr (TQWidget t1) -> IO (Ptr (TQGLWidget ()))

instance QqGLWidget ((QGLContext t1)) where
 qGLWidget (x1)
  = withQGLWidgetResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGLWidget2 cobj_x1

foreign import ccall "qtc_QGLWidget2" qtc_QGLWidget2 :: Ptr (TQGLContext t1) -> IO (Ptr (TQGLWidget ()))

instance QqGLWidget ((QGLFormat t1)) where
 qGLWidget (x1)
  = withQGLWidgetResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGLWidget3 cobj_x1

foreign import ccall "qtc_QGLWidget3" qtc_QGLWidget3 :: Ptr (TQGLFormat t1) -> IO (Ptr (TQGLWidget ()))

instance QqGLWidget ((QGLContext t1, QWidget t2)) where
 qGLWidget (x1, x2)
  = withQGLWidgetResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGLWidget4 cobj_x1 cobj_x2

foreign import ccall "qtc_QGLWidget4" qtc_QGLWidget4 :: Ptr (TQGLContext t1) -> Ptr (TQWidget t2) -> IO (Ptr (TQGLWidget ()))

instance QqGLWidget ((QGLFormat t1, QWidget t2)) where
 qGLWidget (x1, x2)
  = withQGLWidgetResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGLWidget5 cobj_x1 cobj_x2

foreign import ccall "qtc_QGLWidget5" qtc_QGLWidget5 :: Ptr (TQGLFormat t1) -> Ptr (TQWidget t2) -> IO (Ptr (TQGLWidget ()))

instance QqGLWidget ((QWidget t1, QGLWidget t2, WindowFlags)) where
 qGLWidget (x1, x2, x3)
  = withQGLWidgetResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGLWidget6 cobj_x1 cobj_x2 (toCLong $ qFlags_toInt x3)

foreign import ccall "qtc_QGLWidget6" qtc_QGLWidget6 :: Ptr (TQWidget t1) -> Ptr (TQGLWidget t2) -> CLong -> IO (Ptr (TQGLWidget ()))

instance QqGLWidget ((QGLContext t1, QWidget t2, QGLWidget t3, WindowFlags)) where
 qGLWidget (x1, x2, x3, x4)
  = withQGLWidgetResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QGLWidget7 cobj_x1 cobj_x2 cobj_x3 (toCLong $ qFlags_toInt x4)

foreign import ccall "qtc_QGLWidget7" qtc_QGLWidget7 :: Ptr (TQGLContext t1) -> Ptr (TQWidget t2) -> Ptr (TQGLWidget t3) -> CLong -> IO (Ptr (TQGLWidget ()))

instance QqGLWidget ((QGLFormat t1, QWidget t2, QGLWidget t3, WindowFlags)) where
 qGLWidget (x1, x2, x3, x4)
  = withQGLWidgetResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QGLWidget8 cobj_x1 cobj_x2 cobj_x3 (toCLong $ qFlags_toInt x4)

foreign import ccall "qtc_QGLWidget8" qtc_QGLWidget8 :: Ptr (TQGLFormat t1) -> Ptr (TQWidget t2) -> Ptr (TQGLWidget t3) -> CLong -> IO (Ptr (TQGLWidget ()))

class QautoBufferSwap x0 x1 where
 autoBufferSwap :: x0 -> x1 -> IO (Bool)

instance QautoBufferSwap (QGLWidget ()) (()) where
 autoBufferSwap x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLWidget_autoBufferSwap cobj_x0

foreign import ccall "qtc_QGLWidget_autoBufferSwap" qtc_QGLWidget_autoBufferSwap :: Ptr (TQGLWidget a) -> IO CBool

instance QautoBufferSwap (QGLWidgetSc a) (()) where
 autoBufferSwap x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLWidget_autoBufferSwap cobj_x0

instance QbindTexture (QGLWidget a) ((QImage t1)) where
 bindTexture x0 (x1)
  = withUnsignedIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGLWidget_bindTexture2 cobj_x0 cobj_x1

foreign import ccall "qtc_QGLWidget_bindTexture2" qtc_QGLWidget_bindTexture2 :: Ptr (TQGLWidget a) -> Ptr (TQImage t1) -> IO CUInt

instance QbindTexture (QGLWidget a) ((QImage t1, Int)) where
 bindTexture x0 (x1, x2)
  = withUnsignedIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGLWidget_bindTexture3 cobj_x0 cobj_x1 (toCInt x2)

foreign import ccall "qtc_QGLWidget_bindTexture3" qtc_QGLWidget_bindTexture3 :: Ptr (TQGLWidget a) -> Ptr (TQImage t1) -> CInt -> IO CUInt

instance QbindTexture (QGLWidget a) ((QImage t1, Int, Int)) where
 bindTexture x0 (x1, x2, x3)
  = withUnsignedIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGLWidget_bindTexture5 cobj_x0 cobj_x1 (toCInt x2) (toCInt x3)

foreign import ccall "qtc_QGLWidget_bindTexture5" qtc_QGLWidget_bindTexture5 :: Ptr (TQGLWidget a) -> Ptr (TQImage t1) -> CInt -> CInt -> IO CUInt

instance QbindTexture (QGLWidget a) ((QPixmap t1)) where
 bindTexture x0 (x1)
  = withUnsignedIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGLWidget_bindTexture1 cobj_x0 cobj_x1

foreign import ccall "qtc_QGLWidget_bindTexture1" qtc_QGLWidget_bindTexture1 :: Ptr (TQGLWidget a) -> Ptr (TQPixmap t1) -> IO CUInt

instance QbindTexture (QGLWidget a) ((QPixmap t1, Int)) where
 bindTexture x0 (x1, x2)
  = withUnsignedIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGLWidget_bindTexture4 cobj_x0 cobj_x1 (toCInt x2)

foreign import ccall "qtc_QGLWidget_bindTexture4" qtc_QGLWidget_bindTexture4 :: Ptr (TQGLWidget a) -> Ptr (TQPixmap t1) -> CInt -> IO CUInt

instance QbindTexture (QGLWidget a) ((QPixmap t1, Int, Int)) where
 bindTexture x0 (x1, x2, x3)
  = withUnsignedIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGLWidget_bindTexture6 cobj_x0 cobj_x1 (toCInt x2) (toCInt x3)

foreign import ccall "qtc_QGLWidget_bindTexture6" qtc_QGLWidget_bindTexture6 :: Ptr (TQGLWidget a) -> Ptr (TQPixmap t1) -> CInt -> CInt -> IO CUInt

instance QbindTexture (QGLWidget a) ((String)) where
 bindTexture x0 (x1)
  = withUnsignedIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QGLWidget_bindTexture cobj_x0 cstr_x1

foreign import ccall "qtc_QGLWidget_bindTexture" qtc_QGLWidget_bindTexture :: Ptr (TQGLWidget a) -> CWString -> IO CUInt

colormap :: QGLWidget a -> (()) -> IO (QGLColormap ())
colormap x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLWidget_colormap cobj_x0

foreign import ccall "qtc_QGLWidget_colormap" qtc_QGLWidget_colormap :: Ptr (TQGLWidget a) -> IO (Ptr (TQGLColormap ()))

instance Qcontext (QGLWidget a) (()) (IO (QGLContext ())) where
 context x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLWidget_context cobj_x0

foreign import ccall "qtc_QGLWidget_context" qtc_QGLWidget_context :: Ptr (TQGLWidget a) -> IO (Ptr (TQGLContext ()))

qGLWidgetConvertToGLFormat :: ((QImage t1)) -> IO (QImage ())
qGLWidgetConvertToGLFormat (x1)
  = withQImageResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGLWidget_convertToGLFormat cobj_x1

foreign import ccall "qtc_QGLWidget_convertToGLFormat" qtc_QGLWidget_convertToGLFormat :: Ptr (TQImage t1) -> IO (Ptr (TQImage ()))

qGLWidgetConvertToGLFormat_nf :: ((QImage t1)) -> IO (QImage ())
qGLWidgetConvertToGLFormat_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGLWidget_convertToGLFormat cobj_x1

instance QdeleteTexture (QGLWidget a) ((Int)) where
 deleteTexture x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLWidget_deleteTexture cobj_x0 (toCUInt x1)

foreign import ccall "qtc_QGLWidget_deleteTexture" qtc_QGLWidget_deleteTexture :: Ptr (TQGLWidget a) -> CUInt -> IO ()

instance QdoneCurrent (QGLWidget a) (()) (IO ()) where
 doneCurrent x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLWidget_doneCurrent cobj_x0

foreign import ccall "qtc_QGLWidget_doneCurrent" qtc_QGLWidget_doneCurrent :: Ptr (TQGLWidget a) -> IO ()

instance QdoubleBuffer (QGLWidget a) (()) where
 doubleBuffer x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLWidget_doubleBuffer cobj_x0

foreign import ccall "qtc_QGLWidget_doubleBuffer" qtc_QGLWidget_doubleBuffer :: Ptr (TQGLWidget a) -> IO CBool

instance Qevent (QGLWidget ()) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGLWidget_event_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGLWidget_event_h" qtc_QGLWidget_event_h :: Ptr (TQGLWidget a) -> Ptr (TQEvent t1) -> IO CBool

instance Qevent (QGLWidgetSc a) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGLWidget_event_h cobj_x0 cobj_x1

class QfontDisplayListBase x0 x1 where
 fontDisplayListBase :: x0 -> x1 -> IO (Int)

instance QfontDisplayListBase (QGLWidget ()) ((QFont t1)) where
 fontDisplayListBase x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGLWidget_fontDisplayListBase cobj_x0 cobj_x1

foreign import ccall "qtc_QGLWidget_fontDisplayListBase" qtc_QGLWidget_fontDisplayListBase :: Ptr (TQGLWidget a) -> Ptr (TQFont t1) -> IO CInt

instance QfontDisplayListBase (QGLWidgetSc a) ((QFont t1)) where
 fontDisplayListBase x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGLWidget_fontDisplayListBase cobj_x0 cobj_x1

instance QfontDisplayListBase (QGLWidget ()) ((QFont t1, Int)) where
 fontDisplayListBase x0 (x1, x2)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGLWidget_fontDisplayListBase1 cobj_x0 cobj_x1 (toCInt x2)

foreign import ccall "qtc_QGLWidget_fontDisplayListBase1" qtc_QGLWidget_fontDisplayListBase1 :: Ptr (TQGLWidget a) -> Ptr (TQFont t1) -> CInt -> IO CInt

instance QfontDisplayListBase (QGLWidgetSc a) ((QFont t1, Int)) where
 fontDisplayListBase x0 (x1, x2)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGLWidget_fontDisplayListBase1 cobj_x0 cobj_x1 (toCInt x2)

instance Qformat (QGLWidget a) (()) (IO (QGLFormat ())) where
 format x0 ()
  = withQGLFormatResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLWidget_format cobj_x0

foreign import ccall "qtc_QGLWidget_format" qtc_QGLWidget_format :: Ptr (TQGLWidget a) -> IO (Ptr (TQGLFormat ()))

class QglDraw x0 x1 where
 glDraw :: x0 -> x1 -> IO ()

instance QglDraw (QGLWidget ()) (()) where
 glDraw x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLWidget_glDraw_h cobj_x0

foreign import ccall "qtc_QGLWidget_glDraw_h" qtc_QGLWidget_glDraw_h :: Ptr (TQGLWidget a) -> IO ()

instance QglDraw (QGLWidgetSc a) (()) where
 glDraw x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLWidget_glDraw_h cobj_x0

class QglInit x0 x1 where
 glInit :: x0 -> x1 -> IO ()

instance QglInit (QGLWidget ()) (()) where
 glInit x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLWidget_glInit_h cobj_x0

foreign import ccall "qtc_QGLWidget_glInit_h" qtc_QGLWidget_glInit_h :: Ptr (TQGLWidget a) -> IO ()

instance QglInit (QGLWidgetSc a) (()) where
 glInit x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLWidget_glInit_h cobj_x0

class QgrabFrameBuffer x0 x1 where
 grabFrameBuffer :: x0 -> x1 -> IO (QImage ())

class QgrabFrameBuffer_nf x0 x1 where
 grabFrameBuffer_nf :: x0 -> x1 -> IO (QImage ())

instance QgrabFrameBuffer (QGLWidget ()) (()) where
 grabFrameBuffer x0 ()
  = withQImageResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLWidget_grabFrameBuffer cobj_x0

foreign import ccall "qtc_QGLWidget_grabFrameBuffer" qtc_QGLWidget_grabFrameBuffer :: Ptr (TQGLWidget a) -> IO (Ptr (TQImage ()))

instance QgrabFrameBuffer (QGLWidgetSc a) (()) where
 grabFrameBuffer x0 ()
  = withQImageResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLWidget_grabFrameBuffer cobj_x0

instance QgrabFrameBuffer_nf (QGLWidget ()) (()) where
 grabFrameBuffer_nf x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLWidget_grabFrameBuffer cobj_x0

instance QgrabFrameBuffer_nf (QGLWidgetSc a) (()) where
 grabFrameBuffer_nf x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLWidget_grabFrameBuffer cobj_x0

instance QgrabFrameBuffer (QGLWidget ()) ((Bool)) where
 grabFrameBuffer x0 (x1)
  = withQImageResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLWidget_grabFrameBuffer1 cobj_x0 (toCBool x1)

foreign import ccall "qtc_QGLWidget_grabFrameBuffer1" qtc_QGLWidget_grabFrameBuffer1 :: Ptr (TQGLWidget a) -> CBool -> IO (Ptr (TQImage ()))

instance QgrabFrameBuffer (QGLWidgetSc a) ((Bool)) where
 grabFrameBuffer x0 (x1)
  = withQImageResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLWidget_grabFrameBuffer1 cobj_x0 (toCBool x1)

instance QgrabFrameBuffer_nf (QGLWidget ()) ((Bool)) where
 grabFrameBuffer_nf x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLWidget_grabFrameBuffer1 cobj_x0 (toCBool x1)

instance QgrabFrameBuffer_nf (QGLWidgetSc a) ((Bool)) where
 grabFrameBuffer_nf x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLWidget_grabFrameBuffer1 cobj_x0 (toCBool x1)

class QinitializeGL x0 x1 where
 initializeGL :: x0 -> x1 -> IO ()

instance QinitializeGL (QGLWidget ()) (()) where
 initializeGL x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLWidget_initializeGL_h cobj_x0

foreign import ccall "qtc_QGLWidget_initializeGL_h" qtc_QGLWidget_initializeGL_h :: Ptr (TQGLWidget a) -> IO ()

instance QinitializeGL (QGLWidgetSc a) (()) where
 initializeGL x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLWidget_initializeGL_h cobj_x0

class QinitializeOverlayGL x0 x1 where
 initializeOverlayGL :: x0 -> x1 -> IO ()

instance QinitializeOverlayGL (QGLWidget ()) (()) where
 initializeOverlayGL x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLWidget_initializeOverlayGL_h cobj_x0

foreign import ccall "qtc_QGLWidget_initializeOverlayGL_h" qtc_QGLWidget_initializeOverlayGL_h :: Ptr (TQGLWidget a) -> IO ()

instance QinitializeOverlayGL (QGLWidgetSc a) (()) where
 initializeOverlayGL x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLWidget_initializeOverlayGL_h cobj_x0

instance QisSharing (QGLWidget a) (()) where
 isSharing x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLWidget_isSharing cobj_x0

foreign import ccall "qtc_QGLWidget_isSharing" qtc_QGLWidget_isSharing :: Ptr (TQGLWidget a) -> IO CBool

instance QqisValid (QGLWidget ()) (()) where
 qisValid x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLWidget_isValid cobj_x0

foreign import ccall "qtc_QGLWidget_isValid" qtc_QGLWidget_isValid :: Ptr (TQGLWidget a) -> IO CBool

instance QqisValid (QGLWidgetSc a) (()) where
 qisValid x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLWidget_isValid cobj_x0

instance QmakeCurrent (QGLWidget a) (()) (IO ()) where
 makeCurrent x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLWidget_makeCurrent cobj_x0

foreign import ccall "qtc_QGLWidget_makeCurrent" qtc_QGLWidget_makeCurrent :: Ptr (TQGLWidget a) -> IO ()

makeOverlayCurrent :: QGLWidget a -> (()) -> IO ()
makeOverlayCurrent x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLWidget_makeOverlayCurrent cobj_x0

foreign import ccall "qtc_QGLWidget_makeOverlayCurrent" qtc_QGLWidget_makeOverlayCurrent :: Ptr (TQGLWidget a) -> IO ()

overlayContext :: QGLWidget a -> (()) -> IO (QGLContext ())
overlayContext x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLWidget_overlayContext cobj_x0

foreign import ccall "qtc_QGLWidget_overlayContext" qtc_QGLWidget_overlayContext :: Ptr (TQGLWidget a) -> IO (Ptr (TQGLContext ()))

instance QpaintEngine (QGLWidget ()) (()) where
 paintEngine x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLWidget_paintEngine_h cobj_x0

foreign import ccall "qtc_QGLWidget_paintEngine_h" qtc_QGLWidget_paintEngine_h :: Ptr (TQGLWidget a) -> IO (Ptr (TQPaintEngine ()))

instance QpaintEngine (QGLWidgetSc a) (()) where
 paintEngine x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLWidget_paintEngine_h cobj_x0

instance QpaintEvent (QGLWidget ()) ((QPaintEvent t1)) where
 paintEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGLWidget_paintEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGLWidget_paintEvent_h" qtc_QGLWidget_paintEvent_h :: Ptr (TQGLWidget a) -> Ptr (TQPaintEvent t1) -> IO ()

instance QpaintEvent (QGLWidgetSc a) ((QPaintEvent t1)) where
 paintEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGLWidget_paintEvent_h cobj_x0 cobj_x1

class QpaintGL x0 x1 where
 paintGL :: x0 -> x1 -> IO ()

instance QpaintGL (QGLWidget ()) (()) where
 paintGL x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLWidget_paintGL_h cobj_x0

foreign import ccall "qtc_QGLWidget_paintGL_h" qtc_QGLWidget_paintGL_h :: Ptr (TQGLWidget a) -> IO ()

instance QpaintGL (QGLWidgetSc a) (()) where
 paintGL x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLWidget_paintGL_h cobj_x0

class QpaintOverlayGL x0 x1 where
 paintOverlayGL :: x0 -> x1 -> IO ()

instance QpaintOverlayGL (QGLWidget ()) (()) where
 paintOverlayGL x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLWidget_paintOverlayGL_h cobj_x0

foreign import ccall "qtc_QGLWidget_paintOverlayGL_h" qtc_QGLWidget_paintOverlayGL_h :: Ptr (TQGLWidget a) -> IO ()

instance QpaintOverlayGL (QGLWidgetSc a) (()) where
 paintOverlayGL x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLWidget_paintOverlayGL_h cobj_x0

qglClearColor :: QGLWidget a -> ((QColor t1)) -> IO ()
qglClearColor x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGLWidget_qglClearColor cobj_x0 cobj_x1

foreign import ccall "qtc_QGLWidget_qglClearColor" qtc_QGLWidget_qglClearColor :: Ptr (TQGLWidget a) -> Ptr (TQColor t1) -> IO ()

qglColor :: QGLWidget a -> ((QColor t1)) -> IO ()
qglColor x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGLWidget_qglColor cobj_x0 cobj_x1

foreign import ccall "qtc_QGLWidget_qglColor" qtc_QGLWidget_qglColor :: Ptr (TQGLWidget a) -> Ptr (TQColor t1) -> IO ()

class QrenderPixmap x0 x1 where
 renderPixmap :: x0 -> x1 -> IO (QPixmap ())

class QrenderPixmap_nf x0 x1 where
 renderPixmap_nf :: x0 -> x1 -> IO (QPixmap ())

instance QrenderPixmap (QGLWidget ()) (()) where
 renderPixmap x0 ()
  = withQPixmapResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLWidget_renderPixmap cobj_x0

foreign import ccall "qtc_QGLWidget_renderPixmap" qtc_QGLWidget_renderPixmap :: Ptr (TQGLWidget a) -> IO (Ptr (TQPixmap ()))

instance QrenderPixmap (QGLWidgetSc a) (()) where
 renderPixmap x0 ()
  = withQPixmapResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLWidget_renderPixmap cobj_x0

instance QrenderPixmap_nf (QGLWidget ()) (()) where
 renderPixmap_nf x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLWidget_renderPixmap cobj_x0

instance QrenderPixmap_nf (QGLWidgetSc a) (()) where
 renderPixmap_nf x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLWidget_renderPixmap cobj_x0

instance QrenderPixmap (QGLWidget ()) ((Int)) where
 renderPixmap x0 (x1)
  = withQPixmapResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLWidget_renderPixmap1 cobj_x0 (toCInt x1)

foreign import ccall "qtc_QGLWidget_renderPixmap1" qtc_QGLWidget_renderPixmap1 :: Ptr (TQGLWidget a) -> CInt -> IO (Ptr (TQPixmap ()))

instance QrenderPixmap (QGLWidgetSc a) ((Int)) where
 renderPixmap x0 (x1)
  = withQPixmapResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLWidget_renderPixmap1 cobj_x0 (toCInt x1)

instance QrenderPixmap_nf (QGLWidget ()) ((Int)) where
 renderPixmap_nf x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLWidget_renderPixmap1 cobj_x0 (toCInt x1)

instance QrenderPixmap_nf (QGLWidgetSc a) ((Int)) where
 renderPixmap_nf x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLWidget_renderPixmap1 cobj_x0 (toCInt x1)

instance QrenderPixmap (QGLWidget ()) ((Int, Int)) where
 renderPixmap x0 (x1, x2)
  = withQPixmapResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLWidget_renderPixmap2 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QGLWidget_renderPixmap2" qtc_QGLWidget_renderPixmap2 :: Ptr (TQGLWidget a) -> CInt -> CInt -> IO (Ptr (TQPixmap ()))

instance QrenderPixmap (QGLWidgetSc a) ((Int, Int)) where
 renderPixmap x0 (x1, x2)
  = withQPixmapResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLWidget_renderPixmap2 cobj_x0 (toCInt x1) (toCInt x2)

instance QrenderPixmap_nf (QGLWidget ()) ((Int, Int)) where
 renderPixmap_nf x0 (x1, x2)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLWidget_renderPixmap2 cobj_x0 (toCInt x1) (toCInt x2)

instance QrenderPixmap_nf (QGLWidgetSc a) ((Int, Int)) where
 renderPixmap_nf x0 (x1, x2)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLWidget_renderPixmap2 cobj_x0 (toCInt x1) (toCInt x2)

instance QrenderPixmap (QGLWidget ()) ((Int, Int, Bool)) where
 renderPixmap x0 (x1, x2, x3)
  = withQPixmapResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLWidget_renderPixmap3 cobj_x0 (toCInt x1) (toCInt x2) (toCBool x3)

foreign import ccall "qtc_QGLWidget_renderPixmap3" qtc_QGLWidget_renderPixmap3 :: Ptr (TQGLWidget a) -> CInt -> CInt -> CBool -> IO (Ptr (TQPixmap ()))

instance QrenderPixmap (QGLWidgetSc a) ((Int, Int, Bool)) where
 renderPixmap x0 (x1, x2, x3)
  = withQPixmapResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLWidget_renderPixmap3 cobj_x0 (toCInt x1) (toCInt x2) (toCBool x3)

instance QrenderPixmap_nf (QGLWidget ()) ((Int, Int, Bool)) where
 renderPixmap_nf x0 (x1, x2, x3)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLWidget_renderPixmap3 cobj_x0 (toCInt x1) (toCInt x2) (toCBool x3)

instance QrenderPixmap_nf (QGLWidgetSc a) ((Int, Int, Bool)) where
 renderPixmap_nf x0 (x1, x2, x3)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLWidget_renderPixmap3 cobj_x0 (toCInt x1) (toCInt x2) (toCBool x3)

class QrenderText x1 where
 renderText :: QGLWidget a -> x1 -> IO ()

instance QrenderText ((Double, Double, Double, String)) where
 renderText x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x4 $ \cstr_x4 ->
    qtc_QGLWidget_renderText2 cobj_x0 (toCDouble x1) (toCDouble x2) (toCDouble x3) cstr_x4

foreign import ccall "qtc_QGLWidget_renderText2" qtc_QGLWidget_renderText2 :: Ptr (TQGLWidget a) -> CDouble -> CDouble -> CDouble -> CWString -> IO ()

instance QrenderText ((Double, Double, Double, String, QFont t5)) where
 renderText x0 (x1, x2, x3, x4, x5)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x4 $ \cstr_x4 ->
    withObjectPtr x5 $ \cobj_x5 ->
    qtc_QGLWidget_renderText3 cobj_x0 (toCDouble x1) (toCDouble x2) (toCDouble x3) cstr_x4 cobj_x5

foreign import ccall "qtc_QGLWidget_renderText3" qtc_QGLWidget_renderText3 :: Ptr (TQGLWidget a) -> CDouble -> CDouble -> CDouble -> CWString -> Ptr (TQFont t5) -> IO ()

instance QrenderText ((Double, Double, Double, String, QFont t5, Int)) where
 renderText x0 (x1, x2, x3, x4, x5, x6)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x4 $ \cstr_x4 ->
    withObjectPtr x5 $ \cobj_x5 ->
    qtc_QGLWidget_renderText5 cobj_x0 (toCDouble x1) (toCDouble x2) (toCDouble x3) cstr_x4 cobj_x5 (toCInt x6)

foreign import ccall "qtc_QGLWidget_renderText5" qtc_QGLWidget_renderText5 :: Ptr (TQGLWidget a) -> CDouble -> CDouble -> CDouble -> CWString -> Ptr (TQFont t5) -> CInt -> IO ()

instance QrenderText ((Int, Int, String)) where
 renderText x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x3 $ \cstr_x3 ->
    qtc_QGLWidget_renderText cobj_x0 (toCInt x1) (toCInt x2) cstr_x3

foreign import ccall "qtc_QGLWidget_renderText" qtc_QGLWidget_renderText :: Ptr (TQGLWidget a) -> CInt -> CInt -> CWString -> IO ()

instance QrenderText ((Int, Int, String, QFont t4)) where
 renderText x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x3 $ \cstr_x3 ->
    withObjectPtr x4 $ \cobj_x4 ->
    qtc_QGLWidget_renderText1 cobj_x0 (toCInt x1) (toCInt x2) cstr_x3 cobj_x4

foreign import ccall "qtc_QGLWidget_renderText1" qtc_QGLWidget_renderText1 :: Ptr (TQGLWidget a) -> CInt -> CInt -> CWString -> Ptr (TQFont t4) -> IO ()

instance QrenderText ((Int, Int, String, QFont t4, Int)) where
 renderText x0 (x1, x2, x3, x4, x5)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x3 $ \cstr_x3 ->
    withObjectPtr x4 $ \cobj_x4 ->
    qtc_QGLWidget_renderText4 cobj_x0 (toCInt x1) (toCInt x2) cstr_x3 cobj_x4 (toCInt x5)

foreign import ccall "qtc_QGLWidget_renderText4" qtc_QGLWidget_renderText4 :: Ptr (TQGLWidget a) -> CInt -> CInt -> CWString -> Ptr (TQFont t4) -> CInt -> IO ()

instance QresizeEvent (QGLWidget ()) ((QResizeEvent t1)) where
 resizeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGLWidget_resizeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGLWidget_resizeEvent_h" qtc_QGLWidget_resizeEvent_h :: Ptr (TQGLWidget a) -> Ptr (TQResizeEvent t1) -> IO ()

instance QresizeEvent (QGLWidgetSc a) ((QResizeEvent t1)) where
 resizeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGLWidget_resizeEvent_h cobj_x0 cobj_x1

class QresizeGL x0 x1 where
 resizeGL :: x0 -> x1 -> IO ()

instance QresizeGL (QGLWidget ()) ((Int, Int)) where
 resizeGL x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLWidget_resizeGL_h cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QGLWidget_resizeGL_h" qtc_QGLWidget_resizeGL_h :: Ptr (TQGLWidget a) -> CInt -> CInt -> IO ()

instance QresizeGL (QGLWidgetSc a) ((Int, Int)) where
 resizeGL x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLWidget_resizeGL_h cobj_x0 (toCInt x1) (toCInt x2)

class QresizeOverlayGL x0 x1 where
 resizeOverlayGL :: x0 -> x1 -> IO ()

instance QresizeOverlayGL (QGLWidget ()) ((Int, Int)) where
 resizeOverlayGL x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLWidget_resizeOverlayGL_h cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QGLWidget_resizeOverlayGL_h" qtc_QGLWidget_resizeOverlayGL_h :: Ptr (TQGLWidget a) -> CInt -> CInt -> IO ()

instance QresizeOverlayGL (QGLWidgetSc a) ((Int, Int)) where
 resizeOverlayGL x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLWidget_resizeOverlayGL_h cobj_x0 (toCInt x1) (toCInt x2)

class QsetAutoBufferSwap x0 x1 where
 setAutoBufferSwap :: x0 -> x1 -> IO ()

instance QsetAutoBufferSwap (QGLWidget ()) ((Bool)) where
 setAutoBufferSwap x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLWidget_setAutoBufferSwap cobj_x0 (toCBool x1)

foreign import ccall "qtc_QGLWidget_setAutoBufferSwap" qtc_QGLWidget_setAutoBufferSwap :: Ptr (TQGLWidget a) -> CBool -> IO ()

instance QsetAutoBufferSwap (QGLWidgetSc a) ((Bool)) where
 setAutoBufferSwap x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLWidget_setAutoBufferSwap cobj_x0 (toCBool x1)

setColormap :: QGLWidget a -> ((QGLColormap t1)) -> IO ()
setColormap x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGLWidget_setColormap cobj_x0 cobj_x1

foreign import ccall "qtc_QGLWidget_setColormap" qtc_QGLWidget_setColormap :: Ptr (TQGLWidget a) -> Ptr (TQGLColormap t1) -> IO ()

instance QsetContext (QGLWidget a) ((QGLContext t1)) where
 setContext x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGLWidget_setContext cobj_x0 cobj_x1

foreign import ccall "qtc_QGLWidget_setContext" qtc_QGLWidget_setContext :: Ptr (TQGLWidget a) -> Ptr (TQGLContext t1) -> IO ()

instance QsetContext (QGLWidget a) ((QGLContext t1, QGLContext t2)) where
 setContext x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGLWidget_setContext1 cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QGLWidget_setContext1" qtc_QGLWidget_setContext1 :: Ptr (TQGLWidget a) -> Ptr (TQGLContext t1) -> Ptr (TQGLContext t2) -> IO ()

instance QsetContext (QGLWidget a) ((QGLContext t1, QGLContext t2, Bool)) where
 setContext x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGLWidget_setContext2 cobj_x0 cobj_x1 cobj_x2 (toCBool x3)

foreign import ccall "qtc_QGLWidget_setContext2" qtc_QGLWidget_setContext2 :: Ptr (TQGLWidget a) -> Ptr (TQGLContext t1) -> Ptr (TQGLContext t2) -> CBool -> IO ()

instance QsetFormat (QGLWidget a) ((QGLFormat t1)) where
 setFormat x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGLWidget_setFormat cobj_x0 cobj_x1

foreign import ccall "qtc_QGLWidget_setFormat" qtc_QGLWidget_setFormat :: Ptr (TQGLWidget a) -> Ptr (TQGLFormat t1) -> IO ()

instance QsetMouseTracking (QGLWidget ()) ((Bool)) where
 setMouseTracking x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLWidget_setMouseTracking cobj_x0 (toCBool x1)

foreign import ccall "qtc_QGLWidget_setMouseTracking" qtc_QGLWidget_setMouseTracking :: Ptr (TQGLWidget a) -> CBool -> IO ()

instance QsetMouseTracking (QGLWidgetSc a) ((Bool)) where
 setMouseTracking x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLWidget_setMouseTracking cobj_x0 (toCBool x1)

instance QswapBuffers (QGLWidget a) (()) where
 swapBuffers x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLWidget_swapBuffers cobj_x0

foreign import ccall "qtc_QGLWidget_swapBuffers" qtc_QGLWidget_swapBuffers :: Ptr (TQGLWidget a) -> IO ()

class QupdateGL x0 x1 where
 updateGL :: x0 -> x1 -> IO ()

instance QupdateGL (QGLWidget ()) (()) where
 updateGL x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLWidget_updateGL_h cobj_x0

foreign import ccall "qtc_QGLWidget_updateGL_h" qtc_QGLWidget_updateGL_h :: Ptr (TQGLWidget a) -> IO ()

instance QupdateGL (QGLWidgetSc a) (()) where
 updateGL x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLWidget_updateGL_h cobj_x0

class QupdateOverlayGL x0 x1 where
 updateOverlayGL :: x0 -> x1 -> IO ()

instance QupdateOverlayGL (QGLWidget ()) (()) where
 updateOverlayGL x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLWidget_updateOverlayGL_h cobj_x0

foreign import ccall "qtc_QGLWidget_updateOverlayGL_h" qtc_QGLWidget_updateOverlayGL_h :: Ptr (TQGLWidget a) -> IO ()

instance QupdateOverlayGL (QGLWidgetSc a) (()) where
 updateOverlayGL x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLWidget_updateOverlayGL_h cobj_x0

qGLWidget_delete :: QGLWidget a -> IO ()
qGLWidget_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLWidget_delete cobj_x0

foreign import ccall "qtc_QGLWidget_delete" qtc_QGLWidget_delete :: Ptr (TQGLWidget a) -> IO ()

qGLWidget_deleteLater :: QGLWidget a -> IO ()
qGLWidget_deleteLater x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLWidget_deleteLater cobj_x0

foreign import ccall "qtc_QGLWidget_deleteLater" qtc_QGLWidget_deleteLater :: Ptr (TQGLWidget a) -> IO ()

instance QactionEvent (QGLWidget ()) ((QActionEvent t1)) where
 actionEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGLWidget_actionEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGLWidget_actionEvent_h" qtc_QGLWidget_actionEvent_h :: Ptr (TQGLWidget a) -> Ptr (TQActionEvent t1) -> IO ()

instance QactionEvent (QGLWidgetSc a) ((QActionEvent t1)) where
 actionEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGLWidget_actionEvent_h cobj_x0 cobj_x1

instance QaddAction (QGLWidget ()) ((QAction t1)) (IO ()) where
 addAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGLWidget_addAction cobj_x0 cobj_x1

foreign import ccall "qtc_QGLWidget_addAction" qtc_QGLWidget_addAction :: Ptr (TQGLWidget a) -> Ptr (TQAction t1) -> IO ()

instance QaddAction (QGLWidgetSc a) ((QAction t1)) (IO ()) where
 addAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGLWidget_addAction cobj_x0 cobj_x1

instance QchangeEvent (QGLWidget ()) ((QEvent t1)) where
 changeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGLWidget_changeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGLWidget_changeEvent_h" qtc_QGLWidget_changeEvent_h :: Ptr (TQGLWidget a) -> Ptr (TQEvent t1) -> IO ()

instance QchangeEvent (QGLWidgetSc a) ((QEvent t1)) where
 changeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGLWidget_changeEvent_h cobj_x0 cobj_x1

instance QcloseEvent (QGLWidget ()) ((QCloseEvent t1)) where
 closeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGLWidget_closeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGLWidget_closeEvent_h" qtc_QGLWidget_closeEvent_h :: Ptr (TQGLWidget a) -> Ptr (TQCloseEvent t1) -> IO ()

instance QcloseEvent (QGLWidgetSc a) ((QCloseEvent t1)) where
 closeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGLWidget_closeEvent_h cobj_x0 cobj_x1

instance QcontextMenuEvent (QGLWidget ()) ((QContextMenuEvent t1)) where
 contextMenuEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGLWidget_contextMenuEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGLWidget_contextMenuEvent_h" qtc_QGLWidget_contextMenuEvent_h :: Ptr (TQGLWidget a) -> Ptr (TQContextMenuEvent t1) -> IO ()

instance QcontextMenuEvent (QGLWidgetSc a) ((QContextMenuEvent t1)) where
 contextMenuEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGLWidget_contextMenuEvent_h cobj_x0 cobj_x1

instance Qcreate (QGLWidget ()) (()) (IO ()) where
 create x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLWidget_create cobj_x0

foreign import ccall "qtc_QGLWidget_create" qtc_QGLWidget_create :: Ptr (TQGLWidget a) -> IO ()

instance Qcreate (QGLWidgetSc a) (()) (IO ()) where
 create x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLWidget_create cobj_x0

instance Qcreate (QGLWidget ()) ((QVoid t1)) (IO ()) where
 create x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGLWidget_create1 cobj_x0 cobj_x1

foreign import ccall "qtc_QGLWidget_create1" qtc_QGLWidget_create1 :: Ptr (TQGLWidget a) -> Ptr (TQVoid t1) -> IO ()

instance Qcreate (QGLWidgetSc a) ((QVoid t1)) (IO ()) where
 create x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGLWidget_create1 cobj_x0 cobj_x1

instance Qcreate (QGLWidget ()) ((QVoid t1, Bool)) (IO ()) where
 create x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGLWidget_create2 cobj_x0 cobj_x1 (toCBool x2)

foreign import ccall "qtc_QGLWidget_create2" qtc_QGLWidget_create2 :: Ptr (TQGLWidget a) -> Ptr (TQVoid t1) -> CBool -> IO ()

instance Qcreate (QGLWidgetSc a) ((QVoid t1, Bool)) (IO ()) where
 create x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGLWidget_create2 cobj_x0 cobj_x1 (toCBool x2)

instance Qcreate (QGLWidget ()) ((QVoid t1, Bool, Bool)) (IO ()) where
 create x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGLWidget_create3 cobj_x0 cobj_x1 (toCBool x2) (toCBool x3)

foreign import ccall "qtc_QGLWidget_create3" qtc_QGLWidget_create3 :: Ptr (TQGLWidget a) -> Ptr (TQVoid t1) -> CBool -> CBool -> IO ()

instance Qcreate (QGLWidgetSc a) ((QVoid t1, Bool, Bool)) (IO ()) where
 create x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGLWidget_create3 cobj_x0 cobj_x1 (toCBool x2) (toCBool x3)

instance Qdestroy (QGLWidget ()) (()) where
 destroy x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLWidget_destroy cobj_x0

foreign import ccall "qtc_QGLWidget_destroy" qtc_QGLWidget_destroy :: Ptr (TQGLWidget a) -> IO ()

instance Qdestroy (QGLWidgetSc a) (()) where
 destroy x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLWidget_destroy cobj_x0

instance Qdestroy (QGLWidget ()) ((Bool)) where
 destroy x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLWidget_destroy1 cobj_x0 (toCBool x1)

foreign import ccall "qtc_QGLWidget_destroy1" qtc_QGLWidget_destroy1 :: Ptr (TQGLWidget a) -> CBool -> IO ()

instance Qdestroy (QGLWidgetSc a) ((Bool)) where
 destroy x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLWidget_destroy1 cobj_x0 (toCBool x1)

instance Qdestroy (QGLWidget ()) ((Bool, Bool)) where
 destroy x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLWidget_destroy2 cobj_x0 (toCBool x1) (toCBool x2)

foreign import ccall "qtc_QGLWidget_destroy2" qtc_QGLWidget_destroy2 :: Ptr (TQGLWidget a) -> CBool -> CBool -> IO ()

instance Qdestroy (QGLWidgetSc a) ((Bool, Bool)) where
 destroy x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLWidget_destroy2 cobj_x0 (toCBool x1) (toCBool x2)

instance QdevType (QGLWidget ()) (()) where
 devType x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLWidget_devType_h cobj_x0

foreign import ccall "qtc_QGLWidget_devType_h" qtc_QGLWidget_devType_h :: Ptr (TQGLWidget a) -> IO CInt

instance QdevType (QGLWidgetSc a) (()) where
 devType x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLWidget_devType_h cobj_x0

instance QdragEnterEvent (QGLWidget ()) ((QDragEnterEvent t1)) where
 dragEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGLWidget_dragEnterEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGLWidget_dragEnterEvent_h" qtc_QGLWidget_dragEnterEvent_h :: Ptr (TQGLWidget a) -> Ptr (TQDragEnterEvent t1) -> IO ()

instance QdragEnterEvent (QGLWidgetSc a) ((QDragEnterEvent t1)) where
 dragEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGLWidget_dragEnterEvent_h cobj_x0 cobj_x1

instance QdragLeaveEvent (QGLWidget ()) ((QDragLeaveEvent t1)) where
 dragLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGLWidget_dragLeaveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGLWidget_dragLeaveEvent_h" qtc_QGLWidget_dragLeaveEvent_h :: Ptr (TQGLWidget a) -> Ptr (TQDragLeaveEvent t1) -> IO ()

instance QdragLeaveEvent (QGLWidgetSc a) ((QDragLeaveEvent t1)) where
 dragLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGLWidget_dragLeaveEvent_h cobj_x0 cobj_x1

instance QdragMoveEvent (QGLWidget ()) ((QDragMoveEvent t1)) where
 dragMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGLWidget_dragMoveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGLWidget_dragMoveEvent_h" qtc_QGLWidget_dragMoveEvent_h :: Ptr (TQGLWidget a) -> Ptr (TQDragMoveEvent t1) -> IO ()

instance QdragMoveEvent (QGLWidgetSc a) ((QDragMoveEvent t1)) where
 dragMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGLWidget_dragMoveEvent_h cobj_x0 cobj_x1

instance QdropEvent (QGLWidget ()) ((QDropEvent t1)) where
 dropEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGLWidget_dropEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGLWidget_dropEvent_h" qtc_QGLWidget_dropEvent_h :: Ptr (TQGLWidget a) -> Ptr (TQDropEvent t1) -> IO ()

instance QdropEvent (QGLWidgetSc a) ((QDropEvent t1)) where
 dropEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGLWidget_dropEvent_h cobj_x0 cobj_x1

instance QenabledChange (QGLWidget ()) ((Bool)) where
 enabledChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLWidget_enabledChange cobj_x0 (toCBool x1)

foreign import ccall "qtc_QGLWidget_enabledChange" qtc_QGLWidget_enabledChange :: Ptr (TQGLWidget a) -> CBool -> IO ()

instance QenabledChange (QGLWidgetSc a) ((Bool)) where
 enabledChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLWidget_enabledChange cobj_x0 (toCBool x1)

instance QenterEvent (QGLWidget ()) ((QEvent t1)) where
 enterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGLWidget_enterEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGLWidget_enterEvent_h" qtc_QGLWidget_enterEvent_h :: Ptr (TQGLWidget a) -> Ptr (TQEvent t1) -> IO ()

instance QenterEvent (QGLWidgetSc a) ((QEvent t1)) where
 enterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGLWidget_enterEvent_h cobj_x0 cobj_x1

instance QfocusInEvent (QGLWidget ()) ((QFocusEvent t1)) where
 focusInEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGLWidget_focusInEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGLWidget_focusInEvent_h" qtc_QGLWidget_focusInEvent_h :: Ptr (TQGLWidget a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusInEvent (QGLWidgetSc a) ((QFocusEvent t1)) where
 focusInEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGLWidget_focusInEvent_h cobj_x0 cobj_x1

instance QfocusNextChild (QGLWidget ()) (()) where
 focusNextChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLWidget_focusNextChild cobj_x0

foreign import ccall "qtc_QGLWidget_focusNextChild" qtc_QGLWidget_focusNextChild :: Ptr (TQGLWidget a) -> IO CBool

instance QfocusNextChild (QGLWidgetSc a) (()) where
 focusNextChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLWidget_focusNextChild cobj_x0

instance QfocusNextPrevChild (QGLWidget ()) ((Bool)) where
 focusNextPrevChild x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLWidget_focusNextPrevChild cobj_x0 (toCBool x1)

foreign import ccall "qtc_QGLWidget_focusNextPrevChild" qtc_QGLWidget_focusNextPrevChild :: Ptr (TQGLWidget a) -> CBool -> IO CBool

instance QfocusNextPrevChild (QGLWidgetSc a) ((Bool)) where
 focusNextPrevChild x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLWidget_focusNextPrevChild cobj_x0 (toCBool x1)

instance QfocusOutEvent (QGLWidget ()) ((QFocusEvent t1)) where
 focusOutEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGLWidget_focusOutEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGLWidget_focusOutEvent_h" qtc_QGLWidget_focusOutEvent_h :: Ptr (TQGLWidget a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusOutEvent (QGLWidgetSc a) ((QFocusEvent t1)) where
 focusOutEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGLWidget_focusOutEvent_h cobj_x0 cobj_x1

instance QfocusPreviousChild (QGLWidget ()) (()) where
 focusPreviousChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLWidget_focusPreviousChild cobj_x0

foreign import ccall "qtc_QGLWidget_focusPreviousChild" qtc_QGLWidget_focusPreviousChild :: Ptr (TQGLWidget a) -> IO CBool

instance QfocusPreviousChild (QGLWidgetSc a) (()) where
 focusPreviousChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLWidget_focusPreviousChild cobj_x0

instance QfontChange (QGLWidget ()) ((QFont t1)) where
 fontChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGLWidget_fontChange cobj_x0 cobj_x1

foreign import ccall "qtc_QGLWidget_fontChange" qtc_QGLWidget_fontChange :: Ptr (TQGLWidget a) -> Ptr (TQFont t1) -> IO ()

instance QfontChange (QGLWidgetSc a) ((QFont t1)) where
 fontChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGLWidget_fontChange cobj_x0 cobj_x1

instance QheightForWidth (QGLWidget ()) ((Int)) where
 heightForWidth x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLWidget_heightForWidth_h cobj_x0 (toCInt x1)

foreign import ccall "qtc_QGLWidget_heightForWidth_h" qtc_QGLWidget_heightForWidth_h :: Ptr (TQGLWidget a) -> CInt -> IO CInt

instance QheightForWidth (QGLWidgetSc a) ((Int)) where
 heightForWidth x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLWidget_heightForWidth_h cobj_x0 (toCInt x1)

instance QhideEvent (QGLWidget ()) ((QHideEvent t1)) where
 hideEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGLWidget_hideEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGLWidget_hideEvent_h" qtc_QGLWidget_hideEvent_h :: Ptr (TQGLWidget a) -> Ptr (TQHideEvent t1) -> IO ()

instance QhideEvent (QGLWidgetSc a) ((QHideEvent t1)) where
 hideEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGLWidget_hideEvent_h cobj_x0 cobj_x1

instance QinputMethodEvent (QGLWidget ()) ((QInputMethodEvent t1)) where
 inputMethodEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGLWidget_inputMethodEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QGLWidget_inputMethodEvent" qtc_QGLWidget_inputMethodEvent :: Ptr (TQGLWidget a) -> Ptr (TQInputMethodEvent t1) -> IO ()

instance QinputMethodEvent (QGLWidgetSc a) ((QInputMethodEvent t1)) where
 inputMethodEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGLWidget_inputMethodEvent cobj_x0 cobj_x1

instance QinputMethodQuery (QGLWidget ()) ((InputMethodQuery)) where
 inputMethodQuery x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLWidget_inputMethodQuery_h cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QGLWidget_inputMethodQuery_h" qtc_QGLWidget_inputMethodQuery_h :: Ptr (TQGLWidget a) -> CLong -> IO (Ptr (TQVariant ()))

instance QinputMethodQuery (QGLWidgetSc a) ((InputMethodQuery)) where
 inputMethodQuery x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLWidget_inputMethodQuery_h cobj_x0 (toCLong $ qEnum_toInt x1)

instance QkeyPressEvent (QGLWidget ()) ((QKeyEvent t1)) where
 keyPressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGLWidget_keyPressEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGLWidget_keyPressEvent_h" qtc_QGLWidget_keyPressEvent_h :: Ptr (TQGLWidget a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyPressEvent (QGLWidgetSc a) ((QKeyEvent t1)) where
 keyPressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGLWidget_keyPressEvent_h cobj_x0 cobj_x1

instance QkeyReleaseEvent (QGLWidget ()) ((QKeyEvent t1)) where
 keyReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGLWidget_keyReleaseEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGLWidget_keyReleaseEvent_h" qtc_QGLWidget_keyReleaseEvent_h :: Ptr (TQGLWidget a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyReleaseEvent (QGLWidgetSc a) ((QKeyEvent t1)) where
 keyReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGLWidget_keyReleaseEvent_h cobj_x0 cobj_x1

instance QlanguageChange (QGLWidget ()) (()) where
 languageChange x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLWidget_languageChange cobj_x0

foreign import ccall "qtc_QGLWidget_languageChange" qtc_QGLWidget_languageChange :: Ptr (TQGLWidget a) -> IO ()

instance QlanguageChange (QGLWidgetSc a) (()) where
 languageChange x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLWidget_languageChange cobj_x0

instance QleaveEvent (QGLWidget ()) ((QEvent t1)) where
 leaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGLWidget_leaveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGLWidget_leaveEvent_h" qtc_QGLWidget_leaveEvent_h :: Ptr (TQGLWidget a) -> Ptr (TQEvent t1) -> IO ()

instance QleaveEvent (QGLWidgetSc a) ((QEvent t1)) where
 leaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGLWidget_leaveEvent_h cobj_x0 cobj_x1

instance Qmetric (QGLWidget ()) ((PaintDeviceMetric)) where
 metric x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLWidget_metric cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QGLWidget_metric" qtc_QGLWidget_metric :: Ptr (TQGLWidget a) -> CLong -> IO CInt

instance Qmetric (QGLWidgetSc a) ((PaintDeviceMetric)) where
 metric x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLWidget_metric cobj_x0 (toCLong $ qEnum_toInt x1)

instance QqminimumSizeHint (QGLWidget ()) (()) where
 qminimumSizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLWidget_minimumSizeHint_h cobj_x0

foreign import ccall "qtc_QGLWidget_minimumSizeHint_h" qtc_QGLWidget_minimumSizeHint_h :: Ptr (TQGLWidget a) -> IO (Ptr (TQSize ()))

instance QqminimumSizeHint (QGLWidgetSc a) (()) where
 qminimumSizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLWidget_minimumSizeHint_h cobj_x0

instance QminimumSizeHint (QGLWidget ()) (()) where
 minimumSizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLWidget_minimumSizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QGLWidget_minimumSizeHint_qth_h" qtc_QGLWidget_minimumSizeHint_qth_h :: Ptr (TQGLWidget a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QminimumSizeHint (QGLWidgetSc a) (()) where
 minimumSizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLWidget_minimumSizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

instance QmouseDoubleClickEvent (QGLWidget ()) ((QMouseEvent t1)) where
 mouseDoubleClickEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGLWidget_mouseDoubleClickEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGLWidget_mouseDoubleClickEvent_h" qtc_QGLWidget_mouseDoubleClickEvent_h :: Ptr (TQGLWidget a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseDoubleClickEvent (QGLWidgetSc a) ((QMouseEvent t1)) where
 mouseDoubleClickEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGLWidget_mouseDoubleClickEvent_h cobj_x0 cobj_x1

instance QmouseMoveEvent (QGLWidget ()) ((QMouseEvent t1)) where
 mouseMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGLWidget_mouseMoveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGLWidget_mouseMoveEvent_h" qtc_QGLWidget_mouseMoveEvent_h :: Ptr (TQGLWidget a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseMoveEvent (QGLWidgetSc a) ((QMouseEvent t1)) where
 mouseMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGLWidget_mouseMoveEvent_h cobj_x0 cobj_x1

instance QmousePressEvent (QGLWidget ()) ((QMouseEvent t1)) where
 mousePressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGLWidget_mousePressEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGLWidget_mousePressEvent_h" qtc_QGLWidget_mousePressEvent_h :: Ptr (TQGLWidget a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmousePressEvent (QGLWidgetSc a) ((QMouseEvent t1)) where
 mousePressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGLWidget_mousePressEvent_h cobj_x0 cobj_x1

instance QmouseReleaseEvent (QGLWidget ()) ((QMouseEvent t1)) where
 mouseReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGLWidget_mouseReleaseEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGLWidget_mouseReleaseEvent_h" qtc_QGLWidget_mouseReleaseEvent_h :: Ptr (TQGLWidget a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseReleaseEvent (QGLWidgetSc a) ((QMouseEvent t1)) where
 mouseReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGLWidget_mouseReleaseEvent_h cobj_x0 cobj_x1

instance Qmove (QGLWidget ()) ((Int, Int)) where
 move x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLWidget_move1 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QGLWidget_move1" qtc_QGLWidget_move1 :: Ptr (TQGLWidget a) -> CInt -> CInt -> IO ()

instance Qmove (QGLWidgetSc a) ((Int, Int)) where
 move x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLWidget_move1 cobj_x0 (toCInt x1) (toCInt x2)

instance Qmove (QGLWidget ()) ((Point)) where
 move x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QGLWidget_move_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

foreign import ccall "qtc_QGLWidget_move_qth" qtc_QGLWidget_move_qth :: Ptr (TQGLWidget a) -> CInt -> CInt -> IO ()

instance Qmove (QGLWidgetSc a) ((Point)) where
 move x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QGLWidget_move_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

instance Qqmove (QGLWidget ()) ((QPoint t1)) where
 qmove x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGLWidget_move cobj_x0 cobj_x1

foreign import ccall "qtc_QGLWidget_move" qtc_QGLWidget_move :: Ptr (TQGLWidget a) -> Ptr (TQPoint t1) -> IO ()

instance Qqmove (QGLWidgetSc a) ((QPoint t1)) where
 qmove x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGLWidget_move cobj_x0 cobj_x1

instance QmoveEvent (QGLWidget ()) ((QMoveEvent t1)) where
 moveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGLWidget_moveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGLWidget_moveEvent_h" qtc_QGLWidget_moveEvent_h :: Ptr (TQGLWidget a) -> Ptr (TQMoveEvent t1) -> IO ()

instance QmoveEvent (QGLWidgetSc a) ((QMoveEvent t1)) where
 moveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGLWidget_moveEvent_h cobj_x0 cobj_x1

instance QpaletteChange (QGLWidget ()) ((QPalette t1)) where
 paletteChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGLWidget_paletteChange cobj_x0 cobj_x1

foreign import ccall "qtc_QGLWidget_paletteChange" qtc_QGLWidget_paletteChange :: Ptr (TQGLWidget a) -> Ptr (TQPalette t1) -> IO ()

instance QpaletteChange (QGLWidgetSc a) ((QPalette t1)) where
 paletteChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGLWidget_paletteChange cobj_x0 cobj_x1

instance Qrepaint (QGLWidget ()) (()) where
 repaint x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLWidget_repaint cobj_x0

foreign import ccall "qtc_QGLWidget_repaint" qtc_QGLWidget_repaint :: Ptr (TQGLWidget a) -> IO ()

instance Qrepaint (QGLWidgetSc a) (()) where
 repaint x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLWidget_repaint cobj_x0

instance Qrepaint (QGLWidget ()) ((Int, Int, Int, Int)) where
 repaint x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLWidget_repaint2 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QGLWidget_repaint2" qtc_QGLWidget_repaint2 :: Ptr (TQGLWidget a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance Qrepaint (QGLWidgetSc a) ((Int, Int, Int, Int)) where
 repaint x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLWidget_repaint2 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

instance Qrepaint (QGLWidget ()) ((QRegion t1)) where
 repaint x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGLWidget_repaint1 cobj_x0 cobj_x1

foreign import ccall "qtc_QGLWidget_repaint1" qtc_QGLWidget_repaint1 :: Ptr (TQGLWidget a) -> Ptr (TQRegion t1) -> IO ()

instance Qrepaint (QGLWidgetSc a) ((QRegion t1)) where
 repaint x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGLWidget_repaint1 cobj_x0 cobj_x1

instance QresetInputContext (QGLWidget ()) (()) where
 resetInputContext x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLWidget_resetInputContext cobj_x0

foreign import ccall "qtc_QGLWidget_resetInputContext" qtc_QGLWidget_resetInputContext :: Ptr (TQGLWidget a) -> IO ()

instance QresetInputContext (QGLWidgetSc a) (()) where
 resetInputContext x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLWidget_resetInputContext cobj_x0

instance Qresize (QGLWidget ()) ((Int, Int)) (IO ()) where
 resize x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLWidget_resize1 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QGLWidget_resize1" qtc_QGLWidget_resize1 :: Ptr (TQGLWidget a) -> CInt -> CInt -> IO ()

instance Qresize (QGLWidgetSc a) ((Int, Int)) (IO ()) where
 resize x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLWidget_resize1 cobj_x0 (toCInt x1) (toCInt x2)

instance Qqresize (QGLWidget ()) ((QSize t1)) where
 qresize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGLWidget_resize cobj_x0 cobj_x1

foreign import ccall "qtc_QGLWidget_resize" qtc_QGLWidget_resize :: Ptr (TQGLWidget a) -> Ptr (TQSize t1) -> IO ()

instance Qqresize (QGLWidgetSc a) ((QSize t1)) where
 qresize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGLWidget_resize cobj_x0 cobj_x1

instance Qresize (QGLWidget ()) ((Size)) (IO ()) where
 resize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QGLWidget_resize_qth cobj_x0 csize_x1_w csize_x1_h 

foreign import ccall "qtc_QGLWidget_resize_qth" qtc_QGLWidget_resize_qth :: Ptr (TQGLWidget a) -> CInt -> CInt -> IO ()

instance Qresize (QGLWidgetSc a) ((Size)) (IO ()) where
 resize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QGLWidget_resize_qth cobj_x0 csize_x1_w csize_x1_h 

instance QsetGeometry (QGLWidget ()) ((Int, Int, Int, Int)) where
 setGeometry x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLWidget_setGeometry1 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QGLWidget_setGeometry1" qtc_QGLWidget_setGeometry1 :: Ptr (TQGLWidget a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QsetGeometry (QGLWidgetSc a) ((Int, Int, Int, Int)) where
 setGeometry x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLWidget_setGeometry1 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

instance QqsetGeometry (QGLWidget ()) ((QRect t1)) where
 qsetGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGLWidget_setGeometry cobj_x0 cobj_x1

foreign import ccall "qtc_QGLWidget_setGeometry" qtc_QGLWidget_setGeometry :: Ptr (TQGLWidget a) -> Ptr (TQRect t1) -> IO ()

instance QqsetGeometry (QGLWidgetSc a) ((QRect t1)) where
 qsetGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGLWidget_setGeometry cobj_x0 cobj_x1

instance QsetGeometry (QGLWidget ()) ((Rect)) where
 setGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QGLWidget_setGeometry_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

foreign import ccall "qtc_QGLWidget_setGeometry_qth" qtc_QGLWidget_setGeometry_qth :: Ptr (TQGLWidget a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QsetGeometry (QGLWidgetSc a) ((Rect)) where
 setGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QGLWidget_setGeometry_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

instance QsetVisible (QGLWidget ()) ((Bool)) where
 setVisible x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLWidget_setVisible_h cobj_x0 (toCBool x1)

foreign import ccall "qtc_QGLWidget_setVisible_h" qtc_QGLWidget_setVisible_h :: Ptr (TQGLWidget a) -> CBool -> IO ()

instance QsetVisible (QGLWidgetSc a) ((Bool)) where
 setVisible x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLWidget_setVisible_h cobj_x0 (toCBool x1)

instance QshowEvent (QGLWidget ()) ((QShowEvent t1)) where
 showEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGLWidget_showEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGLWidget_showEvent_h" qtc_QGLWidget_showEvent_h :: Ptr (TQGLWidget a) -> Ptr (TQShowEvent t1) -> IO ()

instance QshowEvent (QGLWidgetSc a) ((QShowEvent t1)) where
 showEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGLWidget_showEvent_h cobj_x0 cobj_x1

instance QqsizeHint (QGLWidget ()) (()) where
 qsizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLWidget_sizeHint_h cobj_x0

foreign import ccall "qtc_QGLWidget_sizeHint_h" qtc_QGLWidget_sizeHint_h :: Ptr (TQGLWidget a) -> IO (Ptr (TQSize ()))

instance QqsizeHint (QGLWidgetSc a) (()) where
 qsizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLWidget_sizeHint_h cobj_x0

instance QsizeHint (QGLWidget ()) (()) where
 sizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLWidget_sizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QGLWidget_sizeHint_qth_h" qtc_QGLWidget_sizeHint_qth_h :: Ptr (TQGLWidget a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QsizeHint (QGLWidgetSc a) (()) where
 sizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLWidget_sizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

instance QtabletEvent (QGLWidget ()) ((QTabletEvent t1)) where
 tabletEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGLWidget_tabletEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGLWidget_tabletEvent_h" qtc_QGLWidget_tabletEvent_h :: Ptr (TQGLWidget a) -> Ptr (TQTabletEvent t1) -> IO ()

instance QtabletEvent (QGLWidgetSc a) ((QTabletEvent t1)) where
 tabletEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGLWidget_tabletEvent_h cobj_x0 cobj_x1

instance QupdateMicroFocus (QGLWidget ()) (()) where
 updateMicroFocus x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLWidget_updateMicroFocus cobj_x0

foreign import ccall "qtc_QGLWidget_updateMicroFocus" qtc_QGLWidget_updateMicroFocus :: Ptr (TQGLWidget a) -> IO ()

instance QupdateMicroFocus (QGLWidgetSc a) (()) where
 updateMicroFocus x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLWidget_updateMicroFocus cobj_x0

instance QwheelEvent (QGLWidget ()) ((QWheelEvent t1)) where
 wheelEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGLWidget_wheelEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGLWidget_wheelEvent_h" qtc_QGLWidget_wheelEvent_h :: Ptr (TQGLWidget a) -> Ptr (TQWheelEvent t1) -> IO ()

instance QwheelEvent (QGLWidgetSc a) ((QWheelEvent t1)) where
 wheelEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGLWidget_wheelEvent_h cobj_x0 cobj_x1

instance QwindowActivationChange (QGLWidget ()) ((Bool)) where
 windowActivationChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLWidget_windowActivationChange cobj_x0 (toCBool x1)

foreign import ccall "qtc_QGLWidget_windowActivationChange" qtc_QGLWidget_windowActivationChange :: Ptr (TQGLWidget a) -> CBool -> IO ()

instance QwindowActivationChange (QGLWidgetSc a) ((Bool)) where
 windowActivationChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLWidget_windowActivationChange cobj_x0 (toCBool x1)

instance QchildEvent (QGLWidget ()) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGLWidget_childEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QGLWidget_childEvent" qtc_QGLWidget_childEvent :: Ptr (TQGLWidget a) -> Ptr (TQChildEvent t1) -> IO ()

instance QchildEvent (QGLWidgetSc a) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGLWidget_childEvent cobj_x0 cobj_x1

instance QconnectNotify (QGLWidget ()) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QGLWidget_connectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QGLWidget_connectNotify" qtc_QGLWidget_connectNotify :: Ptr (TQGLWidget a) -> CWString -> IO ()

instance QconnectNotify (QGLWidgetSc a) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QGLWidget_connectNotify cobj_x0 cstr_x1

instance QcustomEvent (QGLWidget ()) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGLWidget_customEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QGLWidget_customEvent" qtc_QGLWidget_customEvent :: Ptr (TQGLWidget a) -> Ptr (TQEvent t1) -> IO ()

instance QcustomEvent (QGLWidgetSc a) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGLWidget_customEvent cobj_x0 cobj_x1

instance QdisconnectNotify (QGLWidget ()) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QGLWidget_disconnectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QGLWidget_disconnectNotify" qtc_QGLWidget_disconnectNotify :: Ptr (TQGLWidget a) -> CWString -> IO ()

instance QdisconnectNotify (QGLWidgetSc a) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QGLWidget_disconnectNotify cobj_x0 cstr_x1

instance QeventFilter (QGLWidget ()) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGLWidget_eventFilter_h cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QGLWidget_eventFilter_h" qtc_QGLWidget_eventFilter_h :: Ptr (TQGLWidget a) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO CBool

instance QeventFilter (QGLWidgetSc a) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGLWidget_eventFilter_h cobj_x0 cobj_x1 cobj_x2

instance Qreceivers (QGLWidget ()) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QGLWidget_receivers cobj_x0 cstr_x1

foreign import ccall "qtc_QGLWidget_receivers" qtc_QGLWidget_receivers :: Ptr (TQGLWidget a) -> CWString -> IO CInt

instance Qreceivers (QGLWidgetSc a) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QGLWidget_receivers cobj_x0 cstr_x1

instance Qsender (QGLWidget ()) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLWidget_sender cobj_x0

foreign import ccall "qtc_QGLWidget_sender" qtc_QGLWidget_sender :: Ptr (TQGLWidget a) -> IO (Ptr (TQObject ()))

instance Qsender (QGLWidgetSc a) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLWidget_sender cobj_x0

instance QtimerEvent (QGLWidget ()) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGLWidget_timerEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QGLWidget_timerEvent" qtc_QGLWidget_timerEvent :: Ptr (TQGLWidget a) -> Ptr (TQTimerEvent t1) -> IO ()

instance QtimerEvent (QGLWidgetSc a) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGLWidget_timerEvent cobj_x0 cobj_x1

