{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QStyleOptionSpinBox.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:28
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QStyleOptionSpinBox (
  QqStyleOptionSpinBox(..)
  ,QqStyleOptionSpinBox_nf(..)
  ,setStepEnabled
  ,qStyleOptionSpinBox_delete
  )
  where

import Foreign.C.Types
import Qth.ClassTypes.Core
import Qtc.Enums.Base
import Qtc.Enums.Gui.QAbstractSpinBox

import Qtc.Classes.Base
import Qtc.Classes.Qccs
import Qtc.Classes.Core
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core
import Qtc.Classes.Gui
import Qtc.ClassTypes.Gui

class QqStyleOptionSpinBox x1 where
  qStyleOptionSpinBox :: x1 -> IO (QStyleOptionSpinBox ())

instance QqStyleOptionSpinBox (()) where
 qStyleOptionSpinBox ()
  = withQStyleOptionSpinBoxResult $
    qtc_QStyleOptionSpinBox

foreign import ccall "qtc_QStyleOptionSpinBox" qtc_QStyleOptionSpinBox :: IO (Ptr (TQStyleOptionSpinBox ()))

instance QqStyleOptionSpinBox ((QStyleOptionSpinBox t1)) where
 qStyleOptionSpinBox (x1)
  = withQStyleOptionSpinBoxResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStyleOptionSpinBox1 cobj_x1

foreign import ccall "qtc_QStyleOptionSpinBox1" qtc_QStyleOptionSpinBox1 :: Ptr (TQStyleOptionSpinBox t1) -> IO (Ptr (TQStyleOptionSpinBox ()))

class QqStyleOptionSpinBox_nf x1 where
  qStyleOptionSpinBox_nf :: x1 -> IO (QStyleOptionSpinBox ())

instance QqStyleOptionSpinBox_nf (()) where
 qStyleOptionSpinBox_nf ()
  = withObjectRefResult $
    qtc_QStyleOptionSpinBox

instance QqStyleOptionSpinBox_nf ((QStyleOptionSpinBox t1)) where
 qStyleOptionSpinBox_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStyleOptionSpinBox1 cobj_x1

instance QbuttonSymbols (QStyleOptionSpinBox a) (()) where
 buttonSymbols x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionSpinBox_buttonSymbols cobj_x0

foreign import ccall "qtc_QStyleOptionSpinBox_buttonSymbols" qtc_QStyleOptionSpinBox_buttonSymbols :: Ptr (TQStyleOptionSpinBox a) -> IO CLong

instance Qframe (QStyleOptionSpinBox a) (()) where
 frame x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionSpinBox_frame cobj_x0

foreign import ccall "qtc_QStyleOptionSpinBox_frame" qtc_QStyleOptionSpinBox_frame :: Ptr (TQStyleOptionSpinBox a) -> IO CBool

instance QsetButtonSymbols (QStyleOptionSpinBox a) ((ButtonSymbols)) where
 setButtonSymbols x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionSpinBox_setButtonSymbols cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QStyleOptionSpinBox_setButtonSymbols" qtc_QStyleOptionSpinBox_setButtonSymbols :: Ptr (TQStyleOptionSpinBox a) -> CLong -> IO ()

instance QsetFrame (QStyleOptionSpinBox a) ((Bool)) where
 setFrame x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionSpinBox_setFrame cobj_x0 (toCBool x1)

foreign import ccall "qtc_QStyleOptionSpinBox_setFrame" qtc_QStyleOptionSpinBox_setFrame :: Ptr (TQStyleOptionSpinBox a) -> CBool -> IO ()

setStepEnabled :: QStyleOptionSpinBox a -> ((StepEnabled)) -> IO ()
setStepEnabled x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionSpinBox_setStepEnabled cobj_x0 (toCLong $ qFlags_toInt x1)

foreign import ccall "qtc_QStyleOptionSpinBox_setStepEnabled" qtc_QStyleOptionSpinBox_setStepEnabled :: Ptr (TQStyleOptionSpinBox a) -> CLong -> IO ()

instance QstepEnabled (QStyleOptionSpinBox a) (()) where
 stepEnabled x0 ()
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionSpinBox_stepEnabled cobj_x0

foreign import ccall "qtc_QStyleOptionSpinBox_stepEnabled" qtc_QStyleOptionSpinBox_stepEnabled :: Ptr (TQStyleOptionSpinBox a) -> IO CLong

qStyleOptionSpinBox_delete :: QStyleOptionSpinBox a -> IO ()
qStyleOptionSpinBox_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionSpinBox_delete cobj_x0

foreign import ccall "qtc_QStyleOptionSpinBox_delete" qtc_QStyleOptionSpinBox_delete :: Ptr (TQStyleOptionSpinBox a) -> IO ()

