{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QIntValidator.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:15
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QIntValidator (
  QqIntValidator(..)
  ,qIntValidator_delete
  ,qIntValidator_deleteLater
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

instance QuserMethod (QIntValidator ()) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QIntValidator_userMethod cobj_qobj (toCInt evid)

foreign import ccall "qtc_QIntValidator_userMethod" qtc_QIntValidator_userMethod :: Ptr (TQIntValidator a) -> CInt -> IO ()

instance QuserMethod (QIntValidatorSc a) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QIntValidator_userMethod cobj_qobj (toCInt evid)

instance QuserMethod (QIntValidator ()) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QIntValidator_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

foreign import ccall "qtc_QIntValidator_userMethodVariant" qtc_QIntValidator_userMethodVariant :: Ptr (TQIntValidator a) -> CInt -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))

instance QuserMethod (QIntValidatorSc a) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QIntValidator_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

class QqIntValidator x1 where
  qIntValidator :: x1 -> IO (QIntValidator ())

instance QqIntValidator ((QObject t1)) where
 qIntValidator (x1)
  = withQIntValidatorResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QIntValidator cobj_x1

foreign import ccall "qtc_QIntValidator" qtc_QIntValidator :: Ptr (TQObject t1) -> IO (Ptr (TQIntValidator ()))

instance QqIntValidator ((Int, Int, QObject t3)) where
 qIntValidator (x1, x2, x3)
  = withQIntValidatorResult $
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QIntValidator1 (toCInt x1) (toCInt x2) cobj_x3

foreign import ccall "qtc_QIntValidator1" qtc_QIntValidator1 :: CInt -> CInt -> Ptr (TQObject t3) -> IO (Ptr (TQIntValidator ()))

instance Qqbottom (QIntValidator a) (()) (IO (Int)) where
 qbottom x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QIntValidator_bottom cobj_x0

foreign import ccall "qtc_QIntValidator_bottom" qtc_QIntValidator_bottom :: Ptr (TQIntValidator a) -> IO CInt

instance QqsetBottom (QIntValidator a) ((Int)) where
 qsetBottom x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QIntValidator_setBottom cobj_x0 (toCInt x1)

foreign import ccall "qtc_QIntValidator_setBottom" qtc_QIntValidator_setBottom :: Ptr (TQIntValidator a) -> CInt -> IO ()

instance QsetRange (QIntValidator ()) ((Int, Int)) where
 setRange x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QIntValidator_setRange_h cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QIntValidator_setRange_h" qtc_QIntValidator_setRange_h :: Ptr (TQIntValidator a) -> CInt -> CInt -> IO ()

instance QsetRange (QIntValidatorSc a) ((Int, Int)) where
 setRange x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QIntValidator_setRange_h cobj_x0 (toCInt x1) (toCInt x2)

instance QqsetTop (QIntValidator a) ((Int)) where
 qsetTop x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QIntValidator_setTop cobj_x0 (toCInt x1)

foreign import ccall "qtc_QIntValidator_setTop" qtc_QIntValidator_setTop :: Ptr (TQIntValidator a) -> CInt -> IO ()

instance Qqtop (QIntValidator a) (()) (IO (Int)) where
 qtop x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QIntValidator_top cobj_x0

foreign import ccall "qtc_QIntValidator_top" qtc_QIntValidator_top :: Ptr (TQIntValidator a) -> IO CInt

qIntValidator_delete :: QIntValidator a -> IO ()
qIntValidator_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QIntValidator_delete cobj_x0

foreign import ccall "qtc_QIntValidator_delete" qtc_QIntValidator_delete :: Ptr (TQIntValidator a) -> IO ()

qIntValidator_deleteLater :: QIntValidator a -> IO ()
qIntValidator_deleteLater x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QIntValidator_deleteLater cobj_x0

foreign import ccall "qtc_QIntValidator_deleteLater" qtc_QIntValidator_deleteLater :: Ptr (TQIntValidator a) -> IO ()

instance QchildEvent (QIntValidator ()) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QIntValidator_childEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QIntValidator_childEvent" qtc_QIntValidator_childEvent :: Ptr (TQIntValidator a) -> Ptr (TQChildEvent t1) -> IO ()

instance QchildEvent (QIntValidatorSc a) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QIntValidator_childEvent cobj_x0 cobj_x1

instance QconnectNotify (QIntValidator ()) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QIntValidator_connectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QIntValidator_connectNotify" qtc_QIntValidator_connectNotify :: Ptr (TQIntValidator a) -> CWString -> IO ()

instance QconnectNotify (QIntValidatorSc a) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QIntValidator_connectNotify cobj_x0 cstr_x1

instance QcustomEvent (QIntValidator ()) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QIntValidator_customEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QIntValidator_customEvent" qtc_QIntValidator_customEvent :: Ptr (TQIntValidator a) -> Ptr (TQEvent t1) -> IO ()

instance QcustomEvent (QIntValidatorSc a) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QIntValidator_customEvent cobj_x0 cobj_x1

instance QdisconnectNotify (QIntValidator ()) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QIntValidator_disconnectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QIntValidator_disconnectNotify" qtc_QIntValidator_disconnectNotify :: Ptr (TQIntValidator a) -> CWString -> IO ()

instance QdisconnectNotify (QIntValidatorSc a) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QIntValidator_disconnectNotify cobj_x0 cstr_x1

instance Qevent (QIntValidator ()) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QIntValidator_event_h cobj_x0 cobj_x1

foreign import ccall "qtc_QIntValidator_event_h" qtc_QIntValidator_event_h :: Ptr (TQIntValidator a) -> Ptr (TQEvent t1) -> IO CBool

instance Qevent (QIntValidatorSc a) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QIntValidator_event_h cobj_x0 cobj_x1

instance QeventFilter (QIntValidator ()) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QIntValidator_eventFilter_h cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QIntValidator_eventFilter_h" qtc_QIntValidator_eventFilter_h :: Ptr (TQIntValidator a) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO CBool

instance QeventFilter (QIntValidatorSc a) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QIntValidator_eventFilter_h cobj_x0 cobj_x1 cobj_x2

instance Qreceivers (QIntValidator ()) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QIntValidator_receivers cobj_x0 cstr_x1

foreign import ccall "qtc_QIntValidator_receivers" qtc_QIntValidator_receivers :: Ptr (TQIntValidator a) -> CWString -> IO CInt

instance Qreceivers (QIntValidatorSc a) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QIntValidator_receivers cobj_x0 cstr_x1

instance Qsender (QIntValidator ()) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QIntValidator_sender cobj_x0

foreign import ccall "qtc_QIntValidator_sender" qtc_QIntValidator_sender :: Ptr (TQIntValidator a) -> IO (Ptr (TQObject ()))

instance Qsender (QIntValidatorSc a) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QIntValidator_sender cobj_x0

instance QtimerEvent (QIntValidator ()) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QIntValidator_timerEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QIntValidator_timerEvent" qtc_QIntValidator_timerEvent :: Ptr (TQIntValidator a) -> Ptr (TQTimerEvent t1) -> IO ()

instance QtimerEvent (QIntValidatorSc a) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QIntValidator_timerEvent cobj_x0 cobj_x1

