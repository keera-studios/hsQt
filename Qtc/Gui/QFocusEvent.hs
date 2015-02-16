{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QFocusEvent.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:16
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QFocusEvent (
  QqFocusEvent(..)
  ,QqFocusEvent_nf(..)
  ,gotFocus
  ,lostFocus
  ,qFocusEvent_delete
  )
  where

import Foreign.C.Types
import Qth.ClassTypes.Core
import Qtc.Enums.Base
import Qtc.Enums.Core.Qt
import Qtc.Enums.Core.QEvent

import Qtc.Classes.Base
import Qtc.Classes.Qccs
import Qtc.Classes.Core
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core
import Qtc.Classes.Gui
import Qtc.ClassTypes.Gui

class QqFocusEvent x1 where
  qFocusEvent :: x1 -> IO (QFocusEvent ())

instance QqFocusEvent ((QFocusEvent t1)) where
 qFocusEvent (x1)
  = withQFocusEventResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFocusEvent cobj_x1

foreign import ccall "qtc_QFocusEvent" qtc_QFocusEvent :: Ptr (TQFocusEvent t1) -> IO (Ptr (TQFocusEvent ()))

instance QqFocusEvent ((QEventType)) where
 qFocusEvent (x1)
  = withQFocusEventResult $
    qtc_QFocusEvent1 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QFocusEvent1" qtc_QFocusEvent1 :: CLong -> IO (Ptr (TQFocusEvent ()))

instance QqFocusEvent ((QEventType, FocusReason)) where
 qFocusEvent (x1, x2)
  = withQFocusEventResult $
    qtc_QFocusEvent2 (toCLong $ qEnum_toInt x1) (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QFocusEvent2" qtc_QFocusEvent2 :: CLong -> CLong -> IO (Ptr (TQFocusEvent ()))

class QqFocusEvent_nf x1 where
  qFocusEvent_nf :: x1 -> IO (QFocusEvent ())

instance QqFocusEvent_nf ((QFocusEvent t1)) where
 qFocusEvent_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFocusEvent cobj_x1

instance QqFocusEvent_nf ((QEventType)) where
 qFocusEvent_nf (x1)
  = withObjectRefResult $
    qtc_QFocusEvent1 (toCLong $ qEnum_toInt x1)

instance QqFocusEvent_nf ((QEventType, FocusReason)) where
 qFocusEvent_nf (x1, x2)
  = withObjectRefResult $
    qtc_QFocusEvent2 (toCLong $ qEnum_toInt x1) (toCLong $ qEnum_toInt x2)

gotFocus :: QFocusEvent a -> (()) -> IO (Bool)
gotFocus x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFocusEvent_gotFocus cobj_x0

foreign import ccall "qtc_QFocusEvent_gotFocus" qtc_QFocusEvent_gotFocus :: Ptr (TQFocusEvent a) -> IO CBool

lostFocus :: QFocusEvent a -> (()) -> IO (Bool)
lostFocus x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFocusEvent_lostFocus cobj_x0

foreign import ccall "qtc_QFocusEvent_lostFocus" qtc_QFocusEvent_lostFocus :: Ptr (TQFocusEvent a) -> IO CBool

instance Qreason (QFocusEvent a) (()) (IO (FocusReason)) where
 reason x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFocusEvent_reason cobj_x0

foreign import ccall "qtc_QFocusEvent_reason" qtc_QFocusEvent_reason :: Ptr (TQFocusEvent a) -> IO CLong

qFocusEvent_delete :: QFocusEvent a -> IO ()
qFocusEvent_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFocusEvent_delete cobj_x0

foreign import ccall "qtc_QFocusEvent_delete" qtc_QFocusEvent_delete :: Ptr (TQFocusEvent a) -> IO ()

