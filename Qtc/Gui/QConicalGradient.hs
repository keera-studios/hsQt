{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QConicalGradient.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:30
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QConicalGradient (
  QqqConicalGradient(..), QqConicalGradient(..)
  ,QqqConicalGradient_nf(..), QqConicalGradient_nf(..)
  ,setAngle
  ,qConicalGradient_delete
  )
  where

import Foreign.C.Types
import Qth.ClassTypes.Core
import Qtc.Enums.Base

import Qtc.Classes.Base
import Qtc.Classes.Qccs
import Qtc.Classes.Core
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core
import Qtc.Classes.Gui
import Qtc.ClassTypes.Gui

class QqqConicalGradient x1 where
  qqConicalGradient :: x1 -> IO (QConicalGradient ())

class QqConicalGradient x1 where
  qConicalGradient :: x1 -> IO (QConicalGradient ())

instance QqConicalGradient (()) where
 qConicalGradient ()
  = withQConicalGradientResult $
    qtc_QConicalGradient

foreign import ccall "qtc_QConicalGradient" qtc_QConicalGradient :: IO (Ptr (TQConicalGradient ()))

instance QqConicalGradient ((QConicalGradient t1)) where
 qConicalGradient (x1)
  = withQConicalGradientResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QConicalGradient1 cobj_x1

foreign import ccall "qtc_QConicalGradient1" qtc_QConicalGradient1 :: Ptr (TQConicalGradient t1) -> IO (Ptr (TQConicalGradient ()))

instance QqqConicalGradient ((QPointF t1, Double)) where
 qqConicalGradient (x1, x2)
  = withQConicalGradientResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QConicalGradient2 cobj_x1 (toCDouble x2)

foreign import ccall "qtc_QConicalGradient2" qtc_QConicalGradient2 :: Ptr (TQPointF t1) -> CDouble -> IO (Ptr (TQConicalGradient ()))

instance QqConicalGradient ((PointF, Double)) where
 qConicalGradient (x1, x2)
  = withQConicalGradientResult $
    withCPointF x1 $ \cpointf_x1_x cpointf_x1_y -> 
    qtc_QConicalGradient3 cpointf_x1_x cpointf_x1_y  (toCDouble x2)

foreign import ccall "qtc_QConicalGradient3" qtc_QConicalGradient3 :: CDouble -> CDouble -> CDouble -> IO (Ptr (TQConicalGradient ()))

instance QqConicalGradient ((Double, Double, Double)) where
 qConicalGradient (x1, x2, x3)
  = withQConicalGradientResult $
    qtc_QConicalGradient4 (toCDouble x1) (toCDouble x2) (toCDouble x3)

foreign import ccall "qtc_QConicalGradient4" qtc_QConicalGradient4 :: CDouble -> CDouble -> CDouble -> IO (Ptr (TQConicalGradient ()))

class QqqConicalGradient_nf x1 where
  qqConicalGradient_nf :: x1 -> IO (QConicalGradient ())

class QqConicalGradient_nf x1 where
  qConicalGradient_nf :: x1 -> IO (QConicalGradient ())

instance QqConicalGradient_nf (()) where
 qConicalGradient_nf ()
  = withObjectRefResult $
    qtc_QConicalGradient

instance QqConicalGradient_nf ((QConicalGradient t1)) where
 qConicalGradient_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QConicalGradient1 cobj_x1

instance QqqConicalGradient_nf ((QPointF t1, Double)) where
 qqConicalGradient_nf (x1, x2)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QConicalGradient2 cobj_x1 (toCDouble x2)

instance QqConicalGradient_nf ((PointF, Double)) where
 qConicalGradient_nf (x1, x2)
  = withObjectRefResult $
    withCPointF x1 $ \cpointf_x1_x cpointf_x1_y -> 
    qtc_QConicalGradient3 cpointf_x1_x cpointf_x1_y  (toCDouble x2)

instance QqConicalGradient_nf ((Double, Double, Double)) where
 qConicalGradient_nf (x1, x2, x3)
  = withObjectRefResult $
    qtc_QConicalGradient4 (toCDouble x1) (toCDouble x2) (toCDouble x3)

instance Qqangle (QConicalGradient a) (()) where
 qangle x0 ()
  = withDoubleResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QConicalGradient_angle cobj_x0

foreign import ccall "qtc_QConicalGradient_angle" qtc_QConicalGradient_angle :: Ptr (TQConicalGradient a) -> IO CDouble

instance Qqcenter (QConicalGradient a) (()) (IO (PointF)) where
 qcenter x0 ()
  = withPointFResult $ \cpointf_ret_x cpointf_ret_y ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QConicalGradient_center_qth cobj_x0 cpointf_ret_x cpointf_ret_y

foreign import ccall "qtc_QConicalGradient_center_qth" qtc_QConicalGradient_center_qth :: Ptr (TQConicalGradient a) -> Ptr CDouble -> Ptr CDouble -> IO ()

instance Qqqcenter (QConicalGradient a) (()) (IO (QPointF ())) where
 qqcenter x0 ()
  = withQPointFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QConicalGradient_center cobj_x0

foreign import ccall "qtc_QConicalGradient_center" qtc_QConicalGradient_center :: Ptr (TQConicalGradient a) -> IO (Ptr (TQPointF ()))

setAngle :: QConicalGradient a -> ((Double)) -> IO ()
setAngle x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QConicalGradient_setAngle cobj_x0 (toCDouble x1)

foreign import ccall "qtc_QConicalGradient_setAngle" qtc_QConicalGradient_setAngle :: Ptr (TQConicalGradient a) -> CDouble -> IO ()

instance QsetCenter (QConicalGradient a) ((Double, Double)) where
 setCenter x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QConicalGradient_setCenter1 cobj_x0 (toCDouble x1) (toCDouble x2)

foreign import ccall "qtc_QConicalGradient_setCenter1" qtc_QConicalGradient_setCenter1 :: Ptr (TQConicalGradient a) -> CDouble -> CDouble -> IO ()

instance QsetCenter (QConicalGradient a) ((PointF)) where
 setCenter x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPointF x1 $ \cpointf_x1_x cpointf_x1_y -> 
    qtc_QConicalGradient_setCenter_qth cobj_x0 cpointf_x1_x cpointf_x1_y 

foreign import ccall "qtc_QConicalGradient_setCenter_qth" qtc_QConicalGradient_setCenter_qth :: Ptr (TQConicalGradient a) -> CDouble -> CDouble -> IO ()

instance QqsetCenter (QConicalGradient a) ((QPointF t1)) where
 qsetCenter x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QConicalGradient_setCenter cobj_x0 cobj_x1

foreign import ccall "qtc_QConicalGradient_setCenter" qtc_QConicalGradient_setCenter :: Ptr (TQConicalGradient a) -> Ptr (TQPointF t1) -> IO ()

qConicalGradient_delete :: QConicalGradient a -> IO ()
qConicalGradient_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QConicalGradient_delete cobj_x0

foreign import ccall "qtc_QConicalGradient_delete" qtc_QConicalGradient_delete :: Ptr (TQConicalGradient a) -> IO ()

