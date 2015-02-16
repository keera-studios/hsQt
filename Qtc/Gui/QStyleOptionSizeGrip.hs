{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QStyleOptionSizeGrip.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:22
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QStyleOptionSizeGrip (
  QqStyleOptionSizeGrip(..)
  ,QqStyleOptionSizeGrip_nf(..)
  ,qStyleOptionSizeGrip_delete
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

class QqStyleOptionSizeGrip x1 where
  qStyleOptionSizeGrip :: x1 -> IO (QStyleOptionSizeGrip ())

instance QqStyleOptionSizeGrip (()) where
 qStyleOptionSizeGrip ()
  = withQStyleOptionSizeGripResult $
    qtc_QStyleOptionSizeGrip

foreign import ccall "qtc_QStyleOptionSizeGrip" qtc_QStyleOptionSizeGrip :: IO (Ptr (TQStyleOptionSizeGrip ()))

instance QqStyleOptionSizeGrip ((QStyleOptionSizeGrip t1)) where
 qStyleOptionSizeGrip (x1)
  = withQStyleOptionSizeGripResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStyleOptionSizeGrip1 cobj_x1

foreign import ccall "qtc_QStyleOptionSizeGrip1" qtc_QStyleOptionSizeGrip1 :: Ptr (TQStyleOptionSizeGrip t1) -> IO (Ptr (TQStyleOptionSizeGrip ()))

class QqStyleOptionSizeGrip_nf x1 where
  qStyleOptionSizeGrip_nf :: x1 -> IO (QStyleOptionSizeGrip ())

instance QqStyleOptionSizeGrip_nf (()) where
 qStyleOptionSizeGrip_nf ()
  = withObjectRefResult $
    qtc_QStyleOptionSizeGrip

instance QqStyleOptionSizeGrip_nf ((QStyleOptionSizeGrip t1)) where
 qStyleOptionSizeGrip_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStyleOptionSizeGrip1 cobj_x1

instance Qcorner (QStyleOptionSizeGrip a) (()) (IO (Corner)) where
 corner x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionSizeGrip_corner cobj_x0

foreign import ccall "qtc_QStyleOptionSizeGrip_corner" qtc_QStyleOptionSizeGrip_corner :: Ptr (TQStyleOptionSizeGrip a) -> IO CLong

instance QsetCorner (QStyleOptionSizeGrip a) ((Corner)) where
 setCorner x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionSizeGrip_setCorner cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QStyleOptionSizeGrip_setCorner" qtc_QStyleOptionSizeGrip_setCorner :: Ptr (TQStyleOptionSizeGrip a) -> CLong -> IO ()

qStyleOptionSizeGrip_delete :: QStyleOptionSizeGrip a -> IO ()
qStyleOptionSizeGrip_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionSizeGrip_delete cobj_x0

foreign import ccall "qtc_QStyleOptionSizeGrip_delete" qtc_QStyleOptionSizeGrip_delete :: Ptr (TQStyleOptionSizeGrip a) -> IO ()

