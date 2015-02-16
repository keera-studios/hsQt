{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QDoubleValidator.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:27
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QDoubleValidator (
  QqDoubleValidator(..)
  ,notation
  ,setNotation
  ,qDoubleValidator_delete
  ,qDoubleValidator_deleteLater
  )
  where

import Foreign.C.Types
import Qth.ClassTypes.Core
import Qtc.Enums.Base
import Qtc.Enums.Gui.QDoubleValidator

import Qtc.Classes.Base
import Qtc.Classes.Qccs
import Qtc.Classes.Core
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core
import Qtc.Classes.Gui
import Qtc.ClassTypes.Gui

instance QuserMethod (QDoubleValidator ()) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QDoubleValidator_userMethod cobj_qobj (toCInt evid)

foreign import ccall "qtc_QDoubleValidator_userMethod" qtc_QDoubleValidator_userMethod :: Ptr (TQDoubleValidator a) -> CInt -> IO ()

instance QuserMethod (QDoubleValidatorSc a) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QDoubleValidator_userMethod cobj_qobj (toCInt evid)

instance QuserMethod (QDoubleValidator ()) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QDoubleValidator_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

foreign import ccall "qtc_QDoubleValidator_userMethodVariant" qtc_QDoubleValidator_userMethodVariant :: Ptr (TQDoubleValidator a) -> CInt -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))

instance QuserMethod (QDoubleValidatorSc a) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QDoubleValidator_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

class QqDoubleValidator x1 where
  qDoubleValidator :: x1 -> IO (QDoubleValidator ())

instance QqDoubleValidator ((QObject t1)) where
 qDoubleValidator (x1)
  = withQDoubleValidatorResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDoubleValidator cobj_x1

foreign import ccall "qtc_QDoubleValidator" qtc_QDoubleValidator :: Ptr (TQObject t1) -> IO (Ptr (TQDoubleValidator ()))

instance QqDoubleValidator ((Double, Double, Int, QObject t4)) where
 qDoubleValidator (x1, x2, x3, x4)
  = withQDoubleValidatorResult $
    withObjectPtr x4 $ \cobj_x4 ->
    qtc_QDoubleValidator1 (toCDouble x1) (toCDouble x2) (toCInt x3) cobj_x4

foreign import ccall "qtc_QDoubleValidator1" qtc_QDoubleValidator1 :: CDouble -> CDouble -> CInt -> Ptr (TQObject t4) -> IO (Ptr (TQDoubleValidator ()))

instance Qqbottom (QDoubleValidator a) (()) (IO (Double)) where
 qbottom x0 ()
  = withDoubleResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDoubleValidator_bottom cobj_x0

foreign import ccall "qtc_QDoubleValidator_bottom" qtc_QDoubleValidator_bottom :: Ptr (TQDoubleValidator a) -> IO CDouble

instance Qdecimals (QDoubleValidator a) (()) where
 decimals x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDoubleValidator_decimals cobj_x0

foreign import ccall "qtc_QDoubleValidator_decimals" qtc_QDoubleValidator_decimals :: Ptr (TQDoubleValidator a) -> IO CInt

notation :: QDoubleValidator a -> (()) -> IO (Notation)
notation x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDoubleValidator_notation cobj_x0

foreign import ccall "qtc_QDoubleValidator_notation" qtc_QDoubleValidator_notation :: Ptr (TQDoubleValidator a) -> IO CLong

instance QqsetBottom (QDoubleValidator a) ((Double)) where
 qsetBottom x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDoubleValidator_setBottom cobj_x0 (toCDouble x1)

foreign import ccall "qtc_QDoubleValidator_setBottom" qtc_QDoubleValidator_setBottom :: Ptr (TQDoubleValidator a) -> CDouble -> IO ()

instance QsetDecimals (QDoubleValidator a) ((Int)) where
 setDecimals x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDoubleValidator_setDecimals cobj_x0 (toCInt x1)

foreign import ccall "qtc_QDoubleValidator_setDecimals" qtc_QDoubleValidator_setDecimals :: Ptr (TQDoubleValidator a) -> CInt -> IO ()

setNotation :: QDoubleValidator a -> ((Notation)) -> IO ()
setNotation x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDoubleValidator_setNotation cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QDoubleValidator_setNotation" qtc_QDoubleValidator_setNotation :: Ptr (TQDoubleValidator a) -> CLong -> IO ()

instance QsetRange (QDoubleValidator a) ((Double, Double)) where
 setRange x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDoubleValidator_setRange cobj_x0 (toCDouble x1) (toCDouble x2)

foreign import ccall "qtc_QDoubleValidator_setRange" qtc_QDoubleValidator_setRange :: Ptr (TQDoubleValidator a) -> CDouble -> CDouble -> IO ()

instance QsetRange (QDoubleValidator ()) ((Double, Double, Int)) where
 setRange x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDoubleValidator_setRange1_h cobj_x0 (toCDouble x1) (toCDouble x2) (toCInt x3)

foreign import ccall "qtc_QDoubleValidator_setRange1_h" qtc_QDoubleValidator_setRange1_h :: Ptr (TQDoubleValidator a) -> CDouble -> CDouble -> CInt -> IO ()

instance QsetRange (QDoubleValidatorSc a) ((Double, Double, Int)) where
 setRange x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDoubleValidator_setRange1_h cobj_x0 (toCDouble x1) (toCDouble x2) (toCInt x3)

instance QqsetTop (QDoubleValidator a) ((Double)) where
 qsetTop x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDoubleValidator_setTop cobj_x0 (toCDouble x1)

foreign import ccall "qtc_QDoubleValidator_setTop" qtc_QDoubleValidator_setTop :: Ptr (TQDoubleValidator a) -> CDouble -> IO ()

instance Qqtop (QDoubleValidator a) (()) (IO (Double)) where
 qtop x0 ()
  = withDoubleResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDoubleValidator_top cobj_x0

foreign import ccall "qtc_QDoubleValidator_top" qtc_QDoubleValidator_top :: Ptr (TQDoubleValidator a) -> IO CDouble

qDoubleValidator_delete :: QDoubleValidator a -> IO ()
qDoubleValidator_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDoubleValidator_delete cobj_x0

foreign import ccall "qtc_QDoubleValidator_delete" qtc_QDoubleValidator_delete :: Ptr (TQDoubleValidator a) -> IO ()

qDoubleValidator_deleteLater :: QDoubleValidator a -> IO ()
qDoubleValidator_deleteLater x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDoubleValidator_deleteLater cobj_x0

foreign import ccall "qtc_QDoubleValidator_deleteLater" qtc_QDoubleValidator_deleteLater :: Ptr (TQDoubleValidator a) -> IO ()

instance QchildEvent (QDoubleValidator ()) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDoubleValidator_childEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QDoubleValidator_childEvent" qtc_QDoubleValidator_childEvent :: Ptr (TQDoubleValidator a) -> Ptr (TQChildEvent t1) -> IO ()

instance QchildEvent (QDoubleValidatorSc a) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDoubleValidator_childEvent cobj_x0 cobj_x1

instance QconnectNotify (QDoubleValidator ()) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QDoubleValidator_connectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QDoubleValidator_connectNotify" qtc_QDoubleValidator_connectNotify :: Ptr (TQDoubleValidator a) -> CWString -> IO ()

instance QconnectNotify (QDoubleValidatorSc a) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QDoubleValidator_connectNotify cobj_x0 cstr_x1

instance QcustomEvent (QDoubleValidator ()) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDoubleValidator_customEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QDoubleValidator_customEvent" qtc_QDoubleValidator_customEvent :: Ptr (TQDoubleValidator a) -> Ptr (TQEvent t1) -> IO ()

instance QcustomEvent (QDoubleValidatorSc a) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDoubleValidator_customEvent cobj_x0 cobj_x1

instance QdisconnectNotify (QDoubleValidator ()) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QDoubleValidator_disconnectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QDoubleValidator_disconnectNotify" qtc_QDoubleValidator_disconnectNotify :: Ptr (TQDoubleValidator a) -> CWString -> IO ()

instance QdisconnectNotify (QDoubleValidatorSc a) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QDoubleValidator_disconnectNotify cobj_x0 cstr_x1

instance Qevent (QDoubleValidator ()) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDoubleValidator_event_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDoubleValidator_event_h" qtc_QDoubleValidator_event_h :: Ptr (TQDoubleValidator a) -> Ptr (TQEvent t1) -> IO CBool

instance Qevent (QDoubleValidatorSc a) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDoubleValidator_event_h cobj_x0 cobj_x1

instance QeventFilter (QDoubleValidator ()) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QDoubleValidator_eventFilter_h cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QDoubleValidator_eventFilter_h" qtc_QDoubleValidator_eventFilter_h :: Ptr (TQDoubleValidator a) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO CBool

instance QeventFilter (QDoubleValidatorSc a) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QDoubleValidator_eventFilter_h cobj_x0 cobj_x1 cobj_x2

instance Qreceivers (QDoubleValidator ()) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QDoubleValidator_receivers cobj_x0 cstr_x1

foreign import ccall "qtc_QDoubleValidator_receivers" qtc_QDoubleValidator_receivers :: Ptr (TQDoubleValidator a) -> CWString -> IO CInt

instance Qreceivers (QDoubleValidatorSc a) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QDoubleValidator_receivers cobj_x0 cstr_x1

instance Qsender (QDoubleValidator ()) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDoubleValidator_sender cobj_x0

foreign import ccall "qtc_QDoubleValidator_sender" qtc_QDoubleValidator_sender :: Ptr (TQDoubleValidator a) -> IO (Ptr (TQObject ()))

instance Qsender (QDoubleValidatorSc a) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDoubleValidator_sender cobj_x0

instance QtimerEvent (QDoubleValidator ()) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDoubleValidator_timerEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QDoubleValidator_timerEvent" qtc_QDoubleValidator_timerEvent :: Ptr (TQDoubleValidator a) -> Ptr (TQTimerEvent t1) -> IO ()

instance QtimerEvent (QDoubleValidatorSc a) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDoubleValidator_timerEvent cobj_x0 cobj_x1

