{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QChildEvent.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:31
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Core.QChildEvent (
  QqChildEvent(..)
  ,QqChildEvent_nf(..)
  ,added
  ,polished
  ,removed
  ,qChildEvent_delete
  )
  where

import Foreign.C.Types

import Qth.ClassTypes.Core
import Qtc.Enums.Base
import Qtc.Enums.Core.QEvent

import Qtc.Classes.Base
import Qtc.Classes.Qccs
import Qtc.Classes.Core
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core

class QqChildEvent x1 where
  qChildEvent :: x1 -> IO (QChildEvent ())

instance QqChildEvent ((QChildEvent t1)) where
 qChildEvent (x1)
  = withQChildEventResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QChildEvent cobj_x1

foreign import ccall "qtc_QChildEvent" qtc_QChildEvent :: Ptr (TQChildEvent t1) -> IO (Ptr (TQChildEvent ()))

instance QqChildEvent ((QEventType, QObject t2)) where
 qChildEvent (x1, x2)
  = withQChildEventResult $
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QChildEvent1 (toCLong $ qEnum_toInt x1) cobj_x2

foreign import ccall "qtc_QChildEvent1" qtc_QChildEvent1 :: CLong -> Ptr (TQObject t2) -> IO (Ptr (TQChildEvent ()))

class QqChildEvent_nf x1 where
  qChildEvent_nf :: x1 -> IO (QChildEvent ())

instance QqChildEvent_nf ((QChildEvent t1)) where
 qChildEvent_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QChildEvent cobj_x1

instance QqChildEvent_nf ((QEventType, QObject t2)) where
 qChildEvent_nf (x1, x2)
  = withObjectRefResult $
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QChildEvent1 (toCLong $ qEnum_toInt x1) cobj_x2

added :: QChildEvent a -> (()) -> IO (Bool)
added x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QChildEvent_added cobj_x0

foreign import ccall "qtc_QChildEvent_added" qtc_QChildEvent_added :: Ptr (TQChildEvent a) -> IO CBool

instance Qchild (QChildEvent a) (()) (IO (QObject ())) where
 child x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QChildEvent_child cobj_x0

foreign import ccall "qtc_QChildEvent_child" qtc_QChildEvent_child :: Ptr (TQChildEvent a) -> IO (Ptr (TQObject ()))

polished :: QChildEvent a -> (()) -> IO (Bool)
polished x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QChildEvent_polished cobj_x0

foreign import ccall "qtc_QChildEvent_polished" qtc_QChildEvent_polished :: Ptr (TQChildEvent a) -> IO CBool

removed :: QChildEvent a -> (()) -> IO (Bool)
removed x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QChildEvent_removed cobj_x0

foreign import ccall "qtc_QChildEvent_removed" qtc_QChildEvent_removed :: Ptr (TQChildEvent a) -> IO CBool

qChildEvent_delete :: QChildEvent a -> IO ()
qChildEvent_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QChildEvent_delete cobj_x0

foreign import ccall "qtc_QChildEvent_delete" qtc_QChildEvent_delete :: Ptr (TQChildEvent a) -> IO ()

