{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QStyleOptionRubberBand.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:26
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QStyleOptionRubberBand (
  QqStyleOptionRubberBand(..)
  ,QqStyleOptionRubberBand_nf(..)
  ,opaque
  ,setOpaque
  ,qStyleOptionRubberBand_delete
  )
  where

import Foreign.C.Types
import Qth.ClassTypes.Core
import Qtc.Enums.Base
import Qtc.Enums.Gui.QRubberBand

import Qtc.Classes.Base
import Qtc.Classes.Qccs
import Qtc.Classes.Core
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core
import Qtc.Classes.Gui
import Qtc.ClassTypes.Gui

class QqStyleOptionRubberBand x1 where
  qStyleOptionRubberBand :: x1 -> IO (QStyleOptionRubberBand ())

instance QqStyleOptionRubberBand (()) where
 qStyleOptionRubberBand ()
  = withQStyleOptionRubberBandResult $
    qtc_QStyleOptionRubberBand

foreign import ccall "qtc_QStyleOptionRubberBand" qtc_QStyleOptionRubberBand :: IO (Ptr (TQStyleOptionRubberBand ()))

instance QqStyleOptionRubberBand ((QStyleOptionRubberBand t1)) where
 qStyleOptionRubberBand (x1)
  = withQStyleOptionRubberBandResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStyleOptionRubberBand1 cobj_x1

foreign import ccall "qtc_QStyleOptionRubberBand1" qtc_QStyleOptionRubberBand1 :: Ptr (TQStyleOptionRubberBand t1) -> IO (Ptr (TQStyleOptionRubberBand ()))

class QqStyleOptionRubberBand_nf x1 where
  qStyleOptionRubberBand_nf :: x1 -> IO (QStyleOptionRubberBand ())

instance QqStyleOptionRubberBand_nf (()) where
 qStyleOptionRubberBand_nf ()
  = withObjectRefResult $
    qtc_QStyleOptionRubberBand

instance QqStyleOptionRubberBand_nf ((QStyleOptionRubberBand t1)) where
 qStyleOptionRubberBand_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStyleOptionRubberBand1 cobj_x1

opaque :: QStyleOptionRubberBand a -> (()) -> IO (Bool)
opaque x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionRubberBand_opaque cobj_x0

foreign import ccall "qtc_QStyleOptionRubberBand_opaque" qtc_QStyleOptionRubberBand_opaque :: Ptr (TQStyleOptionRubberBand a) -> IO CBool

setOpaque :: QStyleOptionRubberBand a -> ((Bool)) -> IO ()
setOpaque x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionRubberBand_setOpaque cobj_x0 (toCBool x1)

foreign import ccall "qtc_QStyleOptionRubberBand_setOpaque" qtc_QStyleOptionRubberBand_setOpaque :: Ptr (TQStyleOptionRubberBand a) -> CBool -> IO ()

instance QsetShape (QStyleOptionRubberBand a) ((QRubberBandShape)) where
 setShape x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionRubberBand_setShape cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QStyleOptionRubberBand_setShape" qtc_QStyleOptionRubberBand_setShape :: Ptr (TQStyleOptionRubberBand a) -> CLong -> IO ()

instance Qshape (QStyleOptionRubberBand a) (()) (IO (QRubberBandShape)) where
 shape x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionRubberBand_shape cobj_x0

foreign import ccall "qtc_QStyleOptionRubberBand_shape" qtc_QStyleOptionRubberBand_shape :: Ptr (TQStyleOptionRubberBand a) -> IO CLong

qStyleOptionRubberBand_delete :: QStyleOptionRubberBand a -> IO ()
qStyleOptionRubberBand_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionRubberBand_delete cobj_x0

foreign import ccall "qtc_QStyleOptionRubberBand_delete" qtc_QStyleOptionRubberBand_delete :: Ptr (TQStyleOptionRubberBand a) -> IO ()

