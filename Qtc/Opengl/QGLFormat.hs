{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QGLFormat.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:32
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Opengl.QGLFormat (
  QqGLFormat(..)
  ,QqGLFormat_nf(..)
  ,accum
  ,accumBufferSize
  ,alphaBufferSize
  ,blueBufferSize
  ,qGLFormatDefaultFormat
  ,qGLFormatDefaultOverlayFormat
  ,depthBufferSize
  ,directRendering
  ,greenBufferSize
  ,qGLFormatHasOpenGL
  ,qGLFormatHasOpenGLOverlays
  ,hasOverlay
  ,plane
  ,redBufferSize
  ,sampleBuffers
  ,samples
  ,setAccum
  ,setAccumBufferSize
  ,setAlphaBufferSize
  ,setBlueBufferSize
  ,qGLFormatSetDefaultFormat
  ,qGLFormatSetDefaultOverlayFormat
  ,setDepth
  ,setDepthBufferSize
  ,setDirectRendering
  ,setDoubleBuffer
  ,setGreenBufferSize
  ,setOption
  ,setOverlay
  ,setPlane
  ,setRedBufferSize
  ,setSampleBuffers
  ,setSamples
  ,setStencil
  ,setStencilBufferSize
  ,setStereo
  ,setSwapInterval
  ,stencil
  ,stencilBufferSize
  ,stereo
  ,swapInterval
  ,testOption
  ,qGLFormat_delete
  )
  where

import Foreign.C.Types
import Qth.ClassTypes.Core
import Qtc.Enums.Base
import Qtc.Enums.Opengl.QGL

import Qtc.Classes.Base
import Qtc.Classes.Qccs
import Qtc.Classes.Core
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core
import Qtc.Classes.Gui
import Qtc.ClassTypes.Gui
import Qtc.Classes.Opengl
import Qtc.ClassTypes.Opengl

class QqGLFormat x1 where
  qGLFormat :: x1 -> IO (QGLFormat ())

instance QqGLFormat (()) where
 qGLFormat ()
  = withQGLFormatResult $
    qtc_QGLFormat

foreign import ccall "qtc_QGLFormat" qtc_QGLFormat :: IO (Ptr (TQGLFormat ()))

instance QqGLFormat ((QGLFormat t1)) where
 qGLFormat (x1)
  = withQGLFormatResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGLFormat1 cobj_x1

foreign import ccall "qtc_QGLFormat1" qtc_QGLFormat1 :: Ptr (TQGLFormat t1) -> IO (Ptr (TQGLFormat ()))

instance QqGLFormat ((FormatOptions)) where
 qGLFormat (x1)
  = withQGLFormatResult $
    qtc_QGLFormat2 (toCLong $ qFlags_toInt x1)

foreign import ccall "qtc_QGLFormat2" qtc_QGLFormat2 :: CLong -> IO (Ptr (TQGLFormat ()))

instance QqGLFormat ((FormatOptions, Int)) where
 qGLFormat (x1, x2)
  = withQGLFormatResult $
    qtc_QGLFormat3 (toCLong $ qFlags_toInt x1) (toCInt x2)

foreign import ccall "qtc_QGLFormat3" qtc_QGLFormat3 :: CLong -> CInt -> IO (Ptr (TQGLFormat ()))

class QqGLFormat_nf x1 where
  qGLFormat_nf :: x1 -> IO (QGLFormat ())

instance QqGLFormat_nf (()) where
 qGLFormat_nf ()
  = withObjectRefResult $
    qtc_QGLFormat

instance QqGLFormat_nf ((QGLFormat t1)) where
 qGLFormat_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGLFormat1 cobj_x1

instance QqGLFormat_nf ((FormatOptions)) where
 qGLFormat_nf (x1)
  = withObjectRefResult $
    qtc_QGLFormat2 (toCLong $ qFlags_toInt x1)

instance QqGLFormat_nf ((FormatOptions, Int)) where
 qGLFormat_nf (x1, x2)
  = withObjectRefResult $
    qtc_QGLFormat3 (toCLong $ qFlags_toInt x1) (toCInt x2)

accum :: QGLFormat a -> (()) -> IO (Bool)
accum x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLFormat_accum cobj_x0

foreign import ccall "qtc_QGLFormat_accum" qtc_QGLFormat_accum :: Ptr (TQGLFormat a) -> IO CBool

accumBufferSize :: QGLFormat a -> (()) -> IO (Int)
accumBufferSize x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLFormat_accumBufferSize cobj_x0

foreign import ccall "qtc_QGLFormat_accumBufferSize" qtc_QGLFormat_accumBufferSize :: Ptr (TQGLFormat a) -> IO CInt

instance Qalpha (QGLFormat a) (()) (IO (Bool)) where
 alpha x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLFormat_alpha cobj_x0

foreign import ccall "qtc_QGLFormat_alpha" qtc_QGLFormat_alpha :: Ptr (TQGLFormat a) -> IO CBool

alphaBufferSize :: QGLFormat a -> (()) -> IO (Int)
alphaBufferSize x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLFormat_alphaBufferSize cobj_x0

foreign import ccall "qtc_QGLFormat_alphaBufferSize" qtc_QGLFormat_alphaBufferSize :: Ptr (TQGLFormat a) -> IO CInt

blueBufferSize :: QGLFormat a -> (()) -> IO (Int)
blueBufferSize x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLFormat_blueBufferSize cobj_x0

foreign import ccall "qtc_QGLFormat_blueBufferSize" qtc_QGLFormat_blueBufferSize :: Ptr (TQGLFormat a) -> IO CInt

qGLFormatDefaultFormat :: (()) -> IO (QGLFormat ())
qGLFormatDefaultFormat ()
  = withQGLFormatResult $
    qtc_QGLFormat_defaultFormat

foreign import ccall "qtc_QGLFormat_defaultFormat" qtc_QGLFormat_defaultFormat :: IO (Ptr (TQGLFormat ()))

qGLFormatDefaultOverlayFormat :: (()) -> IO (QGLFormat ())
qGLFormatDefaultOverlayFormat ()
  = withQGLFormatResult $
    qtc_QGLFormat_defaultOverlayFormat

foreign import ccall "qtc_QGLFormat_defaultOverlayFormat" qtc_QGLFormat_defaultOverlayFormat :: IO (Ptr (TQGLFormat ()))

instance Qdepth (QGLFormat a) (()) (IO (Bool)) where
 depth x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLFormat_depth cobj_x0

foreign import ccall "qtc_QGLFormat_depth" qtc_QGLFormat_depth :: Ptr (TQGLFormat a) -> IO CBool

depthBufferSize :: QGLFormat a -> (()) -> IO (Int)
depthBufferSize x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLFormat_depthBufferSize cobj_x0

foreign import ccall "qtc_QGLFormat_depthBufferSize" qtc_QGLFormat_depthBufferSize :: Ptr (TQGLFormat a) -> IO CInt

directRendering :: QGLFormat a -> (()) -> IO (Bool)
directRendering x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLFormat_directRendering cobj_x0

foreign import ccall "qtc_QGLFormat_directRendering" qtc_QGLFormat_directRendering :: Ptr (TQGLFormat a) -> IO CBool

instance QdoubleBuffer (QGLFormat a) (()) where
 doubleBuffer x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLFormat_doubleBuffer cobj_x0

foreign import ccall "qtc_QGLFormat_doubleBuffer" qtc_QGLFormat_doubleBuffer :: Ptr (TQGLFormat a) -> IO CBool

greenBufferSize :: QGLFormat a -> (()) -> IO (Int)
greenBufferSize x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLFormat_greenBufferSize cobj_x0

foreign import ccall "qtc_QGLFormat_greenBufferSize" qtc_QGLFormat_greenBufferSize :: Ptr (TQGLFormat a) -> IO CInt

qGLFormatHasOpenGL :: (()) -> IO (Bool)
qGLFormatHasOpenGL ()
  = withBoolResult $
    qtc_QGLFormat_hasOpenGL

foreign import ccall "qtc_QGLFormat_hasOpenGL" qtc_QGLFormat_hasOpenGL :: IO CBool

qGLFormatHasOpenGLOverlays :: (()) -> IO (Bool)
qGLFormatHasOpenGLOverlays ()
  = withBoolResult $
    qtc_QGLFormat_hasOpenGLOverlays

foreign import ccall "qtc_QGLFormat_hasOpenGLOverlays" qtc_QGLFormat_hasOpenGLOverlays :: IO CBool

hasOverlay :: QGLFormat a -> (()) -> IO (Bool)
hasOverlay x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLFormat_hasOverlay cobj_x0

foreign import ccall "qtc_QGLFormat_hasOverlay" qtc_QGLFormat_hasOverlay :: Ptr (TQGLFormat a) -> IO CBool

plane :: QGLFormat a -> (()) -> IO (Int)
plane x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLFormat_plane cobj_x0

foreign import ccall "qtc_QGLFormat_plane" qtc_QGLFormat_plane :: Ptr (TQGLFormat a) -> IO CInt

redBufferSize :: QGLFormat a -> (()) -> IO (Int)
redBufferSize x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLFormat_redBufferSize cobj_x0

foreign import ccall "qtc_QGLFormat_redBufferSize" qtc_QGLFormat_redBufferSize :: Ptr (TQGLFormat a) -> IO CInt

instance Qrgba (QGLFormat a) (()) (IO (Bool)) where
 rgba x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLFormat_rgba cobj_x0

foreign import ccall "qtc_QGLFormat_rgba" qtc_QGLFormat_rgba :: Ptr (TQGLFormat a) -> IO CBool

sampleBuffers :: QGLFormat a -> (()) -> IO (Bool)
sampleBuffers x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLFormat_sampleBuffers cobj_x0

foreign import ccall "qtc_QGLFormat_sampleBuffers" qtc_QGLFormat_sampleBuffers :: Ptr (TQGLFormat a) -> IO CBool

samples :: QGLFormat a -> (()) -> IO (Int)
samples x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLFormat_samples cobj_x0

foreign import ccall "qtc_QGLFormat_samples" qtc_QGLFormat_samples :: Ptr (TQGLFormat a) -> IO CInt

setAccum :: QGLFormat a -> ((Bool)) -> IO ()
setAccum x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLFormat_setAccum cobj_x0 (toCBool x1)

foreign import ccall "qtc_QGLFormat_setAccum" qtc_QGLFormat_setAccum :: Ptr (TQGLFormat a) -> CBool -> IO ()

setAccumBufferSize :: QGLFormat a -> ((Int)) -> IO ()
setAccumBufferSize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLFormat_setAccumBufferSize cobj_x0 (toCInt x1)

foreign import ccall "qtc_QGLFormat_setAccumBufferSize" qtc_QGLFormat_setAccumBufferSize :: Ptr (TQGLFormat a) -> CInt -> IO ()

instance QsetAlpha (QGLFormat a) ((Bool)) where
 setAlpha x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLFormat_setAlpha cobj_x0 (toCBool x1)

foreign import ccall "qtc_QGLFormat_setAlpha" qtc_QGLFormat_setAlpha :: Ptr (TQGLFormat a) -> CBool -> IO ()

setAlphaBufferSize :: QGLFormat a -> ((Int)) -> IO ()
setAlphaBufferSize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLFormat_setAlphaBufferSize cobj_x0 (toCInt x1)

foreign import ccall "qtc_QGLFormat_setAlphaBufferSize" qtc_QGLFormat_setAlphaBufferSize :: Ptr (TQGLFormat a) -> CInt -> IO ()

setBlueBufferSize :: QGLFormat a -> ((Int)) -> IO ()
setBlueBufferSize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLFormat_setBlueBufferSize cobj_x0 (toCInt x1)

foreign import ccall "qtc_QGLFormat_setBlueBufferSize" qtc_QGLFormat_setBlueBufferSize :: Ptr (TQGLFormat a) -> CInt -> IO ()

qGLFormatSetDefaultFormat :: ((QGLFormat t1)) -> IO ()
qGLFormatSetDefaultFormat (x1)
  = withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGLFormat_setDefaultFormat cobj_x1

foreign import ccall "qtc_QGLFormat_setDefaultFormat" qtc_QGLFormat_setDefaultFormat :: Ptr (TQGLFormat t1) -> IO ()

qGLFormatSetDefaultOverlayFormat :: ((QGLFormat t1)) -> IO ()
qGLFormatSetDefaultOverlayFormat (x1)
  = withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGLFormat_setDefaultOverlayFormat cobj_x1

foreign import ccall "qtc_QGLFormat_setDefaultOverlayFormat" qtc_QGLFormat_setDefaultOverlayFormat :: Ptr (TQGLFormat t1) -> IO ()

setDepth :: QGLFormat a -> ((Bool)) -> IO ()
setDepth x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLFormat_setDepth cobj_x0 (toCBool x1)

foreign import ccall "qtc_QGLFormat_setDepth" qtc_QGLFormat_setDepth :: Ptr (TQGLFormat a) -> CBool -> IO ()

setDepthBufferSize :: QGLFormat a -> ((Int)) -> IO ()
setDepthBufferSize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLFormat_setDepthBufferSize cobj_x0 (toCInt x1)

foreign import ccall "qtc_QGLFormat_setDepthBufferSize" qtc_QGLFormat_setDepthBufferSize :: Ptr (TQGLFormat a) -> CInt -> IO ()

setDirectRendering :: QGLFormat a -> ((Bool)) -> IO ()
setDirectRendering x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLFormat_setDirectRendering cobj_x0 (toCBool x1)

foreign import ccall "qtc_QGLFormat_setDirectRendering" qtc_QGLFormat_setDirectRendering :: Ptr (TQGLFormat a) -> CBool -> IO ()

setDoubleBuffer :: QGLFormat a -> ((Bool)) -> IO ()
setDoubleBuffer x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLFormat_setDoubleBuffer cobj_x0 (toCBool x1)

foreign import ccall "qtc_QGLFormat_setDoubleBuffer" qtc_QGLFormat_setDoubleBuffer :: Ptr (TQGLFormat a) -> CBool -> IO ()

setGreenBufferSize :: QGLFormat a -> ((Int)) -> IO ()
setGreenBufferSize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLFormat_setGreenBufferSize cobj_x0 (toCInt x1)

foreign import ccall "qtc_QGLFormat_setGreenBufferSize" qtc_QGLFormat_setGreenBufferSize :: Ptr (TQGLFormat a) -> CInt -> IO ()

setOption :: QGLFormat a -> ((FormatOptions)) -> IO ()
setOption x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLFormat_setOption cobj_x0 (toCLong $ qFlags_toInt x1)

foreign import ccall "qtc_QGLFormat_setOption" qtc_QGLFormat_setOption :: Ptr (TQGLFormat a) -> CLong -> IO ()

setOverlay :: QGLFormat a -> ((Bool)) -> IO ()
setOverlay x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLFormat_setOverlay cobj_x0 (toCBool x1)

foreign import ccall "qtc_QGLFormat_setOverlay" qtc_QGLFormat_setOverlay :: Ptr (TQGLFormat a) -> CBool -> IO ()

setPlane :: QGLFormat a -> ((Int)) -> IO ()
setPlane x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLFormat_setPlane cobj_x0 (toCInt x1)

foreign import ccall "qtc_QGLFormat_setPlane" qtc_QGLFormat_setPlane :: Ptr (TQGLFormat a) -> CInt -> IO ()

setRedBufferSize :: QGLFormat a -> ((Int)) -> IO ()
setRedBufferSize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLFormat_setRedBufferSize cobj_x0 (toCInt x1)

foreign import ccall "qtc_QGLFormat_setRedBufferSize" qtc_QGLFormat_setRedBufferSize :: Ptr (TQGLFormat a) -> CInt -> IO ()

instance QsetRgba (QGLFormat a) ((Bool)) where
 setRgba x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLFormat_setRgba cobj_x0 (toCBool x1)

foreign import ccall "qtc_QGLFormat_setRgba" qtc_QGLFormat_setRgba :: Ptr (TQGLFormat a) -> CBool -> IO ()

setSampleBuffers :: QGLFormat a -> ((Bool)) -> IO ()
setSampleBuffers x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLFormat_setSampleBuffers cobj_x0 (toCBool x1)

foreign import ccall "qtc_QGLFormat_setSampleBuffers" qtc_QGLFormat_setSampleBuffers :: Ptr (TQGLFormat a) -> CBool -> IO ()

setSamples :: QGLFormat a -> ((Int)) -> IO ()
setSamples x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLFormat_setSamples cobj_x0 (toCInt x1)

foreign import ccall "qtc_QGLFormat_setSamples" qtc_QGLFormat_setSamples :: Ptr (TQGLFormat a) -> CInt -> IO ()

setStencil :: QGLFormat a -> ((Bool)) -> IO ()
setStencil x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLFormat_setStencil cobj_x0 (toCBool x1)

foreign import ccall "qtc_QGLFormat_setStencil" qtc_QGLFormat_setStencil :: Ptr (TQGLFormat a) -> CBool -> IO ()

setStencilBufferSize :: QGLFormat a -> ((Int)) -> IO ()
setStencilBufferSize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLFormat_setStencilBufferSize cobj_x0 (toCInt x1)

foreign import ccall "qtc_QGLFormat_setStencilBufferSize" qtc_QGLFormat_setStencilBufferSize :: Ptr (TQGLFormat a) -> CInt -> IO ()

setStereo :: QGLFormat a -> ((Bool)) -> IO ()
setStereo x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLFormat_setStereo cobj_x0 (toCBool x1)

foreign import ccall "qtc_QGLFormat_setStereo" qtc_QGLFormat_setStereo :: Ptr (TQGLFormat a) -> CBool -> IO ()

setSwapInterval :: QGLFormat a -> ((Int)) -> IO ()
setSwapInterval x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLFormat_setSwapInterval cobj_x0 (toCInt x1)

foreign import ccall "qtc_QGLFormat_setSwapInterval" qtc_QGLFormat_setSwapInterval :: Ptr (TQGLFormat a) -> CInt -> IO ()

stencil :: QGLFormat a -> (()) -> IO (Bool)
stencil x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLFormat_stencil cobj_x0

foreign import ccall "qtc_QGLFormat_stencil" qtc_QGLFormat_stencil :: Ptr (TQGLFormat a) -> IO CBool

stencilBufferSize :: QGLFormat a -> (()) -> IO (Int)
stencilBufferSize x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLFormat_stencilBufferSize cobj_x0

foreign import ccall "qtc_QGLFormat_stencilBufferSize" qtc_QGLFormat_stencilBufferSize :: Ptr (TQGLFormat a) -> IO CInt

stereo :: QGLFormat a -> (()) -> IO (Bool)
stereo x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLFormat_stereo cobj_x0

foreign import ccall "qtc_QGLFormat_stereo" qtc_QGLFormat_stereo :: Ptr (TQGLFormat a) -> IO CBool

swapInterval :: QGLFormat a -> (()) -> IO (Int)
swapInterval x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLFormat_swapInterval cobj_x0

foreign import ccall "qtc_QGLFormat_swapInterval" qtc_QGLFormat_swapInterval :: Ptr (TQGLFormat a) -> IO CInt

testOption :: QGLFormat a -> ((FormatOptions)) -> IO (Bool)
testOption x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLFormat_testOption cobj_x0 (toCLong $ qFlags_toInt x1)

foreign import ccall "qtc_QGLFormat_testOption" qtc_QGLFormat_testOption :: Ptr (TQGLFormat a) -> CLong -> IO CBool

qGLFormat_delete :: QGLFormat a -> IO ()
qGLFormat_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLFormat_delete cobj_x0

foreign import ccall "qtc_QGLFormat_delete" qtc_QGLFormat_delete :: Ptr (TQGLFormat a) -> IO ()

