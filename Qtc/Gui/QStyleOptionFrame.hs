{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QStyleOptionFrame.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:20
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QStyleOptionFrame (
  QqStyleOptionFrame(..)
  ,QqStyleOptionFrame_nf(..)
  ,qStyleOptionFrame_delete
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

class QqStyleOptionFrame x1 where
  qStyleOptionFrame :: x1 -> IO (QStyleOptionFrame ())

instance QqStyleOptionFrame (()) where
 qStyleOptionFrame ()
  = withQStyleOptionFrameResult $
    qtc_QStyleOptionFrame

foreign import ccall "qtc_QStyleOptionFrame" qtc_QStyleOptionFrame :: IO (Ptr (TQStyleOptionFrame ()))

instance QqStyleOptionFrame ((QStyleOptionFrame t1)) where
 qStyleOptionFrame (x1)
  = withQStyleOptionFrameResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStyleOptionFrame1 cobj_x1

foreign import ccall "qtc_QStyleOptionFrame1" qtc_QStyleOptionFrame1 :: Ptr (TQStyleOptionFrame t1) -> IO (Ptr (TQStyleOptionFrame ()))

class QqStyleOptionFrame_nf x1 where
  qStyleOptionFrame_nf :: x1 -> IO (QStyleOptionFrame ())

instance QqStyleOptionFrame_nf (()) where
 qStyleOptionFrame_nf ()
  = withObjectRefResult $
    qtc_QStyleOptionFrame

instance QqStyleOptionFrame_nf ((QStyleOptionFrame t1)) where
 qStyleOptionFrame_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStyleOptionFrame1 cobj_x1

instance QlineWidth (QStyleOptionFrame a) (()) (IO (Int)) where
 lineWidth x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionFrame_lineWidth cobj_x0

foreign import ccall "qtc_QStyleOptionFrame_lineWidth" qtc_QStyleOptionFrame_lineWidth :: Ptr (TQStyleOptionFrame a) -> IO CInt

instance QmidLineWidth (QStyleOptionFrame a) (()) where
 midLineWidth x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionFrame_midLineWidth cobj_x0

foreign import ccall "qtc_QStyleOptionFrame_midLineWidth" qtc_QStyleOptionFrame_midLineWidth :: Ptr (TQStyleOptionFrame a) -> IO CInt

instance QsetLineWidth (QStyleOptionFrame a) ((Int)) where
 setLineWidth x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionFrame_setLineWidth cobj_x0 (toCInt x1)

foreign import ccall "qtc_QStyleOptionFrame_setLineWidth" qtc_QStyleOptionFrame_setLineWidth :: Ptr (TQStyleOptionFrame a) -> CInt -> IO ()

instance QsetMidLineWidth (QStyleOptionFrame a) ((Int)) where
 setMidLineWidth x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionFrame_setMidLineWidth cobj_x0 (toCInt x1)

foreign import ccall "qtc_QStyleOptionFrame_setMidLineWidth" qtc_QStyleOptionFrame_setMidLineWidth :: Ptr (TQStyleOptionFrame a) -> CInt -> IO ()

qStyleOptionFrame_delete :: QStyleOptionFrame a -> IO ()
qStyleOptionFrame_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionFrame_delete cobj_x0

foreign import ccall "qtc_QStyleOptionFrame_delete" qtc_QStyleOptionFrame_delete :: Ptr (TQStyleOptionFrame a) -> IO ()

