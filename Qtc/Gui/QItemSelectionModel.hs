{-# OPTIONS -fglasgow-exts -#include "../include/gui/qtc_hs_QItemSelectionModel.h" #-}
-----------------------------------------------------------------------------
{-| Module    : QItemSelectionModel.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:20
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QItemSelectionModel (
  QqItemSelectionModel(..)
  ,columnIntersectsSelection
  ,QemitSelectionChanged(..)
  ,isColumnSelected
  ,isRowSelected
  ,rowIntersectsSelection
  ,QselectedColumns(..)
  ,QselectedRows(..)
  ,qItemSelectionModel_delete
  ,qItemSelectionModel_deleteLater
  )
  where

import Foreign.C.Types
import Qth.ClassTypes.Core
import Qtc.Enums.Base
import Qtc.Enums.Gui.QItemSelectionModel

import Qtc.Classes.Base
import Qtc.Classes.Qccs
import Qtc.Classes.Core
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core
import Qtc.Classes.Gui
import Qtc.ClassTypes.Gui

instance QuserMethod (QItemSelectionModel ()) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QItemSelectionModel_userMethod cobj_qobj (toCInt evid)

foreign import ccall "qtc_QItemSelectionModel_userMethod" qtc_QItemSelectionModel_userMethod :: Ptr (TQItemSelectionModel a) -> CInt -> IO ()

instance QuserMethod (QItemSelectionModelSc a) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QItemSelectionModel_userMethod cobj_qobj (toCInt evid)

instance QuserMethod (QItemSelectionModel ()) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QItemSelectionModel_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

foreign import ccall "qtc_QItemSelectionModel_userMethodVariant" qtc_QItemSelectionModel_userMethodVariant :: Ptr (TQItemSelectionModel a) -> CInt -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))

instance QuserMethod (QItemSelectionModelSc a) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QItemSelectionModel_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

class QqItemSelectionModel x1 where
  qItemSelectionModel :: x1 -> IO (QItemSelectionModel ())

instance QqItemSelectionModel ((QAbstractItemModel t1)) where
 qItemSelectionModel (x1)
  = withQItemSelectionModelResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QItemSelectionModel cobj_x1

foreign import ccall "qtc_QItemSelectionModel" qtc_QItemSelectionModel :: Ptr (TQAbstractItemModel t1) -> IO (Ptr (TQItemSelectionModel ()))

instance QqItemSelectionModel ((QAbstractItemModel t1, QObject t2)) where
 qItemSelectionModel (x1, x2)
  = withQItemSelectionModelResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QItemSelectionModel1 cobj_x1 cobj_x2

foreign import ccall "qtc_QItemSelectionModel1" qtc_QItemSelectionModel1 :: Ptr (TQAbstractItemModel t1) -> Ptr (TQObject t2) -> IO (Ptr (TQItemSelectionModel ()))

instance Qclear (QItemSelectionModel ()) (()) where
 clear x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QItemSelectionModel_clear_h cobj_x0

foreign import ccall "qtc_QItemSelectionModel_clear_h" qtc_QItemSelectionModel_clear_h :: Ptr (TQItemSelectionModel a) -> IO ()

instance Qclear (QItemSelectionModelSc a) (()) where
 clear x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QItemSelectionModel_clear_h cobj_x0

instance QclearSelection (QItemSelectionModel a) (()) where
 clearSelection x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QItemSelectionModel_clearSelection cobj_x0

foreign import ccall "qtc_QItemSelectionModel_clearSelection" qtc_QItemSelectionModel_clearSelection :: Ptr (TQItemSelectionModel a) -> IO ()

columnIntersectsSelection :: QItemSelectionModel a -> ((Int, QModelIndex t2)) -> IO (Bool)
columnIntersectsSelection x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QItemSelectionModel_columnIntersectsSelection cobj_x0 (toCInt x1) cobj_x2

foreign import ccall "qtc_QItemSelectionModel_columnIntersectsSelection" qtc_QItemSelectionModel_columnIntersectsSelection :: Ptr (TQItemSelectionModel a) -> CInt -> Ptr (TQModelIndex t2) -> IO CBool

instance QcurrentIndex (QItemSelectionModel a) (()) (IO (QModelIndex ())) where
 currentIndex x0 ()
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QItemSelectionModel_currentIndex cobj_x0

foreign import ccall "qtc_QItemSelectionModel_currentIndex" qtc_QItemSelectionModel_currentIndex :: Ptr (TQItemSelectionModel a) -> IO (Ptr (TQModelIndex ()))

class QemitSelectionChanged x0 x1 where
 emitSelectionChanged :: x0 -> x1 -> IO ()

instance QemitSelectionChanged (QItemSelectionModel ()) ((QItemSelection t1, QItemSelection t2)) where
 emitSelectionChanged x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QItemSelectionModel_emitSelectionChanged cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QItemSelectionModel_emitSelectionChanged" qtc_QItemSelectionModel_emitSelectionChanged :: Ptr (TQItemSelectionModel a) -> Ptr (TQItemSelection t1) -> Ptr (TQItemSelection t2) -> IO ()

instance QemitSelectionChanged (QItemSelectionModelSc a) ((QItemSelection t1, QItemSelection t2)) where
 emitSelectionChanged x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QItemSelectionModel_emitSelectionChanged cobj_x0 cobj_x1 cobj_x2

instance QhasSelection (QItemSelectionModel a) (()) where
 hasSelection x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QItemSelectionModel_hasSelection cobj_x0

foreign import ccall "qtc_QItemSelectionModel_hasSelection" qtc_QItemSelectionModel_hasSelection :: Ptr (TQItemSelectionModel a) -> IO CBool

isColumnSelected :: QItemSelectionModel a -> ((Int, QModelIndex t2)) -> IO (Bool)
isColumnSelected x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QItemSelectionModel_isColumnSelected cobj_x0 (toCInt x1) cobj_x2

foreign import ccall "qtc_QItemSelectionModel_isColumnSelected" qtc_QItemSelectionModel_isColumnSelected :: Ptr (TQItemSelectionModel a) -> CInt -> Ptr (TQModelIndex t2) -> IO CBool

isRowSelected :: QItemSelectionModel a -> ((Int, QModelIndex t2)) -> IO (Bool)
isRowSelected x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QItemSelectionModel_isRowSelected cobj_x0 (toCInt x1) cobj_x2

foreign import ccall "qtc_QItemSelectionModel_isRowSelected" qtc_QItemSelectionModel_isRowSelected :: Ptr (TQItemSelectionModel a) -> CInt -> Ptr (TQModelIndex t2) -> IO CBool

instance QisSelected (QItemSelectionModel a) ((QModelIndex t1)) where
 isSelected x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QItemSelectionModel_isSelected cobj_x0 cobj_x1

foreign import ccall "qtc_QItemSelectionModel_isSelected" qtc_QItemSelectionModel_isSelected :: Ptr (TQItemSelectionModel a) -> Ptr (TQModelIndex t1) -> IO CBool

instance Qmodel (QItemSelectionModel a) (()) (IO (QAbstractItemModel ())) where
 model x0 ()
  = withQAbstractItemModelResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QItemSelectionModel_model cobj_x0

foreign import ccall "qtc_QItemSelectionModel_model" qtc_QItemSelectionModel_model :: Ptr (TQItemSelectionModel a) -> IO (Ptr (TQAbstractItemModel ()))

instance Qreset (QItemSelectionModel ()) (()) (IO ()) where
 reset x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QItemSelectionModel_reset_h cobj_x0

foreign import ccall "qtc_QItemSelectionModel_reset_h" qtc_QItemSelectionModel_reset_h :: Ptr (TQItemSelectionModel a) -> IO ()

instance Qreset (QItemSelectionModelSc a) (()) (IO ()) where
 reset x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QItemSelectionModel_reset_h cobj_x0

rowIntersectsSelection :: QItemSelectionModel a -> ((Int, QModelIndex t2)) -> IO (Bool)
rowIntersectsSelection x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QItemSelectionModel_rowIntersectsSelection cobj_x0 (toCInt x1) cobj_x2

foreign import ccall "qtc_QItemSelectionModel_rowIntersectsSelection" qtc_QItemSelectionModel_rowIntersectsSelection :: Ptr (TQItemSelectionModel a) -> CInt -> Ptr (TQModelIndex t2) -> IO CBool

instance Qselect (QItemSelectionModel a) ((QItemSelection t1, SelectionFlags)) where
 select x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QItemSelectionModel_select cobj_x0 cobj_x1 (toCLong $ qFlags_toInt x2)

foreign import ccall "qtc_QItemSelectionModel_select" qtc_QItemSelectionModel_select :: Ptr (TQItemSelectionModel a) -> Ptr (TQItemSelection t1) -> CLong -> IO ()

instance Qselect (QItemSelectionModel ()) ((QModelIndex t1, SelectionFlags)) where
 select x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QItemSelectionModel_select1_h cobj_x0 cobj_x1 (toCLong $ qFlags_toInt x2)

foreign import ccall "qtc_QItemSelectionModel_select1_h" qtc_QItemSelectionModel_select1_h :: Ptr (TQItemSelectionModel a) -> Ptr (TQModelIndex t1) -> CLong -> IO ()

instance Qselect (QItemSelectionModelSc a) ((QModelIndex t1, SelectionFlags)) where
 select x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QItemSelectionModel_select1_h cobj_x0 cobj_x1 (toCLong $ qFlags_toInt x2)

class QselectedColumns x1 where
 selectedColumns :: QItemSelectionModel a -> x1 -> IO ([QModelIndex ()])

instance QselectedColumns (()) where
 selectedColumns x0 ()
  = withQListObjectRefResult $ \arr ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QItemSelectionModel_selectedColumns cobj_x0 arr

foreign import ccall "qtc_QItemSelectionModel_selectedColumns" qtc_QItemSelectionModel_selectedColumns :: Ptr (TQItemSelectionModel a) -> Ptr (Ptr (TQModelIndex ())) -> IO CInt

instance QselectedColumns ((Int)) where
 selectedColumns x0 (x1)
  = withQListObjectRefResult $ \arr ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QItemSelectionModel_selectedColumns1 cobj_x0 (toCInt x1) arr

foreign import ccall "qtc_QItemSelectionModel_selectedColumns1" qtc_QItemSelectionModel_selectedColumns1 :: Ptr (TQItemSelectionModel a) -> CInt -> Ptr (Ptr (TQModelIndex ())) -> IO CInt

instance QselectedIndexes (QItemSelectionModel a) (()) where
 selectedIndexes x0 ()
  = withQListObjectRefResult $ \arr ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QItemSelectionModel_selectedIndexes cobj_x0 arr

foreign import ccall "qtc_QItemSelectionModel_selectedIndexes" qtc_QItemSelectionModel_selectedIndexes :: Ptr (TQItemSelectionModel a) -> Ptr (Ptr (TQModelIndex ())) -> IO CInt

class QselectedRows x1 where
 selectedRows :: QItemSelectionModel a -> x1 -> IO ([QModelIndex ()])

instance QselectedRows (()) where
 selectedRows x0 ()
  = withQListObjectRefResult $ \arr ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QItemSelectionModel_selectedRows cobj_x0 arr

foreign import ccall "qtc_QItemSelectionModel_selectedRows" qtc_QItemSelectionModel_selectedRows :: Ptr (TQItemSelectionModel a) -> Ptr (Ptr (TQModelIndex ())) -> IO CInt

instance QselectedRows ((Int)) where
 selectedRows x0 (x1)
  = withQListObjectRefResult $ \arr ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QItemSelectionModel_selectedRows1 cobj_x0 (toCInt x1) arr

foreign import ccall "qtc_QItemSelectionModel_selectedRows1" qtc_QItemSelectionModel_selectedRows1 :: Ptr (TQItemSelectionModel a) -> CInt -> Ptr (Ptr (TQModelIndex ())) -> IO CInt

instance Qselection (QItemSelectionModel a) (()) (IO (QItemSelection ())) where
 selection x0 ()
  = withQItemSelectionResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QItemSelectionModel_selection cobj_x0

foreign import ccall "qtc_QItemSelectionModel_selection" qtc_QItemSelectionModel_selection :: Ptr (TQItemSelectionModel a) -> IO (Ptr (TQItemSelection ()))

instance QsetCurrentIndex (QItemSelectionModel a) ((QModelIndex t1, SelectionFlags)) where
 setCurrentIndex x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QItemSelectionModel_setCurrentIndex cobj_x0 cobj_x1 (toCLong $ qFlags_toInt x2)

foreign import ccall "qtc_QItemSelectionModel_setCurrentIndex" qtc_QItemSelectionModel_setCurrentIndex :: Ptr (TQItemSelectionModel a) -> Ptr (TQModelIndex t1) -> CLong -> IO ()

qItemSelectionModel_delete :: QItemSelectionModel a -> IO ()
qItemSelectionModel_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QItemSelectionModel_delete cobj_x0

foreign import ccall "qtc_QItemSelectionModel_delete" qtc_QItemSelectionModel_delete :: Ptr (TQItemSelectionModel a) -> IO ()

qItemSelectionModel_deleteLater :: QItemSelectionModel a -> IO ()
qItemSelectionModel_deleteLater x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QItemSelectionModel_deleteLater cobj_x0

foreign import ccall "qtc_QItemSelectionModel_deleteLater" qtc_QItemSelectionModel_deleteLater :: Ptr (TQItemSelectionModel a) -> IO ()

instance QchildEvent (QItemSelectionModel ()) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QItemSelectionModel_childEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QItemSelectionModel_childEvent" qtc_QItemSelectionModel_childEvent :: Ptr (TQItemSelectionModel a) -> Ptr (TQChildEvent t1) -> IO ()

instance QchildEvent (QItemSelectionModelSc a) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QItemSelectionModel_childEvent cobj_x0 cobj_x1

instance QconnectNotify (QItemSelectionModel ()) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QItemSelectionModel_connectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QItemSelectionModel_connectNotify" qtc_QItemSelectionModel_connectNotify :: Ptr (TQItemSelectionModel a) -> CWString -> IO ()

instance QconnectNotify (QItemSelectionModelSc a) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QItemSelectionModel_connectNotify cobj_x0 cstr_x1

instance QcustomEvent (QItemSelectionModel ()) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QItemSelectionModel_customEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QItemSelectionModel_customEvent" qtc_QItemSelectionModel_customEvent :: Ptr (TQItemSelectionModel a) -> Ptr (TQEvent t1) -> IO ()

instance QcustomEvent (QItemSelectionModelSc a) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QItemSelectionModel_customEvent cobj_x0 cobj_x1

instance QdisconnectNotify (QItemSelectionModel ()) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QItemSelectionModel_disconnectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QItemSelectionModel_disconnectNotify" qtc_QItemSelectionModel_disconnectNotify :: Ptr (TQItemSelectionModel a) -> CWString -> IO ()

instance QdisconnectNotify (QItemSelectionModelSc a) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QItemSelectionModel_disconnectNotify cobj_x0 cstr_x1

instance Qevent (QItemSelectionModel ()) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QItemSelectionModel_event_h cobj_x0 cobj_x1

foreign import ccall "qtc_QItemSelectionModel_event_h" qtc_QItemSelectionModel_event_h :: Ptr (TQItemSelectionModel a) -> Ptr (TQEvent t1) -> IO CBool

instance Qevent (QItemSelectionModelSc a) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QItemSelectionModel_event_h cobj_x0 cobj_x1

instance QeventFilter (QItemSelectionModel ()) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QItemSelectionModel_eventFilter_h cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QItemSelectionModel_eventFilter_h" qtc_QItemSelectionModel_eventFilter_h :: Ptr (TQItemSelectionModel a) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO CBool

instance QeventFilter (QItemSelectionModelSc a) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QItemSelectionModel_eventFilter_h cobj_x0 cobj_x1 cobj_x2

instance Qreceivers (QItemSelectionModel ()) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QItemSelectionModel_receivers cobj_x0 cstr_x1

foreign import ccall "qtc_QItemSelectionModel_receivers" qtc_QItemSelectionModel_receivers :: Ptr (TQItemSelectionModel a) -> CWString -> IO CInt

instance Qreceivers (QItemSelectionModelSc a) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QItemSelectionModel_receivers cobj_x0 cstr_x1

instance Qsender (QItemSelectionModel ()) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QItemSelectionModel_sender cobj_x0

foreign import ccall "qtc_QItemSelectionModel_sender" qtc_QItemSelectionModel_sender :: Ptr (TQItemSelectionModel a) -> IO (Ptr (TQObject ()))

instance Qsender (QItemSelectionModelSc a) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QItemSelectionModel_sender cobj_x0

instance QtimerEvent (QItemSelectionModel ()) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QItemSelectionModel_timerEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QItemSelectionModel_timerEvent" qtc_QItemSelectionModel_timerEvent :: Ptr (TQItemSelectionModel a) -> Ptr (TQTimerEvent t1) -> IO ()

instance QtimerEvent (QItemSelectionModelSc a) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QItemSelectionModel_timerEvent cobj_x0 cobj_x1

