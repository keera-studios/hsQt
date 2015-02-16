{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QSizeF.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:32
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Core.QSizeF (
  QqqSizeF(..), QqSizeF(..)
  ,QqqSizeF_nf(..), QqSizeF_nf(..)
  ,qqtoSize, qtoSize
  ,qSizeF_delete
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

class QqqSizeF x1 where
  qqSizeF :: x1 -> IO (QSizeF ())

class QqSizeF x1 where
  qSizeF :: x1 -> IO (QSizeF ())

instance QqSizeF (()) where
 qSizeF ()
  = withQSizeFResult $
    qtc_QSizeF

foreign import ccall "qtc_QSizeF" qtc_QSizeF :: IO (Ptr (TQSizeF ()))

instance QqqSizeF ((QSize t1)) where
 qqSizeF (x1)
  = withQSizeFResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSizeF1 cobj_x1

foreign import ccall "qtc_QSizeF1" qtc_QSizeF1 :: Ptr (TQSize t1) -> IO (Ptr (TQSizeF ()))

instance QqSizeF ((Size)) where
 qSizeF (x1)
  = withQSizeFResult $
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QSizeF2 csize_x1_w csize_x1_h 

foreign import ccall "qtc_QSizeF2" qtc_QSizeF2 :: CInt -> CInt -> IO (Ptr (TQSizeF ()))

instance QqqSizeF ((QSizeF t1)) where
 qqSizeF (x1)
  = withQSizeFResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSizeF3 cobj_x1

foreign import ccall "qtc_QSizeF3" qtc_QSizeF3 :: Ptr (TQSizeF t1) -> IO (Ptr (TQSizeF ()))

instance QqSizeF ((SizeF)) where
 qSizeF (x1)
  = withQSizeFResult $
    withCSizeF x1 $ \csizef_x1_w csizef_x1_h -> 
    qtc_QSizeF4 csizef_x1_w csizef_x1_h 

foreign import ccall "qtc_QSizeF4" qtc_QSizeF4 :: CDouble -> CDouble -> IO (Ptr (TQSizeF ()))

instance QqSizeF ((Double, Double)) where
 qSizeF (x1, x2)
  = withQSizeFResult $
    qtc_QSizeF5 (toCDouble x1) (toCDouble x2)

foreign import ccall "qtc_QSizeF5" qtc_QSizeF5 :: CDouble -> CDouble -> IO (Ptr (TQSizeF ()))

class QqqSizeF_nf x1 where
  qqSizeF_nf :: x1 -> IO (QSizeF ())

class QqSizeF_nf x1 where
  qSizeF_nf :: x1 -> IO (QSizeF ())

instance QqSizeF_nf (()) where
 qSizeF_nf ()
  = withObjectRefResult $
    qtc_QSizeF

instance QqqSizeF_nf ((QSize t1)) where
 qqSizeF_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSizeF1 cobj_x1

instance QqSizeF_nf ((Size)) where
 qSizeF_nf (x1)
  = withObjectRefResult $
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QSizeF2 csize_x1_w csize_x1_h 

instance QqqSizeF_nf ((QSizeF t1)) where
 qqSizeF_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSizeF3 cobj_x1

instance QqSizeF_nf ((SizeF)) where
 qSizeF_nf (x1)
  = withObjectRefResult $
    withCSizeF x1 $ \csizef_x1_w csizef_x1_h -> 
    qtc_QSizeF4 csizef_x1_w csizef_x1_h 

instance QqSizeF_nf ((Double, Double)) where
 qSizeF_nf (x1, x2)
  = withObjectRefResult $
    qtc_QSizeF5 (toCDouble x1) (toCDouble x2)

instance QqqboundedTo (QSizeF a) ((QSizeF t1)) (IO (QSizeF ())) where
 qqboundedTo x0 (x1)
  = withQSizeFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSizeF_boundedTo cobj_x0 cobj_x1

foreign import ccall "qtc_QSizeF_boundedTo" qtc_QSizeF_boundedTo :: Ptr (TQSizeF a) -> Ptr (TQSizeF t1) -> IO (Ptr (TQSizeF ()))

instance QqboundedTo (QSizeF a) ((SizeF)) (IO (SizeF)) where
 qboundedTo x0 (x1)
  = withSizeFResult $ \csizef_ret_w csizef_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withCSizeF x1 $ \csizef_x1_w csizef_x1_h -> 
    qtc_QSizeF_boundedTo_qth cobj_x0 csizef_x1_w csizef_x1_h  csizef_ret_w csizef_ret_h

foreign import ccall "qtc_QSizeF_boundedTo_qth" qtc_QSizeF_boundedTo_qth :: Ptr (TQSizeF a) -> CDouble -> CDouble -> Ptr CDouble -> Ptr CDouble -> IO ()

instance QqqexpandedTo (QSizeF a) ((QSizeF t1)) (IO (QSizeF ())) where
 qqexpandedTo x0 (x1)
  = withQSizeFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSizeF_expandedTo cobj_x0 cobj_x1

foreign import ccall "qtc_QSizeF_expandedTo" qtc_QSizeF_expandedTo :: Ptr (TQSizeF a) -> Ptr (TQSizeF t1) -> IO (Ptr (TQSizeF ()))

instance QqexpandedTo (QSizeF a) ((SizeF)) (IO (SizeF)) where
 qexpandedTo x0 (x1)
  = withSizeFResult $ \csizef_ret_w csizef_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withCSizeF x1 $ \csizef_x1_w csizef_x1_h -> 
    qtc_QSizeF_expandedTo_qth cobj_x0 csizef_x1_w csizef_x1_h  csizef_ret_w csizef_ret_h

foreign import ccall "qtc_QSizeF_expandedTo_qth" qtc_QSizeF_expandedTo_qth :: Ptr (TQSizeF a) -> CDouble -> CDouble -> Ptr CDouble -> Ptr CDouble -> IO ()

instance Qqheight (QSizeF a) (()) (IO (Double)) where
 qheight x0 ()
  = withDoubleResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSizeF_height cobj_x0

foreign import ccall "qtc_QSizeF_height" qtc_QSizeF_height :: Ptr (TQSizeF a) -> IO CDouble

instance QqisEmpty (QSizeF a) (()) where
 qisEmpty x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSizeF_isEmpty cobj_x0

foreign import ccall "qtc_QSizeF_isEmpty" qtc_QSizeF_isEmpty :: Ptr (TQSizeF a) -> IO CBool

instance QqisNull (QSizeF a) (()) where
 qisNull x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSizeF_isNull cobj_x0

foreign import ccall "qtc_QSizeF_isNull" qtc_QSizeF_isNull :: Ptr (TQSizeF a) -> IO CBool

instance QqisValid (QSizeF ()) (()) where
 qisValid x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSizeF_isValid cobj_x0

foreign import ccall "qtc_QSizeF_isValid" qtc_QSizeF_isValid :: Ptr (TQSizeF a) -> IO CBool

instance QqisValid (QSizeFSc a) (()) where
 qisValid x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSizeF_isValid cobj_x0

instance Qqscale (QSizeF a) ((Double, Double, AspectRatioMode)) where
 qscale x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSizeF_scale1 cobj_x0 (toCDouble x1) (toCDouble x2) (toCLong $ qEnum_toInt x3)

foreign import ccall "qtc_QSizeF_scale1" qtc_QSizeF_scale1 :: Ptr (TQSizeF a) -> CDouble -> CDouble -> CLong -> IO ()

instance Qqqscale (QSizeF a) ((QSizeF t1, AspectRatioMode)) where
 qqscale x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSizeF_scale cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QSizeF_scale" qtc_QSizeF_scale :: Ptr (TQSizeF a) -> Ptr (TQSizeF t1) -> CLong -> IO ()

instance Qqscale (QSizeF a) ((SizeF, AspectRatioMode)) where
 qscale x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCSizeF x1 $ \csizef_x1_w csizef_x1_h -> 
    qtc_QSizeF_scale_qth cobj_x0 csizef_x1_w csizef_x1_h  (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QSizeF_scale_qth" qtc_QSizeF_scale_qth :: Ptr (TQSizeF a) -> CDouble -> CDouble -> CLong -> IO ()

instance QqsetHeight (QSizeF a) ((Double)) where
 qsetHeight x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSizeF_setHeight cobj_x0 (toCDouble x1)

foreign import ccall "qtc_QSizeF_setHeight" qtc_QSizeF_setHeight :: Ptr (TQSizeF a) -> CDouble -> IO ()

instance QqsetWidth (QSizeF a) ((Double)) where
 qsetWidth x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSizeF_setWidth cobj_x0 (toCDouble x1)

foreign import ccall "qtc_QSizeF_setWidth" qtc_QSizeF_setWidth :: Ptr (TQSizeF a) -> CDouble -> IO ()

qqtoSize :: QSizeF a -> (()) -> IO (QSize ())
qqtoSize x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSizeF_toSize cobj_x0

foreign import ccall "qtc_QSizeF_toSize" qtc_QSizeF_toSize :: Ptr (TQSizeF a) -> IO (Ptr (TQSize ()))

qtoSize :: QSizeF a -> (()) -> IO (Size)
qtoSize x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSizeF_toSize_qth cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QSizeF_toSize_qth" qtc_QSizeF_toSize_qth :: Ptr (TQSizeF a) -> Ptr CInt -> Ptr CInt -> IO ()

instance Qqtranspose (QSizeF a) (()) where
 qtranspose x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSizeF_transpose cobj_x0

foreign import ccall "qtc_QSizeF_transpose" qtc_QSizeF_transpose :: Ptr (TQSizeF a) -> IO ()

instance Qqwidth (QSizeF a) (()) (IO (Double)) where
 qwidth x0 ()
  = withDoubleResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSizeF_width cobj_x0

foreign import ccall "qtc_QSizeF_width" qtc_QSizeF_width :: Ptr (TQSizeF a) -> IO CDouble

qSizeF_delete :: QSizeF a -> IO ()
qSizeF_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSizeF_delete cobj_x0

foreign import ccall "qtc_QSizeF_delete" qtc_QSizeF_delete :: Ptr (TQSizeF a) -> IO ()

