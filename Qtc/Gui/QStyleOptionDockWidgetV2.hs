{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QStyleOptionDockWidgetV2.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:16
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QStyleOptionDockWidgetV2 (
  QqStyleOptionDockWidgetV2(..)
  ,QqStyleOptionDockWidgetV2_nf(..)
  ,setVerticalTitleBar
  ,verticalTitleBar
  ,qStyleOptionDockWidgetV2_delete
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

class QqStyleOptionDockWidgetV2 x1 where
  qStyleOptionDockWidgetV2 :: x1 -> IO (QStyleOptionDockWidgetV2 ())

instance QqStyleOptionDockWidgetV2 (()) where
 qStyleOptionDockWidgetV2 ()
  = withQStyleOptionDockWidgetV2Result $
    qtc_QStyleOptionDockWidgetV2

foreign import ccall "qtc_QStyleOptionDockWidgetV2" qtc_QStyleOptionDockWidgetV2 :: IO (Ptr (TQStyleOptionDockWidgetV2 ()))

instance QqStyleOptionDockWidgetV2 ((QStyleOptionDockWidget t1)) where
 qStyleOptionDockWidgetV2 (x1)
  = withQStyleOptionDockWidgetV2Result $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStyleOptionDockWidgetV21 cobj_x1

foreign import ccall "qtc_QStyleOptionDockWidgetV21" qtc_QStyleOptionDockWidgetV21 :: Ptr (TQStyleOptionDockWidget t1) -> IO (Ptr (TQStyleOptionDockWidgetV2 ()))

instance QqStyleOptionDockWidgetV2 ((QStyleOptionDockWidgetV2 t1)) where
 qStyleOptionDockWidgetV2 (x1)
  = withQStyleOptionDockWidgetV2Result $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStyleOptionDockWidgetV22 cobj_x1

foreign import ccall "qtc_QStyleOptionDockWidgetV22" qtc_QStyleOptionDockWidgetV22 :: Ptr (TQStyleOptionDockWidgetV2 t1) -> IO (Ptr (TQStyleOptionDockWidgetV2 ()))

class QqStyleOptionDockWidgetV2_nf x1 where
  qStyleOptionDockWidgetV2_nf :: x1 -> IO (QStyleOptionDockWidgetV2 ())

instance QqStyleOptionDockWidgetV2_nf (()) where
 qStyleOptionDockWidgetV2_nf ()
  = withObjectRefResult $
    qtc_QStyleOptionDockWidgetV2

instance QqStyleOptionDockWidgetV2_nf ((QStyleOptionDockWidget t1)) where
 qStyleOptionDockWidgetV2_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStyleOptionDockWidgetV21 cobj_x1

instance QqStyleOptionDockWidgetV2_nf ((QStyleOptionDockWidgetV2 t1)) where
 qStyleOptionDockWidgetV2_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStyleOptionDockWidgetV22 cobj_x1

setVerticalTitleBar :: QStyleOptionDockWidgetV2 a -> ((Bool)) -> IO ()
setVerticalTitleBar x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionDockWidgetV2_setVerticalTitleBar cobj_x0 (toCBool x1)

foreign import ccall "qtc_QStyleOptionDockWidgetV2_setVerticalTitleBar" qtc_QStyleOptionDockWidgetV2_setVerticalTitleBar :: Ptr (TQStyleOptionDockWidgetV2 a) -> CBool -> IO ()

verticalTitleBar :: QStyleOptionDockWidgetV2 a -> (()) -> IO (Bool)
verticalTitleBar x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionDockWidgetV2_verticalTitleBar cobj_x0

foreign import ccall "qtc_QStyleOptionDockWidgetV2_verticalTitleBar" qtc_QStyleOptionDockWidgetV2_verticalTitleBar :: Ptr (TQStyleOptionDockWidgetV2 a) -> IO CBool

qStyleOptionDockWidgetV2_delete :: QStyleOptionDockWidgetV2 a -> IO ()
qStyleOptionDockWidgetV2_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionDockWidgetV2_delete cobj_x0

foreign import ccall "qtc_QStyleOptionDockWidgetV2_delete" qtc_QStyleOptionDockWidgetV2_delete :: Ptr (TQStyleOptionDockWidgetV2 a) -> IO ()

