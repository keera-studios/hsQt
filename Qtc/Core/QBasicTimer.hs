{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QBasicTimer.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:32
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Core.QBasicTimer (
  QqBasicTimer(..)
  ,QqBasicTimer_nf(..)
  ,qBasicTimer_delete
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

class QqBasicTimer x1 where
  qBasicTimer :: x1 -> IO (QBasicTimer ())

instance QqBasicTimer (()) where
 qBasicTimer ()
  = withQBasicTimerResult $
    qtc_QBasicTimer

foreign import ccall "qtc_QBasicTimer" qtc_QBasicTimer :: IO (Ptr (TQBasicTimer ()))

instance QqBasicTimer ((QBasicTimer t1)) where
 qBasicTimer (x1)
  = withQBasicTimerResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QBasicTimer1 cobj_x1

foreign import ccall "qtc_QBasicTimer1" qtc_QBasicTimer1 :: Ptr (TQBasicTimer t1) -> IO (Ptr (TQBasicTimer ()))

class QqBasicTimer_nf x1 where
  qBasicTimer_nf :: x1 -> IO (QBasicTimer ())

instance QqBasicTimer_nf (()) where
 qBasicTimer_nf ()
  = withObjectRefResult $
    qtc_QBasicTimer

instance QqBasicTimer_nf ((QBasicTimer t1)) where
 qBasicTimer_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QBasicTimer1 cobj_x1

instance QisActive (QBasicTimer a) (()) where
 isActive x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QBasicTimer_isActive cobj_x0

foreign import ccall "qtc_QBasicTimer_isActive" qtc_QBasicTimer_isActive :: Ptr (TQBasicTimer a) -> IO CBool

instance Qstart (QBasicTimer a) ((Int, QObject t2)) (IO ()) where
 start x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QBasicTimer_start cobj_x0 (toCInt x1) cobj_x2

foreign import ccall "qtc_QBasicTimer_start" qtc_QBasicTimer_start :: Ptr (TQBasicTimer a) -> CInt -> Ptr (TQObject t2) -> IO ()

instance Qstop (QBasicTimer a) (()) where
 stop x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QBasicTimer_stop cobj_x0

foreign import ccall "qtc_QBasicTimer_stop" qtc_QBasicTimer_stop :: Ptr (TQBasicTimer a) -> IO ()

instance QtimerId (QBasicTimer a) (()) where
 timerId x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QBasicTimer_timerId cobj_x0

foreign import ccall "qtc_QBasicTimer_timerId" qtc_QBasicTimer_timerId :: Ptr (TQBasicTimer a) -> IO CInt

qBasicTimer_delete :: QBasicTimer a -> IO ()
qBasicTimer_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QBasicTimer_delete cobj_x0

foreign import ccall "qtc_QBasicTimer_delete" qtc_QBasicTimer_delete :: Ptr (TQBasicTimer a) -> IO ()

