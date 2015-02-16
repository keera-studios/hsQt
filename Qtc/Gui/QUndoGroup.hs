{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QUndoGroup.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:16
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QUndoGroup (
  QqUndoGroup(..)
  ,activeStack
  ,addStack
  ,removeStack
  ,setActiveStack
  ,stacks
  ,qUndoGroup_delete
  ,qUndoGroup_deleteLater
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

instance QuserMethod (QUndoGroup ()) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QUndoGroup_userMethod cobj_qobj (toCInt evid)

foreign import ccall "qtc_QUndoGroup_userMethod" qtc_QUndoGroup_userMethod :: Ptr (TQUndoGroup a) -> CInt -> IO ()

instance QuserMethod (QUndoGroupSc a) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QUndoGroup_userMethod cobj_qobj (toCInt evid)

instance QuserMethod (QUndoGroup ()) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QUndoGroup_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

foreign import ccall "qtc_QUndoGroup_userMethodVariant" qtc_QUndoGroup_userMethodVariant :: Ptr (TQUndoGroup a) -> CInt -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))

instance QuserMethod (QUndoGroupSc a) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QUndoGroup_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

class QqUndoGroup x1 where
  qUndoGroup :: x1 -> IO (QUndoGroup ())

instance QqUndoGroup (()) where
 qUndoGroup ()
  = withQUndoGroupResult $
    qtc_QUndoGroup

foreign import ccall "qtc_QUndoGroup" qtc_QUndoGroup :: IO (Ptr (TQUndoGroup ()))

instance QqUndoGroup ((QObject t1)) where
 qUndoGroup (x1)
  = withQUndoGroupResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUndoGroup1 cobj_x1

foreign import ccall "qtc_QUndoGroup1" qtc_QUndoGroup1 :: Ptr (TQObject t1) -> IO (Ptr (TQUndoGroup ()))

activeStack :: QUndoGroup a -> (()) -> IO (QUndoStack ())
activeStack x0 ()
  = withQUndoStackResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoGroup_activeStack cobj_x0

foreign import ccall "qtc_QUndoGroup_activeStack" qtc_QUndoGroup_activeStack :: Ptr (TQUndoGroup a) -> IO (Ptr (TQUndoStack ()))

addStack :: QUndoGroup a -> ((QUndoStack t1)) -> IO ()
addStack x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUndoGroup_addStack cobj_x0 cobj_x1

foreign import ccall "qtc_QUndoGroup_addStack" qtc_QUndoGroup_addStack :: Ptr (TQUndoGroup a) -> Ptr (TQUndoStack t1) -> IO ()

instance QcanRedo (QUndoGroup a) (()) where
 canRedo x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoGroup_canRedo cobj_x0

foreign import ccall "qtc_QUndoGroup_canRedo" qtc_QUndoGroup_canRedo :: Ptr (TQUndoGroup a) -> IO CBool

instance QcanUndo (QUndoGroup a) (()) where
 canUndo x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoGroup_canUndo cobj_x0

foreign import ccall "qtc_QUndoGroup_canUndo" qtc_QUndoGroup_canUndo :: Ptr (TQUndoGroup a) -> IO CBool

instance QcreateRedoAction (QUndoGroup a) ((QObject t1)) where
 createRedoAction x0 (x1)
  = withQActionResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUndoGroup_createRedoAction cobj_x0 cobj_x1

foreign import ccall "qtc_QUndoGroup_createRedoAction" qtc_QUndoGroup_createRedoAction :: Ptr (TQUndoGroup a) -> Ptr (TQObject t1) -> IO (Ptr (TQAction ()))

instance QcreateRedoAction (QUndoGroup a) ((QObject t1, String)) where
 createRedoAction x0 (x1, x2)
  = withQActionResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QUndoGroup_createRedoAction1 cobj_x0 cobj_x1 cstr_x2

foreign import ccall "qtc_QUndoGroup_createRedoAction1" qtc_QUndoGroup_createRedoAction1 :: Ptr (TQUndoGroup a) -> Ptr (TQObject t1) -> CWString -> IO (Ptr (TQAction ()))

instance QcreateUndoAction (QUndoGroup a) ((QObject t1)) where
 createUndoAction x0 (x1)
  = withQActionResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUndoGroup_createUndoAction cobj_x0 cobj_x1

foreign import ccall "qtc_QUndoGroup_createUndoAction" qtc_QUndoGroup_createUndoAction :: Ptr (TQUndoGroup a) -> Ptr (TQObject t1) -> IO (Ptr (TQAction ()))

instance QcreateUndoAction (QUndoGroup a) ((QObject t1, String)) where
 createUndoAction x0 (x1, x2)
  = withQActionResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QUndoGroup_createUndoAction1 cobj_x0 cobj_x1 cstr_x2

foreign import ccall "qtc_QUndoGroup_createUndoAction1" qtc_QUndoGroup_createUndoAction1 :: Ptr (TQUndoGroup a) -> Ptr (TQObject t1) -> CWString -> IO (Ptr (TQAction ()))

instance QisClean (QUndoGroup a) (()) where
 isClean x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoGroup_isClean cobj_x0

foreign import ccall "qtc_QUndoGroup_isClean" qtc_QUndoGroup_isClean :: Ptr (TQUndoGroup a) -> IO CBool

instance Qredo (QUndoGroup a) (()) where
 redo x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoGroup_redo cobj_x0

foreign import ccall "qtc_QUndoGroup_redo" qtc_QUndoGroup_redo :: Ptr (TQUndoGroup a) -> IO ()

instance QredoText (QUndoGroup a) (()) where
 redoText x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoGroup_redoText cobj_x0

foreign import ccall "qtc_QUndoGroup_redoText" qtc_QUndoGroup_redoText :: Ptr (TQUndoGroup a) -> IO (Ptr (TQString ()))

removeStack :: QUndoGroup a -> ((QUndoStack t1)) -> IO ()
removeStack x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUndoGroup_removeStack cobj_x0 cobj_x1

foreign import ccall "qtc_QUndoGroup_removeStack" qtc_QUndoGroup_removeStack :: Ptr (TQUndoGroup a) -> Ptr (TQUndoStack t1) -> IO ()

setActiveStack :: QUndoGroup a -> ((QUndoStack t1)) -> IO ()
setActiveStack x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUndoGroup_setActiveStack cobj_x0 cobj_x1

foreign import ccall "qtc_QUndoGroup_setActiveStack" qtc_QUndoGroup_setActiveStack :: Ptr (TQUndoGroup a) -> Ptr (TQUndoStack t1) -> IO ()

stacks :: QUndoGroup a -> (()) -> IO ([QUndoStack ()])
stacks x0 ()
  = withQListQUndoStackResult $ \arr ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoGroup_stacks cobj_x0 arr

foreign import ccall "qtc_QUndoGroup_stacks" qtc_QUndoGroup_stacks :: Ptr (TQUndoGroup a) -> Ptr (Ptr (TQUndoStack ())) -> IO CInt

instance Qundo (QUndoGroup a) (()) where
 undo x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoGroup_undo cobj_x0

foreign import ccall "qtc_QUndoGroup_undo" qtc_QUndoGroup_undo :: Ptr (TQUndoGroup a) -> IO ()

instance QundoText (QUndoGroup a) (()) where
 undoText x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoGroup_undoText cobj_x0

foreign import ccall "qtc_QUndoGroup_undoText" qtc_QUndoGroup_undoText :: Ptr (TQUndoGroup a) -> IO (Ptr (TQString ()))

qUndoGroup_delete :: QUndoGroup a -> IO ()
qUndoGroup_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoGroup_delete cobj_x0

foreign import ccall "qtc_QUndoGroup_delete" qtc_QUndoGroup_delete :: Ptr (TQUndoGroup a) -> IO ()

qUndoGroup_deleteLater :: QUndoGroup a -> IO ()
qUndoGroup_deleteLater x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoGroup_deleteLater cobj_x0

foreign import ccall "qtc_QUndoGroup_deleteLater" qtc_QUndoGroup_deleteLater :: Ptr (TQUndoGroup a) -> IO ()

instance QchildEvent (QUndoGroup ()) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUndoGroup_childEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QUndoGroup_childEvent" qtc_QUndoGroup_childEvent :: Ptr (TQUndoGroup a) -> Ptr (TQChildEvent t1) -> IO ()

instance QchildEvent (QUndoGroupSc a) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUndoGroup_childEvent cobj_x0 cobj_x1

instance QconnectNotify (QUndoGroup ()) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QUndoGroup_connectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QUndoGroup_connectNotify" qtc_QUndoGroup_connectNotify :: Ptr (TQUndoGroup a) -> CWString -> IO ()

instance QconnectNotify (QUndoGroupSc a) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QUndoGroup_connectNotify cobj_x0 cstr_x1

instance QcustomEvent (QUndoGroup ()) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUndoGroup_customEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QUndoGroup_customEvent" qtc_QUndoGroup_customEvent :: Ptr (TQUndoGroup a) -> Ptr (TQEvent t1) -> IO ()

instance QcustomEvent (QUndoGroupSc a) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUndoGroup_customEvent cobj_x0 cobj_x1

instance QdisconnectNotify (QUndoGroup ()) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QUndoGroup_disconnectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QUndoGroup_disconnectNotify" qtc_QUndoGroup_disconnectNotify :: Ptr (TQUndoGroup a) -> CWString -> IO ()

instance QdisconnectNotify (QUndoGroupSc a) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QUndoGroup_disconnectNotify cobj_x0 cstr_x1

instance Qevent (QUndoGroup ()) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUndoGroup_event_h cobj_x0 cobj_x1

foreign import ccall "qtc_QUndoGroup_event_h" qtc_QUndoGroup_event_h :: Ptr (TQUndoGroup a) -> Ptr (TQEvent t1) -> IO CBool

instance Qevent (QUndoGroupSc a) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUndoGroup_event_h cobj_x0 cobj_x1

instance QeventFilter (QUndoGroup ()) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QUndoGroup_eventFilter_h cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QUndoGroup_eventFilter_h" qtc_QUndoGroup_eventFilter_h :: Ptr (TQUndoGroup a) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO CBool

instance QeventFilter (QUndoGroupSc a) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QUndoGroup_eventFilter_h cobj_x0 cobj_x1 cobj_x2

instance Qreceivers (QUndoGroup ()) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QUndoGroup_receivers cobj_x0 cstr_x1

foreign import ccall "qtc_QUndoGroup_receivers" qtc_QUndoGroup_receivers :: Ptr (TQUndoGroup a) -> CWString -> IO CInt

instance Qreceivers (QUndoGroupSc a) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QUndoGroup_receivers cobj_x0 cstr_x1

instance Qsender (QUndoGroup ()) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoGroup_sender cobj_x0

foreign import ccall "qtc_QUndoGroup_sender" qtc_QUndoGroup_sender :: Ptr (TQUndoGroup a) -> IO (Ptr (TQObject ()))

instance Qsender (QUndoGroupSc a) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoGroup_sender cobj_x0

instance QtimerEvent (QUndoGroup ()) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUndoGroup_timerEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QUndoGroup_timerEvent" qtc_QUndoGroup_timerEvent :: Ptr (TQUndoGroup a) -> Ptr (TQTimerEvent t1) -> IO ()

instance QtimerEvent (QUndoGroupSc a) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUndoGroup_timerEvent cobj_x0 cobj_x1

