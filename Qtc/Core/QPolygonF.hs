{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QPolygonF.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:32
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Core.QPolygonF (
  QqqPolygonF(..), QqPolygonF(..)
  ,QqqPolygonF_nf(..), QqPolygonF_nf(..)
  ,qisClosed
  ,qtoPolygon
  ,qPolygonF_delete
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

class QqqPolygonF x1 where
  qqPolygonF :: x1 -> IO (QPolygonF ())

class QqPolygonF x1 where
  qPolygonF :: x1 -> IO (QPolygonF ())

instance QqPolygonF (()) where
 qPolygonF ()
  = withQPolygonFResult $
    qtc_QPolygonF

foreign import ccall "qtc_QPolygonF" qtc_QPolygonF :: IO (Ptr (TQPolygonF ()))

instance QqPolygonF ((QPolygon t1)) where
 qPolygonF (x1)
  = withQPolygonFResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPolygonF1 cobj_x1

foreign import ccall "qtc_QPolygonF1" qtc_QPolygonF1 :: Ptr (TQPolygon t1) -> IO (Ptr (TQPolygonF ()))

instance QqPolygonF ((QPolygonF t1)) where
 qPolygonF (x1)
  = withQPolygonFResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPolygonF2 cobj_x1

foreign import ccall "qtc_QPolygonF2" qtc_QPolygonF2 :: Ptr (TQPolygonF t1) -> IO (Ptr (TQPolygonF ()))

instance QqqPolygonF ((QRectF t1)) where
 qqPolygonF (x1)
  = withQPolygonFResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPolygonF3 cobj_x1

foreign import ccall "qtc_QPolygonF3" qtc_QPolygonF3 :: Ptr (TQRectF t1) -> IO (Ptr (TQPolygonF ()))

instance QqPolygonF ((RectF)) where
 qPolygonF (x1)
  = withQPolygonFResult $
    withCRectF x1 $ \crectf_x1_x crectf_x1_y  crectf_x1_w crectf_x1_h -> 
    qtc_QPolygonF4 crectf_x1_x crectf_x1_y crectf_x1_w crectf_x1_h 

foreign import ccall "qtc_QPolygonF4" qtc_QPolygonF4 :: CDouble -> CDouble -> CDouble -> CDouble -> IO (Ptr (TQPolygonF ()))

instance QqPolygonF ((Int)) where
 qPolygonF (x1)
  = withQPolygonFResult $
    qtc_QPolygonF5 (toCInt x1)

foreign import ccall "qtc_QPolygonF5" qtc_QPolygonF5 :: CInt -> IO (Ptr (TQPolygonF ()))

class QqqPolygonF_nf x1 where
  qqPolygonF_nf :: x1 -> IO (QPolygonF ())

class QqPolygonF_nf x1 where
  qPolygonF_nf :: x1 -> IO (QPolygonF ())

instance QqPolygonF_nf (()) where
 qPolygonF_nf ()
  = withObjectRefResult $
    qtc_QPolygonF

instance QqPolygonF_nf ((QPolygon t1)) where
 qPolygonF_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPolygonF1 cobj_x1

instance QqPolygonF_nf ((QPolygonF t1)) where
 qPolygonF_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPolygonF2 cobj_x1

instance QqqPolygonF_nf ((QRectF t1)) where
 qqPolygonF_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPolygonF3 cobj_x1

instance QqPolygonF_nf ((RectF)) where
 qPolygonF_nf (x1)
  = withObjectRefResult $
    withCRectF x1 $ \crectf_x1_x crectf_x1_y  crectf_x1_w crectf_x1_h -> 
    qtc_QPolygonF4 crectf_x1_x crectf_x1_y crectf_x1_w crectf_x1_h 

instance QqPolygonF_nf ((Int)) where
 qPolygonF_nf (x1)
  = withObjectRefResult $
    qtc_QPolygonF5 (toCInt x1)

instance QqqboundingRect (QPolygonF a) (()) (IO (QRectF ())) where
 qqboundingRect x0 ()
  = withQRectFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPolygonF_boundingRect cobj_x0

foreign import ccall "qtc_QPolygonF_boundingRect" qtc_QPolygonF_boundingRect :: Ptr (TQPolygonF a) -> IO (Ptr (TQRectF ()))

instance QqboundingRect (QPolygonF a) (()) (IO (RectF)) where
 qboundingRect x0 ()
  = withRectFResult $ \crectf_ret_x crectf_ret_y crectf_ret_w crectf_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPolygonF_boundingRect_qth cobj_x0 crectf_ret_x crectf_ret_y crectf_ret_w crectf_ret_h

foreign import ccall "qtc_QPolygonF_boundingRect_qth" qtc_QPolygonF_boundingRect_qth :: Ptr (TQPolygonF a) -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> IO ()

instance QqcontainsPoint (QPolygonF a) ((PointF, FillRule)) where
 qcontainsPoint x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCPointF x1 $ \cpointf_x1_x cpointf_x1_y -> 
    qtc_QPolygonF_containsPoint_qth cobj_x0 cpointf_x1_x cpointf_x1_y  (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QPolygonF_containsPoint_qth" qtc_QPolygonF_containsPoint_qth :: Ptr (TQPolygonF a) -> CDouble -> CDouble -> CLong -> IO CBool

instance QqqcontainsPoint (QPolygonF a) ((QPointF t1, FillRule)) where
 qqcontainsPoint x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPolygonF_containsPoint cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QPolygonF_containsPoint" qtc_QPolygonF_containsPoint :: Ptr (TQPolygonF a) -> Ptr (TQPointF t1) -> CLong -> IO CBool

instance Qqintersected (QPolygonF a) ((QPolygonF t1)) (IO (QPolygonF ())) where
 qintersected x0 (x1)
  = withQPolygonFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPolygonF_intersected cobj_x0 cobj_x1

foreign import ccall "qtc_QPolygonF_intersected" qtc_QPolygonF_intersected :: Ptr (TQPolygonF a) -> Ptr (TQPolygonF t1) -> IO (Ptr (TQPolygonF ()))

qisClosed :: QPolygonF a -> (()) -> IO (Bool)
qisClosed x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPolygonF_isClosed cobj_x0

foreign import ccall "qtc_QPolygonF_isClosed" qtc_QPolygonF_isClosed :: Ptr (TQPolygonF a) -> IO CBool

instance Qqsubtracted (QPolygonF a) ((QPolygonF t1)) (IO (QPolygonF ())) where
 qsubtracted x0 (x1)
  = withQPolygonFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPolygonF_subtracted cobj_x0 cobj_x1

foreign import ccall "qtc_QPolygonF_subtracted" qtc_QPolygonF_subtracted :: Ptr (TQPolygonF a) -> Ptr (TQPolygonF t1) -> IO (Ptr (TQPolygonF ()))

qtoPolygon :: QPolygonF a -> (()) -> IO (QPolygon ())
qtoPolygon x0 ()
  = withQPolygonResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPolygonF_toPolygon cobj_x0

foreign import ccall "qtc_QPolygonF_toPolygon" qtc_QPolygonF_toPolygon :: Ptr (TQPolygonF a) -> IO (Ptr (TQPolygon ()))

instance Qqtranslate (QPolygonF a) ((Double, Double)) (IO ()) where
 qtranslate x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPolygonF_translate1 cobj_x0 (toCDouble x1) (toCDouble x2)

foreign import ccall "qtc_QPolygonF_translate1" qtc_QPolygonF_translate1 :: Ptr (TQPolygonF a) -> CDouble -> CDouble -> IO ()

instance Qqtranslate (QPolygonF a) ((PointF)) (IO ()) where
 qtranslate x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPointF x1 $ \cpointf_x1_x cpointf_x1_y -> 
    qtc_QPolygonF_translate_qth cobj_x0 cpointf_x1_x cpointf_x1_y 

foreign import ccall "qtc_QPolygonF_translate_qth" qtc_QPolygonF_translate_qth :: Ptr (TQPolygonF a) -> CDouble -> CDouble -> IO ()

instance Qqqtranslate (QPolygonF a) ((QPointF t1)) where
 qqtranslate x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPolygonF_translate cobj_x0 cobj_x1

foreign import ccall "qtc_QPolygonF_translate" qtc_QPolygonF_translate :: Ptr (TQPolygonF a) -> Ptr (TQPointF t1) -> IO ()

instance Qqunited (QPolygonF a) ((QPolygonF t1)) (IO (QPolygonF ())) where
 qunited x0 (x1)
  = withQPolygonFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPolygonF_united cobj_x0 cobj_x1

foreign import ccall "qtc_QPolygonF_united" qtc_QPolygonF_united :: Ptr (TQPolygonF a) -> Ptr (TQPolygonF t1) -> IO (Ptr (TQPolygonF ()))

qPolygonF_delete :: QPolygonF a -> IO ()
qPolygonF_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPolygonF_delete cobj_x0

foreign import ccall "qtc_QPolygonF_delete" qtc_QPolygonF_delete :: Ptr (TQPolygonF a) -> IO ()

