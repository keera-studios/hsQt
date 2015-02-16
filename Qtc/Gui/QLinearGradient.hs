{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QLinearGradient.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:17
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QLinearGradient (
  QqqLinearGradient(..), QqLinearGradient(..)
  ,QqqLinearGradient_nf(..), QqLinearGradient_nf(..)
  ,finalStop, qfinalStop
  ,QsetFinalStop(..), qsetFinalStop
  ,QsetStart(..), qsetStart
  ,qstart
  ,qLinearGradient_delete
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

class QqqLinearGradient x1 where
  qqLinearGradient :: x1 -> IO (QLinearGradient ())

class QqLinearGradient x1 where
  qLinearGradient :: x1 -> IO (QLinearGradient ())

instance QqLinearGradient (()) where
 qLinearGradient ()
  = withQLinearGradientResult $
    qtc_QLinearGradient

foreign import ccall "qtc_QLinearGradient" qtc_QLinearGradient :: IO (Ptr (TQLinearGradient ()))

instance QqLinearGradient ((QLinearGradient t1)) where
 qLinearGradient (x1)
  = withQLinearGradientResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLinearGradient1 cobj_x1

foreign import ccall "qtc_QLinearGradient1" qtc_QLinearGradient1 :: Ptr (TQLinearGradient t1) -> IO (Ptr (TQLinearGradient ()))

instance QqqLinearGradient ((QPointF t1, QPointF t2)) where
 qqLinearGradient (x1, x2)
  = withQLinearGradientResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QLinearGradient2 cobj_x1 cobj_x2

foreign import ccall "qtc_QLinearGradient2" qtc_QLinearGradient2 :: Ptr (TQPointF t1) -> Ptr (TQPointF t2) -> IO (Ptr (TQLinearGradient ()))

instance QqLinearGradient ((PointF, PointF)) where
 qLinearGradient (x1, x2)
  = withQLinearGradientResult $
    withCPointF x1 $ \cpointf_x1_x cpointf_x1_y -> 
    withCPointF x2 $ \cpointf_x2_x cpointf_x2_y -> 
    qtc_QLinearGradient3 cpointf_x1_x cpointf_x1_y  cpointf_x2_x cpointf_x2_y 

foreign import ccall "qtc_QLinearGradient3" qtc_QLinearGradient3 :: CDouble -> CDouble -> CDouble -> CDouble -> IO (Ptr (TQLinearGradient ()))

instance QqLinearGradient ((Double, Double, Double, Double)) where
 qLinearGradient (x1, x2, x3, x4)
  = withQLinearGradientResult $
    qtc_QLinearGradient4 (toCDouble x1) (toCDouble x2) (toCDouble x3) (toCDouble x4)

foreign import ccall "qtc_QLinearGradient4" qtc_QLinearGradient4 :: CDouble -> CDouble -> CDouble -> CDouble -> IO (Ptr (TQLinearGradient ()))

class QqqLinearGradient_nf x1 where
  qqLinearGradient_nf :: x1 -> IO (QLinearGradient ())

class QqLinearGradient_nf x1 where
  qLinearGradient_nf :: x1 -> IO (QLinearGradient ())

instance QqLinearGradient_nf (()) where
 qLinearGradient_nf ()
  = withObjectRefResult $
    qtc_QLinearGradient

instance QqLinearGradient_nf ((QLinearGradient t1)) where
 qLinearGradient_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLinearGradient1 cobj_x1

instance QqqLinearGradient_nf ((QPointF t1, QPointF t2)) where
 qqLinearGradient_nf (x1, x2)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QLinearGradient2 cobj_x1 cobj_x2

instance QqLinearGradient_nf ((PointF, PointF)) where
 qLinearGradient_nf (x1, x2)
  = withObjectRefResult $
    withCPointF x1 $ \cpointf_x1_x cpointf_x1_y -> 
    withCPointF x2 $ \cpointf_x2_x cpointf_x2_y -> 
    qtc_QLinearGradient3 cpointf_x1_x cpointf_x1_y  cpointf_x2_x cpointf_x2_y 

instance QqLinearGradient_nf ((Double, Double, Double, Double)) where
 qLinearGradient_nf (x1, x2, x3, x4)
  = withObjectRefResult $
    qtc_QLinearGradient4 (toCDouble x1) (toCDouble x2) (toCDouble x3) (toCDouble x4)

finalStop :: QLinearGradient a -> (()) -> IO (PointF)
finalStop x0 ()
  = withPointFResult $ \cpointf_ret_x cpointf_ret_y ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLinearGradient_finalStop_qth cobj_x0 cpointf_ret_x cpointf_ret_y

foreign import ccall "qtc_QLinearGradient_finalStop_qth" qtc_QLinearGradient_finalStop_qth :: Ptr (TQLinearGradient a) -> Ptr CDouble -> Ptr CDouble -> IO ()

qfinalStop :: QLinearGradient a -> (()) -> IO (QPointF ())
qfinalStop x0 ()
  = withQPointFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLinearGradient_finalStop cobj_x0

foreign import ccall "qtc_QLinearGradient_finalStop" qtc_QLinearGradient_finalStop :: Ptr (TQLinearGradient a) -> IO (Ptr (TQPointF ()))

class QsetFinalStop x1 where
 setFinalStop :: QLinearGradient a -> x1 -> IO ()

instance QsetFinalStop ((Double, Double)) where
 setFinalStop x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLinearGradient_setFinalStop1 cobj_x0 (toCDouble x1) (toCDouble x2)

foreign import ccall "qtc_QLinearGradient_setFinalStop1" qtc_QLinearGradient_setFinalStop1 :: Ptr (TQLinearGradient a) -> CDouble -> CDouble -> IO ()

instance QsetFinalStop ((PointF)) where
 setFinalStop x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPointF x1 $ \cpointf_x1_x cpointf_x1_y -> 
    qtc_QLinearGradient_setFinalStop_qth cobj_x0 cpointf_x1_x cpointf_x1_y 

foreign import ccall "qtc_QLinearGradient_setFinalStop_qth" qtc_QLinearGradient_setFinalStop_qth :: Ptr (TQLinearGradient a) -> CDouble -> CDouble -> IO ()

qsetFinalStop :: QLinearGradient a -> ((QPointF t1)) -> IO ()
qsetFinalStop x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLinearGradient_setFinalStop cobj_x0 cobj_x1

foreign import ccall "qtc_QLinearGradient_setFinalStop" qtc_QLinearGradient_setFinalStop :: Ptr (TQLinearGradient a) -> Ptr (TQPointF t1) -> IO ()

class QsetStart x1 where
 setStart :: QLinearGradient a -> x1 -> IO ()

instance QsetStart ((Double, Double)) where
 setStart x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLinearGradient_setStart1 cobj_x0 (toCDouble x1) (toCDouble x2)

foreign import ccall "qtc_QLinearGradient_setStart1" qtc_QLinearGradient_setStart1 :: Ptr (TQLinearGradient a) -> CDouble -> CDouble -> IO ()

instance QsetStart ((PointF)) where
 setStart x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPointF x1 $ \cpointf_x1_x cpointf_x1_y -> 
    qtc_QLinearGradient_setStart_qth cobj_x0 cpointf_x1_x cpointf_x1_y 

foreign import ccall "qtc_QLinearGradient_setStart_qth" qtc_QLinearGradient_setStart_qth :: Ptr (TQLinearGradient a) -> CDouble -> CDouble -> IO ()

qsetStart :: QLinearGradient a -> ((QPointF t1)) -> IO ()
qsetStart x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLinearGradient_setStart cobj_x0 cobj_x1

foreign import ccall "qtc_QLinearGradient_setStart" qtc_QLinearGradient_setStart :: Ptr (TQLinearGradient a) -> Ptr (TQPointF t1) -> IO ()

instance Qstart (QLinearGradient a) (()) (IO (PointF)) where
 start x0 ()
  = withPointFResult $ \cpointf_ret_x cpointf_ret_y ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLinearGradient_start_qth cobj_x0 cpointf_ret_x cpointf_ret_y

foreign import ccall "qtc_QLinearGradient_start_qth" qtc_QLinearGradient_start_qth :: Ptr (TQLinearGradient a) -> Ptr CDouble -> Ptr CDouble -> IO ()

qstart :: QLinearGradient a -> (()) -> IO (QPointF ())
qstart x0 ()
  = withQPointFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLinearGradient_start cobj_x0

foreign import ccall "qtc_QLinearGradient_start" qtc_QLinearGradient_start :: Ptr (TQLinearGradient a) -> IO (Ptr (TQPointF ()))

qLinearGradient_delete :: QLinearGradient a -> IO ()
qLinearGradient_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLinearGradient_delete cobj_x0

foreign import ccall "qtc_QLinearGradient_delete" qtc_QLinearGradient_delete :: Ptr (TQLinearGradient a) -> IO ()

