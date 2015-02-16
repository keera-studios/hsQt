{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QStyleOptionGraphicsItem.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:20
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QStyleOptionGraphicsItem (
  QqStyleOptionGraphicsItem(..)
  ,QqStyleOptionGraphicsItem_nf(..)
  ,qexposedRect, exposedRect
  ,levelOfDetail
  ,qsetExposedRect, setExposedRect
  ,setLevelOfDetail
  ,qStyleOptionGraphicsItem_delete
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

class QqStyleOptionGraphicsItem x1 where
  qStyleOptionGraphicsItem :: x1 -> IO (QStyleOptionGraphicsItem ())

instance QqStyleOptionGraphicsItem (()) where
 qStyleOptionGraphicsItem ()
  = withQStyleOptionGraphicsItemResult $
    qtc_QStyleOptionGraphicsItem

foreign import ccall "qtc_QStyleOptionGraphicsItem" qtc_QStyleOptionGraphicsItem :: IO (Ptr (TQStyleOptionGraphicsItem ()))

instance QqStyleOptionGraphicsItem ((QStyleOptionGraphicsItem t1)) where
 qStyleOptionGraphicsItem (x1)
  = withQStyleOptionGraphicsItemResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStyleOptionGraphicsItem1 cobj_x1

foreign import ccall "qtc_QStyleOptionGraphicsItem1" qtc_QStyleOptionGraphicsItem1 :: Ptr (TQStyleOptionGraphicsItem t1) -> IO (Ptr (TQStyleOptionGraphicsItem ()))

class QqStyleOptionGraphicsItem_nf x1 where
  qStyleOptionGraphicsItem_nf :: x1 -> IO (QStyleOptionGraphicsItem ())

instance QqStyleOptionGraphicsItem_nf (()) where
 qStyleOptionGraphicsItem_nf ()
  = withObjectRefResult $
    qtc_QStyleOptionGraphicsItem

instance QqStyleOptionGraphicsItem_nf ((QStyleOptionGraphicsItem t1)) where
 qStyleOptionGraphicsItem_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStyleOptionGraphicsItem1 cobj_x1

qexposedRect :: QStyleOptionGraphicsItem a -> (()) -> IO (QRectF ())
qexposedRect x0 ()
  = withQRectFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionGraphicsItem_exposedRect cobj_x0

foreign import ccall "qtc_QStyleOptionGraphicsItem_exposedRect" qtc_QStyleOptionGraphicsItem_exposedRect :: Ptr (TQStyleOptionGraphicsItem a) -> IO (Ptr (TQRectF ()))

exposedRect :: QStyleOptionGraphicsItem a -> (()) -> IO (RectF)
exposedRect x0 ()
  = withRectFResult $ \crectf_ret_x crectf_ret_y crectf_ret_w crectf_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionGraphicsItem_exposedRect_qth cobj_x0 crectf_ret_x crectf_ret_y crectf_ret_w crectf_ret_h

foreign import ccall "qtc_QStyleOptionGraphicsItem_exposedRect_qth" qtc_QStyleOptionGraphicsItem_exposedRect_qth :: Ptr (TQStyleOptionGraphicsItem a) -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> IO ()

levelOfDetail :: QStyleOptionGraphicsItem a -> (()) -> IO (Double)
levelOfDetail x0 ()
  = withDoubleResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionGraphicsItem_levelOfDetail cobj_x0

foreign import ccall "qtc_QStyleOptionGraphicsItem_levelOfDetail" qtc_QStyleOptionGraphicsItem_levelOfDetail :: Ptr (TQStyleOptionGraphicsItem a) -> IO CDouble

instance Qmatrix (QStyleOptionGraphicsItem a) (()) where
 matrix x0 ()
  = withQMatrixResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionGraphicsItem_matrix cobj_x0

foreign import ccall "qtc_QStyleOptionGraphicsItem_matrix" qtc_QStyleOptionGraphicsItem_matrix :: Ptr (TQStyleOptionGraphicsItem a) -> IO (Ptr (TQMatrix ()))

qsetExposedRect :: QStyleOptionGraphicsItem a -> ((QRectF t1)) -> IO ()
qsetExposedRect x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStyleOptionGraphicsItem_setExposedRect cobj_x0 cobj_x1

foreign import ccall "qtc_QStyleOptionGraphicsItem_setExposedRect" qtc_QStyleOptionGraphicsItem_setExposedRect :: Ptr (TQStyleOptionGraphicsItem a) -> Ptr (TQRectF t1) -> IO ()

setExposedRect :: QStyleOptionGraphicsItem a -> ((RectF)) -> IO ()
setExposedRect x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRectF x1 $ \crectf_x1_x crectf_x1_y  crectf_x1_w crectf_x1_h -> 
    qtc_QStyleOptionGraphicsItem_setExposedRect_qth cobj_x0 crectf_x1_x crectf_x1_y crectf_x1_w crectf_x1_h 

foreign import ccall "qtc_QStyleOptionGraphicsItem_setExposedRect_qth" qtc_QStyleOptionGraphicsItem_setExposedRect_qth :: Ptr (TQStyleOptionGraphicsItem a) -> CDouble -> CDouble -> CDouble -> CDouble -> IO ()

setLevelOfDetail :: QStyleOptionGraphicsItem a -> ((Double)) -> IO ()
setLevelOfDetail x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionGraphicsItem_setLevelOfDetail cobj_x0 (toCDouble x1)

foreign import ccall "qtc_QStyleOptionGraphicsItem_setLevelOfDetail" qtc_QStyleOptionGraphicsItem_setLevelOfDetail :: Ptr (TQStyleOptionGraphicsItem a) -> CDouble -> IO ()

instance QsetMatrix (QStyleOptionGraphicsItem a) ((QMatrix t1)) where
 setMatrix x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStyleOptionGraphicsItem_setMatrix cobj_x0 cobj_x1

foreign import ccall "qtc_QStyleOptionGraphicsItem_setMatrix" qtc_QStyleOptionGraphicsItem_setMatrix :: Ptr (TQStyleOptionGraphicsItem a) -> Ptr (TQMatrix t1) -> IO ()

qStyleOptionGraphicsItem_delete :: QStyleOptionGraphicsItem a -> IO ()
qStyleOptionGraphicsItem_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionGraphicsItem_delete cobj_x0

foreign import ccall "qtc_QStyleOptionGraphicsItem_delete" qtc_QStyleOptionGraphicsItem_delete :: Ptr (TQStyleOptionGraphicsItem a) -> IO ()

