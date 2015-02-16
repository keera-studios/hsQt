{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QStyleOptionToolBoxV2.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:16
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QStyleOptionToolBoxV2 (
  QqStyleOptionToolBoxV2(..)
  ,QqStyleOptionToolBoxV2_nf(..)
  ,qStyleOptionToolBoxV2_delete
  )
  where

import Foreign.C.Types
import Qth.ClassTypes.Core
import Qtc.Enums.Base
import Qtc.Enums.Gui.QStyleOptionToolBoxV2

import Qtc.Classes.Base
import Qtc.Classes.Qccs
import Qtc.Classes.Core
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core
import Qtc.Classes.Gui
import Qtc.ClassTypes.Gui

class QqStyleOptionToolBoxV2 x1 where
  qStyleOptionToolBoxV2 :: x1 -> IO (QStyleOptionToolBoxV2 ())

instance QqStyleOptionToolBoxV2 (()) where
 qStyleOptionToolBoxV2 ()
  = withQStyleOptionToolBoxV2Result $
    qtc_QStyleOptionToolBoxV2

foreign import ccall "qtc_QStyleOptionToolBoxV2" qtc_QStyleOptionToolBoxV2 :: IO (Ptr (TQStyleOptionToolBoxV2 ()))

instance QqStyleOptionToolBoxV2 ((QStyleOptionToolBoxV2 t1)) where
 qStyleOptionToolBoxV2 (x1)
  = withQStyleOptionToolBoxV2Result $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStyleOptionToolBoxV21 cobj_x1

foreign import ccall "qtc_QStyleOptionToolBoxV21" qtc_QStyleOptionToolBoxV21 :: Ptr (TQStyleOptionToolBoxV2 t1) -> IO (Ptr (TQStyleOptionToolBoxV2 ()))

instance QqStyleOptionToolBoxV2 ((QStyleOptionToolBox t1)) where
 qStyleOptionToolBoxV2 (x1)
  = withQStyleOptionToolBoxV2Result $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStyleOptionToolBoxV22 cobj_x1

foreign import ccall "qtc_QStyleOptionToolBoxV22" qtc_QStyleOptionToolBoxV22 :: Ptr (TQStyleOptionToolBox t1) -> IO (Ptr (TQStyleOptionToolBoxV2 ()))

class QqStyleOptionToolBoxV2_nf x1 where
  qStyleOptionToolBoxV2_nf :: x1 -> IO (QStyleOptionToolBoxV2 ())

instance QqStyleOptionToolBoxV2_nf (()) where
 qStyleOptionToolBoxV2_nf ()
  = withObjectRefResult $
    qtc_QStyleOptionToolBoxV2

instance QqStyleOptionToolBoxV2_nf ((QStyleOptionToolBoxV2 t1)) where
 qStyleOptionToolBoxV2_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStyleOptionToolBoxV21 cobj_x1

instance QqStyleOptionToolBoxV2_nf ((QStyleOptionToolBox t1)) where
 qStyleOptionToolBoxV2_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStyleOptionToolBoxV22 cobj_x1

instance Qposition (QStyleOptionToolBoxV2 a) (()) (IO (Int)) where
 position x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionToolBoxV2_position cobj_x0

foreign import ccall "qtc_QStyleOptionToolBoxV2_position" qtc_QStyleOptionToolBoxV2_position :: Ptr (TQStyleOptionToolBoxV2 a) -> IO CInt

instance QselectedPosition (QStyleOptionToolBoxV2 a) (()) where
 selectedPosition x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionToolBoxV2_selectedPosition cobj_x0

foreign import ccall "qtc_QStyleOptionToolBoxV2_selectedPosition" qtc_QStyleOptionToolBoxV2_selectedPosition :: Ptr (TQStyleOptionToolBoxV2 a) -> IO CInt

instance QsetPosition (QStyleOptionToolBoxV2 a) ((QStyleOptionToolBoxV2TabPosition)) where
 setPosition x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionToolBoxV2_setPosition cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QStyleOptionToolBoxV2_setPosition" qtc_QStyleOptionToolBoxV2_setPosition :: Ptr (TQStyleOptionToolBoxV2 a) -> CLong -> IO ()

instance QsetSelectedPosition (QStyleOptionToolBoxV2 a) ((QStyleOptionToolBoxV2SelectedPosition)) where
 setSelectedPosition x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionToolBoxV2_setSelectedPosition cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QStyleOptionToolBoxV2_setSelectedPosition" qtc_QStyleOptionToolBoxV2_setSelectedPosition :: Ptr (TQStyleOptionToolBoxV2 a) -> CLong -> IO ()

qStyleOptionToolBoxV2_delete :: QStyleOptionToolBoxV2 a -> IO ()
qStyleOptionToolBoxV2_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionToolBoxV2_delete cobj_x0

foreign import ccall "qtc_QStyleOptionToolBoxV2_delete" qtc_QStyleOptionToolBoxV2_delete :: Ptr (TQStyleOptionToolBoxV2 a) -> IO ()

