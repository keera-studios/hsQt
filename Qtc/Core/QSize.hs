{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QSize.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:31
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Core.QSize (
  QqqSize(..), QqSize(..)
  ,QqqSize_nf(..), QqSize_nf(..)
  ,qSize_delete
  )
  where

import Foreign.C.Types

import Qth.ClassTypes.Core
import Qtc.Enums.Base
import Qtc.Enums.Core.Qt

import Qtc.Classes.Base
import Qtc.Classes.Qccs
import Qtc.Classes.Core
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core

class QqqSize x1 where
  qqSize :: x1 -> IO (QSize ())

class QqSize x1 where
  qSize :: x1 -> IO (QSize ())

instance QqSize (()) where
 qSize ()
  = withQSizeResult $
    qtc_QSize

foreign import ccall "qtc_QSize" qtc_QSize :: IO (Ptr (TQSize ()))

instance QqqSize ((QSize t1)) where
 qqSize (x1)
  = withQSizeResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSize1 cobj_x1

foreign import ccall "qtc_QSize1" qtc_QSize1 :: Ptr (TQSize t1) -> IO (Ptr (TQSize ()))

instance QqSize ((Size)) where
 qSize (x1)
  = withQSizeResult $
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QSize2 csize_x1_w csize_x1_h 

foreign import ccall "qtc_QSize2" qtc_QSize2 :: CInt -> CInt -> IO (Ptr (TQSize ()))

instance QqSize ((Int, Int)) where
 qSize (x1, x2)
  = withQSizeResult $
    qtc_QSize3 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QSize3" qtc_QSize3 :: CInt -> CInt -> IO (Ptr (TQSize ()))

class QqqSize_nf x1 where
  qqSize_nf :: x1 -> IO (QSize ())

class QqSize_nf x1 where
  qSize_nf :: x1 -> IO (QSize ())

instance QqSize_nf (()) where
 qSize_nf ()
  = withObjectRefResult $
    qtc_QSize

instance QqqSize_nf ((QSize t1)) where
 qqSize_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSize1 cobj_x1

instance QqSize_nf ((Size)) where
 qSize_nf (x1)
  = withObjectRefResult $
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QSize2 csize_x1_w csize_x1_h 

instance QqSize_nf ((Int, Int)) where
 qSize_nf (x1, x2)
  = withObjectRefResult $
    qtc_QSize3 (toCInt x1) (toCInt x2)

instance QqqboundedTo (QSize a) ((QSize t1)) (IO (QSize ())) where
 qqboundedTo x0 (x1)
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSize_boundedTo cobj_x0 cobj_x1

foreign import ccall "qtc_QSize_boundedTo" qtc_QSize_boundedTo :: Ptr (TQSize a) -> Ptr (TQSize t1) -> IO (Ptr (TQSize ()))

instance QqboundedTo (QSize a) ((Size)) (IO (Size)) where
 qboundedTo x0 (x1)
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QSize_boundedTo_qth cobj_x0 csize_x1_w csize_x1_h  csize_ret_w csize_ret_h

foreign import ccall "qtc_QSize_boundedTo_qth" qtc_QSize_boundedTo_qth :: Ptr (TQSize a) -> CInt -> CInt -> Ptr CInt -> Ptr CInt -> IO ()

instance QqqexpandedTo (QSize a) ((QSize t1)) (IO (QSize ())) where
 qqexpandedTo x0 (x1)
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSize_expandedTo cobj_x0 cobj_x1

foreign import ccall "qtc_QSize_expandedTo" qtc_QSize_expandedTo :: Ptr (TQSize a) -> Ptr (TQSize t1) -> IO (Ptr (TQSize ()))

instance QqexpandedTo (QSize a) ((Size)) (IO (Size)) where
 qexpandedTo x0 (x1)
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QSize_expandedTo_qth cobj_x0 csize_x1_w csize_x1_h  csize_ret_w csize_ret_h

foreign import ccall "qtc_QSize_expandedTo_qth" qtc_QSize_expandedTo_qth :: Ptr (TQSize a) -> CInt -> CInt -> Ptr CInt -> Ptr CInt -> IO ()

instance Qqheight (QSize a) (()) (IO (Int)) where
 qheight x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSize_height cobj_x0

foreign import ccall "qtc_QSize_height" qtc_QSize_height :: Ptr (TQSize a) -> IO CInt

instance QqisEmpty (QSize a) (()) where
 qisEmpty x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSize_isEmpty cobj_x0

foreign import ccall "qtc_QSize_isEmpty" qtc_QSize_isEmpty :: Ptr (TQSize a) -> IO CBool

instance QqisNull (QSize a) (()) where
 qisNull x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSize_isNull cobj_x0

foreign import ccall "qtc_QSize_isNull" qtc_QSize_isNull :: Ptr (TQSize a) -> IO CBool

instance QqisValid (QSize ()) (()) where
 qisValid x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSize_isValid cobj_x0

foreign import ccall "qtc_QSize_isValid" qtc_QSize_isValid :: Ptr (TQSize a) -> IO CBool

instance QqisValid (QSizeSc a) (()) where
 qisValid x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSize_isValid cobj_x0

instance Qqscale (QSize a) ((Int, Int, AspectRatioMode)) where
 qscale x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSize_scale1 cobj_x0 (toCInt x1) (toCInt x2) (toCLong $ qEnum_toInt x3)

foreign import ccall "qtc_QSize_scale1" qtc_QSize_scale1 :: Ptr (TQSize a) -> CInt -> CInt -> CLong -> IO ()

instance Qqqscale (QSize a) ((QSize t1, AspectRatioMode)) where
 qqscale x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSize_scale cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QSize_scale" qtc_QSize_scale :: Ptr (TQSize a) -> Ptr (TQSize t1) -> CLong -> IO ()

instance Qqscale (QSize a) ((Size, AspectRatioMode)) where
 qscale x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QSize_scale_qth cobj_x0 csize_x1_w csize_x1_h  (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QSize_scale_qth" qtc_QSize_scale_qth :: Ptr (TQSize a) -> CInt -> CInt -> CLong -> IO ()

instance QqsetHeight (QSize a) ((Int)) where
 qsetHeight x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSize_setHeight cobj_x0 (toCInt x1)

foreign import ccall "qtc_QSize_setHeight" qtc_QSize_setHeight :: Ptr (TQSize a) -> CInt -> IO ()

instance QqsetWidth (QSize a) ((Int)) where
 qsetWidth x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSize_setWidth cobj_x0 (toCInt x1)

foreign import ccall "qtc_QSize_setWidth" qtc_QSize_setWidth :: Ptr (TQSize a) -> CInt -> IO ()

instance Qqtranspose (QSize a) (()) where
 qtranspose x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSize_transpose cobj_x0

foreign import ccall "qtc_QSize_transpose" qtc_QSize_transpose :: Ptr (TQSize a) -> IO ()

instance Qqwidth (QSize a) (()) (IO (Int)) where
 qwidth x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSize_width cobj_x0

foreign import ccall "qtc_QSize_width" qtc_QSize_width :: Ptr (TQSize a) -> IO CInt

qSize_delete :: QSize a -> IO ()
qSize_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSize_delete cobj_x0

foreign import ccall "qtc_QSize_delete" qtc_QSize_delete :: Ptr (TQSize a) -> IO ()

