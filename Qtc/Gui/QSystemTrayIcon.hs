{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QSystemTrayIcon.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:14
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QSystemTrayIcon (
  QqSystemTrayIcon(..)
  ,contextMenu
  ,qSystemTrayIconIsSystemTrayAvailable
  ,setContextMenu
  ,qSystemTrayIconSupportsMessages
  ,qSystemTrayIcon_delete
  ,qSystemTrayIcon_deleteLater
  )
  where

import Foreign.C.Types
import Qth.ClassTypes.Core
import Qtc.Enums.Base
import Qtc.Enums.Gui.QSystemTrayIcon

import Qtc.Classes.Base
import Qtc.Classes.Qccs
import Qtc.Classes.Core
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core
import Qtc.Classes.Gui
import Qtc.ClassTypes.Gui

instance QuserMethod (QSystemTrayIcon ()) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QSystemTrayIcon_userMethod cobj_qobj (toCInt evid)

foreign import ccall "qtc_QSystemTrayIcon_userMethod" qtc_QSystemTrayIcon_userMethod :: Ptr (TQSystemTrayIcon a) -> CInt -> IO ()

instance QuserMethod (QSystemTrayIconSc a) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QSystemTrayIcon_userMethod cobj_qobj (toCInt evid)

instance QuserMethod (QSystemTrayIcon ()) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QSystemTrayIcon_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

foreign import ccall "qtc_QSystemTrayIcon_userMethodVariant" qtc_QSystemTrayIcon_userMethodVariant :: Ptr (TQSystemTrayIcon a) -> CInt -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))

instance QuserMethod (QSystemTrayIconSc a) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QSystemTrayIcon_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

class QqSystemTrayIcon x1 where
  qSystemTrayIcon :: x1 -> IO (QSystemTrayIcon ())

instance QqSystemTrayIcon (()) where
 qSystemTrayIcon ()
  = withQSystemTrayIconResult $
    qtc_QSystemTrayIcon

foreign import ccall "qtc_QSystemTrayIcon" qtc_QSystemTrayIcon :: IO (Ptr (TQSystemTrayIcon ()))

instance QqSystemTrayIcon ((QObject t1)) where
 qSystemTrayIcon (x1)
  = withQSystemTrayIconResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSystemTrayIcon1 cobj_x1

foreign import ccall "qtc_QSystemTrayIcon1" qtc_QSystemTrayIcon1 :: Ptr (TQObject t1) -> IO (Ptr (TQSystemTrayIcon ()))

instance QqSystemTrayIcon ((QIcon t1)) where
 qSystemTrayIcon (x1)
  = withQSystemTrayIconResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSystemTrayIcon2 cobj_x1

foreign import ccall "qtc_QSystemTrayIcon2" qtc_QSystemTrayIcon2 :: Ptr (TQIcon t1) -> IO (Ptr (TQSystemTrayIcon ()))

instance QqSystemTrayIcon ((QIcon t1, QObject t2)) where
 qSystemTrayIcon (x1, x2)
  = withQSystemTrayIconResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QSystemTrayIcon3 cobj_x1 cobj_x2

foreign import ccall "qtc_QSystemTrayIcon3" qtc_QSystemTrayIcon3 :: Ptr (TQIcon t1) -> Ptr (TQObject t2) -> IO (Ptr (TQSystemTrayIcon ()))

contextMenu :: QSystemTrayIcon a -> (()) -> IO (QMenu ())
contextMenu x0 ()
  = withQMenuResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSystemTrayIcon_contextMenu cobj_x0

foreign import ccall "qtc_QSystemTrayIcon_contextMenu" qtc_QSystemTrayIcon_contextMenu :: Ptr (TQSystemTrayIcon a) -> IO (Ptr (TQMenu ()))

instance Qevent (QSystemTrayIcon ()) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSystemTrayIcon_event cobj_x0 cobj_x1

foreign import ccall "qtc_QSystemTrayIcon_event" qtc_QSystemTrayIcon_event :: Ptr (TQSystemTrayIcon a) -> Ptr (TQEvent t1) -> IO CBool

instance Qevent (QSystemTrayIconSc a) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSystemTrayIcon_event cobj_x0 cobj_x1

instance Qqgeometry (QSystemTrayIcon a) (()) where
 qgeometry x0 ()
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSystemTrayIcon_geometry cobj_x0

foreign import ccall "qtc_QSystemTrayIcon_geometry" qtc_QSystemTrayIcon_geometry :: Ptr (TQSystemTrayIcon a) -> IO (Ptr (TQRect ()))

instance Qgeometry (QSystemTrayIcon a) (()) where
 geometry x0 ()
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSystemTrayIcon_geometry_qth cobj_x0 crect_ret_x crect_ret_y crect_ret_w crect_ret_h

foreign import ccall "qtc_QSystemTrayIcon_geometry_qth" qtc_QSystemTrayIcon_geometry_qth :: Ptr (TQSystemTrayIcon a) -> Ptr CInt -> Ptr CInt -> Ptr CInt -> Ptr CInt -> IO ()

instance Qhide (QSystemTrayIcon a) (()) where
 hide x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSystemTrayIcon_hide cobj_x0

foreign import ccall "qtc_QSystemTrayIcon_hide" qtc_QSystemTrayIcon_hide :: Ptr (TQSystemTrayIcon a) -> IO ()

instance Qicon (QSystemTrayIcon a) (()) (IO (QIcon ())) where
 icon x0 ()
  = withQIconResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSystemTrayIcon_icon cobj_x0

foreign import ccall "qtc_QSystemTrayIcon_icon" qtc_QSystemTrayIcon_icon :: Ptr (TQSystemTrayIcon a) -> IO (Ptr (TQIcon ()))

qSystemTrayIconIsSystemTrayAvailable :: (()) -> IO (Bool)
qSystemTrayIconIsSystemTrayAvailable ()
  = withBoolResult $
    qtc_QSystemTrayIcon_isSystemTrayAvailable

foreign import ccall "qtc_QSystemTrayIcon_isSystemTrayAvailable" qtc_QSystemTrayIcon_isSystemTrayAvailable :: IO CBool

instance QisVisible (QSystemTrayIcon a) (()) where
 isVisible x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSystemTrayIcon_isVisible cobj_x0

foreign import ccall "qtc_QSystemTrayIcon_isVisible" qtc_QSystemTrayIcon_isVisible :: Ptr (TQSystemTrayIcon a) -> IO CBool

setContextMenu :: QSystemTrayIcon a -> ((QMenu t1)) -> IO ()
setContextMenu x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSystemTrayIcon_setContextMenu cobj_x0 cobj_x1

foreign import ccall "qtc_QSystemTrayIcon_setContextMenu" qtc_QSystemTrayIcon_setContextMenu :: Ptr (TQSystemTrayIcon a) -> Ptr (TQMenu t1) -> IO ()

instance QsetIcon (QSystemTrayIcon a) ((QIcon t1)) where
 setIcon x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSystemTrayIcon_setIcon cobj_x0 cobj_x1

foreign import ccall "qtc_QSystemTrayIcon_setIcon" qtc_QSystemTrayIcon_setIcon :: Ptr (TQSystemTrayIcon a) -> Ptr (TQIcon t1) -> IO ()

instance QsetToolTip (QSystemTrayIcon a) ((String)) where
 setToolTip x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QSystemTrayIcon_setToolTip cobj_x0 cstr_x1

foreign import ccall "qtc_QSystemTrayIcon_setToolTip" qtc_QSystemTrayIcon_setToolTip :: Ptr (TQSystemTrayIcon a) -> CWString -> IO ()

instance QsetVisible (QSystemTrayIcon a) ((Bool)) where
 setVisible x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSystemTrayIcon_setVisible cobj_x0 (toCBool x1)

foreign import ccall "qtc_QSystemTrayIcon_setVisible" qtc_QSystemTrayIcon_setVisible :: Ptr (TQSystemTrayIcon a) -> CBool -> IO ()

instance Qqshow (QSystemTrayIcon a) (()) where
 qshow x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSystemTrayIcon_show cobj_x0

foreign import ccall "qtc_QSystemTrayIcon_show" qtc_QSystemTrayIcon_show :: Ptr (TQSystemTrayIcon a) -> IO ()

instance QshowMessage (QSystemTrayIcon a) ((String, String)) where
 showMessage x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QSystemTrayIcon_showMessage cobj_x0 cstr_x1 cstr_x2

foreign import ccall "qtc_QSystemTrayIcon_showMessage" qtc_QSystemTrayIcon_showMessage :: Ptr (TQSystemTrayIcon a) -> CWString -> CWString -> IO ()

instance QshowMessage (QSystemTrayIcon a) ((String, String, MessageIcon)) where
 showMessage x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QSystemTrayIcon_showMessage1 cobj_x0 cstr_x1 cstr_x2 (toCLong $ qEnum_toInt x3)

foreign import ccall "qtc_QSystemTrayIcon_showMessage1" qtc_QSystemTrayIcon_showMessage1 :: Ptr (TQSystemTrayIcon a) -> CWString -> CWString -> CLong -> IO ()

instance QshowMessage (QSystemTrayIcon a) ((String, String, MessageIcon, Int)) where
 showMessage x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QSystemTrayIcon_showMessage2 cobj_x0 cstr_x1 cstr_x2 (toCLong $ qEnum_toInt x3) (toCInt x4)

foreign import ccall "qtc_QSystemTrayIcon_showMessage2" qtc_QSystemTrayIcon_showMessage2 :: Ptr (TQSystemTrayIcon a) -> CWString -> CWString -> CLong -> CInt -> IO ()

qSystemTrayIconSupportsMessages :: (()) -> IO (Bool)
qSystemTrayIconSupportsMessages ()
  = withBoolResult $
    qtc_QSystemTrayIcon_supportsMessages

foreign import ccall "qtc_QSystemTrayIcon_supportsMessages" qtc_QSystemTrayIcon_supportsMessages :: IO CBool

instance QtoolTip (QSystemTrayIcon a) (()) where
 toolTip x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSystemTrayIcon_toolTip cobj_x0

foreign import ccall "qtc_QSystemTrayIcon_toolTip" qtc_QSystemTrayIcon_toolTip :: Ptr (TQSystemTrayIcon a) -> IO (Ptr (TQString ()))

qSystemTrayIcon_delete :: QSystemTrayIcon a -> IO ()
qSystemTrayIcon_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSystemTrayIcon_delete cobj_x0

foreign import ccall "qtc_QSystemTrayIcon_delete" qtc_QSystemTrayIcon_delete :: Ptr (TQSystemTrayIcon a) -> IO ()

qSystemTrayIcon_deleteLater :: QSystemTrayIcon a -> IO ()
qSystemTrayIcon_deleteLater x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSystemTrayIcon_deleteLater cobj_x0

foreign import ccall "qtc_QSystemTrayIcon_deleteLater" qtc_QSystemTrayIcon_deleteLater :: Ptr (TQSystemTrayIcon a) -> IO ()

instance QchildEvent (QSystemTrayIcon ()) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSystemTrayIcon_childEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QSystemTrayIcon_childEvent" qtc_QSystemTrayIcon_childEvent :: Ptr (TQSystemTrayIcon a) -> Ptr (TQChildEvent t1) -> IO ()

instance QchildEvent (QSystemTrayIconSc a) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSystemTrayIcon_childEvent cobj_x0 cobj_x1

instance QconnectNotify (QSystemTrayIcon ()) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QSystemTrayIcon_connectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QSystemTrayIcon_connectNotify" qtc_QSystemTrayIcon_connectNotify :: Ptr (TQSystemTrayIcon a) -> CWString -> IO ()

instance QconnectNotify (QSystemTrayIconSc a) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QSystemTrayIcon_connectNotify cobj_x0 cstr_x1

instance QcustomEvent (QSystemTrayIcon ()) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSystemTrayIcon_customEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QSystemTrayIcon_customEvent" qtc_QSystemTrayIcon_customEvent :: Ptr (TQSystemTrayIcon a) -> Ptr (TQEvent t1) -> IO ()

instance QcustomEvent (QSystemTrayIconSc a) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSystemTrayIcon_customEvent cobj_x0 cobj_x1

instance QdisconnectNotify (QSystemTrayIcon ()) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QSystemTrayIcon_disconnectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QSystemTrayIcon_disconnectNotify" qtc_QSystemTrayIcon_disconnectNotify :: Ptr (TQSystemTrayIcon a) -> CWString -> IO ()

instance QdisconnectNotify (QSystemTrayIconSc a) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QSystemTrayIcon_disconnectNotify cobj_x0 cstr_x1

instance QeventFilter (QSystemTrayIcon ()) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QSystemTrayIcon_eventFilter_h cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QSystemTrayIcon_eventFilter_h" qtc_QSystemTrayIcon_eventFilter_h :: Ptr (TQSystemTrayIcon a) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO CBool

instance QeventFilter (QSystemTrayIconSc a) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QSystemTrayIcon_eventFilter_h cobj_x0 cobj_x1 cobj_x2

instance Qreceivers (QSystemTrayIcon ()) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QSystemTrayIcon_receivers cobj_x0 cstr_x1

foreign import ccall "qtc_QSystemTrayIcon_receivers" qtc_QSystemTrayIcon_receivers :: Ptr (TQSystemTrayIcon a) -> CWString -> IO CInt

instance Qreceivers (QSystemTrayIconSc a) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QSystemTrayIcon_receivers cobj_x0 cstr_x1

instance Qsender (QSystemTrayIcon ()) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSystemTrayIcon_sender cobj_x0

foreign import ccall "qtc_QSystemTrayIcon_sender" qtc_QSystemTrayIcon_sender :: Ptr (TQSystemTrayIcon a) -> IO (Ptr (TQObject ()))

instance Qsender (QSystemTrayIconSc a) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSystemTrayIcon_sender cobj_x0

instance QtimerEvent (QSystemTrayIcon ()) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSystemTrayIcon_timerEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QSystemTrayIcon_timerEvent" qtc_QSystemTrayIcon_timerEvent :: Ptr (TQSystemTrayIcon a) -> Ptr (TQTimerEvent t1) -> IO ()

instance QtimerEvent (QSystemTrayIconSc a) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSystemTrayIcon_timerEvent cobj_x0 cobj_x1

