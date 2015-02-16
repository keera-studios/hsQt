{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QStyleOptionProgressBarV2.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:24
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QStyleOptionProgressBarV2 (
  QqStyleOptionProgressBarV2(..)
  ,QqStyleOptionProgressBarV2_nf(..)
  ,bottomToTop
  ,setBottomToTop
  ,qStyleOptionProgressBarV2_delete
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
import Qtc.Classes.Gui
import Qtc.ClassTypes.Gui

class QqStyleOptionProgressBarV2 x1 where
  qStyleOptionProgressBarV2 :: x1 -> IO (QStyleOptionProgressBarV2 ())

instance QqStyleOptionProgressBarV2 (()) where
 qStyleOptionProgressBarV2 ()
  = withQStyleOptionProgressBarV2Result $
    qtc_QStyleOptionProgressBarV2

foreign import ccall "qtc_QStyleOptionProgressBarV2" qtc_QStyleOptionProgressBarV2 :: IO (Ptr (TQStyleOptionProgressBarV2 ()))

instance QqStyleOptionProgressBarV2 ((QStyleOptionProgressBar t1)) where
 qStyleOptionProgressBarV2 (x1)
  = withQStyleOptionProgressBarV2Result $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStyleOptionProgressBarV21 cobj_x1

foreign import ccall "qtc_QStyleOptionProgressBarV21" qtc_QStyleOptionProgressBarV21 :: Ptr (TQStyleOptionProgressBar t1) -> IO (Ptr (TQStyleOptionProgressBarV2 ()))

instance QqStyleOptionProgressBarV2 ((QStyleOptionProgressBarV2 t1)) where
 qStyleOptionProgressBarV2 (x1)
  = withQStyleOptionProgressBarV2Result $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStyleOptionProgressBarV22 cobj_x1

foreign import ccall "qtc_QStyleOptionProgressBarV22" qtc_QStyleOptionProgressBarV22 :: Ptr (TQStyleOptionProgressBarV2 t1) -> IO (Ptr (TQStyleOptionProgressBarV2 ()))

class QqStyleOptionProgressBarV2_nf x1 where
  qStyleOptionProgressBarV2_nf :: x1 -> IO (QStyleOptionProgressBarV2 ())

instance QqStyleOptionProgressBarV2_nf (()) where
 qStyleOptionProgressBarV2_nf ()
  = withObjectRefResult $
    qtc_QStyleOptionProgressBarV2

instance QqStyleOptionProgressBarV2_nf ((QStyleOptionProgressBar t1)) where
 qStyleOptionProgressBarV2_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStyleOptionProgressBarV21 cobj_x1

instance QqStyleOptionProgressBarV2_nf ((QStyleOptionProgressBarV2 t1)) where
 qStyleOptionProgressBarV2_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStyleOptionProgressBarV22 cobj_x1

bottomToTop :: QStyleOptionProgressBarV2 a -> (()) -> IO (Bool)
bottomToTop x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionProgressBarV2_bottomToTop cobj_x0

foreign import ccall "qtc_QStyleOptionProgressBarV2_bottomToTop" qtc_QStyleOptionProgressBarV2_bottomToTop :: Ptr (TQStyleOptionProgressBarV2 a) -> IO CBool

instance QinvertedAppearance (QStyleOptionProgressBarV2 a) (()) where
 invertedAppearance x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionProgressBarV2_invertedAppearance cobj_x0

foreign import ccall "qtc_QStyleOptionProgressBarV2_invertedAppearance" qtc_QStyleOptionProgressBarV2_invertedAppearance :: Ptr (TQStyleOptionProgressBarV2 a) -> IO CBool

instance Qorientation (QStyleOptionProgressBarV2 a) (()) (IO (QtOrientation)) where
 orientation x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionProgressBarV2_orientation cobj_x0

foreign import ccall "qtc_QStyleOptionProgressBarV2_orientation" qtc_QStyleOptionProgressBarV2_orientation :: Ptr (TQStyleOptionProgressBarV2 a) -> IO CLong

setBottomToTop :: QStyleOptionProgressBarV2 a -> ((Bool)) -> IO ()
setBottomToTop x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionProgressBarV2_setBottomToTop cobj_x0 (toCBool x1)

foreign import ccall "qtc_QStyleOptionProgressBarV2_setBottomToTop" qtc_QStyleOptionProgressBarV2_setBottomToTop :: Ptr (TQStyleOptionProgressBarV2 a) -> CBool -> IO ()

instance QsetInvertedAppearance (QStyleOptionProgressBarV2 a) ((Bool)) where
 setInvertedAppearance x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionProgressBarV2_setInvertedAppearance cobj_x0 (toCBool x1)

foreign import ccall "qtc_QStyleOptionProgressBarV2_setInvertedAppearance" qtc_QStyleOptionProgressBarV2_setInvertedAppearance :: Ptr (TQStyleOptionProgressBarV2 a) -> CBool -> IO ()

instance QsetOrientation (QStyleOptionProgressBarV2 a) ((QtOrientation)) where
 setOrientation x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionProgressBarV2_setOrientation cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QStyleOptionProgressBarV2_setOrientation" qtc_QStyleOptionProgressBarV2_setOrientation :: Ptr (TQStyleOptionProgressBarV2 a) -> CLong -> IO ()

qStyleOptionProgressBarV2_delete :: QStyleOptionProgressBarV2 a -> IO ()
qStyleOptionProgressBarV2_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionProgressBarV2_delete cobj_x0

foreign import ccall "qtc_QStyleOptionProgressBarV2_delete" qtc_QStyleOptionProgressBarV2_delete :: Ptr (TQStyleOptionProgressBarV2 a) -> IO ()

