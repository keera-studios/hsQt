{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QStyleOptionTabV2.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:16
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QStyleOptionTabV2 (
  QqStyleOptionTabV2(..)
  ,QqStyleOptionTabV2_nf(..)
  ,qStyleOptionTabV2_delete
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

class QqStyleOptionTabV2 x1 where
  qStyleOptionTabV2 :: x1 -> IO (QStyleOptionTabV2 ())

instance QqStyleOptionTabV2 (()) where
 qStyleOptionTabV2 ()
  = withQStyleOptionTabV2Result $
    qtc_QStyleOptionTabV2

foreign import ccall "qtc_QStyleOptionTabV2" qtc_QStyleOptionTabV2 :: IO (Ptr (TQStyleOptionTabV2 ()))

instance QqStyleOptionTabV2 ((QStyleOptionTab t1)) where
 qStyleOptionTabV2 (x1)
  = withQStyleOptionTabV2Result $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStyleOptionTabV21 cobj_x1

foreign import ccall "qtc_QStyleOptionTabV21" qtc_QStyleOptionTabV21 :: Ptr (TQStyleOptionTab t1) -> IO (Ptr (TQStyleOptionTabV2 ()))

instance QqStyleOptionTabV2 ((QStyleOptionTabV2 t1)) where
 qStyleOptionTabV2 (x1)
  = withQStyleOptionTabV2Result $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStyleOptionTabV22 cobj_x1

foreign import ccall "qtc_QStyleOptionTabV22" qtc_QStyleOptionTabV22 :: Ptr (TQStyleOptionTabV2 t1) -> IO (Ptr (TQStyleOptionTabV2 ()))

class QqStyleOptionTabV2_nf x1 where
  qStyleOptionTabV2_nf :: x1 -> IO (QStyleOptionTabV2 ())

instance QqStyleOptionTabV2_nf (()) where
 qStyleOptionTabV2_nf ()
  = withObjectRefResult $
    qtc_QStyleOptionTabV2

instance QqStyleOptionTabV2_nf ((QStyleOptionTab t1)) where
 qStyleOptionTabV2_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStyleOptionTabV21 cobj_x1

instance QqStyleOptionTabV2_nf ((QStyleOptionTabV2 t1)) where
 qStyleOptionTabV2_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStyleOptionTabV22 cobj_x1

instance QqiconSize (QStyleOptionTabV2 a) (()) where
 qiconSize x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionTabV2_iconSize cobj_x0

foreign import ccall "qtc_QStyleOptionTabV2_iconSize" qtc_QStyleOptionTabV2_iconSize :: Ptr (TQStyleOptionTabV2 a) -> IO (Ptr (TQSize ()))

instance QiconSize (QStyleOptionTabV2 a) (()) where
 iconSize x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionTabV2_iconSize_qth cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QStyleOptionTabV2_iconSize_qth" qtc_QStyleOptionTabV2_iconSize_qth :: Ptr (TQStyleOptionTabV2 a) -> Ptr CInt -> Ptr CInt -> IO ()

qStyleOptionTabV2_delete :: QStyleOptionTabV2 a -> IO ()
qStyleOptionTabV2_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionTabV2_delete cobj_x0

foreign import ccall "qtc_QStyleOptionTabV2_delete" qtc_QStyleOptionTabV2_delete :: Ptr (TQStyleOptionTabV2 a) -> IO ()

