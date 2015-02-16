{-# OPTIONS -fglasgow-exts -#include "../include/gui/qtc_hs_QAbstractItemDelegate.h" #-}
-----------------------------------------------------------------------------
{-| Module    : QAbstractItemDelegate.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:30
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QAbstractItemDelegate (
  QqAbstractItemDelegate(..)
  ,qAbstractItemDelegateElidedText
  ,qAbstractItemDelegate_delete
  ,qAbstractItemDelegate_deleteLater
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

instance QuserMethod (QAbstractItemDelegate ()) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QAbstractItemDelegate_userMethod cobj_qobj (toCInt evid)

foreign import ccall "qtc_QAbstractItemDelegate_userMethod" qtc_QAbstractItemDelegate_userMethod :: Ptr (TQAbstractItemDelegate a) -> CInt -> IO ()

instance QuserMethod (QAbstractItemDelegateSc a) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QAbstractItemDelegate_userMethod cobj_qobj (toCInt evid)

instance QuserMethod (QAbstractItemDelegate ()) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QAbstractItemDelegate_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

foreign import ccall "qtc_QAbstractItemDelegate_userMethodVariant" qtc_QAbstractItemDelegate_userMethodVariant :: Ptr (TQAbstractItemDelegate a) -> CInt -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))

instance QuserMethod (QAbstractItemDelegateSc a) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QAbstractItemDelegate_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

class QqAbstractItemDelegate x1 where
  qAbstractItemDelegate :: x1 -> IO (QAbstractItemDelegate ())

instance QqAbstractItemDelegate (()) where
 qAbstractItemDelegate ()
  = withQAbstractItemDelegateResult $
    qtc_QAbstractItemDelegate

foreign import ccall "qtc_QAbstractItemDelegate" qtc_QAbstractItemDelegate :: IO (Ptr (TQAbstractItemDelegate ()))

instance QqAbstractItemDelegate ((QObject t1)) where
 qAbstractItemDelegate (x1)
  = withQAbstractItemDelegateResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemDelegate1 cobj_x1

foreign import ccall "qtc_QAbstractItemDelegate1" qtc_QAbstractItemDelegate1 :: Ptr (TQObject t1) -> IO (Ptr (TQAbstractItemDelegate ()))

instance QcreateEditor (QAbstractItemDelegate ()) ((QWidget t1, QStyleOptionViewItem t2, QModelIndex t3)) where
 createEditor x0 (x1, x2, x3)
  = withQWidgetResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QAbstractItemDelegate_createEditor_h cobj_x0 cobj_x1 cobj_x2 cobj_x3

foreign import ccall "qtc_QAbstractItemDelegate_createEditor_h" qtc_QAbstractItemDelegate_createEditor_h :: Ptr (TQAbstractItemDelegate a) -> Ptr (TQWidget t1) -> Ptr (TQStyleOptionViewItem t2) -> Ptr (TQModelIndex t3) -> IO (Ptr (TQWidget ()))

instance QcreateEditor (QAbstractItemDelegateSc a) ((QWidget t1, QStyleOptionViewItem t2, QModelIndex t3)) where
 createEditor x0 (x1, x2, x3)
  = withQWidgetResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QAbstractItemDelegate_createEditor_h cobj_x0 cobj_x1 cobj_x2 cobj_x3

instance QeditorEvent (QAbstractItemDelegate ()) ((QEvent t1, QAbstractItemModel t2, QStyleOptionViewItem t3, QModelIndex t4)) where
 editorEvent x0 (x1, x2, x3, x4)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    withObjectPtr x4 $ \cobj_x4 ->
    qtc_QAbstractItemDelegate_editorEvent_h cobj_x0 cobj_x1 cobj_x2 cobj_x3 cobj_x4

foreign import ccall "qtc_QAbstractItemDelegate_editorEvent_h" qtc_QAbstractItemDelegate_editorEvent_h :: Ptr (TQAbstractItemDelegate a) -> Ptr (TQEvent t1) -> Ptr (TQAbstractItemModel t2) -> Ptr (TQStyleOptionViewItem t3) -> Ptr (TQModelIndex t4) -> IO CBool

instance QeditorEvent (QAbstractItemDelegateSc a) ((QEvent t1, QAbstractItemModel t2, QStyleOptionViewItem t3, QModelIndex t4)) where
 editorEvent x0 (x1, x2, x3, x4)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    withObjectPtr x4 $ \cobj_x4 ->
    qtc_QAbstractItemDelegate_editorEvent_h cobj_x0 cobj_x1 cobj_x2 cobj_x3 cobj_x4

qAbstractItemDelegateElidedText :: ((QFontMetrics t1, Int, TextElideMode, String)) -> IO (String)
qAbstractItemDelegateElidedText (x1, x2, x3, x4)
  = withStringResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withCWString x4 $ \cstr_x4 ->
    qtc_QAbstractItemDelegate_elidedText cobj_x1 (toCInt x2) (toCLong $ qEnum_toInt x3) cstr_x4

foreign import ccall "qtc_QAbstractItemDelegate_elidedText" qtc_QAbstractItemDelegate_elidedText :: Ptr (TQFontMetrics t1) -> CInt -> CLong -> CWString -> IO (Ptr (TQString ()))

instance QhelpEvent (QAbstractItemDelegate a) ((QHelpEvent t1, QAbstractItemView t2, QStyleOptionViewItem t3, QModelIndex t4)) (IO (Bool)) where
 helpEvent x0 (x1, x2, x3, x4)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    withObjectPtr x4 $ \cobj_x4 ->
    qtc_QAbstractItemDelegate_helpEvent cobj_x0 cobj_x1 cobj_x2 cobj_x3 cobj_x4

foreign import ccall "qtc_QAbstractItemDelegate_helpEvent" qtc_QAbstractItemDelegate_helpEvent :: Ptr (TQAbstractItemDelegate a) -> Ptr (TQHelpEvent t1) -> Ptr (TQAbstractItemView t2) -> Ptr (TQStyleOptionViewItem t3) -> Ptr (TQModelIndex t4) -> IO CBool

instance Qpaint (QAbstractItemDelegate ()) ((QPainter t1, QStyleOptionViewItem t2, QModelIndex t3)) where
 paint x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QAbstractItemDelegate_paint_h cobj_x0 cobj_x1 cobj_x2 cobj_x3

foreign import ccall "qtc_QAbstractItemDelegate_paint_h" qtc_QAbstractItemDelegate_paint_h :: Ptr (TQAbstractItemDelegate a) -> Ptr (TQPainter t1) -> Ptr (TQStyleOptionViewItem t2) -> Ptr (TQModelIndex t3) -> IO ()

instance Qpaint (QAbstractItemDelegateSc a) ((QPainter t1, QStyleOptionViewItem t2, QModelIndex t3)) where
 paint x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QAbstractItemDelegate_paint_h cobj_x0 cobj_x1 cobj_x2 cobj_x3

instance QsetEditorData (QAbstractItemDelegate ()) ((QWidget t1, QModelIndex t2)) where
 setEditorData x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QAbstractItemDelegate_setEditorData_h cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QAbstractItemDelegate_setEditorData_h" qtc_QAbstractItemDelegate_setEditorData_h :: Ptr (TQAbstractItemDelegate a) -> Ptr (TQWidget t1) -> Ptr (TQModelIndex t2) -> IO ()

instance QsetEditorData (QAbstractItemDelegateSc a) ((QWidget t1, QModelIndex t2)) where
 setEditorData x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QAbstractItemDelegate_setEditorData_h cobj_x0 cobj_x1 cobj_x2

instance QsetModelData (QAbstractItemDelegate ()) ((QWidget t1, QAbstractItemModel t2, QModelIndex t3)) where
 setModelData x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QAbstractItemDelegate_setModelData_h cobj_x0 cobj_x1 cobj_x2 cobj_x3

foreign import ccall "qtc_QAbstractItemDelegate_setModelData_h" qtc_QAbstractItemDelegate_setModelData_h :: Ptr (TQAbstractItemDelegate a) -> Ptr (TQWidget t1) -> Ptr (TQAbstractItemModel t2) -> Ptr (TQModelIndex t3) -> IO ()

instance QsetModelData (QAbstractItemDelegateSc a) ((QWidget t1, QAbstractItemModel t2, QModelIndex t3)) where
 setModelData x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QAbstractItemDelegate_setModelData_h cobj_x0 cobj_x1 cobj_x2 cobj_x3

instance QqsizeHint (QAbstractItemDelegate ()) ((QStyleOptionViewItem t1, QModelIndex t2)) where
 qsizeHint x0 (x1, x2)
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QAbstractItemDelegate_sizeHint_h cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QAbstractItemDelegate_sizeHint_h" qtc_QAbstractItemDelegate_sizeHint_h :: Ptr (TQAbstractItemDelegate a) -> Ptr (TQStyleOptionViewItem t1) -> Ptr (TQModelIndex t2) -> IO (Ptr (TQSize ()))

instance QqsizeHint (QAbstractItemDelegateSc a) ((QStyleOptionViewItem t1, QModelIndex t2)) where
 qsizeHint x0 (x1, x2)
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QAbstractItemDelegate_sizeHint_h cobj_x0 cobj_x1 cobj_x2

instance QsizeHint (QAbstractItemDelegate ()) ((QStyleOptionViewItem t1, QModelIndex t2)) where
 sizeHint x0 (x1, x2)
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QAbstractItemDelegate_sizeHint_qth_h cobj_x0 cobj_x1 cobj_x2 csize_ret_w csize_ret_h

foreign import ccall "qtc_QAbstractItemDelegate_sizeHint_qth_h" qtc_QAbstractItemDelegate_sizeHint_qth_h :: Ptr (TQAbstractItemDelegate a) -> Ptr (TQStyleOptionViewItem t1) -> Ptr (TQModelIndex t2) -> Ptr CInt -> Ptr CInt -> IO ()

instance QsizeHint (QAbstractItemDelegateSc a) ((QStyleOptionViewItem t1, QModelIndex t2)) where
 sizeHint x0 (x1, x2)
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QAbstractItemDelegate_sizeHint_qth_h cobj_x0 cobj_x1 cobj_x2 csize_ret_w csize_ret_h

instance QupdateEditorGeometry (QAbstractItemDelegate ()) ((QWidget t1, QStyleOptionViewItem t2, QModelIndex t3)) where
 updateEditorGeometry x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QAbstractItemDelegate_updateEditorGeometry_h cobj_x0 cobj_x1 cobj_x2 cobj_x3

foreign import ccall "qtc_QAbstractItemDelegate_updateEditorGeometry_h" qtc_QAbstractItemDelegate_updateEditorGeometry_h :: Ptr (TQAbstractItemDelegate a) -> Ptr (TQWidget t1) -> Ptr (TQStyleOptionViewItem t2) -> Ptr (TQModelIndex t3) -> IO ()

instance QupdateEditorGeometry (QAbstractItemDelegateSc a) ((QWidget t1, QStyleOptionViewItem t2, QModelIndex t3)) where
 updateEditorGeometry x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QAbstractItemDelegate_updateEditorGeometry_h cobj_x0 cobj_x1 cobj_x2 cobj_x3

qAbstractItemDelegate_delete :: QAbstractItemDelegate a -> IO ()
qAbstractItemDelegate_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemDelegate_delete cobj_x0

foreign import ccall "qtc_QAbstractItemDelegate_delete" qtc_QAbstractItemDelegate_delete :: Ptr (TQAbstractItemDelegate a) -> IO ()

qAbstractItemDelegate_deleteLater :: QAbstractItemDelegate a -> IO ()
qAbstractItemDelegate_deleteLater x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemDelegate_deleteLater cobj_x0

foreign import ccall "qtc_QAbstractItemDelegate_deleteLater" qtc_QAbstractItemDelegate_deleteLater :: Ptr (TQAbstractItemDelegate a) -> IO ()

instance QchildEvent (QAbstractItemDelegate ()) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemDelegate_childEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractItemDelegate_childEvent" qtc_QAbstractItemDelegate_childEvent :: Ptr (TQAbstractItemDelegate a) -> Ptr (TQChildEvent t1) -> IO ()

instance QchildEvent (QAbstractItemDelegateSc a) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemDelegate_childEvent cobj_x0 cobj_x1

instance QconnectNotify (QAbstractItemDelegate ()) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QAbstractItemDelegate_connectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QAbstractItemDelegate_connectNotify" qtc_QAbstractItemDelegate_connectNotify :: Ptr (TQAbstractItemDelegate a) -> CWString -> IO ()

instance QconnectNotify (QAbstractItemDelegateSc a) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QAbstractItemDelegate_connectNotify cobj_x0 cstr_x1

instance QcustomEvent (QAbstractItemDelegate ()) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemDelegate_customEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractItemDelegate_customEvent" qtc_QAbstractItemDelegate_customEvent :: Ptr (TQAbstractItemDelegate a) -> Ptr (TQEvent t1) -> IO ()

instance QcustomEvent (QAbstractItemDelegateSc a) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemDelegate_customEvent cobj_x0 cobj_x1

instance QdisconnectNotify (QAbstractItemDelegate ()) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QAbstractItemDelegate_disconnectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QAbstractItemDelegate_disconnectNotify" qtc_QAbstractItemDelegate_disconnectNotify :: Ptr (TQAbstractItemDelegate a) -> CWString -> IO ()

instance QdisconnectNotify (QAbstractItemDelegateSc a) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QAbstractItemDelegate_disconnectNotify cobj_x0 cstr_x1

instance Qevent (QAbstractItemDelegate ()) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemDelegate_event_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractItemDelegate_event_h" qtc_QAbstractItemDelegate_event_h :: Ptr (TQAbstractItemDelegate a) -> Ptr (TQEvent t1) -> IO CBool

instance Qevent (QAbstractItemDelegateSc a) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemDelegate_event_h cobj_x0 cobj_x1

instance QeventFilter (QAbstractItemDelegate ()) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QAbstractItemDelegate_eventFilter_h cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QAbstractItemDelegate_eventFilter_h" qtc_QAbstractItemDelegate_eventFilter_h :: Ptr (TQAbstractItemDelegate a) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO CBool

instance QeventFilter (QAbstractItemDelegateSc a) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QAbstractItemDelegate_eventFilter_h cobj_x0 cobj_x1 cobj_x2

instance Qreceivers (QAbstractItemDelegate ()) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QAbstractItemDelegate_receivers cobj_x0 cstr_x1

foreign import ccall "qtc_QAbstractItemDelegate_receivers" qtc_QAbstractItemDelegate_receivers :: Ptr (TQAbstractItemDelegate a) -> CWString -> IO CInt

instance Qreceivers (QAbstractItemDelegateSc a) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QAbstractItemDelegate_receivers cobj_x0 cstr_x1

instance Qsender (QAbstractItemDelegate ()) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemDelegate_sender cobj_x0

foreign import ccall "qtc_QAbstractItemDelegate_sender" qtc_QAbstractItemDelegate_sender :: Ptr (TQAbstractItemDelegate a) -> IO (Ptr (TQObject ()))

instance Qsender (QAbstractItemDelegateSc a) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemDelegate_sender cobj_x0

instance QtimerEvent (QAbstractItemDelegate ()) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemDelegate_timerEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractItemDelegate_timerEvent" qtc_QAbstractItemDelegate_timerEvent :: Ptr (TQAbstractItemDelegate a) -> Ptr (TQTimerEvent t1) -> IO ()

instance QtimerEvent (QAbstractItemDelegateSc a) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemDelegate_timerEvent cobj_x0 cobj_x1

