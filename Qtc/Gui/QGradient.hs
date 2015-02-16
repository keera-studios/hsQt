{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QGradient.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:16
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QGradient (
  QqGradient(..)
  ,QqGradient_nf(..)
  ,coordinateMode
  ,setColorAt
  ,setCoordinateMode
  ,setSpread
  ,spread
  ,qGradient_delete
  )
  where

import Foreign.C.Types
import Qth.ClassTypes.Core
import Qtc.Enums.Base
import Qtc.Enums.Gui.QGradient

import Qtc.Classes.Base
import Qtc.Classes.Qccs
import Qtc.Classes.Core
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core
import Qtc.Classes.Gui
import Qtc.ClassTypes.Gui

class QqGradient x1 where
  qGradient :: x1 -> IO (QGradient ())

instance QqGradient (()) where
 qGradient ()
  = withQGradientResult $
    qtc_QGradient

foreign import ccall "qtc_QGradient" qtc_QGradient :: IO (Ptr (TQGradient ()))

instance QqGradient ((QGradient t1)) where
 qGradient (x1)
  = withQGradientResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGradient1 cobj_x1

foreign import ccall "qtc_QGradient1" qtc_QGradient1 :: Ptr (TQGradient t1) -> IO (Ptr (TQGradient ()))

class QqGradient_nf x1 where
  qGradient_nf :: x1 -> IO (QGradient ())

instance QqGradient_nf (()) where
 qGradient_nf ()
  = withObjectRefResult $
    qtc_QGradient

instance QqGradient_nf ((QGradient t1)) where
 qGradient_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGradient1 cobj_x1

coordinateMode :: QGradient a -> (()) -> IO (CoordinateMode)
coordinateMode x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGradient_coordinateMode cobj_x0

foreign import ccall "qtc_QGradient_coordinateMode" qtc_QGradient_coordinateMode :: Ptr (TQGradient a) -> IO CLong

setColorAt :: QGradient a -> ((Double, QColor t2)) -> IO ()
setColorAt x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGradient_setColorAt cobj_x0 (toCDouble x1) cobj_x2

foreign import ccall "qtc_QGradient_setColorAt" qtc_QGradient_setColorAt :: Ptr (TQGradient a) -> CDouble -> Ptr (TQColor t2) -> IO ()

setCoordinateMode :: QGradient a -> ((CoordinateMode)) -> IO ()
setCoordinateMode x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGradient_setCoordinateMode cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QGradient_setCoordinateMode" qtc_QGradient_setCoordinateMode :: Ptr (TQGradient a) -> CLong -> IO ()

setSpread :: QGradient a -> ((Spread)) -> IO ()
setSpread x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGradient_setSpread cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QGradient_setSpread" qtc_QGradient_setSpread :: Ptr (TQGradient a) -> CLong -> IO ()

spread :: QGradient a -> (()) -> IO (Spread)
spread x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGradient_spread cobj_x0

foreign import ccall "qtc_QGradient_spread" qtc_QGradient_spread :: Ptr (TQGradient a) -> IO CLong

instance Qqtype (QGradient a) (()) (IO (QGradientType)) where
 qtype x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGradient_type cobj_x0

foreign import ccall "qtc_QGradient_type" qtc_QGradient_type :: Ptr (TQGradient a) -> IO CLong

qGradient_delete :: QGradient a -> IO ()
qGradient_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGradient_delete cobj_x0

foreign import ccall "qtc_QGradient_delete" qtc_QGradient_delete :: Ptr (TQGradient a) -> IO ()

