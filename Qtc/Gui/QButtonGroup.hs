{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QButtonGroup.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:20
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QButtonGroup (
  QqButtonGroup(..)
  ,checkedButton
  ,checkedId
  ,exclusive
  ,setId
  ,qButtonGroup_delete
  ,qButtonGroup_deleteLater
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

instance QuserMethod (QButtonGroup ()) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QButtonGroup_userMethod cobj_qobj (toCInt evid)

foreign import ccall "qtc_QButtonGroup_userMethod" qtc_QButtonGroup_userMethod :: Ptr (TQButtonGroup a) -> CInt -> IO ()

instance QuserMethod (QButtonGroupSc a) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QButtonGroup_userMethod cobj_qobj (toCInt evid)

instance QuserMethod (QButtonGroup ()) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QButtonGroup_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

foreign import ccall "qtc_QButtonGroup_userMethodVariant" qtc_QButtonGroup_userMethodVariant :: Ptr (TQButtonGroup a) -> CInt -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))

instance QuserMethod (QButtonGroupSc a) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QButtonGroup_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

class QqButtonGroup x1 where
  qButtonGroup :: x1 -> IO (QButtonGroup ())

instance QqButtonGroup (()) where
 qButtonGroup ()
  = withQButtonGroupResult $
    qtc_QButtonGroup

foreign import ccall "qtc_QButtonGroup" qtc_QButtonGroup :: IO (Ptr (TQButtonGroup ()))

instance QqButtonGroup ((QObject t1)) where
 qButtonGroup (x1)
  = withQButtonGroupResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QButtonGroup1 cobj_x1

foreign import ccall "qtc_QButtonGroup1" qtc_QButtonGroup1 :: Ptr (TQObject t1) -> IO (Ptr (TQButtonGroup ()))

instance QaddButton (QButtonGroup a) ((QAbstractButton t1)) (IO ()) where
 addButton x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QButtonGroup_addButton cobj_x0 cobj_x1

foreign import ccall "qtc_QButtonGroup_addButton" qtc_QButtonGroup_addButton :: Ptr (TQButtonGroup a) -> Ptr (TQAbstractButton t1) -> IO ()

instance QaddButton (QButtonGroup a) ((QAbstractButton t1, Int)) (IO ()) where
 addButton x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QButtonGroup_addButton1 cobj_x0 cobj_x1 (toCInt x2)

foreign import ccall "qtc_QButtonGroup_addButton1" qtc_QButtonGroup_addButton1 :: Ptr (TQButtonGroup a) -> Ptr (TQAbstractButton t1) -> CInt -> IO ()

instance Qbutton (QButtonGroup a) ((Int)) (IO (QAbstractButton ())) where
 button x0 (x1)
  = withQAbstractButtonResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QButtonGroup_button cobj_x0 (toCInt x1)

foreign import ccall "qtc_QButtonGroup_button" qtc_QButtonGroup_button :: Ptr (TQButtonGroup a) -> CInt -> IO (Ptr (TQAbstractButton ()))

instance Qbuttons (QButtonGroup a) (()) (IO ([QAbstractButton ()])) where
 buttons x0 ()
  = withQListQAbstractButtonResult $ \arr ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QButtonGroup_buttons cobj_x0 arr

foreign import ccall "qtc_QButtonGroup_buttons" qtc_QButtonGroup_buttons :: Ptr (TQButtonGroup a) -> Ptr (Ptr (TQAbstractButton ())) -> IO CInt

checkedButton :: QButtonGroup a -> (()) -> IO (QAbstractButton ())
checkedButton x0 ()
  = withQAbstractButtonResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QButtonGroup_checkedButton cobj_x0

foreign import ccall "qtc_QButtonGroup_checkedButton" qtc_QButtonGroup_checkedButton :: Ptr (TQButtonGroup a) -> IO (Ptr (TQAbstractButton ()))

checkedId :: QButtonGroup a -> (()) -> IO (Int)
checkedId x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QButtonGroup_checkedId cobj_x0

foreign import ccall "qtc_QButtonGroup_checkedId" qtc_QButtonGroup_checkedId :: Ptr (TQButtonGroup a) -> IO CInt

exclusive :: QButtonGroup a -> (()) -> IO (Bool)
exclusive x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QButtonGroup_exclusive cobj_x0

foreign import ccall "qtc_QButtonGroup_exclusive" qtc_QButtonGroup_exclusive :: Ptr (TQButtonGroup a) -> IO CBool

instance Qqid (QButtonGroup a) ((QAbstractButton t1)) where
 qid x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QButtonGroup_id cobj_x0 cobj_x1

foreign import ccall "qtc_QButtonGroup_id" qtc_QButtonGroup_id :: Ptr (TQButtonGroup a) -> Ptr (TQAbstractButton t1) -> IO CInt

instance QremoveButton (QButtonGroup a) ((QAbstractButton t1)) where
 removeButton x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QButtonGroup_removeButton cobj_x0 cobj_x1

foreign import ccall "qtc_QButtonGroup_removeButton" qtc_QButtonGroup_removeButton :: Ptr (TQButtonGroup a) -> Ptr (TQAbstractButton t1) -> IO ()

instance QsetExclusive (QButtonGroup a) ((Bool)) where
 setExclusive x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QButtonGroup_setExclusive cobj_x0 (toCBool x1)

foreign import ccall "qtc_QButtonGroup_setExclusive" qtc_QButtonGroup_setExclusive :: Ptr (TQButtonGroup a) -> CBool -> IO ()

setId :: QButtonGroup a -> ((QAbstractButton t1, Int)) -> IO ()
setId x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QButtonGroup_setId cobj_x0 cobj_x1 (toCInt x2)

foreign import ccall "qtc_QButtonGroup_setId" qtc_QButtonGroup_setId :: Ptr (TQButtonGroup a) -> Ptr (TQAbstractButton t1) -> CInt -> IO ()

qButtonGroup_delete :: QButtonGroup a -> IO ()
qButtonGroup_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QButtonGroup_delete cobj_x0

foreign import ccall "qtc_QButtonGroup_delete" qtc_QButtonGroup_delete :: Ptr (TQButtonGroup a) -> IO ()

qButtonGroup_deleteLater :: QButtonGroup a -> IO ()
qButtonGroup_deleteLater x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QButtonGroup_deleteLater cobj_x0

foreign import ccall "qtc_QButtonGroup_deleteLater" qtc_QButtonGroup_deleteLater :: Ptr (TQButtonGroup a) -> IO ()

instance QchildEvent (QButtonGroup ()) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QButtonGroup_childEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QButtonGroup_childEvent" qtc_QButtonGroup_childEvent :: Ptr (TQButtonGroup a) -> Ptr (TQChildEvent t1) -> IO ()

instance QchildEvent (QButtonGroupSc a) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QButtonGroup_childEvent cobj_x0 cobj_x1

instance QconnectNotify (QButtonGroup ()) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QButtonGroup_connectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QButtonGroup_connectNotify" qtc_QButtonGroup_connectNotify :: Ptr (TQButtonGroup a) -> CWString -> IO ()

instance QconnectNotify (QButtonGroupSc a) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QButtonGroup_connectNotify cobj_x0 cstr_x1

instance QcustomEvent (QButtonGroup ()) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QButtonGroup_customEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QButtonGroup_customEvent" qtc_QButtonGroup_customEvent :: Ptr (TQButtonGroup a) -> Ptr (TQEvent t1) -> IO ()

instance QcustomEvent (QButtonGroupSc a) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QButtonGroup_customEvent cobj_x0 cobj_x1

instance QdisconnectNotify (QButtonGroup ()) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QButtonGroup_disconnectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QButtonGroup_disconnectNotify" qtc_QButtonGroup_disconnectNotify :: Ptr (TQButtonGroup a) -> CWString -> IO ()

instance QdisconnectNotify (QButtonGroupSc a) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QButtonGroup_disconnectNotify cobj_x0 cstr_x1

instance Qevent (QButtonGroup ()) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QButtonGroup_event_h cobj_x0 cobj_x1

foreign import ccall "qtc_QButtonGroup_event_h" qtc_QButtonGroup_event_h :: Ptr (TQButtonGroup a) -> Ptr (TQEvent t1) -> IO CBool

instance Qevent (QButtonGroupSc a) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QButtonGroup_event_h cobj_x0 cobj_x1

instance QeventFilter (QButtonGroup ()) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QButtonGroup_eventFilter_h cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QButtonGroup_eventFilter_h" qtc_QButtonGroup_eventFilter_h :: Ptr (TQButtonGroup a) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO CBool

instance QeventFilter (QButtonGroupSc a) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QButtonGroup_eventFilter_h cobj_x0 cobj_x1 cobj_x2

instance Qreceivers (QButtonGroup ()) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QButtonGroup_receivers cobj_x0 cstr_x1

foreign import ccall "qtc_QButtonGroup_receivers" qtc_QButtonGroup_receivers :: Ptr (TQButtonGroup a) -> CWString -> IO CInt

instance Qreceivers (QButtonGroupSc a) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QButtonGroup_receivers cobj_x0 cstr_x1

instance Qsender (QButtonGroup ()) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QButtonGroup_sender cobj_x0

foreign import ccall "qtc_QButtonGroup_sender" qtc_QButtonGroup_sender :: Ptr (TQButtonGroup a) -> IO (Ptr (TQObject ()))

instance Qsender (QButtonGroupSc a) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QButtonGroup_sender cobj_x0

instance QtimerEvent (QButtonGroup ()) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QButtonGroup_timerEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QButtonGroup_timerEvent" qtc_QButtonGroup_timerEvent :: Ptr (TQButtonGroup a) -> Ptr (TQTimerEvent t1) -> IO ()

instance QtimerEvent (QButtonGroupSc a) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QButtonGroup_timerEvent cobj_x0 cobj_x1

