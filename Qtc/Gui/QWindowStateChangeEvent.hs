{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QWindowStateChangeEvent.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:30
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QWindowStateChangeEvent (
  QqWindowStateChangeEvent(..)
  ,QqWindowStateChangeEvent_nf(..)
  ,isOverride
  ,oldState
  ,qWindowStateChangeEvent_delete
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

class QqWindowStateChangeEvent x1 where
  qWindowStateChangeEvent :: x1 -> IO (QWindowStateChangeEvent ())

instance QqWindowStateChangeEvent ((WindowStates)) where
 qWindowStateChangeEvent (x1)
  = withQWindowStateChangeEventResult $
    qtc_QWindowStateChangeEvent (toCLong $ qFlags_toInt x1)

foreign import ccall "qtc_QWindowStateChangeEvent" qtc_QWindowStateChangeEvent :: CLong -> IO (Ptr (TQWindowStateChangeEvent ()))

instance QqWindowStateChangeEvent ((QWindowStateChangeEvent t1)) where
 qWindowStateChangeEvent (x1)
  = withQWindowStateChangeEventResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWindowStateChangeEvent1 cobj_x1

foreign import ccall "qtc_QWindowStateChangeEvent1" qtc_QWindowStateChangeEvent1 :: Ptr (TQWindowStateChangeEvent t1) -> IO (Ptr (TQWindowStateChangeEvent ()))

instance QqWindowStateChangeEvent ((WindowStates, Bool)) where
 qWindowStateChangeEvent (x1, x2)
  = withQWindowStateChangeEventResult $
    qtc_QWindowStateChangeEvent2 (toCLong $ qFlags_toInt x1) (toCBool x2)

foreign import ccall "qtc_QWindowStateChangeEvent2" qtc_QWindowStateChangeEvent2 :: CLong -> CBool -> IO (Ptr (TQWindowStateChangeEvent ()))

class QqWindowStateChangeEvent_nf x1 where
  qWindowStateChangeEvent_nf :: x1 -> IO (QWindowStateChangeEvent ())

instance QqWindowStateChangeEvent_nf ((WindowStates)) where
 qWindowStateChangeEvent_nf (x1)
  = withObjectRefResult $
    qtc_QWindowStateChangeEvent (toCLong $ qFlags_toInt x1)

instance QqWindowStateChangeEvent_nf ((QWindowStateChangeEvent t1)) where
 qWindowStateChangeEvent_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWindowStateChangeEvent1 cobj_x1

instance QqWindowStateChangeEvent_nf ((WindowStates, Bool)) where
 qWindowStateChangeEvent_nf (x1, x2)
  = withObjectRefResult $
    qtc_QWindowStateChangeEvent2 (toCLong $ qFlags_toInt x1) (toCBool x2)

isOverride :: QWindowStateChangeEvent a -> (()) -> IO (Bool)
isOverride x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWindowStateChangeEvent_isOverride cobj_x0

foreign import ccall "qtc_QWindowStateChangeEvent_isOverride" qtc_QWindowStateChangeEvent_isOverride :: Ptr (TQWindowStateChangeEvent a) -> IO CBool

oldState :: QWindowStateChangeEvent a -> (()) -> IO (WindowStates)
oldState x0 ()
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWindowStateChangeEvent_oldState cobj_x0

foreign import ccall "qtc_QWindowStateChangeEvent_oldState" qtc_QWindowStateChangeEvent_oldState :: Ptr (TQWindowStateChangeEvent a) -> IO CLong

qWindowStateChangeEvent_delete :: QWindowStateChangeEvent a -> IO ()
qWindowStateChangeEvent_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWindowStateChangeEvent_delete cobj_x0

foreign import ccall "qtc_QWindowStateChangeEvent_delete" qtc_QWindowStateChangeEvent_delete :: Ptr (TQWindowStateChangeEvent a) -> IO ()

