{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QStyleOptionToolBar.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:20
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QStyleOptionToolBar (
  QqStyleOptionToolBar(..)
  ,QqStyleOptionToolBar_nf(..)
  ,positionOfLine
  ,positionWithinLine
  ,setPositionOfLine
  ,setPositionWithinLine
  ,setToolBarArea
  ,qStyleOptionToolBar_delete
  )
  where

import Foreign.C.Types
import Qth.ClassTypes.Core
import Qtc.Enums.Base
import Qtc.Enums.Core.Qt
import Qtc.Enums.Gui.QStyleOptionToolBar

import Qtc.Classes.Base
import Qtc.Classes.Qccs
import Qtc.Classes.Core
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core
import Qtc.Classes.Gui
import Qtc.ClassTypes.Gui

class QqStyleOptionToolBar x1 where
  qStyleOptionToolBar :: x1 -> IO (QStyleOptionToolBar ())

instance QqStyleOptionToolBar (()) where
 qStyleOptionToolBar ()
  = withQStyleOptionToolBarResult $
    qtc_QStyleOptionToolBar

foreign import ccall "qtc_QStyleOptionToolBar" qtc_QStyleOptionToolBar :: IO (Ptr (TQStyleOptionToolBar ()))

instance QqStyleOptionToolBar ((QStyleOptionToolBar t1)) where
 qStyleOptionToolBar (x1)
  = withQStyleOptionToolBarResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStyleOptionToolBar1 cobj_x1

foreign import ccall "qtc_QStyleOptionToolBar1" qtc_QStyleOptionToolBar1 :: Ptr (TQStyleOptionToolBar t1) -> IO (Ptr (TQStyleOptionToolBar ()))

class QqStyleOptionToolBar_nf x1 where
  qStyleOptionToolBar_nf :: x1 -> IO (QStyleOptionToolBar ())

instance QqStyleOptionToolBar_nf (()) where
 qStyleOptionToolBar_nf ()
  = withObjectRefResult $
    qtc_QStyleOptionToolBar

instance QqStyleOptionToolBar_nf ((QStyleOptionToolBar t1)) where
 qStyleOptionToolBar_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStyleOptionToolBar1 cobj_x1

instance Qfeatures (QStyleOptionToolBar a) (()) (IO (ToolBarFeatures)) where
 features x0 ()
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionToolBar_features cobj_x0

foreign import ccall "qtc_QStyleOptionToolBar_features" qtc_QStyleOptionToolBar_features :: Ptr (TQStyleOptionToolBar a) -> IO CLong

instance QlineWidth (QStyleOptionToolBar a) (()) (IO (Int)) where
 lineWidth x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionToolBar_lineWidth cobj_x0

foreign import ccall "qtc_QStyleOptionToolBar_lineWidth" qtc_QStyleOptionToolBar_lineWidth :: Ptr (TQStyleOptionToolBar a) -> IO CInt

instance QmidLineWidth (QStyleOptionToolBar a) (()) where
 midLineWidth x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionToolBar_midLineWidth cobj_x0

foreign import ccall "qtc_QStyleOptionToolBar_midLineWidth" qtc_QStyleOptionToolBar_midLineWidth :: Ptr (TQStyleOptionToolBar a) -> IO CInt

positionOfLine :: QStyleOptionToolBar a -> (()) -> IO (ToolBarPositions)
positionOfLine x0 ()
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionToolBar_positionOfLine cobj_x0

foreign import ccall "qtc_QStyleOptionToolBar_positionOfLine" qtc_QStyleOptionToolBar_positionOfLine :: Ptr (TQStyleOptionToolBar a) -> IO CLong

positionWithinLine :: QStyleOptionToolBar a -> (()) -> IO (ToolBarPositions)
positionWithinLine x0 ()
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionToolBar_positionWithinLine cobj_x0

foreign import ccall "qtc_QStyleOptionToolBar_positionWithinLine" qtc_QStyleOptionToolBar_positionWithinLine :: Ptr (TQStyleOptionToolBar a) -> IO CLong

instance QsetFeatures (QStyleOptionToolBar a) ((ToolBarFeatures)) where
 setFeatures x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionToolBar_setFeatures cobj_x0 (toCLong $ qFlags_toInt x1)

foreign import ccall "qtc_QStyleOptionToolBar_setFeatures" qtc_QStyleOptionToolBar_setFeatures :: Ptr (TQStyleOptionToolBar a) -> CLong -> IO ()

instance QsetLineWidth (QStyleOptionToolBar a) ((Int)) where
 setLineWidth x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionToolBar_setLineWidth cobj_x0 (toCInt x1)

foreign import ccall "qtc_QStyleOptionToolBar_setLineWidth" qtc_QStyleOptionToolBar_setLineWidth :: Ptr (TQStyleOptionToolBar a) -> CInt -> IO ()

instance QsetMidLineWidth (QStyleOptionToolBar a) ((Int)) where
 setMidLineWidth x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionToolBar_setMidLineWidth cobj_x0 (toCInt x1)

foreign import ccall "qtc_QStyleOptionToolBar_setMidLineWidth" qtc_QStyleOptionToolBar_setMidLineWidth :: Ptr (TQStyleOptionToolBar a) -> CInt -> IO ()

setPositionOfLine :: QStyleOptionToolBar a -> ((ToolBarPosition)) -> IO ()
setPositionOfLine x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionToolBar_setPositionOfLine cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QStyleOptionToolBar_setPositionOfLine" qtc_QStyleOptionToolBar_setPositionOfLine :: Ptr (TQStyleOptionToolBar a) -> CLong -> IO ()

setPositionWithinLine :: QStyleOptionToolBar a -> ((ToolBarPosition)) -> IO ()
setPositionWithinLine x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionToolBar_setPositionWithinLine cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QStyleOptionToolBar_setPositionWithinLine" qtc_QStyleOptionToolBar_setPositionWithinLine :: Ptr (TQStyleOptionToolBar a) -> CLong -> IO ()

setToolBarArea :: QStyleOptionToolBar a -> ((ToolBarArea)) -> IO ()
setToolBarArea x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionToolBar_setToolBarArea cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QStyleOptionToolBar_setToolBarArea" qtc_QStyleOptionToolBar_setToolBarArea :: Ptr (TQStyleOptionToolBar a) -> CLong -> IO ()

instance QtoolBarArea (QStyleOptionToolBar a) (()) where
 toolBarArea x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionToolBar_toolBarArea cobj_x0

foreign import ccall "qtc_QStyleOptionToolBar_toolBarArea" qtc_QStyleOptionToolBar_toolBarArea :: Ptr (TQStyleOptionToolBar a) -> IO CLong

qStyleOptionToolBar_delete :: QStyleOptionToolBar a -> IO ()
qStyleOptionToolBar_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionToolBar_delete cobj_x0

foreign import ccall "qtc_QStyleOptionToolBar_delete" qtc_QStyleOptionToolBar_delete :: Ptr (TQStyleOptionToolBar a) -> IO ()

