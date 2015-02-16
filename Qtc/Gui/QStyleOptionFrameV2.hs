{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QStyleOptionFrameV2.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:21
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QStyleOptionFrameV2 (
  QqStyleOptionFrameV2(..)
  ,QqStyleOptionFrameV2_nf(..)
  ,qStyleOptionFrameV2_delete
  )
  where

import Foreign.C.Types
import Qth.ClassTypes.Core
import Qtc.Enums.Base
import Qtc.Enums.Gui.QStyleOptionFrameV2

import Qtc.Classes.Base
import Qtc.Classes.Qccs
import Qtc.Classes.Core
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core
import Qtc.Classes.Gui
import Qtc.ClassTypes.Gui

class QqStyleOptionFrameV2 x1 where
  qStyleOptionFrameV2 :: x1 -> IO (QStyleOptionFrameV2 ())

instance QqStyleOptionFrameV2 (()) where
 qStyleOptionFrameV2 ()
  = withQStyleOptionFrameV2Result $
    qtc_QStyleOptionFrameV2

foreign import ccall "qtc_QStyleOptionFrameV2" qtc_QStyleOptionFrameV2 :: IO (Ptr (TQStyleOptionFrameV2 ()))

instance QqStyleOptionFrameV2 ((QStyleOptionFrameV2 t1)) where
 qStyleOptionFrameV2 (x1)
  = withQStyleOptionFrameV2Result $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStyleOptionFrameV21 cobj_x1

foreign import ccall "qtc_QStyleOptionFrameV21" qtc_QStyleOptionFrameV21 :: Ptr (TQStyleOptionFrameV2 t1) -> IO (Ptr (TQStyleOptionFrameV2 ()))

instance QqStyleOptionFrameV2 ((QStyleOptionFrame t1)) where
 qStyleOptionFrameV2 (x1)
  = withQStyleOptionFrameV2Result $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStyleOptionFrameV22 cobj_x1

foreign import ccall "qtc_QStyleOptionFrameV22" qtc_QStyleOptionFrameV22 :: Ptr (TQStyleOptionFrame t1) -> IO (Ptr (TQStyleOptionFrameV2 ()))

class QqStyleOptionFrameV2_nf x1 where
  qStyleOptionFrameV2_nf :: x1 -> IO (QStyleOptionFrameV2 ())

instance QqStyleOptionFrameV2_nf (()) where
 qStyleOptionFrameV2_nf ()
  = withObjectRefResult $
    qtc_QStyleOptionFrameV2

instance QqStyleOptionFrameV2_nf ((QStyleOptionFrameV2 t1)) where
 qStyleOptionFrameV2_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStyleOptionFrameV21 cobj_x1

instance QqStyleOptionFrameV2_nf ((QStyleOptionFrame t1)) where
 qStyleOptionFrameV2_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStyleOptionFrameV22 cobj_x1

instance Qfeatures (QStyleOptionFrameV2 a) (()) (IO (FrameFeatures)) where
 features x0 ()
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionFrameV2_features cobj_x0

foreign import ccall "qtc_QStyleOptionFrameV2_features" qtc_QStyleOptionFrameV2_features :: Ptr (TQStyleOptionFrameV2 a) -> IO CLong

instance QsetFeatures (QStyleOptionFrameV2 a) ((FrameFeatures)) where
 setFeatures x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionFrameV2_setFeatures cobj_x0 (toCLong $ qFlags_toInt x1)

foreign import ccall "qtc_QStyleOptionFrameV2_setFeatures" qtc_QStyleOptionFrameV2_setFeatures :: Ptr (TQStyleOptionFrameV2 a) -> CLong -> IO ()

qStyleOptionFrameV2_delete :: QStyleOptionFrameV2 a -> IO ()
qStyleOptionFrameV2_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionFrameV2_delete cobj_x0

foreign import ccall "qtc_QStyleOptionFrameV2_delete" qtc_QStyleOptionFrameV2_delete :: Ptr (TQStyleOptionFrameV2 a) -> IO ()

