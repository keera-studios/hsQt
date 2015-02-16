{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QToolBarChangeEvent.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:20
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QToolBarChangeEvent (
  QqToolBarChangeEvent(..)
  ,QqToolBarChangeEvent_nf(..)
  ,qToolBarChangeEvent_delete
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

class QqToolBarChangeEvent x1 where
  qToolBarChangeEvent :: x1 -> IO (QToolBarChangeEvent ())

instance QqToolBarChangeEvent ((Bool)) where
 qToolBarChangeEvent (x1)
  = withQToolBarChangeEventResult $
    qtc_QToolBarChangeEvent (toCBool x1)

foreign import ccall "qtc_QToolBarChangeEvent" qtc_QToolBarChangeEvent :: CBool -> IO (Ptr (TQToolBarChangeEvent ()))

instance QqToolBarChangeEvent ((QToolBarChangeEvent t1)) where
 qToolBarChangeEvent (x1)
  = withQToolBarChangeEventResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBarChangeEvent1 cobj_x1

foreign import ccall "qtc_QToolBarChangeEvent1" qtc_QToolBarChangeEvent1 :: Ptr (TQToolBarChangeEvent t1) -> IO (Ptr (TQToolBarChangeEvent ()))

class QqToolBarChangeEvent_nf x1 where
  qToolBarChangeEvent_nf :: x1 -> IO (QToolBarChangeEvent ())

instance QqToolBarChangeEvent_nf ((Bool)) where
 qToolBarChangeEvent_nf (x1)
  = withObjectRefResult $
    qtc_QToolBarChangeEvent (toCBool x1)

instance QqToolBarChangeEvent_nf ((QToolBarChangeEvent t1)) where
 qToolBarChangeEvent_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBarChangeEvent1 cobj_x1

instance Qtoggle (QToolBarChangeEvent a) (()) (IO (Bool)) where
 toggle x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolBarChangeEvent_toggle cobj_x0

foreign import ccall "qtc_QToolBarChangeEvent_toggle" qtc_QToolBarChangeEvent_toggle :: Ptr (TQToolBarChangeEvent a) -> IO CBool

qToolBarChangeEvent_delete :: QToolBarChangeEvent a -> IO ()
qToolBarChangeEvent_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolBarChangeEvent_delete cobj_x0

foreign import ccall "qtc_QToolBarChangeEvent_delete" qtc_QToolBarChangeEvent_delete :: Ptr (TQToolBarChangeEvent a) -> IO ()

