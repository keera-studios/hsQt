{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QPoint.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:31
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Core.QPoint (
  QqqPoint(..), QqPoint(..)
  ,QqqPoint_nf(..), QqPoint_nf(..)
  ,qmanhattanLength
  ,qPoint_delete
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

class QqqPoint x1 where
  qqPoint :: x1 -> IO (QPoint ())

class QqPoint x1 where
  qPoint :: x1 -> IO (QPoint ())

instance QqPoint (()) where
 qPoint ()
  = withQPointResult $
    qtc_QPoint

foreign import ccall "qtc_QPoint" qtc_QPoint :: IO (Ptr (TQPoint ()))

instance QqqPoint ((QPoint t1)) where
 qqPoint (x1)
  = withQPointResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPoint1 cobj_x1

foreign import ccall "qtc_QPoint1" qtc_QPoint1 :: Ptr (TQPoint t1) -> IO (Ptr (TQPoint ()))

instance QqPoint ((Point)) where
 qPoint (x1)
  = withQPointResult $
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QPoint2 cpoint_x1_x cpoint_x1_y 

foreign import ccall "qtc_QPoint2" qtc_QPoint2 :: CInt -> CInt -> IO (Ptr (TQPoint ()))

instance QqPoint ((Int, Int)) where
 qPoint (x1, x2)
  = withQPointResult $
    qtc_QPoint3 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QPoint3" qtc_QPoint3 :: CInt -> CInt -> IO (Ptr (TQPoint ()))

class QqqPoint_nf x1 where
  qqPoint_nf :: x1 -> IO (QPoint ())

class QqPoint_nf x1 where
  qPoint_nf :: x1 -> IO (QPoint ())

instance QqPoint_nf (()) where
 qPoint_nf ()
  = withObjectRefResult $
    qtc_QPoint

instance QqqPoint_nf ((QPoint t1)) where
 qqPoint_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPoint1 cobj_x1

instance QqPoint_nf ((Point)) where
 qPoint_nf (x1)
  = withObjectRefResult $
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QPoint2 cpoint_x1_x cpoint_x1_y 

instance QqPoint_nf ((Int, Int)) where
 qPoint_nf (x1, x2)
  = withObjectRefResult $
    qtc_QPoint3 (toCInt x1) (toCInt x2)

instance QqisNull (QPoint a) (()) where
 qisNull x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPoint_isNull cobj_x0

foreign import ccall "qtc_QPoint_isNull" qtc_QPoint_isNull :: Ptr (TQPoint a) -> IO CBool

qmanhattanLength :: QPoint a -> (()) -> IO (Int)
qmanhattanLength x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPoint_manhattanLength cobj_x0

foreign import ccall "qtc_QPoint_manhattanLength" qtc_QPoint_manhattanLength :: Ptr (TQPoint a) -> IO CInt

instance QqsetX (QPoint a) ((Int)) where
 qsetX x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPoint_setX cobj_x0 (toCInt x1)

foreign import ccall "qtc_QPoint_setX" qtc_QPoint_setX :: Ptr (TQPoint a) -> CInt -> IO ()

instance QqsetY (QPoint a) ((Int)) where
 qsetY x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPoint_setY cobj_x0 (toCInt x1)

foreign import ccall "qtc_QPoint_setY" qtc_QPoint_setY :: Ptr (TQPoint a) -> CInt -> IO ()

instance Qqx (QPoint a) (()) (IO (Int)) where
 qx x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPoint_x cobj_x0

foreign import ccall "qtc_QPoint_x" qtc_QPoint_x :: Ptr (TQPoint a) -> IO CInt

instance Qqy (QPoint a) (()) (IO (Int)) where
 qy x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPoint_y cobj_x0

foreign import ccall "qtc_QPoint_y" qtc_QPoint_y :: Ptr (TQPoint a) -> IO CInt

qPoint_delete :: QPoint a -> IO ()
qPoint_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPoint_delete cobj_x0

foreign import ccall "qtc_QPoint_delete" qtc_QPoint_delete :: Ptr (TQPoint a) -> IO ()

