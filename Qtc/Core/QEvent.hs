{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QEvent.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:32
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Core.QEvent (
  QqEvent(..)
  ,QqEvent_nf(..)
  ,isAccepted
  ,setAccepted
  ,spontaneous
  ,qEvent_delete
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

class QqEvent x1 where
  qEvent :: x1 -> IO (QEvent ())

instance QqEvent ((QEvent t1)) where
 qEvent (x1)
  = withQEventResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QEvent cobj_x1

foreign import ccall "qtc_QEvent" qtc_QEvent :: Ptr (TQEvent t1) -> IO (Ptr (TQEvent ()))

instance QqEvent ((QEventType)) where
 qEvent (x1)
  = withQEventResult $
    qtc_QEvent1 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QEvent1" qtc_QEvent1 :: CLong -> IO (Ptr (TQEvent ()))

class QqEvent_nf x1 where
  qEvent_nf :: x1 -> IO (QEvent ())

instance QqEvent_nf ((QEvent t1)) where
 qEvent_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QEvent cobj_x1

instance QqEvent_nf ((QEventType)) where
 qEvent_nf (x1)
  = withObjectRefResult $
    qtc_QEvent1 (toCLong $ qEnum_toInt x1)

instance Qaccept (QEvent a) (()) where
 accept x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QEvent_accept cobj_x0

foreign import ccall "qtc_QEvent_accept" qtc_QEvent_accept :: Ptr (TQEvent a) -> IO ()

instance Qignore (QEvent a) (()) where
 ignore x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QEvent_ignore cobj_x0

foreign import ccall "qtc_QEvent_ignore" qtc_QEvent_ignore :: Ptr (TQEvent a) -> IO ()

isAccepted :: QEvent a -> (()) -> IO (Bool)
isAccepted x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QEvent_isAccepted cobj_x0

foreign import ccall "qtc_QEvent_isAccepted" qtc_QEvent_isAccepted :: Ptr (TQEvent a) -> IO CBool

setAccepted :: QEvent a -> ((Bool)) -> IO ()
setAccepted x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QEvent_setAccepted cobj_x0 (toCBool x1)

foreign import ccall "qtc_QEvent_setAccepted" qtc_QEvent_setAccepted :: Ptr (TQEvent a) -> CBool -> IO ()

spontaneous :: QEvent a -> (()) -> IO (Bool)
spontaneous x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QEvent_spontaneous cobj_x0

foreign import ccall "qtc_QEvent_spontaneous" qtc_QEvent_spontaneous :: Ptr (TQEvent a) -> IO CBool

instance Qqtype (QEvent a) (()) (IO (QEventType)) where
 qtype x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QEvent_type cobj_x0

foreign import ccall "qtc_QEvent_type" qtc_QEvent_type :: Ptr (TQEvent a) -> IO CLong

qEvent_delete :: QEvent a -> IO ()
qEvent_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QEvent_delete cobj_x0

foreign import ccall "qtc_QEvent_delete" qtc_QEvent_delete :: Ptr (TQEvent a) -> IO ()

