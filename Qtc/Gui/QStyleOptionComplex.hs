{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QStyleOptionComplex.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:20
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QStyleOptionComplex (
  QqStyleOptionComplex(..)
  ,QqStyleOptionComplex_nf(..)
  ,activeSubControls
  ,setActiveSubControls
  ,setSubControls
  ,subControls
  ,qStyleOptionComplex_delete
  )
  where

import Foreign.C.Types
import Qth.ClassTypes.Core
import Qtc.Enums.Base
import Qtc.Enums.Gui.QStyle

import Qtc.Classes.Base
import Qtc.Classes.Qccs
import Qtc.Classes.Core
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core
import Qtc.Classes.Gui
import Qtc.ClassTypes.Gui

class QqStyleOptionComplex x1 where
  qStyleOptionComplex :: x1 -> IO (QStyleOptionComplex ())

instance QqStyleOptionComplex (()) where
 qStyleOptionComplex ()
  = withQStyleOptionComplexResult $
    qtc_QStyleOptionComplex

foreign import ccall "qtc_QStyleOptionComplex" qtc_QStyleOptionComplex :: IO (Ptr (TQStyleOptionComplex ()))

instance QqStyleOptionComplex ((QStyleOptionComplex t1)) where
 qStyleOptionComplex (x1)
  = withQStyleOptionComplexResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStyleOptionComplex1 cobj_x1

foreign import ccall "qtc_QStyleOptionComplex1" qtc_QStyleOptionComplex1 :: Ptr (TQStyleOptionComplex t1) -> IO (Ptr (TQStyleOptionComplex ()))

instance QqStyleOptionComplex ((Int)) where
 qStyleOptionComplex (x1)
  = withQStyleOptionComplexResult $
    qtc_QStyleOptionComplex2 (toCInt x1)

foreign import ccall "qtc_QStyleOptionComplex2" qtc_QStyleOptionComplex2 :: CInt -> IO (Ptr (TQStyleOptionComplex ()))

instance QqStyleOptionComplex ((Int, Int)) where
 qStyleOptionComplex (x1, x2)
  = withQStyleOptionComplexResult $
    qtc_QStyleOptionComplex3 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QStyleOptionComplex3" qtc_QStyleOptionComplex3 :: CInt -> CInt -> IO (Ptr (TQStyleOptionComplex ()))

class QqStyleOptionComplex_nf x1 where
  qStyleOptionComplex_nf :: x1 -> IO (QStyleOptionComplex ())

instance QqStyleOptionComplex_nf (()) where
 qStyleOptionComplex_nf ()
  = withObjectRefResult $
    qtc_QStyleOptionComplex

instance QqStyleOptionComplex_nf ((QStyleOptionComplex t1)) where
 qStyleOptionComplex_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStyleOptionComplex1 cobj_x1

instance QqStyleOptionComplex_nf ((Int)) where
 qStyleOptionComplex_nf (x1)
  = withObjectRefResult $
    qtc_QStyleOptionComplex2 (toCInt x1)

instance QqStyleOptionComplex_nf ((Int, Int)) where
 qStyleOptionComplex_nf (x1, x2)
  = withObjectRefResult $
    qtc_QStyleOptionComplex3 (toCInt x1) (toCInt x2)

activeSubControls :: QStyleOptionComplex a -> (()) -> IO (SubControls)
activeSubControls x0 ()
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionComplex_activeSubControls cobj_x0

foreign import ccall "qtc_QStyleOptionComplex_activeSubControls" qtc_QStyleOptionComplex_activeSubControls :: Ptr (TQStyleOptionComplex a) -> IO CLong

setActiveSubControls :: QStyleOptionComplex a -> ((SubControls)) -> IO ()
setActiveSubControls x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionComplex_setActiveSubControls cobj_x0 (toCLong $ qFlags_toInt x1)

foreign import ccall "qtc_QStyleOptionComplex_setActiveSubControls" qtc_QStyleOptionComplex_setActiveSubControls :: Ptr (TQStyleOptionComplex a) -> CLong -> IO ()

setSubControls :: QStyleOptionComplex a -> ((SubControls)) -> IO ()
setSubControls x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionComplex_setSubControls cobj_x0 (toCLong $ qFlags_toInt x1)

foreign import ccall "qtc_QStyleOptionComplex_setSubControls" qtc_QStyleOptionComplex_setSubControls :: Ptr (TQStyleOptionComplex a) -> CLong -> IO ()

subControls :: QStyleOptionComplex a -> (()) -> IO (SubControls)
subControls x0 ()
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionComplex_subControls cobj_x0

foreign import ccall "qtc_QStyleOptionComplex_subControls" qtc_QStyleOptionComplex_subControls :: Ptr (TQStyleOptionComplex a) -> IO CLong

qStyleOptionComplex_delete :: QStyleOptionComplex a -> IO ()
qStyleOptionComplex_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionComplex_delete cobj_x0

foreign import ccall "qtc_QStyleOptionComplex_delete" qtc_QStyleOptionComplex_delete :: Ptr (TQStyleOptionComplex a) -> IO ()

