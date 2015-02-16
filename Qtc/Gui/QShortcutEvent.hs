{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QShortcutEvent.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:26
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QShortcutEvent (
  QqShortcutEvent(..)
  ,QqShortcutEvent_nf(..)
  ,isAmbiguous
  ,shortcutId
  ,qShortcutEvent_delete
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

class QqShortcutEvent x1 where
  qShortcutEvent :: x1 -> IO (QShortcutEvent ())

instance QqShortcutEvent ((QShortcutEvent t1)) where
 qShortcutEvent (x1)
  = withQShortcutEventResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QShortcutEvent cobj_x1

foreign import ccall "qtc_QShortcutEvent" qtc_QShortcutEvent :: Ptr (TQShortcutEvent t1) -> IO (Ptr (TQShortcutEvent ()))

instance QqShortcutEvent ((QKeySequence t1, Int)) where
 qShortcutEvent (x1, x2)
  = withQShortcutEventResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QShortcutEvent1 cobj_x1 (toCInt x2)

foreign import ccall "qtc_QShortcutEvent1" qtc_QShortcutEvent1 :: Ptr (TQKeySequence t1) -> CInt -> IO (Ptr (TQShortcutEvent ()))

instance QqShortcutEvent ((QKeySequence t1, Int, Bool)) where
 qShortcutEvent (x1, x2, x3)
  = withQShortcutEventResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QShortcutEvent2 cobj_x1 (toCInt x2) (toCBool x3)

foreign import ccall "qtc_QShortcutEvent2" qtc_QShortcutEvent2 :: Ptr (TQKeySequence t1) -> CInt -> CBool -> IO (Ptr (TQShortcutEvent ()))

class QqShortcutEvent_nf x1 where
  qShortcutEvent_nf :: x1 -> IO (QShortcutEvent ())

instance QqShortcutEvent_nf ((QShortcutEvent t1)) where
 qShortcutEvent_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QShortcutEvent cobj_x1

instance QqShortcutEvent_nf ((QKeySequence t1, Int)) where
 qShortcutEvent_nf (x1, x2)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QShortcutEvent1 cobj_x1 (toCInt x2)

instance QqShortcutEvent_nf ((QKeySequence t1, Int, Bool)) where
 qShortcutEvent_nf (x1, x2, x3)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QShortcutEvent2 cobj_x1 (toCInt x2) (toCBool x3)

isAmbiguous :: QShortcutEvent a -> (()) -> IO (Bool)
isAmbiguous x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QShortcutEvent_isAmbiguous cobj_x0

foreign import ccall "qtc_QShortcutEvent_isAmbiguous" qtc_QShortcutEvent_isAmbiguous :: Ptr (TQShortcutEvent a) -> IO CBool

instance Qkey (QShortcutEvent a) (()) (IO (QKeySequence ())) where
 key x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QShortcutEvent_key cobj_x0

foreign import ccall "qtc_QShortcutEvent_key" qtc_QShortcutEvent_key :: Ptr (TQShortcutEvent a) -> IO (Ptr (TQKeySequence ()))

shortcutId :: QShortcutEvent a -> (()) -> IO (Int)
shortcutId x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QShortcutEvent_shortcutId cobj_x0

foreign import ccall "qtc_QShortcutEvent_shortcutId" qtc_QShortcutEvent_shortcutId :: Ptr (TQShortcutEvent a) -> IO CInt

qShortcutEvent_delete :: QShortcutEvent a -> IO ()
qShortcutEvent_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QShortcutEvent_delete cobj_x0

foreign import ccall "qtc_QShortcutEvent_delete" qtc_QShortcutEvent_delete :: Ptr (TQShortcutEvent a) -> IO ()

