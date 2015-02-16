{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QUndoStack.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:21
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QUndoStack (
  QqUndoStack(..)
  ,beginMacro
  ,cleanIndex
  ,endMacro
  ,push
  ,QsetActive(..)
  ,setClean
  ,setIndex
  ,setUndoLimit
  ,undoLimit
  ,qUndoStack_delete
  ,qUndoStack_deleteLater
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

instance QuserMethod (QUndoStack ()) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QUndoStack_userMethod cobj_qobj (toCInt evid)

foreign import ccall "qtc_QUndoStack_userMethod" qtc_QUndoStack_userMethod :: Ptr (TQUndoStack a) -> CInt -> IO ()

instance QuserMethod (QUndoStackSc a) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QUndoStack_userMethod cobj_qobj (toCInt evid)

instance QuserMethod (QUndoStack ()) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QUndoStack_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

foreign import ccall "qtc_QUndoStack_userMethodVariant" qtc_QUndoStack_userMethodVariant :: Ptr (TQUndoStack a) -> CInt -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))

instance QuserMethod (QUndoStackSc a) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QUndoStack_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

class QqUndoStack x1 where
  qUndoStack :: x1 -> IO (QUndoStack ())

instance QqUndoStack (()) where
 qUndoStack ()
  = withQUndoStackResult $
    qtc_QUndoStack

foreign import ccall "qtc_QUndoStack" qtc_QUndoStack :: IO (Ptr (TQUndoStack ()))

instance QqUndoStack ((QObject t1)) where
 qUndoStack (x1)
  = withQUndoStackResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUndoStack1 cobj_x1

foreign import ccall "qtc_QUndoStack1" qtc_QUndoStack1 :: Ptr (TQObject t1) -> IO (Ptr (TQUndoStack ()))

beginMacro :: QUndoStack a -> ((String)) -> IO ()
beginMacro x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QUndoStack_beginMacro cobj_x0 cstr_x1

foreign import ccall "qtc_QUndoStack_beginMacro" qtc_QUndoStack_beginMacro :: Ptr (TQUndoStack a) -> CWString -> IO ()

instance QcanRedo (QUndoStack a) (()) where
 canRedo x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoStack_canRedo cobj_x0

foreign import ccall "qtc_QUndoStack_canRedo" qtc_QUndoStack_canRedo :: Ptr (TQUndoStack a) -> IO CBool

instance QcanUndo (QUndoStack a) (()) where
 canUndo x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoStack_canUndo cobj_x0

foreign import ccall "qtc_QUndoStack_canUndo" qtc_QUndoStack_canUndo :: Ptr (TQUndoStack a) -> IO CBool

cleanIndex :: QUndoStack a -> (()) -> IO (Int)
cleanIndex x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoStack_cleanIndex cobj_x0

foreign import ccall "qtc_QUndoStack_cleanIndex" qtc_QUndoStack_cleanIndex :: Ptr (TQUndoStack a) -> IO CInt

instance Qclear (QUndoStack a) (()) where
 clear x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoStack_clear cobj_x0

foreign import ccall "qtc_QUndoStack_clear" qtc_QUndoStack_clear :: Ptr (TQUndoStack a) -> IO ()

instance Qcount (QUndoStack a) (()) where
 count x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoStack_count cobj_x0

foreign import ccall "qtc_QUndoStack_count" qtc_QUndoStack_count :: Ptr (TQUndoStack a) -> IO CInt

instance QcreateRedoAction (QUndoStack a) ((QObject t1)) where
 createRedoAction x0 (x1)
  = withQActionResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUndoStack_createRedoAction cobj_x0 cobj_x1

foreign import ccall "qtc_QUndoStack_createRedoAction" qtc_QUndoStack_createRedoAction :: Ptr (TQUndoStack a) -> Ptr (TQObject t1) -> IO (Ptr (TQAction ()))

instance QcreateRedoAction (QUndoStack a) ((QObject t1, String)) where
 createRedoAction x0 (x1, x2)
  = withQActionResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QUndoStack_createRedoAction1 cobj_x0 cobj_x1 cstr_x2

foreign import ccall "qtc_QUndoStack_createRedoAction1" qtc_QUndoStack_createRedoAction1 :: Ptr (TQUndoStack a) -> Ptr (TQObject t1) -> CWString -> IO (Ptr (TQAction ()))

instance QcreateUndoAction (QUndoStack a) ((QObject t1)) where
 createUndoAction x0 (x1)
  = withQActionResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUndoStack_createUndoAction cobj_x0 cobj_x1

foreign import ccall "qtc_QUndoStack_createUndoAction" qtc_QUndoStack_createUndoAction :: Ptr (TQUndoStack a) -> Ptr (TQObject t1) -> IO (Ptr (TQAction ()))

instance QcreateUndoAction (QUndoStack a) ((QObject t1, String)) where
 createUndoAction x0 (x1, x2)
  = withQActionResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QUndoStack_createUndoAction1 cobj_x0 cobj_x1 cstr_x2

foreign import ccall "qtc_QUndoStack_createUndoAction1" qtc_QUndoStack_createUndoAction1 :: Ptr (TQUndoStack a) -> Ptr (TQObject t1) -> CWString -> IO (Ptr (TQAction ()))

endMacro :: QUndoStack a -> (()) -> IO ()
endMacro x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoStack_endMacro cobj_x0

foreign import ccall "qtc_QUndoStack_endMacro" qtc_QUndoStack_endMacro :: Ptr (TQUndoStack a) -> IO ()

instance Qindex (QUndoStack a) (()) (IO (Int)) where
 index x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoStack_index cobj_x0

foreign import ccall "qtc_QUndoStack_index" qtc_QUndoStack_index :: Ptr (TQUndoStack a) -> IO CInt

instance QisActive (QUndoStack a) (()) where
 isActive x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoStack_isActive cobj_x0

foreign import ccall "qtc_QUndoStack_isActive" qtc_QUndoStack_isActive :: Ptr (TQUndoStack a) -> IO CBool

instance QisClean (QUndoStack a) (()) where
 isClean x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoStack_isClean cobj_x0

foreign import ccall "qtc_QUndoStack_isClean" qtc_QUndoStack_isClean :: Ptr (TQUndoStack a) -> IO CBool

push :: QUndoStack a -> ((QUndoCommand t1)) -> IO ()
push x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUndoStack_push cobj_x0 cobj_x1

foreign import ccall "qtc_QUndoStack_push" qtc_QUndoStack_push :: Ptr (TQUndoStack a) -> Ptr (TQUndoCommand t1) -> IO ()

instance Qredo (QUndoStack a) (()) where
 redo x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoStack_redo cobj_x0

foreign import ccall "qtc_QUndoStack_redo" qtc_QUndoStack_redo :: Ptr (TQUndoStack a) -> IO ()

instance QredoText (QUndoStack a) (()) where
 redoText x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoStack_redoText cobj_x0

foreign import ccall "qtc_QUndoStack_redoText" qtc_QUndoStack_redoText :: Ptr (TQUndoStack a) -> IO (Ptr (TQString ()))

class QsetActive x1 where
 setActive :: QUndoStack a -> x1 -> IO ()

instance QsetActive (()) where
 setActive x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoStack_setActive cobj_x0

foreign import ccall "qtc_QUndoStack_setActive" qtc_QUndoStack_setActive :: Ptr (TQUndoStack a) -> IO ()

instance QsetActive ((Bool)) where
 setActive x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoStack_setActive1 cobj_x0 (toCBool x1)

foreign import ccall "qtc_QUndoStack_setActive1" qtc_QUndoStack_setActive1 :: Ptr (TQUndoStack a) -> CBool -> IO ()

setClean :: QUndoStack a -> (()) -> IO ()
setClean x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoStack_setClean cobj_x0

foreign import ccall "qtc_QUndoStack_setClean" qtc_QUndoStack_setClean :: Ptr (TQUndoStack a) -> IO ()

setIndex :: QUndoStack a -> ((Int)) -> IO ()
setIndex x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoStack_setIndex cobj_x0 (toCInt x1)

foreign import ccall "qtc_QUndoStack_setIndex" qtc_QUndoStack_setIndex :: Ptr (TQUndoStack a) -> CInt -> IO ()

setUndoLimit :: QUndoStack a -> ((Int)) -> IO ()
setUndoLimit x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoStack_setUndoLimit cobj_x0 (toCInt x1)

foreign import ccall "qtc_QUndoStack_setUndoLimit" qtc_QUndoStack_setUndoLimit :: Ptr (TQUndoStack a) -> CInt -> IO ()

instance Qtext (QUndoStack a) ((Int)) (IO (String)) where
 text x0 (x1)
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoStack_text cobj_x0 (toCInt x1)

foreign import ccall "qtc_QUndoStack_text" qtc_QUndoStack_text :: Ptr (TQUndoStack a) -> CInt -> IO (Ptr (TQString ()))

instance Qundo (QUndoStack a) (()) where
 undo x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoStack_undo cobj_x0

foreign import ccall "qtc_QUndoStack_undo" qtc_QUndoStack_undo :: Ptr (TQUndoStack a) -> IO ()

undoLimit :: QUndoStack a -> (()) -> IO (Int)
undoLimit x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoStack_undoLimit cobj_x0

foreign import ccall "qtc_QUndoStack_undoLimit" qtc_QUndoStack_undoLimit :: Ptr (TQUndoStack a) -> IO CInt

instance QundoText (QUndoStack a) (()) where
 undoText x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoStack_undoText cobj_x0

foreign import ccall "qtc_QUndoStack_undoText" qtc_QUndoStack_undoText :: Ptr (TQUndoStack a) -> IO (Ptr (TQString ()))

qUndoStack_delete :: QUndoStack a -> IO ()
qUndoStack_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoStack_delete cobj_x0

foreign import ccall "qtc_QUndoStack_delete" qtc_QUndoStack_delete :: Ptr (TQUndoStack a) -> IO ()

qUndoStack_deleteLater :: QUndoStack a -> IO ()
qUndoStack_deleteLater x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoStack_deleteLater cobj_x0

foreign import ccall "qtc_QUndoStack_deleteLater" qtc_QUndoStack_deleteLater :: Ptr (TQUndoStack a) -> IO ()

instance QchildEvent (QUndoStack ()) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUndoStack_childEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QUndoStack_childEvent" qtc_QUndoStack_childEvent :: Ptr (TQUndoStack a) -> Ptr (TQChildEvent t1) -> IO ()

instance QchildEvent (QUndoStackSc a) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUndoStack_childEvent cobj_x0 cobj_x1

instance QconnectNotify (QUndoStack ()) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QUndoStack_connectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QUndoStack_connectNotify" qtc_QUndoStack_connectNotify :: Ptr (TQUndoStack a) -> CWString -> IO ()

instance QconnectNotify (QUndoStackSc a) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QUndoStack_connectNotify cobj_x0 cstr_x1

instance QcustomEvent (QUndoStack ()) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUndoStack_customEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QUndoStack_customEvent" qtc_QUndoStack_customEvent :: Ptr (TQUndoStack a) -> Ptr (TQEvent t1) -> IO ()

instance QcustomEvent (QUndoStackSc a) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUndoStack_customEvent cobj_x0 cobj_x1

instance QdisconnectNotify (QUndoStack ()) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QUndoStack_disconnectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QUndoStack_disconnectNotify" qtc_QUndoStack_disconnectNotify :: Ptr (TQUndoStack a) -> CWString -> IO ()

instance QdisconnectNotify (QUndoStackSc a) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QUndoStack_disconnectNotify cobj_x0 cstr_x1

instance Qevent (QUndoStack ()) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUndoStack_event_h cobj_x0 cobj_x1

foreign import ccall "qtc_QUndoStack_event_h" qtc_QUndoStack_event_h :: Ptr (TQUndoStack a) -> Ptr (TQEvent t1) -> IO CBool

instance Qevent (QUndoStackSc a) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUndoStack_event_h cobj_x0 cobj_x1

instance QeventFilter (QUndoStack ()) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QUndoStack_eventFilter_h cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QUndoStack_eventFilter_h" qtc_QUndoStack_eventFilter_h :: Ptr (TQUndoStack a) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO CBool

instance QeventFilter (QUndoStackSc a) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QUndoStack_eventFilter_h cobj_x0 cobj_x1 cobj_x2

instance Qreceivers (QUndoStack ()) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QUndoStack_receivers cobj_x0 cstr_x1

foreign import ccall "qtc_QUndoStack_receivers" qtc_QUndoStack_receivers :: Ptr (TQUndoStack a) -> CWString -> IO CInt

instance Qreceivers (QUndoStackSc a) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QUndoStack_receivers cobj_x0 cstr_x1

instance Qsender (QUndoStack ()) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoStack_sender cobj_x0

foreign import ccall "qtc_QUndoStack_sender" qtc_QUndoStack_sender :: Ptr (TQUndoStack a) -> IO (Ptr (TQObject ()))

instance Qsender (QUndoStackSc a) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoStack_sender cobj_x0

instance QtimerEvent (QUndoStack ()) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUndoStack_timerEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QUndoStack_timerEvent" qtc_QUndoStack_timerEvent :: Ptr (TQUndoStack a) -> Ptr (TQTimerEvent t1) -> IO ()

instance QtimerEvent (QUndoStackSc a) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUndoStack_timerEvent cobj_x0 cobj_x1

