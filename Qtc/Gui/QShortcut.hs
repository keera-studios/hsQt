{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QShortcut.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:15
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QShortcut (
  QqShortcut(..)
  ,setKey
  ,qShortcut_delete
  ,qShortcut_deleteLater
  )
  where

import Foreign.C.Types
import Qth.ClassTypes.Core
import Qtc.Enums.Base
import Qtc.Enums.Core.Qt

import Qtc.Classes.Base
import Qtc.Classes.Qccs
import Qtc.Classes.Core
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core
import Qtc.Classes.Gui
import Qtc.ClassTypes.Gui

instance QuserMethod (QShortcut ()) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QShortcut_userMethod cobj_qobj (toCInt evid)

foreign import ccall "qtc_QShortcut_userMethod" qtc_QShortcut_userMethod :: Ptr (TQShortcut a) -> CInt -> IO ()

instance QuserMethod (QShortcutSc a) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QShortcut_userMethod cobj_qobj (toCInt evid)

instance QuserMethod (QShortcut ()) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QShortcut_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

foreign import ccall "qtc_QShortcut_userMethodVariant" qtc_QShortcut_userMethodVariant :: Ptr (TQShortcut a) -> CInt -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))

instance QuserMethod (QShortcutSc a) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QShortcut_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

class QqShortcut x1 where
  qShortcut :: x1 -> IO (QShortcut ())

instance QqShortcut ((QWidget t1)) where
 qShortcut (x1)
  = withQShortcutResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QShortcut cobj_x1

foreign import ccall "qtc_QShortcut" qtc_QShortcut :: Ptr (TQWidget t1) -> IO (Ptr (TQShortcut ()))

instance QqShortcut ((QKeySequence t1, QWidget t2)) where
 qShortcut (x1, x2)
  = withQShortcutResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QShortcut1 cobj_x1 cobj_x2

foreign import ccall "qtc_QShortcut1" qtc_QShortcut1 :: Ptr (TQKeySequence t1) -> Ptr (TQWidget t2) -> IO (Ptr (TQShortcut ()))

instance QqShortcut ((QKeySequence t1, QWidget t2, String)) where
 qShortcut (x1, x2, x3)
  = withQShortcutResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withCWString x3 $ \cstr_x3 ->
    qtc_QShortcut2 cobj_x1 cobj_x2 cstr_x3

foreign import ccall "qtc_QShortcut2" qtc_QShortcut2 :: Ptr (TQKeySequence t1) -> Ptr (TQWidget t2) -> CWString -> IO (Ptr (TQShortcut ()))

instance QqShortcut ((QKeySequence t1, QWidget t2, String, String)) where
 qShortcut (x1, x2, x3, x4)
  = withQShortcutResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withCWString x3 $ \cstr_x3 ->
    withCWString x4 $ \cstr_x4 ->
    qtc_QShortcut3 cobj_x1 cobj_x2 cstr_x3 cstr_x4

foreign import ccall "qtc_QShortcut3" qtc_QShortcut3 :: Ptr (TQKeySequence t1) -> Ptr (TQWidget t2) -> CWString -> CWString -> IO (Ptr (TQShortcut ()))

instance QqShortcut ((QKeySequence t1, QWidget t2, String, String, ShortcutContext)) where
 qShortcut (x1, x2, x3, x4, x5)
  = withQShortcutResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withCWString x3 $ \cstr_x3 ->
    withCWString x4 $ \cstr_x4 ->
    qtc_QShortcut4 cobj_x1 cobj_x2 cstr_x3 cstr_x4 (toCLong $ qEnum_toInt x5)

foreign import ccall "qtc_QShortcut4" qtc_QShortcut4 :: Ptr (TQKeySequence t1) -> Ptr (TQWidget t2) -> CWString -> CWString -> CLong -> IO (Ptr (TQShortcut ()))

instance QautoRepeat (QShortcut a) (()) where
 autoRepeat x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QShortcut_autoRepeat cobj_x0

foreign import ccall "qtc_QShortcut_autoRepeat" qtc_QShortcut_autoRepeat :: Ptr (TQShortcut a) -> IO CBool

instance Qcontext (QShortcut a) (()) (IO (ShortcutContext)) where
 context x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QShortcut_context cobj_x0

foreign import ccall "qtc_QShortcut_context" qtc_QShortcut_context :: Ptr (TQShortcut a) -> IO CLong

instance Qevent (QShortcut ()) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QShortcut_event cobj_x0 cobj_x1

foreign import ccall "qtc_QShortcut_event" qtc_QShortcut_event :: Ptr (TQShortcut a) -> Ptr (TQEvent t1) -> IO CBool

instance Qevent (QShortcutSc a) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QShortcut_event cobj_x0 cobj_x1

instance Qqid (QShortcut a) (()) where
 qid x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QShortcut_id cobj_x0

foreign import ccall "qtc_QShortcut_id" qtc_QShortcut_id :: Ptr (TQShortcut a) -> IO CInt

instance QisEnabled (QShortcut a) (()) where
 isEnabled x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QShortcut_isEnabled cobj_x0

foreign import ccall "qtc_QShortcut_isEnabled" qtc_QShortcut_isEnabled :: Ptr (TQShortcut a) -> IO CBool

instance Qkey (QShortcut a) (()) (IO (QKeySequence ())) where
 key x0 ()
  = withQKeySequenceResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QShortcut_key cobj_x0

foreign import ccall "qtc_QShortcut_key" qtc_QShortcut_key :: Ptr (TQShortcut a) -> IO (Ptr (TQKeySequence ()))

instance QparentWidget (QShortcut a) (()) where
 parentWidget x0 ()
  = withQWidgetResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QShortcut_parentWidget cobj_x0

foreign import ccall "qtc_QShortcut_parentWidget" qtc_QShortcut_parentWidget :: Ptr (TQShortcut a) -> IO (Ptr (TQWidget ()))

instance QsetAutoRepeat (QShortcut a) ((Bool)) where
 setAutoRepeat x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QShortcut_setAutoRepeat cobj_x0 (toCBool x1)

foreign import ccall "qtc_QShortcut_setAutoRepeat" qtc_QShortcut_setAutoRepeat :: Ptr (TQShortcut a) -> CBool -> IO ()

instance QsetContext (QShortcut a) ((ShortcutContext)) where
 setContext x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QShortcut_setContext cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QShortcut_setContext" qtc_QShortcut_setContext :: Ptr (TQShortcut a) -> CLong -> IO ()

instance QsetEnabled (QShortcut a) ((Bool)) where
 setEnabled x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QShortcut_setEnabled cobj_x0 (toCBool x1)

foreign import ccall "qtc_QShortcut_setEnabled" qtc_QShortcut_setEnabled :: Ptr (TQShortcut a) -> CBool -> IO ()

setKey :: QShortcut a -> ((QKeySequence t1)) -> IO ()
setKey x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QShortcut_setKey cobj_x0 cobj_x1

foreign import ccall "qtc_QShortcut_setKey" qtc_QShortcut_setKey :: Ptr (TQShortcut a) -> Ptr (TQKeySequence t1) -> IO ()

instance QsetWhatsThis (QShortcut a) ((String)) where
 setWhatsThis x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QShortcut_setWhatsThis cobj_x0 cstr_x1

foreign import ccall "qtc_QShortcut_setWhatsThis" qtc_QShortcut_setWhatsThis :: Ptr (TQShortcut a) -> CWString -> IO ()

instance QwhatsThis (QShortcut a) (()) where
 whatsThis x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QShortcut_whatsThis cobj_x0

foreign import ccall "qtc_QShortcut_whatsThis" qtc_QShortcut_whatsThis :: Ptr (TQShortcut a) -> IO (Ptr (TQString ()))

qShortcut_delete :: QShortcut a -> IO ()
qShortcut_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QShortcut_delete cobj_x0

foreign import ccall "qtc_QShortcut_delete" qtc_QShortcut_delete :: Ptr (TQShortcut a) -> IO ()

qShortcut_deleteLater :: QShortcut a -> IO ()
qShortcut_deleteLater x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QShortcut_deleteLater cobj_x0

foreign import ccall "qtc_QShortcut_deleteLater" qtc_QShortcut_deleteLater :: Ptr (TQShortcut a) -> IO ()

instance QchildEvent (QShortcut ()) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QShortcut_childEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QShortcut_childEvent" qtc_QShortcut_childEvent :: Ptr (TQShortcut a) -> Ptr (TQChildEvent t1) -> IO ()

instance QchildEvent (QShortcutSc a) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QShortcut_childEvent cobj_x0 cobj_x1

instance QconnectNotify (QShortcut ()) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QShortcut_connectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QShortcut_connectNotify" qtc_QShortcut_connectNotify :: Ptr (TQShortcut a) -> CWString -> IO ()

instance QconnectNotify (QShortcutSc a) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QShortcut_connectNotify cobj_x0 cstr_x1

instance QcustomEvent (QShortcut ()) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QShortcut_customEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QShortcut_customEvent" qtc_QShortcut_customEvent :: Ptr (TQShortcut a) -> Ptr (TQEvent t1) -> IO ()

instance QcustomEvent (QShortcutSc a) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QShortcut_customEvent cobj_x0 cobj_x1

instance QdisconnectNotify (QShortcut ()) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QShortcut_disconnectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QShortcut_disconnectNotify" qtc_QShortcut_disconnectNotify :: Ptr (TQShortcut a) -> CWString -> IO ()

instance QdisconnectNotify (QShortcutSc a) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QShortcut_disconnectNotify cobj_x0 cstr_x1

instance QeventFilter (QShortcut ()) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QShortcut_eventFilter_h cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QShortcut_eventFilter_h" qtc_QShortcut_eventFilter_h :: Ptr (TQShortcut a) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO CBool

instance QeventFilter (QShortcutSc a) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QShortcut_eventFilter_h cobj_x0 cobj_x1 cobj_x2

instance Qreceivers (QShortcut ()) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QShortcut_receivers cobj_x0 cstr_x1

foreign import ccall "qtc_QShortcut_receivers" qtc_QShortcut_receivers :: Ptr (TQShortcut a) -> CWString -> IO CInt

instance Qreceivers (QShortcutSc a) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QShortcut_receivers cobj_x0 cstr_x1

instance Qsender (QShortcut ()) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QShortcut_sender cobj_x0

foreign import ccall "qtc_QShortcut_sender" qtc_QShortcut_sender :: Ptr (TQShortcut a) -> IO (Ptr (TQObject ()))

instance Qsender (QShortcutSc a) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QShortcut_sender cobj_x0

instance QtimerEvent (QShortcut ()) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QShortcut_timerEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QShortcut_timerEvent" qtc_QShortcut_timerEvent :: Ptr (TQShortcut a) -> Ptr (TQTimerEvent t1) -> IO ()

instance QtimerEvent (QShortcutSc a) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QShortcut_timerEvent cobj_x0 cobj_x1

