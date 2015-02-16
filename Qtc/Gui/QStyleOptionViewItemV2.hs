{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QStyleOptionViewItemV2.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:24
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QStyleOptionViewItemV2 (
  QqStyleOptionViewItemV2(..)
  ,QqStyleOptionViewItemV2_nf(..)
  ,qStyleOptionViewItemV2_delete
  )
  where

import Foreign.C.Types
import Qth.ClassTypes.Core
import Qtc.Enums.Base
import Qtc.Enums.Gui.QStyleOptionViewItemV2

import Qtc.Classes.Base
import Qtc.Classes.Qccs
import Qtc.Classes.Core
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core
import Qtc.Classes.Gui
import Qtc.ClassTypes.Gui

class QqStyleOptionViewItemV2 x1 where
  qStyleOptionViewItemV2 :: x1 -> IO (QStyleOptionViewItemV2 ())

instance QqStyleOptionViewItemV2 (()) where
 qStyleOptionViewItemV2 ()
  = withQStyleOptionViewItemV2Result $
    qtc_QStyleOptionViewItemV2

foreign import ccall "qtc_QStyleOptionViewItemV2" qtc_QStyleOptionViewItemV2 :: IO (Ptr (TQStyleOptionViewItemV2 ()))

instance QqStyleOptionViewItemV2 ((QStyleOptionViewItem t1)) where
 qStyleOptionViewItemV2 (x1)
  = withQStyleOptionViewItemV2Result $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStyleOptionViewItemV21 cobj_x1

foreign import ccall "qtc_QStyleOptionViewItemV21" qtc_QStyleOptionViewItemV21 :: Ptr (TQStyleOptionViewItem t1) -> IO (Ptr (TQStyleOptionViewItemV2 ()))

instance QqStyleOptionViewItemV2 ((QStyleOptionViewItemV2 t1)) where
 qStyleOptionViewItemV2 (x1)
  = withQStyleOptionViewItemV2Result $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStyleOptionViewItemV22 cobj_x1

foreign import ccall "qtc_QStyleOptionViewItemV22" qtc_QStyleOptionViewItemV22 :: Ptr (TQStyleOptionViewItemV2 t1) -> IO (Ptr (TQStyleOptionViewItemV2 ()))

class QqStyleOptionViewItemV2_nf x1 where
  qStyleOptionViewItemV2_nf :: x1 -> IO (QStyleOptionViewItemV2 ())

instance QqStyleOptionViewItemV2_nf (()) where
 qStyleOptionViewItemV2_nf ()
  = withObjectRefResult $
    qtc_QStyleOptionViewItemV2

instance QqStyleOptionViewItemV2_nf ((QStyleOptionViewItem t1)) where
 qStyleOptionViewItemV2_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStyleOptionViewItemV21 cobj_x1

instance QqStyleOptionViewItemV2_nf ((QStyleOptionViewItemV2 t1)) where
 qStyleOptionViewItemV2_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStyleOptionViewItemV22 cobj_x1

instance Qfeatures (QStyleOptionViewItemV2 a) (()) (IO (ViewItemFeatures)) where
 features x0 ()
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionViewItemV2_features cobj_x0

foreign import ccall "qtc_QStyleOptionViewItemV2_features" qtc_QStyleOptionViewItemV2_features :: Ptr (TQStyleOptionViewItemV2 a) -> IO CLong

instance QsetFeatures (QStyleOptionViewItemV2 a) ((ViewItemFeatures)) where
 setFeatures x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionViewItemV2_setFeatures cobj_x0 (toCLong $ qFlags_toInt x1)

foreign import ccall "qtc_QStyleOptionViewItemV2_setFeatures" qtc_QStyleOptionViewItemV2_setFeatures :: Ptr (TQStyleOptionViewItemV2 a) -> CLong -> IO ()

qStyleOptionViewItemV2_delete :: QStyleOptionViewItemV2 a -> IO ()
qStyleOptionViewItemV2_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionViewItemV2_delete cobj_x0

foreign import ccall "qtc_QStyleOptionViewItemV2_delete" qtc_QStyleOptionViewItemV2_delete :: Ptr (TQStyleOptionViewItemV2 a) -> IO ()

