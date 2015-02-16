{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QGLFramebufferObject.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:32
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Opengl.QGLFramebufferObject (
  QqqGLFramebufferObject(..), QqGLFramebufferObject(..)
  ,QqqGLFramebufferObject_nf(..), QqGLFramebufferObject_nf(..)
  ,attachment
  ,qGLFramebufferObjectHasOpenGLFramebufferObjects
  ,release
  ,qGLFramebufferObject_delete, qGLFramebufferObject_delete1
  )
  where

import Foreign.C.Types
import Qth.ClassTypes.Core
import Qtc.Enums.Base
import Qtc.Enums.Gui.QPaintDevice
import Qtc.Enums.Opengl.QGLFramebufferObject

import Qtc.Classes.Base
import Qtc.Classes.Qccs
import Qtc.Classes.Core
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core
import Qtc.Classes.Gui
import Qtc.ClassTypes.Gui
import Qtc.Classes.Opengl
import Qtc.ClassTypes.Opengl

instance QuserMethod (QGLFramebufferObject ()) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QGLFramebufferObject_userMethod cobj_qobj (toCInt evid)

foreign import ccall "qtc_QGLFramebufferObject_userMethod" qtc_QGLFramebufferObject_userMethod :: Ptr (TQGLFramebufferObject a) -> CInt -> IO ()

instance QuserMethod (QGLFramebufferObjectSc a) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QGLFramebufferObject_userMethod cobj_qobj (toCInt evid)

instance QuserMethod (QGLFramebufferObject ()) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QGLFramebufferObject_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

foreign import ccall "qtc_QGLFramebufferObject_userMethodVariant" qtc_QGLFramebufferObject_userMethodVariant :: Ptr (TQGLFramebufferObject a) -> CInt -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))

instance QuserMethod (QGLFramebufferObjectSc a) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QGLFramebufferObject_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

class QqqGLFramebufferObject x1 where
  qqGLFramebufferObject :: x1 -> IO (QGLFramebufferObject ())

class QqGLFramebufferObject x1 where
  qGLFramebufferObject :: x1 -> IO (QGLFramebufferObject ())

instance QqqGLFramebufferObject ((QSize t1)) where
 qqGLFramebufferObject (x1)
  = withQGLFramebufferObjectResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGLFramebufferObject cobj_x1

foreign import ccall "qtc_QGLFramebufferObject" qtc_QGLFramebufferObject :: Ptr (TQSize t1) -> IO (Ptr (TQGLFramebufferObject ()))

instance QqGLFramebufferObject ((Size)) where
 qGLFramebufferObject (x1)
  = withQGLFramebufferObjectResult $
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QGLFramebufferObject1 csize_x1_w csize_x1_h 

foreign import ccall "qtc_QGLFramebufferObject1" qtc_QGLFramebufferObject1 :: CInt -> CInt -> IO (Ptr (TQGLFramebufferObject ()))

instance QqqGLFramebufferObject ((QSize t1, Int)) where
 qqGLFramebufferObject (x1, x2)
  = withQGLFramebufferObjectResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGLFramebufferObject2 cobj_x1 (toCInt x2)

foreign import ccall "qtc_QGLFramebufferObject2" qtc_QGLFramebufferObject2 :: Ptr (TQSize t1) -> CInt -> IO (Ptr (TQGLFramebufferObject ()))

instance QqGLFramebufferObject ((Size, Int)) where
 qGLFramebufferObject (x1, x2)
  = withQGLFramebufferObjectResult $
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QGLFramebufferObject3 csize_x1_w csize_x1_h  (toCInt x2)

foreign import ccall "qtc_QGLFramebufferObject3" qtc_QGLFramebufferObject3 :: CInt -> CInt -> CInt -> IO (Ptr (TQGLFramebufferObject ()))

instance QqqGLFramebufferObject ((QSize t1, Attachment)) where
 qqGLFramebufferObject (x1, x2)
  = withQGLFramebufferObjectResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGLFramebufferObject4 cobj_x1 (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QGLFramebufferObject4" qtc_QGLFramebufferObject4 :: Ptr (TQSize t1) -> CLong -> IO (Ptr (TQGLFramebufferObject ()))

instance QqGLFramebufferObject ((Size, Attachment)) where
 qGLFramebufferObject (x1, x2)
  = withQGLFramebufferObjectResult $
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QGLFramebufferObject5 csize_x1_w csize_x1_h  (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QGLFramebufferObject5" qtc_QGLFramebufferObject5 :: CInt -> CInt -> CLong -> IO (Ptr (TQGLFramebufferObject ()))

instance QqGLFramebufferObject ((Int, Int)) where
 qGLFramebufferObject (x1, x2)
  = withQGLFramebufferObjectResult $
    qtc_QGLFramebufferObject6 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QGLFramebufferObject6" qtc_QGLFramebufferObject6 :: CInt -> CInt -> IO (Ptr (TQGLFramebufferObject ()))

instance QqGLFramebufferObject ((Int, Int, Attachment)) where
 qGLFramebufferObject (x1, x2, x3)
  = withQGLFramebufferObjectResult $
    qtc_QGLFramebufferObject7 (toCInt x1) (toCInt x2) (toCLong $ qEnum_toInt x3)

foreign import ccall "qtc_QGLFramebufferObject7" qtc_QGLFramebufferObject7 :: CInt -> CInt -> CLong -> IO (Ptr (TQGLFramebufferObject ()))

instance QqGLFramebufferObject ((Int, Int, Int)) where
 qGLFramebufferObject (x1, x2, x3)
  = withQGLFramebufferObjectResult $
    qtc_QGLFramebufferObject8 (toCInt x1) (toCInt x2) (toCInt x3)

foreign import ccall "qtc_QGLFramebufferObject8" qtc_QGLFramebufferObject8 :: CInt -> CInt -> CInt -> IO (Ptr (TQGLFramebufferObject ()))

instance QqqGLFramebufferObject ((QSize t1, Attachment, Int)) where
 qqGLFramebufferObject (x1, x2, x3)
  = withQGLFramebufferObjectResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGLFramebufferObject9 cobj_x1 (toCLong $ qEnum_toInt x2) (toCInt x3)

foreign import ccall "qtc_QGLFramebufferObject9" qtc_QGLFramebufferObject9 :: Ptr (TQSize t1) -> CLong -> CInt -> IO (Ptr (TQGLFramebufferObject ()))

instance QqGLFramebufferObject ((Size, Attachment, Int)) where
 qGLFramebufferObject (x1, x2, x3)
  = withQGLFramebufferObjectResult $
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QGLFramebufferObject10 csize_x1_w csize_x1_h  (toCLong $ qEnum_toInt x2) (toCInt x3)

foreign import ccall "qtc_QGLFramebufferObject10" qtc_QGLFramebufferObject10 :: CInt -> CInt -> CLong -> CInt -> IO (Ptr (TQGLFramebufferObject ()))

instance QqqGLFramebufferObject ((QSize t1, Attachment, Int, Int)) where
 qqGLFramebufferObject (x1, x2, x3, x4)
  = withQGLFramebufferObjectResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGLFramebufferObject11 cobj_x1 (toCLong $ qEnum_toInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QGLFramebufferObject11" qtc_QGLFramebufferObject11 :: Ptr (TQSize t1) -> CLong -> CInt -> CInt -> IO (Ptr (TQGLFramebufferObject ()))

instance QqGLFramebufferObject ((Size, Attachment, Int, Int)) where
 qGLFramebufferObject (x1, x2, x3, x4)
  = withQGLFramebufferObjectResult $
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QGLFramebufferObject12 csize_x1_w csize_x1_h  (toCLong $ qEnum_toInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QGLFramebufferObject12" qtc_QGLFramebufferObject12 :: CInt -> CInt -> CLong -> CInt -> CInt -> IO (Ptr (TQGLFramebufferObject ()))

instance QqGLFramebufferObject ((Int, Int, Attachment, Int)) where
 qGLFramebufferObject (x1, x2, x3, x4)
  = withQGLFramebufferObjectResult $
    qtc_QGLFramebufferObject13 (toCInt x1) (toCInt x2) (toCLong $ qEnum_toInt x3) (toCInt x4)

foreign import ccall "qtc_QGLFramebufferObject13" qtc_QGLFramebufferObject13 :: CInt -> CInt -> CLong -> CInt -> IO (Ptr (TQGLFramebufferObject ()))

instance QqGLFramebufferObject ((Int, Int, Attachment, Int, Int)) where
 qGLFramebufferObject (x1, x2, x3, x4, x5)
  = withQGLFramebufferObjectResult $
    qtc_QGLFramebufferObject14 (toCInt x1) (toCInt x2) (toCLong $ qEnum_toInt x3) (toCInt x4) (toCInt x5)

foreign import ccall "qtc_QGLFramebufferObject14" qtc_QGLFramebufferObject14 :: CInt -> CInt -> CLong -> CInt -> CInt -> IO (Ptr (TQGLFramebufferObject ()))

class QqqGLFramebufferObject_nf x1 where
  qqGLFramebufferObject_nf :: x1 -> IO (QGLFramebufferObject ())

class QqGLFramebufferObject_nf x1 where
  qGLFramebufferObject_nf :: x1 -> IO (QGLFramebufferObject ())

instance QqqGLFramebufferObject_nf ((QSize t1)) where
 qqGLFramebufferObject_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGLFramebufferObject cobj_x1

instance QqGLFramebufferObject_nf ((Size)) where
 qGLFramebufferObject_nf (x1)
  = withObjectRefResult $
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QGLFramebufferObject1 csize_x1_w csize_x1_h 

instance QqqGLFramebufferObject_nf ((QSize t1, Int)) where
 qqGLFramebufferObject_nf (x1, x2)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGLFramebufferObject2 cobj_x1 (toCInt x2)

instance QqGLFramebufferObject_nf ((Size, Int)) where
 qGLFramebufferObject_nf (x1, x2)
  = withObjectRefResult $
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QGLFramebufferObject3 csize_x1_w csize_x1_h  (toCInt x2)

instance QqqGLFramebufferObject_nf ((QSize t1, Attachment)) where
 qqGLFramebufferObject_nf (x1, x2)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGLFramebufferObject4 cobj_x1 (toCLong $ qEnum_toInt x2)

instance QqGLFramebufferObject_nf ((Size, Attachment)) where
 qGLFramebufferObject_nf (x1, x2)
  = withObjectRefResult $
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QGLFramebufferObject5 csize_x1_w csize_x1_h  (toCLong $ qEnum_toInt x2)

instance QqGLFramebufferObject_nf ((Int, Int)) where
 qGLFramebufferObject_nf (x1, x2)
  = withObjectRefResult $
    qtc_QGLFramebufferObject6 (toCInt x1) (toCInt x2)

instance QqGLFramebufferObject_nf ((Int, Int, Attachment)) where
 qGLFramebufferObject_nf (x1, x2, x3)
  = withObjectRefResult $
    qtc_QGLFramebufferObject7 (toCInt x1) (toCInt x2) (toCLong $ qEnum_toInt x3)

instance QqGLFramebufferObject_nf ((Int, Int, Int)) where
 qGLFramebufferObject_nf (x1, x2, x3)
  = withObjectRefResult $
    qtc_QGLFramebufferObject8 (toCInt x1) (toCInt x2) (toCInt x3)

instance QqqGLFramebufferObject_nf ((QSize t1, Attachment, Int)) where
 qqGLFramebufferObject_nf (x1, x2, x3)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGLFramebufferObject9 cobj_x1 (toCLong $ qEnum_toInt x2) (toCInt x3)

instance QqGLFramebufferObject_nf ((Size, Attachment, Int)) where
 qGLFramebufferObject_nf (x1, x2, x3)
  = withObjectRefResult $
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QGLFramebufferObject10 csize_x1_w csize_x1_h  (toCLong $ qEnum_toInt x2) (toCInt x3)

instance QqqGLFramebufferObject_nf ((QSize t1, Attachment, Int, Int)) where
 qqGLFramebufferObject_nf (x1, x2, x3, x4)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGLFramebufferObject11 cobj_x1 (toCLong $ qEnum_toInt x2) (toCInt x3) (toCInt x4)

instance QqGLFramebufferObject_nf ((Size, Attachment, Int, Int)) where
 qGLFramebufferObject_nf (x1, x2, x3, x4)
  = withObjectRefResult $
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QGLFramebufferObject12 csize_x1_w csize_x1_h  (toCLong $ qEnum_toInt x2) (toCInt x3) (toCInt x4)

instance QqGLFramebufferObject_nf ((Int, Int, Attachment, Int)) where
 qGLFramebufferObject_nf (x1, x2, x3, x4)
  = withObjectRefResult $
    qtc_QGLFramebufferObject13 (toCInt x1) (toCInt x2) (toCLong $ qEnum_toInt x3) (toCInt x4)

instance QqGLFramebufferObject_nf ((Int, Int, Attachment, Int, Int)) where
 qGLFramebufferObject_nf (x1, x2, x3, x4, x5)
  = withObjectRefResult $
    qtc_QGLFramebufferObject14 (toCInt x1) (toCInt x2) (toCLong $ qEnum_toInt x3) (toCInt x4) (toCInt x5)

attachment :: QGLFramebufferObject a -> (()) -> IO (Attachment)
attachment x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLFramebufferObject_attachment cobj_x0

foreign import ccall "qtc_QGLFramebufferObject_attachment" qtc_QGLFramebufferObject_attachment :: Ptr (TQGLFramebufferObject a) -> IO CLong

instance Qbind (QGLFramebufferObject a) (()) where
 bind x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLFramebufferObject_bind cobj_x0

foreign import ccall "qtc_QGLFramebufferObject_bind" qtc_QGLFramebufferObject_bind :: Ptr (TQGLFramebufferObject a) -> IO CBool

instance QdevType (QGLFramebufferObject ()) (()) where
 devType x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLFramebufferObject_devType cobj_x0

foreign import ccall "qtc_QGLFramebufferObject_devType" qtc_QGLFramebufferObject_devType :: Ptr (TQGLFramebufferObject a) -> IO CInt

instance QdevType (QGLFramebufferObjectSc a) (()) where
 devType x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLFramebufferObject_devType cobj_x0

qGLFramebufferObjectHasOpenGLFramebufferObjects :: (()) -> IO (Bool)
qGLFramebufferObjectHasOpenGLFramebufferObjects ()
  = withBoolResult $
    qtc_QGLFramebufferObject_hasOpenGLFramebufferObjects

foreign import ccall "qtc_QGLFramebufferObject_hasOpenGLFramebufferObjects" qtc_QGLFramebufferObject_hasOpenGLFramebufferObjects :: IO CBool

instance QqisValid (QGLFramebufferObject ()) (()) where
 qisValid x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLFramebufferObject_isValid cobj_x0

foreign import ccall "qtc_QGLFramebufferObject_isValid" qtc_QGLFramebufferObject_isValid :: Ptr (TQGLFramebufferObject a) -> IO CBool

instance QqisValid (QGLFramebufferObjectSc a) (()) where
 qisValid x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLFramebufferObject_isValid cobj_x0

instance Qmetric (QGLFramebufferObject ()) ((PaintDeviceMetric)) where
 metric x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLFramebufferObject_metric cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QGLFramebufferObject_metric" qtc_QGLFramebufferObject_metric :: Ptr (TQGLFramebufferObject a) -> CLong -> IO CInt

instance Qmetric (QGLFramebufferObjectSc a) ((PaintDeviceMetric)) where
 metric x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLFramebufferObject_metric cobj_x0 (toCLong $ qEnum_toInt x1)

instance QpaintEngine (QGLFramebufferObject ()) (()) where
 paintEngine x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLFramebufferObject_paintEngine_h cobj_x0

foreign import ccall "qtc_QGLFramebufferObject_paintEngine_h" qtc_QGLFramebufferObject_paintEngine_h :: Ptr (TQGLFramebufferObject a) -> IO (Ptr (TQPaintEngine ()))

instance QpaintEngine (QGLFramebufferObjectSc a) (()) where
 paintEngine x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLFramebufferObject_paintEngine_h cobj_x0

release :: QGLFramebufferObject a -> (()) -> IO (Bool)
release x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLFramebufferObject_release cobj_x0

foreign import ccall "qtc_QGLFramebufferObject_release" qtc_QGLFramebufferObject_release :: Ptr (TQGLFramebufferObject a) -> IO CBool

instance Qqqsize (QGLFramebufferObject a) (()) (IO (QSize ())) where
 qqsize x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLFramebufferObject_size cobj_x0

foreign import ccall "qtc_QGLFramebufferObject_size" qtc_QGLFramebufferObject_size :: Ptr (TQGLFramebufferObject a) -> IO (Ptr (TQSize ()))

instance Qqsize (QGLFramebufferObject a) (()) (IO (Size)) where
 qsize x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLFramebufferObject_size_qth cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QGLFramebufferObject_size_qth" qtc_QGLFramebufferObject_size_qth :: Ptr (TQGLFramebufferObject a) -> Ptr CInt -> Ptr CInt -> IO ()

instance Qtexture (QGLFramebufferObject a) (()) (IO (Int)) where
 texture x0 ()
  = withUnsignedIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLFramebufferObject_texture cobj_x0

foreign import ccall "qtc_QGLFramebufferObject_texture" qtc_QGLFramebufferObject_texture :: Ptr (TQGLFramebufferObject a) -> IO CUInt

instance QtoImage (QGLFramebufferObject ()) (()) where
 toImage x0 ()
  = withQImageResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLFramebufferObject_toImage cobj_x0

foreign import ccall "qtc_QGLFramebufferObject_toImage" qtc_QGLFramebufferObject_toImage :: Ptr (TQGLFramebufferObject a) -> IO (Ptr (TQImage ()))

instance QtoImage (QGLFramebufferObjectSc a) (()) where
 toImage x0 ()
  = withQImageResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLFramebufferObject_toImage cobj_x0

instance QtoImage_nf (QGLFramebufferObject ()) (()) where
 toImage_nf x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLFramebufferObject_toImage cobj_x0

instance QtoImage_nf (QGLFramebufferObjectSc a) (()) where
 toImage_nf x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLFramebufferObject_toImage cobj_x0

qGLFramebufferObject_delete :: QGLFramebufferObject a -> IO ()
qGLFramebufferObject_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLFramebufferObject_delete cobj_x0

foreign import ccall "qtc_QGLFramebufferObject_delete" qtc_QGLFramebufferObject_delete :: Ptr (TQGLFramebufferObject a) -> IO ()

qGLFramebufferObject_delete1 :: QGLFramebufferObject a -> IO ()
qGLFramebufferObject_delete1 x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLFramebufferObject_delete1 cobj_x0

foreign import ccall "qtc_QGLFramebufferObject_delete1" qtc_QGLFramebufferObject_delete1 :: Ptr (TQGLFramebufferObject a) -> IO ()

