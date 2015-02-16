{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QListWidget.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:27
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QListWidget (
  QqListWidget(..)
  ,qListWidget_delete
  ,qListWidget_deleteLater
  )
  where

import Foreign.C.Types
import Qth.ClassTypes.Core
import Qtc.Enums.Base
import Qtc.Enums.Gui.QItemSelectionModel
import Qtc.Enums.Gui.QAbstractItemView
import Qtc.Enums.Gui.QPaintDevice
import Qtc.Enums.Core.Qt
import Qtc.Enums.Gui.QAbstractItemDelegate

import Qtc.Classes.Base
import Qtc.Classes.Qccs
import Qtc.Classes.Core
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core
import Qtc.Classes.Gui
import Qtc.ClassTypes.Gui

instance QuserMethod (QListWidget ()) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QListWidget_userMethod cobj_qobj (toCInt evid)

foreign import ccall "qtc_QListWidget_userMethod" qtc_QListWidget_userMethod :: Ptr (TQListWidget a) -> CInt -> IO ()

instance QuserMethod (QListWidgetSc a) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QListWidget_userMethod cobj_qobj (toCInt evid)

instance QuserMethod (QListWidget ()) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QListWidget_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

foreign import ccall "qtc_QListWidget_userMethodVariant" qtc_QListWidget_userMethodVariant :: Ptr (TQListWidget a) -> CInt -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))

instance QuserMethod (QListWidgetSc a) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QListWidget_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

class QqListWidget x1 where
  qListWidget :: x1 -> IO (QListWidget ())

instance QqListWidget (()) where
 qListWidget ()
  = withQListWidgetResult $
    qtc_QListWidget

foreign import ccall "qtc_QListWidget" qtc_QListWidget :: IO (Ptr (TQListWidget ()))

instance QqListWidget ((QWidget t1)) where
 qListWidget (x1)
  = withQListWidgetResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListWidget1 cobj_x1

foreign import ccall "qtc_QListWidget1" qtc_QListWidget1 :: Ptr (TQWidget t1) -> IO (Ptr (TQListWidget ()))

instance QaddItem (QListWidget a) ((QListWidgetItem t1)) (IO ()) where
 addItem x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListWidget_addItem1 cobj_x0 cobj_x1

foreign import ccall "qtc_QListWidget_addItem1" qtc_QListWidget_addItem1 :: Ptr (TQListWidget a) -> Ptr (TQListWidgetItem t1) -> IO ()

instance QaddItem (QListWidget a) ((String)) (IO ()) where
 addItem x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QListWidget_addItem cobj_x0 cstr_x1

foreign import ccall "qtc_QListWidget_addItem" qtc_QListWidget_addItem :: Ptr (TQListWidget a) -> CWString -> IO ()

instance QaddItems (QListWidget a) (([String])) where
 addItems x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withQListString x1 $ \cqlistlen_x1 cqliststr_x1 ->
    qtc_QListWidget_addItems cobj_x0 cqlistlen_x1 cqliststr_x1

foreign import ccall "qtc_QListWidget_addItems" qtc_QListWidget_addItems :: Ptr (TQListWidget a) -> CInt -> Ptr (Ptr CWchar) -> IO ()

instance Qclear (QListWidget a) (()) where
 clear x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidget_clear cobj_x0

foreign import ccall "qtc_QListWidget_clear" qtc_QListWidget_clear :: Ptr (TQListWidget a) -> IO ()

instance QclosePersistentEditor (QListWidget a) ((QListWidgetItem t1)) where
 closePersistentEditor x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListWidget_closePersistentEditor cobj_x0 cobj_x1

foreign import ccall "qtc_QListWidget_closePersistentEditor" qtc_QListWidget_closePersistentEditor :: Ptr (TQListWidget a) -> Ptr (TQListWidgetItem t1) -> IO ()

instance Qcount (QListWidget a) (()) where
 count x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidget_count cobj_x0

foreign import ccall "qtc_QListWidget_count" qtc_QListWidget_count :: Ptr (TQListWidget a) -> IO CInt

instance QcurrentItem (QListWidget a) (()) (IO (QListWidgetItem ())) where
 currentItem x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidget_currentItem cobj_x0

foreign import ccall "qtc_QListWidget_currentItem" qtc_QListWidget_currentItem :: Ptr (TQListWidget a) -> IO (Ptr (TQListWidgetItem ()))

instance QcurrentRow (QListWidget a) (()) where
 currentRow x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidget_currentRow cobj_x0

foreign import ccall "qtc_QListWidget_currentRow" qtc_QListWidget_currentRow :: Ptr (TQListWidget a) -> IO CInt

instance QdropEvent (QListWidget a) ((QDropEvent t1)) where
 dropEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListWidget_dropEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QListWidget_dropEvent" qtc_QListWidget_dropEvent :: Ptr (TQListWidget a) -> Ptr (TQDropEvent t1) -> IO ()

instance QdropMimeData (QListWidget ()) ((Int, QMimeData t2, DropAction)) where
 dropMimeData x0 (x1, x2, x3)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QListWidget_dropMimeData_h cobj_x0 (toCInt x1) cobj_x2 (toCLong $ qEnum_toInt x3)

foreign import ccall "qtc_QListWidget_dropMimeData_h" qtc_QListWidget_dropMimeData_h :: Ptr (TQListWidget a) -> CInt -> Ptr (TQMimeData t2) -> CLong -> IO CBool

instance QdropMimeData (QListWidgetSc a) ((Int, QMimeData t2, DropAction)) where
 dropMimeData x0 (x1, x2, x3)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QListWidget_dropMimeData_h cobj_x0 (toCInt x1) cobj_x2 (toCLong $ qEnum_toInt x3)

instance QeditItem (QListWidget a) ((QListWidgetItem t1)) where
 editItem x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListWidget_editItem cobj_x0 cobj_x1

foreign import ccall "qtc_QListWidget_editItem" qtc_QListWidget_editItem :: Ptr (TQListWidget a) -> Ptr (TQListWidgetItem t1) -> IO ()

instance Qevent (QListWidget ()) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListWidget_event_h cobj_x0 cobj_x1

foreign import ccall "qtc_QListWidget_event_h" qtc_QListWidget_event_h :: Ptr (TQListWidget a) -> Ptr (TQEvent t1) -> IO CBool

instance Qevent (QListWidgetSc a) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListWidget_event_h cobj_x0 cobj_x1

instance QfindItems (QListWidget a) ((String, MatchFlags)) (IO ([QListWidgetItem ()])) where
 findItems x0 (x1, x2)
  = withQListObjectRefResult $ \arr ->
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QListWidget_findItems cobj_x0 cstr_x1 (toCLong $ qFlags_toInt x2) arr

foreign import ccall "qtc_QListWidget_findItems" qtc_QListWidget_findItems :: Ptr (TQListWidget a) -> CWString -> CLong -> Ptr (Ptr (TQListWidgetItem ())) -> IO CInt

instance QindexFromItem (QListWidget ()) ((QListWidgetItem t1)) where
 indexFromItem x0 (x1)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListWidget_indexFromItem cobj_x0 cobj_x1

foreign import ccall "qtc_QListWidget_indexFromItem" qtc_QListWidget_indexFromItem :: Ptr (TQListWidget a) -> Ptr (TQListWidgetItem t1) -> IO (Ptr (TQModelIndex ()))

instance QindexFromItem (QListWidgetSc a) ((QListWidgetItem t1)) where
 indexFromItem x0 (x1)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListWidget_indexFromItem cobj_x0 cobj_x1

instance QinsertItem (QListWidget a) ((Int, QListWidgetItem t2)) (IO ()) where
 insertItem x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QListWidget_insertItem1 cobj_x0 (toCInt x1) cobj_x2

foreign import ccall "qtc_QListWidget_insertItem1" qtc_QListWidget_insertItem1 :: Ptr (TQListWidget a) -> CInt -> Ptr (TQListWidgetItem t2) -> IO ()

instance QinsertItem (QListWidget a) ((Int, String)) (IO ()) where
 insertItem x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QListWidget_insertItem cobj_x0 (toCInt x1) cstr_x2

foreign import ccall "qtc_QListWidget_insertItem" qtc_QListWidget_insertItem :: Ptr (TQListWidget a) -> CInt -> CWString -> IO ()

instance QinsertItems (QListWidget a) ((Int, [String])) where
 insertItems x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withQListString x2 $ \cqlistlen_x2 cqliststr_x2 ->
    qtc_QListWidget_insertItems cobj_x0 (toCInt x1) cqlistlen_x2 cqliststr_x2

foreign import ccall "qtc_QListWidget_insertItems" qtc_QListWidget_insertItems :: Ptr (TQListWidget a) -> CInt -> CInt -> Ptr (Ptr CWchar) -> IO ()

instance QisItemHidden (QListWidget a) ((QListWidgetItem t1)) where
 isItemHidden x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListWidget_isItemHidden cobj_x0 cobj_x1

foreign import ccall "qtc_QListWidget_isItemHidden" qtc_QListWidget_isItemHidden :: Ptr (TQListWidget a) -> Ptr (TQListWidgetItem t1) -> IO CBool

instance QisItemSelected (QListWidget a) ((QListWidgetItem t1)) where
 isItemSelected x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListWidget_isItemSelected cobj_x0 cobj_x1

foreign import ccall "qtc_QListWidget_isItemSelected" qtc_QListWidget_isItemSelected :: Ptr (TQListWidget a) -> Ptr (TQListWidgetItem t1) -> IO CBool

instance QisSortingEnabled (QListWidget ()) (()) where
 isSortingEnabled x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidget_isSortingEnabled cobj_x0

foreign import ccall "qtc_QListWidget_isSortingEnabled" qtc_QListWidget_isSortingEnabled :: Ptr (TQListWidget a) -> IO CBool

instance QisSortingEnabled (QListWidgetSc a) (()) where
 isSortingEnabled x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidget_isSortingEnabled cobj_x0

instance Qitem (QListWidget a) ((Int)) (IO (QListWidgetItem ())) where
 item x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidget_item cobj_x0 (toCInt x1)

foreign import ccall "qtc_QListWidget_item" qtc_QListWidget_item :: Ptr (TQListWidget a) -> CInt -> IO (Ptr (TQListWidgetItem ()))

instance QitemAt (QListWidget a) ((Int, Int)) (IO (QListWidgetItem ())) where
 itemAt x0 (x1, x2)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidget_itemAt1 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QListWidget_itemAt1" qtc_QListWidget_itemAt1 :: Ptr (TQListWidget a) -> CInt -> CInt -> IO (Ptr (TQListWidgetItem ()))

instance QitemAt (QListWidget a) ((Point)) (IO (QListWidgetItem ())) where
 itemAt x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QListWidget_itemAt_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

foreign import ccall "qtc_QListWidget_itemAt_qth" qtc_QListWidget_itemAt_qth :: Ptr (TQListWidget a) -> CInt -> CInt -> IO (Ptr (TQListWidgetItem ()))

instance QqitemAt (QListWidget a) ((QPoint t1)) (IO (QListWidgetItem ())) where
 qitemAt x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListWidget_itemAt cobj_x0 cobj_x1

foreign import ccall "qtc_QListWidget_itemAt" qtc_QListWidget_itemAt :: Ptr (TQListWidget a) -> Ptr (TQPoint t1) -> IO (Ptr (TQListWidgetItem ()))

instance QitemFromIndex (QListWidget ()) ((QModelIndex t1)) (IO (QListWidgetItem ())) where
 itemFromIndex x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListWidget_itemFromIndex cobj_x0 cobj_x1

foreign import ccall "qtc_QListWidget_itemFromIndex" qtc_QListWidget_itemFromIndex :: Ptr (TQListWidget a) -> Ptr (TQModelIndex t1) -> IO (Ptr (TQListWidgetItem ()))

instance QitemFromIndex (QListWidgetSc a) ((QModelIndex t1)) (IO (QListWidgetItem ())) where
 itemFromIndex x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListWidget_itemFromIndex cobj_x0 cobj_x1

instance QitemWidget (QListWidget a) ((QListWidgetItem t1)) where
 itemWidget x0 (x1)
  = withQWidgetResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListWidget_itemWidget cobj_x0 cobj_x1

foreign import ccall "qtc_QListWidget_itemWidget" qtc_QListWidget_itemWidget :: Ptr (TQListWidget a) -> Ptr (TQListWidgetItem t1) -> IO (Ptr (TQWidget ()))

instance Qitems (QListWidget ()) ((QMimeData t1)) (IO ([QListWidgetItem ()])) where
 items x0 (x1)
  = withQListObjectRefResult $ \arr ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListWidget_items cobj_x0 cobj_x1 arr

foreign import ccall "qtc_QListWidget_items" qtc_QListWidget_items :: Ptr (TQListWidget a) -> Ptr (TQMimeData t1) -> Ptr (Ptr (TQListWidgetItem ())) -> IO CInt

instance Qitems (QListWidgetSc a) ((QMimeData t1)) (IO ([QListWidgetItem ()])) where
 items x0 (x1)
  = withQListObjectRefResult $ \arr ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListWidget_items cobj_x0 cobj_x1 arr

instance QopenPersistentEditor (QListWidget a) ((QListWidgetItem t1)) where
 openPersistentEditor x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListWidget_openPersistentEditor cobj_x0 cobj_x1

foreign import ccall "qtc_QListWidget_openPersistentEditor" qtc_QListWidget_openPersistentEditor :: Ptr (TQListWidget a) -> Ptr (TQListWidgetItem t1) -> IO ()

instance QremoveItemWidget (QListWidget a) ((QListWidgetItem t1)) where
 removeItemWidget x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListWidget_removeItemWidget cobj_x0 cobj_x1

foreign import ccall "qtc_QListWidget_removeItemWidget" qtc_QListWidget_removeItemWidget :: Ptr (TQListWidget a) -> Ptr (TQListWidgetItem t1) -> IO ()

instance Qrow (QListWidget a) ((QListWidgetItem t1)) where
 row x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListWidget_row cobj_x0 cobj_x1

foreign import ccall "qtc_QListWidget_row" qtc_QListWidget_row :: Ptr (TQListWidget a) -> Ptr (TQListWidgetItem t1) -> IO CInt

instance QscrollToItem (QListWidget a) ((QListWidgetItem t1)) where
 scrollToItem x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListWidget_scrollToItem cobj_x0 cobj_x1

foreign import ccall "qtc_QListWidget_scrollToItem" qtc_QListWidget_scrollToItem :: Ptr (TQListWidget a) -> Ptr (TQListWidgetItem t1) -> IO ()

instance QscrollToItem (QListWidget a) ((QListWidgetItem t1, ScrollHint)) where
 scrollToItem x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListWidget_scrollToItem1 cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QListWidget_scrollToItem1" qtc_QListWidget_scrollToItem1 :: Ptr (TQListWidget a) -> Ptr (TQListWidgetItem t1) -> CLong -> IO ()

instance QselectedItems (QListWidget a) (()) (IO ([QListWidgetItem ()])) where
 selectedItems x0 ()
  = withQListObjectRefResult $ \arr ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidget_selectedItems cobj_x0 arr

foreign import ccall "qtc_QListWidget_selectedItems" qtc_QListWidget_selectedItems :: Ptr (TQListWidget a) -> Ptr (Ptr (TQListWidgetItem ())) -> IO CInt

instance QsetCurrentItem (QListWidget a) ((QListWidgetItem t1)) where
 setCurrentItem x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListWidget_setCurrentItem cobj_x0 cobj_x1

foreign import ccall "qtc_QListWidget_setCurrentItem" qtc_QListWidget_setCurrentItem :: Ptr (TQListWidget a) -> Ptr (TQListWidgetItem t1) -> IO ()

instance QsetCurrentRow (QListWidget a) ((Int)) (IO ()) where
 setCurrentRow x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidget_setCurrentRow cobj_x0 (toCInt x1)

foreign import ccall "qtc_QListWidget_setCurrentRow" qtc_QListWidget_setCurrentRow :: Ptr (TQListWidget a) -> CInt -> IO ()

instance QsetItemHidden (QListWidget a) ((QListWidgetItem t1, Bool)) where
 setItemHidden x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListWidget_setItemHidden cobj_x0 cobj_x1 (toCBool x2)

foreign import ccall "qtc_QListWidget_setItemHidden" qtc_QListWidget_setItemHidden :: Ptr (TQListWidget a) -> Ptr (TQListWidgetItem t1) -> CBool -> IO ()

instance QsetItemSelected (QListWidget a) ((QListWidgetItem t1, Bool)) where
 setItemSelected x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListWidget_setItemSelected cobj_x0 cobj_x1 (toCBool x2)

foreign import ccall "qtc_QListWidget_setItemSelected" qtc_QListWidget_setItemSelected :: Ptr (TQListWidget a) -> Ptr (TQListWidgetItem t1) -> CBool -> IO ()

instance QsetItemWidget (QListWidget a) ((QListWidgetItem t1, QWidget t2)) where
 setItemWidget x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QListWidget_setItemWidget cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QListWidget_setItemWidget" qtc_QListWidget_setItemWidget :: Ptr (TQListWidget a) -> Ptr (TQListWidgetItem t1) -> Ptr (TQWidget t2) -> IO ()

instance QsetSortingEnabled (QListWidget ()) ((Bool)) where
 setSortingEnabled x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidget_setSortingEnabled cobj_x0 (toCBool x1)

foreign import ccall "qtc_QListWidget_setSortingEnabled" qtc_QListWidget_setSortingEnabled :: Ptr (TQListWidget a) -> CBool -> IO ()

instance QsetSortingEnabled (QListWidgetSc a) ((Bool)) where
 setSortingEnabled x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidget_setSortingEnabled cobj_x0 (toCBool x1)

instance QsortItems (QListWidget a) (()) where
 sortItems x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidget_sortItems cobj_x0

foreign import ccall "qtc_QListWidget_sortItems" qtc_QListWidget_sortItems :: Ptr (TQListWidget a) -> IO ()

instance QsortItems (QListWidget a) ((SortOrder)) where
 sortItems x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidget_sortItems1 cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QListWidget_sortItems1" qtc_QListWidget_sortItems1 :: Ptr (TQListWidget a) -> CLong -> IO ()

instance QsupportedDropActions (QListWidget ()) (()) where
 supportedDropActions x0 ()
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidget_supportedDropActions_h cobj_x0

foreign import ccall "qtc_QListWidget_supportedDropActions_h" qtc_QListWidget_supportedDropActions_h :: Ptr (TQListWidget a) -> IO CLong

instance QsupportedDropActions (QListWidgetSc a) (()) where
 supportedDropActions x0 ()
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidget_supportedDropActions_h cobj_x0

instance QtakeItem (QListWidget a) ((Int)) (IO (QListWidgetItem ())) where
 takeItem x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidget_takeItem cobj_x0 (toCInt x1)

foreign import ccall "qtc_QListWidget_takeItem" qtc_QListWidget_takeItem :: Ptr (TQListWidget a) -> CInt -> IO (Ptr (TQListWidgetItem ()))

instance QqvisualItemRect (QListWidget a) ((QListWidgetItem t1)) where
 qvisualItemRect x0 (x1)
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListWidget_visualItemRect cobj_x0 cobj_x1

foreign import ccall "qtc_QListWidget_visualItemRect" qtc_QListWidget_visualItemRect :: Ptr (TQListWidget a) -> Ptr (TQListWidgetItem t1) -> IO (Ptr (TQRect ()))

instance QvisualItemRect (QListWidget a) ((QListWidgetItem t1)) where
 visualItemRect x0 (x1)
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListWidget_visualItemRect_qth cobj_x0 cobj_x1 crect_ret_x crect_ret_y crect_ret_w crect_ret_h

foreign import ccall "qtc_QListWidget_visualItemRect_qth" qtc_QListWidget_visualItemRect_qth :: Ptr (TQListWidget a) -> Ptr (TQListWidgetItem t1) -> Ptr CInt -> Ptr CInt -> Ptr CInt -> Ptr CInt -> IO ()

qListWidget_delete :: QListWidget a -> IO ()
qListWidget_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidget_delete cobj_x0

foreign import ccall "qtc_QListWidget_delete" qtc_QListWidget_delete :: Ptr (TQListWidget a) -> IO ()

qListWidget_deleteLater :: QListWidget a -> IO ()
qListWidget_deleteLater x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidget_deleteLater cobj_x0

foreign import ccall "qtc_QListWidget_deleteLater" qtc_QListWidget_deleteLater :: Ptr (TQListWidget a) -> IO ()

instance QqcontentsSize (QListWidget ()) (()) where
 qcontentsSize x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidget_contentsSize cobj_x0

foreign import ccall "qtc_QListWidget_contentsSize" qtc_QListWidget_contentsSize :: Ptr (TQListWidget a) -> IO (Ptr (TQSize ()))

instance QqcontentsSize (QListWidgetSc a) (()) where
 qcontentsSize x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidget_contentsSize cobj_x0

instance QcontentsSize (QListWidget ()) (()) where
 contentsSize x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidget_contentsSize_qth cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QListWidget_contentsSize_qth" qtc_QListWidget_contentsSize_qth :: Ptr (TQListWidget a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QcontentsSize (QListWidgetSc a) (()) where
 contentsSize x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidget_contentsSize_qth cobj_x0 csize_ret_w csize_ret_h

instance QcurrentChanged (QListWidget ()) ((QModelIndex t1, QModelIndex t2)) where
 currentChanged x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QListWidget_currentChanged cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QListWidget_currentChanged" qtc_QListWidget_currentChanged :: Ptr (TQListWidget a) -> Ptr (TQModelIndex t1) -> Ptr (TQModelIndex t2) -> IO ()

instance QcurrentChanged (QListWidgetSc a) ((QModelIndex t1, QModelIndex t2)) where
 currentChanged x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QListWidget_currentChanged cobj_x0 cobj_x1 cobj_x2

instance QdataChanged (QListWidget ()) ((QModelIndex t1, QModelIndex t2)) where
 dataChanged x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QListWidget_dataChanged cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QListWidget_dataChanged" qtc_QListWidget_dataChanged :: Ptr (TQListWidget a) -> Ptr (TQModelIndex t1) -> Ptr (TQModelIndex t2) -> IO ()

instance QdataChanged (QListWidgetSc a) ((QModelIndex t1, QModelIndex t2)) where
 dataChanged x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QListWidget_dataChanged cobj_x0 cobj_x1 cobj_x2

instance QdoItemsLayout (QListWidget ()) (()) where
 doItemsLayout x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidget_doItemsLayout_h cobj_x0

foreign import ccall "qtc_QListWidget_doItemsLayout_h" qtc_QListWidget_doItemsLayout_h :: Ptr (TQListWidget a) -> IO ()

instance QdoItemsLayout (QListWidgetSc a) (()) where
 doItemsLayout x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidget_doItemsLayout_h cobj_x0

instance QdragLeaveEvent (QListWidget ()) ((QDragLeaveEvent t1)) where
 dragLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListWidget_dragLeaveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QListWidget_dragLeaveEvent_h" qtc_QListWidget_dragLeaveEvent_h :: Ptr (TQListWidget a) -> Ptr (TQDragLeaveEvent t1) -> IO ()

instance QdragLeaveEvent (QListWidgetSc a) ((QDragLeaveEvent t1)) where
 dragLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListWidget_dragLeaveEvent_h cobj_x0 cobj_x1

instance QdragMoveEvent (QListWidget ()) ((QDragMoveEvent t1)) where
 dragMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListWidget_dragMoveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QListWidget_dragMoveEvent_h" qtc_QListWidget_dragMoveEvent_h :: Ptr (TQListWidget a) -> Ptr (TQDragMoveEvent t1) -> IO ()

instance QdragMoveEvent (QListWidgetSc a) ((QDragMoveEvent t1)) where
 dragMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListWidget_dragMoveEvent_h cobj_x0 cobj_x1

instance QhorizontalOffset (QListWidget ()) (()) where
 horizontalOffset x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidget_horizontalOffset cobj_x0

foreign import ccall "qtc_QListWidget_horizontalOffset" qtc_QListWidget_horizontalOffset :: Ptr (TQListWidget a) -> IO CInt

instance QhorizontalOffset (QListWidgetSc a) (()) where
 horizontalOffset x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidget_horizontalOffset cobj_x0

instance QindexAt (QListWidget ()) ((Point)) where
 indexAt x0 (x1)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QListWidget_indexAt_qth_h cobj_x0 cpoint_x1_x cpoint_x1_y 

foreign import ccall "qtc_QListWidget_indexAt_qth_h" qtc_QListWidget_indexAt_qth_h :: Ptr (TQListWidget a) -> CInt -> CInt -> IO (Ptr (TQModelIndex ()))

instance QindexAt (QListWidgetSc a) ((Point)) where
 indexAt x0 (x1)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QListWidget_indexAt_qth_h cobj_x0 cpoint_x1_x cpoint_x1_y 

instance QqindexAt (QListWidget ()) ((QPoint t1)) where
 qindexAt x0 (x1)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListWidget_indexAt_h cobj_x0 cobj_x1

foreign import ccall "qtc_QListWidget_indexAt_h" qtc_QListWidget_indexAt_h :: Ptr (TQListWidget a) -> Ptr (TQPoint t1) -> IO (Ptr (TQModelIndex ()))

instance QqindexAt (QListWidgetSc a) ((QPoint t1)) where
 qindexAt x0 (x1)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListWidget_indexAt_h cobj_x0 cobj_x1

instance QinternalDrag (QListWidget ()) ((DropActions)) where
 internalDrag x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidget_internalDrag cobj_x0 (toCLong $ qFlags_toInt x1)

foreign import ccall "qtc_QListWidget_internalDrag" qtc_QListWidget_internalDrag :: Ptr (TQListWidget a) -> CLong -> IO ()

instance QinternalDrag (QListWidgetSc a) ((DropActions)) where
 internalDrag x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidget_internalDrag cobj_x0 (toCLong $ qFlags_toInt x1)

instance QinternalDrop (QListWidget ()) ((QDropEvent t1)) where
 internalDrop x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListWidget_internalDrop cobj_x0 cobj_x1

foreign import ccall "qtc_QListWidget_internalDrop" qtc_QListWidget_internalDrop :: Ptr (TQListWidget a) -> Ptr (TQDropEvent t1) -> IO ()

instance QinternalDrop (QListWidgetSc a) ((QDropEvent t1)) where
 internalDrop x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListWidget_internalDrop cobj_x0 cobj_x1

instance QisIndexHidden (QListWidget ()) ((QModelIndex t1)) where
 isIndexHidden x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListWidget_isIndexHidden cobj_x0 cobj_x1

foreign import ccall "qtc_QListWidget_isIndexHidden" qtc_QListWidget_isIndexHidden :: Ptr (TQListWidget a) -> Ptr (TQModelIndex t1) -> IO CBool

instance QisIndexHidden (QListWidgetSc a) ((QModelIndex t1)) where
 isIndexHidden x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListWidget_isIndexHidden cobj_x0 cobj_x1

instance QmouseMoveEvent (QListWidget ()) ((QMouseEvent t1)) where
 mouseMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListWidget_mouseMoveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QListWidget_mouseMoveEvent_h" qtc_QListWidget_mouseMoveEvent_h :: Ptr (TQListWidget a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseMoveEvent (QListWidgetSc a) ((QMouseEvent t1)) where
 mouseMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListWidget_mouseMoveEvent_h cobj_x0 cobj_x1

instance QmouseReleaseEvent (QListWidget ()) ((QMouseEvent t1)) where
 mouseReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListWidget_mouseReleaseEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QListWidget_mouseReleaseEvent_h" qtc_QListWidget_mouseReleaseEvent_h :: Ptr (TQListWidget a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseReleaseEvent (QListWidgetSc a) ((QMouseEvent t1)) where
 mouseReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListWidget_mouseReleaseEvent_h cobj_x0 cobj_x1

instance QmoveCursor (QListWidget ()) ((CursorAction, KeyboardModifiers)) (IO (QModelIndex ())) where
 moveCursor x0 (x1, x2)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidget_moveCursor cobj_x0 (toCLong $ qEnum_toInt x1) (toCLong $ qFlags_toInt x2)

foreign import ccall "qtc_QListWidget_moveCursor" qtc_QListWidget_moveCursor :: Ptr (TQListWidget a) -> CLong -> CLong -> IO (Ptr (TQModelIndex ()))

instance QmoveCursor (QListWidgetSc a) ((CursorAction, KeyboardModifiers)) (IO (QModelIndex ())) where
 moveCursor x0 (x1, x2)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidget_moveCursor cobj_x0 (toCLong $ qEnum_toInt x1) (toCLong $ qFlags_toInt x2)

instance QpaintEvent (QListWidget ()) ((QPaintEvent t1)) where
 paintEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListWidget_paintEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QListWidget_paintEvent_h" qtc_QListWidget_paintEvent_h :: Ptr (TQListWidget a) -> Ptr (TQPaintEvent t1) -> IO ()

instance QpaintEvent (QListWidgetSc a) ((QPaintEvent t1)) where
 paintEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListWidget_paintEvent_h cobj_x0 cobj_x1

instance QqrectForIndex (QListWidget ()) ((QModelIndex t1)) where
 qrectForIndex x0 (x1)
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListWidget_rectForIndex cobj_x0 cobj_x1

foreign import ccall "qtc_QListWidget_rectForIndex" qtc_QListWidget_rectForIndex :: Ptr (TQListWidget a) -> Ptr (TQModelIndex t1) -> IO (Ptr (TQRect ()))

instance QqrectForIndex (QListWidgetSc a) ((QModelIndex t1)) where
 qrectForIndex x0 (x1)
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListWidget_rectForIndex cobj_x0 cobj_x1

instance QrectForIndex (QListWidget ()) ((QModelIndex t1)) where
 rectForIndex x0 (x1)
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListWidget_rectForIndex_qth cobj_x0 cobj_x1 crect_ret_x crect_ret_y crect_ret_w crect_ret_h

foreign import ccall "qtc_QListWidget_rectForIndex_qth" qtc_QListWidget_rectForIndex_qth :: Ptr (TQListWidget a) -> Ptr (TQModelIndex t1) -> Ptr CInt -> Ptr CInt -> Ptr CInt -> Ptr CInt -> IO ()

instance QrectForIndex (QListWidgetSc a) ((QModelIndex t1)) where
 rectForIndex x0 (x1)
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListWidget_rectForIndex_qth cobj_x0 cobj_x1 crect_ret_x crect_ret_y crect_ret_w crect_ret_h

instance Qreset (QListWidget ()) (()) (IO ()) where
 reset x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidget_reset_h cobj_x0

foreign import ccall "qtc_QListWidget_reset_h" qtc_QListWidget_reset_h :: Ptr (TQListWidget a) -> IO ()

instance Qreset (QListWidgetSc a) (()) (IO ()) where
 reset x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidget_reset_h cobj_x0

instance QresizeContents (QListWidget ()) ((Int, Int)) where
 resizeContents x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidget_resizeContents cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QListWidget_resizeContents" qtc_QListWidget_resizeContents :: Ptr (TQListWidget a) -> CInt -> CInt -> IO ()

instance QresizeContents (QListWidgetSc a) ((Int, Int)) where
 resizeContents x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidget_resizeContents cobj_x0 (toCInt x1) (toCInt x2)

instance QresizeEvent (QListWidget ()) ((QResizeEvent t1)) where
 resizeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListWidget_resizeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QListWidget_resizeEvent_h" qtc_QListWidget_resizeEvent_h :: Ptr (TQListWidget a) -> Ptr (TQResizeEvent t1) -> IO ()

instance QresizeEvent (QListWidgetSc a) ((QResizeEvent t1)) where
 resizeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListWidget_resizeEvent_h cobj_x0 cobj_x1

instance QrowsAboutToBeRemoved (QListWidget ()) ((QModelIndex t1, Int, Int)) where
 rowsAboutToBeRemoved x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListWidget_rowsAboutToBeRemoved cobj_x0 cobj_x1 (toCInt x2) (toCInt x3)

foreign import ccall "qtc_QListWidget_rowsAboutToBeRemoved" qtc_QListWidget_rowsAboutToBeRemoved :: Ptr (TQListWidget a) -> Ptr (TQModelIndex t1) -> CInt -> CInt -> IO ()

instance QrowsAboutToBeRemoved (QListWidgetSc a) ((QModelIndex t1, Int, Int)) where
 rowsAboutToBeRemoved x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListWidget_rowsAboutToBeRemoved cobj_x0 cobj_x1 (toCInt x2) (toCInt x3)

instance QrowsInserted (QListWidget ()) ((QModelIndex t1, Int, Int)) where
 rowsInserted x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListWidget_rowsInserted cobj_x0 cobj_x1 (toCInt x2) (toCInt x3)

foreign import ccall "qtc_QListWidget_rowsInserted" qtc_QListWidget_rowsInserted :: Ptr (TQListWidget a) -> Ptr (TQModelIndex t1) -> CInt -> CInt -> IO ()

instance QrowsInserted (QListWidgetSc a) ((QModelIndex t1, Int, Int)) where
 rowsInserted x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListWidget_rowsInserted cobj_x0 cobj_x1 (toCInt x2) (toCInt x3)

instance QscrollContentsBy (QListWidget ()) ((Int, Int)) where
 scrollContentsBy x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidget_scrollContentsBy_h cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QListWidget_scrollContentsBy_h" qtc_QListWidget_scrollContentsBy_h :: Ptr (TQListWidget a) -> CInt -> CInt -> IO ()

instance QscrollContentsBy (QListWidgetSc a) ((Int, Int)) where
 scrollContentsBy x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidget_scrollContentsBy_h cobj_x0 (toCInt x1) (toCInt x2)

instance QscrollTo (QListWidget ()) ((QModelIndex t1, ScrollHint)) where
 scrollTo x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListWidget_scrollTo_h cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QListWidget_scrollTo_h" qtc_QListWidget_scrollTo_h :: Ptr (TQListWidget a) -> Ptr (TQModelIndex t1) -> CLong -> IO ()

instance QscrollTo (QListWidgetSc a) ((QModelIndex t1, ScrollHint)) where
 scrollTo x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListWidget_scrollTo_h cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

instance QselectedIndexes (QListWidget ()) (()) where
 selectedIndexes x0 ()
  = withQListObjectRefResult $ \arr ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidget_selectedIndexes cobj_x0 arr

foreign import ccall "qtc_QListWidget_selectedIndexes" qtc_QListWidget_selectedIndexes :: Ptr (TQListWidget a) -> Ptr (Ptr (TQModelIndex ())) -> IO CInt

instance QselectedIndexes (QListWidgetSc a) (()) where
 selectedIndexes x0 ()
  = withQListObjectRefResult $ \arr ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidget_selectedIndexes cobj_x0 arr

instance QselectionChanged (QListWidget ()) ((QItemSelection t1, QItemSelection t2)) where
 selectionChanged x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QListWidget_selectionChanged cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QListWidget_selectionChanged" qtc_QListWidget_selectionChanged :: Ptr (TQListWidget a) -> Ptr (TQItemSelection t1) -> Ptr (TQItemSelection t2) -> IO ()

instance QselectionChanged (QListWidgetSc a) ((QItemSelection t1, QItemSelection t2)) where
 selectionChanged x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QListWidget_selectionChanged cobj_x0 cobj_x1 cobj_x2

instance QsetPositionForIndex (QListWidget ()) ((Point, QModelIndex t2)) where
 setPositionForIndex x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QListWidget_setPositionForIndex_qth cobj_x0 cpoint_x1_x cpoint_x1_y  cobj_x2

foreign import ccall "qtc_QListWidget_setPositionForIndex_qth" qtc_QListWidget_setPositionForIndex_qth :: Ptr (TQListWidget a) -> CInt -> CInt -> Ptr (TQModelIndex t2) -> IO ()

instance QsetPositionForIndex (QListWidgetSc a) ((Point, QModelIndex t2)) where
 setPositionForIndex x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QListWidget_setPositionForIndex_qth cobj_x0 cpoint_x1_x cpoint_x1_y  cobj_x2

instance QqsetPositionForIndex (QListWidget ()) ((QPoint t1, QModelIndex t2)) where
 qsetPositionForIndex x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QListWidget_setPositionForIndex cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QListWidget_setPositionForIndex" qtc_QListWidget_setPositionForIndex :: Ptr (TQListWidget a) -> Ptr (TQPoint t1) -> Ptr (TQModelIndex t2) -> IO ()

instance QqsetPositionForIndex (QListWidgetSc a) ((QPoint t1, QModelIndex t2)) where
 qsetPositionForIndex x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QListWidget_setPositionForIndex cobj_x0 cobj_x1 cobj_x2

instance QsetRootIndex (QListWidget ()) ((QModelIndex t1)) where
 setRootIndex x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListWidget_setRootIndex_h cobj_x0 cobj_x1

foreign import ccall "qtc_QListWidget_setRootIndex_h" qtc_QListWidget_setRootIndex_h :: Ptr (TQListWidget a) -> Ptr (TQModelIndex t1) -> IO ()

instance QsetRootIndex (QListWidgetSc a) ((QModelIndex t1)) where
 setRootIndex x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListWidget_setRootIndex_h cobj_x0 cobj_x1

instance QqsetSelection (QListWidget ()) ((QRect t1, SelectionFlags)) where
 qsetSelection x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListWidget_setSelection cobj_x0 cobj_x1 (toCLong $ qFlags_toInt x2)

foreign import ccall "qtc_QListWidget_setSelection" qtc_QListWidget_setSelection :: Ptr (TQListWidget a) -> Ptr (TQRect t1) -> CLong -> IO ()

instance QqsetSelection (QListWidgetSc a) ((QRect t1, SelectionFlags)) where
 qsetSelection x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListWidget_setSelection cobj_x0 cobj_x1 (toCLong $ qFlags_toInt x2)

instance QsetSelection (QListWidget ()) ((Rect, SelectionFlags)) where
 setSelection x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QListWidget_setSelection_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h  (toCLong $ qFlags_toInt x2)

foreign import ccall "qtc_QListWidget_setSelection_qth" qtc_QListWidget_setSelection_qth :: Ptr (TQListWidget a) -> CInt -> CInt -> CInt -> CInt -> CLong -> IO ()

instance QsetSelection (QListWidgetSc a) ((Rect, SelectionFlags)) where
 setSelection x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QListWidget_setSelection_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h  (toCLong $ qFlags_toInt x2)

instance QsetSpacing (QListWidget ()) ((Int)) where
 setSpacing x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidget_setSpacing cobj_x0 (toCInt x1)

foreign import ccall "qtc_QListWidget_setSpacing" qtc_QListWidget_setSpacing :: Ptr (TQListWidget a) -> CInt -> IO ()

instance QsetSpacing (QListWidgetSc a) ((Int)) where
 setSpacing x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidget_setSpacing cobj_x0 (toCInt x1)

instance Qspacing (QListWidget ()) (()) where
 spacing x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidget_spacing cobj_x0

foreign import ccall "qtc_QListWidget_spacing" qtc_QListWidget_spacing :: Ptr (TQListWidget a) -> IO CInt

instance Qspacing (QListWidgetSc a) (()) where
 spacing x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidget_spacing cobj_x0

instance QstartDrag (QListWidget ()) ((DropActions)) where
 startDrag x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidget_startDrag cobj_x0 (toCLong $ qFlags_toInt x1)

foreign import ccall "qtc_QListWidget_startDrag" qtc_QListWidget_startDrag :: Ptr (TQListWidget a) -> CLong -> IO ()

instance QstartDrag (QListWidgetSc a) ((DropActions)) where
 startDrag x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidget_startDrag cobj_x0 (toCLong $ qFlags_toInt x1)

instance QtimerEvent (QListWidget ()) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListWidget_timerEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QListWidget_timerEvent" qtc_QListWidget_timerEvent :: Ptr (TQListWidget a) -> Ptr (TQTimerEvent t1) -> IO ()

instance QtimerEvent (QListWidgetSc a) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListWidget_timerEvent cobj_x0 cobj_x1

instance QupdateGeometries (QListWidget ()) (()) where
 updateGeometries x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidget_updateGeometries cobj_x0

foreign import ccall "qtc_QListWidget_updateGeometries" qtc_QListWidget_updateGeometries :: Ptr (TQListWidget a) -> IO ()

instance QupdateGeometries (QListWidgetSc a) (()) where
 updateGeometries x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidget_updateGeometries cobj_x0

instance QverticalOffset (QListWidget ()) (()) where
 verticalOffset x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidget_verticalOffset cobj_x0

foreign import ccall "qtc_QListWidget_verticalOffset" qtc_QListWidget_verticalOffset :: Ptr (TQListWidget a) -> IO CInt

instance QverticalOffset (QListWidgetSc a) (()) where
 verticalOffset x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidget_verticalOffset cobj_x0

instance QviewOptions (QListWidget ()) (()) where
 viewOptions x0 ()
  = withQStyleOptionViewItemResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidget_viewOptions cobj_x0

foreign import ccall "qtc_QListWidget_viewOptions" qtc_QListWidget_viewOptions :: Ptr (TQListWidget a) -> IO (Ptr (TQStyleOptionViewItem ()))

instance QviewOptions (QListWidgetSc a) (()) where
 viewOptions x0 ()
  = withQStyleOptionViewItemResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidget_viewOptions cobj_x0

instance QqvisualRect (QListWidget ()) ((QModelIndex t1)) where
 qvisualRect x0 (x1)
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListWidget_visualRect_h cobj_x0 cobj_x1

foreign import ccall "qtc_QListWidget_visualRect_h" qtc_QListWidget_visualRect_h :: Ptr (TQListWidget a) -> Ptr (TQModelIndex t1) -> IO (Ptr (TQRect ()))

instance QqvisualRect (QListWidgetSc a) ((QModelIndex t1)) where
 qvisualRect x0 (x1)
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListWidget_visualRect_h cobj_x0 cobj_x1

instance QvisualRect (QListWidget ()) ((QModelIndex t1)) where
 visualRect x0 (x1)
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListWidget_visualRect_qth_h cobj_x0 cobj_x1 crect_ret_x crect_ret_y crect_ret_w crect_ret_h

foreign import ccall "qtc_QListWidget_visualRect_qth_h" qtc_QListWidget_visualRect_qth_h :: Ptr (TQListWidget a) -> Ptr (TQModelIndex t1) -> Ptr CInt -> Ptr CInt -> Ptr CInt -> Ptr CInt -> IO ()

instance QvisualRect (QListWidgetSc a) ((QModelIndex t1)) where
 visualRect x0 (x1)
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListWidget_visualRect_qth_h cobj_x0 cobj_x1 crect_ret_x crect_ret_y crect_ret_w crect_ret_h

instance QvisualRegionForSelection (QListWidget ()) ((QItemSelection t1)) where
 visualRegionForSelection x0 (x1)
  = withQRegionResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListWidget_visualRegionForSelection cobj_x0 cobj_x1

foreign import ccall "qtc_QListWidget_visualRegionForSelection" qtc_QListWidget_visualRegionForSelection :: Ptr (TQListWidget a) -> Ptr (TQItemSelection t1) -> IO (Ptr (TQRegion ()))

instance QvisualRegionForSelection (QListWidgetSc a) ((QItemSelection t1)) where
 visualRegionForSelection x0 (x1)
  = withQRegionResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListWidget_visualRegionForSelection cobj_x0 cobj_x1

instance QcloseEditor (QListWidget ()) ((QWidget t1, EndEditHint)) where
 closeEditor x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListWidget_closeEditor cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QListWidget_closeEditor" qtc_QListWidget_closeEditor :: Ptr (TQListWidget a) -> Ptr (TQWidget t1) -> CLong -> IO ()

instance QcloseEditor (QListWidgetSc a) ((QWidget t1, EndEditHint)) where
 closeEditor x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListWidget_closeEditor cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

instance QcommitData (QListWidget ()) ((QWidget t1)) where
 commitData x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListWidget_commitData cobj_x0 cobj_x1

foreign import ccall "qtc_QListWidget_commitData" qtc_QListWidget_commitData :: Ptr (TQListWidget a) -> Ptr (TQWidget t1) -> IO ()

instance QcommitData (QListWidgetSc a) ((QWidget t1)) where
 commitData x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListWidget_commitData cobj_x0 cobj_x1

instance QdirtyRegionOffset (QListWidget ()) (()) where
 dirtyRegionOffset x0 ()
  = withPointResult $ \cpoint_ret_x cpoint_ret_y ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidget_dirtyRegionOffset_qth cobj_x0 cpoint_ret_x cpoint_ret_y

foreign import ccall "qtc_QListWidget_dirtyRegionOffset_qth" qtc_QListWidget_dirtyRegionOffset_qth :: Ptr (TQListWidget a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QdirtyRegionOffset (QListWidgetSc a) (()) where
 dirtyRegionOffset x0 ()
  = withPointResult $ \cpoint_ret_x cpoint_ret_y ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidget_dirtyRegionOffset_qth cobj_x0 cpoint_ret_x cpoint_ret_y

instance QqdirtyRegionOffset (QListWidget ()) (()) where
 qdirtyRegionOffset x0 ()
  = withQPointResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidget_dirtyRegionOffset cobj_x0

foreign import ccall "qtc_QListWidget_dirtyRegionOffset" qtc_QListWidget_dirtyRegionOffset :: Ptr (TQListWidget a) -> IO (Ptr (TQPoint ()))

instance QqdirtyRegionOffset (QListWidgetSc a) (()) where
 qdirtyRegionOffset x0 ()
  = withQPointResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidget_dirtyRegionOffset cobj_x0

instance QdoAutoScroll (QListWidget ()) (()) where
 doAutoScroll x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidget_doAutoScroll cobj_x0

foreign import ccall "qtc_QListWidget_doAutoScroll" qtc_QListWidget_doAutoScroll :: Ptr (TQListWidget a) -> IO ()

instance QdoAutoScroll (QListWidgetSc a) (()) where
 doAutoScroll x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidget_doAutoScroll cobj_x0

instance QdragEnterEvent (QListWidget ()) ((QDragEnterEvent t1)) where
 dragEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListWidget_dragEnterEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QListWidget_dragEnterEvent_h" qtc_QListWidget_dragEnterEvent_h :: Ptr (TQListWidget a) -> Ptr (TQDragEnterEvent t1) -> IO ()

instance QdragEnterEvent (QListWidgetSc a) ((QDragEnterEvent t1)) where
 dragEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListWidget_dragEnterEvent_h cobj_x0 cobj_x1

instance QdropIndicatorPosition (QListWidget ()) (()) where
 dropIndicatorPosition x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidget_dropIndicatorPosition cobj_x0

foreign import ccall "qtc_QListWidget_dropIndicatorPosition" qtc_QListWidget_dropIndicatorPosition :: Ptr (TQListWidget a) -> IO CLong

instance QdropIndicatorPosition (QListWidgetSc a) (()) where
 dropIndicatorPosition x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidget_dropIndicatorPosition cobj_x0

instance Qedit (QListWidget ()) ((QModelIndex t1, EditTrigger, QEvent t3)) (IO (Bool)) where
 edit x0 (x1, x2, x3)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QListWidget_edit cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2) cobj_x3

foreign import ccall "qtc_QListWidget_edit" qtc_QListWidget_edit :: Ptr (TQListWidget a) -> Ptr (TQModelIndex t1) -> CLong -> Ptr (TQEvent t3) -> IO CBool

instance Qedit (QListWidgetSc a) ((QModelIndex t1, EditTrigger, QEvent t3)) (IO (Bool)) where
 edit x0 (x1, x2, x3)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QListWidget_edit cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2) cobj_x3

instance QeditorDestroyed (QListWidget ()) ((QObject t1)) where
 editorDestroyed x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListWidget_editorDestroyed cobj_x0 cobj_x1

foreign import ccall "qtc_QListWidget_editorDestroyed" qtc_QListWidget_editorDestroyed :: Ptr (TQListWidget a) -> Ptr (TQObject t1) -> IO ()

instance QeditorDestroyed (QListWidgetSc a) ((QObject t1)) where
 editorDestroyed x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListWidget_editorDestroyed cobj_x0 cobj_x1

instance QexecuteDelayedItemsLayout (QListWidget ()) (()) where
 executeDelayedItemsLayout x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidget_executeDelayedItemsLayout cobj_x0

foreign import ccall "qtc_QListWidget_executeDelayedItemsLayout" qtc_QListWidget_executeDelayedItemsLayout :: Ptr (TQListWidget a) -> IO ()

instance QexecuteDelayedItemsLayout (QListWidgetSc a) (()) where
 executeDelayedItemsLayout x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidget_executeDelayedItemsLayout cobj_x0

instance QfocusInEvent (QListWidget ()) ((QFocusEvent t1)) where
 focusInEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListWidget_focusInEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QListWidget_focusInEvent_h" qtc_QListWidget_focusInEvent_h :: Ptr (TQListWidget a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusInEvent (QListWidgetSc a) ((QFocusEvent t1)) where
 focusInEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListWidget_focusInEvent_h cobj_x0 cobj_x1

instance QfocusNextPrevChild (QListWidget ()) ((Bool)) where
 focusNextPrevChild x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidget_focusNextPrevChild cobj_x0 (toCBool x1)

foreign import ccall "qtc_QListWidget_focusNextPrevChild" qtc_QListWidget_focusNextPrevChild :: Ptr (TQListWidget a) -> CBool -> IO CBool

instance QfocusNextPrevChild (QListWidgetSc a) ((Bool)) where
 focusNextPrevChild x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidget_focusNextPrevChild cobj_x0 (toCBool x1)

instance QfocusOutEvent (QListWidget ()) ((QFocusEvent t1)) where
 focusOutEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListWidget_focusOutEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QListWidget_focusOutEvent_h" qtc_QListWidget_focusOutEvent_h :: Ptr (TQListWidget a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusOutEvent (QListWidgetSc a) ((QFocusEvent t1)) where
 focusOutEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListWidget_focusOutEvent_h cobj_x0 cobj_x1

instance QhorizontalScrollbarAction (QListWidget ()) ((Int)) where
 horizontalScrollbarAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidget_horizontalScrollbarAction cobj_x0 (toCInt x1)

foreign import ccall "qtc_QListWidget_horizontalScrollbarAction" qtc_QListWidget_horizontalScrollbarAction :: Ptr (TQListWidget a) -> CInt -> IO ()

instance QhorizontalScrollbarAction (QListWidgetSc a) ((Int)) where
 horizontalScrollbarAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidget_horizontalScrollbarAction cobj_x0 (toCInt x1)

instance QhorizontalScrollbarValueChanged (QListWidget ()) ((Int)) where
 horizontalScrollbarValueChanged x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidget_horizontalScrollbarValueChanged cobj_x0 (toCInt x1)

foreign import ccall "qtc_QListWidget_horizontalScrollbarValueChanged" qtc_QListWidget_horizontalScrollbarValueChanged :: Ptr (TQListWidget a) -> CInt -> IO ()

instance QhorizontalScrollbarValueChanged (QListWidgetSc a) ((Int)) where
 horizontalScrollbarValueChanged x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidget_horizontalScrollbarValueChanged cobj_x0 (toCInt x1)

instance QhorizontalStepsPerItem (QListWidget ()) (()) where
 horizontalStepsPerItem x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidget_horizontalStepsPerItem cobj_x0

foreign import ccall "qtc_QListWidget_horizontalStepsPerItem" qtc_QListWidget_horizontalStepsPerItem :: Ptr (TQListWidget a) -> IO CInt

instance QhorizontalStepsPerItem (QListWidgetSc a) (()) where
 horizontalStepsPerItem x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidget_horizontalStepsPerItem cobj_x0

instance QinputMethodEvent (QListWidget ()) ((QInputMethodEvent t1)) where
 inputMethodEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListWidget_inputMethodEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QListWidget_inputMethodEvent" qtc_QListWidget_inputMethodEvent :: Ptr (TQListWidget a) -> Ptr (TQInputMethodEvent t1) -> IO ()

instance QinputMethodEvent (QListWidgetSc a) ((QInputMethodEvent t1)) where
 inputMethodEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListWidget_inputMethodEvent cobj_x0 cobj_x1

instance QinputMethodQuery (QListWidget ()) ((InputMethodQuery)) where
 inputMethodQuery x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidget_inputMethodQuery_h cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QListWidget_inputMethodQuery_h" qtc_QListWidget_inputMethodQuery_h :: Ptr (TQListWidget a) -> CLong -> IO (Ptr (TQVariant ()))

instance QinputMethodQuery (QListWidgetSc a) ((InputMethodQuery)) where
 inputMethodQuery x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidget_inputMethodQuery_h cobj_x0 (toCLong $ qEnum_toInt x1)

instance QkeyPressEvent (QListWidget ()) ((QKeyEvent t1)) where
 keyPressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListWidget_keyPressEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QListWidget_keyPressEvent_h" qtc_QListWidget_keyPressEvent_h :: Ptr (TQListWidget a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyPressEvent (QListWidgetSc a) ((QKeyEvent t1)) where
 keyPressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListWidget_keyPressEvent_h cobj_x0 cobj_x1

instance QkeyboardSearch (QListWidget ()) ((String)) where
 keyboardSearch x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QListWidget_keyboardSearch_h cobj_x0 cstr_x1

foreign import ccall "qtc_QListWidget_keyboardSearch_h" qtc_QListWidget_keyboardSearch_h :: Ptr (TQListWidget a) -> CWString -> IO ()

instance QkeyboardSearch (QListWidgetSc a) ((String)) where
 keyboardSearch x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QListWidget_keyboardSearch_h cobj_x0 cstr_x1

instance QmouseDoubleClickEvent (QListWidget ()) ((QMouseEvent t1)) where
 mouseDoubleClickEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListWidget_mouseDoubleClickEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QListWidget_mouseDoubleClickEvent_h" qtc_QListWidget_mouseDoubleClickEvent_h :: Ptr (TQListWidget a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseDoubleClickEvent (QListWidgetSc a) ((QMouseEvent t1)) where
 mouseDoubleClickEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListWidget_mouseDoubleClickEvent_h cobj_x0 cobj_x1

instance QmousePressEvent (QListWidget ()) ((QMouseEvent t1)) where
 mousePressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListWidget_mousePressEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QListWidget_mousePressEvent_h" qtc_QListWidget_mousePressEvent_h :: Ptr (TQListWidget a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmousePressEvent (QListWidgetSc a) ((QMouseEvent t1)) where
 mousePressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListWidget_mousePressEvent_h cobj_x0 cobj_x1

instance QscheduleDelayedItemsLayout (QListWidget ()) (()) where
 scheduleDelayedItemsLayout x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidget_scheduleDelayedItemsLayout cobj_x0

foreign import ccall "qtc_QListWidget_scheduleDelayedItemsLayout" qtc_QListWidget_scheduleDelayedItemsLayout :: Ptr (TQListWidget a) -> IO ()

instance QscheduleDelayedItemsLayout (QListWidgetSc a) (()) where
 scheduleDelayedItemsLayout x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidget_scheduleDelayedItemsLayout cobj_x0

instance QscrollDirtyRegion (QListWidget ()) ((Int, Int)) where
 scrollDirtyRegion x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidget_scrollDirtyRegion cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QListWidget_scrollDirtyRegion" qtc_QListWidget_scrollDirtyRegion :: Ptr (TQListWidget a) -> CInt -> CInt -> IO ()

instance QscrollDirtyRegion (QListWidgetSc a) ((Int, Int)) where
 scrollDirtyRegion x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidget_scrollDirtyRegion cobj_x0 (toCInt x1) (toCInt x2)

instance QselectAll (QListWidget ()) (()) where
 selectAll x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidget_selectAll_h cobj_x0

foreign import ccall "qtc_QListWidget_selectAll_h" qtc_QListWidget_selectAll_h :: Ptr (TQListWidget a) -> IO ()

instance QselectAll (QListWidgetSc a) (()) where
 selectAll x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidget_selectAll_h cobj_x0

instance QselectionCommand (QListWidget ()) ((QModelIndex t1)) where
 selectionCommand x0 (x1)
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListWidget_selectionCommand cobj_x0 cobj_x1

foreign import ccall "qtc_QListWidget_selectionCommand" qtc_QListWidget_selectionCommand :: Ptr (TQListWidget a) -> Ptr (TQModelIndex t1) -> IO CLong

instance QselectionCommand (QListWidgetSc a) ((QModelIndex t1)) where
 selectionCommand x0 (x1)
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListWidget_selectionCommand cobj_x0 cobj_x1

instance QselectionCommand (QListWidget ()) ((QModelIndex t1, QEvent t2)) where
 selectionCommand x0 (x1, x2)
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QListWidget_selectionCommand1 cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QListWidget_selectionCommand1" qtc_QListWidget_selectionCommand1 :: Ptr (TQListWidget a) -> Ptr (TQModelIndex t1) -> Ptr (TQEvent t2) -> IO CLong

instance QselectionCommand (QListWidgetSc a) ((QModelIndex t1, QEvent t2)) where
 selectionCommand x0 (x1, x2)
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QListWidget_selectionCommand1 cobj_x0 cobj_x1 cobj_x2

instance QsetDirtyRegion (QListWidget ()) ((QRegion t1)) where
 setDirtyRegion x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListWidget_setDirtyRegion cobj_x0 cobj_x1

foreign import ccall "qtc_QListWidget_setDirtyRegion" qtc_QListWidget_setDirtyRegion :: Ptr (TQListWidget a) -> Ptr (TQRegion t1) -> IO ()

instance QsetDirtyRegion (QListWidgetSc a) ((QRegion t1)) where
 setDirtyRegion x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListWidget_setDirtyRegion cobj_x0 cobj_x1

instance QsetHorizontalStepsPerItem (QListWidget ()) ((Int)) where
 setHorizontalStepsPerItem x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidget_setHorizontalStepsPerItem cobj_x0 (toCInt x1)

foreign import ccall "qtc_QListWidget_setHorizontalStepsPerItem" qtc_QListWidget_setHorizontalStepsPerItem :: Ptr (TQListWidget a) -> CInt -> IO ()

instance QsetHorizontalStepsPerItem (QListWidgetSc a) ((Int)) where
 setHorizontalStepsPerItem x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidget_setHorizontalStepsPerItem cobj_x0 (toCInt x1)

instance QsetModel (QListWidget ()) ((QAbstractItemModel t1)) where
 setModel x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListWidget_setModel_h cobj_x0 cobj_x1

foreign import ccall "qtc_QListWidget_setModel_h" qtc_QListWidget_setModel_h :: Ptr (TQListWidget a) -> Ptr (TQAbstractItemModel t1) -> IO ()

instance QsetModel (QListWidgetSc a) ((QAbstractItemModel t1)) where
 setModel x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListWidget_setModel_h cobj_x0 cobj_x1

instance QsetSelectionModel (QListWidget ()) ((QItemSelectionModel t1)) where
 setSelectionModel x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListWidget_setSelectionModel_h cobj_x0 cobj_x1

foreign import ccall "qtc_QListWidget_setSelectionModel_h" qtc_QListWidget_setSelectionModel_h :: Ptr (TQListWidget a) -> Ptr (TQItemSelectionModel t1) -> IO ()

instance QsetSelectionModel (QListWidgetSc a) ((QItemSelectionModel t1)) where
 setSelectionModel x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListWidget_setSelectionModel_h cobj_x0 cobj_x1

instance QsetState (QListWidget ()) ((QAbstractItemViewState)) where
 setState x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidget_setState cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QListWidget_setState" qtc_QListWidget_setState :: Ptr (TQListWidget a) -> CLong -> IO ()

instance QsetState (QListWidgetSc a) ((QAbstractItemViewState)) where
 setState x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidget_setState cobj_x0 (toCLong $ qEnum_toInt x1)

instance QsetVerticalStepsPerItem (QListWidget ()) ((Int)) where
 setVerticalStepsPerItem x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidget_setVerticalStepsPerItem cobj_x0 (toCInt x1)

foreign import ccall "qtc_QListWidget_setVerticalStepsPerItem" qtc_QListWidget_setVerticalStepsPerItem :: Ptr (TQListWidget a) -> CInt -> IO ()

instance QsetVerticalStepsPerItem (QListWidgetSc a) ((Int)) where
 setVerticalStepsPerItem x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidget_setVerticalStepsPerItem cobj_x0 (toCInt x1)

instance QsizeHintForColumn (QListWidget ()) ((Int)) where
 sizeHintForColumn x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidget_sizeHintForColumn_h cobj_x0 (toCInt x1)

foreign import ccall "qtc_QListWidget_sizeHintForColumn_h" qtc_QListWidget_sizeHintForColumn_h :: Ptr (TQListWidget a) -> CInt -> IO CInt

instance QsizeHintForColumn (QListWidgetSc a) ((Int)) where
 sizeHintForColumn x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidget_sizeHintForColumn_h cobj_x0 (toCInt x1)

instance QsizeHintForRow (QListWidget ()) ((Int)) where
 sizeHintForRow x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidget_sizeHintForRow_h cobj_x0 (toCInt x1)

foreign import ccall "qtc_QListWidget_sizeHintForRow_h" qtc_QListWidget_sizeHintForRow_h :: Ptr (TQListWidget a) -> CInt -> IO CInt

instance QsizeHintForRow (QListWidgetSc a) ((Int)) where
 sizeHintForRow x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidget_sizeHintForRow_h cobj_x0 (toCInt x1)

instance QstartAutoScroll (QListWidget ()) (()) where
 startAutoScroll x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidget_startAutoScroll cobj_x0

foreign import ccall "qtc_QListWidget_startAutoScroll" qtc_QListWidget_startAutoScroll :: Ptr (TQListWidget a) -> IO ()

instance QstartAutoScroll (QListWidgetSc a) (()) where
 startAutoScroll x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidget_startAutoScroll cobj_x0

instance Qstate (QListWidget ()) (()) (IO (QAbstractItemViewState)) where
 state x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidget_state cobj_x0

foreign import ccall "qtc_QListWidget_state" qtc_QListWidget_state :: Ptr (TQListWidget a) -> IO CLong

instance Qstate (QListWidgetSc a) (()) (IO (QAbstractItemViewState)) where
 state x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidget_state cobj_x0

instance QstopAutoScroll (QListWidget ()) (()) where
 stopAutoScroll x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidget_stopAutoScroll cobj_x0

foreign import ccall "qtc_QListWidget_stopAutoScroll" qtc_QListWidget_stopAutoScroll :: Ptr (TQListWidget a) -> IO ()

instance QstopAutoScroll (QListWidgetSc a) (()) where
 stopAutoScroll x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidget_stopAutoScroll cobj_x0

instance QupdateEditorData (QListWidget ()) (()) where
 updateEditorData x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidget_updateEditorData cobj_x0

foreign import ccall "qtc_QListWidget_updateEditorData" qtc_QListWidget_updateEditorData :: Ptr (TQListWidget a) -> IO ()

instance QupdateEditorData (QListWidgetSc a) (()) where
 updateEditorData x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidget_updateEditorData cobj_x0

instance QupdateEditorGeometries (QListWidget ()) (()) where
 updateEditorGeometries x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidget_updateEditorGeometries cobj_x0

foreign import ccall "qtc_QListWidget_updateEditorGeometries" qtc_QListWidget_updateEditorGeometries :: Ptr (TQListWidget a) -> IO ()

instance QupdateEditorGeometries (QListWidgetSc a) (()) where
 updateEditorGeometries x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidget_updateEditorGeometries cobj_x0

instance QverticalScrollbarAction (QListWidget ()) ((Int)) where
 verticalScrollbarAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidget_verticalScrollbarAction cobj_x0 (toCInt x1)

foreign import ccall "qtc_QListWidget_verticalScrollbarAction" qtc_QListWidget_verticalScrollbarAction :: Ptr (TQListWidget a) -> CInt -> IO ()

instance QverticalScrollbarAction (QListWidgetSc a) ((Int)) where
 verticalScrollbarAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidget_verticalScrollbarAction cobj_x0 (toCInt x1)

instance QverticalScrollbarValueChanged (QListWidget ()) ((Int)) where
 verticalScrollbarValueChanged x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidget_verticalScrollbarValueChanged cobj_x0 (toCInt x1)

foreign import ccall "qtc_QListWidget_verticalScrollbarValueChanged" qtc_QListWidget_verticalScrollbarValueChanged :: Ptr (TQListWidget a) -> CInt -> IO ()

instance QverticalScrollbarValueChanged (QListWidgetSc a) ((Int)) where
 verticalScrollbarValueChanged x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidget_verticalScrollbarValueChanged cobj_x0 (toCInt x1)

instance QverticalStepsPerItem (QListWidget ()) (()) where
 verticalStepsPerItem x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidget_verticalStepsPerItem cobj_x0

foreign import ccall "qtc_QListWidget_verticalStepsPerItem" qtc_QListWidget_verticalStepsPerItem :: Ptr (TQListWidget a) -> IO CInt

instance QverticalStepsPerItem (QListWidgetSc a) (()) where
 verticalStepsPerItem x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidget_verticalStepsPerItem cobj_x0

instance QviewportEvent (QListWidget ()) ((QEvent t1)) where
 viewportEvent x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListWidget_viewportEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QListWidget_viewportEvent_h" qtc_QListWidget_viewportEvent_h :: Ptr (TQListWidget a) -> Ptr (TQEvent t1) -> IO CBool

instance QviewportEvent (QListWidgetSc a) ((QEvent t1)) where
 viewportEvent x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListWidget_viewportEvent_h cobj_x0 cobj_x1

instance QcontextMenuEvent (QListWidget ()) ((QContextMenuEvent t1)) where
 contextMenuEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListWidget_contextMenuEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QListWidget_contextMenuEvent_h" qtc_QListWidget_contextMenuEvent_h :: Ptr (TQListWidget a) -> Ptr (TQContextMenuEvent t1) -> IO ()

instance QcontextMenuEvent (QListWidgetSc a) ((QContextMenuEvent t1)) where
 contextMenuEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListWidget_contextMenuEvent_h cobj_x0 cobj_x1

instance QqminimumSizeHint (QListWidget ()) (()) where
 qminimumSizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidget_minimumSizeHint_h cobj_x0

foreign import ccall "qtc_QListWidget_minimumSizeHint_h" qtc_QListWidget_minimumSizeHint_h :: Ptr (TQListWidget a) -> IO (Ptr (TQSize ()))

instance QqminimumSizeHint (QListWidgetSc a) (()) where
 qminimumSizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidget_minimumSizeHint_h cobj_x0

instance QminimumSizeHint (QListWidget ()) (()) where
 minimumSizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidget_minimumSizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QListWidget_minimumSizeHint_qth_h" qtc_QListWidget_minimumSizeHint_qth_h :: Ptr (TQListWidget a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QminimumSizeHint (QListWidgetSc a) (()) where
 minimumSizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidget_minimumSizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

instance QsetViewportMargins (QListWidget ()) ((Int, Int, Int, Int)) where
 setViewportMargins x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidget_setViewportMargins cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QListWidget_setViewportMargins" qtc_QListWidget_setViewportMargins :: Ptr (TQListWidget a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QsetViewportMargins (QListWidgetSc a) ((Int, Int, Int, Int)) where
 setViewportMargins x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidget_setViewportMargins cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

instance QsetupViewport (QListWidget ()) ((QWidget t1)) where
 setupViewport x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListWidget_setupViewport cobj_x0 cobj_x1

foreign import ccall "qtc_QListWidget_setupViewport" qtc_QListWidget_setupViewport :: Ptr (TQListWidget a) -> Ptr (TQWidget t1) -> IO ()

instance QsetupViewport (QListWidgetSc a) ((QWidget t1)) where
 setupViewport x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListWidget_setupViewport cobj_x0 cobj_x1

instance QqsizeHint (QListWidget ()) (()) where
 qsizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidget_sizeHint_h cobj_x0

foreign import ccall "qtc_QListWidget_sizeHint_h" qtc_QListWidget_sizeHint_h :: Ptr (TQListWidget a) -> IO (Ptr (TQSize ()))

instance QqsizeHint (QListWidgetSc a) (()) where
 qsizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidget_sizeHint_h cobj_x0

instance QsizeHint (QListWidget ()) (()) where
 sizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidget_sizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QListWidget_sizeHint_qth_h" qtc_QListWidget_sizeHint_qth_h :: Ptr (TQListWidget a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QsizeHint (QListWidgetSc a) (()) where
 sizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidget_sizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

instance QwheelEvent (QListWidget ()) ((QWheelEvent t1)) where
 wheelEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListWidget_wheelEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QListWidget_wheelEvent_h" qtc_QListWidget_wheelEvent_h :: Ptr (TQListWidget a) -> Ptr (TQWheelEvent t1) -> IO ()

instance QwheelEvent (QListWidgetSc a) ((QWheelEvent t1)) where
 wheelEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListWidget_wheelEvent_h cobj_x0 cobj_x1

instance QchangeEvent (QListWidget ()) ((QEvent t1)) where
 changeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListWidget_changeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QListWidget_changeEvent_h" qtc_QListWidget_changeEvent_h :: Ptr (TQListWidget a) -> Ptr (TQEvent t1) -> IO ()

instance QchangeEvent (QListWidgetSc a) ((QEvent t1)) where
 changeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListWidget_changeEvent_h cobj_x0 cobj_x1

instance QdrawFrame (QListWidget ()) ((QPainter t1)) where
 drawFrame x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListWidget_drawFrame cobj_x0 cobj_x1

foreign import ccall "qtc_QListWidget_drawFrame" qtc_QListWidget_drawFrame :: Ptr (TQListWidget a) -> Ptr (TQPainter t1) -> IO ()

instance QdrawFrame (QListWidgetSc a) ((QPainter t1)) where
 drawFrame x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListWidget_drawFrame cobj_x0 cobj_x1

instance QactionEvent (QListWidget ()) ((QActionEvent t1)) where
 actionEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListWidget_actionEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QListWidget_actionEvent_h" qtc_QListWidget_actionEvent_h :: Ptr (TQListWidget a) -> Ptr (TQActionEvent t1) -> IO ()

instance QactionEvent (QListWidgetSc a) ((QActionEvent t1)) where
 actionEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListWidget_actionEvent_h cobj_x0 cobj_x1

instance QaddAction (QListWidget ()) ((QAction t1)) (IO ()) where
 addAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListWidget_addAction cobj_x0 cobj_x1

foreign import ccall "qtc_QListWidget_addAction" qtc_QListWidget_addAction :: Ptr (TQListWidget a) -> Ptr (TQAction t1) -> IO ()

instance QaddAction (QListWidgetSc a) ((QAction t1)) (IO ()) where
 addAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListWidget_addAction cobj_x0 cobj_x1

instance QcloseEvent (QListWidget ()) ((QCloseEvent t1)) where
 closeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListWidget_closeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QListWidget_closeEvent_h" qtc_QListWidget_closeEvent_h :: Ptr (TQListWidget a) -> Ptr (TQCloseEvent t1) -> IO ()

instance QcloseEvent (QListWidgetSc a) ((QCloseEvent t1)) where
 closeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListWidget_closeEvent_h cobj_x0 cobj_x1

instance Qcreate (QListWidget ()) (()) (IO ()) where
 create x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidget_create cobj_x0

foreign import ccall "qtc_QListWidget_create" qtc_QListWidget_create :: Ptr (TQListWidget a) -> IO ()

instance Qcreate (QListWidgetSc a) (()) (IO ()) where
 create x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidget_create cobj_x0

instance Qcreate (QListWidget ()) ((QVoid t1)) (IO ()) where
 create x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListWidget_create1 cobj_x0 cobj_x1

foreign import ccall "qtc_QListWidget_create1" qtc_QListWidget_create1 :: Ptr (TQListWidget a) -> Ptr (TQVoid t1) -> IO ()

instance Qcreate (QListWidgetSc a) ((QVoid t1)) (IO ()) where
 create x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListWidget_create1 cobj_x0 cobj_x1

instance Qcreate (QListWidget ()) ((QVoid t1, Bool)) (IO ()) where
 create x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListWidget_create2 cobj_x0 cobj_x1 (toCBool x2)

foreign import ccall "qtc_QListWidget_create2" qtc_QListWidget_create2 :: Ptr (TQListWidget a) -> Ptr (TQVoid t1) -> CBool -> IO ()

instance Qcreate (QListWidgetSc a) ((QVoid t1, Bool)) (IO ()) where
 create x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListWidget_create2 cobj_x0 cobj_x1 (toCBool x2)

instance Qcreate (QListWidget ()) ((QVoid t1, Bool, Bool)) (IO ()) where
 create x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListWidget_create3 cobj_x0 cobj_x1 (toCBool x2) (toCBool x3)

foreign import ccall "qtc_QListWidget_create3" qtc_QListWidget_create3 :: Ptr (TQListWidget a) -> Ptr (TQVoid t1) -> CBool -> CBool -> IO ()

instance Qcreate (QListWidgetSc a) ((QVoid t1, Bool, Bool)) (IO ()) where
 create x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListWidget_create3 cobj_x0 cobj_x1 (toCBool x2) (toCBool x3)

instance Qdestroy (QListWidget ()) (()) where
 destroy x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidget_destroy cobj_x0

foreign import ccall "qtc_QListWidget_destroy" qtc_QListWidget_destroy :: Ptr (TQListWidget a) -> IO ()

instance Qdestroy (QListWidgetSc a) (()) where
 destroy x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidget_destroy cobj_x0

instance Qdestroy (QListWidget ()) ((Bool)) where
 destroy x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidget_destroy1 cobj_x0 (toCBool x1)

foreign import ccall "qtc_QListWidget_destroy1" qtc_QListWidget_destroy1 :: Ptr (TQListWidget a) -> CBool -> IO ()

instance Qdestroy (QListWidgetSc a) ((Bool)) where
 destroy x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidget_destroy1 cobj_x0 (toCBool x1)

instance Qdestroy (QListWidget ()) ((Bool, Bool)) where
 destroy x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidget_destroy2 cobj_x0 (toCBool x1) (toCBool x2)

foreign import ccall "qtc_QListWidget_destroy2" qtc_QListWidget_destroy2 :: Ptr (TQListWidget a) -> CBool -> CBool -> IO ()

instance Qdestroy (QListWidgetSc a) ((Bool, Bool)) where
 destroy x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidget_destroy2 cobj_x0 (toCBool x1) (toCBool x2)

instance QdevType (QListWidget ()) (()) where
 devType x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidget_devType_h cobj_x0

foreign import ccall "qtc_QListWidget_devType_h" qtc_QListWidget_devType_h :: Ptr (TQListWidget a) -> IO CInt

instance QdevType (QListWidgetSc a) (()) where
 devType x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidget_devType_h cobj_x0

instance QenabledChange (QListWidget ()) ((Bool)) where
 enabledChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidget_enabledChange cobj_x0 (toCBool x1)

foreign import ccall "qtc_QListWidget_enabledChange" qtc_QListWidget_enabledChange :: Ptr (TQListWidget a) -> CBool -> IO ()

instance QenabledChange (QListWidgetSc a) ((Bool)) where
 enabledChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidget_enabledChange cobj_x0 (toCBool x1)

instance QenterEvent (QListWidget ()) ((QEvent t1)) where
 enterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListWidget_enterEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QListWidget_enterEvent_h" qtc_QListWidget_enterEvent_h :: Ptr (TQListWidget a) -> Ptr (TQEvent t1) -> IO ()

instance QenterEvent (QListWidgetSc a) ((QEvent t1)) where
 enterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListWidget_enterEvent_h cobj_x0 cobj_x1

instance QfocusNextChild (QListWidget ()) (()) where
 focusNextChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidget_focusNextChild cobj_x0

foreign import ccall "qtc_QListWidget_focusNextChild" qtc_QListWidget_focusNextChild :: Ptr (TQListWidget a) -> IO CBool

instance QfocusNextChild (QListWidgetSc a) (()) where
 focusNextChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidget_focusNextChild cobj_x0

instance QfocusPreviousChild (QListWidget ()) (()) where
 focusPreviousChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidget_focusPreviousChild cobj_x0

foreign import ccall "qtc_QListWidget_focusPreviousChild" qtc_QListWidget_focusPreviousChild :: Ptr (TQListWidget a) -> IO CBool

instance QfocusPreviousChild (QListWidgetSc a) (()) where
 focusPreviousChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidget_focusPreviousChild cobj_x0

instance QfontChange (QListWidget ()) ((QFont t1)) where
 fontChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListWidget_fontChange cobj_x0 cobj_x1

foreign import ccall "qtc_QListWidget_fontChange" qtc_QListWidget_fontChange :: Ptr (TQListWidget a) -> Ptr (TQFont t1) -> IO ()

instance QfontChange (QListWidgetSc a) ((QFont t1)) where
 fontChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListWidget_fontChange cobj_x0 cobj_x1

instance QheightForWidth (QListWidget ()) ((Int)) where
 heightForWidth x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidget_heightForWidth_h cobj_x0 (toCInt x1)

foreign import ccall "qtc_QListWidget_heightForWidth_h" qtc_QListWidget_heightForWidth_h :: Ptr (TQListWidget a) -> CInt -> IO CInt

instance QheightForWidth (QListWidgetSc a) ((Int)) where
 heightForWidth x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidget_heightForWidth_h cobj_x0 (toCInt x1)

instance QhideEvent (QListWidget ()) ((QHideEvent t1)) where
 hideEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListWidget_hideEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QListWidget_hideEvent_h" qtc_QListWidget_hideEvent_h :: Ptr (TQListWidget a) -> Ptr (TQHideEvent t1) -> IO ()

instance QhideEvent (QListWidgetSc a) ((QHideEvent t1)) where
 hideEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListWidget_hideEvent_h cobj_x0 cobj_x1

instance QkeyReleaseEvent (QListWidget ()) ((QKeyEvent t1)) where
 keyReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListWidget_keyReleaseEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QListWidget_keyReleaseEvent_h" qtc_QListWidget_keyReleaseEvent_h :: Ptr (TQListWidget a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyReleaseEvent (QListWidgetSc a) ((QKeyEvent t1)) where
 keyReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListWidget_keyReleaseEvent_h cobj_x0 cobj_x1

instance QlanguageChange (QListWidget ()) (()) where
 languageChange x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidget_languageChange cobj_x0

foreign import ccall "qtc_QListWidget_languageChange" qtc_QListWidget_languageChange :: Ptr (TQListWidget a) -> IO ()

instance QlanguageChange (QListWidgetSc a) (()) where
 languageChange x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidget_languageChange cobj_x0

instance QleaveEvent (QListWidget ()) ((QEvent t1)) where
 leaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListWidget_leaveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QListWidget_leaveEvent_h" qtc_QListWidget_leaveEvent_h :: Ptr (TQListWidget a) -> Ptr (TQEvent t1) -> IO ()

instance QleaveEvent (QListWidgetSc a) ((QEvent t1)) where
 leaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListWidget_leaveEvent_h cobj_x0 cobj_x1

instance Qmetric (QListWidget ()) ((PaintDeviceMetric)) where
 metric x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidget_metric cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QListWidget_metric" qtc_QListWidget_metric :: Ptr (TQListWidget a) -> CLong -> IO CInt

instance Qmetric (QListWidgetSc a) ((PaintDeviceMetric)) where
 metric x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidget_metric cobj_x0 (toCLong $ qEnum_toInt x1)

instance Qmove (QListWidget ()) ((Int, Int)) where
 move x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidget_move1 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QListWidget_move1" qtc_QListWidget_move1 :: Ptr (TQListWidget a) -> CInt -> CInt -> IO ()

instance Qmove (QListWidgetSc a) ((Int, Int)) where
 move x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidget_move1 cobj_x0 (toCInt x1) (toCInt x2)

instance Qmove (QListWidget ()) ((Point)) where
 move x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QListWidget_move_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

foreign import ccall "qtc_QListWidget_move_qth" qtc_QListWidget_move_qth :: Ptr (TQListWidget a) -> CInt -> CInt -> IO ()

instance Qmove (QListWidgetSc a) ((Point)) where
 move x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QListWidget_move_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

instance Qqmove (QListWidget ()) ((QPoint t1)) where
 qmove x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListWidget_move cobj_x0 cobj_x1

foreign import ccall "qtc_QListWidget_move" qtc_QListWidget_move :: Ptr (TQListWidget a) -> Ptr (TQPoint t1) -> IO ()

instance Qqmove (QListWidgetSc a) ((QPoint t1)) where
 qmove x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListWidget_move cobj_x0 cobj_x1

instance QmoveEvent (QListWidget ()) ((QMoveEvent t1)) where
 moveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListWidget_moveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QListWidget_moveEvent_h" qtc_QListWidget_moveEvent_h :: Ptr (TQListWidget a) -> Ptr (TQMoveEvent t1) -> IO ()

instance QmoveEvent (QListWidgetSc a) ((QMoveEvent t1)) where
 moveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListWidget_moveEvent_h cobj_x0 cobj_x1

instance QpaintEngine (QListWidget ()) (()) where
 paintEngine x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidget_paintEngine_h cobj_x0

foreign import ccall "qtc_QListWidget_paintEngine_h" qtc_QListWidget_paintEngine_h :: Ptr (TQListWidget a) -> IO (Ptr (TQPaintEngine ()))

instance QpaintEngine (QListWidgetSc a) (()) where
 paintEngine x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidget_paintEngine_h cobj_x0

instance QpaletteChange (QListWidget ()) ((QPalette t1)) where
 paletteChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListWidget_paletteChange cobj_x0 cobj_x1

foreign import ccall "qtc_QListWidget_paletteChange" qtc_QListWidget_paletteChange :: Ptr (TQListWidget a) -> Ptr (TQPalette t1) -> IO ()

instance QpaletteChange (QListWidgetSc a) ((QPalette t1)) where
 paletteChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListWidget_paletteChange cobj_x0 cobj_x1

instance Qrepaint (QListWidget ()) (()) where
 repaint x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidget_repaint cobj_x0

foreign import ccall "qtc_QListWidget_repaint" qtc_QListWidget_repaint :: Ptr (TQListWidget a) -> IO ()

instance Qrepaint (QListWidgetSc a) (()) where
 repaint x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidget_repaint cobj_x0

instance Qrepaint (QListWidget ()) ((Int, Int, Int, Int)) where
 repaint x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidget_repaint2 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QListWidget_repaint2" qtc_QListWidget_repaint2 :: Ptr (TQListWidget a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance Qrepaint (QListWidgetSc a) ((Int, Int, Int, Int)) where
 repaint x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidget_repaint2 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

instance Qrepaint (QListWidget ()) ((QRegion t1)) where
 repaint x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListWidget_repaint1 cobj_x0 cobj_x1

foreign import ccall "qtc_QListWidget_repaint1" qtc_QListWidget_repaint1 :: Ptr (TQListWidget a) -> Ptr (TQRegion t1) -> IO ()

instance Qrepaint (QListWidgetSc a) ((QRegion t1)) where
 repaint x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListWidget_repaint1 cobj_x0 cobj_x1

instance QresetInputContext (QListWidget ()) (()) where
 resetInputContext x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidget_resetInputContext cobj_x0

foreign import ccall "qtc_QListWidget_resetInputContext" qtc_QListWidget_resetInputContext :: Ptr (TQListWidget a) -> IO ()

instance QresetInputContext (QListWidgetSc a) (()) where
 resetInputContext x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidget_resetInputContext cobj_x0

instance Qresize (QListWidget ()) ((Int, Int)) (IO ()) where
 resize x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidget_resize1 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QListWidget_resize1" qtc_QListWidget_resize1 :: Ptr (TQListWidget a) -> CInt -> CInt -> IO ()

instance Qresize (QListWidgetSc a) ((Int, Int)) (IO ()) where
 resize x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidget_resize1 cobj_x0 (toCInt x1) (toCInt x2)

instance Qqresize (QListWidget ()) ((QSize t1)) where
 qresize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListWidget_resize cobj_x0 cobj_x1

foreign import ccall "qtc_QListWidget_resize" qtc_QListWidget_resize :: Ptr (TQListWidget a) -> Ptr (TQSize t1) -> IO ()

instance Qqresize (QListWidgetSc a) ((QSize t1)) where
 qresize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListWidget_resize cobj_x0 cobj_x1

instance Qresize (QListWidget ()) ((Size)) (IO ()) where
 resize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QListWidget_resize_qth cobj_x0 csize_x1_w csize_x1_h 

foreign import ccall "qtc_QListWidget_resize_qth" qtc_QListWidget_resize_qth :: Ptr (TQListWidget a) -> CInt -> CInt -> IO ()

instance Qresize (QListWidgetSc a) ((Size)) (IO ()) where
 resize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QListWidget_resize_qth cobj_x0 csize_x1_w csize_x1_h 

instance QsetGeometry (QListWidget ()) ((Int, Int, Int, Int)) where
 setGeometry x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidget_setGeometry1 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QListWidget_setGeometry1" qtc_QListWidget_setGeometry1 :: Ptr (TQListWidget a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QsetGeometry (QListWidgetSc a) ((Int, Int, Int, Int)) where
 setGeometry x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidget_setGeometry1 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

instance QqsetGeometry (QListWidget ()) ((QRect t1)) where
 qsetGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListWidget_setGeometry cobj_x0 cobj_x1

foreign import ccall "qtc_QListWidget_setGeometry" qtc_QListWidget_setGeometry :: Ptr (TQListWidget a) -> Ptr (TQRect t1) -> IO ()

instance QqsetGeometry (QListWidgetSc a) ((QRect t1)) where
 qsetGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListWidget_setGeometry cobj_x0 cobj_x1

instance QsetGeometry (QListWidget ()) ((Rect)) where
 setGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QListWidget_setGeometry_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

foreign import ccall "qtc_QListWidget_setGeometry_qth" qtc_QListWidget_setGeometry_qth :: Ptr (TQListWidget a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QsetGeometry (QListWidgetSc a) ((Rect)) where
 setGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QListWidget_setGeometry_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

instance QsetMouseTracking (QListWidget ()) ((Bool)) where
 setMouseTracking x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidget_setMouseTracking cobj_x0 (toCBool x1)

foreign import ccall "qtc_QListWidget_setMouseTracking" qtc_QListWidget_setMouseTracking :: Ptr (TQListWidget a) -> CBool -> IO ()

instance QsetMouseTracking (QListWidgetSc a) ((Bool)) where
 setMouseTracking x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidget_setMouseTracking cobj_x0 (toCBool x1)

instance QsetVisible (QListWidget ()) ((Bool)) where
 setVisible x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidget_setVisible_h cobj_x0 (toCBool x1)

foreign import ccall "qtc_QListWidget_setVisible_h" qtc_QListWidget_setVisible_h :: Ptr (TQListWidget a) -> CBool -> IO ()

instance QsetVisible (QListWidgetSc a) ((Bool)) where
 setVisible x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidget_setVisible_h cobj_x0 (toCBool x1)

instance QshowEvent (QListWidget ()) ((QShowEvent t1)) where
 showEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListWidget_showEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QListWidget_showEvent_h" qtc_QListWidget_showEvent_h :: Ptr (TQListWidget a) -> Ptr (TQShowEvent t1) -> IO ()

instance QshowEvent (QListWidgetSc a) ((QShowEvent t1)) where
 showEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListWidget_showEvent_h cobj_x0 cobj_x1

instance QtabletEvent (QListWidget ()) ((QTabletEvent t1)) where
 tabletEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListWidget_tabletEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QListWidget_tabletEvent_h" qtc_QListWidget_tabletEvent_h :: Ptr (TQListWidget a) -> Ptr (TQTabletEvent t1) -> IO ()

instance QtabletEvent (QListWidgetSc a) ((QTabletEvent t1)) where
 tabletEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListWidget_tabletEvent_h cobj_x0 cobj_x1

instance QupdateMicroFocus (QListWidget ()) (()) where
 updateMicroFocus x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidget_updateMicroFocus cobj_x0

foreign import ccall "qtc_QListWidget_updateMicroFocus" qtc_QListWidget_updateMicroFocus :: Ptr (TQListWidget a) -> IO ()

instance QupdateMicroFocus (QListWidgetSc a) (()) where
 updateMicroFocus x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidget_updateMicroFocus cobj_x0

instance QwindowActivationChange (QListWidget ()) ((Bool)) where
 windowActivationChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidget_windowActivationChange cobj_x0 (toCBool x1)

foreign import ccall "qtc_QListWidget_windowActivationChange" qtc_QListWidget_windowActivationChange :: Ptr (TQListWidget a) -> CBool -> IO ()

instance QwindowActivationChange (QListWidgetSc a) ((Bool)) where
 windowActivationChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidget_windowActivationChange cobj_x0 (toCBool x1)

instance QchildEvent (QListWidget ()) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListWidget_childEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QListWidget_childEvent" qtc_QListWidget_childEvent :: Ptr (TQListWidget a) -> Ptr (TQChildEvent t1) -> IO ()

instance QchildEvent (QListWidgetSc a) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListWidget_childEvent cobj_x0 cobj_x1

instance QconnectNotify (QListWidget ()) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QListWidget_connectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QListWidget_connectNotify" qtc_QListWidget_connectNotify :: Ptr (TQListWidget a) -> CWString -> IO ()

instance QconnectNotify (QListWidgetSc a) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QListWidget_connectNotify cobj_x0 cstr_x1

instance QcustomEvent (QListWidget ()) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListWidget_customEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QListWidget_customEvent" qtc_QListWidget_customEvent :: Ptr (TQListWidget a) -> Ptr (TQEvent t1) -> IO ()

instance QcustomEvent (QListWidgetSc a) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListWidget_customEvent cobj_x0 cobj_x1

instance QdisconnectNotify (QListWidget ()) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QListWidget_disconnectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QListWidget_disconnectNotify" qtc_QListWidget_disconnectNotify :: Ptr (TQListWidget a) -> CWString -> IO ()

instance QdisconnectNotify (QListWidgetSc a) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QListWidget_disconnectNotify cobj_x0 cstr_x1

instance QeventFilter (QListWidget ()) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QListWidget_eventFilter_h cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QListWidget_eventFilter_h" qtc_QListWidget_eventFilter_h :: Ptr (TQListWidget a) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO CBool

instance QeventFilter (QListWidgetSc a) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QListWidget_eventFilter_h cobj_x0 cobj_x1 cobj_x2

instance Qreceivers (QListWidget ()) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QListWidget_receivers cobj_x0 cstr_x1

foreign import ccall "qtc_QListWidget_receivers" qtc_QListWidget_receivers :: Ptr (TQListWidget a) -> CWString -> IO CInt

instance Qreceivers (QListWidgetSc a) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QListWidget_receivers cobj_x0 cstr_x1

instance Qsender (QListWidget ()) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidget_sender cobj_x0

foreign import ccall "qtc_QListWidget_sender" qtc_QListWidget_sender :: Ptr (TQListWidget a) -> IO (Ptr (TQObject ()))

instance Qsender (QListWidgetSc a) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidget_sender cobj_x0

