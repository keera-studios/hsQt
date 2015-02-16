{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QTextFrame.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:21
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QTextFrame (
  qTextFrame
  ,childFrames
  ,frameFormat
  ,layoutData
  ,parentFrame
  ,setFrameFormat
  ,setLayoutData
  ,qTextFrame_delete
  ,qTextFrame_deleteLater
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

instance QuserMethod (QTextFrame ()) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QTextFrame_userMethod cobj_qobj (toCInt evid)

foreign import ccall "qtc_QTextFrame_userMethod" qtc_QTextFrame_userMethod :: Ptr (TQTextFrame a) -> CInt -> IO ()

instance QuserMethod (QTextFrameSc a) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QTextFrame_userMethod cobj_qobj (toCInt evid)

instance QuserMethod (QTextFrame ()) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QTextFrame_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

foreign import ccall "qtc_QTextFrame_userMethodVariant" qtc_QTextFrame_userMethodVariant :: Ptr (TQTextFrame a) -> CInt -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))

instance QuserMethod (QTextFrameSc a) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QTextFrame_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

qTextFrame :: (QTextDocument t1) -> IO (QTextFrame ())
qTextFrame (x1)
  = withQTextFrameResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextFrame cobj_x1

foreign import ccall "qtc_QTextFrame" qtc_QTextFrame :: Ptr (TQTextDocument t1) -> IO (Ptr (TQTextFrame ()))

childFrames :: QTextFrame a -> (()) -> IO ([QTextFrame ()])
childFrames x0 ()
  = withQListQTextFrameResult $ \arr ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextFrame_childFrames cobj_x0 arr

foreign import ccall "qtc_QTextFrame_childFrames" qtc_QTextFrame_childFrames :: Ptr (TQTextFrame a) -> Ptr (Ptr (TQTextFrame ())) -> IO CInt

instance QfirstCursorPosition (QTextFrame a) (()) where
 firstCursorPosition x0 ()
  = withQTextCursorResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextFrame_firstCursorPosition cobj_x0

foreign import ccall "qtc_QTextFrame_firstCursorPosition" qtc_QTextFrame_firstCursorPosition :: Ptr (TQTextFrame a) -> IO (Ptr (TQTextCursor ()))

instance QfirstPosition (QTextFrame a) (()) where
 firstPosition x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextFrame_firstPosition cobj_x0

foreign import ccall "qtc_QTextFrame_firstPosition" qtc_QTextFrame_firstPosition :: Ptr (TQTextFrame a) -> IO CInt

frameFormat :: QTextFrame a -> (()) -> IO (QTextFrameFormat ())
frameFormat x0 ()
  = withQTextFrameFormatResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextFrame_frameFormat cobj_x0

foreign import ccall "qtc_QTextFrame_frameFormat" qtc_QTextFrame_frameFormat :: Ptr (TQTextFrame a) -> IO (Ptr (TQTextFrameFormat ()))

instance QlastCursorPosition (QTextFrame a) (()) where
 lastCursorPosition x0 ()
  = withQTextCursorResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextFrame_lastCursorPosition cobj_x0

foreign import ccall "qtc_QTextFrame_lastCursorPosition" qtc_QTextFrame_lastCursorPosition :: Ptr (TQTextFrame a) -> IO (Ptr (TQTextCursor ()))

instance QlastPosition (QTextFrame a) (()) where
 lastPosition x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextFrame_lastPosition cobj_x0

foreign import ccall "qtc_QTextFrame_lastPosition" qtc_QTextFrame_lastPosition :: Ptr (TQTextFrame a) -> IO CInt

layoutData :: QTextFrame a -> (()) -> IO (QTextFrameLayoutData ())
layoutData x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextFrame_layoutData cobj_x0

foreign import ccall "qtc_QTextFrame_layoutData" qtc_QTextFrame_layoutData :: Ptr (TQTextFrame a) -> IO (Ptr (TQTextFrameLayoutData ()))

parentFrame :: QTextFrame a -> (()) -> IO (QTextFrame ())
parentFrame x0 ()
  = withQTextFrameResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextFrame_parentFrame cobj_x0

foreign import ccall "qtc_QTextFrame_parentFrame" qtc_QTextFrame_parentFrame :: Ptr (TQTextFrame a) -> IO (Ptr (TQTextFrame ()))

setFrameFormat :: QTextFrame a -> ((QTextFrameFormat t1)) -> IO ()
setFrameFormat x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextFrame_setFrameFormat cobj_x0 cobj_x1

foreign import ccall "qtc_QTextFrame_setFrameFormat" qtc_QTextFrame_setFrameFormat :: Ptr (TQTextFrame a) -> Ptr (TQTextFrameFormat t1) -> IO ()

setLayoutData :: QTextFrame a -> ((QTextFrameLayoutData t1)) -> IO ()
setLayoutData x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextFrame_setLayoutData cobj_x0 cobj_x1

foreign import ccall "qtc_QTextFrame_setLayoutData" qtc_QTextFrame_setLayoutData :: Ptr (TQTextFrame a) -> Ptr (TQTextFrameLayoutData t1) -> IO ()

qTextFrame_delete :: QTextFrame a -> IO ()
qTextFrame_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextFrame_delete cobj_x0

foreign import ccall "qtc_QTextFrame_delete" qtc_QTextFrame_delete :: Ptr (TQTextFrame a) -> IO ()

qTextFrame_deleteLater :: QTextFrame a -> IO ()
qTextFrame_deleteLater x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextFrame_deleteLater cobj_x0

foreign import ccall "qtc_QTextFrame_deleteLater" qtc_QTextFrame_deleteLater :: Ptr (TQTextFrame a) -> IO ()

instance QsetFormat (QTextFrame ()) ((QTextFormat t1)) where
 setFormat x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextFrame_setFormat cobj_x0 cobj_x1

foreign import ccall "qtc_QTextFrame_setFormat" qtc_QTextFrame_setFormat :: Ptr (TQTextFrame a) -> Ptr (TQTextFormat t1) -> IO ()

instance QsetFormat (QTextFrameSc a) ((QTextFormat t1)) where
 setFormat x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextFrame_setFormat cobj_x0 cobj_x1

instance QchildEvent (QTextFrame ()) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextFrame_childEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTextFrame_childEvent" qtc_QTextFrame_childEvent :: Ptr (TQTextFrame a) -> Ptr (TQChildEvent t1) -> IO ()

instance QchildEvent (QTextFrameSc a) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextFrame_childEvent cobj_x0 cobj_x1

instance QconnectNotify (QTextFrame ()) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTextFrame_connectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QTextFrame_connectNotify" qtc_QTextFrame_connectNotify :: Ptr (TQTextFrame a) -> CWString -> IO ()

instance QconnectNotify (QTextFrameSc a) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTextFrame_connectNotify cobj_x0 cstr_x1

instance QcustomEvent (QTextFrame ()) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextFrame_customEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTextFrame_customEvent" qtc_QTextFrame_customEvent :: Ptr (TQTextFrame a) -> Ptr (TQEvent t1) -> IO ()

instance QcustomEvent (QTextFrameSc a) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextFrame_customEvent cobj_x0 cobj_x1

instance QdisconnectNotify (QTextFrame ()) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTextFrame_disconnectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QTextFrame_disconnectNotify" qtc_QTextFrame_disconnectNotify :: Ptr (TQTextFrame a) -> CWString -> IO ()

instance QdisconnectNotify (QTextFrameSc a) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTextFrame_disconnectNotify cobj_x0 cstr_x1

instance Qevent (QTextFrame ()) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextFrame_event_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTextFrame_event_h" qtc_QTextFrame_event_h :: Ptr (TQTextFrame a) -> Ptr (TQEvent t1) -> IO CBool

instance Qevent (QTextFrameSc a) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextFrame_event_h cobj_x0 cobj_x1

instance QeventFilter (QTextFrame ()) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QTextFrame_eventFilter_h cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QTextFrame_eventFilter_h" qtc_QTextFrame_eventFilter_h :: Ptr (TQTextFrame a) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO CBool

instance QeventFilter (QTextFrameSc a) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QTextFrame_eventFilter_h cobj_x0 cobj_x1 cobj_x2

instance Qreceivers (QTextFrame ()) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTextFrame_receivers cobj_x0 cstr_x1

foreign import ccall "qtc_QTextFrame_receivers" qtc_QTextFrame_receivers :: Ptr (TQTextFrame a) -> CWString -> IO CInt

instance Qreceivers (QTextFrameSc a) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTextFrame_receivers cobj_x0 cstr_x1

instance Qsender (QTextFrame ()) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextFrame_sender cobj_x0

foreign import ccall "qtc_QTextFrame_sender" qtc_QTextFrame_sender :: Ptr (TQTextFrame a) -> IO (Ptr (TQObject ()))

instance Qsender (QTextFrameSc a) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextFrame_sender cobj_x0

instance QtimerEvent (QTextFrame ()) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextFrame_timerEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTextFrame_timerEvent" qtc_QTextFrame_timerEvent :: Ptr (TQTextFrame a) -> Ptr (TQTimerEvent t1) -> IO ()

instance QtimerEvent (QTextFrameSc a) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextFrame_timerEvent cobj_x0 cobj_x1

