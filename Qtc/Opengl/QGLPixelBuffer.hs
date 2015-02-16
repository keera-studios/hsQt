{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QGLPixelBuffer.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:32
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Opengl.QGLPixelBuffer (
  QqqGLPixelBuffer(..), QqGLPixelBuffer(..)
  ,QqqGLPixelBuffer_nf(..), QqGLPixelBuffer_nf(..)
  ,bindToDynamicTexture
  ,generateDynamicTexture
  ,qGLPixelBufferHasOpenGLPbuffers
  ,releaseFromDynamicTexture
  ,updateDynamicTexture
  ,qGLPixelBuffer_delete, qGLPixelBuffer_delete1
  )
  where

import Foreign.C.Types
import Qth.ClassTypes.Core
import Qtc.Enums.Base
import Qtc.Enums.Gui.QPaintDevice

import Qtc.Classes.Base
import Qtc.Classes.Qccs
import Qtc.Classes.Core
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core
import Qtc.Classes.Gui
import Qtc.ClassTypes.Gui
import Qtc.Classes.Opengl
import Qtc.ClassTypes.Opengl

instance QuserMethod (QGLPixelBuffer ()) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QGLPixelBuffer_userMethod cobj_qobj (toCInt evid)

foreign import ccall "qtc_QGLPixelBuffer_userMethod" qtc_QGLPixelBuffer_userMethod :: Ptr (TQGLPixelBuffer a) -> CInt -> IO ()

instance QuserMethod (QGLPixelBufferSc a) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QGLPixelBuffer_userMethod cobj_qobj (toCInt evid)

instance QuserMethod (QGLPixelBuffer ()) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QGLPixelBuffer_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

foreign import ccall "qtc_QGLPixelBuffer_userMethodVariant" qtc_QGLPixelBuffer_userMethodVariant :: Ptr (TQGLPixelBuffer a) -> CInt -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))

instance QuserMethod (QGLPixelBufferSc a) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QGLPixelBuffer_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

class QqqGLPixelBuffer x1 where
  qqGLPixelBuffer :: x1 -> IO (QGLPixelBuffer ())

class QqGLPixelBuffer x1 where
  qGLPixelBuffer :: x1 -> IO (QGLPixelBuffer ())

instance QqqGLPixelBuffer ((QSize t1)) where
 qqGLPixelBuffer (x1)
  = withQGLPixelBufferResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGLPixelBuffer cobj_x1

foreign import ccall "qtc_QGLPixelBuffer" qtc_QGLPixelBuffer :: Ptr (TQSize t1) -> IO (Ptr (TQGLPixelBuffer ()))

instance QqGLPixelBuffer ((Size)) where
 qGLPixelBuffer (x1)
  = withQGLPixelBufferResult $
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QGLPixelBuffer1 csize_x1_w csize_x1_h 

foreign import ccall "qtc_QGLPixelBuffer1" qtc_QGLPixelBuffer1 :: CInt -> CInt -> IO (Ptr (TQGLPixelBuffer ()))

instance QqqGLPixelBuffer ((QSize t1, QGLFormat t2)) where
 qqGLPixelBuffer (x1, x2)
  = withQGLPixelBufferResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGLPixelBuffer2 cobj_x1 cobj_x2

foreign import ccall "qtc_QGLPixelBuffer2" qtc_QGLPixelBuffer2 :: Ptr (TQSize t1) -> Ptr (TQGLFormat t2) -> IO (Ptr (TQGLPixelBuffer ()))

instance QqGLPixelBuffer ((Size, QGLFormat t2)) where
 qGLPixelBuffer (x1, x2)
  = withQGLPixelBufferResult $
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGLPixelBuffer3 csize_x1_w csize_x1_h  cobj_x2

foreign import ccall "qtc_QGLPixelBuffer3" qtc_QGLPixelBuffer3 :: CInt -> CInt -> Ptr (TQGLFormat t2) -> IO (Ptr (TQGLPixelBuffer ()))

instance QqGLPixelBuffer ((Int, Int)) where
 qGLPixelBuffer (x1, x2)
  = withQGLPixelBufferResult $
    qtc_QGLPixelBuffer4 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QGLPixelBuffer4" qtc_QGLPixelBuffer4 :: CInt -> CInt -> IO (Ptr (TQGLPixelBuffer ()))

instance QqqGLPixelBuffer ((QSize t1, QGLFormat t2, QGLWidget t3)) where
 qqGLPixelBuffer (x1, x2, x3)
  = withQGLPixelBufferResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QGLPixelBuffer5 cobj_x1 cobj_x2 cobj_x3

foreign import ccall "qtc_QGLPixelBuffer5" qtc_QGLPixelBuffer5 :: Ptr (TQSize t1) -> Ptr (TQGLFormat t2) -> Ptr (TQGLWidget t3) -> IO (Ptr (TQGLPixelBuffer ()))

instance QqGLPixelBuffer ((Size, QGLFormat t2, QGLWidget t3)) where
 qGLPixelBuffer (x1, x2, x3)
  = withQGLPixelBufferResult $
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QGLPixelBuffer6 csize_x1_w csize_x1_h  cobj_x2 cobj_x3

foreign import ccall "qtc_QGLPixelBuffer6" qtc_QGLPixelBuffer6 :: CInt -> CInt -> Ptr (TQGLFormat t2) -> Ptr (TQGLWidget t3) -> IO (Ptr (TQGLPixelBuffer ()))

instance QqGLPixelBuffer ((Int, Int, QGLFormat t3)) where
 qGLPixelBuffer (x1, x2, x3)
  = withQGLPixelBufferResult $
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QGLPixelBuffer7 (toCInt x1) (toCInt x2) cobj_x3

foreign import ccall "qtc_QGLPixelBuffer7" qtc_QGLPixelBuffer7 :: CInt -> CInt -> Ptr (TQGLFormat t3) -> IO (Ptr (TQGLPixelBuffer ()))

instance QqGLPixelBuffer ((Int, Int, QGLFormat t3, QGLWidget t4)) where
 qGLPixelBuffer (x1, x2, x3, x4)
  = withQGLPixelBufferResult $
    withObjectPtr x3 $ \cobj_x3 ->
    withObjectPtr x4 $ \cobj_x4 ->
    qtc_QGLPixelBuffer8 (toCInt x1) (toCInt x2) cobj_x3 cobj_x4

foreign import ccall "qtc_QGLPixelBuffer8" qtc_QGLPixelBuffer8 :: CInt -> CInt -> Ptr (TQGLFormat t3) -> Ptr (TQGLWidget t4) -> IO (Ptr (TQGLPixelBuffer ()))

class QqqGLPixelBuffer_nf x1 where
  qqGLPixelBuffer_nf :: x1 -> IO (QGLPixelBuffer ())

class QqGLPixelBuffer_nf x1 where
  qGLPixelBuffer_nf :: x1 -> IO (QGLPixelBuffer ())

instance QqqGLPixelBuffer_nf ((QSize t1)) where
 qqGLPixelBuffer_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGLPixelBuffer cobj_x1

instance QqGLPixelBuffer_nf ((Size)) where
 qGLPixelBuffer_nf (x1)
  = withObjectRefResult $
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QGLPixelBuffer1 csize_x1_w csize_x1_h 

instance QqqGLPixelBuffer_nf ((QSize t1, QGLFormat t2)) where
 qqGLPixelBuffer_nf (x1, x2)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGLPixelBuffer2 cobj_x1 cobj_x2

instance QqGLPixelBuffer_nf ((Size, QGLFormat t2)) where
 qGLPixelBuffer_nf (x1, x2)
  = withObjectRefResult $
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGLPixelBuffer3 csize_x1_w csize_x1_h  cobj_x2

instance QqGLPixelBuffer_nf ((Int, Int)) where
 qGLPixelBuffer_nf (x1, x2)
  = withObjectRefResult $
    qtc_QGLPixelBuffer4 (toCInt x1) (toCInt x2)

instance QqqGLPixelBuffer_nf ((QSize t1, QGLFormat t2, QGLWidget t3)) where
 qqGLPixelBuffer_nf (x1, x2, x3)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QGLPixelBuffer5 cobj_x1 cobj_x2 cobj_x3

instance QqGLPixelBuffer_nf ((Size, QGLFormat t2, QGLWidget t3)) where
 qGLPixelBuffer_nf (x1, x2, x3)
  = withObjectRefResult $
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QGLPixelBuffer6 csize_x1_w csize_x1_h  cobj_x2 cobj_x3

instance QqGLPixelBuffer_nf ((Int, Int, QGLFormat t3)) where
 qGLPixelBuffer_nf (x1, x2, x3)
  = withObjectRefResult $
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QGLPixelBuffer7 (toCInt x1) (toCInt x2) cobj_x3

instance QqGLPixelBuffer_nf ((Int, Int, QGLFormat t3, QGLWidget t4)) where
 qGLPixelBuffer_nf (x1, x2, x3, x4)
  = withObjectRefResult $
    withObjectPtr x3 $ \cobj_x3 ->
    withObjectPtr x4 $ \cobj_x4 ->
    qtc_QGLPixelBuffer8 (toCInt x1) (toCInt x2) cobj_x3 cobj_x4

instance QbindTexture (QGLPixelBuffer a) ((QImage t1)) where
 bindTexture x0 (x1)
  = withUnsignedIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGLPixelBuffer_bindTexture2 cobj_x0 cobj_x1

foreign import ccall "qtc_QGLPixelBuffer_bindTexture2" qtc_QGLPixelBuffer_bindTexture2 :: Ptr (TQGLPixelBuffer a) -> Ptr (TQImage t1) -> IO CUInt

instance QbindTexture (QGLPixelBuffer a) ((QImage t1, Int)) where
 bindTexture x0 (x1, x2)
  = withUnsignedIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGLPixelBuffer_bindTexture3 cobj_x0 cobj_x1 (toCInt x2)

foreign import ccall "qtc_QGLPixelBuffer_bindTexture3" qtc_QGLPixelBuffer_bindTexture3 :: Ptr (TQGLPixelBuffer a) -> Ptr (TQImage t1) -> CInt -> IO CUInt

instance QbindTexture (QGLPixelBuffer a) ((QPixmap t1)) where
 bindTexture x0 (x1)
  = withUnsignedIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGLPixelBuffer_bindTexture1 cobj_x0 cobj_x1

foreign import ccall "qtc_QGLPixelBuffer_bindTexture1" qtc_QGLPixelBuffer_bindTexture1 :: Ptr (TQGLPixelBuffer a) -> Ptr (TQPixmap t1) -> IO CUInt

instance QbindTexture (QGLPixelBuffer a) ((QPixmap t1, Int)) where
 bindTexture x0 (x1, x2)
  = withUnsignedIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGLPixelBuffer_bindTexture4 cobj_x0 cobj_x1 (toCInt x2)

foreign import ccall "qtc_QGLPixelBuffer_bindTexture4" qtc_QGLPixelBuffer_bindTexture4 :: Ptr (TQGLPixelBuffer a) -> Ptr (TQPixmap t1) -> CInt -> IO CUInt

instance QbindTexture (QGLPixelBuffer a) ((String)) where
 bindTexture x0 (x1)
  = withUnsignedIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QGLPixelBuffer_bindTexture cobj_x0 cstr_x1

foreign import ccall "qtc_QGLPixelBuffer_bindTexture" qtc_QGLPixelBuffer_bindTexture :: Ptr (TQGLPixelBuffer a) -> CWString -> IO CUInt

bindToDynamicTexture :: QGLPixelBuffer a -> ((Int)) -> IO (Bool)
bindToDynamicTexture x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLPixelBuffer_bindToDynamicTexture cobj_x0 (toCUInt x1)

foreign import ccall "qtc_QGLPixelBuffer_bindToDynamicTexture" qtc_QGLPixelBuffer_bindToDynamicTexture :: Ptr (TQGLPixelBuffer a) -> CUInt -> IO CBool

instance QdeleteTexture (QGLPixelBuffer a) ((Int)) where
 deleteTexture x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLPixelBuffer_deleteTexture cobj_x0 (toCUInt x1)

foreign import ccall "qtc_QGLPixelBuffer_deleteTexture" qtc_QGLPixelBuffer_deleteTexture :: Ptr (TQGLPixelBuffer a) -> CUInt -> IO ()

instance QdevType (QGLPixelBuffer ()) (()) where
 devType x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLPixelBuffer_devType cobj_x0

foreign import ccall "qtc_QGLPixelBuffer_devType" qtc_QGLPixelBuffer_devType :: Ptr (TQGLPixelBuffer a) -> IO CInt

instance QdevType (QGLPixelBufferSc a) (()) where
 devType x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLPixelBuffer_devType cobj_x0

instance QdoneCurrent (QGLPixelBuffer a) (()) (IO (Bool)) where
 doneCurrent x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLPixelBuffer_doneCurrent cobj_x0

foreign import ccall "qtc_QGLPixelBuffer_doneCurrent" qtc_QGLPixelBuffer_doneCurrent :: Ptr (TQGLPixelBuffer a) -> IO CBool

instance Qformat (QGLPixelBuffer a) (()) (IO (QGLFormat ())) where
 format x0 ()
  = withQGLFormatResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLPixelBuffer_format cobj_x0

foreign import ccall "qtc_QGLPixelBuffer_format" qtc_QGLPixelBuffer_format :: Ptr (TQGLPixelBuffer a) -> IO (Ptr (TQGLFormat ()))

generateDynamicTexture :: QGLPixelBuffer a -> (()) -> IO (Int)
generateDynamicTexture x0 ()
  = withUnsignedIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLPixelBuffer_generateDynamicTexture cobj_x0

foreign import ccall "qtc_QGLPixelBuffer_generateDynamicTexture" qtc_QGLPixelBuffer_generateDynamicTexture :: Ptr (TQGLPixelBuffer a) -> IO CUInt

qGLPixelBufferHasOpenGLPbuffers :: (()) -> IO (Bool)
qGLPixelBufferHasOpenGLPbuffers ()
  = withBoolResult $
    qtc_QGLPixelBuffer_hasOpenGLPbuffers

foreign import ccall "qtc_QGLPixelBuffer_hasOpenGLPbuffers" qtc_QGLPixelBuffer_hasOpenGLPbuffers :: IO CBool

instance QqisValid (QGLPixelBuffer ()) (()) where
 qisValid x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLPixelBuffer_isValid cobj_x0

foreign import ccall "qtc_QGLPixelBuffer_isValid" qtc_QGLPixelBuffer_isValid :: Ptr (TQGLPixelBuffer a) -> IO CBool

instance QqisValid (QGLPixelBufferSc a) (()) where
 qisValid x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLPixelBuffer_isValid cobj_x0

instance QmakeCurrent (QGLPixelBuffer a) (()) (IO (Bool)) where
 makeCurrent x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLPixelBuffer_makeCurrent cobj_x0

foreign import ccall "qtc_QGLPixelBuffer_makeCurrent" qtc_QGLPixelBuffer_makeCurrent :: Ptr (TQGLPixelBuffer a) -> IO CBool

instance Qmetric (QGLPixelBuffer ()) ((PaintDeviceMetric)) where
 metric x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLPixelBuffer_metric cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QGLPixelBuffer_metric" qtc_QGLPixelBuffer_metric :: Ptr (TQGLPixelBuffer a) -> CLong -> IO CInt

instance Qmetric (QGLPixelBufferSc a) ((PaintDeviceMetric)) where
 metric x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLPixelBuffer_metric cobj_x0 (toCLong $ qEnum_toInt x1)

instance QpaintEngine (QGLPixelBuffer ()) (()) where
 paintEngine x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLPixelBuffer_paintEngine_h cobj_x0

foreign import ccall "qtc_QGLPixelBuffer_paintEngine_h" qtc_QGLPixelBuffer_paintEngine_h :: Ptr (TQGLPixelBuffer a) -> IO (Ptr (TQPaintEngine ()))

instance QpaintEngine (QGLPixelBufferSc a) (()) where
 paintEngine x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLPixelBuffer_paintEngine_h cobj_x0

releaseFromDynamicTexture :: QGLPixelBuffer a -> (()) -> IO ()
releaseFromDynamicTexture x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLPixelBuffer_releaseFromDynamicTexture cobj_x0

foreign import ccall "qtc_QGLPixelBuffer_releaseFromDynamicTexture" qtc_QGLPixelBuffer_releaseFromDynamicTexture :: Ptr (TQGLPixelBuffer a) -> IO ()

instance Qqqsize (QGLPixelBuffer a) (()) (IO (QSize ())) where
 qqsize x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLPixelBuffer_size cobj_x0

foreign import ccall "qtc_QGLPixelBuffer_size" qtc_QGLPixelBuffer_size :: Ptr (TQGLPixelBuffer a) -> IO (Ptr (TQSize ()))

instance Qqsize (QGLPixelBuffer a) (()) (IO (Size)) where
 qsize x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLPixelBuffer_size_qth cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QGLPixelBuffer_size_qth" qtc_QGLPixelBuffer_size_qth :: Ptr (TQGLPixelBuffer a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QtoImage (QGLPixelBuffer ()) (()) where
 toImage x0 ()
  = withQImageResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLPixelBuffer_toImage cobj_x0

foreign import ccall "qtc_QGLPixelBuffer_toImage" qtc_QGLPixelBuffer_toImage :: Ptr (TQGLPixelBuffer a) -> IO (Ptr (TQImage ()))

instance QtoImage (QGLPixelBufferSc a) (()) where
 toImage x0 ()
  = withQImageResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLPixelBuffer_toImage cobj_x0

instance QtoImage_nf (QGLPixelBuffer ()) (()) where
 toImage_nf x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLPixelBuffer_toImage cobj_x0

instance QtoImage_nf (QGLPixelBufferSc a) (()) where
 toImage_nf x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLPixelBuffer_toImage cobj_x0

updateDynamicTexture :: QGLPixelBuffer a -> ((Int)) -> IO ()
updateDynamicTexture x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLPixelBuffer_updateDynamicTexture cobj_x0 (toCUInt x1)

foreign import ccall "qtc_QGLPixelBuffer_updateDynamicTexture" qtc_QGLPixelBuffer_updateDynamicTexture :: Ptr (TQGLPixelBuffer a) -> CUInt -> IO ()

qGLPixelBuffer_delete :: QGLPixelBuffer a -> IO ()
qGLPixelBuffer_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLPixelBuffer_delete cobj_x0

foreign import ccall "qtc_QGLPixelBuffer_delete" qtc_QGLPixelBuffer_delete :: Ptr (TQGLPixelBuffer a) -> IO ()

qGLPixelBuffer_delete1 :: QGLPixelBuffer a -> IO ()
qGLPixelBuffer_delete1 x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLPixelBuffer_delete1 cobj_x0

foreign import ccall "qtc_QGLPixelBuffer_delete1" qtc_QGLPixelBuffer_delete1 :: Ptr (TQGLPixelBuffer a) -> IO ()

