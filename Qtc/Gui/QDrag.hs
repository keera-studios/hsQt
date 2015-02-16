{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QDrag.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:26
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QDrag (
  qDrag
  ,setDragCursor
  ,setHotSpot, qsetHotSpot
  ,target
  ,qDrag_delete
  ,qDrag_deleteLater
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

instance QuserMethod (QDrag ()) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QDrag_userMethod cobj_qobj (toCInt evid)

foreign import ccall "qtc_QDrag_userMethod" qtc_QDrag_userMethod :: Ptr (TQDrag a) -> CInt -> IO ()

instance QuserMethod (QDragSc a) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QDrag_userMethod cobj_qobj (toCInt evid)

instance QuserMethod (QDrag ()) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QDrag_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

foreign import ccall "qtc_QDrag_userMethodVariant" qtc_QDrag_userMethodVariant :: Ptr (TQDrag a) -> CInt -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))

instance QuserMethod (QDragSc a) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QDrag_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

qDrag :: (QWidget t1) -> IO (QDrag ())
qDrag (x1)
  = withQDragResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDrag cobj_x1

foreign import ccall "qtc_QDrag" qtc_QDrag :: Ptr (TQWidget t1) -> IO (Ptr (TQDrag ()))

instance Qexec (QDrag a) (()) (IO (DropAction)) where
 exec x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDrag_exec cobj_x0

foreign import ccall "qtc_QDrag_exec" qtc_QDrag_exec :: Ptr (TQDrag a) -> IO CLong

instance Qexec (QDrag a) ((DropActions)) (IO (DropAction)) where
 exec x0 (x1)
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDrag_exec1 cobj_x0 (toCLong $ qFlags_toInt x1)

foreign import ccall "qtc_QDrag_exec1" qtc_QDrag_exec1 :: Ptr (TQDrag a) -> CLong -> IO CLong

instance Qexec (QDrag a) ((DropActions, DropAction)) (IO (DropAction)) where
 exec x0 (x1, x2)
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDrag_exec2 cobj_x0 (toCLong $ qFlags_toInt x1) (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QDrag_exec2" qtc_QDrag_exec2 :: Ptr (TQDrag a) -> CLong -> CLong -> IO CLong

instance QhotSpot (QDrag a) (()) where
 hotSpot x0 ()
  = withPointResult $ \cpoint_ret_x cpoint_ret_y ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDrag_hotSpot_qth cobj_x0 cpoint_ret_x cpoint_ret_y

foreign import ccall "qtc_QDrag_hotSpot_qth" qtc_QDrag_hotSpot_qth :: Ptr (TQDrag a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QqhotSpot (QDrag a) (()) where
 qhotSpot x0 ()
  = withQPointResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDrag_hotSpot cobj_x0

foreign import ccall "qtc_QDrag_hotSpot" qtc_QDrag_hotSpot :: Ptr (TQDrag a) -> IO (Ptr (TQPoint ()))

instance QmimeData (QDrag a) (()) where
 mimeData x0 ()
  = withQMimeDataResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDrag_mimeData cobj_x0

foreign import ccall "qtc_QDrag_mimeData" qtc_QDrag_mimeData :: Ptr (TQDrag a) -> IO (Ptr (TQMimeData ()))

instance Qpixmap (QDrag ()) (()) where
 pixmap x0 ()
  = withQPixmapResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDrag_pixmap cobj_x0

foreign import ccall "qtc_QDrag_pixmap" qtc_QDrag_pixmap :: Ptr (TQDrag a) -> IO (Ptr (TQPixmap ()))

instance Qpixmap (QDragSc a) (()) where
 pixmap x0 ()
  = withQPixmapResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDrag_pixmap cobj_x0

instance Qpixmap_nf (QDrag ()) (()) where
 pixmap_nf x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDrag_pixmap cobj_x0

instance Qpixmap_nf (QDragSc a) (()) where
 pixmap_nf x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDrag_pixmap cobj_x0

setDragCursor :: QDrag a -> ((QPixmap t1, DropAction)) -> IO ()
setDragCursor x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDrag_setDragCursor cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QDrag_setDragCursor" qtc_QDrag_setDragCursor :: Ptr (TQDrag a) -> Ptr (TQPixmap t1) -> CLong -> IO ()

setHotSpot :: QDrag a -> ((Point)) -> IO ()
setHotSpot x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QDrag_setHotSpot_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

foreign import ccall "qtc_QDrag_setHotSpot_qth" qtc_QDrag_setHotSpot_qth :: Ptr (TQDrag a) -> CInt -> CInt -> IO ()

qsetHotSpot :: QDrag a -> ((QPoint t1)) -> IO ()
qsetHotSpot x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDrag_setHotSpot cobj_x0 cobj_x1

foreign import ccall "qtc_QDrag_setHotSpot" qtc_QDrag_setHotSpot :: Ptr (TQDrag a) -> Ptr (TQPoint t1) -> IO ()

instance QsetMimeData (QDrag a) ((QMimeData t1)) where
 setMimeData x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDrag_setMimeData cobj_x0 cobj_x1

foreign import ccall "qtc_QDrag_setMimeData" qtc_QDrag_setMimeData :: Ptr (TQDrag a) -> Ptr (TQMimeData t1) -> IO ()

instance QsetPixmap (QDrag a) ((QPixmap t1)) where
 setPixmap x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDrag_setPixmap cobj_x0 cobj_x1

foreign import ccall "qtc_QDrag_setPixmap" qtc_QDrag_setPixmap :: Ptr (TQDrag a) -> Ptr (TQPixmap t1) -> IO ()

instance Qsource (QDrag a) (()) (IO (QWidget ())) where
 source x0 ()
  = withQWidgetResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDrag_source cobj_x0

foreign import ccall "qtc_QDrag_source" qtc_QDrag_source :: Ptr (TQDrag a) -> IO (Ptr (TQWidget ()))

instance Qstart (QDrag a) (()) (IO (DropAction)) where
 start x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDrag_start cobj_x0

foreign import ccall "qtc_QDrag_start" qtc_QDrag_start :: Ptr (TQDrag a) -> IO CLong

instance Qstart (QDrag a) ((DropActions)) (IO (DropAction)) where
 start x0 (x1)
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDrag_start1 cobj_x0 (toCLong $ qFlags_toInt x1)

foreign import ccall "qtc_QDrag_start1" qtc_QDrag_start1 :: Ptr (TQDrag a) -> CLong -> IO CLong

target :: QDrag a -> (()) -> IO (QWidget ())
target x0 ()
  = withQWidgetResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDrag_target cobj_x0

foreign import ccall "qtc_QDrag_target" qtc_QDrag_target :: Ptr (TQDrag a) -> IO (Ptr (TQWidget ()))

qDrag_delete :: QDrag a -> IO ()
qDrag_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDrag_delete cobj_x0

foreign import ccall "qtc_QDrag_delete" qtc_QDrag_delete :: Ptr (TQDrag a) -> IO ()

qDrag_deleteLater :: QDrag a -> IO ()
qDrag_deleteLater x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDrag_deleteLater cobj_x0

foreign import ccall "qtc_QDrag_deleteLater" qtc_QDrag_deleteLater :: Ptr (TQDrag a) -> IO ()

instance QchildEvent (QDrag ()) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDrag_childEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QDrag_childEvent" qtc_QDrag_childEvent :: Ptr (TQDrag a) -> Ptr (TQChildEvent t1) -> IO ()

instance QchildEvent (QDragSc a) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDrag_childEvent cobj_x0 cobj_x1

instance QconnectNotify (QDrag ()) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QDrag_connectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QDrag_connectNotify" qtc_QDrag_connectNotify :: Ptr (TQDrag a) -> CWString -> IO ()

instance QconnectNotify (QDragSc a) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QDrag_connectNotify cobj_x0 cstr_x1

instance QcustomEvent (QDrag ()) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDrag_customEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QDrag_customEvent" qtc_QDrag_customEvent :: Ptr (TQDrag a) -> Ptr (TQEvent t1) -> IO ()

instance QcustomEvent (QDragSc a) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDrag_customEvent cobj_x0 cobj_x1

instance QdisconnectNotify (QDrag ()) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QDrag_disconnectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QDrag_disconnectNotify" qtc_QDrag_disconnectNotify :: Ptr (TQDrag a) -> CWString -> IO ()

instance QdisconnectNotify (QDragSc a) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QDrag_disconnectNotify cobj_x0 cstr_x1

instance Qevent (QDrag ()) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDrag_event_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDrag_event_h" qtc_QDrag_event_h :: Ptr (TQDrag a) -> Ptr (TQEvent t1) -> IO CBool

instance Qevent (QDragSc a) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDrag_event_h cobj_x0 cobj_x1

instance QeventFilter (QDrag ()) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QDrag_eventFilter_h cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QDrag_eventFilter_h" qtc_QDrag_eventFilter_h :: Ptr (TQDrag a) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO CBool

instance QeventFilter (QDragSc a) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QDrag_eventFilter_h cobj_x0 cobj_x1 cobj_x2

instance Qreceivers (QDrag ()) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QDrag_receivers cobj_x0 cstr_x1

foreign import ccall "qtc_QDrag_receivers" qtc_QDrag_receivers :: Ptr (TQDrag a) -> CWString -> IO CInt

instance Qreceivers (QDragSc a) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QDrag_receivers cobj_x0 cstr_x1

instance Qsender (QDrag ()) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDrag_sender cobj_x0

foreign import ccall "qtc_QDrag_sender" qtc_QDrag_sender :: Ptr (TQDrag a) -> IO (Ptr (TQObject ()))

instance Qsender (QDragSc a) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDrag_sender cobj_x0

instance QtimerEvent (QDrag ()) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDrag_timerEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QDrag_timerEvent" qtc_QDrag_timerEvent :: Ptr (TQDrag a) -> Ptr (TQTimerEvent t1) -> IO ()

instance QtimerEvent (QDragSc a) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDrag_timerEvent cobj_x0 cobj_x1

