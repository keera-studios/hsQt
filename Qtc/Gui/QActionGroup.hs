{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QActionGroup.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:14
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QActionGroup (
  qActionGroup
  ,checkedAction
  ,isExclusive
  ,qActionGroup_delete
  ,qActionGroup_deleteLater
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

instance QuserMethod (QActionGroup ()) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QActionGroup_userMethod cobj_qobj (toCInt evid)

foreign import ccall "qtc_QActionGroup_userMethod" qtc_QActionGroup_userMethod :: Ptr (TQActionGroup a) -> CInt -> IO ()

instance QuserMethod (QActionGroupSc a) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QActionGroup_userMethod cobj_qobj (toCInt evid)

instance QuserMethod (QActionGroup ()) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QActionGroup_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

foreign import ccall "qtc_QActionGroup_userMethodVariant" qtc_QActionGroup_userMethodVariant :: Ptr (TQActionGroup a) -> CInt -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))

instance QuserMethod (QActionGroupSc a) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QActionGroup_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

qActionGroup :: (QObject t1) -> IO (QActionGroup ())
qActionGroup (x1)
  = withQActionGroupResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QActionGroup cobj_x1

foreign import ccall "qtc_QActionGroup" qtc_QActionGroup :: Ptr (TQObject t1) -> IO (Ptr (TQActionGroup ()))

instance Qactions (QActionGroup a) (()) where
 actions x0 ()
  = withQListQActionResult $ \arr ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QActionGroup_actions cobj_x0 arr

foreign import ccall "qtc_QActionGroup_actions" qtc_QActionGroup_actions :: Ptr (TQActionGroup a) -> Ptr (Ptr (TQAction ())) -> IO CInt

instance QaddAction (QActionGroup ()) ((QAction t1)) (IO (QAction ())) where
 addAction x0 (x1)
  = withQActionResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QActionGroup_addAction1 cobj_x0 cobj_x1

foreign import ccall "qtc_QActionGroup_addAction1" qtc_QActionGroup_addAction1 :: Ptr (TQActionGroup a) -> Ptr (TQAction t1) -> IO (Ptr (TQAction ()))

instance QaddAction (QActionGroupSc a) ((QAction t1)) (IO (QAction ())) where
 addAction x0 (x1)
  = withQActionResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QActionGroup_addAction1 cobj_x0 cobj_x1

instance QaddAction (QActionGroup ()) ((QIcon t1, String)) (IO (QAction ())) where
 addAction x0 (x1, x2)
  = withQActionResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QActionGroup_addAction2 cobj_x0 cobj_x1 cstr_x2

foreign import ccall "qtc_QActionGroup_addAction2" qtc_QActionGroup_addAction2 :: Ptr (TQActionGroup a) -> Ptr (TQIcon t1) -> CWString -> IO (Ptr (TQAction ()))

instance QaddAction (QActionGroupSc a) ((QIcon t1, String)) (IO (QAction ())) where
 addAction x0 (x1, x2)
  = withQActionResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QActionGroup_addAction2 cobj_x0 cobj_x1 cstr_x2

instance QaddAction (QActionGroup ()) ((String)) (IO (QAction ())) where
 addAction x0 (x1)
  = withQActionResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QActionGroup_addAction cobj_x0 cstr_x1

foreign import ccall "qtc_QActionGroup_addAction" qtc_QActionGroup_addAction :: Ptr (TQActionGroup a) -> CWString -> IO (Ptr (TQAction ()))

instance QaddAction (QActionGroupSc a) ((String)) (IO (QAction ())) where
 addAction x0 (x1)
  = withQActionResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QActionGroup_addAction cobj_x0 cstr_x1

checkedAction :: QActionGroup a -> (()) -> IO (QAction ())
checkedAction x0 ()
  = withQActionResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QActionGroup_checkedAction cobj_x0

foreign import ccall "qtc_QActionGroup_checkedAction" qtc_QActionGroup_checkedAction :: Ptr (TQActionGroup a) -> IO (Ptr (TQAction ()))

instance QisEnabled (QActionGroup a) (()) where
 isEnabled x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QActionGroup_isEnabled cobj_x0

foreign import ccall "qtc_QActionGroup_isEnabled" qtc_QActionGroup_isEnabled :: Ptr (TQActionGroup a) -> IO CBool

isExclusive :: QActionGroup a -> (()) -> IO (Bool)
isExclusive x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QActionGroup_isExclusive cobj_x0

foreign import ccall "qtc_QActionGroup_isExclusive" qtc_QActionGroup_isExclusive :: Ptr (TQActionGroup a) -> IO CBool

instance QisVisible (QActionGroup a) (()) where
 isVisible x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QActionGroup_isVisible cobj_x0

foreign import ccall "qtc_QActionGroup_isVisible" qtc_QActionGroup_isVisible :: Ptr (TQActionGroup a) -> IO CBool

instance QremoveAction (QActionGroup a) ((QAction t1)) where
 removeAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QActionGroup_removeAction cobj_x0 cobj_x1

foreign import ccall "qtc_QActionGroup_removeAction" qtc_QActionGroup_removeAction :: Ptr (TQActionGroup a) -> Ptr (TQAction t1) -> IO ()

instance QsetDisabled (QActionGroup a) ((Bool)) where
 setDisabled x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QActionGroup_setDisabled cobj_x0 (toCBool x1)

foreign import ccall "qtc_QActionGroup_setDisabled" qtc_QActionGroup_setDisabled :: Ptr (TQActionGroup a) -> CBool -> IO ()

instance QsetEnabled (QActionGroup a) ((Bool)) where
 setEnabled x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QActionGroup_setEnabled cobj_x0 (toCBool x1)

foreign import ccall "qtc_QActionGroup_setEnabled" qtc_QActionGroup_setEnabled :: Ptr (TQActionGroup a) -> CBool -> IO ()

instance QsetExclusive (QActionGroup a) ((Bool)) where
 setExclusive x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QActionGroup_setExclusive cobj_x0 (toCBool x1)

foreign import ccall "qtc_QActionGroup_setExclusive" qtc_QActionGroup_setExclusive :: Ptr (TQActionGroup a) -> CBool -> IO ()

instance QsetVisible (QActionGroup a) ((Bool)) where
 setVisible x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QActionGroup_setVisible cobj_x0 (toCBool x1)

foreign import ccall "qtc_QActionGroup_setVisible" qtc_QActionGroup_setVisible :: Ptr (TQActionGroup a) -> CBool -> IO ()

qActionGroup_delete :: QActionGroup a -> IO ()
qActionGroup_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QActionGroup_delete cobj_x0

foreign import ccall "qtc_QActionGroup_delete" qtc_QActionGroup_delete :: Ptr (TQActionGroup a) -> IO ()

qActionGroup_deleteLater :: QActionGroup a -> IO ()
qActionGroup_deleteLater x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QActionGroup_deleteLater cobj_x0

foreign import ccall "qtc_QActionGroup_deleteLater" qtc_QActionGroup_deleteLater :: Ptr (TQActionGroup a) -> IO ()

instance QchildEvent (QActionGroup ()) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QActionGroup_childEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QActionGroup_childEvent" qtc_QActionGroup_childEvent :: Ptr (TQActionGroup a) -> Ptr (TQChildEvent t1) -> IO ()

instance QchildEvent (QActionGroupSc a) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QActionGroup_childEvent cobj_x0 cobj_x1

instance QconnectNotify (QActionGroup ()) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QActionGroup_connectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QActionGroup_connectNotify" qtc_QActionGroup_connectNotify :: Ptr (TQActionGroup a) -> CWString -> IO ()

instance QconnectNotify (QActionGroupSc a) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QActionGroup_connectNotify cobj_x0 cstr_x1

instance QcustomEvent (QActionGroup ()) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QActionGroup_customEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QActionGroup_customEvent" qtc_QActionGroup_customEvent :: Ptr (TQActionGroup a) -> Ptr (TQEvent t1) -> IO ()

instance QcustomEvent (QActionGroupSc a) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QActionGroup_customEvent cobj_x0 cobj_x1

instance QdisconnectNotify (QActionGroup ()) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QActionGroup_disconnectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QActionGroup_disconnectNotify" qtc_QActionGroup_disconnectNotify :: Ptr (TQActionGroup a) -> CWString -> IO ()

instance QdisconnectNotify (QActionGroupSc a) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QActionGroup_disconnectNotify cobj_x0 cstr_x1

instance Qevent (QActionGroup ()) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QActionGroup_event_h cobj_x0 cobj_x1

foreign import ccall "qtc_QActionGroup_event_h" qtc_QActionGroup_event_h :: Ptr (TQActionGroup a) -> Ptr (TQEvent t1) -> IO CBool

instance Qevent (QActionGroupSc a) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QActionGroup_event_h cobj_x0 cobj_x1

instance QeventFilter (QActionGroup ()) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QActionGroup_eventFilter_h cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QActionGroup_eventFilter_h" qtc_QActionGroup_eventFilter_h :: Ptr (TQActionGroup a) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO CBool

instance QeventFilter (QActionGroupSc a) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QActionGroup_eventFilter_h cobj_x0 cobj_x1 cobj_x2

instance Qreceivers (QActionGroup ()) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QActionGroup_receivers cobj_x0 cstr_x1

foreign import ccall "qtc_QActionGroup_receivers" qtc_QActionGroup_receivers :: Ptr (TQActionGroup a) -> CWString -> IO CInt

instance Qreceivers (QActionGroupSc a) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QActionGroup_receivers cobj_x0 cstr_x1

instance Qsender (QActionGroup ()) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QActionGroup_sender cobj_x0

foreign import ccall "qtc_QActionGroup_sender" qtc_QActionGroup_sender :: Ptr (TQActionGroup a) -> IO (Ptr (TQObject ()))

instance Qsender (QActionGroupSc a) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QActionGroup_sender cobj_x0

instance QtimerEvent (QActionGroup ()) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QActionGroup_timerEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QActionGroup_timerEvent" qtc_QActionGroup_timerEvent :: Ptr (TQActionGroup a) -> Ptr (TQTimerEvent t1) -> IO ()

instance QtimerEvent (QActionGroupSc a) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QActionGroup_timerEvent cobj_x0 cobj_x1

