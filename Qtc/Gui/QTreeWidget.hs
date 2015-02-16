{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QTreeWidget.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:20
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QTreeWidget (
  QqTreeWidget(..)
  ,addTopLevelItem
  ,collapseItem
  ,expandItem
  ,headerItem
  ,indexOfTopLevelItem
  ,insertTopLevelItem
  ,isFirstItemColumnSpanned
  ,isItemExpanded
  ,itemAbove
  ,itemBelow
  ,setFirstItemColumnSpanned
  ,setHeaderItem
  ,setHeaderLabel
  ,setHeaderLabels
  ,setItemExpanded
  ,sortColumn
  ,takeTopLevelItem
  ,topLevelItemCount
  ,qTreeWidget_delete
  ,qTreeWidget_deleteLater
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

instance QuserMethod (QTreeWidget ()) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QTreeWidget_userMethod cobj_qobj (toCInt evid)

foreign import ccall "qtc_QTreeWidget_userMethod" qtc_QTreeWidget_userMethod :: Ptr (TQTreeWidget a) -> CInt -> IO ()

instance QuserMethod (QTreeWidgetSc a) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QTreeWidget_userMethod cobj_qobj (toCInt evid)

instance QuserMethod (QTreeWidget ()) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QTreeWidget_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

foreign import ccall "qtc_QTreeWidget_userMethodVariant" qtc_QTreeWidget_userMethodVariant :: Ptr (TQTreeWidget a) -> CInt -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))

instance QuserMethod (QTreeWidgetSc a) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QTreeWidget_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

class QqTreeWidget x1 where
  qTreeWidget :: x1 -> IO (QTreeWidget ())

instance QqTreeWidget (()) where
 qTreeWidget ()
  = withQTreeWidgetResult $
    qtc_QTreeWidget

foreign import ccall "qtc_QTreeWidget" qtc_QTreeWidget :: IO (Ptr (TQTreeWidget ()))

instance QqTreeWidget ((QWidget t1)) where
 qTreeWidget (x1)
  = withQTreeWidgetResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget1 cobj_x1

foreign import ccall "qtc_QTreeWidget1" qtc_QTreeWidget1 :: Ptr (TQWidget t1) -> IO (Ptr (TQTreeWidget ()))

addTopLevelItem :: QTreeWidget a -> ((QTreeWidgetItem t1)) -> IO ()
addTopLevelItem x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_addTopLevelItem cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeWidget_addTopLevelItem" qtc_QTreeWidget_addTopLevelItem :: Ptr (TQTreeWidget a) -> Ptr (TQTreeWidgetItem t1) -> IO ()

instance Qclear (QTreeWidget a) (()) where
 clear x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_clear cobj_x0

foreign import ccall "qtc_QTreeWidget_clear" qtc_QTreeWidget_clear :: Ptr (TQTreeWidget a) -> IO ()

instance QclosePersistentEditor (QTreeWidget a) ((QTreeWidgetItem t1)) where
 closePersistentEditor x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_closePersistentEditor cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeWidget_closePersistentEditor" qtc_QTreeWidget_closePersistentEditor :: Ptr (TQTreeWidget a) -> Ptr (TQTreeWidgetItem t1) -> IO ()

instance QclosePersistentEditor (QTreeWidget a) ((QTreeWidgetItem t1, Int)) where
 closePersistentEditor x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_closePersistentEditor1 cobj_x0 cobj_x1 (toCInt x2)

foreign import ccall "qtc_QTreeWidget_closePersistentEditor1" qtc_QTreeWidget_closePersistentEditor1 :: Ptr (TQTreeWidget a) -> Ptr (TQTreeWidgetItem t1) -> CInt -> IO ()

collapseItem :: QTreeWidget a -> ((QTreeWidgetItem t1)) -> IO ()
collapseItem x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_collapseItem cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeWidget_collapseItem" qtc_QTreeWidget_collapseItem :: Ptr (TQTreeWidget a) -> Ptr (TQTreeWidgetItem t1) -> IO ()

instance QcolumnCount (QTreeWidget a) (()) where
 columnCount x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_columnCount cobj_x0

foreign import ccall "qtc_QTreeWidget_columnCount" qtc_QTreeWidget_columnCount :: Ptr (TQTreeWidget a) -> IO CInt

instance QcurrentColumn (QTreeWidget a) (()) where
 currentColumn x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_currentColumn cobj_x0

foreign import ccall "qtc_QTreeWidget_currentColumn" qtc_QTreeWidget_currentColumn :: Ptr (TQTreeWidget a) -> IO CInt

instance QcurrentItem (QTreeWidget a) (()) (IO (QTreeWidgetItem ())) where
 currentItem x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_currentItem cobj_x0

foreign import ccall "qtc_QTreeWidget_currentItem" qtc_QTreeWidget_currentItem :: Ptr (TQTreeWidget a) -> IO (Ptr (TQTreeWidgetItem ()))

instance QdropEvent (QTreeWidget ()) ((QDropEvent t1)) where
 dropEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_dropEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeWidget_dropEvent_h" qtc_QTreeWidget_dropEvent_h :: Ptr (TQTreeWidget a) -> Ptr (TQDropEvent t1) -> IO ()

instance QdropEvent (QTreeWidgetSc a) ((QDropEvent t1)) where
 dropEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_dropEvent_h cobj_x0 cobj_x1

instance QdropMimeData (QTreeWidget ()) ((QTreeWidgetItem t1, Int, QMimeData t3, DropAction)) where
 dropMimeData x0 (x1, x2, x3, x4)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QTreeWidget_dropMimeData_h cobj_x0 cobj_x1 (toCInt x2) cobj_x3 (toCLong $ qEnum_toInt x4)

foreign import ccall "qtc_QTreeWidget_dropMimeData_h" qtc_QTreeWidget_dropMimeData_h :: Ptr (TQTreeWidget a) -> Ptr (TQTreeWidgetItem t1) -> CInt -> Ptr (TQMimeData t3) -> CLong -> IO CBool

instance QdropMimeData (QTreeWidgetSc a) ((QTreeWidgetItem t1, Int, QMimeData t3, DropAction)) where
 dropMimeData x0 (x1, x2, x3, x4)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QTreeWidget_dropMimeData_h cobj_x0 cobj_x1 (toCInt x2) cobj_x3 (toCLong $ qEnum_toInt x4)

instance QeditItem (QTreeWidget a) ((QTreeWidgetItem t1)) where
 editItem x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_editItem cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeWidget_editItem" qtc_QTreeWidget_editItem :: Ptr (TQTreeWidget a) -> Ptr (TQTreeWidgetItem t1) -> IO ()

instance QeditItem (QTreeWidget a) ((QTreeWidgetItem t1, Int)) where
 editItem x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_editItem1 cobj_x0 cobj_x1 (toCInt x2)

foreign import ccall "qtc_QTreeWidget_editItem1" qtc_QTreeWidget_editItem1 :: Ptr (TQTreeWidget a) -> Ptr (TQTreeWidgetItem t1) -> CInt -> IO ()

instance Qevent (QTreeWidget ()) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_event_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeWidget_event_h" qtc_QTreeWidget_event_h :: Ptr (TQTreeWidget a) -> Ptr (TQEvent t1) -> IO CBool

instance Qevent (QTreeWidgetSc a) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_event_h cobj_x0 cobj_x1

expandItem :: QTreeWidget a -> ((QTreeWidgetItem t1)) -> IO ()
expandItem x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_expandItem cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeWidget_expandItem" qtc_QTreeWidget_expandItem :: Ptr (TQTreeWidget a) -> Ptr (TQTreeWidgetItem t1) -> IO ()

instance QfindItems (QTreeWidget a) ((String, MatchFlags)) (IO ([QTreeWidgetItem ()])) where
 findItems x0 (x1, x2)
  = withQListObjectRefResult $ \arr ->
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTreeWidget_findItems cobj_x0 cstr_x1 (toCLong $ qFlags_toInt x2) arr

foreign import ccall "qtc_QTreeWidget_findItems" qtc_QTreeWidget_findItems :: Ptr (TQTreeWidget a) -> CWString -> CLong -> Ptr (Ptr (TQTreeWidgetItem ())) -> IO CInt

instance QfindItems (QTreeWidget a) ((String, MatchFlags, Int)) (IO ([QTreeWidgetItem ()])) where
 findItems x0 (x1, x2, x3)
  = withQListObjectRefResult $ \arr ->
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTreeWidget_findItems1 cobj_x0 cstr_x1 (toCLong $ qFlags_toInt x2) (toCInt x3) arr

foreign import ccall "qtc_QTreeWidget_findItems1" qtc_QTreeWidget_findItems1 :: Ptr (TQTreeWidget a) -> CWString -> CLong -> CInt -> Ptr (Ptr (TQTreeWidgetItem ())) -> IO CInt

headerItem :: QTreeWidget a -> (()) -> IO (QTreeWidgetItem ())
headerItem x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_headerItem cobj_x0

foreign import ccall "qtc_QTreeWidget_headerItem" qtc_QTreeWidget_headerItem :: Ptr (TQTreeWidget a) -> IO (Ptr (TQTreeWidgetItem ()))

instance QindexFromItem (QTreeWidget ()) ((QTreeWidgetItem t1)) where
 indexFromItem x0 (x1)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_indexFromItem cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeWidget_indexFromItem" qtc_QTreeWidget_indexFromItem :: Ptr (TQTreeWidget a) -> Ptr (TQTreeWidgetItem t1) -> IO (Ptr (TQModelIndex ()))

instance QindexFromItem (QTreeWidgetSc a) ((QTreeWidgetItem t1)) where
 indexFromItem x0 (x1)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_indexFromItem cobj_x0 cobj_x1

instance QindexFromItem (QTreeWidget ()) ((QTreeWidgetItem t1, Int)) where
 indexFromItem x0 (x1, x2)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_indexFromItem1 cobj_x0 cobj_x1 (toCInt x2)

foreign import ccall "qtc_QTreeWidget_indexFromItem1" qtc_QTreeWidget_indexFromItem1 :: Ptr (TQTreeWidget a) -> Ptr (TQTreeWidgetItem t1) -> CInt -> IO (Ptr (TQModelIndex ()))

instance QindexFromItem (QTreeWidgetSc a) ((QTreeWidgetItem t1, Int)) where
 indexFromItem x0 (x1, x2)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_indexFromItem1 cobj_x0 cobj_x1 (toCInt x2)

indexOfTopLevelItem :: QTreeWidget a -> ((QTreeWidgetItem t1)) -> IO (Int)
indexOfTopLevelItem x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_indexOfTopLevelItem cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeWidget_indexOfTopLevelItem" qtc_QTreeWidget_indexOfTopLevelItem :: Ptr (TQTreeWidget a) -> Ptr (TQTreeWidgetItem t1) -> IO CInt

insertTopLevelItem :: QTreeWidget a -> ((Int, QTreeWidgetItem t2)) -> IO ()
insertTopLevelItem x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QTreeWidget_insertTopLevelItem cobj_x0 (toCInt x1) cobj_x2

foreign import ccall "qtc_QTreeWidget_insertTopLevelItem" qtc_QTreeWidget_insertTopLevelItem :: Ptr (TQTreeWidget a) -> CInt -> Ptr (TQTreeWidgetItem t2) -> IO ()

instance QinvisibleRootItem (QTreeWidget a) (()) (IO (QTreeWidgetItem ())) where
 invisibleRootItem x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_invisibleRootItem cobj_x0

foreign import ccall "qtc_QTreeWidget_invisibleRootItem" qtc_QTreeWidget_invisibleRootItem :: Ptr (TQTreeWidget a) -> IO (Ptr (TQTreeWidgetItem ()))

isFirstItemColumnSpanned :: QTreeWidget a -> ((QTreeWidgetItem t1)) -> IO (Bool)
isFirstItemColumnSpanned x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_isFirstItemColumnSpanned cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeWidget_isFirstItemColumnSpanned" qtc_QTreeWidget_isFirstItemColumnSpanned :: Ptr (TQTreeWidget a) -> Ptr (TQTreeWidgetItem t1) -> IO CBool

isItemExpanded :: QTreeWidget a -> ((QTreeWidgetItem t1)) -> IO (Bool)
isItemExpanded x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_isItemExpanded cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeWidget_isItemExpanded" qtc_QTreeWidget_isItemExpanded :: Ptr (TQTreeWidget a) -> Ptr (TQTreeWidgetItem t1) -> IO CBool

instance QisItemHidden (QTreeWidget a) ((QTreeWidgetItem t1)) where
 isItemHidden x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_isItemHidden cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeWidget_isItemHidden" qtc_QTreeWidget_isItemHidden :: Ptr (TQTreeWidget a) -> Ptr (TQTreeWidgetItem t1) -> IO CBool

instance QisItemSelected (QTreeWidget a) ((QTreeWidgetItem t1)) where
 isItemSelected x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_isItemSelected cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeWidget_isItemSelected" qtc_QTreeWidget_isItemSelected :: Ptr (TQTreeWidget a) -> Ptr (TQTreeWidgetItem t1) -> IO CBool

instance QisSortingEnabled (QTreeWidget ()) (()) where
 isSortingEnabled x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_isSortingEnabled cobj_x0

foreign import ccall "qtc_QTreeWidget_isSortingEnabled" qtc_QTreeWidget_isSortingEnabled :: Ptr (TQTreeWidget a) -> IO CBool

instance QisSortingEnabled (QTreeWidgetSc a) (()) where
 isSortingEnabled x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_isSortingEnabled cobj_x0

itemAbove :: QTreeWidget a -> ((QTreeWidgetItem t1)) -> IO (QTreeWidgetItem ())
itemAbove x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_itemAbove cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeWidget_itemAbove" qtc_QTreeWidget_itemAbove :: Ptr (TQTreeWidget a) -> Ptr (TQTreeWidgetItem t1) -> IO (Ptr (TQTreeWidgetItem ()))

instance QitemAt (QTreeWidget a) ((Int, Int)) (IO (QTreeWidgetItem ())) where
 itemAt x0 (x1, x2)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_itemAt1 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QTreeWidget_itemAt1" qtc_QTreeWidget_itemAt1 :: Ptr (TQTreeWidget a) -> CInt -> CInt -> IO (Ptr (TQTreeWidgetItem ()))

instance QitemAt (QTreeWidget a) ((Point)) (IO (QTreeWidgetItem ())) where
 itemAt x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QTreeWidget_itemAt_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

foreign import ccall "qtc_QTreeWidget_itemAt_qth" qtc_QTreeWidget_itemAt_qth :: Ptr (TQTreeWidget a) -> CInt -> CInt -> IO (Ptr (TQTreeWidgetItem ()))

instance QqitemAt (QTreeWidget a) ((QPoint t1)) (IO (QTreeWidgetItem ())) where
 qitemAt x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_itemAt cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeWidget_itemAt" qtc_QTreeWidget_itemAt :: Ptr (TQTreeWidget a) -> Ptr (TQPoint t1) -> IO (Ptr (TQTreeWidgetItem ()))

itemBelow :: QTreeWidget a -> ((QTreeWidgetItem t1)) -> IO (QTreeWidgetItem ())
itemBelow x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_itemBelow cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeWidget_itemBelow" qtc_QTreeWidget_itemBelow :: Ptr (TQTreeWidget a) -> Ptr (TQTreeWidgetItem t1) -> IO (Ptr (TQTreeWidgetItem ()))

instance QitemFromIndex (QTreeWidget ()) ((QModelIndex t1)) (IO (QTreeWidgetItem ())) where
 itemFromIndex x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_itemFromIndex cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeWidget_itemFromIndex" qtc_QTreeWidget_itemFromIndex :: Ptr (TQTreeWidget a) -> Ptr (TQModelIndex t1) -> IO (Ptr (TQTreeWidgetItem ()))

instance QitemFromIndex (QTreeWidgetSc a) ((QModelIndex t1)) (IO (QTreeWidgetItem ())) where
 itemFromIndex x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_itemFromIndex cobj_x0 cobj_x1

instance QitemWidget (QTreeWidget a) ((QTreeWidgetItem t1, Int)) where
 itemWidget x0 (x1, x2)
  = withQWidgetResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_itemWidget cobj_x0 cobj_x1 (toCInt x2)

foreign import ccall "qtc_QTreeWidget_itemWidget" qtc_QTreeWidget_itemWidget :: Ptr (TQTreeWidget a) -> Ptr (TQTreeWidgetItem t1) -> CInt -> IO (Ptr (TQWidget ()))

instance QopenPersistentEditor (QTreeWidget a) ((QTreeWidgetItem t1)) where
 openPersistentEditor x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_openPersistentEditor cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeWidget_openPersistentEditor" qtc_QTreeWidget_openPersistentEditor :: Ptr (TQTreeWidget a) -> Ptr (TQTreeWidgetItem t1) -> IO ()

instance QopenPersistentEditor (QTreeWidget a) ((QTreeWidgetItem t1, Int)) where
 openPersistentEditor x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_openPersistentEditor1 cobj_x0 cobj_x1 (toCInt x2)

foreign import ccall "qtc_QTreeWidget_openPersistentEditor1" qtc_QTreeWidget_openPersistentEditor1 :: Ptr (TQTreeWidget a) -> Ptr (TQTreeWidgetItem t1) -> CInt -> IO ()

instance QremoveItemWidget (QTreeWidget a) ((QTreeWidgetItem t1, Int)) where
 removeItemWidget x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_removeItemWidget cobj_x0 cobj_x1 (toCInt x2)

foreign import ccall "qtc_QTreeWidget_removeItemWidget" qtc_QTreeWidget_removeItemWidget :: Ptr (TQTreeWidget a) -> Ptr (TQTreeWidgetItem t1) -> CInt -> IO ()

instance QscrollToItem (QTreeWidget a) ((QTreeWidgetItem t1)) where
 scrollToItem x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_scrollToItem cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeWidget_scrollToItem" qtc_QTreeWidget_scrollToItem :: Ptr (TQTreeWidget a) -> Ptr (TQTreeWidgetItem t1) -> IO ()

instance QscrollToItem (QTreeWidget a) ((QTreeWidgetItem t1, ScrollHint)) where
 scrollToItem x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_scrollToItem1 cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QTreeWidget_scrollToItem1" qtc_QTreeWidget_scrollToItem1 :: Ptr (TQTreeWidget a) -> Ptr (TQTreeWidgetItem t1) -> CLong -> IO ()

instance QselectedItems (QTreeWidget a) (()) (IO ([QTreeWidgetItem ()])) where
 selectedItems x0 ()
  = withQListObjectRefResult $ \arr ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_selectedItems cobj_x0 arr

foreign import ccall "qtc_QTreeWidget_selectedItems" qtc_QTreeWidget_selectedItems :: Ptr (TQTreeWidget a) -> Ptr (Ptr (TQTreeWidgetItem ())) -> IO CInt

instance QsetColumnCount (QTreeWidget a) ((Int)) where
 setColumnCount x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_setColumnCount cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTreeWidget_setColumnCount" qtc_QTreeWidget_setColumnCount :: Ptr (TQTreeWidget a) -> CInt -> IO ()

instance QsetCurrentItem (QTreeWidget a) ((QTreeWidgetItem t1)) where
 setCurrentItem x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_setCurrentItem cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeWidget_setCurrentItem" qtc_QTreeWidget_setCurrentItem :: Ptr (TQTreeWidget a) -> Ptr (TQTreeWidgetItem t1) -> IO ()

instance QsetCurrentItem (QTreeWidget a) ((QTreeWidgetItem t1, Int)) where
 setCurrentItem x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_setCurrentItem1 cobj_x0 cobj_x1 (toCInt x2)

foreign import ccall "qtc_QTreeWidget_setCurrentItem1" qtc_QTreeWidget_setCurrentItem1 :: Ptr (TQTreeWidget a) -> Ptr (TQTreeWidgetItem t1) -> CInt -> IO ()

setFirstItemColumnSpanned :: QTreeWidget a -> ((QTreeWidgetItem t1, Bool)) -> IO ()
setFirstItemColumnSpanned x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_setFirstItemColumnSpanned cobj_x0 cobj_x1 (toCBool x2)

foreign import ccall "qtc_QTreeWidget_setFirstItemColumnSpanned" qtc_QTreeWidget_setFirstItemColumnSpanned :: Ptr (TQTreeWidget a) -> Ptr (TQTreeWidgetItem t1) -> CBool -> IO ()

setHeaderItem :: QTreeWidget a -> ((QTreeWidgetItem t1)) -> IO ()
setHeaderItem x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_setHeaderItem cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeWidget_setHeaderItem" qtc_QTreeWidget_setHeaderItem :: Ptr (TQTreeWidget a) -> Ptr (TQTreeWidgetItem t1) -> IO ()

setHeaderLabel :: QTreeWidget a -> ((String)) -> IO ()
setHeaderLabel x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTreeWidget_setHeaderLabel cobj_x0 cstr_x1

foreign import ccall "qtc_QTreeWidget_setHeaderLabel" qtc_QTreeWidget_setHeaderLabel :: Ptr (TQTreeWidget a) -> CWString -> IO ()

setHeaderLabels :: QTreeWidget a -> (([String])) -> IO ()
setHeaderLabels x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withQListString x1 $ \cqlistlen_x1 cqliststr_x1 ->
    qtc_QTreeWidget_setHeaderLabels cobj_x0 cqlistlen_x1 cqliststr_x1

foreign import ccall "qtc_QTreeWidget_setHeaderLabels" qtc_QTreeWidget_setHeaderLabels :: Ptr (TQTreeWidget a) -> CInt -> Ptr (Ptr CWchar) -> IO ()

setItemExpanded :: QTreeWidget a -> ((QTreeWidgetItem t1, Bool)) -> IO ()
setItemExpanded x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_setItemExpanded cobj_x0 cobj_x1 (toCBool x2)

foreign import ccall "qtc_QTreeWidget_setItemExpanded" qtc_QTreeWidget_setItemExpanded :: Ptr (TQTreeWidget a) -> Ptr (TQTreeWidgetItem t1) -> CBool -> IO ()

instance QsetItemHidden (QTreeWidget a) ((QTreeWidgetItem t1, Bool)) where
 setItemHidden x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_setItemHidden cobj_x0 cobj_x1 (toCBool x2)

foreign import ccall "qtc_QTreeWidget_setItemHidden" qtc_QTreeWidget_setItemHidden :: Ptr (TQTreeWidget a) -> Ptr (TQTreeWidgetItem t1) -> CBool -> IO ()

instance QsetItemSelected (QTreeWidget a) ((QTreeWidgetItem t1, Bool)) where
 setItemSelected x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_setItemSelected cobj_x0 cobj_x1 (toCBool x2)

foreign import ccall "qtc_QTreeWidget_setItemSelected" qtc_QTreeWidget_setItemSelected :: Ptr (TQTreeWidget a) -> Ptr (TQTreeWidgetItem t1) -> CBool -> IO ()

instance QsetItemWidget (QTreeWidget a) ((QTreeWidgetItem t1, Int, QWidget t3)) where
 setItemWidget x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QTreeWidget_setItemWidget cobj_x0 cobj_x1 (toCInt x2) cobj_x3

foreign import ccall "qtc_QTreeWidget_setItemWidget" qtc_QTreeWidget_setItemWidget :: Ptr (TQTreeWidget a) -> Ptr (TQTreeWidgetItem t1) -> CInt -> Ptr (TQWidget t3) -> IO ()

instance QsetSortingEnabled (QTreeWidget ()) ((Bool)) where
 setSortingEnabled x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_setSortingEnabled cobj_x0 (toCBool x1)

foreign import ccall "qtc_QTreeWidget_setSortingEnabled" qtc_QTreeWidget_setSortingEnabled :: Ptr (TQTreeWidget a) -> CBool -> IO ()

instance QsetSortingEnabled (QTreeWidgetSc a) ((Bool)) where
 setSortingEnabled x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_setSortingEnabled cobj_x0 (toCBool x1)

sortColumn :: QTreeWidget a -> (()) -> IO (Int)
sortColumn x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_sortColumn cobj_x0

foreign import ccall "qtc_QTreeWidget_sortColumn" qtc_QTreeWidget_sortColumn :: Ptr (TQTreeWidget a) -> IO CInt

instance QsortItems (QTreeWidget a) ((Int, SortOrder)) where
 sortItems x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_sortItems cobj_x0 (toCInt x1) (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QTreeWidget_sortItems" qtc_QTreeWidget_sortItems :: Ptr (TQTreeWidget a) -> CInt -> CLong -> IO ()

instance QsupportedDropActions (QTreeWidget ()) (()) where
 supportedDropActions x0 ()
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_supportedDropActions_h cobj_x0

foreign import ccall "qtc_QTreeWidget_supportedDropActions_h" qtc_QTreeWidget_supportedDropActions_h :: Ptr (TQTreeWidget a) -> IO CLong

instance QsupportedDropActions (QTreeWidgetSc a) (()) where
 supportedDropActions x0 ()
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_supportedDropActions_h cobj_x0

takeTopLevelItem :: QTreeWidget a -> ((Int)) -> IO (QTreeWidgetItem ())
takeTopLevelItem x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_takeTopLevelItem cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTreeWidget_takeTopLevelItem" qtc_QTreeWidget_takeTopLevelItem :: Ptr (TQTreeWidget a) -> CInt -> IO (Ptr (TQTreeWidgetItem ()))

instance QtopLevelItem (QTreeWidget a) ((Int)) (IO (QTreeWidgetItem ())) where
 topLevelItem x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_topLevelItem cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTreeWidget_topLevelItem" qtc_QTreeWidget_topLevelItem :: Ptr (TQTreeWidget a) -> CInt -> IO (Ptr (TQTreeWidgetItem ()))

topLevelItemCount :: QTreeWidget a -> (()) -> IO (Int)
topLevelItemCount x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_topLevelItemCount cobj_x0

foreign import ccall "qtc_QTreeWidget_topLevelItemCount" qtc_QTreeWidget_topLevelItemCount :: Ptr (TQTreeWidget a) -> IO CInt

instance QqvisualItemRect (QTreeWidget a) ((QTreeWidgetItem t1)) where
 qvisualItemRect x0 (x1)
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_visualItemRect cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeWidget_visualItemRect" qtc_QTreeWidget_visualItemRect :: Ptr (TQTreeWidget a) -> Ptr (TQTreeWidgetItem t1) -> IO (Ptr (TQRect ()))

instance QvisualItemRect (QTreeWidget a) ((QTreeWidgetItem t1)) where
 visualItemRect x0 (x1)
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_visualItemRect_qth cobj_x0 cobj_x1 crect_ret_x crect_ret_y crect_ret_w crect_ret_h

foreign import ccall "qtc_QTreeWidget_visualItemRect_qth" qtc_QTreeWidget_visualItemRect_qth :: Ptr (TQTreeWidget a) -> Ptr (TQTreeWidgetItem t1) -> Ptr CInt -> Ptr CInt -> Ptr CInt -> Ptr CInt -> IO ()

qTreeWidget_delete :: QTreeWidget a -> IO ()
qTreeWidget_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_delete cobj_x0

foreign import ccall "qtc_QTreeWidget_delete" qtc_QTreeWidget_delete :: Ptr (TQTreeWidget a) -> IO ()

qTreeWidget_deleteLater :: QTreeWidget a -> IO ()
qTreeWidget_deleteLater x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_deleteLater cobj_x0

foreign import ccall "qtc_QTreeWidget_deleteLater" qtc_QTreeWidget_deleteLater :: Ptr (TQTreeWidget a) -> IO ()

instance QcolumnCountChanged (QTreeWidget ()) ((Int, Int)) where
 columnCountChanged x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_columnCountChanged cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QTreeWidget_columnCountChanged" qtc_QTreeWidget_columnCountChanged :: Ptr (TQTreeWidget a) -> CInt -> CInt -> IO ()

instance QcolumnCountChanged (QTreeWidgetSc a) ((Int, Int)) where
 columnCountChanged x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_columnCountChanged cobj_x0 (toCInt x1) (toCInt x2)

instance QcolumnMoved (QTreeWidget ()) (()) where
 columnMoved x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_columnMoved cobj_x0

foreign import ccall "qtc_QTreeWidget_columnMoved" qtc_QTreeWidget_columnMoved :: Ptr (TQTreeWidget a) -> IO ()

instance QcolumnMoved (QTreeWidgetSc a) (()) where
 columnMoved x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_columnMoved cobj_x0

instance QcolumnResized (QTreeWidget ()) ((Int, Int, Int)) where
 columnResized x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_columnResized cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3)

foreign import ccall "qtc_QTreeWidget_columnResized" qtc_QTreeWidget_columnResized :: Ptr (TQTreeWidget a) -> CInt -> CInt -> CInt -> IO ()

instance QcolumnResized (QTreeWidgetSc a) ((Int, Int, Int)) where
 columnResized x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_columnResized cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3)

instance QcurrentChanged (QTreeWidget ()) ((QModelIndex t1, QModelIndex t2)) where
 currentChanged x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QTreeWidget_currentChanged cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QTreeWidget_currentChanged" qtc_QTreeWidget_currentChanged :: Ptr (TQTreeWidget a) -> Ptr (TQModelIndex t1) -> Ptr (TQModelIndex t2) -> IO ()

instance QcurrentChanged (QTreeWidgetSc a) ((QModelIndex t1, QModelIndex t2)) where
 currentChanged x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QTreeWidget_currentChanged cobj_x0 cobj_x1 cobj_x2

instance QdataChanged (QTreeWidget ()) ((QModelIndex t1, QModelIndex t2)) where
 dataChanged x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QTreeWidget_dataChanged_h cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QTreeWidget_dataChanged_h" qtc_QTreeWidget_dataChanged_h :: Ptr (TQTreeWidget a) -> Ptr (TQModelIndex t1) -> Ptr (TQModelIndex t2) -> IO ()

instance QdataChanged (QTreeWidgetSc a) ((QModelIndex t1, QModelIndex t2)) where
 dataChanged x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QTreeWidget_dataChanged_h cobj_x0 cobj_x1 cobj_x2

instance QdoItemsLayout (QTreeWidget ()) (()) where
 doItemsLayout x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_doItemsLayout_h cobj_x0

foreign import ccall "qtc_QTreeWidget_doItemsLayout_h" qtc_QTreeWidget_doItemsLayout_h :: Ptr (TQTreeWidget a) -> IO ()

instance QdoItemsLayout (QTreeWidgetSc a) (()) where
 doItemsLayout x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_doItemsLayout_h cobj_x0

instance QdragMoveEvent (QTreeWidget ()) ((QDragMoveEvent t1)) where
 dragMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_dragMoveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeWidget_dragMoveEvent_h" qtc_QTreeWidget_dragMoveEvent_h :: Ptr (TQTreeWidget a) -> Ptr (TQDragMoveEvent t1) -> IO ()

instance QdragMoveEvent (QTreeWidgetSc a) ((QDragMoveEvent t1)) where
 dragMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_dragMoveEvent_h cobj_x0 cobj_x1

instance QqdrawBranches (QTreeWidget ()) ((QPainter t1, QRect t2, QModelIndex t3)) where
 qdrawBranches x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QTreeWidget_drawBranches_h cobj_x0 cobj_x1 cobj_x2 cobj_x3

foreign import ccall "qtc_QTreeWidget_drawBranches_h" qtc_QTreeWidget_drawBranches_h :: Ptr (TQTreeWidget a) -> Ptr (TQPainter t1) -> Ptr (TQRect t2) -> Ptr (TQModelIndex t3) -> IO ()

instance QqdrawBranches (QTreeWidgetSc a) ((QPainter t1, QRect t2, QModelIndex t3)) where
 qdrawBranches x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QTreeWidget_drawBranches_h cobj_x0 cobj_x1 cobj_x2 cobj_x3

instance QdrawBranches (QTreeWidget ()) ((QPainter t1, Rect, QModelIndex t3)) where
 drawBranches x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCRect x2 $ \crect_x2_x crect_x2_y  crect_x2_w crect_x2_h -> 
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QTreeWidget_drawBranches_qth_h cobj_x0 cobj_x1 crect_x2_x crect_x2_y crect_x2_w crect_x2_h  cobj_x3

foreign import ccall "qtc_QTreeWidget_drawBranches_qth_h" qtc_QTreeWidget_drawBranches_qth_h :: Ptr (TQTreeWidget a) -> Ptr (TQPainter t1) -> CInt -> CInt -> CInt -> CInt -> Ptr (TQModelIndex t3) -> IO ()

instance QdrawBranches (QTreeWidgetSc a) ((QPainter t1, Rect, QModelIndex t3)) where
 drawBranches x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCRect x2 $ \crect_x2_x crect_x2_y  crect_x2_w crect_x2_h -> 
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QTreeWidget_drawBranches_qth_h cobj_x0 cobj_x1 crect_x2_x crect_x2_y crect_x2_w crect_x2_h  cobj_x3

instance QdrawRow (QTreeWidget ()) ((QPainter t1, QStyleOptionViewItem t2, QModelIndex t3)) where
 drawRow x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QTreeWidget_drawRow_h cobj_x0 cobj_x1 cobj_x2 cobj_x3

foreign import ccall "qtc_QTreeWidget_drawRow_h" qtc_QTreeWidget_drawRow_h :: Ptr (TQTreeWidget a) -> Ptr (TQPainter t1) -> Ptr (TQStyleOptionViewItem t2) -> Ptr (TQModelIndex t3) -> IO ()

instance QdrawRow (QTreeWidgetSc a) ((QPainter t1, QStyleOptionViewItem t2, QModelIndex t3)) where
 drawRow x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QTreeWidget_drawRow_h cobj_x0 cobj_x1 cobj_x2 cobj_x3

instance QdrawTree (QTreeWidget ()) ((QPainter t1, QRegion t2)) where
 drawTree x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QTreeWidget_drawTree cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QTreeWidget_drawTree" qtc_QTreeWidget_drawTree :: Ptr (TQTreeWidget a) -> Ptr (TQPainter t1) -> Ptr (TQRegion t2) -> IO ()

instance QdrawTree (QTreeWidgetSc a) ((QPainter t1, QRegion t2)) where
 drawTree x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QTreeWidget_drawTree cobj_x0 cobj_x1 cobj_x2

instance QhorizontalOffset (QTreeWidget ()) (()) where
 horizontalOffset x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_horizontalOffset_h cobj_x0

foreign import ccall "qtc_QTreeWidget_horizontalOffset_h" qtc_QTreeWidget_horizontalOffset_h :: Ptr (TQTreeWidget a) -> IO CInt

instance QhorizontalOffset (QTreeWidgetSc a) (()) where
 horizontalOffset x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_horizontalOffset_h cobj_x0

instance QhorizontalScrollbarAction (QTreeWidget ()) ((Int)) where
 horizontalScrollbarAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_horizontalScrollbarAction cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTreeWidget_horizontalScrollbarAction" qtc_QTreeWidget_horizontalScrollbarAction :: Ptr (TQTreeWidget a) -> CInt -> IO ()

instance QhorizontalScrollbarAction (QTreeWidgetSc a) ((Int)) where
 horizontalScrollbarAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_horizontalScrollbarAction cobj_x0 (toCInt x1)

instance QindexAt (QTreeWidget ()) ((Point)) where
 indexAt x0 (x1)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QTreeWidget_indexAt_qth_h cobj_x0 cpoint_x1_x cpoint_x1_y 

foreign import ccall "qtc_QTreeWidget_indexAt_qth_h" qtc_QTreeWidget_indexAt_qth_h :: Ptr (TQTreeWidget a) -> CInt -> CInt -> IO (Ptr (TQModelIndex ()))

instance QindexAt (QTreeWidgetSc a) ((Point)) where
 indexAt x0 (x1)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QTreeWidget_indexAt_qth_h cobj_x0 cpoint_x1_x cpoint_x1_y 

instance QqindexAt (QTreeWidget ()) ((QPoint t1)) where
 qindexAt x0 (x1)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_indexAt_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeWidget_indexAt_h" qtc_QTreeWidget_indexAt_h :: Ptr (TQTreeWidget a) -> Ptr (TQPoint t1) -> IO (Ptr (TQModelIndex ()))

instance QqindexAt (QTreeWidgetSc a) ((QPoint t1)) where
 qindexAt x0 (x1)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_indexAt_h cobj_x0 cobj_x1

instance QindexRowSizeHint (QTreeWidget ()) ((QModelIndex t1)) where
 indexRowSizeHint x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_indexRowSizeHint cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeWidget_indexRowSizeHint" qtc_QTreeWidget_indexRowSizeHint :: Ptr (TQTreeWidget a) -> Ptr (TQModelIndex t1) -> IO CInt

instance QindexRowSizeHint (QTreeWidgetSc a) ((QModelIndex t1)) where
 indexRowSizeHint x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_indexRowSizeHint cobj_x0 cobj_x1

instance QisIndexHidden (QTreeWidget ()) ((QModelIndex t1)) where
 isIndexHidden x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_isIndexHidden cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeWidget_isIndexHidden" qtc_QTreeWidget_isIndexHidden :: Ptr (TQTreeWidget a) -> Ptr (TQModelIndex t1) -> IO CBool

instance QisIndexHidden (QTreeWidgetSc a) ((QModelIndex t1)) where
 isIndexHidden x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_isIndexHidden cobj_x0 cobj_x1

instance QkeyPressEvent (QTreeWidget ()) ((QKeyEvent t1)) where
 keyPressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_keyPressEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeWidget_keyPressEvent_h" qtc_QTreeWidget_keyPressEvent_h :: Ptr (TQTreeWidget a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyPressEvent (QTreeWidgetSc a) ((QKeyEvent t1)) where
 keyPressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_keyPressEvent_h cobj_x0 cobj_x1

instance QkeyboardSearch (QTreeWidget ()) ((String)) where
 keyboardSearch x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTreeWidget_keyboardSearch_h cobj_x0 cstr_x1

foreign import ccall "qtc_QTreeWidget_keyboardSearch_h" qtc_QTreeWidget_keyboardSearch_h :: Ptr (TQTreeWidget a) -> CWString -> IO ()

instance QkeyboardSearch (QTreeWidgetSc a) ((String)) where
 keyboardSearch x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTreeWidget_keyboardSearch_h cobj_x0 cstr_x1

instance QmouseDoubleClickEvent (QTreeWidget ()) ((QMouseEvent t1)) where
 mouseDoubleClickEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_mouseDoubleClickEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeWidget_mouseDoubleClickEvent_h" qtc_QTreeWidget_mouseDoubleClickEvent_h :: Ptr (TQTreeWidget a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseDoubleClickEvent (QTreeWidgetSc a) ((QMouseEvent t1)) where
 mouseDoubleClickEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_mouseDoubleClickEvent_h cobj_x0 cobj_x1

instance QmouseMoveEvent (QTreeWidget ()) ((QMouseEvent t1)) where
 mouseMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_mouseMoveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeWidget_mouseMoveEvent_h" qtc_QTreeWidget_mouseMoveEvent_h :: Ptr (TQTreeWidget a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseMoveEvent (QTreeWidgetSc a) ((QMouseEvent t1)) where
 mouseMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_mouseMoveEvent_h cobj_x0 cobj_x1

instance QmousePressEvent (QTreeWidget ()) ((QMouseEvent t1)) where
 mousePressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_mousePressEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeWidget_mousePressEvent_h" qtc_QTreeWidget_mousePressEvent_h :: Ptr (TQTreeWidget a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmousePressEvent (QTreeWidgetSc a) ((QMouseEvent t1)) where
 mousePressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_mousePressEvent_h cobj_x0 cobj_x1

instance QmouseReleaseEvent (QTreeWidget ()) ((QMouseEvent t1)) where
 mouseReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_mouseReleaseEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeWidget_mouseReleaseEvent_h" qtc_QTreeWidget_mouseReleaseEvent_h :: Ptr (TQTreeWidget a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseReleaseEvent (QTreeWidgetSc a) ((QMouseEvent t1)) where
 mouseReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_mouseReleaseEvent_h cobj_x0 cobj_x1

instance QmoveCursor (QTreeWidget ()) ((CursorAction, KeyboardModifiers)) (IO (QModelIndex ())) where
 moveCursor x0 (x1, x2)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_moveCursor_h cobj_x0 (toCLong $ qEnum_toInt x1) (toCLong $ qFlags_toInt x2)

foreign import ccall "qtc_QTreeWidget_moveCursor_h" qtc_QTreeWidget_moveCursor_h :: Ptr (TQTreeWidget a) -> CLong -> CLong -> IO (Ptr (TQModelIndex ()))

instance QmoveCursor (QTreeWidgetSc a) ((CursorAction, KeyboardModifiers)) (IO (QModelIndex ())) where
 moveCursor x0 (x1, x2)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_moveCursor_h cobj_x0 (toCLong $ qEnum_toInt x1) (toCLong $ qFlags_toInt x2)

instance QpaintEvent (QTreeWidget ()) ((QPaintEvent t1)) where
 paintEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_paintEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeWidget_paintEvent_h" qtc_QTreeWidget_paintEvent_h :: Ptr (TQTreeWidget a) -> Ptr (TQPaintEvent t1) -> IO ()

instance QpaintEvent (QTreeWidgetSc a) ((QPaintEvent t1)) where
 paintEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_paintEvent_h cobj_x0 cobj_x1

instance Qreexpand (QTreeWidget ()) (()) where
 reexpand x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_reexpand cobj_x0

foreign import ccall "qtc_QTreeWidget_reexpand" qtc_QTreeWidget_reexpand :: Ptr (TQTreeWidget a) -> IO ()

instance Qreexpand (QTreeWidgetSc a) (()) where
 reexpand x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_reexpand cobj_x0

instance Qreset (QTreeWidget ()) (()) (IO ()) where
 reset x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_reset_h cobj_x0

foreign import ccall "qtc_QTreeWidget_reset_h" qtc_QTreeWidget_reset_h :: Ptr (TQTreeWidget a) -> IO ()

instance Qreset (QTreeWidgetSc a) (()) (IO ()) where
 reset x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_reset_h cobj_x0

instance QrowHeight (QTreeWidget ()) ((QModelIndex t1)) where
 rowHeight x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_rowHeight cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeWidget_rowHeight" qtc_QTreeWidget_rowHeight :: Ptr (TQTreeWidget a) -> Ptr (TQModelIndex t1) -> IO CInt

instance QrowHeight (QTreeWidgetSc a) ((QModelIndex t1)) where
 rowHeight x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_rowHeight cobj_x0 cobj_x1

instance QrowsAboutToBeRemoved (QTreeWidget ()) ((QModelIndex t1, Int, Int)) where
 rowsAboutToBeRemoved x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_rowsAboutToBeRemoved_h cobj_x0 cobj_x1 (toCInt x2) (toCInt x3)

foreign import ccall "qtc_QTreeWidget_rowsAboutToBeRemoved_h" qtc_QTreeWidget_rowsAboutToBeRemoved_h :: Ptr (TQTreeWidget a) -> Ptr (TQModelIndex t1) -> CInt -> CInt -> IO ()

instance QrowsAboutToBeRemoved (QTreeWidgetSc a) ((QModelIndex t1, Int, Int)) where
 rowsAboutToBeRemoved x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_rowsAboutToBeRemoved_h cobj_x0 cobj_x1 (toCInt x2) (toCInt x3)

instance QrowsInserted (QTreeWidget ()) ((QModelIndex t1, Int, Int)) where
 rowsInserted x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_rowsInserted_h cobj_x0 cobj_x1 (toCInt x2) (toCInt x3)

foreign import ccall "qtc_QTreeWidget_rowsInserted_h" qtc_QTreeWidget_rowsInserted_h :: Ptr (TQTreeWidget a) -> Ptr (TQModelIndex t1) -> CInt -> CInt -> IO ()

instance QrowsInserted (QTreeWidgetSc a) ((QModelIndex t1, Int, Int)) where
 rowsInserted x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_rowsInserted_h cobj_x0 cobj_x1 (toCInt x2) (toCInt x3)

instance QrowsRemoved (QTreeWidget ()) ((QModelIndex t1, Int, Int)) where
 rowsRemoved x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_rowsRemoved cobj_x0 cobj_x1 (toCInt x2) (toCInt x3)

foreign import ccall "qtc_QTreeWidget_rowsRemoved" qtc_QTreeWidget_rowsRemoved :: Ptr (TQTreeWidget a) -> Ptr (TQModelIndex t1) -> CInt -> CInt -> IO ()

instance QrowsRemoved (QTreeWidgetSc a) ((QModelIndex t1, Int, Int)) where
 rowsRemoved x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_rowsRemoved cobj_x0 cobj_x1 (toCInt x2) (toCInt x3)

instance QscrollContentsBy (QTreeWidget ()) ((Int, Int)) where
 scrollContentsBy x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_scrollContentsBy_h cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QTreeWidget_scrollContentsBy_h" qtc_QTreeWidget_scrollContentsBy_h :: Ptr (TQTreeWidget a) -> CInt -> CInt -> IO ()

instance QscrollContentsBy (QTreeWidgetSc a) ((Int, Int)) where
 scrollContentsBy x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_scrollContentsBy_h cobj_x0 (toCInt x1) (toCInt x2)

instance QscrollTo (QTreeWidget ()) ((QModelIndex t1)) where
 scrollTo x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_scrollTo_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeWidget_scrollTo_h" qtc_QTreeWidget_scrollTo_h :: Ptr (TQTreeWidget a) -> Ptr (TQModelIndex t1) -> IO ()

instance QscrollTo (QTreeWidgetSc a) ((QModelIndex t1)) where
 scrollTo x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_scrollTo_h cobj_x0 cobj_x1

instance QscrollTo (QTreeWidget ()) ((QModelIndex t1, ScrollHint)) where
 scrollTo x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_scrollTo1_h cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QTreeWidget_scrollTo1_h" qtc_QTreeWidget_scrollTo1_h :: Ptr (TQTreeWidget a) -> Ptr (TQModelIndex t1) -> CLong -> IO ()

instance QscrollTo (QTreeWidgetSc a) ((QModelIndex t1, ScrollHint)) where
 scrollTo x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_scrollTo1_h cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

instance QselectAll (QTreeWidget ()) (()) where
 selectAll x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_selectAll_h cobj_x0

foreign import ccall "qtc_QTreeWidget_selectAll_h" qtc_QTreeWidget_selectAll_h :: Ptr (TQTreeWidget a) -> IO ()

instance QselectAll (QTreeWidgetSc a) (()) where
 selectAll x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_selectAll_h cobj_x0

instance QselectionChanged (QTreeWidget ()) ((QItemSelection t1, QItemSelection t2)) where
 selectionChanged x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QTreeWidget_selectionChanged cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QTreeWidget_selectionChanged" qtc_QTreeWidget_selectionChanged :: Ptr (TQTreeWidget a) -> Ptr (TQItemSelection t1) -> Ptr (TQItemSelection t2) -> IO ()

instance QselectionChanged (QTreeWidgetSc a) ((QItemSelection t1, QItemSelection t2)) where
 selectionChanged x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QTreeWidget_selectionChanged cobj_x0 cobj_x1 cobj_x2

instance QsetModel (QTreeWidget ()) ((QAbstractItemModel t1)) where
 setModel x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_setModel_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeWidget_setModel_h" qtc_QTreeWidget_setModel_h :: Ptr (TQTreeWidget a) -> Ptr (TQAbstractItemModel t1) -> IO ()

instance QsetModel (QTreeWidgetSc a) ((QAbstractItemModel t1)) where
 setModel x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_setModel_h cobj_x0 cobj_x1

instance QsetRootIndex (QTreeWidget ()) ((QModelIndex t1)) where
 setRootIndex x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_setRootIndex_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeWidget_setRootIndex_h" qtc_QTreeWidget_setRootIndex_h :: Ptr (TQTreeWidget a) -> Ptr (TQModelIndex t1) -> IO ()

instance QsetRootIndex (QTreeWidgetSc a) ((QModelIndex t1)) where
 setRootIndex x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_setRootIndex_h cobj_x0 cobj_x1

instance QqsetSelection (QTreeWidget ()) ((QRect t1, SelectionFlags)) where
 qsetSelection x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_setSelection_h cobj_x0 cobj_x1 (toCLong $ qFlags_toInt x2)

foreign import ccall "qtc_QTreeWidget_setSelection_h" qtc_QTreeWidget_setSelection_h :: Ptr (TQTreeWidget a) -> Ptr (TQRect t1) -> CLong -> IO ()

instance QqsetSelection (QTreeWidgetSc a) ((QRect t1, SelectionFlags)) where
 qsetSelection x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_setSelection_h cobj_x0 cobj_x1 (toCLong $ qFlags_toInt x2)

instance QsetSelection (QTreeWidget ()) ((Rect, SelectionFlags)) where
 setSelection x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QTreeWidget_setSelection_qth_h cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h  (toCLong $ qFlags_toInt x2)

foreign import ccall "qtc_QTreeWidget_setSelection_qth_h" qtc_QTreeWidget_setSelection_qth_h :: Ptr (TQTreeWidget a) -> CInt -> CInt -> CInt -> CInt -> CLong -> IO ()

instance QsetSelection (QTreeWidgetSc a) ((Rect, SelectionFlags)) where
 setSelection x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QTreeWidget_setSelection_qth_h cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h  (toCLong $ qFlags_toInt x2)

instance QsetSelectionModel (QTreeWidget ()) ((QItemSelectionModel t1)) where
 setSelectionModel x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_setSelectionModel_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeWidget_setSelectionModel_h" qtc_QTreeWidget_setSelectionModel_h :: Ptr (TQTreeWidget a) -> Ptr (TQItemSelectionModel t1) -> IO ()

instance QsetSelectionModel (QTreeWidgetSc a) ((QItemSelectionModel t1)) where
 setSelectionModel x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_setSelectionModel_h cobj_x0 cobj_x1

instance QsizeHintForColumn (QTreeWidget ()) ((Int)) where
 sizeHintForColumn x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_sizeHintForColumn cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTreeWidget_sizeHintForColumn" qtc_QTreeWidget_sizeHintForColumn :: Ptr (TQTreeWidget a) -> CInt -> IO CInt

instance QsizeHintForColumn (QTreeWidgetSc a) ((Int)) where
 sizeHintForColumn x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_sizeHintForColumn cobj_x0 (toCInt x1)

instance QtimerEvent (QTreeWidget ()) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_timerEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeWidget_timerEvent" qtc_QTreeWidget_timerEvent :: Ptr (TQTreeWidget a) -> Ptr (TQTimerEvent t1) -> IO ()

instance QtimerEvent (QTreeWidgetSc a) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_timerEvent cobj_x0 cobj_x1

instance QupdateGeometries (QTreeWidget ()) (()) where
 updateGeometries x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_updateGeometries cobj_x0

foreign import ccall "qtc_QTreeWidget_updateGeometries" qtc_QTreeWidget_updateGeometries :: Ptr (TQTreeWidget a) -> IO ()

instance QupdateGeometries (QTreeWidgetSc a) (()) where
 updateGeometries x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_updateGeometries cobj_x0

instance QverticalOffset (QTreeWidget ()) (()) where
 verticalOffset x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_verticalOffset_h cobj_x0

foreign import ccall "qtc_QTreeWidget_verticalOffset_h" qtc_QTreeWidget_verticalOffset_h :: Ptr (TQTreeWidget a) -> IO CInt

instance QverticalOffset (QTreeWidgetSc a) (()) where
 verticalOffset x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_verticalOffset_h cobj_x0

instance QviewportEvent (QTreeWidget ()) ((QEvent t1)) where
 viewportEvent x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_viewportEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeWidget_viewportEvent_h" qtc_QTreeWidget_viewportEvent_h :: Ptr (TQTreeWidget a) -> Ptr (TQEvent t1) -> IO CBool

instance QviewportEvent (QTreeWidgetSc a) ((QEvent t1)) where
 viewportEvent x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_viewportEvent_h cobj_x0 cobj_x1

instance QqvisualRect (QTreeWidget ()) ((QModelIndex t1)) where
 qvisualRect x0 (x1)
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_visualRect_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeWidget_visualRect_h" qtc_QTreeWidget_visualRect_h :: Ptr (TQTreeWidget a) -> Ptr (TQModelIndex t1) -> IO (Ptr (TQRect ()))

instance QqvisualRect (QTreeWidgetSc a) ((QModelIndex t1)) where
 qvisualRect x0 (x1)
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_visualRect_h cobj_x0 cobj_x1

instance QvisualRect (QTreeWidget ()) ((QModelIndex t1)) where
 visualRect x0 (x1)
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_visualRect_qth_h cobj_x0 cobj_x1 crect_ret_x crect_ret_y crect_ret_w crect_ret_h

foreign import ccall "qtc_QTreeWidget_visualRect_qth_h" qtc_QTreeWidget_visualRect_qth_h :: Ptr (TQTreeWidget a) -> Ptr (TQModelIndex t1) -> Ptr CInt -> Ptr CInt -> Ptr CInt -> Ptr CInt -> IO ()

instance QvisualRect (QTreeWidgetSc a) ((QModelIndex t1)) where
 visualRect x0 (x1)
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_visualRect_qth_h cobj_x0 cobj_x1 crect_ret_x crect_ret_y crect_ret_w crect_ret_h

instance QvisualRegionForSelection (QTreeWidget ()) ((QItemSelection t1)) where
 visualRegionForSelection x0 (x1)
  = withQRegionResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_visualRegionForSelection_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeWidget_visualRegionForSelection_h" qtc_QTreeWidget_visualRegionForSelection_h :: Ptr (TQTreeWidget a) -> Ptr (TQItemSelection t1) -> IO (Ptr (TQRegion ()))

instance QvisualRegionForSelection (QTreeWidgetSc a) ((QItemSelection t1)) where
 visualRegionForSelection x0 (x1)
  = withQRegionResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_visualRegionForSelection_h cobj_x0 cobj_x1

instance QcloseEditor (QTreeWidget ()) ((QWidget t1, EndEditHint)) where
 closeEditor x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_closeEditor cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QTreeWidget_closeEditor" qtc_QTreeWidget_closeEditor :: Ptr (TQTreeWidget a) -> Ptr (TQWidget t1) -> CLong -> IO ()

instance QcloseEditor (QTreeWidgetSc a) ((QWidget t1, EndEditHint)) where
 closeEditor x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_closeEditor cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

instance QcommitData (QTreeWidget ()) ((QWidget t1)) where
 commitData x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_commitData cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeWidget_commitData" qtc_QTreeWidget_commitData :: Ptr (TQTreeWidget a) -> Ptr (TQWidget t1) -> IO ()

instance QcommitData (QTreeWidgetSc a) ((QWidget t1)) where
 commitData x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_commitData cobj_x0 cobj_x1

instance QdirtyRegionOffset (QTreeWidget ()) (()) where
 dirtyRegionOffset x0 ()
  = withPointResult $ \cpoint_ret_x cpoint_ret_y ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_dirtyRegionOffset_qth cobj_x0 cpoint_ret_x cpoint_ret_y

foreign import ccall "qtc_QTreeWidget_dirtyRegionOffset_qth" qtc_QTreeWidget_dirtyRegionOffset_qth :: Ptr (TQTreeWidget a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QdirtyRegionOffset (QTreeWidgetSc a) (()) where
 dirtyRegionOffset x0 ()
  = withPointResult $ \cpoint_ret_x cpoint_ret_y ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_dirtyRegionOffset_qth cobj_x0 cpoint_ret_x cpoint_ret_y

instance QqdirtyRegionOffset (QTreeWidget ()) (()) where
 qdirtyRegionOffset x0 ()
  = withQPointResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_dirtyRegionOffset cobj_x0

foreign import ccall "qtc_QTreeWidget_dirtyRegionOffset" qtc_QTreeWidget_dirtyRegionOffset :: Ptr (TQTreeWidget a) -> IO (Ptr (TQPoint ()))

instance QqdirtyRegionOffset (QTreeWidgetSc a) (()) where
 qdirtyRegionOffset x0 ()
  = withQPointResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_dirtyRegionOffset cobj_x0

instance QdoAutoScroll (QTreeWidget ()) (()) where
 doAutoScroll x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_doAutoScroll cobj_x0

foreign import ccall "qtc_QTreeWidget_doAutoScroll" qtc_QTreeWidget_doAutoScroll :: Ptr (TQTreeWidget a) -> IO ()

instance QdoAutoScroll (QTreeWidgetSc a) (()) where
 doAutoScroll x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_doAutoScroll cobj_x0

instance QdragEnterEvent (QTreeWidget ()) ((QDragEnterEvent t1)) where
 dragEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_dragEnterEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeWidget_dragEnterEvent_h" qtc_QTreeWidget_dragEnterEvent_h :: Ptr (TQTreeWidget a) -> Ptr (TQDragEnterEvent t1) -> IO ()

instance QdragEnterEvent (QTreeWidgetSc a) ((QDragEnterEvent t1)) where
 dragEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_dragEnterEvent_h cobj_x0 cobj_x1

instance QdragLeaveEvent (QTreeWidget ()) ((QDragLeaveEvent t1)) where
 dragLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_dragLeaveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeWidget_dragLeaveEvent_h" qtc_QTreeWidget_dragLeaveEvent_h :: Ptr (TQTreeWidget a) -> Ptr (TQDragLeaveEvent t1) -> IO ()

instance QdragLeaveEvent (QTreeWidgetSc a) ((QDragLeaveEvent t1)) where
 dragLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_dragLeaveEvent_h cobj_x0 cobj_x1

instance QdropIndicatorPosition (QTreeWidget ()) (()) where
 dropIndicatorPosition x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_dropIndicatorPosition cobj_x0

foreign import ccall "qtc_QTreeWidget_dropIndicatorPosition" qtc_QTreeWidget_dropIndicatorPosition :: Ptr (TQTreeWidget a) -> IO CLong

instance QdropIndicatorPosition (QTreeWidgetSc a) (()) where
 dropIndicatorPosition x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_dropIndicatorPosition cobj_x0

instance Qedit (QTreeWidget ()) ((QModelIndex t1, EditTrigger, QEvent t3)) (IO (Bool)) where
 edit x0 (x1, x2, x3)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QTreeWidget_edit cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2) cobj_x3

foreign import ccall "qtc_QTreeWidget_edit" qtc_QTreeWidget_edit :: Ptr (TQTreeWidget a) -> Ptr (TQModelIndex t1) -> CLong -> Ptr (TQEvent t3) -> IO CBool

instance Qedit (QTreeWidgetSc a) ((QModelIndex t1, EditTrigger, QEvent t3)) (IO (Bool)) where
 edit x0 (x1, x2, x3)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QTreeWidget_edit cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2) cobj_x3

instance QeditorDestroyed (QTreeWidget ()) ((QObject t1)) where
 editorDestroyed x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_editorDestroyed cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeWidget_editorDestroyed" qtc_QTreeWidget_editorDestroyed :: Ptr (TQTreeWidget a) -> Ptr (TQObject t1) -> IO ()

instance QeditorDestroyed (QTreeWidgetSc a) ((QObject t1)) where
 editorDestroyed x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_editorDestroyed cobj_x0 cobj_x1

instance QexecuteDelayedItemsLayout (QTreeWidget ()) (()) where
 executeDelayedItemsLayout x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_executeDelayedItemsLayout cobj_x0

foreign import ccall "qtc_QTreeWidget_executeDelayedItemsLayout" qtc_QTreeWidget_executeDelayedItemsLayout :: Ptr (TQTreeWidget a) -> IO ()

instance QexecuteDelayedItemsLayout (QTreeWidgetSc a) (()) where
 executeDelayedItemsLayout x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_executeDelayedItemsLayout cobj_x0

instance QfocusInEvent (QTreeWidget ()) ((QFocusEvent t1)) where
 focusInEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_focusInEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeWidget_focusInEvent_h" qtc_QTreeWidget_focusInEvent_h :: Ptr (TQTreeWidget a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusInEvent (QTreeWidgetSc a) ((QFocusEvent t1)) where
 focusInEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_focusInEvent_h cobj_x0 cobj_x1

instance QfocusNextPrevChild (QTreeWidget ()) ((Bool)) where
 focusNextPrevChild x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_focusNextPrevChild cobj_x0 (toCBool x1)

foreign import ccall "qtc_QTreeWidget_focusNextPrevChild" qtc_QTreeWidget_focusNextPrevChild :: Ptr (TQTreeWidget a) -> CBool -> IO CBool

instance QfocusNextPrevChild (QTreeWidgetSc a) ((Bool)) where
 focusNextPrevChild x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_focusNextPrevChild cobj_x0 (toCBool x1)

instance QfocusOutEvent (QTreeWidget ()) ((QFocusEvent t1)) where
 focusOutEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_focusOutEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeWidget_focusOutEvent_h" qtc_QTreeWidget_focusOutEvent_h :: Ptr (TQTreeWidget a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusOutEvent (QTreeWidgetSc a) ((QFocusEvent t1)) where
 focusOutEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_focusOutEvent_h cobj_x0 cobj_x1

instance QhorizontalScrollbarValueChanged (QTreeWidget ()) ((Int)) where
 horizontalScrollbarValueChanged x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_horizontalScrollbarValueChanged cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTreeWidget_horizontalScrollbarValueChanged" qtc_QTreeWidget_horizontalScrollbarValueChanged :: Ptr (TQTreeWidget a) -> CInt -> IO ()

instance QhorizontalScrollbarValueChanged (QTreeWidgetSc a) ((Int)) where
 horizontalScrollbarValueChanged x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_horizontalScrollbarValueChanged cobj_x0 (toCInt x1)

instance QhorizontalStepsPerItem (QTreeWidget ()) (()) where
 horizontalStepsPerItem x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_horizontalStepsPerItem cobj_x0

foreign import ccall "qtc_QTreeWidget_horizontalStepsPerItem" qtc_QTreeWidget_horizontalStepsPerItem :: Ptr (TQTreeWidget a) -> IO CInt

instance QhorizontalStepsPerItem (QTreeWidgetSc a) (()) where
 horizontalStepsPerItem x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_horizontalStepsPerItem cobj_x0

instance QinputMethodEvent (QTreeWidget ()) ((QInputMethodEvent t1)) where
 inputMethodEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_inputMethodEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeWidget_inputMethodEvent" qtc_QTreeWidget_inputMethodEvent :: Ptr (TQTreeWidget a) -> Ptr (TQInputMethodEvent t1) -> IO ()

instance QinputMethodEvent (QTreeWidgetSc a) ((QInputMethodEvent t1)) where
 inputMethodEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_inputMethodEvent cobj_x0 cobj_x1

instance QinputMethodQuery (QTreeWidget ()) ((InputMethodQuery)) where
 inputMethodQuery x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_inputMethodQuery_h cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QTreeWidget_inputMethodQuery_h" qtc_QTreeWidget_inputMethodQuery_h :: Ptr (TQTreeWidget a) -> CLong -> IO (Ptr (TQVariant ()))

instance QinputMethodQuery (QTreeWidgetSc a) ((InputMethodQuery)) where
 inputMethodQuery x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_inputMethodQuery_h cobj_x0 (toCLong $ qEnum_toInt x1)

instance QresizeEvent (QTreeWidget ()) ((QResizeEvent t1)) where
 resizeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_resizeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeWidget_resizeEvent_h" qtc_QTreeWidget_resizeEvent_h :: Ptr (TQTreeWidget a) -> Ptr (TQResizeEvent t1) -> IO ()

instance QresizeEvent (QTreeWidgetSc a) ((QResizeEvent t1)) where
 resizeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_resizeEvent_h cobj_x0 cobj_x1

instance QscheduleDelayedItemsLayout (QTreeWidget ()) (()) where
 scheduleDelayedItemsLayout x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_scheduleDelayedItemsLayout cobj_x0

foreign import ccall "qtc_QTreeWidget_scheduleDelayedItemsLayout" qtc_QTreeWidget_scheduleDelayedItemsLayout :: Ptr (TQTreeWidget a) -> IO ()

instance QscheduleDelayedItemsLayout (QTreeWidgetSc a) (()) where
 scheduleDelayedItemsLayout x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_scheduleDelayedItemsLayout cobj_x0

instance QscrollDirtyRegion (QTreeWidget ()) ((Int, Int)) where
 scrollDirtyRegion x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_scrollDirtyRegion cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QTreeWidget_scrollDirtyRegion" qtc_QTreeWidget_scrollDirtyRegion :: Ptr (TQTreeWidget a) -> CInt -> CInt -> IO ()

instance QscrollDirtyRegion (QTreeWidgetSc a) ((Int, Int)) where
 scrollDirtyRegion x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_scrollDirtyRegion cobj_x0 (toCInt x1) (toCInt x2)

instance QselectionCommand (QTreeWidget ()) ((QModelIndex t1)) where
 selectionCommand x0 (x1)
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_selectionCommand cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeWidget_selectionCommand" qtc_QTreeWidget_selectionCommand :: Ptr (TQTreeWidget a) -> Ptr (TQModelIndex t1) -> IO CLong

instance QselectionCommand (QTreeWidgetSc a) ((QModelIndex t1)) where
 selectionCommand x0 (x1)
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_selectionCommand cobj_x0 cobj_x1

instance QselectionCommand (QTreeWidget ()) ((QModelIndex t1, QEvent t2)) where
 selectionCommand x0 (x1, x2)
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QTreeWidget_selectionCommand1 cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QTreeWidget_selectionCommand1" qtc_QTreeWidget_selectionCommand1 :: Ptr (TQTreeWidget a) -> Ptr (TQModelIndex t1) -> Ptr (TQEvent t2) -> IO CLong

instance QselectionCommand (QTreeWidgetSc a) ((QModelIndex t1, QEvent t2)) where
 selectionCommand x0 (x1, x2)
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QTreeWidget_selectionCommand1 cobj_x0 cobj_x1 cobj_x2

instance QsetDirtyRegion (QTreeWidget ()) ((QRegion t1)) where
 setDirtyRegion x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_setDirtyRegion cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeWidget_setDirtyRegion" qtc_QTreeWidget_setDirtyRegion :: Ptr (TQTreeWidget a) -> Ptr (TQRegion t1) -> IO ()

instance QsetDirtyRegion (QTreeWidgetSc a) ((QRegion t1)) where
 setDirtyRegion x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_setDirtyRegion cobj_x0 cobj_x1

instance QsetHorizontalStepsPerItem (QTreeWidget ()) ((Int)) where
 setHorizontalStepsPerItem x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_setHorizontalStepsPerItem cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTreeWidget_setHorizontalStepsPerItem" qtc_QTreeWidget_setHorizontalStepsPerItem :: Ptr (TQTreeWidget a) -> CInt -> IO ()

instance QsetHorizontalStepsPerItem (QTreeWidgetSc a) ((Int)) where
 setHorizontalStepsPerItem x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_setHorizontalStepsPerItem cobj_x0 (toCInt x1)

instance QsetState (QTreeWidget ()) ((QAbstractItemViewState)) where
 setState x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_setState cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QTreeWidget_setState" qtc_QTreeWidget_setState :: Ptr (TQTreeWidget a) -> CLong -> IO ()

instance QsetState (QTreeWidgetSc a) ((QAbstractItemViewState)) where
 setState x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_setState cobj_x0 (toCLong $ qEnum_toInt x1)

instance QsetVerticalStepsPerItem (QTreeWidget ()) ((Int)) where
 setVerticalStepsPerItem x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_setVerticalStepsPerItem cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTreeWidget_setVerticalStepsPerItem" qtc_QTreeWidget_setVerticalStepsPerItem :: Ptr (TQTreeWidget a) -> CInt -> IO ()

instance QsetVerticalStepsPerItem (QTreeWidgetSc a) ((Int)) where
 setVerticalStepsPerItem x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_setVerticalStepsPerItem cobj_x0 (toCInt x1)

instance QsizeHintForRow (QTreeWidget ()) ((Int)) where
 sizeHintForRow x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_sizeHintForRow_h cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTreeWidget_sizeHintForRow_h" qtc_QTreeWidget_sizeHintForRow_h :: Ptr (TQTreeWidget a) -> CInt -> IO CInt

instance QsizeHintForRow (QTreeWidgetSc a) ((Int)) where
 sizeHintForRow x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_sizeHintForRow_h cobj_x0 (toCInt x1)

instance QstartAutoScroll (QTreeWidget ()) (()) where
 startAutoScroll x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_startAutoScroll cobj_x0

foreign import ccall "qtc_QTreeWidget_startAutoScroll" qtc_QTreeWidget_startAutoScroll :: Ptr (TQTreeWidget a) -> IO ()

instance QstartAutoScroll (QTreeWidgetSc a) (()) where
 startAutoScroll x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_startAutoScroll cobj_x0

instance QstartDrag (QTreeWidget ()) ((DropActions)) where
 startDrag x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_startDrag cobj_x0 (toCLong $ qFlags_toInt x1)

foreign import ccall "qtc_QTreeWidget_startDrag" qtc_QTreeWidget_startDrag :: Ptr (TQTreeWidget a) -> CLong -> IO ()

instance QstartDrag (QTreeWidgetSc a) ((DropActions)) where
 startDrag x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_startDrag cobj_x0 (toCLong $ qFlags_toInt x1)

instance Qstate (QTreeWidget ()) (()) (IO (QAbstractItemViewState)) where
 state x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_state cobj_x0

foreign import ccall "qtc_QTreeWidget_state" qtc_QTreeWidget_state :: Ptr (TQTreeWidget a) -> IO CLong

instance Qstate (QTreeWidgetSc a) (()) (IO (QAbstractItemViewState)) where
 state x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_state cobj_x0

instance QstopAutoScroll (QTreeWidget ()) (()) where
 stopAutoScroll x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_stopAutoScroll cobj_x0

foreign import ccall "qtc_QTreeWidget_stopAutoScroll" qtc_QTreeWidget_stopAutoScroll :: Ptr (TQTreeWidget a) -> IO ()

instance QstopAutoScroll (QTreeWidgetSc a) (()) where
 stopAutoScroll x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_stopAutoScroll cobj_x0

instance QupdateEditorData (QTreeWidget ()) (()) where
 updateEditorData x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_updateEditorData cobj_x0

foreign import ccall "qtc_QTreeWidget_updateEditorData" qtc_QTreeWidget_updateEditorData :: Ptr (TQTreeWidget a) -> IO ()

instance QupdateEditorData (QTreeWidgetSc a) (()) where
 updateEditorData x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_updateEditorData cobj_x0

instance QupdateEditorGeometries (QTreeWidget ()) (()) where
 updateEditorGeometries x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_updateEditorGeometries cobj_x0

foreign import ccall "qtc_QTreeWidget_updateEditorGeometries" qtc_QTreeWidget_updateEditorGeometries :: Ptr (TQTreeWidget a) -> IO ()

instance QupdateEditorGeometries (QTreeWidgetSc a) (()) where
 updateEditorGeometries x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_updateEditorGeometries cobj_x0

instance QverticalScrollbarAction (QTreeWidget ()) ((Int)) where
 verticalScrollbarAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_verticalScrollbarAction cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTreeWidget_verticalScrollbarAction" qtc_QTreeWidget_verticalScrollbarAction :: Ptr (TQTreeWidget a) -> CInt -> IO ()

instance QverticalScrollbarAction (QTreeWidgetSc a) ((Int)) where
 verticalScrollbarAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_verticalScrollbarAction cobj_x0 (toCInt x1)

instance QverticalScrollbarValueChanged (QTreeWidget ()) ((Int)) where
 verticalScrollbarValueChanged x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_verticalScrollbarValueChanged cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTreeWidget_verticalScrollbarValueChanged" qtc_QTreeWidget_verticalScrollbarValueChanged :: Ptr (TQTreeWidget a) -> CInt -> IO ()

instance QverticalScrollbarValueChanged (QTreeWidgetSc a) ((Int)) where
 verticalScrollbarValueChanged x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_verticalScrollbarValueChanged cobj_x0 (toCInt x1)

instance QverticalStepsPerItem (QTreeWidget ()) (()) where
 verticalStepsPerItem x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_verticalStepsPerItem cobj_x0

foreign import ccall "qtc_QTreeWidget_verticalStepsPerItem" qtc_QTreeWidget_verticalStepsPerItem :: Ptr (TQTreeWidget a) -> IO CInt

instance QverticalStepsPerItem (QTreeWidgetSc a) (()) where
 verticalStepsPerItem x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_verticalStepsPerItem cobj_x0

instance QviewOptions (QTreeWidget ()) (()) where
 viewOptions x0 ()
  = withQStyleOptionViewItemResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_viewOptions cobj_x0

foreign import ccall "qtc_QTreeWidget_viewOptions" qtc_QTreeWidget_viewOptions :: Ptr (TQTreeWidget a) -> IO (Ptr (TQStyleOptionViewItem ()))

instance QviewOptions (QTreeWidgetSc a) (()) where
 viewOptions x0 ()
  = withQStyleOptionViewItemResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_viewOptions cobj_x0

instance QcontextMenuEvent (QTreeWidget ()) ((QContextMenuEvent t1)) where
 contextMenuEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_contextMenuEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeWidget_contextMenuEvent_h" qtc_QTreeWidget_contextMenuEvent_h :: Ptr (TQTreeWidget a) -> Ptr (TQContextMenuEvent t1) -> IO ()

instance QcontextMenuEvent (QTreeWidgetSc a) ((QContextMenuEvent t1)) where
 contextMenuEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_contextMenuEvent_h cobj_x0 cobj_x1

instance QqminimumSizeHint (QTreeWidget ()) (()) where
 qminimumSizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_minimumSizeHint_h cobj_x0

foreign import ccall "qtc_QTreeWidget_minimumSizeHint_h" qtc_QTreeWidget_minimumSizeHint_h :: Ptr (TQTreeWidget a) -> IO (Ptr (TQSize ()))

instance QqminimumSizeHint (QTreeWidgetSc a) (()) where
 qminimumSizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_minimumSizeHint_h cobj_x0

instance QminimumSizeHint (QTreeWidget ()) (()) where
 minimumSizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_minimumSizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QTreeWidget_minimumSizeHint_qth_h" qtc_QTreeWidget_minimumSizeHint_qth_h :: Ptr (TQTreeWidget a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QminimumSizeHint (QTreeWidgetSc a) (()) where
 minimumSizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_minimumSizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

instance QsetViewportMargins (QTreeWidget ()) ((Int, Int, Int, Int)) where
 setViewportMargins x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_setViewportMargins cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QTreeWidget_setViewportMargins" qtc_QTreeWidget_setViewportMargins :: Ptr (TQTreeWidget a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QsetViewportMargins (QTreeWidgetSc a) ((Int, Int, Int, Int)) where
 setViewportMargins x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_setViewportMargins cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

instance QsetupViewport (QTreeWidget ()) ((QWidget t1)) where
 setupViewport x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_setupViewport cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeWidget_setupViewport" qtc_QTreeWidget_setupViewport :: Ptr (TQTreeWidget a) -> Ptr (TQWidget t1) -> IO ()

instance QsetupViewport (QTreeWidgetSc a) ((QWidget t1)) where
 setupViewport x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_setupViewport cobj_x0 cobj_x1

instance QqsizeHint (QTreeWidget ()) (()) where
 qsizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_sizeHint_h cobj_x0

foreign import ccall "qtc_QTreeWidget_sizeHint_h" qtc_QTreeWidget_sizeHint_h :: Ptr (TQTreeWidget a) -> IO (Ptr (TQSize ()))

instance QqsizeHint (QTreeWidgetSc a) (()) where
 qsizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_sizeHint_h cobj_x0

instance QsizeHint (QTreeWidget ()) (()) where
 sizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_sizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QTreeWidget_sizeHint_qth_h" qtc_QTreeWidget_sizeHint_qth_h :: Ptr (TQTreeWidget a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QsizeHint (QTreeWidgetSc a) (()) where
 sizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_sizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

instance QwheelEvent (QTreeWidget ()) ((QWheelEvent t1)) where
 wheelEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_wheelEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeWidget_wheelEvent_h" qtc_QTreeWidget_wheelEvent_h :: Ptr (TQTreeWidget a) -> Ptr (TQWheelEvent t1) -> IO ()

instance QwheelEvent (QTreeWidgetSc a) ((QWheelEvent t1)) where
 wheelEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_wheelEvent_h cobj_x0 cobj_x1

instance QchangeEvent (QTreeWidget ()) ((QEvent t1)) where
 changeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_changeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeWidget_changeEvent_h" qtc_QTreeWidget_changeEvent_h :: Ptr (TQTreeWidget a) -> Ptr (TQEvent t1) -> IO ()

instance QchangeEvent (QTreeWidgetSc a) ((QEvent t1)) where
 changeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_changeEvent_h cobj_x0 cobj_x1

instance QdrawFrame (QTreeWidget ()) ((QPainter t1)) where
 drawFrame x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_drawFrame cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeWidget_drawFrame" qtc_QTreeWidget_drawFrame :: Ptr (TQTreeWidget a) -> Ptr (TQPainter t1) -> IO ()

instance QdrawFrame (QTreeWidgetSc a) ((QPainter t1)) where
 drawFrame x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_drawFrame cobj_x0 cobj_x1

instance QactionEvent (QTreeWidget ()) ((QActionEvent t1)) where
 actionEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_actionEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeWidget_actionEvent_h" qtc_QTreeWidget_actionEvent_h :: Ptr (TQTreeWidget a) -> Ptr (TQActionEvent t1) -> IO ()

instance QactionEvent (QTreeWidgetSc a) ((QActionEvent t1)) where
 actionEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_actionEvent_h cobj_x0 cobj_x1

instance QaddAction (QTreeWidget ()) ((QAction t1)) (IO ()) where
 addAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_addAction cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeWidget_addAction" qtc_QTreeWidget_addAction :: Ptr (TQTreeWidget a) -> Ptr (TQAction t1) -> IO ()

instance QaddAction (QTreeWidgetSc a) ((QAction t1)) (IO ()) where
 addAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_addAction cobj_x0 cobj_x1

instance QcloseEvent (QTreeWidget ()) ((QCloseEvent t1)) where
 closeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_closeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeWidget_closeEvent_h" qtc_QTreeWidget_closeEvent_h :: Ptr (TQTreeWidget a) -> Ptr (TQCloseEvent t1) -> IO ()

instance QcloseEvent (QTreeWidgetSc a) ((QCloseEvent t1)) where
 closeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_closeEvent_h cobj_x0 cobj_x1

instance Qcreate (QTreeWidget ()) (()) (IO ()) where
 create x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_create cobj_x0

foreign import ccall "qtc_QTreeWidget_create" qtc_QTreeWidget_create :: Ptr (TQTreeWidget a) -> IO ()

instance Qcreate (QTreeWidgetSc a) (()) (IO ()) where
 create x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_create cobj_x0

instance Qcreate (QTreeWidget ()) ((QVoid t1)) (IO ()) where
 create x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_create1 cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeWidget_create1" qtc_QTreeWidget_create1 :: Ptr (TQTreeWidget a) -> Ptr (TQVoid t1) -> IO ()

instance Qcreate (QTreeWidgetSc a) ((QVoid t1)) (IO ()) where
 create x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_create1 cobj_x0 cobj_x1

instance Qcreate (QTreeWidget ()) ((QVoid t1, Bool)) (IO ()) where
 create x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_create2 cobj_x0 cobj_x1 (toCBool x2)

foreign import ccall "qtc_QTreeWidget_create2" qtc_QTreeWidget_create2 :: Ptr (TQTreeWidget a) -> Ptr (TQVoid t1) -> CBool -> IO ()

instance Qcreate (QTreeWidgetSc a) ((QVoid t1, Bool)) (IO ()) where
 create x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_create2 cobj_x0 cobj_x1 (toCBool x2)

instance Qcreate (QTreeWidget ()) ((QVoid t1, Bool, Bool)) (IO ()) where
 create x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_create3 cobj_x0 cobj_x1 (toCBool x2) (toCBool x3)

foreign import ccall "qtc_QTreeWidget_create3" qtc_QTreeWidget_create3 :: Ptr (TQTreeWidget a) -> Ptr (TQVoid t1) -> CBool -> CBool -> IO ()

instance Qcreate (QTreeWidgetSc a) ((QVoid t1, Bool, Bool)) (IO ()) where
 create x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_create3 cobj_x0 cobj_x1 (toCBool x2) (toCBool x3)

instance Qdestroy (QTreeWidget ()) (()) where
 destroy x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_destroy cobj_x0

foreign import ccall "qtc_QTreeWidget_destroy" qtc_QTreeWidget_destroy :: Ptr (TQTreeWidget a) -> IO ()

instance Qdestroy (QTreeWidgetSc a) (()) where
 destroy x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_destroy cobj_x0

instance Qdestroy (QTreeWidget ()) ((Bool)) where
 destroy x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_destroy1 cobj_x0 (toCBool x1)

foreign import ccall "qtc_QTreeWidget_destroy1" qtc_QTreeWidget_destroy1 :: Ptr (TQTreeWidget a) -> CBool -> IO ()

instance Qdestroy (QTreeWidgetSc a) ((Bool)) where
 destroy x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_destroy1 cobj_x0 (toCBool x1)

instance Qdestroy (QTreeWidget ()) ((Bool, Bool)) where
 destroy x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_destroy2 cobj_x0 (toCBool x1) (toCBool x2)

foreign import ccall "qtc_QTreeWidget_destroy2" qtc_QTreeWidget_destroy2 :: Ptr (TQTreeWidget a) -> CBool -> CBool -> IO ()

instance Qdestroy (QTreeWidgetSc a) ((Bool, Bool)) where
 destroy x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_destroy2 cobj_x0 (toCBool x1) (toCBool x2)

instance QdevType (QTreeWidget ()) (()) where
 devType x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_devType_h cobj_x0

foreign import ccall "qtc_QTreeWidget_devType_h" qtc_QTreeWidget_devType_h :: Ptr (TQTreeWidget a) -> IO CInt

instance QdevType (QTreeWidgetSc a) (()) where
 devType x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_devType_h cobj_x0

instance QenabledChange (QTreeWidget ()) ((Bool)) where
 enabledChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_enabledChange cobj_x0 (toCBool x1)

foreign import ccall "qtc_QTreeWidget_enabledChange" qtc_QTreeWidget_enabledChange :: Ptr (TQTreeWidget a) -> CBool -> IO ()

instance QenabledChange (QTreeWidgetSc a) ((Bool)) where
 enabledChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_enabledChange cobj_x0 (toCBool x1)

instance QenterEvent (QTreeWidget ()) ((QEvent t1)) where
 enterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_enterEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeWidget_enterEvent_h" qtc_QTreeWidget_enterEvent_h :: Ptr (TQTreeWidget a) -> Ptr (TQEvent t1) -> IO ()

instance QenterEvent (QTreeWidgetSc a) ((QEvent t1)) where
 enterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_enterEvent_h cobj_x0 cobj_x1

instance QfocusNextChild (QTreeWidget ()) (()) where
 focusNextChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_focusNextChild cobj_x0

foreign import ccall "qtc_QTreeWidget_focusNextChild" qtc_QTreeWidget_focusNextChild :: Ptr (TQTreeWidget a) -> IO CBool

instance QfocusNextChild (QTreeWidgetSc a) (()) where
 focusNextChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_focusNextChild cobj_x0

instance QfocusPreviousChild (QTreeWidget ()) (()) where
 focusPreviousChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_focusPreviousChild cobj_x0

foreign import ccall "qtc_QTreeWidget_focusPreviousChild" qtc_QTreeWidget_focusPreviousChild :: Ptr (TQTreeWidget a) -> IO CBool

instance QfocusPreviousChild (QTreeWidgetSc a) (()) where
 focusPreviousChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_focusPreviousChild cobj_x0

instance QfontChange (QTreeWidget ()) ((QFont t1)) where
 fontChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_fontChange cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeWidget_fontChange" qtc_QTreeWidget_fontChange :: Ptr (TQTreeWidget a) -> Ptr (TQFont t1) -> IO ()

instance QfontChange (QTreeWidgetSc a) ((QFont t1)) where
 fontChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_fontChange cobj_x0 cobj_x1

instance QheightForWidth (QTreeWidget ()) ((Int)) where
 heightForWidth x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_heightForWidth_h cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTreeWidget_heightForWidth_h" qtc_QTreeWidget_heightForWidth_h :: Ptr (TQTreeWidget a) -> CInt -> IO CInt

instance QheightForWidth (QTreeWidgetSc a) ((Int)) where
 heightForWidth x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_heightForWidth_h cobj_x0 (toCInt x1)

instance QhideEvent (QTreeWidget ()) ((QHideEvent t1)) where
 hideEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_hideEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeWidget_hideEvent_h" qtc_QTreeWidget_hideEvent_h :: Ptr (TQTreeWidget a) -> Ptr (TQHideEvent t1) -> IO ()

instance QhideEvent (QTreeWidgetSc a) ((QHideEvent t1)) where
 hideEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_hideEvent_h cobj_x0 cobj_x1

instance QkeyReleaseEvent (QTreeWidget ()) ((QKeyEvent t1)) where
 keyReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_keyReleaseEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeWidget_keyReleaseEvent_h" qtc_QTreeWidget_keyReleaseEvent_h :: Ptr (TQTreeWidget a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyReleaseEvent (QTreeWidgetSc a) ((QKeyEvent t1)) where
 keyReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_keyReleaseEvent_h cobj_x0 cobj_x1

instance QlanguageChange (QTreeWidget ()) (()) where
 languageChange x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_languageChange cobj_x0

foreign import ccall "qtc_QTreeWidget_languageChange" qtc_QTreeWidget_languageChange :: Ptr (TQTreeWidget a) -> IO ()

instance QlanguageChange (QTreeWidgetSc a) (()) where
 languageChange x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_languageChange cobj_x0

instance QleaveEvent (QTreeWidget ()) ((QEvent t1)) where
 leaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_leaveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeWidget_leaveEvent_h" qtc_QTreeWidget_leaveEvent_h :: Ptr (TQTreeWidget a) -> Ptr (TQEvent t1) -> IO ()

instance QleaveEvent (QTreeWidgetSc a) ((QEvent t1)) where
 leaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_leaveEvent_h cobj_x0 cobj_x1

instance Qmetric (QTreeWidget ()) ((PaintDeviceMetric)) where
 metric x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_metric cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QTreeWidget_metric" qtc_QTreeWidget_metric :: Ptr (TQTreeWidget a) -> CLong -> IO CInt

instance Qmetric (QTreeWidgetSc a) ((PaintDeviceMetric)) where
 metric x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_metric cobj_x0 (toCLong $ qEnum_toInt x1)

instance Qmove (QTreeWidget ()) ((Int, Int)) where
 move x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_move1 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QTreeWidget_move1" qtc_QTreeWidget_move1 :: Ptr (TQTreeWidget a) -> CInt -> CInt -> IO ()

instance Qmove (QTreeWidgetSc a) ((Int, Int)) where
 move x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_move1 cobj_x0 (toCInt x1) (toCInt x2)

instance Qmove (QTreeWidget ()) ((Point)) where
 move x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QTreeWidget_move_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

foreign import ccall "qtc_QTreeWidget_move_qth" qtc_QTreeWidget_move_qth :: Ptr (TQTreeWidget a) -> CInt -> CInt -> IO ()

instance Qmove (QTreeWidgetSc a) ((Point)) where
 move x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QTreeWidget_move_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

instance Qqmove (QTreeWidget ()) ((QPoint t1)) where
 qmove x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_move cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeWidget_move" qtc_QTreeWidget_move :: Ptr (TQTreeWidget a) -> Ptr (TQPoint t1) -> IO ()

instance Qqmove (QTreeWidgetSc a) ((QPoint t1)) where
 qmove x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_move cobj_x0 cobj_x1

instance QmoveEvent (QTreeWidget ()) ((QMoveEvent t1)) where
 moveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_moveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeWidget_moveEvent_h" qtc_QTreeWidget_moveEvent_h :: Ptr (TQTreeWidget a) -> Ptr (TQMoveEvent t1) -> IO ()

instance QmoveEvent (QTreeWidgetSc a) ((QMoveEvent t1)) where
 moveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_moveEvent_h cobj_x0 cobj_x1

instance QpaintEngine (QTreeWidget ()) (()) where
 paintEngine x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_paintEngine_h cobj_x0

foreign import ccall "qtc_QTreeWidget_paintEngine_h" qtc_QTreeWidget_paintEngine_h :: Ptr (TQTreeWidget a) -> IO (Ptr (TQPaintEngine ()))

instance QpaintEngine (QTreeWidgetSc a) (()) where
 paintEngine x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_paintEngine_h cobj_x0

instance QpaletteChange (QTreeWidget ()) ((QPalette t1)) where
 paletteChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_paletteChange cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeWidget_paletteChange" qtc_QTreeWidget_paletteChange :: Ptr (TQTreeWidget a) -> Ptr (TQPalette t1) -> IO ()

instance QpaletteChange (QTreeWidgetSc a) ((QPalette t1)) where
 paletteChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_paletteChange cobj_x0 cobj_x1

instance Qrepaint (QTreeWidget ()) (()) where
 repaint x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_repaint cobj_x0

foreign import ccall "qtc_QTreeWidget_repaint" qtc_QTreeWidget_repaint :: Ptr (TQTreeWidget a) -> IO ()

instance Qrepaint (QTreeWidgetSc a) (()) where
 repaint x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_repaint cobj_x0

instance Qrepaint (QTreeWidget ()) ((Int, Int, Int, Int)) where
 repaint x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_repaint2 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QTreeWidget_repaint2" qtc_QTreeWidget_repaint2 :: Ptr (TQTreeWidget a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance Qrepaint (QTreeWidgetSc a) ((Int, Int, Int, Int)) where
 repaint x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_repaint2 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

instance Qrepaint (QTreeWidget ()) ((QRegion t1)) where
 repaint x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_repaint1 cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeWidget_repaint1" qtc_QTreeWidget_repaint1 :: Ptr (TQTreeWidget a) -> Ptr (TQRegion t1) -> IO ()

instance Qrepaint (QTreeWidgetSc a) ((QRegion t1)) where
 repaint x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_repaint1 cobj_x0 cobj_x1

instance QresetInputContext (QTreeWidget ()) (()) where
 resetInputContext x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_resetInputContext cobj_x0

foreign import ccall "qtc_QTreeWidget_resetInputContext" qtc_QTreeWidget_resetInputContext :: Ptr (TQTreeWidget a) -> IO ()

instance QresetInputContext (QTreeWidgetSc a) (()) where
 resetInputContext x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_resetInputContext cobj_x0

instance Qresize (QTreeWidget ()) ((Int, Int)) (IO ()) where
 resize x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_resize1 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QTreeWidget_resize1" qtc_QTreeWidget_resize1 :: Ptr (TQTreeWidget a) -> CInt -> CInt -> IO ()

instance Qresize (QTreeWidgetSc a) ((Int, Int)) (IO ()) where
 resize x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_resize1 cobj_x0 (toCInt x1) (toCInt x2)

instance Qqresize (QTreeWidget ()) ((QSize t1)) where
 qresize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_resize cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeWidget_resize" qtc_QTreeWidget_resize :: Ptr (TQTreeWidget a) -> Ptr (TQSize t1) -> IO ()

instance Qqresize (QTreeWidgetSc a) ((QSize t1)) where
 qresize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_resize cobj_x0 cobj_x1

instance Qresize (QTreeWidget ()) ((Size)) (IO ()) where
 resize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QTreeWidget_resize_qth cobj_x0 csize_x1_w csize_x1_h 

foreign import ccall "qtc_QTreeWidget_resize_qth" qtc_QTreeWidget_resize_qth :: Ptr (TQTreeWidget a) -> CInt -> CInt -> IO ()

instance Qresize (QTreeWidgetSc a) ((Size)) (IO ()) where
 resize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QTreeWidget_resize_qth cobj_x0 csize_x1_w csize_x1_h 

instance QsetGeometry (QTreeWidget ()) ((Int, Int, Int, Int)) where
 setGeometry x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_setGeometry1 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QTreeWidget_setGeometry1" qtc_QTreeWidget_setGeometry1 :: Ptr (TQTreeWidget a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QsetGeometry (QTreeWidgetSc a) ((Int, Int, Int, Int)) where
 setGeometry x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_setGeometry1 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

instance QqsetGeometry (QTreeWidget ()) ((QRect t1)) where
 qsetGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_setGeometry cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeWidget_setGeometry" qtc_QTreeWidget_setGeometry :: Ptr (TQTreeWidget a) -> Ptr (TQRect t1) -> IO ()

instance QqsetGeometry (QTreeWidgetSc a) ((QRect t1)) where
 qsetGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_setGeometry cobj_x0 cobj_x1

instance QsetGeometry (QTreeWidget ()) ((Rect)) where
 setGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QTreeWidget_setGeometry_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

foreign import ccall "qtc_QTreeWidget_setGeometry_qth" qtc_QTreeWidget_setGeometry_qth :: Ptr (TQTreeWidget a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QsetGeometry (QTreeWidgetSc a) ((Rect)) where
 setGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QTreeWidget_setGeometry_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

instance QsetMouseTracking (QTreeWidget ()) ((Bool)) where
 setMouseTracking x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_setMouseTracking cobj_x0 (toCBool x1)

foreign import ccall "qtc_QTreeWidget_setMouseTracking" qtc_QTreeWidget_setMouseTracking :: Ptr (TQTreeWidget a) -> CBool -> IO ()

instance QsetMouseTracking (QTreeWidgetSc a) ((Bool)) where
 setMouseTracking x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_setMouseTracking cobj_x0 (toCBool x1)

instance QsetVisible (QTreeWidget ()) ((Bool)) where
 setVisible x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_setVisible_h cobj_x0 (toCBool x1)

foreign import ccall "qtc_QTreeWidget_setVisible_h" qtc_QTreeWidget_setVisible_h :: Ptr (TQTreeWidget a) -> CBool -> IO ()

instance QsetVisible (QTreeWidgetSc a) ((Bool)) where
 setVisible x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_setVisible_h cobj_x0 (toCBool x1)

instance QshowEvent (QTreeWidget ()) ((QShowEvent t1)) where
 showEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_showEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeWidget_showEvent_h" qtc_QTreeWidget_showEvent_h :: Ptr (TQTreeWidget a) -> Ptr (TQShowEvent t1) -> IO ()

instance QshowEvent (QTreeWidgetSc a) ((QShowEvent t1)) where
 showEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_showEvent_h cobj_x0 cobj_x1

instance QtabletEvent (QTreeWidget ()) ((QTabletEvent t1)) where
 tabletEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_tabletEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeWidget_tabletEvent_h" qtc_QTreeWidget_tabletEvent_h :: Ptr (TQTreeWidget a) -> Ptr (TQTabletEvent t1) -> IO ()

instance QtabletEvent (QTreeWidgetSc a) ((QTabletEvent t1)) where
 tabletEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_tabletEvent_h cobj_x0 cobj_x1

instance QupdateMicroFocus (QTreeWidget ()) (()) where
 updateMicroFocus x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_updateMicroFocus cobj_x0

foreign import ccall "qtc_QTreeWidget_updateMicroFocus" qtc_QTreeWidget_updateMicroFocus :: Ptr (TQTreeWidget a) -> IO ()

instance QupdateMicroFocus (QTreeWidgetSc a) (()) where
 updateMicroFocus x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_updateMicroFocus cobj_x0

instance QwindowActivationChange (QTreeWidget ()) ((Bool)) where
 windowActivationChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_windowActivationChange cobj_x0 (toCBool x1)

foreign import ccall "qtc_QTreeWidget_windowActivationChange" qtc_QTreeWidget_windowActivationChange :: Ptr (TQTreeWidget a) -> CBool -> IO ()

instance QwindowActivationChange (QTreeWidgetSc a) ((Bool)) where
 windowActivationChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_windowActivationChange cobj_x0 (toCBool x1)

instance QchildEvent (QTreeWidget ()) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_childEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeWidget_childEvent" qtc_QTreeWidget_childEvent :: Ptr (TQTreeWidget a) -> Ptr (TQChildEvent t1) -> IO ()

instance QchildEvent (QTreeWidgetSc a) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_childEvent cobj_x0 cobj_x1

instance QconnectNotify (QTreeWidget ()) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTreeWidget_connectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QTreeWidget_connectNotify" qtc_QTreeWidget_connectNotify :: Ptr (TQTreeWidget a) -> CWString -> IO ()

instance QconnectNotify (QTreeWidgetSc a) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTreeWidget_connectNotify cobj_x0 cstr_x1

instance QcustomEvent (QTreeWidget ()) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_customEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeWidget_customEvent" qtc_QTreeWidget_customEvent :: Ptr (TQTreeWidget a) -> Ptr (TQEvent t1) -> IO ()

instance QcustomEvent (QTreeWidgetSc a) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidget_customEvent cobj_x0 cobj_x1

instance QdisconnectNotify (QTreeWidget ()) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTreeWidget_disconnectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QTreeWidget_disconnectNotify" qtc_QTreeWidget_disconnectNotify :: Ptr (TQTreeWidget a) -> CWString -> IO ()

instance QdisconnectNotify (QTreeWidgetSc a) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTreeWidget_disconnectNotify cobj_x0 cstr_x1

instance QeventFilter (QTreeWidget ()) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QTreeWidget_eventFilter_h cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QTreeWidget_eventFilter_h" qtc_QTreeWidget_eventFilter_h :: Ptr (TQTreeWidget a) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO CBool

instance QeventFilter (QTreeWidgetSc a) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QTreeWidget_eventFilter_h cobj_x0 cobj_x1 cobj_x2

instance Qreceivers (QTreeWidget ()) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTreeWidget_receivers cobj_x0 cstr_x1

foreign import ccall "qtc_QTreeWidget_receivers" qtc_QTreeWidget_receivers :: Ptr (TQTreeWidget a) -> CWString -> IO CInt

instance Qreceivers (QTreeWidgetSc a) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTreeWidget_receivers cobj_x0 cstr_x1

instance Qsender (QTreeWidget ()) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_sender cobj_x0

foreign import ccall "qtc_QTreeWidget_sender" qtc_QTreeWidget_sender :: Ptr (TQTreeWidget a) -> IO (Ptr (TQObject ()))

instance Qsender (QTreeWidgetSc a) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidget_sender cobj_x0

