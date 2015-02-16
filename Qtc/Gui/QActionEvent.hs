{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QActionEvent.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:26
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QActionEvent (
  QqActionEvent(..)
  ,QqActionEvent_nf(..)
  ,action
  ,before
  ,qActionEvent_delete
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

class QqActionEvent x1 where
  qActionEvent :: x1 -> IO (QActionEvent ())

instance QqActionEvent ((QActionEvent t1)) where
 qActionEvent (x1)
  = withQActionEventResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QActionEvent cobj_x1

foreign import ccall "qtc_QActionEvent" qtc_QActionEvent :: Ptr (TQActionEvent t1) -> IO (Ptr (TQActionEvent ()))

instance QqActionEvent ((Int, QAction t2)) where
 qActionEvent (x1, x2)
  = withQActionEventResult $
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QActionEvent1 (toCInt x1) cobj_x2

foreign import ccall "qtc_QActionEvent1" qtc_QActionEvent1 :: CInt -> Ptr (TQAction t2) -> IO (Ptr (TQActionEvent ()))

instance QqActionEvent ((Int, QAction t2, QAction t3)) where
 qActionEvent (x1, x2, x3)
  = withQActionEventResult $
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QActionEvent2 (toCInt x1) cobj_x2 cobj_x3

foreign import ccall "qtc_QActionEvent2" qtc_QActionEvent2 :: CInt -> Ptr (TQAction t2) -> Ptr (TQAction t3) -> IO (Ptr (TQActionEvent ()))

class QqActionEvent_nf x1 where
  qActionEvent_nf :: x1 -> IO (QActionEvent ())

instance QqActionEvent_nf ((QActionEvent t1)) where
 qActionEvent_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QActionEvent cobj_x1

instance QqActionEvent_nf ((Int, QAction t2)) where
 qActionEvent_nf (x1, x2)
  = withObjectRefResult $
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QActionEvent1 (toCInt x1) cobj_x2

instance QqActionEvent_nf ((Int, QAction t2, QAction t3)) where
 qActionEvent_nf (x1, x2, x3)
  = withObjectRefResult $
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QActionEvent2 (toCInt x1) cobj_x2 cobj_x3

action :: QActionEvent a -> (()) -> IO (QAction ())
action x0 ()
  = withQActionResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QActionEvent_action cobj_x0

foreign import ccall "qtc_QActionEvent_action" qtc_QActionEvent_action :: Ptr (TQActionEvent a) -> IO (Ptr (TQAction ()))

before :: QActionEvent a -> (()) -> IO (QAction ())
before x0 ()
  = withQActionResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QActionEvent_before cobj_x0

foreign import ccall "qtc_QActionEvent_before" qtc_QActionEvent_before :: Ptr (TQActionEvent a) -> IO (Ptr (TQAction ()))

qActionEvent_delete :: QActionEvent a -> IO ()
qActionEvent_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QActionEvent_delete cobj_x0

foreign import ccall "qtc_QActionEvent_delete" qtc_QActionEvent_delete :: Ptr (TQActionEvent a) -> IO ()

