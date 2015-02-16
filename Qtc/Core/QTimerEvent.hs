{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QTimerEvent.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:32
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Core.QTimerEvent (
  QqTimerEvent(..)
  ,QqTimerEvent_nf(..)
  ,qTimerEvent_delete
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

class QqTimerEvent x1 where
  qTimerEvent :: x1 -> IO (QTimerEvent ())

instance QqTimerEvent ((QTimerEvent t1)) where
 qTimerEvent (x1)
  = withQTimerEventResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTimerEvent cobj_x1

foreign import ccall "qtc_QTimerEvent" qtc_QTimerEvent :: Ptr (TQTimerEvent t1) -> IO (Ptr (TQTimerEvent ()))

instance QqTimerEvent ((Int)) where
 qTimerEvent (x1)
  = withQTimerEventResult $
    qtc_QTimerEvent1 (toCInt x1)

foreign import ccall "qtc_QTimerEvent1" qtc_QTimerEvent1 :: CInt -> IO (Ptr (TQTimerEvent ()))

class QqTimerEvent_nf x1 where
  qTimerEvent_nf :: x1 -> IO (QTimerEvent ())

instance QqTimerEvent_nf ((QTimerEvent t1)) where
 qTimerEvent_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTimerEvent cobj_x1

instance QqTimerEvent_nf ((Int)) where
 qTimerEvent_nf (x1)
  = withObjectRefResult $
    qtc_QTimerEvent1 (toCInt x1)

instance QtimerId (QTimerEvent a) (()) where
 timerId x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTimerEvent_timerId cobj_x0

foreign import ccall "qtc_QTimerEvent_timerId" qtc_QTimerEvent_timerId :: Ptr (TQTimerEvent a) -> IO CInt

qTimerEvent_delete :: QTimerEvent a -> IO ()
qTimerEvent_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTimerEvent_delete cobj_x0

foreign import ccall "qtc_QTimerEvent_delete" qtc_QTimerEvent_delete :: Ptr (TQTimerEvent a) -> IO ()

